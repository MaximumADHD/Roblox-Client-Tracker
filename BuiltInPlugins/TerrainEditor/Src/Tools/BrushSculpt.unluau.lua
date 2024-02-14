-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Util.Operations.SculptOperation)
local var4 = require(var0.Src.Types)
local var5 = var4.BrushSettings
local var6 = var4.Category
local var7 = var4.Gizmo
local var8 = var4.MaterialSettings
local var44 = {}
var5.BrushMode = var4.BrushMode.Add
var5.BrushShape = var4.BrushShape.Sphere
local var51 = {}
var51.Height = 6
var51.Locked = true
var51.Size = 6
var5.BrushSize = var51
var5.Strength = 1
local var58 = {}
var58.Position = Vector3.new(0, 0, 0)
var5.State = var58
var5.IgnoreWater = false
var5.IgnoreParts = true
var5.TemporarySmooth = false
var5.WaterAutofill = false
var44.Defaults = {}
var44.Id = var6.BrushSettings
var44.Schema = require(var0.Src.Schemas.Settings.Brush)
local var73 = {}
var8.AutoMaterial = false
var8.SourceMaterial = Enum.Material.Grass
var73.Defaults = {}
var73.Id = var6.MaterialSettings
var73.Schema = require(var0.Src.Schemas.Settings.Material)
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
local var14 = var2:new(var4.Tool.Sculpt, var4.Tab.Edit, {}, {})
function var14.saveForm(arg1, arg2)
   local var97 = var2
   var97 = arg1
   var97.saveForm(var97, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var14.saveGizmos(arg1, arg2)
   local var107 = var2
   var107 = arg1
   var107.saveGizmos(var107, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var14.startOperation(arg1, arg2)
   arg1._operation = var3("Sculpt", arg1._services)
   local var124 = {}
   local var126 = arg1:getPayload()
   var124.Payload = var126
   var126 = arg2
   local var0 = var1.join(var124, var126)
   arg1._operation:start()
end

function var14.activate(arg1)
   local var130 = var2
   var130 = arg1
   var130.activate(var130)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2)
      local var139 = var2
      var139 = arg1
      var139.saveForm(var139, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var152 = var2
      var152 = arg1
      var152.saveGizmos(var152, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var14.deactivate(arg1)
   local var163 = var2
   var163 = arg1
   var163.deactivate(var163)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var14
