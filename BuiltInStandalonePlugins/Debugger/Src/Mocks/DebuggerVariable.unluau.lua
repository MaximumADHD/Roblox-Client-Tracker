-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Util.Constants)
local var1 = {}
var1.__index = var1
function var1.new(arg1, arg2, arg3, arg4)
   local var0 = {}
   var0.VariableId = arg1
   var0.Name = arg2
   var0.Value = arg3
   var0.Type = arg4
   var0.Populated = false
   var0.PopulatableType = "DebuggerVariable"
   setmetatable(var0, var1)
   return var0
end

function var1.MockSetChildren(arg1, arg2)
   arg1.children = arg2
end

function var1.GetChildren(arg1)
   if arg1.children then
      local var0 = arg1.children or {}
   end
   return {}
end

function var1.GetVariableByIndex(arg1)
   return var1.new(0, "", "", "")
end

function var1.newDummyRow()
   return var1.new(0, var0.DummyRowName, "", "")
end

function var1.GetDefaultFrameVariables()
   local var0 = {}
   var0.Locals = var1.new(1, "", "", "")
   var0.Globals = var1.new(1, "", "", "")
   var0.Upvalues = var1.new(1, "", "", "")
   return var0
end

return var1
