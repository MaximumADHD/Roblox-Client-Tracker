-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Types)
local var4 = var3.Category
local var5 = var3.FillMode
local var6 = var3.Gizmo
local var7 = var3.MaterialSettings
local var8 = var3.SeaLevelSettings
local var9 = var3.SelectionSettings
local var10 = require(var0.Src.Util.Operations.FillOperation)
local var38 = {}
var8.Size = Vector3.new(64, 32, 64)
var8.SnapToVoxels = true
var8.Transform = CFrame.new()
var38.Defaults = {}
var38.Id = var4.SeaLevelSettings
var38.Schema = require(var0.Src.Schemas.Settings.SeaLevel)
local var53 = {}
var53.Id = var6.Region
local var55 = {}
var55.Type = var6.Region
var55.Wireframe = false
var55.Rotation = false
var53.Schema = var55
local var14 = var2:new(var3.Tool.SeaLevel, var3.Tab.Edit, {}, {})
function var14.startOperation(arg1, arg2)
   arg1._operation:start(arg2)
   arg1.OnOperationChanged:Fire()
end

function var14.create(arg1, arg2)
   local var0 = arg1:getPayload()
   var7.FillMode = var5.Replace
   var7.SourceMaterial = Enum.Material.Air
   var7.TargetMaterial = Enum.Material.Water
   var4.MaterialSettings = {}
   var9.Size = var0[var4.SeaLevelSettings][var8.Size]
   local var106 = var8
   var9.Transform = var0[var4.SeaLevelSettings][var106.Transform]
   var4.SelectionSettings = {}
   arg1._operation = var10(arg1._localization:getText("Operations", "CreateName"), arg1._localization:getText("Operations", "CreateDescription"), arg1._services)
   local var126 = {}
   var126.Payload = {}
   var106 = arg2
   local var1 = var1.join(var126, var106)
   arg1:startOperation()
end

function var14.evaporate(arg1, arg2)
   local var0 = arg1:getPayload()
   var7.FillMode = var5.Replace
   var7.SourceMaterial = Enum.Material.Water
   var7.TargetMaterial = Enum.Material.Air
   var4.MaterialSettings = {}
   var9.Size = var0[var4.SeaLevelSettings][var8.Size]
   local var163 = var8
   var9.Transform = var0[var4.SeaLevelSettings][var163.Transform]
   var4.SelectionSettings = {}
   arg1._operation = var10(arg1._localization:getText("Operations", "EvaporateName"), arg1._localization:getText("Operations", "EvaporateDescription"), arg1._services)
   local var183 = {}
   var183.Payload = {}
   var163 = arg2
   local var1 = var1.join(var183, var163)
   arg1:startOperation()
end

function var14.init(arg1, arg2, arg3)
   local var189 = var2
   var189 = arg1
   var189.init(var189, arg2, arg3)
   local var199 = {}
   var199.Hidden = false
   var199.Label = ""
   local var202 = {}
   function var202.OnClick(arg1, arg2)
      arg1._operation:start(arg2)
      arg1.OnOperationChanged:Fire()
   end
   
   var199.Schema = var202
   var199.Value = true
   var8.Evaporate = var199
   local var3 = {}
   var3.Hidden = false
   var3.Label = ""
   local var216 = {}
   function var216.OnClick(arg1, arg2)
      local var0 = arg1:getPayload()
      var7.FillMode = var5.Replace
      var7.SourceMaterial = Enum.Material.Air
      var7.TargetMaterial = Enum.Material.Water
      var4.MaterialSettings = {}
      var9.Size = var0[var4.SeaLevelSettings][var8.Size]
      local var251 = var8
      var9.Transform = var0[var4.SeaLevelSettings][var251.Transform]
      var4.SelectionSettings = {}
      arg1._operation = var10(arg1._localization:getText("Operations", "CreateName"), arg1._localization:getText("Operations", "CreateDescription"), arg1._services)
      local var271 = {}
      var271.Payload = {}
      var251 = arg2
      local var1 = var1.join(var271, var251)
      arg1:startOperation()
   end
   
   var3.Schema = var216
   var3.Value = true
   var8.Create = var3
   var4.SeaLevelSettings = {}
   arg1._overrides = {}
end

function var14.operation(arg1)
   return arg1._operation
end

return var14
