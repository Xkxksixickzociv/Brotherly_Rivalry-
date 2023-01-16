function onStepHit()
    if curStep >= 464 then 
        doTweenX('waluigi', 'boyfriend', 600, 2, 'sineOut')
        doTweenX('wario', 'dad', 100, 2, 'sineOut')
    end

    if curStep >= 528 then 
        doTweenX('waluigi', 'boyfriend', 650, 1, 'sineOut')
        doTweenX('wario', 'dad', 50, 1, 'sineOut')
    end
end

