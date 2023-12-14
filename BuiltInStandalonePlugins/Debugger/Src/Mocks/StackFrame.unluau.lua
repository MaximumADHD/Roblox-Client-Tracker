-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.ScriptRef)
local var1 = {}
var1.__index = var1
function var1.new(arg1, arg2, arg3, arg4)
   local var0 = {}
   var0.Line = arg1
   var0.Script = arg2
   var0.FrameName = arg3
   var0.FrameType = arg4
   var0.Populated = false
   var0.FrameId = 0
   var0.PopulatableType = "StackFrame"
   setmetatable(var0, var1)
   return var0
end

function var1.MockSetChildren(arg1, arg2)
   assert(arg2)
   arg1.Locals = arg2.Locals
   arg1.Globals = arg2.Globals
   arg1.Upvalues = arg2.Upvalues
   arg1.Populated = true
end

return var1
