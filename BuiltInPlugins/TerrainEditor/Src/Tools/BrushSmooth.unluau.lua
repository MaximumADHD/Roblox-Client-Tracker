-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Flags.getFFlagTerrainEditorTimeStatistic)
local var4 = require(var0.Src.Util.AnalyticsHelper)
local var5 = require(var0.Src.Util.Operations.SmoothOperation)
local var6 = require(var0.Src.Types)
local var7 = var6.BrushSettings
local var8 = var6.Category
local var9 = var6.Gizmo
local var10 = var6.Tool
local var42 = {}
var7.BrushShape = var6.BrushShape.Sphere
local var47 = {}
var47.Height = 6
var47.Locked = true
var47.Size = 6
var7.BrushSize = var47
var7.Strength = 1
var7.PivotPosition = var6.PivotPosition.Center
var7.Snapping = var6.Snapping.Off
local var58 = {}
var58.Position = Vector3.new(0, 0, 0)
var7.State = var58
var7.IgnoreWater = false
var7.IgnoreParts = true
var42.Defaults = {}
var42.Id = var8.BrushSettings
local var70 = {}
var70.Id = var9.Brush
local var72 = {}
var72.Type = var9.Brush
var70.Schema = var72
local var74 = {}
var74.Id = var9.Plane
local var76 = {}
var76.Type = var9.Plane
var74.Schema = var76
local var15 = var2:new(var10.Smooth, var6.Tab.Edit, {}, {})
function var15.init(arg1, arg2, arg3)
   local var87 = var2
   var87 = arg1
   var87.init(var87, arg2, arg3)
   arg1._brushTime = 0
   arg1._brushUsages = 0
end

function var15.saveForm(arg1, arg2)
   local var95 = var2
   var95 = arg1
   var95.saveForm(var95, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.saveGizmos(arg1, arg2)
   local var105 = var2
   var105 = arg1
   var105.saveGizmos(var105, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var15.startOperation(arg1, arg2)
   arg1._operation = var5("Smooth", arg1._services)
   local var122 = {}
   local var124 = arg1:getPayload()
   var122.Payload = var124
   var124 = arg2
   local var0 = var1.join(var122, var124)
   arg1._operation:start()
end

function var15.activate(arg1)
   local var128 = var2
   var128 = arg1
   var128.activate(var128)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var138 = var2
      var138 = arg1
      var138.init(var138, arg2, arg3)
      arg1._brushTime = 0
      arg1._brushUsages = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var149 = var2
      var149 = arg1
      var149.saveForm(var149, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._analytics:report("Activated", var10.Smooth)
end

function var15.deactivate(arg1)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._brushUsages = arg1._brushUsages + 1
         local var0 = arg1._operation:getStepsTaken()
         arg1._brushTime = arg1._operation:getCurrentTimeTaken() / var0
         local var1 = arg1._operation:getTimeStatistic()
         if var3() then
            if var1 then
               local var0 = arg1._brushStatistic
               arg1._brushStatistic = var0 + var1
            end
         end
         arg1._operation:destroy()
      end
   end
   local var191 = var2
   var191 = arg1
   var191.deactivate(var191)
end

function var15.reportAnalytics(arg1)
   if arg1._brushTime then
      local var198 = "BrushProperties"
      local var199 = var4
      var199 = arg1:getPayload()
      local var204 = var199.getBrushPayload(var199, arg1._brushTime, var10.Smooth)
      arg1._analytics:report()
      arg1._analytics:report("Usage", var10.Smooth, arg1._brushUsages)
      if var3() then
         if arg1._brushStatistic then
            if 0 < arg1._brushUsages then
               arg1._analytics:report("Performance", var10.Smooth, arg1._brushStatistic / arg1._brushUsages)
            end
         end
      end
   end
   arg1._brushUsages = 0
   arg1._brushTime = 0
   arg1._brushStatistic = 0
end

return var15
