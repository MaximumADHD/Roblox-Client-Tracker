-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ControlsEmulator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.DockWidget
local var4 = var2.ContextServices
local var5 = var4.Plugin
local var6 = var4.Mouse
local var7 = var2.Style.Themes.StudioTheme
local var8 = var2.Styling.registerPluginStyles
local var9 = var0.Src.Resources.Localization.SourceStrings
local var10 = var0.Src.Resources.Localization.LocalizedStrings
local var11 = require(var0.Src.Components.DeviceBlueprint)
local var12 = var1.PureComponent:extend("MainPlugin")
function var12.init(arg1, arg2)
   local var41 = {}
   var41.enabled = false
   arg1.state = var41
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
      local var54 = {}
      var54.enabled = false
      arg1:setState(var54)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var59 = {}
      var59.enabled = arg1
      arg1:setState(var59)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var63 = {}
      var63.enabled = arg1.Enabled
      arg1:setState(var63)
   end
   
   local var69 = {}
   var69.stringResourceTable = var9
   var69.translationResourceTable = var10
   var69.pluginName = "ControlsEmulator"
   arg1.localization = var4.Localization.new(var69)
   arg1.analytics = var4.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var7.new()
   arg1.design = var8(arg2.Plugin)
end

function var12.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var101 = var5
   var101 = var1
   local var103 = var101.new(var101)
   local var108 = var6.new(var1:getMouse())
   local var109 = arg1.localization
   local var110 = arg1.analytics
   local var111 = {}
   local var115 = {}
   var115.Id = "ControlsEmulator"
   var115.Enabled = arg1.state.enabled
   var115.Title = arg1.localization:getText("Plugin", "Name")
   var115.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var115.InitialDockState = Enum.InitialDockState.Bottom
   var115.Size = Vector2.new(640, 480)
   var115.MinSize = Vector2.new(250, 200)
   var115.OnClose = arg1.onClose
   var115.Widget = var0.PluginLoaderContext.mainDockWidget
   var115.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var140 = {}
   var1.Tag = "X-Fill X-Column"
   local var148 = {}
   local var152 = {}
   var152.showContent = true
   var148.DeviceBlueprint = var1.createElement(var11, var152)
   var140.Wrapper = var1.createElement("Frame", {}, var148)
   local var159 = {}
   var159.StyleSheet = arg1.design
   var140.StyleLink = var1.createElement("StyleLink", var159)
   var111.MainWidget = var1.createElement(var3, var115, var140)
   return var4.provide({}, var111)
end

return var12
