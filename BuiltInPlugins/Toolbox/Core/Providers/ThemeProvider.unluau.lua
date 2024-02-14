-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.Keys)
local var3 = require(var0.Core.Util.SharedFlags.getFFlagToolboxFinallyRemoveLegacyContext)
local var4 = var1.Component:extend("ThemeProvider")
function var4.render(arg1)
   local var25 = var3()
   var25 = `{script.Name}is marked for removal and cannot be used`
   assert(var25, var25)
   return var1.oneChild(arg1.props[var1.Children])
end

return var4
