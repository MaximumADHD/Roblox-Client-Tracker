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
   local var60 = {}
   var60.enabled = false
   arg1.state = var60
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
      local var1 = {}
      var1.enabled = false
      arg1:setState(var1)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var6 = {}
      var6.enabled = arg1
      arg1:setState(var6)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var10 = {}
      var10.enabled = arg1.Enabled
      arg1:setState(var10)
   end
   
   local var16 = {}
   var16.stringResourceTable = var10
   var16.translationResourceTable = var11
   var16.pluginName = "PlaceAnnotations"
   arg1.localization = var5.Localization.new(var16)
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
   local var48 = var6
   var48 = var1
   local var50 = var48.new(var48)
   local var55 = var7.new(var1:getMouse())
   local var56 = arg1.localization
   local var57 = arg1.analytics
   local var58 = {}
   local var62 = {}
   var62.Title = arg1.localization:getText("Plugin", "Toolbar")
   function var62.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var58.Toolbar = var1.createElement(var4, var62)
   local var76 = {}
   var76.Id = "PlaceAnnotations"
   var76.Enabled = arg1.state.enabled
   var76.Title = arg1.localization:getText("Plugin", "Name")
   var76.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var76.InitialDockState = Enum.InitialDockState.Bottom
   var76.Size = Vector2.new(640, 480)
   var76.MinSize = Vector2.new(250, 200)
   var76.OnClose = arg1.onClose
   var76.Widget = var0.PluginLoaderContext.mainDockWidget
   var76.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var101 = {}
   var1.Tag = "X-Fill X-Column"
   var101.Wrapper = var1.createElement("Frame", {})
   local var113 = {}
   var113.StyleSheet = arg1.design
   var101.StyleLink = var1.createElement("StyleLink", var113)
   var58.MainWidget = var1.createElement(var3, var76, var101)
   return var5.provide({}, var58)
end

return var12
