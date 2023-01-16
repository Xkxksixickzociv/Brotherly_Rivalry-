function onCreate()
	-- background shit
	makeLuaSprite('marioluigihouse/livingroom', 'marioluigihouse/livingroom', -120, -300);
	setScrollFactor('marioluigihouse/livingroom', 0.9, 0.9);
	scaleObject('marioluigihouse/livingroom', 9, 9);
	setProperty('marioluigihouse/livingroom.antialiasing',false) 

	makeLuaSprite('marioluigihouse/chicken', 'marioluigihouse/chicken', 620, 950);
	setScrollFactor('marioluigihouse/chicken', 0.86, 0.6);
	scaleObject('marioluigihouse/chicken', 8.5, 8.5);
	setProperty('marioluigihouse/chicken.antialiasing',false) 

	makeLuaSprite('marioluigihouse/weed', 'marioluigihouse/weed', 1500, 900);
	setScrollFactor('marioluigihouse/weed', 0.8, 0.8);
	scaleObject('marioluigihouse/weed', 8.5, 8.5);
	setProperty('marioluigihouse/weed.antialiasing',false) 


	addLuaSprite('marioluigihouse/livingroom', false);
	addLuaSprite('marioluigihouse/weed', true);
	addLuaSprite('marioluigihouse/chicken', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end