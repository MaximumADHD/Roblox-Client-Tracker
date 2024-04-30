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
local var11 = require(var0.Src.Components.BasicExample)
local var12 = var1.PureComponent:extend("MainPlugin")
function var12.init(arg1, arg2)
   local var110 = {}
   var110.enabled = false
   arg1.state = var110
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
      local var123 = {}
      var123.enabled = false
      arg1:setState(var123)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var128 = {}
      var128.enabled = arg1
      arg1:setState(var128)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var132 = {}
      var132.enabled = arg1.Enabled
      arg1:setState(var132)
   end
   
   local var138 = {}
   var138.stringResourceTable = var9
   var138.translationResourceTable = var10
   var138.pluginName = "ControlsEmulator"
   arg1.localization = var4.Localization.new(var138)
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
   local var170 = var5
   var170 = var1
   local var172 = var170.new(var170)
   local var177 = var6.new(var1:getMouse())
   local var178 = arg1.localization
   local var179 = arg1.analytics
   local var180 = {}
   local var184 = {}
   var184.Id = "ControlsEmulator"
   var184.Enabled = arg1.state.enabled
   var184.Title = arg1.localization:getText("Plugin", "Name")
   var184.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var184.InitialDockState = Enum.InitialDockState.Bottom
   var184.Size = Vector2.new(640, 480)
   var184.MinSize = Vector2.new(250, 200)
   var184.OnClose = arg1.onClose
   var184.Widget = var0.PluginLoaderContext.mainDockWidget
   var184.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var209 = {}
   var1.Tag = "X-Fill X-Column"
   local var217 = {}
   local var221 = {}
   var221.showContent = true
   var217.BasicExample = var1.createElement(var11, var221)
   var209.Wrapper = var1.createElement("Frame", {}, var217)
   local var228 = {}
   var228.StyleSheet = arg1.design
   var209.StyleLink = var1.createElement("StyleLink", var228)
   var180.MainWidget = var1.createElement(var3, var184, var209)
   return var4.provide({}, var180)
end

return var12
