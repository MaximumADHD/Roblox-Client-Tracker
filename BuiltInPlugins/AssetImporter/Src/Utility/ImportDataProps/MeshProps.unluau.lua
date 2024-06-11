-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Components.Properties.Types.VisibilityProperty)
local var2 = require(var0.Src.Flags.getFFlagLCQualityCheckDisplay)
local var3 = {}
var3.Section = "ObjectGeneral"
local var172 = {}
var172.Name = "ImportName"
var172.Editable = true
local var175 = {}
var175.Name = "Anchored"
var175.Editable = true
local var178 = {}
var178.Name = "UseImportedPivot"
var178.Editable = true
var3.Properties = {}
local var7 = {}
var7.Section = "ObjectGeometry"
local var8 = {}
var8.Name = "Dimensions"
var8.Editable = false
local var9 = {}
var9.Name = "PolygonCount"
var9.Editable = false
local var10 = {}
var10.Name = "DoubleSided"
var10.Editable = true
local var11 = {}
var11.Name = "IgnoreVertexColors"
var11.Editable = true
local var12 = {}
var12.Name = "CageNonManifoldPreview"
var12.Editable = true
var12.ComponentFactory = var1
function var12.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if not arg1.ImportName:match("_OuterCage") then
         if arg1.ImportName:match("_InnerCage") then
            return arg1.CageManifold
         end
      end
      return arg1.CageManifold
   end
   return true
end

local var13 = {}
var13.Name = "CageOverlappingVerticesPreview"
var13.Editable = true
var13.ComponentFactory = var1
function var13.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if not arg1.ImportName:match("_OuterCage") then
         if arg1.ImportName:match("_InnerCage") then
            return arg1.CageNoOverlappingVertices
         end
      end
      return arg1.CageNoOverlappingVertices
   end
   return true
end

local var14 = {}
var14.Name = "CageUVMisMatchedPreview"
var14.Editable = true
var14.ComponentFactory = var1
function var14.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if not arg1.ImportName:match("_OuterCage") then
         if arg1.ImportName:match("_InnerCage") then
            return arg1.CageUVMatched
         end
      end
      return arg1.CageUVMatched
   end
   return true
end

local var15 = {}
var15.Name = "CageMeshIntersectedPreview"
var15.Editable = true
var15.ComponentFactory = var1
function var15.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if not arg1.ImportName:match("_OuterCage") then
         if arg1.ImportName:match("_InnerCage") then
            return arg1.CageMeshNotIntersected
         end
      end
      return arg1.CageMeshNotIntersected
   end
   return true
end

local var16 = {}
var16.Name = "MeshHoleDetectedPreview"
var16.Editable = true
var16.ComponentFactory = var1
function var16.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if not arg1.ImportName:match("_Att") then
         return arg1.MeshNoHoleDetected
      end
   end
   return true
end

local var17 = {}
var17.Name = "IrrelevantCageModifiedPreview"
var17.Editable = true
var17.ComponentFactory = var1
function var17.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if not arg1.ImportName:match("_OuterCage") then
         if arg1.ImportName:match("_InnerCage") then
            return arg1.NoIrrelevantCageModified
         end
      end
      return arg1.NoIrrelevantCageModified
   end
   return true
end

local var18 = {}
var18.Name = "OuterCageFarExtendedFromMeshPreview"
var18.Editable = true
var18.ComponentFactory = var1
function var18.ShouldHide(arg1, arg2)
   if var2() then
      if not arg2:GetImportTree().UsesCages then
         return true
      end
      if arg1.ImportName:match("_OuterCage") then
         return arg1.NoOuterCageFarExtendedFromMesh
      end
   end
   return true
end

var7.Properties = {}
return {}
