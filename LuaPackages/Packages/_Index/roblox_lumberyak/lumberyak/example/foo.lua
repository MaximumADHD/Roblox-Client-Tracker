-- foo does not need to require root
local log = require(script.Parent.fooLogger)
local bar = require(script.Parent.fooBar)

return {
    init = function(logParent)
        log:setParent(logParent)
    end,
    bar = function()
        log:info("calling {root} {foo}")
        return bar()
    end
}
