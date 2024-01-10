-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Util.getItems)
local var4 = require(var0.Src.Util.Operations.SculptOperation)
local var5 = require(var0.Src.Types)
local var6 = var5.BrushSettings
local var7 = var5.Categories
local var8 = var5.EditorEnum
local var9 = var5.Gizmo
local var10 = var5.MaterialSettings
local var11 = var5.PivotPosition
local var12 = var5.Snapping
local var52 = {}
var6.BrushMode = var5.BrushMode.Add
var6.BrushShape = var5.BrushShape.Sphere
local var59 = {}
var59.Height = 6
var59.Locked = true
var59.Size = 6
var6.BrushSize = var59
var6.Strength = 1
local var66 = {}
var66.Position = Vector3.new(0, 0, 0)
var6.State = var66
var6.IgnoreWater = false
var6.IgnoreParts = true
var6.TemporarySmooth = false
var6.WaterAutofill = false
var52.Defaults = {}
var52.Id = var7.BrushSettings
var52.Schema = require(var0.Src.Schemas.Settings.Brush)
local var81 = {}
var10.AutoMaterial = false
var10.SourceMaterial = Enum.Material.Grass
var81.Defaults = {}
var81.Id = var7.MaterialSettings
var81.Schema = require(var0.Src.Schemas.Settings.Material)
local var89 = {}
var89.Id = var9.Brush
local var91 = {}
var91.Type = var9.Brush
var89.Schema = var91
local var93 = {}
var93.Id = var9.Plane
local var95 = {}
var95.Type = var9.Plane
var93.Schema = var95
local var18 = var2:new(var5.Tools.Sculpt, var5.ToolCategories.Edit, {}, {})
function var18.saveForm(arg1, arg2)
   local var105 = var2
   var105 = arg1
   var105.saveForm(var105, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var18.saveGizmos(arg1, arg2)
   local var115 = var2
   var115 = arg1
   var115.saveGizmos(var115, arg2)
   if arg1._operation then
      local var0 = arg1:getPayload()
      arg1._operation:updatePayload()
   end
end

function var18.activate(arg1)
   local var124 = var2
   var124 = arg1
   var124.activate(var124)
   arg1._mouseDownConnection = arg1._shortcutController.MouseDownAction:Connect(function(arg1, arg2)
      local var133 = var2
      var133 = arg1
      var133.saveForm(var133, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
   arg1._mouseUpConnection = arg1._shortcutController:getMouse().Button1Up:Connect(function(arg1, arg2)
      local var146 = var2
      var146 = arg1
      var146.saveGizmos(var146, arg2)
      if arg1._operation then
         local var0 = arg1:getPayload()
         arg1._operation:updatePayload()
      end
   end)
end

function var18.deactivate(arg1)
   local var157 = var2
   var157 = arg1
   var157.deactivate(var157)
   arg1._mouseDownConnection:Disconnect()
   arg1._mouseUpConnection:Disconnect()
   if arg1._operation then
      if arg1._operation:isRunning() then
         arg1._operation:destroy()
      end
   end
end

return var18
