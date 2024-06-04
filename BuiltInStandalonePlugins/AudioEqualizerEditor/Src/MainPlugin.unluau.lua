-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AudioEqualizerEditor")
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
local var11 = var1.PureComponent:extend("MainPlugin")
function var11.init(arg1, arg2)
   local var36 = {}
   var36.enabled = false
   arg1.state = var36
   function arg1.setDisabled()
      local var39 = {}
      var39.enabled = false
      arg1:setState(var39)
   end
   
   local var45 = {}
   var45.stringResourceTable = var9
   var45.translationResourceTable = var10
   var45.pluginName = "AudioEqualizerEditor"
   arg1.localization = var4.Localization.new(var45)
   arg1.analytics = var4.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var7.new()
   arg1.design = var8(arg2.Plugin)
end

function var11.didUpdate(arg1)
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var71 = var5
   var71 = var1
   local var73 = var71.new(var71)
   local var78 = var6.new(var1:getMouse())
   local var79 = arg1.localization
   local var80 = arg1.analytics
   local var81 = {}
   local var85 = {}
   var85.Id = "AudioEqualizerEditor"
   var85.Enabled = arg1.state.enabled
   var85.Title = arg1.localization:getText("Plugin", "Name")
   var85.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var85.InitialDockState = Enum.InitialDockState.Float
   var85.Size = Vector2.new(640, 480)
   var85.MinSize = Vector2.new(250, 200)
   var85.OnClose = arg1.setDisabled
   var85.Widget = var0.PluginLoaderContext.mainDockWidget
   var85.OnWidgetCreated = arg1.onDockWidgetCreated
   var85.ShouldRestore = false
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var111 = {}
   var1.Tag = "X-Fill X-Column"
   var111.Wrapper = var1.createElement("Frame", {})
   local var123 = {}
   var123.StyleSheet = arg1.design
   var111.StyleLink = var1.createElement("StyleLink", var123)
   var81.MainWidget = var1.createElement(var3, var85, var111)
   return var4.provide({}, var81)
end

return var11
