-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Schemas.Settings.Brush)
local var3 = require(var0.Src.Util.SettingsHelper)
local var4 = require(var0.Src.Util.Operations.FlattenOperation)
local var5 = require(var0.Src.Types)
local var6 = var5.BrushSettings
local var7 = var5.Categories
local var8 = var5.Gizmo
local var275 = {}
var6.BrushShape = var5.BrushShape.Sphere
var6.BaseSize = 6
var6.BaseHeight = 6
var6.Strength = 1
var6.FlattenMode = var5.FlattenMode.Both
var6.PivotPosition = var5.PivotPosition.Center
var6.Snapping = var5.Snapping.Off
local var292 = {}
var292.Position = Vector3.new(0, 0, 0)
var6.State = var292
var6.IgnoreWater = false
var6.IgnoreParts = true
var6.PullTerrain = true
var6.WaterAutofill = false
var275.Defaults = {}
var275.Id = var7.BrushSettings
var275.Schema = var2
local var308 = {}
var308.Id = var8.Plane
local var310 = {}
var310.Type = var8.Plane
var308.Schema = var310
local var312 = {}
var312.Id = var8.Brush
local var314 = {}
var314.Type = var8.Brush
var312.Schema = var314
local var13 = var1:new(var5.Tools.Flatten, var5.ToolCategories.Edit, {}, {})
function var13.init(arg1, arg2, arg3)
   local var325 = var1
   var325 = arg1
   var325.init(var325, arg2, arg3)
   local var1 = {}
   local var2 = {}
   function var2.OnReset()
      var6.PlaneTransform = CFrame.Angles(1.5707963267949, 0, 0)
      var3.Set(var7.BrushSettings, var2.Storage, arg1._pluginController, {})
      arg1.OnFormChanged:Fire()
      arg1.OnGizmoChanged:Fire()
   end
   
   var1.Schema = var2
   var6.ManualPlaneLock = var1
   var7.BrushSettings = {}
   arg1._overrides = {}
end

function var13.saveForm(arg1, arg2)
   local var361 = var1
   var361 = arg1
   var361.saveForm(var361, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.saveGizmos(arg1, arg2)
   local var371 = var1
   var371 = arg1
   var371.saveGizmos(var371, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.activate(arg1)
   local var380 = var1
   var380 = arg1
   var380.activate(var380)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function()
      var6.PlaneTransform = CFrame.Angles(1.5707963267949, 0, 0)
      var3.Set(var7.BrushSettings, var2.Storage, arg1._pluginController, {})
      arg1.OnFormChanged:Fire()
      arg1.OnGizmoChanged:Fire()
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2, arg3)
      local var415 = var1
      var415 = arg1
      var415.init(var415, arg2, arg3)
      local var1 = {}
      local var2 = {}
      function var2.OnReset()
         var6.PlaneTransform = CFrame.Angles(1.5707963267949, 0, 0)
         var3.Set(var7.BrushSettings, var2.Storage, arg1._pluginController, {})
         arg1.OnFormChanged:Fire()
         arg1.OnGizmoChanged:Fire()
      end
      
      var1.Schema = var2
      var6.ManualPlaneLock = var1
      var7.BrushSettings = {}
      arg1._overrides = {}
   end)
end

function var13.deactivate(arg1)
   local var452 = var1
   var452 = arg1
   var452.deactivate(var452)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var13
