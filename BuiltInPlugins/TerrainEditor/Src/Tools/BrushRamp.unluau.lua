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
local var40 = {}
var6.BrushShape = var5.BrushShape.Sphere
var6.BaseSize = 6
var6.BaseHeight = 6
var6.Strength = 1
var6.FlattenMode = var5.FlattenMode.Both
var6.PivotPosition = var5.PivotPosition.Center
var6.Snapping = var5.Snapping.Off
local var57 = {}
var57.Position = Vector3.new(0, 0, 0)
var6.State = var57
var6.IgnoreWater = false
var6.IgnoreParts = true
var6.PullTerrain = false
var6.WaterAutofill = false
var40.Defaults = {}
var40.Id = var7.BrushSettings
var40.Schema = var2
local var73 = {}
var73.Id = var8.Plane
local var75 = {}
var75.Type = var8.Plane
var73.Schema = var75
local var77 = {}
var77.Id = var8.Brush
local var79 = {}
var79.Type = var8.Brush
var77.Schema = var79
local var13 = var1:new(var5.Tools.Ramp, var5.ToolCategories.Edit, {}, {})
function var13.init(arg1, arg2, arg3)
   local var90 = var1
   var90 = arg1
   var90.init(var90, arg2, arg3)
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
   local var126 = var1
   var126 = arg1
   var126.saveForm(var126, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.saveGizmos(arg1, arg2)
   local var136 = var1
   var136 = arg1
   var136.saveGizmos(var136, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.activate(arg1)
   local var145 = var1
   var145 = arg1
   var145.activate(var145)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function()
      var6.PlaneTransform = CFrame.Angles(1.5707963267949, 0, 0)
      var3.Set(var7.BrushSettings, var2.Storage, arg1._pluginController, {})
      arg1.OnFormChanged:Fire()
      arg1.OnGizmoChanged:Fire()
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2, arg3)
      local var180 = var1
      var180 = arg1
      var180.init(var180, arg2, arg3)
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
   local var217 = var1
   var217 = arg1
   var217.deactivate(var217)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var13
