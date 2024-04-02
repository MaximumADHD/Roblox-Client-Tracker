-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI
local var5 = var4.DockWidget
local var6 = var4.Pane
local var7 = var3.ContextServices
local var8 = var7.Plugin
local var9 = var7.Mouse
local var10 = var7.Store
local var11 = require(var0.Src.Reducers.MainReducer)
local var12 = var3.Style.Themes.StudioTheme
local var13 = var3.Styling.registerPluginStyles
local var14 = var0.Src.Resources.Localization.SourceStrings
local var15 = var0.Src.Resources.Localization.LocalizedStrings
local var16 = var0.Src.Components
local var17 = require(var16.ExampleComponent)
local var18 = require(var16.ExampleRoduxComponent)
local var19 = var1.PureComponent:extend("MainPlugin")
function var19.init(arg1, arg2)
   local var56 = {}
   var56.enabled = false
   arg1.state = var56
   function arg1.toggleEnabled(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   function arg1.onClose()
      arg1:setState(function(arg1)
         local var0 = {}
         var0.enabled = arg1.enabled
         return var0
      end)
   end
   
   function arg1.onRestore()
      local var116 = {}
      var116.enabled = false
      arg1:setState(var116)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var138 = {}
      var138.enabled = arg1
      arg1:setState(var138)
   end
   
   arg2.Plugin:OnInvoke("OnOpen", function(arg1)
      local var157 = {}
      var157.enabled = arg1.Enabled
      arg1:setState(var157)
   end)
   local var171 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var11, nil, {}, nil)
   local var182 = {}
   var182.stringResourceTable = var14
   var182.translationResourceTable = var15
   var182.pluginName = "AttenuationCurveEditor"
   arg1.localization = var7.Localization.new(var182)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var12.new()
   arg1.design = var13(arg2.Plugin)
end

function var19.didUpdate(arg1)
end

function var19.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var208 = var8
   var208 = var1
   local var215 = var10.new(arg1.store)
   local var220 = var9.new(var1:getMouse())
   local var221 = arg1.DEPRECATED_stylizer
   local var222 = arg1.localization
   local var223 = arg1.analytics
   local var225 = {}
   local var229 = {}
   var229.Id = "AttenuationCurveEditor"
   var229.Enabled = arg1.state.enabled
   var229.Title = arg1.localization:getText("Plugin", "Name")
   var229.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var229.InitialDockState = Enum.InitialDockState.Bottom
   var229.Size = Vector2.new(640, 480)
   var229.MinSize = Vector2.new(250, 200)
   var229.OnClose = arg1.onClose
   var229.Widget = var0.PluginLoaderContext.mainDockWidget
   var229.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var259 = {}
   var1.Tag = "X-Fill X-Column"
   local var270 = {}
   var270.ExampleComponent = var1.createElement(var17)
   var270.ExampleRoduxComponent = var1.createElement(var18)
   var259.Wrapper = var1.createElement(var6, {}, var270)
   local var283 = {}
   var283.StyleSheet = arg1.design
   var259.StyleLink = var1.createElement("StyleLink", var283)
   var225.MainWidget = var1.createElement(var5, var229, var259)
   return var7.provide({ var208.new(var208) }, var225)
end

return var19
