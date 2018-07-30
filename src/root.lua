level = require('level')
world = require('lib/world')
log = require('util/log')

local current_scene

function initialize()
  -- local level1 =
	world:new()
	-- create a level
	local level1 = level:new()
	log('level1')
	log(level1)
	log('hello')
	world:load_scene(level1)
	log('world')
	log(world.current_scene)
	-- log(world)
end

initialize()

x = 64  y = 64
function _update()
	world:_update()
end

function _draw()
	-- rectfill(0,0,127,127,5)
	world:_draw()
end
