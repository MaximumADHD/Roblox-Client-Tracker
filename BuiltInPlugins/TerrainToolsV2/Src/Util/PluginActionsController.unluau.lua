-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices
local var1 = var0.PluginActions
local var2 = var0.ContextItem:extend("PluginActionsController")
function var2.new(arg1, arg2)
   assert(arg1, "PluginActionsController.new() requires a plugin")
   local var19 = {}
   local var20 = var1
   var20 = arg1
   var19._pluginActions = var20.new(var20, arg2)
   return setmetatable(var19, var2)
end

function var2.Enable(arg1, arg2)
   arg1:SetEnabled(arg2, true)
end

function var2.Disable(arg1, arg2)
   arg1:SetEnabled(arg2, false)
end

function var2.SetEnabled(arg1, arg2, arg3)
   arg1._pluginActions:get(arg2).Enabled = arg3
end

function var2.Connect(arg1, arg2, arg3)
   return arg1._pluginActions:get(arg2).Triggered:Connect(arg3)
end

return var2
