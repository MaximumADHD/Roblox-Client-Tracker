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
   local var55 = {}
   var55.enabled = false
   arg1.state = var55
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
      local var68 = {}
      var68.enabled = false
      arg1:setState(var68)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var73 = {}
      var73.enabled = arg1
      arg1:setState(var73)
   end
   
   arg2.Plugin:OnInvoke("OnOpen", function(arg1)
      local var79 = {}
      var79.enabled = arg1.Enabled
      arg1:setState(var79)
   end)
   local var90 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var11, nil, {}, nil)
   local var96 = {}
   var96.stringResourceTable = var14
   var96.translationResourceTable = var15
   var96.pluginName = "AttenuationCurveEditor"
   arg1.localization = var7.Localization.new(var96)
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
   local var122 = var8
   var122 = var1
   local var128 = var10.new(arg1.store)
   local var133 = var9.new(var1:getMouse())
   local var134 = arg1.DEPRECATED_stylizer
   local var135 = arg1.localization
   local var136 = arg1.analytics
   local var137 = {}
   local var141 = {}
   var141.Id = "AttenuationCurveEditor"
   var141.Enabled = arg1.state.enabled
   var141.Title = arg1.localization:getText("Plugin", "Name")
   var141.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var141.InitialDockState = Enum.InitialDockState.Bottom
   var141.Size = Vector2.new(640, 480)
   var141.MinSize = Vector2.new(250, 200)
   var141.OnClose = arg1.onClose
   var141.Widget = var0.PluginLoaderContext.mainDockWidget
   var141.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var166 = {}
   var1.Tag = "X-Fill X-Column"
   local var174 = {}
   var174.ExampleComponent = var1.createElement(var17)
   var174.ExampleRoduxComponent = var1.createElement(var18)
   var166.Wrapper = var1.createElement(var6, {}, var174)
   local var187 = {}
   var187.StyleSheet = arg1.design
   var166.StyleLink = var1.createElement("StyleLink", var187)
   var137.MainWidget = var1.createElement(var5, var141, var166)
   return var7.provide({ var122.new(var122) }, var137)
end

return var19
