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
   local var57 = {}
   var57.enabled = false
   arg1.state = var57
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
      local var70 = {}
      var70.enabled = false
      arg1:setState(var70)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var75 = {}
      var75.enabled = arg1
      arg1:setState(var75)
   end
   
   local var84 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var11, nil, {}, nil)
   local var90 = {}
   var90.stringResourceTable = var13
   var90.translationResourceTable = var14
   var90.pluginName = "ActivityFeed"
   arg1.localization = var7.Localization.new(var90)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
end

function var18.renderButtons(arg1, arg2)
   local var0 = {}
   local var109 = {}
   var109.Toolbar = arg2
   var109.Active = arg1.state.enabled
   var109.Title = "activity_feed_button"
   var109.Tooltip = arg1.localization:getText("Plugin", "Description")
   var109.Icon = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var109.OnClick = arg1.toggleEnabled
   var109.ClickableWhenViewportHidden = true
   var0.Toggle = var1.createElement(var6, var109)
   return var0
end

function var18.render(arg1)
   local var0 = arg1.props.Plugin
   local var128 = var8
   var128 = var0
   local var134 = var10.new(arg1.store)
   local var139 = var9.new(var0:getMouse())
   local var141 = var12()
   local var142 = arg1.localization
   local var143 = arg1.analytics
   local var144 = {}
   local var148 = {}
   var148.Title = "ActivityFeed"
   function var148.RenderButtons(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   var144.Toolbar = var1.createElement(var5, var148)
   local var158 = {}
   var158.Id = "ActivityFeed"
   var158.Enabled = arg1.state.enabled
   var158.Title = arg1.localization:getText("Plugin", "Name")
   var158.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var158.InitialDockState = Enum.InitialDockState.Bottom
   var158.Size = Vector2.new(640, 480)
   var158.MinSize = Vector2.new(250, 200)
   var158.OnClose = arg1.onClose
   var158.ShouldRestore = true
   var158.OnWidgetRestored = arg1.onRestore
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var182 = {}
   var182.ExampleComponent = var1.createElement(var16)
   var182.ExampleRoactRoduxComponent = var1.createElement(var17)
   var144.MainWidget = var1.createElement(var4, var158, var182)
   return var7.provide({ var128.new(var128) }, var144)
end

return var18
