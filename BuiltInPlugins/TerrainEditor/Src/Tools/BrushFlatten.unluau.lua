-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Flags.getFFlagTerrainEditorTimeStatistic)
local var4 = require(var0.Src.Util.AnalyticsHelper)
local var5 = require(var0.Src.Util.Operations.FlattenOperation)
local var6 = require(var0.Src.Types)
local var7 = var6.BrushSettings
local var8 = var6.Category
local var9 = var6.Gizmo
local var10 = var6.Tool
local var356 = {}
var7.BrushShape = var6.BrushShape.Sphere
local var361 = {}
var361.Height = 6
var361.Locked = true
var361.Size = 6
var7.BrushSize = var361
var7.Strength = 1
var7.FixedYPlane = 0
var7.FlattenMode = var6.FlattenMode.Both
var7.FlattenPlane = var6.FlattenPlane.Auto
var7.PivotPosition = var6.PivotPosition.Center
var7.Snapping = var6.Snapping.Off
local var378 = {}
var378.Position = Vector3.new(0, 0, 0)
var7.State = var378
var7.IgnoreWater = false
var7.IgnoreParts = true
var7.PullTerrain = true
var7.WaterAutofill = false
var356.Defaults = {}
var356.Id = var8.BrushSettings
local var394 = {}
var394.Id = var9.Plane
local var396 = {}
var396.Type = var9.Plane
var394.Schema = var396
local var398 = {}
var398.Id = var9.Brush
local var400 = {}
var400.Type = var9.Brush
var398.Schema = var400
local var15 = var2:new(var10.Flatten, var6.Tab.Edit, {}, {})
function var15.init(arg1, arg2, arg3)
   local var411 = var2
   var411 = arg1
   var411.init(var411, arg2, arg3)
   local var421 = {}
   var421.Hidden = true
   var7.PlaneLock = var421
   local var2 = {}
   var2.Hidden = true
   var7.ManualPlaneLock = var2
   var8.BrushSettings = {}
   arg1._overrides = {}
   arg1._brushUsages = 0
   arg1._brushTime = 0
end

function var15.saveForm(arg1, arg2)
   local var431 = var2
   var431 = arg1
   var431.saveForm(var431, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.saveGizmos(arg1, arg2)
   local var441 = var2
   var441 = arg1
   var441.saveGizmos(var441, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.startOperation(arg1, arg2)
   arg1._operation = var5("Flatten", arg1._services)
   local var458 = {}
   local var460 = arg1:getPayload()
   var458.Payload = var460
   var460 = arg2
   local var0 = var1.join(var458, var460)
   arg1._operation:start()
end

function var15.activate(arg1)
   local var464 = var2
   var464 = arg1
   var464.activate(var464)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var474 = var2
      var474 = arg1
      var474.init(var474, arg2, arg3)
      local var484 = {}
      var484.Hidden = true
      var7.PlaneLock = var484
      local var2 = {}
      var2.Hidden = true
      var7.ManualPlaneLock = var2
      var8.BrushSettings = {}
      arg1._overrides = {}
      arg1._brushUsages = 0
      arg1._brushTime = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var497 = var2
      var497 = arg1
      var497.saveForm(var497, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._analytics:report("Activated", var10.Flatten)
end

function var15.deactivate(arg1)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._brushUsages = arg1._brushUsages + 1
         local var0 = arg1._operation:getCurrentTimeTaken()
         arg1._brushTime = arg1._brushTime + var0 / arg1._operation:getStepsTaken()
         local var1 = arg1._operation:getTimeStatistic()
         if var3() then
            if var1 then
               local var0 = arg1._brushStatistic
               arg1._brushStatistic = var0 + var1
            end
         end
         arg1._operation:destroy()
      end
   end
   local var541 = var2
   var541 = arg1
   var541.deactivate(var541)
end

function var15.reportAnalytics(arg1)
   if arg1._brushTime then
      if 0 < arg1._brushTime then
         local var550 = "BrushProperties"
         local var551 = var4
         var551 = arg1:getPayload()
         local var556 = var551.getBrushPayload(var551, arg1._brushTime, var10.Flatten)
         arg1._analytics:report()
         arg1._analytics:report("Usage", var10.Flatten, arg1._brushUsages)
         if var3() then
            if arg1._brushStatistic then
               if 0 < arg1._brushUsages then
                  arg1._analytics:report("Performance", var10.Flatten, arg1._brushStatistic / arg1._brushUsages)
               end
            end
         end
      end
   end
   arg1._brushUsages = 0
   arg1._brushTime = 0
end

return var15
