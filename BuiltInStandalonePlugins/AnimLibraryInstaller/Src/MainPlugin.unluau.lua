-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimLibraryInstaller")
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
   local var291 = {}
   var291.enabled = false
   arg1.state = var291
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
      local var304 = {}
      var304.enabled = false
      arg1:setState(var304)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var309 = {}
      var309.enabled = arg1
      arg1:setState(var309)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var313 = {}
      var313.enabled = arg1.Enabled
      arg1:setState(var313)
   end
   
   local var319 = {}
   var319.stringResourceTable = var9
   var319.translationResourceTable = var10
   var319.pluginName = "AnimLibraryInstaller"
   arg1.localization = var4.Localization.new(var319)
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
   local var351 = var5
   var351 = var1
   local var353 = var351.new(var351)
   local var358 = var6.new(var1:getMouse())
   local var359 = arg1.localization
   local var360 = arg1.analytics
   local var361 = {}
   local var365 = {}
   var365.Id = "AnimLibraryInstaller"
   var365.Enabled = arg1.state.enabled
   var365.Title = arg1.localization:getText("Plugin", "Name")
   var365.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var365.InitialDockState = Enum.InitialDockState.Bottom
   var365.Size = Vector2.new(640, 480)
   var365.MinSize = Vector2.new(250, 200)
   var365.OnClose = arg1.onClose
   var365.Widget = var0.PluginLoaderContext.mainDockWidget
   var365.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var390 = {}
   var1.Tag = "X-Fill X-Column"
   local var398 = {}
   local var402 = {}
   var402.showContent = true
   var398.BasicExample = var1.createElement(var11, var402)
   var390.Wrapper = var1.createElement("Frame", {}, var398)
   local var409 = {}
   var409.StyleSheet = arg1.design
   var390.StyleLink = var1.createElement("StyleLink", var409)
   var361.MainWidget = var1.createElement(var3, var365, var390)
   return var4.provide({}, var361)
end

return var12
