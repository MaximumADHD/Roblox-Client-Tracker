-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.Keys)
local var3 = var1.Component:extend("ThemeProvider")
function var3.render(arg1)
   return var1.oneChild(arg1.props[var1.Children])
end

return var3
