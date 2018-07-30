local scene = {
  entities = {},
  grav=0.15,
}

function scene:new (o)
  o = o or {}   -- create object if user does not provide one
  setmetatable(o, self)
  self.__index = self
  return o
end

function scene:add (entity)
  self.entities.insert(entity)
end

local scene_factory = {
  create = function(gravity)
    return scene:new();
  end
}

return scene_factory
