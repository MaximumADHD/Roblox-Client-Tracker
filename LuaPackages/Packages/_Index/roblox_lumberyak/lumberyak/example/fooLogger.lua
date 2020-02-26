local Logger = require(script.Parent.Parent.Logger)
local log = Logger.new()
log:setContext({foo = "foo"})
return log
