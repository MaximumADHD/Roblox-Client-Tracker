MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  NEWTABLE R2 0 15
  LOADK R3 K8 ["Head"]
  LOADK R4 K9 ["UpperTorso"]
  LOADK R5 K10 ["LowerTorso"]
  LOADK R6 K11 ["LeftUpperLeg"]
  LOADK R7 K12 ["LeftLowerLeg"]
  LOADK R8 K13 ["LeftFoot"]
  LOADK R9 K14 ["RightUpperLeg"]
  LOADK R10 K15 ["RightLowerLeg"]
  LOADK R11 K16 ["RightFoot"]
  LOADK R12 K17 ["LeftUpperArm"]
  LOADK R13 K18 ["LeftLowerArm"]
  LOADK R14 K19 ["LeftHand"]
  LOADK R15 K20 ["RightUpperArm"]
  LOADK R16 K21 ["RightLowerArm"]
  LOADK R17 K22 ["RightHand"]
  SETLIST R2 R3 15 [1]
  DUPTABLE R3 K51 [{"SOURCE_BUILTIN", "SOURCE_INSTANCE", "LUAU_ANALYZE_ERROR", "BODY_PREVIEW_PATH", "HEAD_PREVIEW_PATH", "PEDESTAL_PATH", "ATTRIBUTE_PREFIX", "ATTRIBUTE_ORIGINAL_SETUP_SCALE", "ATTRIBUTE_CREATED_BY_AUTO_SETUP", "ATTRIBUTE_AUTO_SETUP_INPUT_ASSET", "REFERENCE_VALUE_NAME", "ASSET_TYPE_TO_ACCESSORY_TYPE", "FACE_CONTROLS_PROPERTIES", "LIMBS", "ALL_ALLOWED_PART_NAMES", "EDITING_TOOLS_GUI_NAMES", "CLONED_DUMMY_NAME", "ORIGINAL_POSITION_VALUE", "PHONY_NO_SELECTION", "DEFAULT_CAMERA_ANGLE", "PREFERRED_LAYERS", "FOCUS_CALLBACK_PRIORITIES", "BODY_MESH_SUFFIX", "OUTPUT_MODEL_SUFFIX", "BODY_PART_TO_LIMB_NAME", "FALLOFF_CURSOR_ADJUSTMENT", "THROTTLE_DELAY", "IDLE_ANIMATION_ID"}]
  LOADK R4 K52 ["builtin"]
  SETTABLEKS R4 R3 K23 ["SOURCE_BUILTIN"]
  LOADK R4 K53 ["instance"]
  SETTABLEKS R4 R3 K24 ["SOURCE_INSTANCE"]
  LOADK R4 K54 ["Assertion for Luau typechecking"]
  SETTABLEKS R4 R3 K25 ["LUAU_ANALYZE_ERROR"]
  LOADK R4 K55 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
  SETTABLEKS R4 R3 K26 ["BODY_PREVIEW_PATH"]
  LOADK R4 K56 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
  SETTABLEKS R4 R3 K27 ["HEAD_PREVIEW_PATH"]
  LOADK R4 K57 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
  SETTABLEKS R4 R3 K28 ["PEDESTAL_PATH"]
  LOADK R4 K58 ["RBX_AvatarPreviewer_"]
  SETTABLEKS R4 R3 K29 ["ATTRIBUTE_PREFIX"]
  LOADK R4 K59 ["RBX_AutoSetup_OriginalScale"]
  SETTABLEKS R4 R3 K30 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
  LOADK R4 K60 ["RBX_AutoSetupped"]
  SETTABLEKS R4 R3 K31 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADK R4 K61 ["RBX_AutoSetupInputAsset"]
  SETTABLEKS R4 R3 K32 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
  LOADK R4 K62 ["AvatarPreviewer_OriginalObjectReference_"]
  SETTABLEKS R4 R3 K33 ["REFERENCE_VALUE_NAME"]
  NEWTABLE R4 32 0
  GETIMPORT R5 K66 [Enum.AssetType.BackAccessory]
  GETIMPORT R6 K69 [Enum.AccessoryType.Back]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K71 [Enum.AssetType.DressSkirtAccessory]
  GETIMPORT R6 K73 [Enum.AccessoryType.DressSkirt]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K75 [Enum.AssetType.EyebrowAccessory]
  GETIMPORT R6 K77 [Enum.AccessoryType.Eyebrow]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K79 [Enum.AssetType.EyelashAccessory]
  GETIMPORT R6 K81 [Enum.AccessoryType.Eyelash]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K83 [Enum.AssetType.FaceAccessory]
  GETIMPORT R6 K85 [Enum.AccessoryType.Face]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K87 [Enum.AssetType.FrontAccessory]
  GETIMPORT R6 K89 [Enum.AccessoryType.Front]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K91 [Enum.AssetType.HairAccessory]
  GETIMPORT R6 K93 [Enum.AccessoryType.Hair]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K95 [Enum.AssetType.Hat]
  GETIMPORT R6 K96 [Enum.AccessoryType.Hat]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K98 [Enum.AssetType.JacketAccessory]
  GETIMPORT R6 K100 [Enum.AccessoryType.Jacket]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K102 [Enum.AssetType.LeftShoeAccessory]
  GETIMPORT R6 K104 [Enum.AccessoryType.LeftShoe]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K106 [Enum.AssetType.NeckAccessory]
  GETIMPORT R6 K108 [Enum.AccessoryType.Neck]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K110 [Enum.AssetType.PantsAccessory]
  GETIMPORT R6 K112 [Enum.AccessoryType.Pants]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K114 [Enum.AssetType.RightShoeAccessory]
  GETIMPORT R6 K116 [Enum.AccessoryType.RightShoe]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K118 [Enum.AssetType.ShirtAccessory]
  GETIMPORT R6 K120 [Enum.AccessoryType.Shirt]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K122 [Enum.AssetType.ShoulderAccessory]
  GETIMPORT R6 K124 [Enum.AccessoryType.Shoulder]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K126 [Enum.AssetType.ShortsAccessory]
  GETIMPORT R6 K128 [Enum.AccessoryType.Shorts]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K130 [Enum.AssetType.SweaterAccessory]
  GETIMPORT R6 K132 [Enum.AccessoryType.Sweater]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K134 [Enum.AssetType.TShirtAccessory]
  GETIMPORT R6 K136 [Enum.AccessoryType.TShirt]
  SETTABLE R6 R4 R5
  GETIMPORT R5 K138 [Enum.AssetType.WaistAccessory]
  GETIMPORT R6 K140 [Enum.AccessoryType.Waist]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K34 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  NEWTABLE R4 0 50
  LOADK R5 K141 ["ChinRaiser"]
  LOADK R6 K142 ["ChinRaiserUpperLip"]
  LOADK R7 K143 ["Corrugator"]
  LOADK R8 K144 ["EyesLookDown"]
  LOADK R9 K145 ["EyesLookLeft"]
  LOADK R10 K146 ["EyesLookRight"]
  LOADK R11 K147 ["EyesLookUp"]
  LOADK R12 K148 ["FlatPucker"]
  LOADK R13 K149 ["Funneler"]
  LOADK R14 K150 ["JawDrop"]
  LOADK R15 K151 ["JawLeft"]
  LOADK R16 K152 ["JawRight"]
  LOADK R17 K153 ["LeftBrowLowerer"]
  LOADK R18 K154 ["LeftCheekPuff"]
  LOADK R19 K155 ["LeftCheekRaiser"]
  LOADK R20 K156 ["LeftDimpler"]
  SETLIST R4 R5 16 [1]
  LOADK R5 K157 ["LeftEyeClosed"]
  LOADK R6 K158 ["LeftEyeUpperLidRaiser"]
  LOADK R7 K159 ["LeftInnerBrowRaiser"]
  LOADK R8 K160 ["LeftLipCornerDown"]
  LOADK R9 K161 ["LeftLipCornerPuller"]
  LOADK R10 K162 ["LeftLipStretcher"]
  LOADK R11 K163 ["LeftLowerLipDepressor"]
  LOADK R12 K164 ["LeftNoseWrinkler"]
  LOADK R13 K165 ["LeftOuterBrowRaiser"]
  LOADK R14 K166 ["LeftUpperLipRaiser"]
  LOADK R15 K167 ["LipPresser"]
  LOADK R16 K168 ["LipsTogether"]
  LOADK R17 K169 ["LowerLipSuck"]
  LOADK R18 K170 ["MouthLeft"]
  LOADK R19 K171 ["MouthRight"]
  LOADK R20 K172 ["Pucker"]
  SETLIST R4 R5 16 [17]
  LOADK R5 K173 ["RightBrowLowerer"]
  LOADK R6 K174 ["RightCheekPuff"]
  LOADK R7 K175 ["RightCheekRaiser"]
  LOADK R8 K176 ["RightDimpler"]
  LOADK R9 K177 ["RightEyeClosed"]
  LOADK R10 K178 ["RightEyeUpperLidRaiser"]
  LOADK R11 K179 ["RightInnerBrowRaiser"]
  LOADK R12 K180 ["RightLipCornerDown"]
  LOADK R13 K181 ["RightLipCornerPuller"]
  LOADK R14 K182 ["RightLipStretcher"]
  LOADK R15 K183 ["RightLowerLipDepressor"]
  LOADK R16 K184 ["RightNoseWrinkler"]
  LOADK R17 K185 ["RightOuterBrowRaiser"]
  LOADK R18 K186 ["RightUpperLipRaiser"]
  LOADK R19 K187 ["TongueDown"]
  LOADK R20 K188 ["TongueOut"]
  SETLIST R4 R5 16 [33]
  LOADK R5 K189 ["TongueUp"]
  LOADK R6 K190 ["UpperLipSuck"]
  SETLIST R4 R5 2 [49]
  SETTABLEKS R4 R3 K35 ["FACE_CONTROLS_PROPERTIES"]
  SETTABLEKS R2 R3 K36 ["LIMBS"]
  GETTABLEKS R5 R1 K191 ["List"]
  GETTABLEKS R4 R5 K192 ["join"]
  MOVE R5 R2
  NEWTABLE R6 0 2
  LOADK R7 K193 ["Handle"]
  LOADK R8 K194 ["HumanoidRootPart"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  SETTABLEKS R4 R3 K37 ["ALL_ALLOWED_PART_NAMES"]
  DUPTABLE R4 K200 [{"BodyPoints", "EditingToolbar", "BodyPointsToolToolbar", "CageEditingToolToolbar", "MeshEditingModuleControlPointsAdornments"}]
  LOADK R5 K201 ["AvatarPreviewerEditingBodyPoints"]
  SETTABLEKS R5 R4 K195 ["BodyPoints"]
  LOADK R5 K202 ["AvatarPreviewerEditingToolbar"]
  SETTABLEKS R5 R4 K196 ["EditingToolbar"]
  LOADK R5 K203 ["AvatarPreviewerBodyPointsToolToolbar"]
  SETTABLEKS R5 R4 K197 ["BodyPointsToolToolbar"]
  LOADK R5 K204 ["AvatarPreviewerCageEditingToolToolbar"]
  SETTABLEKS R5 R4 K198 ["CageEditingToolToolbar"]
  LOADK R5 K199 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R5 R4 K199 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R4 R3 K38 ["EDITING_TOOLS_GUI_NAMES"]
  LOADK R4 K205 ["AvatarPreviewerClonedDummy"]
  SETTABLEKS R4 R3 K39 ["CLONED_DUMMY_NAME"]
  LOADK R4 K206 ["OriginalPosition"]
  SETTABLEKS R4 R3 K40 ["ORIGINAL_POSITION_VALUE"]
  LOADK R4 K207 ["NoSelection"]
  SETTABLEKS R4 R3 K41 ["PHONY_NO_SELECTION"]
  GETIMPORT R4 K210 [CFrame.lookAt]
  LOADK R5 K211 [{-5.2, 1, -9.2}]
  LOADK R6 K212 [{0.5, -1.2, 0.85}]
  CALL R4 2 1
  SETTABLEKS R4 R3 K42 ["DEFAULT_CAMERA_ANGLE"]
  DUPTABLE R4 K219 [{"Eyelashes", "Eyebrows", "Face", "Hair", "Shoes", "Bottoms", "Tops", "Outerwear"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K213 ["Eyelashes"]
  LOADN R5 2
  SETTABLEKS R5 R4 K214 ["Eyebrows"]
  LOADN R5 3
  SETTABLEKS R5 R4 K84 ["Face"]
  LOADN R5 4
  SETTABLEKS R5 R4 K92 ["Hair"]
  LOADN R5 5
  SETTABLEKS R5 R4 K215 ["Shoes"]
  LOADN R5 6
  SETTABLEKS R5 R4 K216 ["Bottoms"]
  LOADN R5 7
  SETTABLEKS R5 R4 K217 ["Tops"]
  LOADN R5 8
  SETTABLEKS R5 R4 K218 ["Outerwear"]
  SETTABLEKS R4 R3 K43 ["PREFERRED_LAYERS"]
  DUPTABLE R4 K222 [{"Positions", "Dummy"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K220 ["Positions"]
  LOADN R5 2
  SETTABLEKS R5 R4 K221 ["Dummy"]
  SETTABLEKS R4 R3 K44 ["FOCUS_CALLBACK_PRIORITIES"]
  LOADK R4 K223 ["_geo"]
  SETTABLEKS R4 R3 K45 ["BODY_MESH_SUFFIX"]
  LOADK R4 K224 ["_autosetup"]
  SETTABLEKS R4 R3 K46 ["OUTPUT_MODEL_SUFFIX"]
  DUPTABLE R4 K225 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
  LOADK R5 K8 ["Head"]
  SETTABLEKS R5 R4 K8 ["Head"]
  LOADK R5 K226 ["Torso"]
  SETTABLEKS R5 R4 K9 ["UpperTorso"]
  LOADK R5 K226 ["Torso"]
  SETTABLEKS R5 R4 K10 ["LowerTorso"]
  LOADK R5 K227 ["LeftArm"]
  SETTABLEKS R5 R4 K17 ["LeftUpperArm"]
  LOADK R5 K227 ["LeftArm"]
  SETTABLEKS R5 R4 K18 ["LeftLowerArm"]
  LOADK R5 K227 ["LeftArm"]
  SETTABLEKS R5 R4 K19 ["LeftHand"]
  LOADK R5 K228 ["RightArm"]
  SETTABLEKS R5 R4 K20 ["RightUpperArm"]
  LOADK R5 K228 ["RightArm"]
  SETTABLEKS R5 R4 K21 ["RightLowerArm"]
  LOADK R5 K228 ["RightArm"]
  SETTABLEKS R5 R4 K22 ["RightHand"]
  LOADK R5 K229 ["LeftLeg"]
  SETTABLEKS R5 R4 K11 ["LeftUpperLeg"]
  LOADK R5 K229 ["LeftLeg"]
  SETTABLEKS R5 R4 K12 ["LeftLowerLeg"]
  LOADK R5 K229 ["LeftLeg"]
  SETTABLEKS R5 R4 K13 ["LeftFoot"]
  LOADK R5 K230 ["RightLeg"]
  SETTABLEKS R5 R4 K14 ["RightUpperLeg"]
  LOADK R5 K230 ["RightLeg"]
  SETTABLEKS R5 R4 K15 ["RightLowerLeg"]
  LOADK R5 K230 ["RightLeg"]
  SETTABLEKS R5 R4 K16 ["RightFoot"]
  SETTABLEKS R4 R3 K47 ["BODY_PART_TO_LIMB_NAME"]
  LOADK R4 K231 [0.7]
  SETTABLEKS R4 R3 K48 ["FALLOFF_CURSOR_ADJUSTMENT"]
  LOADK R4 K232 [0.4]
  SETTABLEKS R4 R3 K49 ["THROTTLE_DELAY"]
  LOADK R4 K233 [16562317918]
  SETTABLEKS R4 R3 K50 ["IDLE_ANIMATION_ID"]
  RETURN R3 1
