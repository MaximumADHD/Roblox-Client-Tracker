-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var3.Plugin
local var5 = var3.Mouse
local var6 = var3.Store
local var7 = require(var0.Src.Reducers.MainReducer)
local var8 = require(var0.Src.Resources.MakeTheme)
local var9 = var0.Src.Resources.Localization.SourceStrings
local var10 = var0.Src.Resources.Localization.LocalizedStrings
local var11 = require(var0.Src.MainPlugin)
local var12 = var1.PureComponent:extend("PluginWrapper")
function var12.init(arg1, arg2)
   local var239 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var7, nil, {}, nil)
   local var245 = {}
   var245.stringResourceTable = var9
   var245.translationResourceTable = var10
   var245.pluginName = "DynamicHeadExportTool"
   arg1.localization = var3.Localization.new(var245)
   arg1.analytics = var3.Analytics.new(function()
      return {}
   end, {})
end

function var12.render(arg1)
   local var0 = arg1.props.Plugin
   local var262 = var4
   var262 = var0
   local var2 = var8()
   local var3 = arg1.localization
   local var4 = arg1.analytics
   local var278 = {}
   var278.MainPlugin = var1.createElement(var11)
   return var3.provide({ var262.new(var262), var6.new(arg1.store), var5.new(var0:getMouse()) }, var278)
end

return var12
