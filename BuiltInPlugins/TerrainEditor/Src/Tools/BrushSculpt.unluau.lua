-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Util.Operations.SculptOperation)
local var3 = require(var0.Src.Types)
local var4 = var3.BrushSettings
local var5 = var3.Category
local var6 = var3.Gizmo
local var7 = var3.MaterialSettings
local var40 = {}
var4.BrushMode = var3.BrushMode.Add
var4.BrushShape = var3.BrushShape.Sphere
local var47 = {}
var47.Height = 6
var47.Locked = true
var47.Size = 6
var4.BrushSize = var47
var4.Strength = 1
local var54 = {}
var54.Position = Vector3.new(0, 0, 0)
var4.State = var54
var4.IgnoreWater = false
var4.IgnoreParts = true
var4.TemporarySmooth = false
var4.WaterAutofill = false
var40.Defaults = {}
var40.Id = var5.BrushSettings
var40.Schema = require(var0.Src.Schemas.Settings.Brush)
local var69 = {}
var7.AutoMaterial = false
var7.SourceMaterial = Enum.Material.Grass
var69.Defaults = {}
var69.Id = var5.MaterialSettings
var69.Schema = require(var0.Src.Schemas.Settings.Material)
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
local var13 = var1:new(var3.Tool.Sculpt, var3.Tab.Edit, {}, {})
function var13.saveForm(arg1, arg2)
   local var93 = var1
   var93 = arg1
   var93.saveForm(var93, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.saveGizmos(arg1, arg2)
   local var103 = var1
   var103 = arg1
   var103.saveGizmos(var103, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var13.activate(arg1)
   local var112 = var1
   var112 = arg1
   var112.activate(var112)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2)
      local var121 = var1
      var121 = arg1
      var121.saveForm(var121, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var134 = var1
      var134 = arg1
      var134.saveGizmos(var134, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var13.deactivate(arg1)
   local var145 = var1
   var145 = arg1
   var145.deactivate(var145)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var13
