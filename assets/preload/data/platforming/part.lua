function onUpdate()
  if curBeat >= 160 and curBeat <= 192 or curBeat >= 352 and curBeat <= 383 then
    makeParticle()
  end
end

particles = 0
function makeParticle()
  particles = particles+1
  rand1 = getRandomInt(-5000, 5000)
  rand2 = getRandomInt(15, 25)
  makeLuaSprite('particle'..particles, 'particles', rand1,1500)
  addLuaSprite('particle'..particles, true)
  doTweenX(particles..'x', 'particle'..particles, rand1 + getRandomInt(-50, 50), getRandomInt(4, 10))
  doTweenY(particles..'y', 'particle'..particles, -800, getRandomInt(4, 10))
  doTweenAlpha(particles..'al', 'particle'..particles, 0, getRandomInt(4, 10))
  if particles > 900 then
      particles = 1
  end
end