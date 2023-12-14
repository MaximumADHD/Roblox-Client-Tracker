-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Breakpoint)
local var1 = {}
var1.__index = var1
function var1.SetBreakpointHit(arg1, arg2)
   arg1.Breakpoint = arg2
end

function var1.new(arg1, arg2, arg3)
   local var0 = {}
   var0.Reason = arg1
   var0.ThreadId = arg2
   var0.AllThreadsPaused = arg3
   setmetatable(var0, var1)
   return var0
end

return var1
