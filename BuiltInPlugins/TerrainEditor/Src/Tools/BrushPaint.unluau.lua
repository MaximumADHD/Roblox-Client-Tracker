-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Util.Operations.PaintOperation)
local var4 = require(var0.Src.Types)
local var5 = var4.BrushSettings
local var6 = var4.Category
local var7 = var4.Gizmo
local var8 = var4.MaterialSettings
local var46 = {}
var5.BrushShape = var4.BrushShape.Sphere
local var51 = {}
var51.Height = 6
var51.Locked = true
var51.Size = 6
var5.BrushSize = var51
var5.PivotPosition = var4.PivotPosition.Center
var5.Snapping = var4.Snapping.Off
local var60 = {}
var60.Position = Vector3.new(0, 0, 0)
var5.State = var60
var5.IgnoreWater = false
var5.IgnoreParts = true
var46.Defaults = {}
var46.Id = var6.BrushSettings
var46.Schema = require(var0.Src.Schemas.Settings.Brush)
local var71 = {}
var8.MaterialMode = var4.MaterialMode.Paint
var8.SourceMaterial = Enum.Material.Grass
var8.TargetMaterial = Enum.Material.Grass
var71.Defaults = {}
var71.Id = var6.MaterialSettings
var71.Schema = require(var0.Src.Schemas.Settings.Material)
local var81 = {}
var81.Id = var7.Brush
local var83 = {}
var83.Type = var7.Brush
var81.Schema = var83
local var85 = {}
var85.Id = var7.Plane
local var87 = {}
var87.Type = var7.Plane
var85.Schema = var87
local var14 = var2:new(var4.Tool.Paint, var4.Tab.Edit, {}, {})
function var14.init(arg1, arg2, arg3)
   local var98 = var2
   var98 = arg1
   var98.init(var98, arg2, arg3)
   local var108 = {}
   local var109 = {}
   var109.AllowAir = true
   var108.Schema = var109
   var8.SourceMaterial = var108
   local var3 = {}
   local var4 = {}
   var4.AllowAir = true
   var3.Schema = var4
   var8.TargetMaterial = var3
   var6.TransformSettings = {}
   arg1._overrides = {}
end

function var14.saveForm(arg1, arg2)
   local var118 = var2
   var118 = arg1
   var118.saveForm(var118, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var14.saveGizmos(arg1, arg2)
   local var128 = var2
   var128 = arg1
   var128.saveGizmos(var128, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var14.startOperation(arg1, arg2)
   arg1._operation = var3("Paint", arg1._services)
   local var145 = {}
   local var147 = arg1:getPayload()
   var145.Payload = var147
   var147 = arg2
   local var0 = var1.join(var145, var147)
   arg1._operation:start()
end

function var14.activate(arg1)
   local var151 = var2
   var151 = arg1
   var151.activate(var151)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var161 = var2
      var161 = arg1
      var161.init(var161, arg2, arg3)
      local var171 = {}
      local var172 = {}
      var172.AllowAir = true
      var171.Schema = var172
      var8.SourceMaterial = var171
      local var3 = {}
      local var4 = {}
      var4.AllowAir = true
      var3.Schema = var4
      var8.TargetMaterial = var3
      var6.TransformSettings = {}
      arg1._overrides = {}
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var184 = var2
      var184 = arg1
      var184.saveForm(var184, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var14.deactivate(arg1)
   local var195 = var2
   var195 = arg1
   var195.deactivate(var195)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var14
