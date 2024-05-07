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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagAvatarPreviewerAutoSetupDisablePublish"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagAvatarPreviewerAutoSetupTelemetryV2"]
  CALL R3 1 1
  NEWTABLE R4 0 15
  LOADK R5 K12 ["Head"]
  LOADK R6 K13 ["UpperTorso"]
  LOADK R7 K14 ["LowerTorso"]
  LOADK R8 K15 ["LeftUpperLeg"]
  LOADK R9 K16 ["LeftLowerLeg"]
  LOADK R10 K17 ["LeftFoot"]
  LOADK R11 K18 ["RightUpperLeg"]
  LOADK R12 K19 ["RightLowerLeg"]
  LOADK R13 K20 ["RightFoot"]
  LOADK R14 K21 ["LeftUpperArm"]
  LOADK R15 K22 ["LeftLowerArm"]
  LOADK R16 K23 ["LeftHand"]
  LOADK R17 K24 ["RightUpperArm"]
  LOADK R18 K25 ["RightLowerArm"]
  LOADK R19 K26 ["RightHand"]
  SETLIST R4 R5 15 [1]
  DUPTABLE R5 K49 [{"SOURCE_BUILTIN", "SOURCE_INSTANCE", "LUAU_ANALYZE_ERROR", "BODY_PREVIEW_PATH", "HEAD_PREVIEW_PATH", "PEDESTAL_PATH", "ATTRIBUTE_PREFIX", "ATTRIBUTE_CREATED_BY_AUTO_SETUP", "ATTRIBUTE_AUTO_SETUP_INPUT_ASSET", "REFERENCE_VALUE_NAME", "ASSET_TYPE_TO_ACCESSORY_TYPE", "FACE_CONTROLS_PROPERTIES", "LIMBS", "ALL_ALLOWED_PART_NAMES", "EDITING_TOOLS_GUI_NAMES", "CLONED_DUMMY_NAME", "ORIGINAL_POSITION_VALUE", "PHONY_NO_SELECTION", "DEFAULT_CAMERA_ANGLE", "PREFERRED_LAYERS", "FOCUS_CALLBACK_PRIORITIES", "BODY_MESH_SUFFIX"}]
  LOADK R6 K50 ["builtin"]
  SETTABLEKS R6 R5 K27 ["SOURCE_BUILTIN"]
  LOADK R6 K51 ["instance"]
  SETTABLEKS R6 R5 K28 ["SOURCE_INSTANCE"]
  LOADK R6 K52 ["Assertion for Luau typechecking"]
  SETTABLEKS R6 R5 K29 ["LUAU_ANALYZE_ERROR"]
  LOADK R6 K53 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
  SETTABLEKS R6 R5 K30 ["BODY_PREVIEW_PATH"]
  LOADK R6 K54 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
  SETTABLEKS R6 R5 K31 ["HEAD_PREVIEW_PATH"]
  LOADK R6 K55 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
  SETTABLEKS R6 R5 K32 ["PEDESTAL_PATH"]
  LOADK R6 K56 ["RBX_AvatarPreviewer_"]
  SETTABLEKS R6 R5 K33 ["ATTRIBUTE_PREFIX"]
  MOVE R7 R2
  CALL R7 0 1
  JUMPIF R7 [+3]
  MOVE R7 R3
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K57 ["RBX_AutoSetupped"]
  JUMP [+1]
  LOADK R6 K58 ["AutoSetupped"]
  SETTABLEKS R6 R5 K34 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADK R6 K59 ["RBX_AutoSetupInputAsset"]
  SETTABLEKS R6 R5 K35 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
  LOADK R6 K60 ["AvatarPreviewer_OriginalObjectReference_"]
  SETTABLEKS R6 R5 K36 ["REFERENCE_VALUE_NAME"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K64 [Enum.AssetType.BackAccessory]
  GETIMPORT R8 K67 [Enum.AccessoryType.Back]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K69 [Enum.AssetType.DressSkirtAccessory]
  GETIMPORT R8 K71 [Enum.AccessoryType.DressSkirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K73 [Enum.AssetType.EyebrowAccessory]
  GETIMPORT R8 K75 [Enum.AccessoryType.Eyebrow]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K77 [Enum.AssetType.EyelashAccessory]
  GETIMPORT R8 K79 [Enum.AccessoryType.Eyelash]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K81 [Enum.AssetType.FaceAccessory]
  GETIMPORT R8 K83 [Enum.AccessoryType.Face]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K85 [Enum.AssetType.FrontAccessory]
  GETIMPORT R8 K87 [Enum.AccessoryType.Front]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K89 [Enum.AssetType.HairAccessory]
  GETIMPORT R8 K91 [Enum.AccessoryType.Hair]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K93 [Enum.AssetType.Hat]
  GETIMPORT R8 K94 [Enum.AccessoryType.Hat]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K96 [Enum.AssetType.JacketAccessory]
  GETIMPORT R8 K98 [Enum.AccessoryType.Jacket]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K100 [Enum.AssetType.LeftShoeAccessory]
  GETIMPORT R8 K102 [Enum.AccessoryType.LeftShoe]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K104 [Enum.AssetType.NeckAccessory]
  GETIMPORT R8 K106 [Enum.AccessoryType.Neck]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K108 [Enum.AssetType.PantsAccessory]
  GETIMPORT R8 K110 [Enum.AccessoryType.Pants]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K112 [Enum.AssetType.RightShoeAccessory]
  GETIMPORT R8 K114 [Enum.AccessoryType.RightShoe]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K116 [Enum.AssetType.ShirtAccessory]
  GETIMPORT R8 K118 [Enum.AccessoryType.Shirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K120 [Enum.AssetType.ShoulderAccessory]
  GETIMPORT R8 K122 [Enum.AccessoryType.Shoulder]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K124 [Enum.AssetType.ShortsAccessory]
  GETIMPORT R8 K126 [Enum.AccessoryType.Shorts]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K128 [Enum.AssetType.SweaterAccessory]
  GETIMPORT R8 K130 [Enum.AccessoryType.Sweater]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K132 [Enum.AssetType.TShirtAccessory]
  GETIMPORT R8 K134 [Enum.AccessoryType.TShirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K136 [Enum.AssetType.WaistAccessory]
  GETIMPORT R8 K138 [Enum.AccessoryType.Waist]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K37 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  NEWTABLE R6 0 50
  LOADK R7 K139 ["ChinRaiser"]
  LOADK R8 K140 ["ChinRaiserUpperLip"]
  LOADK R9 K141 ["Corrugator"]
  LOADK R10 K142 ["EyesLookDown"]
  LOADK R11 K143 ["EyesLookLeft"]
  LOADK R12 K144 ["EyesLookRight"]
  LOADK R13 K145 ["EyesLookUp"]
  LOADK R14 K146 ["FlatPucker"]
  LOADK R15 K147 ["Funneler"]
  LOADK R16 K148 ["JawDrop"]
  LOADK R17 K149 ["JawLeft"]
  LOADK R18 K150 ["JawRight"]
  LOADK R19 K151 ["LeftBrowLowerer"]
  LOADK R20 K152 ["LeftCheekPuff"]
  LOADK R21 K153 ["LeftCheekRaiser"]
  LOADK R22 K154 ["LeftDimpler"]
  SETLIST R6 R7 16 [1]
  LOADK R7 K155 ["LeftEyeClosed"]
  LOADK R8 K156 ["LeftEyeUpperLidRaiser"]
  LOADK R9 K157 ["LeftInnerBrowRaiser"]
  LOADK R10 K158 ["LeftLipCornerDown"]
  LOADK R11 K159 ["LeftLipCornerPuller"]
  LOADK R12 K160 ["LeftLipStretcher"]
  LOADK R13 K161 ["LeftLowerLipDepressor"]
  LOADK R14 K162 ["LeftNoseWrinkler"]
  LOADK R15 K163 ["LeftOuterBrowRaiser"]
  LOADK R16 K164 ["LeftUpperLipRaiser"]
  LOADK R17 K165 ["LipPresser"]
  LOADK R18 K166 ["LipsTogether"]
  LOADK R19 K167 ["LowerLipSuck"]
  LOADK R20 K168 ["MouthLeft"]
  LOADK R21 K169 ["MouthRight"]
  LOADK R22 K170 ["Pucker"]
  SETLIST R6 R7 16 [17]
  LOADK R7 K171 ["RightBrowLowerer"]
  LOADK R8 K172 ["RightCheekPuff"]
  LOADK R9 K173 ["RightCheekRaiser"]
  LOADK R10 K174 ["RightDimpler"]
  LOADK R11 K175 ["RightEyeClosed"]
  LOADK R12 K176 ["RightEyeUpperLidRaiser"]
  LOADK R13 K177 ["RightInnerBrowRaiser"]
  LOADK R14 K178 ["RightLipCornerDown"]
  LOADK R15 K179 ["RightLipCornerPuller"]
  LOADK R16 K180 ["RightLipStretcher"]
  LOADK R17 K181 ["RightLowerLipDepressor"]
  LOADK R18 K182 ["RightNoseWrinkler"]
  LOADK R19 K183 ["RightOuterBrowRaiser"]
  LOADK R20 K184 ["RightUpperLipRaiser"]
  LOADK R21 K185 ["TongueDown"]
  LOADK R22 K186 ["TongueOut"]
  SETLIST R6 R7 16 [33]
  LOADK R7 K187 ["TongueUp"]
  LOADK R8 K188 ["UpperLipSuck"]
  SETLIST R6 R7 2 [49]
  SETTABLEKS R6 R5 K38 ["FACE_CONTROLS_PROPERTIES"]
  SETTABLEKS R4 R5 K39 ["LIMBS"]
  GETTABLEKS R7 R1 K189 ["List"]
  GETTABLEKS R6 R7 K190 ["join"]
  MOVE R7 R4
  NEWTABLE R8 0 2
  LOADK R9 K191 ["Handle"]
  LOADK R10 K192 ["HumanoidRootPart"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  SETTABLEKS R6 R5 K40 ["ALL_ALLOWED_PART_NAMES"]
  DUPTABLE R6 K198 [{"BodyPoints", "EditingToolbar", "BodyPointsToolToolbar", "CageEditingToolToolbar", "MeshEditingModuleControlPointsAdornments"}]
  LOADK R7 K199 ["AvatarPreviewerEditingBodyPoints"]
  SETTABLEKS R7 R6 K193 ["BodyPoints"]
  LOADK R7 K200 ["AvatarPreviewerEditingToolbar"]
  SETTABLEKS R7 R6 K194 ["EditingToolbar"]
  LOADK R7 K201 ["AvatarPreviewerBodyPointsToolToolbar"]
  SETTABLEKS R7 R6 K195 ["BodyPointsToolToolbar"]
  LOADK R7 K202 ["AvatarPreviewerCageEditingToolToolbar"]
  SETTABLEKS R7 R6 K196 ["CageEditingToolToolbar"]
  LOADK R7 K197 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R7 R6 K197 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R6 R5 K41 ["EDITING_TOOLS_GUI_NAMES"]
  LOADK R6 K203 ["AvatarPreviewerClonedDummy"]
  SETTABLEKS R6 R5 K42 ["CLONED_DUMMY_NAME"]
  LOADK R6 K204 ["OriginalPosition"]
  SETTABLEKS R6 R5 K43 ["ORIGINAL_POSITION_VALUE"]
  LOADK R6 K205 ["NoSelection"]
  SETTABLEKS R6 R5 K44 ["PHONY_NO_SELECTION"]
  GETIMPORT R6 K208 [CFrame.lookAt]
  LOADK R8 K209 [-5.2]
  LOADN R9 1
  LOADK R10 K210 [-9.2]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K213 [Vector3.new]
  CALL R7 3 1
  LOADK R9 K214 [0.5]
  LOADK R10 K215 [-1.2]
  LOADK R11 K216 [0.85]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K213 [Vector3.new]
  CALL R8 3 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K45 ["DEFAULT_CAMERA_ANGLE"]
  DUPTABLE R6 K223 [{"Eyelashes", "Eyebrows", "Face", "Hair", "Shoes", "Bottoms", "Tops", "Outerwear"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K217 ["Eyelashes"]
  LOADN R7 2
  SETTABLEKS R7 R6 K218 ["Eyebrows"]
  LOADN R7 3
  SETTABLEKS R7 R6 K82 ["Face"]
  LOADN R7 4
  SETTABLEKS R7 R6 K90 ["Hair"]
  LOADN R7 5
  SETTABLEKS R7 R6 K219 ["Shoes"]
  LOADN R7 6
  SETTABLEKS R7 R6 K220 ["Bottoms"]
  LOADN R7 7
  SETTABLEKS R7 R6 K221 ["Tops"]
  LOADN R7 8
  SETTABLEKS R7 R6 K222 ["Outerwear"]
  SETTABLEKS R6 R5 K46 ["PREFERRED_LAYERS"]
  DUPTABLE R6 K226 [{"Positions", "Dummy"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K224 ["Positions"]
  LOADN R7 2
  SETTABLEKS R7 R6 K225 ["Dummy"]
  SETTABLEKS R6 R5 K47 ["FOCUS_CALLBACK_PRIORITIES"]
  LOADK R6 K227 ["_geo"]
  SETTABLEKS R6 R5 K48 ["BODY_MESH_SUFFIX"]
  RETURN R5 1
