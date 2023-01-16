function onCreate()
	-- background shit
	makeLuaSprite('irioscastl', 'irioscastl', -2600, -1100);
	setScrollFactor('irioscastl', 1, 1);
	scaleObject('irioscastl', 6, 6);
	
	makeLuaSprite('who', 'who', 400, -0);
	setScrollFactor('who', 1.1, 1.1);
	scaleObject('who', 5, 5);

	addLuaSprite('irioscastl', false);
	addLuaSprite('who', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end