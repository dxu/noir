ent = require('lib/ent')

-- inherit from the base scene
player = ent:new({
	x=64,
	y=64
})

function player:initialize()
-- create the player and the platforms
end

function player:update()
-- update logic for a player on each tick
 if (btn(0)) then self.x=self.x-1 end
 if (btn(1)) then self.x=self.x+1 end
 if (btn(2)) then self.y=self.y-1 end
 if (btn(3)) then self.y=self.y+1 end
end

function player:draw()
  circfill(self.x,self.y,7,14)
end

return player
