-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Core.Util.SharedFlags.getFFlagToolboxFinallyRemoveLegacyContext)
local var2 = require(var0.Packages.Roact).PureComponent:extend("LocalizationConsumer")
function var2.render(arg1)
   local var20 = var1()
   var20 = `{script.Name}is marked for removal and cannot be used`
   assert(var20, var20)
   return arg1.props.render()
end

return var2
