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
local var361 = {}
var7.BrushShape = var6.BrushShape.Sphere
local var366 = {}
var366.Height = 6
var366.Locked = true
var366.Size = 6
var7.BrushSize = var366
var7.Strength = 1
var7.FixedYPlane = 0
var7.FlattenMode = var6.FlattenMode.Both
var7.FlattenPlane = var6.FlattenPlane.Auto
var7.PivotPosition = var6.PivotPosition.Center
var7.Snapping = var6.Snapping.Off
local var383 = {}
var383.Position = Vector3.new(0, 0, 0)
var7.State = var383
var7.IgnoreWater = false
var7.IgnoreParts = true
var7.PullTerrain = true
var7.WaterAutofill = false
var361.Defaults = {}
var361.Id = var8.BrushSettings
local var399 = {}
var399.Id = var9.Plane
local var401 = {}
var401.Type = var9.Plane
var399.Schema = var401
local var403 = {}
var403.Id = var9.Brush
local var405 = {}
var405.Type = var9.Brush
var403.Schema = var405
local var15 = var2:new(var10.Flatten, var6.Tab.Edit, {}, {})
function var15.init(arg1, arg2, arg3)
   local var416 = var2
   var416 = arg1
   var416.init(var416, arg2, arg3)
   local var426 = {}
   var426.Hidden = true
   var7.PlaneLock = var426
   local var2 = {}
   var2.Hidden = true
   var7.ManualPlaneLock = var2
   var8.BrushSettings = {}
   arg1._overrides = {}
   arg1._brushUsages = 0
   arg1._brushTime = 0
end

function var15.saveForm(arg1, arg2)
   local var436 = var2
   var436 = arg1
   var436.saveForm(var436, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.saveGizmos(arg1, arg2)
   local var446 = var2
   var446 = arg1
   var446.saveGizmos(var446, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.startOperation(arg1, arg2)
   arg1._operation = var5("Flatten", arg1._services)
   local var463 = {}
   local var465 = arg1:getPayload()
   var463.Payload = var465
   var465 = arg2
   local var0 = var1.join(var463, var465)
   arg1._operation:start()
end

function var15.activate(arg1)
   local var469 = var2
   var469 = arg1
   var469.activate(var469)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var479 = var2
      var479 = arg1
      var479.init(var479, arg2, arg3)
      local var489 = {}
      var489.Hidden = true
      var7.PlaneLock = var489
      local var2 = {}
      var2.Hidden = true
      var7.ManualPlaneLock = var2
      var8.BrushSettings = {}
      arg1._overrides = {}
      arg1._brushUsages = 0
      arg1._brushTime = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var502 = var2
      var502 = arg1
      var502.saveForm(var502, arg2)
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
   local var546 = var2
   var546 = arg1
   var546.deactivate(var546)
end

function var15.reportAnalytics(arg1)
   if arg1._brushTime then
      if 0 < arg1._brushTime then
         local var555 = "BrushProperties"
         local var556 = var4
         var556 = arg1:getPayload()
         local var561 = var556.getBrushPayload(var556, arg1._brushTime, var10.Flatten)
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
