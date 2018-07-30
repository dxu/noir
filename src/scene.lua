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

function scene:draw ()
end

local ss = scene:new()

local scene_factory = {
  create = function (gravity)
    local scene2 = scene:new({
      grav = gravity
    })
		return scene2
  end
}

return scene_factory
