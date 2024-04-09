-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Flags.getFFlagShowOffCenterOriginImporter)
local var3 = require(var0.Src.Flags.getFFlagChooseAnimationForRestPose)
local var4 = require(var0.Src.Flags.getFFlagHideAnimationSettingForGltf)
local var5 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local var6 = require(var0.Src.Flags.getFFlagAssetImportUseUploadId)
local function fun0()
   return var5() and var1.RunningUnderCLI()
end

local function fun1(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

local var7 = {}
var7.Section = "FileGeneral"
local var143 = {}
var143.Name = "ImportName"
var143.Editable = true
local var146 = {}
var146.Name = "ImportAsModelAsset"
var146.Editable = true
local var149 = {}
var149.Name = "AddModelToInventory"
var149.Editable = true
local var152 = {}
var152.Name = "ImportAsPackage"
var152.Editable = true
function var152.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var155 = {}
var155.Name = "ExistingPackageId"
var155.Editable = true
var155.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var155.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var158 = {}
var158.Name = "PreferredUploadId"
var158.Editable = true
var158.ComponentFactory = require(var0.Src.Components.Properties.Types.UploadDestinationProperty)
function var158.ShouldHide()
   return var6()
end

local var161 = {}
var161.Name = "InsertInWorkspace"
var161.Editable = true
local var164 = {}
var164.Name = "InsertWithScenePosition"
var164.Editable = true
function var164.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var167 = {}
var167.Name = "UseSceneOriginAsCFrame"
var167.Editable = true
function var167.ShouldHide(arg1)
   return var2()
end

local var170 = {}
var170.Name = "UseSceneOriginAsPivot"
var170.Editable = true
local var18 = {}
var18.Name = "Anchored"
var18.Editable = true
local var19 = {}
var19.Name = "UsesCages"
var19.Editable = true
var7.Properties = {}
local var20 = {}
var20.Section = "RigGeneral"
local var182 = {}
var182.Name = "RigType"
var182.Editable = true
local var185 = {}
var185.Name = "ValidateUgcBody"
var185.Editable = true
function var185.ShouldHide(arg1, arg2)
   return var5() or arg2:IsR15()
end

local var189 = {}
var189.Name = "OpenAvatarPreviewCallout"
function var189.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var185.Callouts = {}
local var191 = {}
var191.Name = "RigScale"
var191.Editable = true
function var191.ShouldHide(arg1, arg2)
   return arg2:IsR15()
end

var20.Properties = {}
local var195 = {}
var195.Name = "OpenAvatarPreviewCallout"
function var195.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var20.Callouts = {}
local var26 = {}
var26.Section = "AnimationGeneral"
local var200 = {}
var200.Name = "RestPose"
var200.Editable = true
function var200.ShouldHide(arg1, arg2)
   if var4() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var3() then
      return true
   end
   return arg2:HasAnimation()
end

local var203 = {}
var203.Name = "AnimationIdForRestPose"
var203.Editable = true
var203.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var203.ShouldHide(arg1, arg2)
   if var4() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var3() then
      return true
   end
   return arg2:HasAnimation() or arg2:usesCustomRestPoseLua()
end

var26.Properties = {}
local var29 = {}
var29.Section = "FileTransform"
local var209 = {}
var209.Name = "WorldForward"
var209.Editable = true
local var213 = "WorldUp"
var209.Dependencies = {}
local var214 = {}
var214.Name = "WorldUp"
var214.Editable = true
local var218 = "WorldForward"
var214.Dependencies = {}
var29.Properties = {}
local var34 = {}
var34.Section = "FileGeometry"
local var35 = {}
var35.Name = "ScaleUnit"
var35.Editable = true
local var36 = {}
var36.Name = "FileDimensions"
var36.Editable = false
local var229 = "ScaleUnit"
var36.Dependencies = {}
local var38 = {}
var38.Name = "PolygonCount"
var38.Editable = false
local var39 = {}
var39.Name = "MergeMeshes"
var39.Editable = true
function var39.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var40 = {}
var40.Name = "InvertNegativeFaces"
var40.Editable = true
var34.Properties = {}
return {}
