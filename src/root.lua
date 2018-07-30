factory = require('scene')
log = require('log')

local current_scene

function initialize()
 local level1 = factory.create(14)
end

initialize()

x = 64  y = 64
function _update()
 if (btn(0)) then x=x-1 end
 if (btn(1)) then x=x+1 end
 if (btn(2)) then y=y-1 end
 if (btn(3)) then y=y+1 end
end

function _draw()
 rectfill(0,0,127,127,5)
end
