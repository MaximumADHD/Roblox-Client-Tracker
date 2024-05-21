-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Flags.getFFlagTerrainEditorTimeStatistic)
local var4 = require(var0.Src.Util.AnalyticsHelper)
local var5 = require(var0.Src.Util.Operations.SculptOperation)
local var6 = require(var0.Src.Types)
local var7 = var6.BrushSettings
local var8 = var6.Category
local var9 = var6.Gizmo
local var10 = var6.MaterialSettings
local var11 = var6.Tool
local var42 = {}
var7.BrushMode = var6.BrushMode.Add
var7.BrushShape = var6.BrushShape.Sphere
local var49 = {}
var49.Height = 6
var49.Locked = true
var49.Size = 6
var7.BrushSize = var49
var7.Strength = 1
local var56 = {}
var56.Position = Vector3.new(0, 0, 0)
var7.State = var56
var7.IgnoreWater = false
var7.IgnoreParts = true
var7.TemporarySmooth = false
var7.WaterAutofill = false
var42.Defaults = {}
var42.Id = var8.BrushSettings
local var71 = {}
var10.AutoMaterial = false
var10.SourceMaterial = Enum.Material.Grass
var71.Defaults = {}
var71.Id = var8.MaterialSettings
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
local var17 = var2:new(var11.Sculpt, var6.Tab.Edit, {}, {})
function var17.init(arg1, arg2, arg3)
   local var96 = var2
   var96 = arg1
   var96.init(var96, arg2, arg3)
   arg1._brushTime = 0
   arg1._brushUsages = 0
end

function var17.saveForm(arg1, arg2)
   local var104 = var2
   var104 = arg1
   var104.saveForm(var104, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var17.saveGizmos(arg1, arg2)
   local var114 = var2
   var114 = arg1
   var114.saveGizmos(var114, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var17.startOperation(arg1, arg2)
   arg1._operation = var5("Sculpt", arg1._services)
   local var131 = {}
   local var133 = arg1:getPayload()
   var131.Payload = var133
   var133 = arg2
   local var0 = var1.join(var131, var133)
   arg1._operation:start()
end

function var17.activate(arg1)
   local var137 = var2
   var137 = arg1
   var137.activate(var137)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2, arg3)
      local var147 = var2
      var147 = arg1
      var147.init(var147, arg2, arg3)
      arg1._brushTime = 0
      arg1._brushUsages = 0
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var158 = var2
      var158 = arg1
      var158.saveForm(var158, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._analytics:report("Activated", var11.Sculpt)
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
   local var200 = var2
   var200 = arg1
   var200.deactivate(var200)
end

function var17.reportAnalytics(arg1)
   local var0 = arg1:getPayload()
   if arg1._brushTime then
      if 0 < arg1._brushTime then
         local var209 = "BrushProperties"
         local var210 = var4
         var210 = var0
         local var215 = var210.getBrushPayload(var210, arg1._brushTime, var11.Sculpt)
         arg1._analytics:report()
         local var218 = "MaterialProperties"
         local var219 = var4
         var219 = var0
         local var223 = var219.getMaterialPayload(var219, var11.Sculpt)
         arg1._analytics:report()
         arg1._analytics:report("Usage", var11.Sculpt, arg1._brushUsages)
         if var3() then
            if arg1._brushStatistic then
               if 0 < arg1._brushUsages then
                  arg1._analytics:report("Performance", var11.Sculpt, arg1._brushStatistic / arg1._brushUsages)
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
