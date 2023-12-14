-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Types)
local var3 = var2.BrushSettings
local var4 = var2.Gizmo
local var5 = require(var0.Src.Util.Operations.SmoothOperation)
local var161 = {}
var3.BrushShape = var2.BrushShape.Sphere
var3.BaseSize = 6
var3.BaseHeight = 6
var3.Strength = 1
var3.PivotPosition = var2.PivotPosition.Center
var3.Snapping = var2.Snapping.Off
local var176 = {}
var176.Position = Vector3.new(0, 0, 0)
var3.State = var176
var3.IgnoreWater = false
var3.IgnoreParts = true
var161.Defaults = {}
var161.Id = var2.Categories.BrushSettings
var161.Schema = require(var0.Src.Schemas.Settings.Brush)
local var188 = {}
var188.Id = var4.Brush
local var190 = {}
var190.Type = var4.Brush
var188.Schema = var190
local var192 = {}
var192.Id = var4.Plane
local var194 = {}
var194.Type = var4.Plane
var192.Schema = var194
local var10 = var1:new(var2.Tools.Smooth, var2.ToolCategories.Edit, {}, {})
function var10.saveForm(arg1, arg2)
   local var204 = var1
   var204 = arg1
   var204.saveForm(var204, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var10.saveGizmos(arg1, arg2)
   local var214 = var1
   var214 = arg1
   var214.saveGizmos(var214, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var10.activate(arg1)
   local var223 = var1
   var223 = arg1
   var223.activate(var223)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2)
      local var232 = var1
      var232 = arg1
      var232.saveForm(var232, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var245 = var1
      var245 = arg1
      var245.saveGizmos(var245, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var10.deactivate(arg1)
   local var256 = var1
   var256 = arg1
   var256.deactivate(var256)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var10
