-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Flags.getFFlagShowOffCenterOriginImporter)
local var3 = require(var0.Src.Flags.getFFlagChooseAnimationForRestPose)
local var4 = require(var0.Src.Flags.getFFlagHideAnimationSettingForGltf)
local var5 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local var6 = require(var0.Src.Flags.getFFlagAssetImportUseUploadId)
local function fun0(arg1, arg2)
   return arg2:IsAvatar()
end

local function fun1()
   return var5() and var1.RunningUnderCLI()
end

local function fun2(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

local var7 = {}
var7.Section = "FileGeneral"
local var149 = {}
var149.Name = "ImportName"
var149.Editable = true
local var152 = {}
var152.Name = "ImportAsModelAsset"
var152.Editable = true
local var155 = {}
var155.Name = "AddModelToInventory"
var155.Editable = true
local var158 = {}
var158.Name = "ImportAsPackage"
var158.Editable = true
function var158.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var161 = {}
var161.Name = "ExistingPackageId"
var161.Editable = true
var161.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var161.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var164 = {}
var164.Name = "PreferredUploadId"
var164.Editable = true
var164.ComponentFactory = require(var0.Src.Components.Properties.Types.UploadDestinationProperty)
function var164.ShouldHide()
   return var6()
end

local var167 = {}
var167.Name = "InsertInWorkspace"
var167.Editable = true
local var170 = {}
var170.Name = "InsertWithScenePosition"
var170.Editable = true
function var170.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var173 = {}
var173.Name = "UseSceneOriginAsCFrame"
var173.Editable = true
function var173.ShouldHide(arg1)
   return var2()
end

local var176 = {}
var176.Name = "UseSceneOriginAsPivot"
var176.Editable = true
local var179 = {}
var179.Name = "Anchored"
var179.Editable = true
local var19 = {}
var19.Name = "UsesCages"
var19.Editable = true
var7.Properties = {}
local var20 = {}
var20.Section = "AvatarGeneral"
local var188 = {}
var188.Name = "RigScale"
var188.Editable = true
var20.Properties = {}
local var22 = {}
var22.Section = "RigGeneral"
local var194 = {}
var194.Name = "RigType"
var194.Editable = true
local var197 = {}
var197.Name = "ValidateUgcBody"
var197.Editable = true
function var197.ShouldHide(arg1, arg2)
   return var5() or arg2:IsR15()
end

local var201 = {}
var201.Name = "OpenAvatarPreviewCallout"
function var201.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var197.Callouts = {}
local var203 = {}
var203.Name = "RigScale"
var203.Editable = true
function var203.ShouldHide(arg1, arg2)
   return arg2:IsR15()
end

var22.Properties = {}
local var207 = {}
var207.Name = "OpenAvatarPreviewCallout"
function var207.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var22.Callouts = {}
local var28 = {}
var28.Section = "AnimationGeneral"
local var212 = {}
var212.Name = "RestPose"
var212.Editable = true
function var212.ShouldHide(arg1, arg2)
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

local var215 = {}
var215.Name = "AnimationIdForRestPose"
var215.Editable = true
var215.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var215.ShouldHide(arg1, arg2)
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
local var221 = {}
var221.Name = "WorldForward"
var221.Editable = true
local var225 = "WorldUp"
var221.Dependencies = {}
local var226 = {}
var226.Name = "WorldUp"
var226.Editable = true
local var230 = "WorldForward"
var226.Dependencies = {}
var31.Properties = {}
local var36 = {}
var36.Section = "FileGeometry"
local var37 = {}
var37.Name = "ScaleUnit"
var37.Editable = true
local var38 = {}
var38.Name = "FileDimensions"
var38.Editable = false
local var241 = "ScaleUnit"
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
