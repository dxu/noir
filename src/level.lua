scene = require('lib/scene')
player = require('player')

-- inherit from the base scene
level = scene:new()

function level:initialize()
-- create the player and the platforms
	local player = player:new()
	self:add(player)
end

function level:update()
-- update logic for a level on each tick
end

function level:draw()
 rectfill(0,0,127,127,5)
end

return level
