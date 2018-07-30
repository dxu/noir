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
  self.current_scene:initialize()
end

function world:_update()
	self.current_scene:_update()
end

function world:_draw()
  -- if there is no current scene, we should throw an error
  self.current_scene:_draw()
end

return world
