-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Flags.getFFlagShowOffCenterOriginImporter)
local var3 = require(var0.Src.Flags.getFFlagChooseAnimationForRestPose)
local var4 = require(var0.Src.Flags.getFFlagShowRigSettingsNoJoints)
local var5 = require(var0.Src.Flags.getFFlagHideAnimationSettingForGltf)
local var6 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewer2)
local var7 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local function fun0(arg1, arg2)
   return arg2:IsAvatar()
end

local function fun1()
   return var6() and var7() and var1.RunningUnderCLI()
end

local function fun2(arg1)
   return var6() and var7() and var1.RunningUnderCLI() and arg1:IsR15()
end

local var8 = {}
var8.Section = "FileGeneral"
local var177 = {}
var177.Name = "ImportName"
var177.Editable = true
local var180 = {}
var180.Name = "ImportAsModelAsset"
var180.Editable = true
local var183 = {}
var183.Name = "AddModelToInventory"
var183.Editable = true
local var186 = {}
var186.Name = "ImportAsPackage"
var186.Editable = true
function var186.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var189 = {}
var189.Name = "ExistingPackageId"
var189.Editable = true
var189.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var189.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var192 = {}
var192.Name = "InsertInWorkspace"
var192.Editable = true
local var195 = {}
var195.Name = "InsertWithScenePosition"
var195.Editable = true
function var195.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var198 = {}
var198.Name = "UseSceneOriginAsCFrame"
var198.Editable = true
function var198.ShouldHide(arg1)
   return var2()
end

local var201 = {}
var201.Name = "UseSceneOriginAsPivot"
var201.Editable = true
local var204 = {}
var204.Name = "Anchored"
var204.Editable = true
local var207 = {}
var207.Name = "UsesCages"
var207.Editable = true
var8.Properties = {}
local var20 = {}
var20.Section = "AvatarGeneral"
local var213 = {}
var213.Name = "RigType"
var213.Editable = true
function var213.ShouldHide(arg1, arg2)
   if var4() then
      return true
   end
   return arg2:IsAvatar()
end

local var216 = {}
var216.Name = "RigScale"
var216.Editable = true
function var216.ShouldHide(arg1, arg2)
   if var4() then
      return true
   end
   return arg2:IsR15()
end

var20.Properties = {}
local var23 = {}
var23.Section = "RigGeneral"
local var222 = {}
var222.Name = "RigType"
var222.Editable = true
function var222.ShouldHide(arg1, arg2)
   return var4()
end

local var225 = {}
var225.Name = "ValidateUgcBody"
var225.Editable = true
function var225.ShouldHide(arg1, arg2)
   return var6() and var7() or arg2:IsR15()
end

local var229 = {}
var229.Name = "OpenAvatarPreviewCallout"
function var229.ShouldShow(arg1)
   return var6() and var7() and var1.RunningUnderCLI() and arg1:IsR15()
end

var225.Callouts = {}
local var231 = {}
var231.Name = "RigScale"
var231.Editable = true
function var231.ShouldHide(arg1, arg2)
   if not var4() then
      return true
   end
   return arg2:IsR15()
end

var23.Properties = {}
local var235 = {}
var235.Name = "OpenAvatarPreviewCallout"
function var235.ShouldShow(arg1)
   return var6() and var7() and var1.RunningUnderCLI() and arg1:IsR15()
end

var23.Callouts = {}
local var29 = {}
var29.Section = "AnimationGeneral"
local var240 = {}
var240.Name = "RestPose"
var240.Editable = true
function var240.ShouldHide(arg1, arg2)
   if var5() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var3() then
      return true
   end
   return arg2:HasAnimation()
end

local var243 = {}
var243.Name = "AnimationIdForRestPose"
var243.Editable = true
var243.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var243.ShouldHide(arg1, arg2)
   if var5() then
      if arg2:IsGltf() then
         return true
      end
   end
   if not var3() then
      return true
   end
   return arg2:HasAnimation() or arg2:usesCustomRestPoseLua()
end

var29.Properties = {}
local var32 = {}
var32.Section = "FileTransform"
local var249 = {}
var249.Name = "WorldForward"
var249.Editable = true
local var253 = "WorldUp"
var249.Dependencies = {}
local var254 = {}
var254.Name = "WorldUp"
var254.Editable = true
local var258 = "WorldForward"
var254.Dependencies = {}
var32.Properties = {}
local var37 = {}
var37.Section = "FileGeometry"
local var38 = {}
var38.Name = "ScaleUnit"
var38.Editable = true
local var39 = {}
var39.Name = "FileDimensions"
var39.Editable = false
local var269 = "ScaleUnit"
var39.Dependencies = {}
local var41 = {}
var41.Name = "PolygonCount"
var41.Editable = false
local var42 = {}
var42.Name = "MergeMeshes"
var42.Editable = true
function var42.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var43 = {}
var43.Name = "InvertNegativeFaces"
var43.Editable = true
var37.Properties = {}
return {}
