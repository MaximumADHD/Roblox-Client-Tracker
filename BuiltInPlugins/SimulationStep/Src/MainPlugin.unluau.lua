-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("SimulationStep")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(var0.Packages.Rodux)
local var4 = require(var0.Packages.Framework)
local var5 = var4.UI
local var6 = var5.DockWidget
local var7 = var5.Pane
local var8 = var4.ContextServices
local var9 = var8.Plugin
local var10 = var8.Mouse
local var11 = var8.Store
local var12 = var4.Style.Themes.StudioTheme
local var13 = var4.Styling.registerPluginStyles
local var14 = require(var0.Src.Reducers.MainReducer)
local var15 = var0.Src.Resources.Localization.SourceStrings
local var16 = var0.Src.Resources.Localization.LocalizedStrings
local var17 = var0.Src.Components
local var18 = require(var17.ExampleComponent)
local var19 = require(var17.ExampleRoduxComponent)
local var20 = var1.PureComponent:extend("MainPlugin")
function var20.init(arg1, arg2)
   local var59 = {}
   var59.enabled = false
   arg1:setState(var59)
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
      local var73 = {}
      var73.enabled = false
      arg1:setState(var73)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var78 = {}
      var78.enabled = arg1
      arg1:setState(var78)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var82 = {}
      var82.enabled = arg1.Enabled
      arg1:setState(var82)
   end
   
   local var92 = var3.thunkMiddleware
   arg1.store = var3.Store.new(var14, nil, {}, nil)
   local var98 = {}
   var98.stringResourceTable = var15
   var98.translationResourceTable = var16
   var98.pluginName = "SimulationStep"
   arg1.localization = var8.Localization.new(var98)
   arg1.analytics = var8.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var12.new()
   arg1.design = var13(arg2.Plugin)
end

function var20.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var20.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var130 = var9
   var130 = var1
   local var136 = var11.new(arg1.store)
   local var141 = var10.new(var1:getMouse())
   local var142 = arg1.DEPRECATED_stylizer
   local var143 = arg1.localization
   local var144 = arg1.analytics
   local var145 = {}
   local var149 = {}
   var149.Id = "SimulationStep"
   var149.Enabled = arg1.state.enabled
   var149.Title = arg1.localization:getText("Plugin", "Name")
   var149.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var149.InitialDockState = Enum.InitialDockState.Bottom
   var149.Size = Vector2.new(640, 480)
   var149.MinSize = Vector2.new(250, 200)
   var149.OnClose = arg1.onClose
   var149.ShouldRestore = true
   var149.OnWidgetRestored = arg1.onRestore
   var149.Widget = var0.PluginLoaderContext.mainDockWidget
   var149.OnWidgetCreated = arg1.onDockWidgetCreated
   var2.Change.Enabled = arg1.onWidgetEnabledChanged
   local var176 = {}
   var1.Tag = "X-Fill X-Column"
   local var184 = {}
   var184.ExampleComponent = var1.createElement(var18)
   var184.ExampleRoduxComponent = var1.createElement(var19)
   var176.Wrapper = var1.createElement(var7, {}, var184)
   local var197 = {}
   var197.StyleSheet = arg1.design
   var176.StyleLink = var1.createElement("StyleLink", var197)
   var145.MainWidget = var1.createElement(var6, var149, var176)
   return var8.provide({ var130.new(var130) }, var145)
end

return var20
