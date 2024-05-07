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
   local var61 = {}
   var61.enabled = false
   var61.instanceId = 65535
   var61.instanceName = ""
   var61.initialCurveData = {}
   var61.currentCurveData = {}
   var61.closeDMConnection = nil
   var61.forceRerender = false
   arg1.state = var61
   function arg1.setDisabled()
      if arg1.state.closeDMConnection then
         arg1.state.closeDMConnection:Disconnect()
      end
      arg2.Plugin:Invoke("OnStopEditing")
      local var81 = {}
      var81.enabled = false
      var81.initialCurveData = {}
      var81.currentCurveData = {}
      var81.instanceId = 65535
      var81.instanceName = ""
      var81.closeDMConnection = nil
      arg1:setState(var81)
   end
   
   function arg1.onChanged(arg1)
      local var92 = "OnEdit"
      local var93 = var13
      var93 = arg1
      local var0 = var93.stringifyCurveTable(var93)
      arg2.Plugin:Invoke()
      local var98 = {}
      var98.currentCurveData = arg1
      arg1:setState(var98)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      arg1.setDisabled()
      local var104 = {}
      var104.forceRerender = arg1.state.forceRerender
      arg1:setState(var104)
   end
   
   arg2.Plugin:OnInvoke("OnOpen", function()
      arg2.setDisabled()
   end)
   local var122 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var12, nil, {}, nil)
   local var128 = {}
   var128.stringResourceTable = var16
   var128.translationResourceTable = var17
   var128.pluginName = "AttenuationCurveEditor"
   arg1.localization = var7.Localization.new(var128)
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
   local var158 = {}
   var158.CurveData = var1.initialCurveData
   var158.Enabled = var3
   var158.OnChanged = arg1.onChanged
   var158.OnSave = arg1.setDisabled
   "AttenuationCurveEditor_" ... var1.instanceId = var1.createElement(var18, var158)
   local var166 = var8
   var166 = var2
   local var168 = var166.new(var166)
   local var172 = var10.new(arg1.store)
   local var177 = var9.new(var2:getMouse())
   local var178 = arg1.localization
   local var179 = arg1.analytics
   local var180 = {}
   local var184 = {}
   var184.Id = "AttenuationCurveEditor"
   var184.Enabled = var3
   var184.Title = arg1.localization:getText("Plugin", "Name") ... " - " ... var1.instanceName
   var184.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var184.InitialDockState = Enum.InitialDockState.Float
   var184.Size = Vector2.new(640, 480)
   var184.MinSize = Vector2.new(540, 300)
   var184.OnClose = arg1.setDisabled
   var184.Widget = var0.PluginLoaderContext.mainDockWidget
   var184.OnWidgetCreated = arg1.onDockWidgetCreated
   var184.ShouldRestore = false
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var214 = {}
   local var220 = var1.Tag
   var1.Tag = "X-Fill X-Column"
   var220 = {}
   var214.Wrapper = var1.createElement(var6, {}, var220)
   local var226 = {}
   var226.StyleSheet = arg1.design
   var214.StyleLink = var1.createElement("StyleLink", var226)
   var180.MainWidget = var1.createElement(var5, var184, var214)
   return var7.provide({}, var180)
end

return var19
