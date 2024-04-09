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
local var13 = require(var0.Src.Components.App)
local var14 = var1.PureComponent:extend("MainPlugin")
function var14.init(arg1, arg2)
   arg1.design = var10(arg2.Plugin)
   local var49 = {}
   var49.enabled = false
   arg1.state = var49
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
      local var62 = {}
      var62.enabled = false
      arg1:setState(var62)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var67 = {}
      var67.enabled = arg1
      arg1:setState(var67)
   end
   
   local var72 = {}
   var72.stringResourceTable = var11
   var72.translationResourceTable = var12
   var72.pluginName = "ActivityFeed"
   arg1.localization = var6.Localization.new(var72)
   arg1.analytics = var6.Analytics.new(function()
      return {}
   end, {})
end

function var14.renderButtons(arg1, arg2)
   local var0 = {}
   local var91 = {}
   var91.Toolbar = arg2
   var91.Active = arg1.state.enabled
   var91.Title = "activity_feed_button"
   var91.Tooltip = arg1.localization:getText("Plugin", "Description")
   var91.Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var91.OnClick = arg1.toggleEnabled
   var91.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var5, var91)
   return var0
end

function var14.render(arg1)
   local var0 = arg1.props.Plugin
   local var110 = var7
   var110 = var0
   local var112 = var110.new(var110)
   local var117 = var8.new(var0:getMouse())
   local var119 = var9()
   local var120 = arg1.localization
   local var121 = arg1.analytics
   local var122 = {}
   local var126 = {}
   var126.Title = "ActivityFeed"
   function var126.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var122.Toolbar = var1.createElement(var4, var126)
   local var136 = {}
   var136.Id = "ActivityFeed"
   var136.Enabled = arg1.state.enabled
   var136.Title = arg1.localization:getText("Plugin", "Name")
   var136.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var136.InitialDockState = Enum.InitialDockState.Left
   var136.Size = Vector2.new(640, 480)
   var136.MinSize = Vector2.new(250, 200)
   var136.OnClose = arg1.onClose
   var136.ShouldRestore = true
   var136.OnWidgetRestored = arg1.onRestore
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var160 = {}
   local var164 = {}
   var164.plugin = var0
   var160.App = var1.createElement(var13, var164)
   local var169 = {}
   var169.StyleSheet = arg1.design
   var160.StyleLink = var1.createElement("StyleLink", var169)
   var122.MainWidget = var1.createElement(var3, var136, var160)
   return var6.provide({}, var122)
end

return var14
