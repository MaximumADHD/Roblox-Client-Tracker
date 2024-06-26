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
   local var71 = {}
   var71.enabled = false
   var71.instanceId = 65535
   var71.instanceName = ""
   var71.initialCurveData = {}
   var71.currentCurveData = {}
   var71.closeDMConnection = nil
   var71.forceRerender = false
   arg1.state = var71
   function arg1.setDisabled()
      if arg1.state.closeDMConnection then
         arg1.state.closeDMConnection:Disconnect()
      end
      arg2.Plugin:Invoke("OnStopEditing")
      local var91 = {}
      var91.enabled = false
      var91.initialCurveData = {}
      var91.currentCurveData = {}
      var91.instanceId = 65535
      var91.instanceName = ""
      var91.closeDMConnection = nil
      arg1:setState(var91)
   end
   
   function arg1.onChanged(arg1)
      local var102 = "OnEdit"
      local var103 = var13
      var103 = arg1
      local var0 = var103.stringifyCurveTable(var103)
      arg2.Plugin:Invoke()
      local var108 = {}
      var108.currentCurveData = arg1
      arg1:setState(var108)
   end
   
   function arg1.onWidgetEnabledChanged(arg1)
      arg1.setDisabled()
      local var114 = {}
      var114.forceRerender = arg1.state.forceRerender
      arg1:setState(var114)
   end
   
   arg2.Plugin:OnInvoke("OnOpen", function()
      arg2.setDisabled()
   end)
   local var132 = var2.thunkMiddleware
   arg1.store = var2.Store.new(var12, nil, {}, nil)
   local var138 = {}
   var138.stringResourceTable = var16
   var138.translationResourceTable = var17
   var138.pluginName = "AttenuationCurveEditor"
   arg1.localization = var7.Localization.new(var138)
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
   local var168 = {}
   var168.CurveData = var1.initialCurveData
   var168.Enabled = var3
   var168.OnChanged = arg1.onChanged
   var168.OnSave = arg1.setDisabled
   "AttenuationCurveEditor_" ... var1.instanceId = var1.createElement(var18, var168)
   local var176 = var8
   var176 = var2
   local var178 = var176.new(var176)
   local var182 = var10.new(arg1.store)
   local var187 = var9.new(var2:getMouse())
   local var188 = arg1.localization
   local var189 = arg1.analytics
   local var190 = {}
   local var194 = {}
   var194.Id = "AttenuationCurveEditor"
   var194.Enabled = var3
   var194.Title = arg1.localization:getText("Plugin", "Name") ... " - " ... var1.instanceName
   var194.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   var194.InitialDockState = Enum.InitialDockState.Float
   var194.Size = Vector2.new(640, 480)
   var194.MinSize = Vector2.new(540, 300)
   var194.OnClose = arg1.setDisabled
   var194.Widget = var0.PluginLoaderContext.mainDockWidget
   var194.OnWidgetCreated = arg1.onDockWidgetCreated
   var194.ShouldRestore = false
   var1.Change.Enabled = arg1.onWidgetEnabledChanged
   local var224 = {}
   local var230 = var1.Tag
   var1.Tag = "X-Fill X-Column"
   var230 = {}
   var224.Wrapper = var1.createElement(var6, {}, var230)
   local var236 = {}
   var236.StyleSheet = arg1.design
   var224.StyleLink = var1.createElement("StyleLink", var236)
   var190.MainWidget = var1.createElement(var5, var194, var224)
   return var7.provide({}, var190)
end

return var19
