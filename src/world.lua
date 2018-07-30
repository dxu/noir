local world = {
  current_scene,
}

function world:new (o)
  o = o or {}   -- create object if user does not provide one
  setmetatable(o, self)
  self.__index = self
  return o
end

function world:load_scene (scene)
  self.current_scene = scene
end

function world:draw()
  self.current_scene.draw()
end

return world:new()
