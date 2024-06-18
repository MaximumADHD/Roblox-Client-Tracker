-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Rodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI
local var5 = var4.DockWidget
local var6 = var4.Pane
local var7 = var3.ContextServices
local var8 = var7.Plugin
local var9 = var7.Mouse
local var10 = var7.Store
local var11 = require(var0.Src.Reducers.MainReducer)
local var12 = var3.Style.Themes.StudioTheme
local var13 = var3.Styling.registerPluginStyles
local var14 = var0.Src.Resources.Localization.SourceStrings
local var15 = var0.Src.Resources.Localization.LocalizedStrings
local var16 = require(var0.Src.Components.App)
local var17 = require(var0.Src.Controllers.PluginController)
local var18 = require(var0.Src.Controllers.ExplorerController)
local var19 = require(var0.Src.Networking)
local var20 = var1.PureComponent:extend("MainPlugin")
function var20.init(arg1, arg2)
   local var66 = {}
   var66.enabled = false
   arg1.state = var66
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
      local var79 = {}
      var79.enabled = false
      arg1:setState(var79)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      local var84 = {}
      var84.enabled = arg1
      arg1:setState(var84)
   end
   
   function arg1.onDockWidgetCreated(arg1)
      local var88 = {}
      var88.enabled = arg1.Enabled
      arg1:setState(var88)
   end
   
   local var98 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var11, nil, {}, nil)
   local var104 = {}
   var104.stringResourceTable = var14
   var104.translationResourceTable = var15
   var104.pluginName = "AssetManager"
   arg1.localization = var7.Localization.new(var104)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var12.new()
   arg1.design = var13(arg2.Plugin)
   arg1.networking = var19.new()
   arg1.pluginController = var17.new(arg2.Plugin, arg1.networking, arg1.localization)
   arg1.explorerController = var18.new(arg1.pluginController, arg1.networking)
end

function var20.didUpdate(arg1)
   arg1.props.PluginLoaderContext.mainButton:SetActive(arg1.state.enabled)
end

function var20.willUnmount(arg1)
   arg1.pluginController:destroy()
   arg1.explorerController:destroy()
end

function var20.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Plugin
   local var155 = var8
   var155 = var1
   local var168 = arg1.localization
   local var169 = arg1.analytics
   local var170 = arg1.pluginController
   local var171 = arg1.explorerController
   local var172 = arg1.networking
   local var173 = {}
   local var177 = {}
   var177.Id = "AssetManager"
   var177.Enabled = arg1.state.enabled
   var177.Title = arg1.localization:getText("Plugin", "Name")
   var177.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var177.InitialDockState = Enum.InitialDockState.Bottom
   var177.Size = Vector2.new(640, 480)
   var177.MinSize = Vector2.new(250, 200)
   var177.OnClose = arg1.onClose
   var177.Widget = var0.PluginLoaderContext.mainDockWidget
   var177.OnWidgetCreated = arg1.onDockWidgetCreated
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var202 = {}
   var1.Tag = "X-Fill X-Column"
   local var210 = {}
   var210.App = var1.createElement(var16)
   var202.Wrapper = var1.createElement(var6, {}, var210)
   local var219 = {}
   var219.StyleSheet = arg1.design
   var202.StyleLink = var1.createElement("StyleLink", var219)
   var173.MainWidget = var1.createElement(var5, var177, var202)
   return var7.provide({ var155.new(var155), var10.new(arg1.store), var9.new(var1:getMouse()), arg1.DEPRECATED_stylizer }, var173)
end

return var20
