ent = require('lib/ent')
local log = require('util/log')

-- inherit from the base scene
player = ent:new({
	x=64,
	y=64,
  height=7,
  width=3,
  vel_x=0,
  vel_y=0,
  acc_x=0,
  acc_y=0,
  grounded=false,
})

function player:initialize()
-- create the player and the platforms
end

function player:update()
-- update logic for a player on each tick
 if (btn(0)) then self.x=self.x-1 end
 if (btn(1)) then self.x=self.x+1 end
 if (btnp(2)) then
   self.vel_y = self.vel_y+6
   self.grounded = false
 end
 -- if (btn(3)) then self.y=self.y+1 end

 if not self.grounded then
   log('hello')
   log(self.y)
   self.vel_x = self.vel_x + self.acc_x;
   self.vel_y = self.vel_y - self.acc_y;
   self.acc_y = self.acc_y + world.current_scene.gravity / 20
   self.x = self.x + self.vel_x;
   self.y = self.y - self.vel_y;
 end
end

function player:draw()
  -- log(self.y - self.height / 2)
  log(self.y)
  rectfill(
    self.x - self.width / 2,
    self.y - self.height / 2,
    self.x + self.width / 2,
    self.y + self.height / 2,
    14
  )
end

return player
