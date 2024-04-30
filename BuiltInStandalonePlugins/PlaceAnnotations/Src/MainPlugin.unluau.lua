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
   local var80 = {}
   var80.enabled = false
   arg1.state = var80
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
      local var113 = {}
      var113.enabled = false
      arg1:setState(var113)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var118 = {}
      var118.enabled = arg1
      arg1:setState(var118)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var122 = {}
      var122.enabled = arg1.Enabled
      arg1:setState(var122)
   end
   
   local var134 = {}
   var134.stringResourceTable = var10
   var134.translationResourceTable = var11
   var134.pluginName = "PlaceAnnotations"
   arg1.localization = var5.Localization.new(var134)
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
   local var173 = var6
   var173 = var1
   local var175 = var173.new(var173)
   local var184 = var7.new(var1:getMouse())
   local var185 = arg1.localization
   local var186 = arg1.analytics
   local var188 = {}
   local var193 = {}
   var193.Title = arg1.localization:getText("Plugin", "Toolbar")
   function var193.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var188.Toolbar = var1.createElement(var4, var193)
   local var212 = {}
   var212.Id = "PlaceAnnotations"
   var212.Enabled = arg1.state.enabled
   var212.Title = arg1.localization:getText("Plugin", "Name")
   var212.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var212.InitialDockState = Enum.InitialDockState.Bottom
   var212.Size = Vector2.new(640, 480)
   var212.MinSize = Vector2.new(250, 200)
   var212.OnClose = arg1.onClose
   var212.Widget = var0.PluginLoaderContext.mainDockWidget
   var212.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var241 = {}
   var1.Tag = "X-Fill X-Column"
   var241.Wrapper = var1.createElement("Frame", {})
   local var255 = {}
   var255.StyleSheet = arg1.design
   var241.StyleLink = var1.createElement("StyleLink", var255)
   var188.MainWidget = var1.createElement(var3, var212, var241)
   return var5.provide({}, var188)
end

return var12
