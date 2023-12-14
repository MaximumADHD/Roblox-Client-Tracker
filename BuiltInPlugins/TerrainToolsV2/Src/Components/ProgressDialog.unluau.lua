-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Src.Components.ProgressWidget)
local var4 = game:GetService("CoreGui")
return function(arg1)
   local var149 = {}
   var149.AnchorPoint = Vector2.new(0.5, 0)
   local var159 = UDim2.new(0.5, 0, 0, 0)
   var149.Position = var159
   var159 = arg1
   local var165 = {}
   var165.target = var4
   local var167 = {}
   local var171 = {}
   var171.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   local var173 = {}
   var173.ProgressWidget = var1.createElement(var3, var2.Dictionary.join(var149, var159))
   var167.ProgressDialog = var1.createElement("ScreenGui", var171, var173)
   return var1.createElement(var1.Portal, var165, var167)
end
