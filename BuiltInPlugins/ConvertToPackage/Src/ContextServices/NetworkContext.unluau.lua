-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Symbol).named("NetworkInterface")
local var3 = var1.PureComponent:extend("NetworkContext")
function var3.init(arg1, arg2)
   local var0 = arg1._context
   var2 = arg2.networkInterface
end

function var3.render(arg1)
   return var1.oneChild(arg1.props[var1.Children])
end

return require(var0.Packages.Framework).ContextServices.ContextItem:createSimple("Network")
