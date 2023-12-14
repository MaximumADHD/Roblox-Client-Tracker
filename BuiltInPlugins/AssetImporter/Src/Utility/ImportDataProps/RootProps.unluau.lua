-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Flags.getFFlagShowOffCenterOriginImporter)
local var3 = require(var0.Src.Flags.getFFlagChooseAnimationForRestPose)
local var4 = require(var0.Src.Flags.getFFlagShowRigSettingsNoJoints)
local var5 = require(var0.Src.Flags.getFFlagDetectGltfJoints)
local var6 = require(var0.Src.Flags.getFFlagHideAnimationSettingForGltf)
local var7 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewer2)
local var8 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local function fun0(arg1, arg2)
   return arg2:IsAvatar()
end

local function fun1()
   return var7() and var8() and var1.RunningUnderCLI()
end

local function fun2(arg1)
   return var7() and var8() and var1.RunningUnderCLI() and arg1:IsR15()
end

local var9 = {}
var9.Section = "FileGeneral"
local var202 = {}
var202.Name = "ImportName"
var202.Editable = true
local var205 = {}
var205.Name = "ImportAsModelAsset"
var205.Editable = true
local var208 = {}
var208.Name = "AddModelToInventory"
var208.Editable = true
local var211 = {}
var211.Name = "ImportAsPackage"
var211.Editable = true
function var211.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var214 = {}
var214.Name = "ExistingPackageId"
var214.Editable = true
var214.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var214.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var217 = {}
var217.Name = "InsertInWorkspace"
var217.Editable = true
local var220 = {}
var220.Name = "InsertWithScenePosition"
var220.Editable = true
function var220.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var223 = {}
var223.Name = "UseSceneOriginAsCFrame"
var223.Editable = true
function var223.ShouldHide(arg1)
   return var2()
end

local var226 = {}
var226.Name = "UseSceneOriginAsPivot"
var226.Editable = true
local var229 = {}
var229.Name = "Anchored"
var229.Editable = true
local var232 = {}
var232.Name = "UsesCages"
var232.Editable = true
var9.Properties = {}
local var21 = {}
var21.Section = "AvatarGeneral"
local var238 = {}
var238.Name = "RigType"
var238.Editable = true
function var238.ShouldHide(arg1, arg2)
   if var5() then
      if arg2:IsGltf() then
         return true
      end
   end
   if var4() then
      return true
   end
   return arg2:IsAvatar()
end

local var241 = {}
var241.Name = "RigScale"
var241.Editable = true
function var241.ShouldHide(arg1, arg2)
   if var5() then
      if arg2:IsGltf() then
         return true
      end
   end
   if var4() then
      return true
   end
   return arg2:IsR15()
end

var21.Properties = {}
local var24 = {}
var24.Section = "RigGeneral"
local var247 = {}
var247.Name = "RigType"
var247.Editable = true
function var247.ShouldHide(arg1, arg2)
   if var5() then
      if arg2:IsGltf() then
         return true
      end
   end
   return var4()
end

local var250 = {}
var250.Name = "ValidateUgcBody"
var250.Editable = true
function var250.ShouldHide(arg1, arg2)
   return var7() and var8() or arg2:IsR15()
end

local var254 = {}
var254.Name = "OpenAvatarPreviewCallout"
function var254.ShouldShow(arg1)
   return var7() and var8() and var1.RunningUnderCLI() and arg1:IsR15()
end

var250.Callouts = {}
local var256 = {}
var256.Name = "RigScale"
var256.Editable = true
function var256.ShouldHide(arg1, arg2)
   if var5() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var4() then
      return true
   end
   return arg2:IsR15()
end

var24.Properties = {}
local var260 = {}
var260.Name = "OpenAvatarPreviewCallout"
function var260.ShouldShow(arg1)
   return var7() and var8() and var1.RunningUnderCLI() and arg1:IsR15()
end

var24.Callouts = {}
local var30 = {}
var30.Section = "AnimationGeneral"
local var265 = {}
var265.Name = "RestPose"
var265.Editable = true
function var265.ShouldHide(arg1, arg2)
   if var6() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var3() then
      return true
   end
   return arg2:HasAnimation()
end

local var268 = {}
var268.Name = "AnimationIdForRestPose"
var268.Editable = true
var268.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var268.ShouldHide(arg1, arg2)
   if var6() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var3() then
      return true
   end
   return arg2:HasAnimation() or arg2:usesCustomRestPoseLua()
end

var30.Properties = {}
local var33 = {}
var33.Section = "FileTransform"
local var274 = {}
var274.Name = "WorldForward"
var274.Editable = true
local var278 = "WorldUp"
var274.Dependencies = {}
local var279 = {}
var279.Name = "WorldUp"
var279.Editable = true
local var283 = "WorldForward"
var279.Dependencies = {}
var33.Properties = {}
local var38 = {}
var38.Section = "FileGeometry"
local var39 = {}
var39.Name = "ScaleUnit"
var39.Editable = true
local var40 = {}
var40.Name = "FileDimensions"
var40.Editable = false
local var294 = "ScaleUnit"
var40.Dependencies = {}
local var42 = {}
var42.Name = "PolygonCount"
var42.Editable = false
local var43 = {}
var43.Name = "MergeMeshes"
var43.Editable = true
function var43.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var44 = {}
var44.Name = "InvertNegativeFaces"
var44.Editable = true
var38.Properties = {}
return {}
