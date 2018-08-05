scene = require('lib/scene')
player = require('player')

-- inherit from the base scene
level = scene:new()

function level:initialize()
-- create the player and the platforms
	local player = player:new()
  self.gravity = 2
	self:add(player)
end

function level:update()
  -- update gravity
	for k,ent in pairs(self.entities) do
    if not ent.grounded then
      local new_position = ent.y + self.gravity
      -- if new_position and the ent's height go below ground,
      -- move them back up and don't modify
      if ent.y + ent.height >= 128 then
        ent.y = 128 - ent.height
        ent.vel_y = 0
        ent.acc_y = 0
        ent.grounded = true
      else
        ent.y = new_position
      end
    end
  end
end

function level:draw()
 rectfill(0,0,127,127,5)
end

return level
