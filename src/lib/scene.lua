-- log = require('log')
-- the base class for creating a scene
local scene = {
  entities = {},
}

function scene:new (o)
  o = o or {}   -- create object if user does not provide one
  setmetatable(o, self)
  self.__index = self
  return o
end

function scene:add (entity)
	add(self.entities, entity)
	entity:initialize()
end

function scene:initialize()
  log('ERROR: scene:initialize is required')
end

function scene:update()
  log('ERROR: scene:update is required')
end

function scene:_update()
	for k,v in pairs(self.entities) do v:update() end
	self:update()
end


-- for drawing background
function scene:draw()
  log('ERROR: scene:draw is required')
end

-- just cycle through all entities and draw them
function scene:_draw()
	self.draw()
	for k,v in pairs(self.entities) do v:draw() end
end

return scene
