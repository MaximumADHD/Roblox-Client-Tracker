-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Flags.getFFlagShowOffCenterOriginImporter)
local var3 = require(var0.Src.Flags.getFFlagChooseAnimationForRestPose)
local var4 = require(var0.Src.Flags.getFFlagHideAnimationSettingForGltf)
local var5 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local var6 = require(var0.Src.Flags.getFFlagAssetImportUseUploadId)
local var7 = require(var0.Src.Flags.getFFlagKeepZeroInfluenceBones)
local function fun0()
   return var5() and var1.RunningUnderCLI()
end

local function fun1(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

local var8 = {}
var8.Section = "FileGeneral"
local var151 = {}
var151.Name = "ImportName"
var151.Editable = true
local var154 = {}
var154.Name = "ImportAsModelAsset"
var154.Editable = true
local var157 = {}
var157.Name = "AddModelToInventory"
var157.Editable = true
local var160 = {}
var160.Name = "ImportAsPackage"
var160.Editable = true
function var160.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var163 = {}
var163.Name = "ExistingPackageId"
var163.Editable = true
var163.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var163.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var166 = {}
var166.Name = "PreferredUploadId"
var166.Editable = true
var166.ComponentFactory = require(var0.Src.Components.Properties.Types.UploadDestinationProperty)
function var166.ShouldHide()
   return var6()
end

local var169 = {}
var169.Name = "InsertInWorkspace"
var169.Editable = true
local var172 = {}
var172.Name = "InsertWithScenePosition"
var172.Editable = true
function var172.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var175 = {}
var175.Name = "UseSceneOriginAsCFrame"
var175.Editable = true
function var175.ShouldHide(arg1)
   return var2()
end

local var178 = {}
var178.Name = "KeepZeroInfluenceBones"
var178.Editable = true
function var178.ShouldHide()
   return var7()
end

local var19 = {}
var19.Name = "UseSceneOriginAsPivot"
var19.Editable = true
local var20 = {}
var20.Name = "Anchored"
var20.Editable = true
local var21 = {}
var21.Name = "UsesCages"
var21.Editable = true
var8.Properties = {}
local var22 = {}
var22.Section = "RigGeneral"
local var193 = {}
var193.Name = "RigType"
var193.Editable = true
local var196 = {}
var196.Name = "ValidateUgcBody"
var196.Editable = true
function var196.ShouldHide(arg1, arg2)
   return var5() or arg2:IsR15()
end

local var200 = {}
var200.Name = "OpenAvatarPreviewCallout"
function var200.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var196.Callouts = {}
local var202 = {}
var202.Name = "RigScale"
var202.Editable = true
function var202.ShouldHide(arg1, arg2)
   return arg2:IsR15()
end

var22.Properties = {}
local var206 = {}
var206.Name = "OpenAvatarPreviewCallout"
function var206.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var22.Callouts = {}
local var28 = {}
var28.Section = "AnimationGeneral"
local var211 = {}
var211.Name = "RestPose"
var211.Editable = true
function var211.ShouldHide(arg1, arg2)
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

local var214 = {}
var214.Name = "AnimationIdForRestPose"
var214.Editable = true
var214.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var214.ShouldHide(arg1, arg2)
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

var28.Properties = {}
local var31 = {}
var31.Section = "FileTransform"
local var220 = {}
var220.Name = "WorldForward"
var220.Editable = true
local var224 = "WorldUp"
var220.Dependencies = {}
local var225 = {}
var225.Name = "WorldUp"
var225.Editable = true
local var229 = "WorldForward"
var225.Dependencies = {}
var31.Properties = {}
local var36 = {}
var36.Section = "FileGeometry"
local var37 = {}
var37.Name = "ScaleUnit"
var37.Editable = true
local var38 = {}
var38.Name = "FileDimensions"
var38.Editable = false
local var240 = "ScaleUnit"
var38.Dependencies = {}
local var40 = {}
var40.Name = "PolygonCount"
var40.Editable = false
local var41 = {}
var41.Name = "MergeMeshes"
var41.Editable = true
function var41.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var42 = {}
var42.Name = "InvertNegativeFaces"
var42.Editable = true
var36.Properties = {}
return {}
