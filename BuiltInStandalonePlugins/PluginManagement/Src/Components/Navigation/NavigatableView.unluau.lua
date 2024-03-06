-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.ContextServices.Navigation)
local var4 = var1.Component:extend("NavigatableView")
function var4.init(arg1)
   local var26 = {}
   var26.navigation = arg1.props.navigation
   arg1.navigation = var3.new(var26)
end

function var4.render(arg1)
   local var36 = arg1.navigation
   local var0 = arg1.props[var1.Children]
   return var2.provide({}, {})
end

return var4
