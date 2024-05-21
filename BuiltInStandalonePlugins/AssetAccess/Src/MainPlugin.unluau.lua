-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.DockWidget
local var5 = var3.Pane
local var6 = var2.ContextServices
local var7 = var6.Plugin
local var8 = var6.Mouse
local var9 = var2.Style.Themes.StudioTheme
local var10 = var2.Styling.registerPluginStyles
local var11 = var0.Src.Resources.Localization.SourceStrings
local var12 = var0.Src.Resources.Localization.LocalizedStrings
local var13 = var1.PureComponent:extend("MainPlugin")
function var13.init(arg1, arg2)
   local var37 = {}
   var37.enabled = false
   arg1.state = var37
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
      local var50 = {}
      var50.enabled = false
      arg1:setState(var50)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var55 = {}
      var55.enabled = arg1
      arg1:setState(var55)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var59 = {}
      var59.enabled = arg1.Enabled
      arg1:setState(var59)
   end
   
   local var65 = {}
   var65.stringResourceTable = var11
   var65.translationResourceTable = var12
   var65.pluginName = "AssetAccess"
   arg1.localization = var6.Localization.new(var65)
   arg1.analytics = var6.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var9.new()
   arg1.design = var10(arg2.Plugin)
end

function var13.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var97 = var7
   var97 = var1
   local var99 = var97.new(var97)
   local var104 = var8.new(var1:getMouse())
   local var105 = arg1.DEPRECATED_stylizer
   local var106 = arg1.localization
   local var107 = arg1.analytics
   local var108 = {}
   local var112 = {}
   var112.Id = "AssetAccess"
   var112.Enabled = arg1.state.enabled
   var112.Title = arg1.localization:getText("Plugin", "Name")
   var112.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var112.InitialDockState = Enum.InitialDockState.Bottom
   var112.Size = Vector2.new(640, 480)
   var112.MinSize = Vector2.new(250, 200)
   var112.OnClose = arg1.onClose
   var112.Widget = var0.PluginLoaderContext.mainDockWidget
   var112.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var137 = {}
   var1.Tag = "X-Fill X-Column"
   var137.Wrapper = var1.createElement(var5, {})
   local var149 = {}
   var149.StyleSheet = arg1.design
   var137.StyleLink = var1.createElement("StyleLink", var149)
   var108.MainWidget = var1.createElement(var4, var112, var137)
   return var6.provide({}, var108)
end

return var13
