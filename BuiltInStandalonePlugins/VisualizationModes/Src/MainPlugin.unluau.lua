-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.DockWidget
local var5 = var3.Pane
local var6 = var2.ContextServices
local var7 = var6.Plugin
local var8 = var6.Mouse
local var9 = var2.Style.Themes.StudioTheme
local var10 = var2.Styling.registerPluginStyles
local var11 = var0.Src.Resources.Localization.SourceStrings
local var12 = var0.Src.Resources.Localization.LocalizedStrings
local var13 = require(var0.Src.Components.ExampleComponent)
local var14 = var1.PureComponent:extend("MainPlugin")
function var14.init(arg1, arg2)
   local var42 = {}
   var42.enabled = false
   arg1.state = var42
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
      local var55 = {}
      var55.enabled = false
      arg1:setState(var55)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var60 = {}
      var60.enabled = arg1
      arg1:setState(var60)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var64 = {}
      var64.enabled = arg1.Enabled
      arg1:setState(var64)
   end
   
   local var70 = {}
   var70.stringResourceTable = var11
   var70.translationResourceTable = var12
   var70.pluginName = "VisualizationModes"
   arg1.localization = var6.Localization.new(var70)
   arg1.analytics = var6.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var9.new()
   arg1.design = var10(arg2.Plugin)
end

function var14.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var102 = var7
   var102 = var1
   local var104 = var102.new(var102)
   local var109 = var8.new(var1:getMouse())
   local var110 = arg1.DEPRECATED_stylizer
   local var111 = arg1.localization
   local var112 = arg1.analytics
   local var113 = {}
   local var117 = {}
   var117.Id = "VisualizationModes"
   var117.Enabled = arg1.state.enabled
   var117.Title = arg1.localization:getText("Plugin", "Name")
   var117.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var117.InitialDockState = Enum.InitialDockState.Bottom
   var117.Size = Vector2.new(640, 480)
   var117.MinSize = Vector2.new(250, 200)
   var117.OnClose = arg1.onClose
   var117.Widget = var0.PluginLoaderContext.mainDockWidget
   var117.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var142 = {}
   var1.Tag = "X-Fill X-Column"
   local var150 = {}
   var150.ExampleComponent = var1.createElement(var13)
   var142.Wrapper = var1.createElement(var5, {}, var150)
   local var159 = {}
   var159.StyleSheet = arg1.design
   var142.StyleLink = var1.createElement("StyleLink", var159)
   var113.MainWidget = var1.createElement(var4, var117, var142)
   return var6.provide({}, var113)
end

return var14
