-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = require(var0.Src.Types)
local var3 = var2.Category
local var4 = var2.FillMode
local var5 = var2.Gizmo
local var6 = var2.MaterialSettings
local var7 = var2.SeaLevelSettings
local var8 = var2.SelectionSettings
local var9 = require(var0.Src.Util.Operations.FillOperation)
local var34 = {}
var7.Size = Vector3.new(64, 32, 64)
var7.SnapToVoxels = true
var7.Transform = CFrame.new()
var34.Defaults = {}
var34.Id = var3.SeaLevelSettings
var34.Schema = require(var0.Src.Schemas.Settings.SeaLevel)
local var49 = {}
var49.Id = var5.Region
local var51 = {}
var51.Type = var5.Region
var51.Wireframe = false
var51.Rotation = false
var49.Schema = var51
local var13 = var1:new(var2.Tool.SeaLevel, var2.Tab.Edit, {}, {})
function var13.init(arg1, arg2, arg3)
   local var64 = var1
   var64 = arg1
   var64.init(var64, arg2, arg3)
   local var74 = {}
   var74.Hidden = false
   var74.Label = ""
   local var77 = {}
   function var77.OnClick()
      local var0 = arg1:getPayload()
      var6.FillMode = var4.Replace
      var6.SourceMaterial = Enum.Material.Water
      var6.TargetMaterial = Enum.Material.Air
      var3.MaterialSettings = {}
      var8.Size = var0[var3.SeaLevelSettings][var7.Size]
      local var110 = var0[var3.SeaLevelSettings]
      var8.Transform = var110[var7.Transform]
      var3.SelectionSettings = {}
      var0 = {}
      var110 = arg1._localization:getText("Operations", "EvaporateDescription")
      arg1._operation = var9(arg1._localization:getText("Operations", "EvaporateName"), var110, arg1._services)
      local var134 = {}
      var134.Payload = var0
      arg1._operation:start(var134)
      arg1.OnOperationChanged:Fire()
   end
   
   var74.Schema = var77
   var74.Value = true
   var7.Evaporate = var74
   local var3 = {}
   var3.Hidden = false
   var3.Label = ""
   local var145 = {}
   function var145.OnClick()
      local var0 = arg1:getPayload()
      var6.FillMode = var4.Replace
      var6.SourceMaterial = Enum.Material.Air
      var6.TargetMaterial = Enum.Material.Water
      var3.MaterialSettings = {}
      var8.Size = var0[var3.SeaLevelSettings][var7.Size]
      local var178 = var0[var3.SeaLevelSettings]
      var8.Transform = var178[var7.Transform]
      var3.SelectionSettings = {}
      var0 = {}
      var178 = arg1._localization:getText("Operations", "CreateDescription")
      arg1._operation = var9(arg1._localization:getText("Operations", "CreateName"), var178, arg1._services)
      local var202 = {}
      var202.Payload = var0
      arg1._operation:start(var202)
      arg1.OnOperationChanged:Fire()
   end
   
   var3.Schema = var145
   var3.Value = true
   var7.Create = var3
   var3.SeaLevelSettings = {}
   arg1._overrides = {}
end

function var13.operation(arg1)
   return arg1._operation
end

return var13
