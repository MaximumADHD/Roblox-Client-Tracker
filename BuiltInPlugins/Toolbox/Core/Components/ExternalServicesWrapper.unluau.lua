-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.ContextServices.ModalContext)
local var5 = require(var0.Core.ContextServices.NetworkContext)
local var6 = var2.Component:extend("ExternalServicesWrapper")
function var6.render(arg1)
   local var0 = arg1.props
   local var33 = var4
   var33 = var0.pluginGui
   local var35 = var33.new(var33)
   local var36 = var5
   var36 = var0.networkInterface
   local var38 = var36.new(var36)
   return var3.provide({}, var0[var2.Children])
end

return var6
