-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Flags.getFFlagTerrainEditorTimeStatistic)
local var4 = require(var0.Src.Util.AnalyticsHelper)
local var5 = require(var0.Src.Util.Operations.PaintOperation)
local var6 = require(var0.Src.Types)
local var7 = var6.BrushSettings
local var8 = var6.Category
local var9 = var6.Gizmo
local var10 = var6.MaterialSettings
local var11 = var6.Tool
local var44 = {}
var7.BrushShape = var6.BrushShape.Sphere
local var49 = {}
var49.Height = 6
var49.Locked = true
var49.Size = 6
var7.BrushSize = var49
var7.PivotPosition = var6.PivotPosition.Center
var7.Snapping = var6.Snapping.Off
local var58 = {}
var58.Position = Vector3.new(0, 0, 0)
var7.State = var58
var7.IgnoreWater = false
var7.IgnoreParts = true
var44.Defaults = {}
var44.Id = var8.BrushSettings
local var69 = {}
var10.MaterialMode = var6.MaterialMode.Paint
var10.SourceMaterial = Enum.Material.Grass
var10.TargetMaterial = Enum.Material.Grass
var69.Defaults = {}
var69.Id = var8.MaterialSettings
local var79 = {}
var79.Id = var9.Brush
local var81 = {}
var81.Type = var9.Brush
var79.Schema = var81
local var83 = {}
var83.Id = var9.Plane
local var85 = {}
var85.Type = var9.Plane
var83.Schema = var85
local var17 = var2:new(var11.Paint, var6.Tab.Edit, {}, {})
function var17.init(arg1, arg2, arg3)
   local var96 = var2
   var96 = arg1
   var96.init(var96, arg2, arg3)
   local var106 = {}
   local var107 = {}
   var107.AllowAir = true
   var106.Schema = var107
   var10.SourceMaterial = var106
   local var3 = {}
   local var4 = {}
   var4.AllowAir = true
   var3.Schema = var4
   var10.TargetMaterial = var3
   var8.TransformSettings = {}
   arg1._overrides = {}
   arg1._brushTime = 0
   arg1._brushUsages = 0
end

function var17.saveForm(arg1, arg2)
   local var118 = var2
   var118 = arg1
   var118.saveForm(var118, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var17.saveGizmos(arg1, arg2)
   local var128 = var2
   var128 = arg1
   var128.saveGizmos(var128, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var17.startOperation(arg1, arg2)
   arg1._operation = var5("Paint", arg1._services)
   local var145 = {}
   local var147 = arg1:getPayload()
   var145.Payload = var147
   var147 = arg2
   local var0 = var1.join(var145, var147)
   arg1._operation:start()
end

function var17.activate(arg1)
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
      var10.SourceMaterial = var171
      local var3 = {}
      local var4 = {}
      var4.AllowAir = true
      var3.Schema = var4
      var10.TargetMaterial = var3
      var8.TransformSettings = {}
      arg1._overrides = {}
      arg1._brushTime = 0
      arg1._brushUsages = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var186 = var2
      var186 = arg1
      var186.saveForm(var186, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._analytics:report("Activated", var11.Paint)
end

function var17.deactivate(arg1)
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
   local var228 = var2
   var228 = arg1
   var228.deactivate(var228)
end

function var17.reportAnalytics(arg1)
   local var0 = arg1:getPayload()
   if arg1._brushTime then
      if 0 < arg1._brushTime then
         local var237 = "BrushProperties"
         local var238 = var4
         var238 = var0
         local var243 = var238.getBrushPayload(var238, arg1._brushTime, var11.Paint)
         arg1._analytics:report()
         local var246 = "MaterialProperties"
         local var247 = var4
         var247 = var0
         local var251 = var247.getMaterialPayload(var247, var11.Paint)
         arg1._analytics:report()
         arg1._analytics:report("Usage", var11.Paint, arg1._brushUsages)
         if var3() then
            if arg1._brushStatistic then
               if 0 < arg1._brushUsages then
                  arg1._analytics:report("Performance", var11.Paint, arg1._brushStatistic / arg1._brushUsages)
               end
            end
         end
      end
   end
   arg1._brushUsages = 0
   arg1._brushTime = 0
   arg1._brushStatistic = 0
end

return var17
