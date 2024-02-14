-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Actions.Watch.ClearAllExpressions)
local var1 = {}
var1.__index = var1
function var1.OnExpressionsCleared(arg1)
   local var0 = var0()
   arg1.store:dispatch()
end

local function fun0(arg1, arg2)
   arg1._expressionsClearedConnection = arg2 or game:GetService("DebuggerUIService").ExpressionsCleared:Connect(function(arg1)
      local var0 = var0()
      arg1.store:dispatch()
   end)
end

function var1.destroy(arg1)
   if arg1._expressionsClearedConnection then
      arg1._expressionsClearedConnection:Disconnect()
      arg1._expressionsClearedConnection = nil
   end
end

function var1.new(arg1, arg2)
   local var0 = {}
   var0.store = arg1
   local var625 = arg2 or game:GetService("DebuggerUIService").ExpressionsCleared:Connect(function(arg1)
      local var0 = var0()
      arg1.store:dispatch()
   end)
   var0._expressionsClearedConnection = var625
   var625 = var0
   setmetatable(var625, var1)
   return var0
end

return var1
