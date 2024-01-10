-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Util.Operations.PaintOperation)
local var3 = require(var0.Src.Types)
local var4 = var3.BrushSettings
local var5 = var3.Categories
local var6 = var3.Gizmo
local var7 = var3.MaterialSettings
local var42 = {}
var4.BrushShape = var3.BrushShape.Sphere
local var47 = {}
var47.Height = 6
var47.Locked = true
var47.Size = 6
var4.BrushSize = var47
var4.PivotPosition = var3.PivotPosition.Center
var4.Snapping = var3.Snapping.Off
local var56 = {}
var56.Position = Vector3.new(0, 0, 0)
var4.State = var56
var4.IgnoreWater = false
var4.IgnoreParts = true
var42.Defaults = {}
var42.Id = var5.BrushSettings
var42.Schema = require(var0.Src.Schemas.Settings.Brush)
local var67 = {}
var7.MaterialMode = var3.MaterialMode.Paint
var7.SourceMaterial = Enum.Material.Grass
var7.TargetMaterial = Enum.Material.Grass
var67.Defaults = {}
var67.Id = var5.MaterialSettings
var67.Schema = require(var0.Src.Schemas.Settings.Material)
local var77 = {}
var77.Id = var6.Brush
local var79 = {}
var79.Type = var6.Brush
var77.Schema = var79
local var81 = {}
var81.Id = var6.Plane
local var83 = {}
var83.Type = var6.Plane
var81.Schema = var83
local var13 = var1:new(var3.Tools.Paint, var3.ToolCategories.Edit, {}, {})
function var13.init(arg1, arg2, arg3)
   local var94 = var1
   var94 = arg1
   var94.init(var94, arg2, arg3)
   local var104 = {}
   local var105 = {}
   var105.AllowAir = true
   var104.Schema = var105
   var7.SourceMaterial = var104
   local var3 = {}
   local var4 = {}
   var4.AllowAir = true
   var3.Schema = var4
   var7.TargetMaterial = var3
   var5.TransformSettings = {}
   arg1._overrides = {}
end

function var13.saveForm(arg1, arg2)
   local var114 = var1
   var114 = arg1
   var114.saveForm(var114, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.saveGizmos(arg1, arg2)
   local var124 = var1
   var124 = arg1
   var124.saveGizmos(var124, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.activate(arg1)
   local var133 = var1
   var133 = arg1
   var133.activate(var133)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var143 = var1
      var143 = arg1
      var143.init(var143, arg2, arg3)
      local var153 = {}
      local var154 = {}
      var154.AllowAir = true
      var153.Schema = var154
      var7.SourceMaterial = var153
      local var3 = {}
      local var4 = {}
      var4.AllowAir = true
      var3.Schema = var4
      var7.TargetMaterial = var3
      var5.TransformSettings = {}
      arg1._overrides = {}
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var166 = var1
      var166 = arg1
      var166.saveForm(var166, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var13.deactivate(arg1)
   local var177 = var1
   var177 = arg1
   var177.deactivate(var177)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var13
