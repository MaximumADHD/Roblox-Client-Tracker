-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Types)
local var3 = var2.BrushSettings
local var4 = var2.Gizmo
local var5 = require(var0.Src.Util.Operations.SmoothOperation)
local var34 = {}
var3.BrushShape = var2.BrushShape.Sphere
local var39 = {}
var39.Height = 6
var39.Locked = true
var39.Size = 6
var3.BrushSize = var39
var3.Strength = 1
var3.PivotPosition = var2.PivotPosition.Center
var3.Snapping = var2.Snapping.Off
local var50 = {}
var50.Position = Vector3.new(0, 0, 0)
var3.State = var50
var3.IgnoreWater = false
var3.IgnoreParts = true
var34.Defaults = {}
var34.Id = var2.Categories.BrushSettings
var34.Schema = require(var0.Src.Schemas.Settings.Brush)
local var62 = {}
var62.Id = var4.Brush
local var64 = {}
var64.Type = var4.Brush
var62.Schema = var64
local var66 = {}
var66.Id = var4.Plane
local var68 = {}
var68.Type = var4.Plane
var66.Schema = var68
local var10 = var1:new(var2.Tools.Smooth, var2.ToolCategories.Edit, {}, {})
function var10.saveForm(arg1, arg2)
   local var78 = var1
   var78 = arg1
   var78.saveForm(var78, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var10.saveGizmos(arg1, arg2)
   local var88 = var1
   var88 = arg1
   var88.saveGizmos(var88, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var10.activate(arg1)
   local var97 = var1
   var97 = arg1
   var97.activate(var97)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2)
      local var106 = var1
      var106 = arg1
      var106.saveForm(var106, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var119 = var1
      var119 = arg1
      var119.saveGizmos(var119, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var10.deactivate(arg1)
   local var130 = var1
   var130 = arg1
   var130.deactivate(var130)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var10
