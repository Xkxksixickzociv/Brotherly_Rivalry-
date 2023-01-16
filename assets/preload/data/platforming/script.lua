
local angleshit = 0.40;
local anglevar = 0.40;

function onGameOver()

    

    if not brokemyphone then

        startVideo('rip')

        brokemyphone = true

        return Function_Stop

    end


    return Function_Continue

end

function onCreate()

    makeLuaSprite('scarylava', 'scarylava', -2600, 1800);
	setScrollFactor('scarylava', 1, 1);
	scaleObject('scarylava', 6, 6);

    makeLuaSprite('scanlines', 'scanlines', -0, -00);
	setScrollFactor('scanlines', 0, 0);
	scaleObject('scanlines', 0.8, 0.6);

    addLuaSprite('scarylava', true);
    addLuaSprite('scanlines', true);

    setObjectCamera('scanlines', 'other');

    setProperty('scanlines.alpha', 0);
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Silence'); --file goes inside music/ folder

end


function swapFont()
	setTextFont("scoreTxt","comic.ttf");
	setProperty("scoreTxt.size",24);
	setProperty("scoreTxt.y",getProperty("scoreTxt.y") + -8);
	setProperty("scoreTxt.borderSize",2);

	setTextFont("timeTxt","comic.ttf");
	setProperty("timeTxt.size",32);
	setProperty("timeTxt.y",getProperty("timeTxt.y") + -10);
	setProperty('timeTxt.antialiasing', false)

	setObjectOrder('iconP1', 3);
	setObjectOrder('iconP2', 3);
	setObjectOrder('healthBar', 1);
	setObjectOrder('healthBarBG', 1);
end

function onCreatePost()
	swapFont();
end

function onUpdatePost()

    P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') *        getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)

    P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)

    setProperty('iconP1.x',P1Mult - 110)

    setProperty('iconP1.origin.x',240)

    setProperty('iconP1.flipX',true)

    setProperty('iconP2.x',P2Mult + 110)

    setProperty('iconP2.origin.x',-100)

    setProperty('iconP2.flipX',true)

    setProperty('healthBar.flipX',true)

end

function onSongStart()

    noteTweenX('NoteMove1', 5, 200, 0.5, 'backIn')
    noteTweenX('NoteMove2', 4, 88, 0.5, 'backIn')
    noteTweenX('NoteMove3', 6, 310, 0.5, 'backIn')
    noteTweenX('NoteMove4', 7, 420, 0.5, 'backIn')

    noteTweenX('NoteMove5', 0, 770, 0.5, 'backIn')
    noteTweenX('NoteMove6', 1, 880, 0.5, 'backIn')
    noteTweenX('NoteMove7', 2, 990, 0.5, 'backIn')
    noteTweenX('NoteMove8', 3, 1100, 0.5, 'backIn')

end

function onUpdate()
    if curStep >= 620 then
    
        doTweenY('scarylava.y', 'scarylava', 1300, 0.8, 'sineOut')
    end
    if curStep >= 1024 then
        doTweenY('scarylava.y', 'scarylava', 1700, 5, 'sineOut')
    end

    if curBeat >= 256 then
    
        setProperty('scanlines.alpha', 1)
    end
    if curBeat >= 321 then
    
        setProperty('scanlines.alpha', 0)
    end

    if curStep >= 1296 then
        doTweenY('scarylava.y', 'scarylava', 1300, 5, 'sineOut')
    end

end


function onBeatHit()
		
	if curBeat >= 64 and curBeat <= 192 or curBeat >= 200 and curBeat <= 256 then
		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		--doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
		xOffset = angleshit*16
	else
		cancelTween('tt')
		--cancelTween('ttrn')
		setProperty('camGame.angle',0)
		xOffset = 0
		--setProperty('camGame.x',0)
		--setProperty('camGame.y',0)
	end


end