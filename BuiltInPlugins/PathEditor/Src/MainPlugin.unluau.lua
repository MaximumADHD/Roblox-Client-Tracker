-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.ReactRoblox)
local var4 = require(var0.Packages.Rodux)
local var5 = require(var0.Packages.Dash)
local var6 = game:GetService("CoreGui")
local var7 = game:GetService("RbxAnalyticsService")
local var8 = game:GetService("RunService")
local var9 = require(var0.Packages.Framework).ContextServices
local var10 = var9.Plugin
local var11 = var9.Mouse
local var12 = var9.Store
local var13 = require(var0.Src.Reducers.MainReducer)
local var14 = require(var0.Src.Resources.MakeTheme)
local var15 = var0.Src.Resources.Localization.SourceStrings
local var16 = var0.Src.Resources.Localization.LocalizedStrings
local var17 = var0.Src.Util
local var18 = require(var17.MakePluginActions)
local var19 = require(var17.TelemetryGlobals)
local var20 = require(var17.Telemetry.Path2dToolUsage)
local var21 = require(var17.Telemetry.TelemetryProtocol)
local var22 = require(var17.Telemetry.TelemetryProtocolTypes)
local var23 = var0.Src.Components
local var24 = require(var23.ControlPointEditGui)
local var25 = require(var23.SelectionListener)
local var26 = require(var23.PathToolbar)
local var27 = require(var23.MoveBaseGui)
local var28 = require(var23.VisualizationGui)
local var29 = require(var23.AddPointComponent)
local var30 = var2.PureComponent:extend("MainPlugin")
function var30.init(arg1, arg2)
   arg1.state = {}
   local var194 = var4.thunkMiddleware
   arg1.store = var4.Store.new(var13, nil, {}, nil)
   local var200 = {}
   var200.stringResourceTable = var15
   var200.translationResourceTable = var16
   var200.pluginName = "PathEditor"
   arg1.localization = var9.Localization.new(var200)
   function arg1.log(arg1, arg2)
      local var0 = arg1
      local var1 = nil
      local var213 = {}
      var213.placeId = game.PlaceId
      local var218 = var7:GetSessionId()
      var213.studioSid = var218
      var218 = arg2
      local var2 = var5.join(var213, var218)
      arg1.telemetry:logRobloxTelemetryEvent()
   end
   
   function arg1.logUsageReport()
      if 0 < var19:totalCount() then
         local var228 = {}
         var228.selectModeCount = var19.selectModeCount
         var228.addPointModeCount = var19.addPointModeCount
         var228.addTangentModeCount = var19.addTangentModeCount
         arg1.log(var20, var228)
         var19:reset()
      end
   end
   
   arg1.telemetry = var21.new()
   arg1.analytics = var9.Analytics.new(function()
      return {}
   end, {})
   if game:GetFastFlag("PathEditorRBXTelemetry") then
      if not var8:IsClient() then
         game:BindToClose(function()
            arg1.logUsageReport()
         end)
      end
   end
   arg1.actions = var9.PluginActions.new(arg2.Plugin, var18(arg2.plugin, arg1.localization))
end

function var30.render(arg1)
   local var0 = arg1.props.Plugin
   local var272 = var10
   var272 = var0
   local var286 = arg1.localization
   local var287 = arg1.analytics
   local var288 = arg1.actions
   local var289 = {}
   local var292 = {}
   local var296 = {}
   var296.Name = "PathEditFolder"
   local var298 = {}
   var298.ControlPointEditGui = var2.createElement(var24)
   var298.PathToolbar = var2.createElement(var26)
   var298.MoveBaseGui = var2.createElement(var27)
   var298.VisualizationGui = var2.createElement(var28)
   var298.AddPointComponent = var2.createElement(var29)
   var292.PathEditFolder = var2.createElement("Folder", var296, var298)
   var289.Portal = var3.createPortal(var292, var6)
   var289.SelectionListener = var2.createElement(var25)
   return var9.provide({ var272.new(var272), var12.new(arg1.store), var11.new(var0:getMouse()), var14() }, var289)
end

return var30
