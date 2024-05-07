-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = { 
   "Head", 
   "UpperTorso", 
   "LowerTorso", 
   "LeftUpperLeg", 
   "LeftLowerLeg", 
   "LeftFoot", 
   "RightUpperLeg", 
   "RightLowerLeg", 
   "RightFoot", 
   "LeftUpperArm", 
   "LeftLowerArm", 
   "LeftHand"
}
local var179 = "LowerTorso"
local var189 = "RightUpperArm"
local var190 = "RightLowerArm"
local var191 = "RightHand"
local var6 = {}
var6.SOURCE_BUILTIN = "builtin"
var6.SOURCE_INSTANCE = "instance"
var6.LUAU_ANALYZE_ERROR = "Assertion for Luau typechecking"
var6.BODY_PREVIEW_PATH = "rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"
var6.HEAD_PREVIEW_PATH = "rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"
var6.PEDESTAL_PATH = "rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"
var6.ATTRIBUTE_PREFIX = "RBX_AvatarPreviewer_"
var179 = require(var0.Src.Flags.getFFlagAvatarPreviewerAutoSetupDisablePublish)
local var200 = var179()
if not var200 then
   var200 = require(var0.Src.Flags.getFFlagAvatarPreviewerAutoSetupTelemetryV2)
   if var200() then
      local var0 = "RBX_AutoSetupped"
   else
      local var0 = "AutoSetupped"
   end
end
local var204 = "RBX_AutoSetupped"
var6.ATTRIBUTE_CREATED_BY_AUTO_SETUP = "AutoSetupped"
var6.ATTRIBUTE_AUTO_SETUP_INPUT_ASSET = "RBX_AutoSetupInputAsset"
var6.REFERENCE_VALUE_NAME = "AvatarPreviewer_OriginalObjectReference_"
Enum.AssetType.BackAccessory = Enum.AccessoryType.Back
Enum.AssetType.DressSkirtAccessory = Enum.AccessoryType.DressSkirt
Enum.AssetType.EyebrowAccessory = Enum.AccessoryType.Eyebrow
Enum.AssetType.EyelashAccessory = Enum.AccessoryType.Eyelash
Enum.AssetType.FaceAccessory = Enum.AccessoryType.Face
Enum.AssetType.FrontAccessory = Enum.AccessoryType.Front
Enum.AssetType.HairAccessory = Enum.AccessoryType.Hair
Enum.AssetType.Hat = Enum.AccessoryType.Hat
Enum.AssetType.JacketAccessory = Enum.AccessoryType.Jacket
Enum.AssetType.LeftShoeAccessory = Enum.AccessoryType.LeftShoe
Enum.AssetType.NeckAccessory = Enum.AccessoryType.Neck
Enum.AssetType.PantsAccessory = Enum.AccessoryType.Pants
Enum.AssetType.RightShoeAccessory = Enum.AccessoryType.RightShoe
Enum.AssetType.ShirtAccessory = Enum.AccessoryType.Shirt
Enum.AssetType.ShoulderAccessory = Enum.AccessoryType.Shoulder
Enum.AssetType.ShortsAccessory = Enum.AccessoryType.Shorts
Enum.AssetType.SweaterAccessory = Enum.AccessoryType.Sweater
Enum.AssetType.TShirtAccessory = Enum.AccessoryType.TShirt
Enum.AssetType.WaistAccessory = Enum.AccessoryType.Waist
var6.ASSET_TYPE_TO_ACCESSORY_TYPE = {}
local var259 = "JawRight"
local var260 = "LeftBrowLowerer"
local var261 = "LeftCheekPuff"
local var262 = "LeftCheekRaiser"
local var263 = "LeftDimpler"
local var275 = "LipsTogether"
local var276 = "LowerLipSuck"
local var277 = "MouthLeft"
local var278 = "MouthRight"
local var279 = "Pucker"
local var19 = "RightNoseWrinkler"
local var20 = "RightOuterBrowRaiser"
local var21 = "RightUpperLipRaiser"
local var22 = "TongueDown"
local var23 = "TongueOut"
local var296 = "TongueUp"
local var297 = "UpperLipSuck"
var6.FACE_CONTROLS_PROPERTIES = { 
   "ChinRaiser", 
   "ChinRaiserUpperLip", 
   "Corrugator", 
   "EyesLookDown", 
   "EyesLookLeft", 
   "EyesLookRight", 
   "EyesLookUp", 
   "FlatPucker", 
   "Funneler", 
   "JawDrop", 
   "JawLeft", 
   "LeftEyeClosed", 
   "LeftEyeUpperLidRaiser", 
   "LeftInnerBrowRaiser", 
   "LeftLipCornerDown", 
   "LeftLipCornerPuller", 
   "LeftLipStretcher", 
   "LeftLowerLipDepressor", 
   "LeftNoseWrinkler", 
   "LeftOuterBrowRaiser", 
   "LeftUpperLipRaiser", 
   "LipPresser", 
   "RightBrowLowerer", 
   "RightCheekPuff", 
   "RightCheekRaiser", 
   "RightDimpler", 
   "RightEyeClosed", 
   "RightEyeUpperLidRaiser", 
   "RightInnerBrowRaiser", 
   "RightLipCornerDown", 
   "RightLipCornerPuller", 
   "RightLipStretcher", 
   "RightLowerLipDepressor"
}
var6.LIMBS = var1
local var298 = require(var0.Packages.Cryo).List
var298 = var1
local var301 = "Handle"
local var302 = "HumanoidRootPart"
var6.ALL_ALLOWED_PART_NAMES = var298.join(var298, {})
local var304 = {}
var304.BodyPoints = "AvatarPreviewerEditingBodyPoints"
var304.EditingToolbar = "AvatarPreviewerEditingToolbar"
var304.BodyPointsToolToolbar = "AvatarPreviewerBodyPointsToolToolbar"
var304.CageEditingToolToolbar = "AvatarPreviewerCageEditingToolToolbar"
var304.MeshEditingModuleControlPointsAdornments = "MeshEditingModuleControlPointsAdornments"
var6.EDITING_TOOLS_GUI_NAMES = var304
var6.CLONED_DUMMY_NAME = "AvatarPreviewerClonedDummy"
var6.ORIGINAL_POSITION_VALUE = "OriginalPosition"
var6.PHONY_NO_SELECTION = "NoSelection"
var6.DEFAULT_CAMERA_ANGLE = CFrame.lookAt(Vector3.new(-5.2, 1, -9.2), Vector3.new(0.5, -1.2, 0.85))
local var325 = {}
var325.Eyelashes = 1
var325.Eyebrows = 2
var325.Face = 3
var325.Hair = 4
var325.Shoes = 5
var325.Bottoms = 6
var325.Tops = 7
var325.Outerwear = 8
var6.PREFERRED_LAYERS = var325
local var334 = {}
var334.Positions = 1
var334.Dummy = 2
var6.FOCUS_CALLBACK_PRIORITIES = var334
var6.BODY_MESH_SUFFIX = "_geo"
return var6
