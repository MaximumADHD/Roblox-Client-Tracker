-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Util.Operations.FlattenOperation)
local var4 = require(var0.Src.Types)
local var5 = var4.BrushSettings
local var6 = var4.Category
local var7 = var4.Gizmo
local var340 = {}
var5.BrushShape = var4.BrushShape.Sphere
local var345 = {}
var345.Height = 6
var345.Locked = true
var345.Size = 6
var5.BrushSize = var345
var5.Strength = 1
var5.FixedYPlane = 0
var5.FlattenMode = var4.FlattenMode.Both
var5.FlattenPlane = var4.FlattenPlane.Auto
var5.PivotPosition = var4.PivotPosition.Center
var5.Snapping = var4.Snapping.Off
local var362 = {}
var362.Position = Vector3.new(0, 0, 0)
var5.State = var362
var5.IgnoreWater = false
var5.IgnoreParts = true
var5.PullTerrain = true
var5.WaterAutofill = false
var340.Defaults = {}
var340.Id = var6.BrushSettings
var340.Schema = require(var0.Src.Schemas.Settings.Brush)
local var378 = {}
var378.Id = var7.Plane
local var380 = {}
var380.Type = var7.Plane
var378.Schema = var380
local var382 = {}
var382.Id = var7.Brush
local var384 = {}
var384.Type = var7.Brush
var382.Schema = var384
local var12 = var2:new(var4.Tool.Flatten, var4.Tab.Edit, {}, {})
function var12.init(arg1, arg2, arg3)
   local var395 = var2
   var395 = arg1
   var395.init(var395, arg2, arg3)
   local var405 = {}
   var405.Hidden = true
   var5.PlaneLock = var405
   local var2 = {}
   var2.Hidden = true
   var5.ManualPlaneLock = var2
   var6.BrushSettings = {}
   arg1._overrides = {}
end

function var12.saveForm(arg1, arg2)
   local var413 = var2
   var413 = arg1
   var413.saveForm(var413, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var12.saveGizmos(arg1, arg2)
   local var423 = var2
   var423 = arg1
   var423.saveGizmos(var423, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var12.startOperation(arg1, arg2)
   arg1._operation = var3("Flatten", arg1._services)
   local var440 = {}
   local var442 = arg1:getPayload()
   var440.Payload = var442
   var442 = arg2
   local var0 = var1.join(var440, var442)
   arg1._operation:start()
end

function var12.activate(arg1)
   local var446 = var2
   var446 = arg1
   var446.activate(var446)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var456 = var2
      var456 = arg1
      var456.init(var456, arg2, arg3)
      local var466 = {}
      var466.Hidden = true
      var5.PlaneLock = var466
      local var2 = {}
      var2.Hidden = true
      var5.ManualPlaneLock = var2
      var6.BrushSettings = {}
      arg1._overrides = {}
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var477 = var2
      var477 = arg1
      var477.saveForm(var477, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var12.deactivate(arg1)
   local var488 = var2
   var488 = arg1
   var488.deactivate(var488)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var12
