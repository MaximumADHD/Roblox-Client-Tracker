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
local var392 = {}
var7.BrushShape = var6.BrushShape.Sphere
local var397 = {}
var397.Height = 6
var397.Locked = true
var397.Size = 6
var7.BrushSize = var397
var7.Strength = 1
var7.FixedYPlane = 0
var7.FlattenMode = var6.FlattenMode.Both
var7.FlattenPlane = var6.FlattenPlane.Auto
var7.PivotPosition = var6.PivotPosition.Center
var7.Snapping = var6.Snapping.Off
local var414 = {}
var414.Position = Vector3.new(0, 0, 0)
var7.State = var414
var7.IgnoreWater = false
var7.IgnoreParts = true
var7.PullTerrain = true
var7.WaterAutofill = false
var392.Defaults = {}
var392.Id = var8.BrushSettings
local var430 = {}
var430.Id = var9.Plane
local var432 = {}
var432.Type = var9.Plane
var430.Schema = var432
local var434 = {}
var434.Id = var9.Brush
local var436 = {}
var436.Type = var9.Brush
var434.Schema = var436
local var15 = var2:new(var10.Flatten, var6.Tab.Edit, {}, {})
function var15.init(arg1, arg2, arg3)
   local var447 = var2
   var447 = arg1
   var447.init(var447, arg2, arg3)
   local var457 = {}
   var457.Hidden = true
   var7.PlaneLock = var457
   local var2 = {}
   var2.Hidden = true
   var7.ManualPlaneLock = var2
   var8.BrushSettings = {}
   arg1._overrides = {}
   arg1._brushUsages = 0
   arg1._brushTime = 0
end

function var15.saveForm(arg1, arg2)
   local var467 = var2
   var467 = arg1
   var467.saveForm(var467, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.saveGizmos(arg1, arg2)
   local var477 = var2
   var477 = arg1
   var477.saveGizmos(var477, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.startOperation(arg1, arg2)
   arg1._operation = var5("Flatten", arg1._services)
   local var494 = {}
   local var496 = arg1:getPayload()
   var494.Payload = var496
   var496 = arg2
   local var0 = var1.join(var494, var496)
   arg1._operation:start()
end

function var15.activate(arg1)
   local var500 = var2
   var500 = arg1
   var500.activate(var500)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var510 = var2
      var510 = arg1
      var510.init(var510, arg2, arg3)
      local var520 = {}
      var520.Hidden = true
      var7.PlaneLock = var520
      local var2 = {}
      var2.Hidden = true
      var7.ManualPlaneLock = var2
      var8.BrushSettings = {}
      arg1._overrides = {}
      arg1._brushUsages = 0
      arg1._brushTime = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var533 = var2
      var533 = arg1
      var533.saveForm(var533, arg2)
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
   local var577 = var2
   var577 = arg1
   var577.deactivate(var577)
end

function var15.reportAnalytics(arg1)
   if arg1._brushTime then
      if 0 < arg1._brushTime then
         local var586 = "BrushProperties"
         local var587 = var4
         var587 = arg1:getPayload()
         local var592 = var587.getBrushPayload(var587, arg1._brushTime, var10.Flatten)
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
