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
local var387 = {}
var7.BrushShape = var6.BrushShape.Sphere
local var392 = {}
var392.Height = 6
var392.Locked = true
var392.Size = 6
var7.BrushSize = var392
var7.Strength = 1
var7.FixedYPlane = 0
var7.FlattenMode = var6.FlattenMode.Both
var7.FlattenPlane = var6.FlattenPlane.Auto
var7.PivotPosition = var6.PivotPosition.Center
var7.Snapping = var6.Snapping.Off
local var409 = {}
var409.Position = Vector3.new(0, 0, 0)
var7.State = var409
var7.IgnoreWater = false
var7.IgnoreParts = true
var7.PullTerrain = true
var7.WaterAutofill = false
var387.Defaults = {}
var387.Id = var8.BrushSettings
local var425 = {}
var425.Id = var9.Plane
local var427 = {}
var427.Type = var9.Plane
var425.Schema = var427
local var429 = {}
var429.Id = var9.Brush
local var431 = {}
var431.Type = var9.Brush
var429.Schema = var431
local var15 = var2:new(var10.Flatten, var6.Tab.Edit, {}, {})
function var15.init(arg1, arg2, arg3)
   local var442 = var2
   var442 = arg1
   var442.init(var442, arg2, arg3)
   local var452 = {}
   var452.Hidden = true
   var7.PlaneLock = var452
   local var2 = {}
   var2.Hidden = true
   var7.ManualPlaneLock = var2
   var8.BrushSettings = {}
   arg1._overrides = {}
   arg1._brushUsages = 0
   arg1._brushTime = 0
end

function var15.saveForm(arg1, arg2)
   local var462 = var2
   var462 = arg1
   var462.saveForm(var462, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.saveGizmos(arg1, arg2)
   local var472 = var2
   var472 = arg1
   var472.saveGizmos(var472, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.startOperation(arg1, arg2)
   arg1._operation = var5("Flatten", arg1._services)
   local var489 = {}
   local var491 = arg1:getPayload()
   var489.Payload = var491
   var491 = arg2
   local var0 = var1.join(var489, var491)
   arg1._operation:start()
end

function var15.activate(arg1)
   local var495 = var2
   var495 = arg1
   var495.activate(var495)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var505 = var2
      var505 = arg1
      var505.init(var505, arg2, arg3)
      local var515 = {}
      var515.Hidden = true
      var7.PlaneLock = var515
      local var2 = {}
      var2.Hidden = true
      var7.ManualPlaneLock = var2
      var8.BrushSettings = {}
      arg1._overrides = {}
      arg1._brushUsages = 0
      arg1._brushTime = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var528 = var2
      var528 = arg1
      var528.saveForm(var528, arg2)
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
   local var572 = var2
   var572 = arg1
   var572.deactivate(var572)
end

function var15.reportAnalytics(arg1)
   if arg1._brushTime then
      if 0 < arg1._brushTime then
         local var581 = "BrushProperties"
         local var582 = var4
         var582 = arg1:getPayload()
         local var587 = var582.getBrushPayload(var582, arg1._brushTime, var10.Flatten)
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
   arg1._brushStatistic = 0
   arg1._brushUsages = 0
   arg1._brushTime = 0
end

return var15
