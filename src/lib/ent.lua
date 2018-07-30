log = require('../util/log')
-- the base class for creating an entity
local ent = {
	x = 0,
	y = 0,
}

function ent:new (o)
  o = o or {}   -- create object if user does not provide one
  setmetatable(o, self)
  self.__index = self
  return o
end

function ent:initialize()
  log('ERROR: ent:initialize is required')
end

function ent:update()
  log('ERROR: ent:update is required')
end

-- just cycle through all entities and draw them
function ent:draw ()
  log('ERROR: ent:draw is required')
end

return ent
