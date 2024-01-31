-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Util.SettingsHelper)
local var3 = require(var0.Src.Util.Operations.FlattenOperation)
local var4 = require(var0.Src.Types)
local var5 = var4.BrushSettings
local var6 = var4.Category
local var7 = var4.Gizmo
local var323 = {}
var5.BrushShape = var4.BrushShape.Sphere
local var328 = {}
var328.Height = 6
var328.Locked = true
var328.Size = 6
var5.BrushSize = var328
var5.Strength = 1
var5.FixedYPlane = 0
var5.FlattenMode = var4.FlattenMode.Both
var5.FlattenPlane = var4.FlattenPlane.Auto
var5.PivotPosition = var4.PivotPosition.Center
var5.Snapping = var4.Snapping.Off
local var345 = {}
var345.Position = Vector3.new(0, 0, 0)
var5.State = var345
var5.IgnoreWater = false
var5.IgnoreParts = true
var5.PullTerrain = true
var5.WaterAutofill = false
var323.Defaults = {}
var323.Id = var6.BrushSettings
var323.Schema = require(var0.Src.Schemas.Settings.Brush)
local var361 = {}
var361.Id = var7.Plane
local var363 = {}
var363.Type = var7.Plane
var361.Schema = var363
local var365 = {}
var365.Id = var7.Brush
local var367 = {}
var367.Type = var7.Brush
var365.Schema = var367
local var12 = var1:new(var4.Tool.Flatten, var4.Tab.Edit, {}, {})
function var12.init(arg1, arg2, arg3)
   local var378 = var1
   var378 = arg1
   var378.init(var378, arg2, arg3)
   local var388 = {}
   var388.Hidden = true
   var5.PlaneLock = var388
   local var2 = {}
   var2.Hidden = true
   var5.ManualPlaneLock = var2
   var6.BrushSettings = {}
   arg1._overrides = {}
end

function var12.saveForm(arg1, arg2)
   local var396 = var1
   var396 = arg1
   var396.saveForm(var396, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var12.saveGizmos(arg1, arg2)
   local var406 = var1
   var406 = arg1
   var406.saveGizmos(var406, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var12.activate(arg1)
   local var415 = var1
   var415 = arg1
   var415.activate(var415)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var425 = var1
      var425 = arg1
      var425.init(var425, arg2, arg3)
      local var435 = {}
      var435.Hidden = true
      var5.PlaneLock = var435
      local var2 = {}
      var2.Hidden = true
      var5.ManualPlaneLock = var2
      var6.BrushSettings = {}
      arg1._overrides = {}
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var446 = var1
      var446 = arg1
      var446.saveForm(var446, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var12.deactivate(arg1)
   local var457 = var1
   var457 = arg1
   var457.deactivate(var457)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var12
