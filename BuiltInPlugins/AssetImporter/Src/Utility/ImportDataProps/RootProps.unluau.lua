-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
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
local var144 = {}
var144.Name = "ImportName"
var144.Editable = true
local var147 = {}
var147.Name = "ImportAsModelAsset"
var147.Editable = true
local var150 = {}
var150.Name = "AddModelToInventory"
var150.Editable = true
local var153 = {}
var153.Name = "ImportAsPackage"
var153.Editable = true
function var153.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var156 = {}
var156.Name = "ExistingPackageId"
var156.Editable = true
var156.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var156.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var159 = {}
var159.Name = "PreferredUploadId"
var159.Editable = true
var159.ComponentFactory = require(var0.Src.Components.Properties.Types.UploadDestinationProperty)
function var159.ShouldHide()
   return var6()
end

local var162 = {}
var162.Name = "InsertInWorkspace"
var162.Editable = true
local var165 = {}
var165.Name = "InsertWithScenePosition"
var165.Editable = true
function var165.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var168 = {}
var168.Name = "UseSceneOriginAsCFrame"
var168.Editable = true
function var168.ShouldHide(arg1)
   return var2()
end

local var171 = {}
var171.Name = "UseSceneOriginAsPivot"
var171.Editable = true
local var18 = {}
var18.Name = "Anchored"
var18.Editable = true
local var19 = {}
var19.Name = "UsesCages"
var19.Editable = true
var7.Properties = {}
local var20 = {}
var20.Section = "RigGeneral"
local var183 = {}
var183.Name = "RigType"
var183.Editable = true
local var186 = {}
var186.Name = "ValidateUgcBody"
var186.Editable = true
function var186.ShouldHide(arg1, arg2)
   return var5() or arg2:IsR15()
end

local var190 = {}
var190.Name = "OpenAvatarPreviewCallout"
function var190.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var186.Callouts = {}
local var192 = {}
var192.Name = "RigScale"
var192.Editable = true
function var192.ShouldHide(arg1, arg2)
   return arg2:IsR15()
end

var20.Properties = {}
local var196 = {}
var196.Name = "OpenAvatarPreviewCallout"
function var196.ShouldShow(arg1)
   return var5() and var1.RunningUnderCLI() and arg1:IsR15()
end

var20.Callouts = {}
local var26 = {}
var26.Section = "AnimationGeneral"
local var201 = {}
var201.Name = "RestPose"
var201.Editable = true
function var201.ShouldHide(arg1, arg2)
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

local var204 = {}
var204.Name = "AnimationIdForRestPose"
var204.Editable = true
var204.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var204.ShouldHide(arg1, arg2)
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
local var210 = {}
var210.Name = "WorldForward"
var210.Editable = true
local var214 = "WorldUp"
var210.Dependencies = {}
local var215 = {}
var215.Name = "WorldUp"
var215.Editable = true
local var219 = "WorldForward"
var215.Dependencies = {}
var29.Properties = {}
local var34 = {}
var34.Section = "FileGeometry"
local var35 = {}
var35.Name = "ScaleUnit"
var35.Editable = true
local var36 = {}
var36.Name = "FileDimensions"
var36.Editable = false
local var230 = "ScaleUnit"
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
