-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = { 
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
   "LeftHand", 
   "RightUpperArm", 
   "RightLowerArm"
}
local var185 = "RightHand"
local var2 = {}
var2.SOURCE_BUILTIN = "builtin"
var2.SOURCE_INSTANCE = "instance"
var2.LUAU_ANALYZE_ERROR = "Assertion for Luau typechecking"
var2.BODY_PREVIEW_PATH = "rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"
var2.HEAD_PREVIEW_PATH = "rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"
var2.PEDESTAL_PATH = "rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"
var2.ATTRIBUTE_PREFIX = "RBX_AvatarPreviewer_"
var2.ATTRIBUTE_CREATED_BY_AUTO_SETUP = "AutoSetupped"
var2.REFERENCE_VALUE_NAME = "AvatarPreviewer_OriginalObjectReference_"
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
var2.ASSET_TYPE_TO_ACCESSORY_TYPE = {}
local var249 = "LeftCheekPuff"
local var250 = "LeftCheekRaiser"
local var251 = "LeftDimpler"
local var265 = "MouthLeft"
local var266 = "MouthRight"
local var267 = "Pucker"
local var9 = "RightUpperLipRaiser"
local var10 = "TongueDown"
local var11 = "TongueOut"
local var284 = "TongueUp"
local var285 = "UpperLipSuck"
var2.FACE_CONTROLS_PROPERTIES = { 
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
   "JawRight", 
   "LeftBrowLowerer", 
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
   "LipsTogether", 
   "LowerLipSuck", 
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
   "RightLowerLipDepressor", 
   "RightNoseWrinkler", 
   "RightOuterBrowRaiser"
}
var2.LIMBS = var0
local var286 = require(script:FindFirstAncestor("AvatarCompatibilityPreviewer").Packages.Cryo).List
var286 = var0
local var289 = "Handle"
local var290 = "HumanoidRootPart"
var2.ALL_ALLOWED_PART_NAMES = var286.join(var286, {})
local var292 = {}
var292.BodyPoints = "AvatarPreviewerEditingBodyPoints"
var292.EditingToolbar = "AvatarPreviewerEditingToolbar"
var292.BodyPointsToolToolbar = "AvatarPreviewerBodyPointsToolToolbar"
var2.EDITING_TOOLS_GUI_NAMES = var292
var2.MULTI_SELECT_PHONY_TARGET = "MultiSelectPhony"
var2.DEFAULT_CAMERA_ANGLE = CFrame.lookAt(Vector3.new(-5.2, 1, -9.2), Vector3.new(0.5, -1.2, 0.85))
local var15 = {}
var15.Face = 1
var15.Shoes = 2
var15.Bottoms = 3
var15.Tops = 4
var15.Outerwear = 5
var2.PREFERRED_LAYERS = var15
return var2
