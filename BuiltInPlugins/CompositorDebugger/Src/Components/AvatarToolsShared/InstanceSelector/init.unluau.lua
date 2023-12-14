-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework)
local var2 = var1.ContextServices
local var3 = game:GetService("Selection")
local var4 = require(var0.Packages.React).PureComponent:extend("InstanceSelector")
var1.Util.Typecheck.wrap(var4, script)
function var4.didMount(arg1)
   local var0 = arg1.props
   local var1 = var0.IsSelectedInstanceValid
   local var2 = var0.OnValidSelection
   local var3 = var0.OnInvalidSelection
   arg1.SelectionChangedHandle = var3.SelectionChanged:Connect(function()
      if var3:Get() == 1 then
         local var0 = var3:Get()[1]
         if var0 ~= arg1.props.Actor then
            if var1(var0) then
               var2(var0)
            end
            var3(var0)
         end
      end
   end)
end

function var4.willUnmount(arg1)
   if arg1.SelectionChangedHandle then
      arg1.SelectionChangedHandle:Disconnect()
   end
end

local function fun3(arg1)
   return nil
end

function var4.render(arg1)
   return nil
end

fun3 = var2.withContext
local var64 = {}
var64.Stylizer = var2.Stylizer
var64.Localization = var2.Localization
var64.Mouse = var2.Mouse
var64.Plugin = var2.Plugin
var4 = fun3(var64)(var4)
InstancSelector = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Actor = arg1.Status.Actor
   return var0
end, function(arg1)
   return {}
end)(var4)
return var4
