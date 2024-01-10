-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Util.SettingsHelper)
local var3 = require(var0.Src.Util.Operations.FlattenOperation)
local var4 = require(var0.Src.Types)
local var5 = var4.BrushSettings
local var6 = var4.Categories
local var7 = var4.Gizmo
local var283 = {}
var5.BrushShape = var4.BrushShape.Sphere
local var288 = {}
var288.Height = 6
var288.Locked = true
var288.Size = 6
var5.BrushSize = var288
var5.Strength = 1
var5.FixedPlane = 0
var5.FlattenMode = var4.FlattenMode.Both
var5.FlattenPlane = var4.FlattenPlane.Auto
var5.PivotPosition = var4.PivotPosition.Center
var5.Snapping = var4.Snapping.Off
local var305 = {}
var305.Position = Vector3.new(0, 0, 0)
var5.State = var305
var5.IgnoreWater = false
var5.IgnoreParts = true
var5.PullTerrain = true
var5.WaterAutofill = false
var283.Defaults = {}
var283.Id = var6.BrushSettings
var283.Schema = require(var0.Src.Schemas.Settings.Brush)
local var321 = {}
var321.Id = var7.Plane
local var323 = {}
var323.Type = var7.Plane
var321.Schema = var323
local var325 = {}
var325.Id = var7.Brush
local var327 = {}
var327.Type = var7.Brush
var325.Schema = var327
local var12 = var1:new(var4.Tools.Flatten, var4.ToolCategories.Edit, {}, {})
function var12.init(arg1, arg2, arg3)
   local var338 = var1
   var338 = arg1
   var338.init(var338, arg2, arg3)
   local var348 = {}
   var348.Hidden = true
   var5.PlaneLock = var348
   local var2 = {}
   var2.Hidden = true
   var5.ManualPlaneLock = var2
   var6.BrushSettings = {}
   arg1._overrides = {}
end

function var12.saveForm(arg1, arg2)
   local var356 = var1
   var356 = arg1
   var356.saveForm(var356, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var12.saveGizmos(arg1, arg2)
   local var366 = var1
   var366 = arg1
   var366.saveGizmos(var366, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var12.activate(arg1)
   local var375 = var1
   var375 = arg1
   var375.activate(var375)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var385 = var1
      var385 = arg1
      var385.init(var385, arg2, arg3)
      local var395 = {}
      var395.Hidden = true
      var5.PlaneLock = var395
      local var2 = {}
      var2.Hidden = true
      var5.ManualPlaneLock = var2
      var6.BrushSettings = {}
      arg1._overrides = {}
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var406 = var1
      var406 = arg1
      var406.saveForm(var406, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var12.deactivate(arg1)
   local var417 = var1
   var417 = arg1
   var417.deactivate(var417)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var12
