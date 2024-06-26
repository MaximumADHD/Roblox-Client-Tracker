-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.DockWidget
local var4 = var2.UI.PluginToolbar
local var5 = var2.UI.PluginButton
local var6 = var2.ContextServices
local var7 = var6.Plugin
local var8 = var6.Mouse
local var9 = require(var0.Src.Resources.MakeTheme)
local var10 = var2.Styling.registerPluginStyles
local var11 = var0.Src.Resources.Localization.SourceStrings
local var12 = var0.Src.Resources.Localization.LocalizedStrings
local var13 = require(var0.Src.Util.AnalyticsHandlers)
local var14 = require(var0.Src.Components.App)
local var15 = var1.PureComponent:extend("MainPlugin")
function var15.init(arg1, arg2)
   arg1.design = var10(arg2.Plugin)
   local var54 = {}
   var54.enabled = false
   arg1.state = var54
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
      local var67 = {}
      var67.enabled = false
      arg1:setState(var67)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var72 = {}
      var72.enabled = arg1
      arg1:setState(var72)
   end
   
   local var77 = {}
   var77.stringResourceTable = var11
   var77.translationResourceTable = var12
   var77.pluginName = "ActivityFeed"
   arg1.localization = var6.Localization.new(var77)
   arg1.analytics = var6.Analytics.new(var13)
end

function var15.renderButtons(arg1, arg2)
   local var0 = {}
   local var95 = {}
   var95.Toolbar = arg2
   var95.Active = arg1.state.enabled
   var95.Title = "activity_feed_button"
   var95.Tooltip = arg1.localization:getText("Plugin", "Description")
   var95.OnClick = arg1.toggleEnabled
   var95.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var5, var95)
   return var0
end

function var15.render(arg1)
   local var0 = arg1.props.Plugin
   local var113 = var7
   var113 = var0
   local var115 = var113.new(var113)
   local var120 = var8.new(var0:getMouse())
   local var122 = var9()
   local var123 = arg1.localization
   local var124 = arg1.analytics
   local var125 = {}
   local var129 = {}
   var129.Title = "ActivityFeed"
   function var129.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var125.Toolbar = var1.createElement(var4, var129)
   local var139 = {}
   var139.Id = "ActivityFeed"
   var139.Enabled = arg1.state.enabled
   var139.Title = arg1.localization:getText("Plugin", "Name")
   var139.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var139.InitialDockState = Enum.InitialDockState.Left
   var139.Size = Vector2.new(640, 480)
   var139.MinSize = Vector2.new(250, 200)
   var139.OnClose = arg1.onClose
   var139.ShouldRestore = true
   var139.OnWidgetRestored = arg1.onRestore
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var163 = {}
   local var167 = {}
   var167.plugin = var0
   var163.App = var1.createElement(var14, var167)
   local var172 = {}
   var172.StyleSheet = arg1.design
   var163.StyleLink = var1.createElement("StyleLink", var172)
   var125.MainWidget = var1.createElement(var3, var139, var163)
   return var6.provide({}, var125)
end

return var15
