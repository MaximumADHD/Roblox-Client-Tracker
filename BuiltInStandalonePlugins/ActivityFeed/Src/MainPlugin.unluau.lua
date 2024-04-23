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
   var91.OnClick = arg1.toggleEnabled
   var91.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var5, var91)
   return var0
end

function var14.render(arg1)
   local var0 = arg1.props.Plugin
   local var109 = var7
   var109 = var0
   local var111 = var109.new(var109)
   local var116 = var8.new(var0:getMouse())
   local var118 = var9()
   local var119 = arg1.localization
   local var120 = arg1.analytics
   local var121 = {}
   local var125 = {}
   var125.Title = "ActivityFeed"
   function var125.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var121.Toolbar = var1.createElement(var4, var125)
   local var135 = {}
   var135.Id = "ActivityFeed"
   var135.Enabled = arg1.state.enabled
   var135.Title = arg1.localization:getText("Plugin", "Name")
   var135.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var135.InitialDockState = Enum.InitialDockState.Left
   var135.Size = Vector2.new(640, 480)
   var135.MinSize = Vector2.new(250, 200)
   var135.OnClose = arg1.onClose
   var135.ShouldRestore = true
   var135.OnWidgetRestored = arg1.onRestore
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var159 = {}
   local var163 = {}
   var163.plugin = var0
   var159.App = var1.createElement(var13, var163)
   local var168 = {}
   var168.StyleSheet = arg1.design
   var159.StyleLink = var1.createElement("StyleLink", var168)
   var121.MainWidget = var1.createElement(var3, var135, var159)
   return var6.provide({}, var121)
end

return var14
