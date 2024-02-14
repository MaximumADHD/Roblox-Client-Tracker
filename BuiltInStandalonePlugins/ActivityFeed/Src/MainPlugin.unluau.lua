-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI.DockWidget
local var5 = var3.UI.PluginToolbar
local var6 = var3.UI.PluginButton
local var7 = var3.ContextServices
local var8 = var7.Plugin
local var9 = var7.Mouse
local var10 = var7.Store
local var11 = require(var0.Src.Reducers.MainReducer)
local var12 = require(var0.Src.Resources.MakeTheme)
local var13 = var0.Src.Resources.Localization.SourceStrings
local var14 = var0.Src.Resources.Localization.LocalizedStrings
local var15 = var0.Src.Components
local var16 = require(var15.ExampleComponent)
local var17 = require(var15.ExampleRoactRoduxComponent)
local var18 = var1.PureComponent:extend("MainPlugin")
function var18.init(arg1, arg2)
   local var179 = {}
   var179.enabled = false
   arg1.state = var179
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
      local var192 = {}
      var192.enabled = false
      arg1:setState(var192)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var197 = {}
      var197.enabled = arg1
      arg1:setState(var197)
   end
   
   local var206 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var11, nil, {}, nil)
   local var212 = {}
   var212.stringResourceTable = var13
   var212.translationResourceTable = var14
   var212.pluginName = "ActivityFeed"
   arg1.localization = var7.Localization.new(var212)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
end

function var18.renderButtons(arg1, arg2)
   local var0 = {}
   local var231 = {}
   var231.Toolbar = arg2
   var231.Active = arg1.state.enabled
   var231.Title = "activity_feed_button"
   var231.Tooltip = arg1.localization:getText("Plugin", "Description")
   var231.Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var231.OnClick = arg1.toggleEnabled
   var231.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var6, var231)
   return var0
end

function var18.render(arg1)
   local var0 = arg1.props.Plugin
   local var250 = var8
   var250 = var0
   local var256 = var10.new(arg1.store)
   local var261 = var9.new(var0:getMouse())
   local var263 = var12()
   local var264 = arg1.localization
   local var265 = arg1.analytics
   local var266 = {}
   local var270 = {}
   var270.Title = "ActivityFeed"
   function var270.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var266.Toolbar = var1.createElement(var5, var270)
   local var280 = {}
   var280.Id = "ActivityFeed"
   var280.Enabled = arg1.state.enabled
   var280.Title = arg1.localization:getText("Plugin", "Name")
   var280.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var280.InitialDockState = Enum.InitialDockState.Bottom
   var280.Size = Vector2.new(640, 480)
   var280.MinSize = Vector2.new(250, 200)
   var280.OnClose = arg1.onClose
   var280.ShouldRestore = true
   var280.OnWidgetRestored = arg1.onRestore
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var304 = {}
   var304.ExampleComponent = var1.createElement(var16)
   var304.ExampleRoactRoduxComponent = var1.createElement(var17)
   var266.MainWidget = var1.createElement(var4, var280, var304)
   return var7.provide({ var250.new(var250) }, var266)
end

return var18
