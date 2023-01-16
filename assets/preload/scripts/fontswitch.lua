
function swapFont()
	setTextFont("scoreTxt","SuperMario256.ttf");
	setProperty("scoreTxt.size",16);
	setProperty("scoreTxt.y",getProperty("scoreTxt.y") + 8);
	setProperty("scoreTxt.borderSize",2);

	setTextFont("timeTxt","SuperMario256.ttf");
	setProperty("timeTxt.size",32);
	setProperty("timeTxt.y",getProperty("timeTxt.y") + 3);
	setProperty('timeTxt.antialiasing', false)

	setObjectOrder('iconP1', 3);
	setObjectOrder('iconP2', 3);
	setObjectOrder('healthBar', 1);
	setObjectOrder('healthBarBG', 1);
end

function onCreatePost()
	swapFont();
end


