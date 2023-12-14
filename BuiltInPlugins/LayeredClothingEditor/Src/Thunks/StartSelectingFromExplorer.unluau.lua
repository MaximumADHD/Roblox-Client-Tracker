-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetControlsPanelBlockerActivity)
local var2 = require(var0.Src.Actions.SetControlsPanelBlockerMessage)
return function(arg1, arg2)
   return function(arg1)
      local var193 = nil
      game:GetService("Selection"):Set({})
      local var197 = var1(true)
      arg1:dispatch()
      local var1 = var2(arg2)
      arg1:dispatch()
   end
end
