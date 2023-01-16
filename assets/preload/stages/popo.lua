local shadersEnabled = true
function onCreate()
	-- background shit

	makeLuaSprite('sky', 'sky', -200, -150)
	scaleObject('road',1, 1)
	setScrollFactor('road', 0.2, 0.2)

	makeAnimatedLuaSprite('road','road', -200, -200)addAnimationByPrefix('road','go','road go',24,true);
	objectPlayAnimation('road','go',true)
	scaleObject('road', 1, 1)
	setScrollFactor('road', 1, 1)

	makeLuaSprite('overlay', 'overlay', -300, -150)
	setBlendMode('overlay', 'add')
	scaleObject('overlay', 2, 1.3)
	setScrollFactor('overlay', 0, 0)

	addLuaSprite('sky', false);
	addLuaSprite('road', false);
	addLuaSprite('overlay', true);


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end