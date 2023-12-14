-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI.DockWidget
local var5 = var3.UI.PluginToolbar
local var6 = var3.UI.PluginButton
local var7 = var3.ContextServices
local var8 = var7.Plugin
local var9 = var7.Mouse
local var10 = require(var0.Src.Resources.MakeTheme)
local var11 = var0.Src.Resources.Localization.SourceStrings
local var12 = var0.Src.Resources.Localization.LocalizedStrings
local var13 = require(var0.Src.Components.App)
local var14 = var1.PureComponent:extend("MainPlugin")
function var14.init(arg1, arg2)
   local var48 = {}
   var48.enabled = false
   arg1:setState(var48)
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
   var72.pluginName = "TextureViewer"
   arg1.localization = var7.Localization.new(var72)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
end

function var14.renderButtons(arg1, arg2)
   local var0 = {}
   local var91 = {}
   var91.Toolbar = arg2
   var91.Active = arg1.state.enabled
   var91.Id = "template_button"
   var91.Title = arg1.localization:getText("Plugin", "Button")
   var91.Tooltip = arg1.localization:getText("Plugin", "Description")
   var91.Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var91.OnClick = arg1.toggleEnabled
   var91.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var6, var91)
   return var0
end

function var14.render(arg1)
   local var0 = arg1.props.Plugin
   local var115 = var8
   var115 = var0
   local var117 = var115.new(var115)
   local var122 = var9.new(var0:getMouse())
   local var124 = var10()
   local var125 = arg1.localization
   local var126 = arg1.analytics
   local var127 = {}
   local var131 = {}
   var131.Title = arg1.localization:getText("Plugin", "Toolbar")
   function var131.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var127.Toolbar = var1.createElement(var5, var131)
   local var145 = {}
   var145.Enabled = arg1.state.enabled
   var145.Title = arg1.localization:getText("Plugin", "Name")
   var145.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var145.InitialDockState = Enum.InitialDockState.Right
   var145.Size = Vector2.new(680, 480)
   var145.MinSize = Vector2.new(415, 100)
   var145.OnClose = arg1.onClose
   var145.ShouldRestore = true
   var145.OnWidgetRestored = arg1.onRestore
   var2.Change.Enabled = arg1.onWidgetEnabledChanged
   local var168 = {}
   var168.App = var1.createElement(var13)
   var127.MainWidget = var1.createElement(var4, var145, var168)
   return var7.provide({}, var127)
end

return var14
