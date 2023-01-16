local xx = 600; -- Code to change the position of the camera to the left or right for your opponent, Less = Left (They can be negative numbers), More = Right
local yy = 300; -- Code to change the position of the camera up or down for the enemy Less = Down (They can be negative numbers), More = Up
local xx2 = 750; -- Same code as above, but for boyfriend left, right
local yy2 = 350; -- Same code as above, but for boyfriend up, down
local xx3 = 850; -- Same code as above, but for girlfriend left, right
local yy3 = 450; -- Same code as above, but for girlfriend, up, down
local ofs = 20; -- Code to adjust the intensity with which the camera moves, the more numbers, the more intense, and the fewer numbers, less intense
local followchars = true; -- This code is necessary for the script to work, don't even think about deleting it!
local del = 0;
local del2 = 0;
local angleshit = 0.35;
local anglevar = 0.35;
local allowCountdown = false


function onUpdate() -- The Main Code
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then -- Code for the camera to follow the poses of your opponent
            setProperty('defaultCamZoom',1)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if gfSection == true then -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated.
                setProperty('defaultCamZoom',0.8) 
                if getProperty('gf.animation.curAnim.name') == 'singLEFT' then -- Credits to Serebeat and company for their Slaybells mod,
                    triggerEvent('Camera Follow Pos',xx3-ofs,yy3)              -- That's where I got the gf code from.
                end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
				end
                if getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                    triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
                end
                if getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
                end
                if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx3,yy3)
                end
            end
        else
                 -- Code for the camera to follow the poses of boyfriend
                 setProperty('defaultCamZoom',0.7)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','') -- Self explanatory
    end


end

function onCreate()

    setProperty('defaultCamZoom',0.9)

    setPropertyFromClass('GameOverSubstate', 'characterName', 'bfcardie');
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'alarm');
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');

    setProperty('boyfriend.visible', true) --false if you dont want him to be visible

    setProperty('gf.visible', false) --true if you dont want gf to be visible

    setProperty('dad.visible', true) --true if u want the opponent to be visible
end


function swapFont()
	setTextFont("scoreTxt","NiseSegaSonic.ttf");
	setProperty("scoreTxt.size",16);
	setProperty("scoreTxt.y",getProperty("scoreTxt.y") + 8);
	setProperty("scoreTxt.borderSize",1);

	setTextFont("timeTxt","NiseSegaSonic.ttf");
	setProperty("timeTxt.size",32);
	setProperty("timeTxt.y",getProperty("timeTxt.y") + -6);
	setProperty('timeTxt.antialiasing', false)

	setObjectOrder('iconP1', 3);
	setObjectOrder('iconP2', 3);
	setObjectOrder('healthBar', 1);
	setObjectOrder('healthBarBG', 1);
end

function onCreatePost()

        
    setProperty('healthBar.y', 630)
    setProperty('iconP1.y', 545)
    setProperty('iconP2.y', 545)

    if downscroll then
        setProperty('healthBar.y', 80)
        setProperty('iconP1.y', 25)
        setProperty('iconP2.y', 25)

        setProperty("timeBar.y",getProperty("timeBar.y") + -660);
        setProperty("timeTxt.y",getProperty("timeTxt.y") + -660);
        setProperty("scoreTxt.y",getProperty("scoreTxt.y") + 555);
        setProperty("scoreTxt.x",getProperty("scoreTxt.x") + 310);
    end

	swapFont();

end




function onBeatHit()

	if curBeat >= 20 and curBeat <= 100 or curBeat >= 180 and curBeat <= 228 then
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