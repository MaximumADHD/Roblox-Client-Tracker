-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
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
local var11 = require(var0.Src.Types)
local var12 = require(var0.Src.Reducers.MainReducer)
local var13 = require(var0.Src.Util.SerializationUtil)
local var14 = var3.Style.Themes.StudioTheme
local var15 = var3.Styling.registerPluginStyles
local var16 = var0.Src.Resources.Localization.SourceStrings
local var17 = var0.Src.Resources.Localization.LocalizedStrings
local var18 = require(var0.Src.Components.AttenuationCurveRenderer)
local var19 = var1.PureComponent:extend("MainPlugin")
function var19.init(arg1, arg2)
   local var101 = {}
   var101.enabled = false
   var101.instanceId = 65535
   var101.instanceName = ""
   var101.initialCurveData = {}
   var101.currentCurveData = {}
   var101.closeDMConnection = nil
   var101.forceRerender = false
   arg1.state = var101
   function arg1.setDisabled()
      if arg1.state.closeDMConnection then
         arg1.state.closeDMConnection:Disconnect()
      end
      arg2.Plugin:Invoke("OnStopEditing")
      local var121 = {}
      var121.enabled = false
      var121.initialCurveData = {}
      var121.currentCurveData = {}
      var121.instanceId = 65535
      var121.instanceName = ""
      var121.closeDMConnection = nil
      arg1:setState(var121)
   end
   
   function arg1.onChanged(arg1)
      local var132 = "OnEdit"
      local var133 = var13
      var133 = arg1
      local var0 = var133.stringifyCurveTable(var133)
      arg2.Plugin:Invoke()
      local var138 = {}
      var138.currentCurveData = arg1
      arg1:setState(var138)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      arg1.setDisabled()
      local var144 = {}
      var144.forceRerender = arg1.state.forceRerender
      arg1:setState(var144)
   end
   
   arg2.Plugin:OnInvoke("OnOpen", function()
      arg2.setDisabled()
   end)
   local var162 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var12, nil, {}, nil)
   local var168 = {}
   var168.stringResourceTable = var16
   var168.translationResourceTable = var17
   var168.pluginName = "AttenuationCurveEditor"
   arg1.localization = var7.Localization.new(var168)
   arg1.analytics = var7.Analytics.new(function()
      return {}
   end, {})
   arg1.DEPRECATED_stylizer = var14.new()
   arg1.design = var15(arg2.Plugin)
end

function var19.didUpdate(arg1)
end

function var19.render(arg1)
   local var0 = arg1.props
   local var1 = arg1.state
   local var2 = var0.Plugin
   local var3 = var1.enabled
   local var198 = {}
   var198.CurveData = var1.initialCurveData
   var198.Enabled = var3
   var198.OnChanged = arg1.onChanged
   var198.OnSave = arg1.setDisabled
   "AttenuationCurveEditor_" ... var1.instanceId = var1.createElement(var18, var198)
   local var206 = var8
   var206 = var2
   local var208 = var206.new(var206)
   local var212 = var10.new(arg1.store)
   local var217 = var9.new(var2:getMouse())
   local var218 = arg1.localization
   local var219 = arg1.analytics
   local var220 = {}
   local var224 = {}
   var224.Id = "AttenuationCurveEditor"
   var224.Enabled = var3
   var224.Title = arg1.localization:getText("Plugin", "Name") ... " - " ... var1.instanceName
   var224.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var224.InitialDockState = Enum.InitialDockState.Float
   var224.Size = Vector2.new(640, 480)
   var224.MinSize = Vector2.new(540, 300)
   var224.OnClose = arg1.setDisabled
   var224.Widget = var0.PluginLoaderContext.mainDockWidget
   var224.OnWidgetCreated = arg1.onDockWidgetCreated
   var224.ShouldRestore = false
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var254 = {}
   local var260 = var1.Tag
   var1.Tag = "X-Fill X-Column"
   var260 = {}
   var254.Wrapper = var1.createElement(var6, {}, var260)
   local var266 = {}
   var266.StyleSheet = arg1.design
   var254.StyleLink = var1.createElement("StyleLink", var266)
   var220.MainWidget = var1.createElement(var5, var224, var254)
   return var7.provide({}, var220)
end

return var19
