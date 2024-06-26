-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("PlaceAnnotations")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.DockWidget
local var4 = var2.UI.PluginToolbar
local var5 = var2.ContextServices
local var6 = var5.Plugin
local var7 = var5.Mouse
local var8 = var2.Style.Themes.StudioTheme
local var9 = var2.Styling.registerPluginStyles
local var10 = var0.Src.Resources.Localization.SourceStrings
local var11 = var0.Src.Resources.Localization.LocalizedStrings
local var12 = var1.PureComponent:extend("MainPlugin")
function var12.init(arg1, arg2)
   local var38 = {}
   var38.enabled = false
   arg1.state = var38
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
      local var51 = {}
      var51.enabled = false
      arg1:setState(var51)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var56 = {}
      var56.enabled = arg1
      arg1:setState(var56)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var60 = {}
      var60.enabled = arg1.Enabled
      arg1:setState(var60)
   end
   
   local var66 = {}
   var66.stringResourceTable = var10
   var66.translationResourceTable = var11
   var66.pluginName = "PlaceAnnotations"
   arg1.localization = var5.Localization.new(var66)
   arg1.analytics = var5.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var8.new()
   arg1.design = var9(arg2.Plugin)
end

function var12.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var98 = var6
   var98 = var1
   local var100 = var98.new(var98)
   local var105 = var7.new(var1:getMouse())
   local var106 = arg1.localization
   local var107 = arg1.analytics
   local var108 = {}
   local var112 = {}
   var112.Title = arg1.localization:getText("Plugin", "Toolbar")
   function var112.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var108.Toolbar = var1.createElement(var4, var112)
   local var126 = {}
   var126.Id = "PlaceAnnotations"
   var126.Enabled = arg1.state.enabled
   var126.Title = arg1.localization:getText("Plugin", "Name")
   var126.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var126.InitialDockState = Enum.InitialDockState.Bottom
   var126.Size = Vector2.new(640, 480)
   var126.MinSize = Vector2.new(250, 200)
   var126.OnClose = arg1.onClose
   var126.Widget = var0.PluginLoaderContext.mainDockWidget
   var126.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var151 = {}
   var1.Tag = "X-Fill X-Column"
   var151.Wrapper = var1.createElement("Frame", {})
   local var163 = {}
   var163.StyleSheet = arg1.design
   var151.StyleLink = var1.createElement("StyleLink", var163)
   var108.MainWidget = var1.createElement(var3, var126, var151)
   return var5.provide({}, var108)
end

return var12
