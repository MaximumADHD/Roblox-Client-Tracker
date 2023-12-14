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
var4.BaseSize = 6
var4.BaseHeight = 6
var4.PivotPosition = var3.PivotPosition.Center
var4.Snapping = var3.Snapping.Off
local var55 = {}
var55.Position = Vector3.new(0, 0, 0)
var4.State = var55
var4.IgnoreWater = false
var4.IgnoreParts = true
var42.Defaults = {}
var42.Id = var5.BrushSettings
var42.Schema = require(var0.Src.Schemas.Settings.Brush)
local var66 = {}
var7.MaterialMode = var3.MaterialMode.Paint
var7.SourceMaterial = Enum.Material.Grass
var7.TargetMaterial = Enum.Material.Grass
var66.Defaults = {}
var66.Id = var5.MaterialSettings
var66.Schema = require(var0.Src.Schemas.Settings.Material)
local var76 = {}
var76.Id = var6.Brush
local var78 = {}
var78.Type = var6.Brush
var76.Schema = var78
local var80 = {}
var80.Id = var6.Plane
local var82 = {}
var82.Type = var6.Plane
var80.Schema = var82
local var13 = var1:new(var3.Tools.Paint, var3.ToolCategories.Edit, {}, {})
function var13.init(arg1, arg2, arg3)
   local var93 = var1
   var93 = arg1
   var93.init(var93, arg2, arg3)
   local var103 = {}
   local var104 = {}
   var104.AllowAir = true
   var103.Schema = var104
   var7.SourceMaterial = var103
   local var3 = {}
   local var4 = {}
   var4.AllowAir = true
   var3.Schema = var4
   var7.TargetMaterial = var3
   var5.TransformSettings = {}
   arg1._overrides = {}
end

function var13.saveForm(arg1, arg2)
   local var113 = var1
   var113 = arg1
   var113.saveForm(var113, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.saveGizmos(arg1, arg2)
   local var123 = var1
   var123 = arg1
   var123.saveGizmos(var123, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.activate(arg1)
   local var132 = var1
   var132 = arg1
   var132.activate(var132)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var142 = var1
      var142 = arg1
      var142.init(var142, arg2, arg3)
      local var152 = {}
      local var153 = {}
      var153.AllowAir = true
      var152.Schema = var153
      var7.SourceMaterial = var152
      local var3 = {}
      local var4 = {}
      var4.AllowAir = true
      var3.Schema = var4
      var7.TargetMaterial = var3
      var5.TransformSettings = {}
      arg1._overrides = {}
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var165 = var1
      var165 = arg1
      var165.saveForm(var165, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var13.deactivate(arg1)
   local var176 = var1
   var176 = arg1
   var176.deactivate(var176)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var13
