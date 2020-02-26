local log = require(script.Parent.rootLogger)
local foo = require(script.Parent.foo)

return function()
    log:info("calling {root}")
    foo.init(log)

    return foo.bar()
end