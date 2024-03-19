-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
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
   
   function arg1.onDockWidgetCreated(arg1)
      local var77 = {}
      var77.enabled = arg1.Enabled
      arg1:setState(var77)
   end
   
   local var87 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var11, nil, {}, nil)
   local var93 = {}
   var93.stringResourceTable = var14
   var93.translationResourceTable = var15
   var93.pluginName = "AssetAccess"
   arg1.localization = var7.Localization.new(var93)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var12.new()
   arg1.design = var13(arg2.Plugin)
end

function var19.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var19.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var125 = var8
   var125 = var1
   local var131 = var10.new(arg1.store)
   local var136 = var9.new(var1:getMouse())
   local var137 = arg1.DEPRECATED_stylizer
   local var138 = arg1.localization
   local var139 = arg1.analytics
   local var140 = {}
   local var144 = {}
   var144.Id = "AssetAccess"
   var144.Enabled = arg1.state.enabled
   var144.Title = arg1.localization:getText("Plugin", "Name")
   var144.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var144.InitialDockState = Enum.InitialDockState.Bottom
   var144.Size = Vector2.new(640, 480)
   var144.MinSize = Vector2.new(250, 200)
   var144.OnClose = arg1.onClose
   var144.Widget = var0.PluginLoaderContext.mainDockWidget
   var144.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var169 = {}
   var1.Tag = "X-Fill X-Column"
   local var177 = {}
   var177.ExampleComponent = var1.createElement(var17)
   var177.ExampleRoduxComponent = var1.createElement(var18)
   var169.Wrapper = var1.createElement(var6, {}, var177)
   local var190 = {}
   var190.StyleSheet = arg1.design
   var169.StyleLink = var1.createElement("StyleLink", var190)
   var140.MainWidget = var1.createElement(var5, var144, var169)
   return var7.provide({ var125.new(var125) }, var140)
end

return var19
