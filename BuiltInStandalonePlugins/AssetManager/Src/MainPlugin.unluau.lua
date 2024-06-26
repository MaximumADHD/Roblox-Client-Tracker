-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI
local var5 = var4.DockWidget
local var6 = var4.Pane
local var7 = var4.KeyboardListener
local var8 = var3.ContextServices
local var9 = var8.Plugin
local var10 = var8.Mouse
local var11 = var8.Store
local var12 = require(var0.Src.Reducers.MainReducer)
local var13 = var3.Style.Themes.StudioTheme
local var14 = var3.Styling.registerPluginStyles
local var15 = var0.Src.Resources.Localization.SourceStrings
local var16 = var0.Src.Resources.Localization.LocalizedStrings
local var17 = require(var0.Src.Components.App)
local var18 = require(var0.Src.Controllers.ExplorerController)
local var19 = require(var0.Src.Controllers.ItemsController)
local var20 = require(var0.Src.Controllers.PluginController)
local var21 = require(var0.Src.Networking)
local var22 = var1.PureComponent:extend("MainPlugin")
function var22.init(arg1, arg2)
   local var72 = {}
   var72.enabled = false
   arg1.state = var72
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
      local var85 = {}
      var85.enabled = false
      arg1:setState(var85)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var90 = {}
      var90.enabled = arg1
      arg1:setState(var90)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var94 = {}
      var94.enabled = arg1.Enabled
      arg1:setState(var94)
   end
   
   local var104 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var12, nil, {}, nil)
   local var110 = {}
   var110.stringResourceTable = var15
   var110.translationResourceTable = var16
   var110.pluginName = "AssetManager"
   arg1.localization = var8.Localization.new(var110)
   arg1.analytics = var8.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var13.new()
   arg1.design = var14(arg2.Plugin)
   arg1.networking = var21.new()
   arg1.pluginController = var20.new(arg2.Plugin, arg1.networking, arg1.localization)
   arg1.explorerController = var18.new(arg1.pluginController, arg1.networking)
   arg1.itemsController = var19.new(arg1.pluginController, arg1.networking)
end

function var22.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var22.willUnmount(arg1)
   arg1.pluginController:destroy()
   arg1.explorerController:destroy()
   arg1.itemsController:destroy()
end

function var22.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var168 = var9
   var168 = var1
   local var182 = arg1.analytics
   local var183 = arg1.pluginController
   local var184 = arg1.explorerController
   local var185 = arg1.itemsController
   local var186 = arg1.networking
   local var187 = {}
   local var191 = {}
   var191.Id = "AssetManager"
   var191.Enabled = arg1.state.enabled
   var191.Title = arg1.localization:getText("Plugin", "Name")
   var191.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var191.InitialDockState = Enum.InitialDockState.Bottom
   var191.Size = Vector2.new(640, 480)
   var191.MinSize = Vector2.new(250, 200)
   var191.OnClose = arg1.onClose
   var191.Widget = var0.PluginLoaderContext.mainDockWidget
   var191.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var216 = {}
   var1.Tag = "X-Fill X-Column"
   local var224 = {}
   var224.App = var1.createElement(var17)
   local var232 = {}
   function var232.OnKeyPressed(arg1)
      local var0 = {}
      var0.enabled = arg1.enabled
      return var0
   end
   
   function var232.OnKeyReleased()
      arg1:setState(function(arg1)
         local var0 = {}
         var0.enabled = arg1.enabled
         return var0
      end)
   end
   
   var224.KeyboardListener = var1.createElement(var7, var232)
   var216.Wrapper = var1.createElement(var6, {}, var224)
   local var248 = {}
   var248.StyleSheet = arg1.design
   var216.StyleLink = var1.createElement("StyleLink", var248)
   var187.MainWidget = var1.createElement(var5, var191, var216)
   return var8.provide({ var168.new(var168), var11.new(arg1.store), var10.new(var1:getMouse()), arg1.DEPRECATED_stylizer, arg1.localization }, var187)
end

return var22
