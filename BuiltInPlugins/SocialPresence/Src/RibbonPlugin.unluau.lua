-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var2.Plugin
local var4 = var2.Mouse
local var5 = require(var0.Src.Resources.MakeTheme)
local var6 = var0.Src.Resources.Localization.SourceStrings
local var7 = var0.Src.Resources.Localization.LocalizedStrings
local var8 = require(var0.Src.Components.CollaboratorRibbon)
local var9 = require(var0.Src.ContextServices.CollaboratorsServiceContext)
local var10 = require(var0.Src.Util.AnalyticsHandlers)
local var11 = var1.PureComponent:extend("RibbonPlugin")
function var11.init(arg1, arg2)
   local var51 = {}
   var51.stringResourceTable = var6
   var51.translationResourceTable = var7
   var51.pluginName = "SocialPresence"
   arg1.localization = var2.Localization.new(var51)
   arg1.analytics = var2.Analytics.new(var10)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var72 = var3
   var72 = var1
   local var74 = var72.new(var72)
   local var79 = var4.new(var1:getMouse())
   local var81 = var5()
   local var82 = arg1.localization
   local var83 = arg1.analytics
   local var84 = var9
   var84 = game:GetService("CollaboratorsService")
   local var5 = var84.new(var84)
   local var87 = {}
   local var91 = {}
   var91.Widget = var0.Widget
   var91.OnClick = var0.OnClick
   var87.RibbonComponent = var1.createElement(var8, var91)
   return var2.provide({}, var87)
end

return var11
