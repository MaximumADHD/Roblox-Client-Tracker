-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("SuperTemplate")
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
   local var219 = {}
   var219.enabled = false
   arg1.state = var219
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
      local var233 = {}
      var233.enabled = false
      arg1:setState(var233)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var238 = {}
      var238.enabled = arg1
      arg1:setState(var238)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var242 = {}
      var242.enabled = arg1.Enabled
      arg1:setState(var242)
   end
   
   local var248 = {}
   var248.stringResourceTable = var9
   var248.translationResourceTable = var10
   var248.pluginName = "SuperTemplate"
   arg1.localization = var4.Localization.new(var248)
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
   local var280 = var5
   var280 = var1
   local var282 = var280.new(var280)
   local var287 = var6.new(var1:getMouse())
   local var288 = arg1.localization
   local var289 = arg1.analytics
   local var290 = {}
   local var294 = {}
   var294.Id = "SuperTemplate"
   var294.Enabled = arg1.state.enabled
   var294.Title = arg1.localization:getText("Plugin", "Name")
   var294.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var294.InitialDockState = Enum.InitialDockState.Bottom
   var294.Size = Vector2.new(640, 480)
   var294.MinSize = Vector2.new(250, 200)
   var294.OnClose = arg1.onClose
   var294.Widget = var0.PluginLoaderContext.mainDockWidget
   var294.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var319 = {}
   var1.Tag = "X-Fill X-Column"
   local var327 = {}
   local var331 = {}
   var331.showContent = true
   var327.BasicExample = var1.createElement(var11, var331)
   var319.Wrapper = var1.createElement("Frame", {}, var327)
   local var338 = {}
   var338.StyleSheet = arg1.design
   var319.StyleLink = var1.createElement("StyleLink", var338)
   var290.MainWidget = var1.createElement(var3, var294, var319)
   return var4.provide({}, var290)
end

return var12
