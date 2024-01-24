-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Flags.getFFlagShowOffCenterOriginImporter)
local var3 = require(var0.Src.Flags.getFFlagChooseAnimationForRestPose)
local var4 = require(var0.Src.Flags.getFFlagShowRigSettingsNoJoints)
local var5 = require(var0.Src.Flags.getFFlagHideAnimationSettingForGltf)
local var6 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local function fun0(arg1, arg2)
   return arg2:IsAvatar()
end

local function fun1()
   return var6() and var1.RunningUnderCLI()
end

local function fun2(arg1)
   return var6() and var1.RunningUnderCLI() and arg1:IsR15()
end

local var7 = {}
var7.Section = "FileGeneral"
local var163 = {}
var163.Name = "ImportName"
var163.Editable = true
local var166 = {}
var166.Name = "ImportAsModelAsset"
var166.Editable = true
local var169 = {}
var169.Name = "AddModelToInventory"
var169.Editable = true
local var172 = {}
var172.Name = "ImportAsPackage"
var172.Editable = true
function var172.ShouldHide(arg1)
   return arg1.AddModelToInventory
end

local var175 = {}
var175.Name = "ExistingPackageId"
var175.Editable = true
var175.ComponentFactory = require(var0.Src.Components.Properties.Types.AssetIdProperty)
function var175.ShouldHide(arg1)
   return arg1.AddModelToInventory and arg1.ImportAsPackage
end

local var178 = {}
var178.Name = "InsertInWorkspace"
var178.Editable = true
local var181 = {}
var181.Name = "InsertWithScenePosition"
var181.Editable = true
function var181.ShouldHide(arg1)
   return arg1.InsertInWorkspace
end

local var184 = {}
var184.Name = "UseSceneOriginAsCFrame"
var184.Editable = true
function var184.ShouldHide(arg1)
   return var2()
end

local var187 = {}
var187.Name = "UseSceneOriginAsPivot"
var187.Editable = true
local var190 = {}
var190.Name = "Anchored"
var190.Editable = true
local var193 = {}
var193.Name = "UsesCages"
var193.Editable = true
var7.Properties = {}
local var19 = {}
var19.Section = "AvatarGeneral"
local var199 = {}
var199.Name = "RigType"
var199.Editable = true
function var199.ShouldHide(arg1, arg2)
   if var4() then
      return true
   end
   return arg2:IsAvatar()
end

local var202 = {}
var202.Name = "RigScale"
var202.Editable = true
function var202.ShouldHide(arg1, arg2)
   if var4() then
      return true
   end
   return arg2:IsR15()
end

var19.Properties = {}
local var22 = {}
var22.Section = "RigGeneral"
local var208 = {}
var208.Name = "RigType"
var208.Editable = true
function var208.ShouldHide(arg1, arg2)
   return var4()
end

local var211 = {}
var211.Name = "ValidateUgcBody"
var211.Editable = true
function var211.ShouldHide(arg1, arg2)
   return var6() or arg2:IsR15()
end

local var215 = {}
var215.Name = "OpenAvatarPreviewCallout"
function var215.ShouldShow(arg1)
   return var6() and var1.RunningUnderCLI() and arg1:IsR15()
end

var211.Callouts = {}
local var217 = {}
var217.Name = "RigScale"
var217.Editable = true
function var217.ShouldHide(arg1, arg2)
   if not var4() then
      return true
   end
   return arg2:IsR15()
end

var22.Properties = {}
local var221 = {}
var221.Name = "OpenAvatarPreviewCallout"
function var221.ShouldShow(arg1)
   return var6() and var1.RunningUnderCLI() and arg1:IsR15()
end

var22.Callouts = {}
local var28 = {}
var28.Section = "AnimationGeneral"
local var226 = {}
var226.Name = "RestPose"
var226.Editable = true
function var226.ShouldHide(arg1, arg2)
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

local var229 = {}
var229.Name = "AnimationIdForRestPose"
var229.Editable = true
var229.ComponentFactory = require(var0.Src.Components.Properties.Types.AnimationListProperty)
function var229.ShouldHide(arg1, arg2)
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

var28.Properties = {}
local var31 = {}
var31.Section = "FileTransform"
local var235 = {}
var235.Name = "WorldForward"
var235.Editable = true
local var239 = "WorldUp"
var235.Dependencies = {}
local var240 = {}
var240.Name = "WorldUp"
var240.Editable = true
local var244 = "WorldForward"
var240.Dependencies = {}
var31.Properties = {}
local var36 = {}
var36.Section = "FileGeometry"
local var37 = {}
var37.Name = "ScaleUnit"
var37.Editable = true
local var38 = {}
var38.Name = "FileDimensions"
var38.Editable = false
local var255 = "ScaleUnit"
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
