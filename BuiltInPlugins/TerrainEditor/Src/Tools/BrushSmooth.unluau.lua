-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Types)
local var4 = var3.BrushSettings
local var5 = var3.Gizmo
local var6 = require(var0.Src.Util.Operations.SmoothOperation)
local var38 = {}
var4.BrushShape = var3.BrushShape.Sphere
local var43 = {}
var43.Height = 6
var43.Locked = true
var43.Size = 6
var4.BrushSize = var43
var4.Strength = 1
var4.PivotPosition = var3.PivotPosition.Center
var4.Snapping = var3.Snapping.Off
local var54 = {}
var54.Position = Vector3.new(0, 0, 0)
var4.State = var54
var4.IgnoreWater = false
var4.IgnoreParts = true
var38.Defaults = {}
var38.Id = var3.Category.BrushSettings
var38.Schema = require(var0.Src.Schemas.Settings.Brush)
local var66 = {}
var66.Id = var5.Brush
local var68 = {}
var68.Type = var5.Brush
var66.Schema = var68
local var70 = {}
var70.Id = var5.Plane
local var72 = {}
var72.Type = var5.Plane
var70.Schema = var72
local var11 = var2:new(var3.Tool.Smooth, var3.Tab.Edit, {}, {})
function var11.saveForm(arg1, arg2)
   local var82 = var2
   var82 = arg1
   var82.saveForm(var82, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var11.saveGizmos(arg1, arg2)
   local var92 = var2
   var92 = arg1
   var92.saveGizmos(var92, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var11.startOperation(arg1, arg2)
   arg1._operation = var6("Smooth", arg1._services)
   local var109 = {}
   local var111 = arg1:getPayload()
   var109.Payload = var111
   var111 = arg2
   local var0 = var1.join(var109, var111)
   arg1._operation:start()
end

function var11.activate(arg1)
   local var115 = var2
   var115 = arg1
   var115.activate(var115)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2)
      local var124 = var2
      var124 = arg1
      var124.saveForm(var124, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var137 = var2
      var137 = arg1
      var137.saveGizmos(var137, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var11.deactivate(arg1)
   local var148 = var2
   var148 = arg1
   var148.deactivate(var148)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var11
