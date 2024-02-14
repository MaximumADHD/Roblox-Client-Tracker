-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Resources.MakeTheme)
local var3 = require(var0.Src.Components.PublishWarning.PublishWarningDialog)
local var4 = var1.PureComponent:extend("PublishWarningPlugin")
local var5 = require(var0.Packages.Framework).ContextServices
local var6 = var5.Plugin
function var4.render(arg1)
   local var0 = arg1.props
   local var39 = var6.new(plugin)
   local var41 = var2()
   local var42 = var0.Localization
   local var47 = {}
   var47.OnCancel = var0.OnCancel
   var47.OnContinue = var0.OnContinue
   local var2 = var1.createElement(var3, var47)
   return var5.provide({}, {})
end

return var4
