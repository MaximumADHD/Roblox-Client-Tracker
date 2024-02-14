-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.SharedFlags.getFFlagToolboxFinallyRemoveLegacyContext)
local var3 = var1.PureComponent:extend("PluginProvider")
function var3.render(arg1)
   local var20 = var2()
   var20 = `{script.Name}is marked for removal and cannot be used`
   assert(var20, var20)
   return var1.oneChild(arg1.props[var1.Children])
end

return var3
