local log = require(script.parent.fooLogger):new()
log:setContext({bar = "bar"})

return function()
    log:info("calling {root} {foo} {bar}")
    return "done"
end