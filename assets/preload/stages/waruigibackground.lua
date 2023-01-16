function onCreate()
	-- background shit
	makeLuaSprite('wstage', 'wstage', -700, -160);
	setScrollFactor('wstage', 0.9, 0.9);
	scaleObject('wstage', 9, 9);
	setProperty('wstage.antialiasing',false) 

	addLuaSprite('wstage', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end