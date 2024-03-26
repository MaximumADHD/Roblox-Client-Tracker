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
   local var109 = {}
   var109.enabled = false
   arg1.state = var109
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
      local var122 = {}
      var122.enabled = false
      arg1:setState(var122)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var127 = {}
      var127.enabled = arg1
      arg1:setState(var127)
   end
   
   local var132 = {}
   var132.stringResourceTable = var11
   var132.translationResourceTable = var12
   var132.pluginName = "ActivityFeed"
   arg1.localization = var6.Localization.new(var132)
   arg1.analytics = var6.Analytics.new(function()
      return {}
   end, {})
end

function var14.renderButtons(arg1, arg2)
   local var0 = {}
   local var151 = {}
   var151.Toolbar = arg2
   var151.Active = arg1.state.enabled
   var151.Title = "activity_feed_button"
   var151.Tooltip = arg1.localization:getText("Plugin", "Description")
   var151.Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var151.OnClick = arg1.toggleEnabled
   var151.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var5, var151)
   return var0
end

function var14.render(arg1)
   local var0 = arg1.props.Plugin
   local var170 = var7
   var170 = var0
   local var172 = var170.new(var170)
   local var177 = var8.new(var0:getMouse())
   local var179 = var9()
   local var180 = arg1.localization
   local var181 = arg1.analytics
   local var182 = {}
   local var186 = {}
   var186.Title = "ActivityFeed"
   function var186.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var182.Toolbar = var1.createElement(var4, var186)
   local var196 = {}
   var196.Id = "ActivityFeed"
   var196.Enabled = arg1.state.enabled
   var196.Title = arg1.localization:getText("Plugin", "Name")
   var196.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var196.InitialDockState = Enum.InitialDockState.Left
   var196.Size = Vector2.new(640, 480)
   var196.MinSize = Vector2.new(250, 200)
   var196.OnClose = arg1.onClose
   var196.ShouldRestore = true
   var196.OnWidgetRestored = arg1.onRestore
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var220 = {}
   local var224 = {}
   var224.plugin = var0
   var220.App = var1.createElement(var13, var224)
   local var229 = {}
   var229.StyleSheet = arg1.design
   var220.StyleLink = var1.createElement("StyleLink", var229)
   var182.MainWidget = var1.createElement(var3, var196, var220)
   return var6.provide({}, var182)
end

return var14
