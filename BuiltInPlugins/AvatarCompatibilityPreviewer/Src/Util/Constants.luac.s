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
  GETTABLEKS R4 R5 K11 ["getFFlagAvatarPreviewerRemapPreferredLayers"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAvatarPreviewerAutoSetupTelemetryV2"]
  CALL R4 1 1
  NEWTABLE R5 0 15
  LOADK R6 K13 ["Head"]
  LOADK R7 K14 ["UpperTorso"]
  LOADK R8 K15 ["LowerTorso"]
  LOADK R9 K16 ["LeftUpperLeg"]
  LOADK R10 K17 ["LeftLowerLeg"]
  LOADK R11 K18 ["LeftFoot"]
  LOADK R12 K19 ["RightUpperLeg"]
  LOADK R13 K20 ["RightLowerLeg"]
  LOADK R14 K21 ["RightFoot"]
  LOADK R15 K22 ["LeftUpperArm"]
  LOADK R16 K23 ["LeftLowerArm"]
  LOADK R17 K24 ["LeftHand"]
  LOADK R18 K25 ["RightUpperArm"]
  LOADK R19 K26 ["RightLowerArm"]
  LOADK R20 K27 ["RightHand"]
  SETLIST R5 R6 15 [1]
  DUPTABLE R6 K50 [{"SOURCE_BUILTIN", "SOURCE_INSTANCE", "LUAU_ANALYZE_ERROR", "BODY_PREVIEW_PATH", "HEAD_PREVIEW_PATH", "PEDESTAL_PATH", "ATTRIBUTE_PREFIX", "ATTRIBUTE_CREATED_BY_AUTO_SETUP", "ATTRIBUTE_AUTO_SETUP_INPUT_ASSET", "REFERENCE_VALUE_NAME", "ASSET_TYPE_TO_ACCESSORY_TYPE", "FACE_CONTROLS_PROPERTIES", "LIMBS", "ALL_ALLOWED_PART_NAMES", "EDITING_TOOLS_GUI_NAMES", "CLONED_DUMMY_NAME", "ORIGINAL_POSITION_VALUE", "PHONY_NO_SELECTION", "DEFAULT_CAMERA_ANGLE", "PREFERRED_LAYERS", "FOCUS_CALLBACK_PRIORITIES", "BODY_MESH_SUFFIX"}]
  LOADK R7 K51 ["builtin"]
  SETTABLEKS R7 R6 K28 ["SOURCE_BUILTIN"]
  LOADK R7 K52 ["instance"]
  SETTABLEKS R7 R6 K29 ["SOURCE_INSTANCE"]
  LOADK R7 K53 ["Assertion for Luau typechecking"]
  SETTABLEKS R7 R6 K30 ["LUAU_ANALYZE_ERROR"]
  LOADK R7 K54 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
  SETTABLEKS R7 R6 K31 ["BODY_PREVIEW_PATH"]
  LOADK R7 K55 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
  SETTABLEKS R7 R6 K32 ["HEAD_PREVIEW_PATH"]
  LOADK R7 K56 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
  SETTABLEKS R7 R6 K33 ["PEDESTAL_PATH"]
  LOADK R7 K57 ["RBX_AvatarPreviewer_"]
  SETTABLEKS R7 R6 K34 ["ATTRIBUTE_PREFIX"]
  MOVE R8 R2
  CALL R8 0 1
  JUMPIF R8 [+3]
  MOVE R8 R4
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADK R7 K58 ["RBX_AutoSetupped"]
  JUMP [+1]
  LOADK R7 K59 ["AutoSetupped"]
  SETTABLEKS R7 R6 K35 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADK R7 K60 ["RBX_AutoSetupInputAsset"]
  SETTABLEKS R7 R6 K36 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
  LOADK R7 K61 ["AvatarPreviewer_OriginalObjectReference_"]
  SETTABLEKS R7 R6 K37 ["REFERENCE_VALUE_NAME"]
  NEWTABLE R7 32 0
  GETIMPORT R8 K65 [Enum.AssetType.BackAccessory]
  GETIMPORT R9 K68 [Enum.AccessoryType.Back]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K70 [Enum.AssetType.DressSkirtAccessory]
  GETIMPORT R9 K72 [Enum.AccessoryType.DressSkirt]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K74 [Enum.AssetType.EyebrowAccessory]
  GETIMPORT R9 K76 [Enum.AccessoryType.Eyebrow]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K78 [Enum.AssetType.EyelashAccessory]
  GETIMPORT R9 K80 [Enum.AccessoryType.Eyelash]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K82 [Enum.AssetType.FaceAccessory]
  GETIMPORT R9 K84 [Enum.AccessoryType.Face]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K86 [Enum.AssetType.FrontAccessory]
  GETIMPORT R9 K88 [Enum.AccessoryType.Front]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K90 [Enum.AssetType.HairAccessory]
  GETIMPORT R9 K92 [Enum.AccessoryType.Hair]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K94 [Enum.AssetType.Hat]
  GETIMPORT R9 K95 [Enum.AccessoryType.Hat]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K97 [Enum.AssetType.JacketAccessory]
  GETIMPORT R9 K99 [Enum.AccessoryType.Jacket]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K101 [Enum.AssetType.LeftShoeAccessory]
  GETIMPORT R9 K103 [Enum.AccessoryType.LeftShoe]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K105 [Enum.AssetType.NeckAccessory]
  GETIMPORT R9 K107 [Enum.AccessoryType.Neck]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K109 [Enum.AssetType.PantsAccessory]
  GETIMPORT R9 K111 [Enum.AccessoryType.Pants]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K113 [Enum.AssetType.RightShoeAccessory]
  GETIMPORT R9 K115 [Enum.AccessoryType.RightShoe]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K117 [Enum.AssetType.ShirtAccessory]
  GETIMPORT R9 K119 [Enum.AccessoryType.Shirt]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K121 [Enum.AssetType.ShoulderAccessory]
  GETIMPORT R9 K123 [Enum.AccessoryType.Shoulder]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K125 [Enum.AssetType.ShortsAccessory]
  GETIMPORT R9 K127 [Enum.AccessoryType.Shorts]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K129 [Enum.AssetType.SweaterAccessory]
  GETIMPORT R9 K131 [Enum.AccessoryType.Sweater]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K133 [Enum.AssetType.TShirtAccessory]
  GETIMPORT R9 K135 [Enum.AccessoryType.TShirt]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K137 [Enum.AssetType.WaistAccessory]
  GETIMPORT R9 K139 [Enum.AccessoryType.Waist]
  SETTABLE R9 R7 R8
  SETTABLEKS R7 R6 K38 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  NEWTABLE R7 0 50
  LOADK R8 K140 ["ChinRaiser"]
  LOADK R9 K141 ["ChinRaiserUpperLip"]
  LOADK R10 K142 ["Corrugator"]
  LOADK R11 K143 ["EyesLookDown"]
  LOADK R12 K144 ["EyesLookLeft"]
  LOADK R13 K145 ["EyesLookRight"]
  LOADK R14 K146 ["EyesLookUp"]
  LOADK R15 K147 ["FlatPucker"]
  LOADK R16 K148 ["Funneler"]
  LOADK R17 K149 ["JawDrop"]
  LOADK R18 K150 ["JawLeft"]
  LOADK R19 K151 ["JawRight"]
  LOADK R20 K152 ["LeftBrowLowerer"]
  LOADK R21 K153 ["LeftCheekPuff"]
  LOADK R22 K154 ["LeftCheekRaiser"]
  LOADK R23 K155 ["LeftDimpler"]
  SETLIST R7 R8 16 [1]
  LOADK R8 K156 ["LeftEyeClosed"]
  LOADK R9 K157 ["LeftEyeUpperLidRaiser"]
  LOADK R10 K158 ["LeftInnerBrowRaiser"]
  LOADK R11 K159 ["LeftLipCornerDown"]
  LOADK R12 K160 ["LeftLipCornerPuller"]
  LOADK R13 K161 ["LeftLipStretcher"]
  LOADK R14 K162 ["LeftLowerLipDepressor"]
  LOADK R15 K163 ["LeftNoseWrinkler"]
  LOADK R16 K164 ["LeftOuterBrowRaiser"]
  LOADK R17 K165 ["LeftUpperLipRaiser"]
  LOADK R18 K166 ["LipPresser"]
  LOADK R19 K167 ["LipsTogether"]
  LOADK R20 K168 ["LowerLipSuck"]
  LOADK R21 K169 ["MouthLeft"]
  LOADK R22 K170 ["MouthRight"]
  LOADK R23 K171 ["Pucker"]
  SETLIST R7 R8 16 [17]
  LOADK R8 K172 ["RightBrowLowerer"]
  LOADK R9 K173 ["RightCheekPuff"]
  LOADK R10 K174 ["RightCheekRaiser"]
  LOADK R11 K175 ["RightDimpler"]
  LOADK R12 K176 ["RightEyeClosed"]
  LOADK R13 K177 ["RightEyeUpperLidRaiser"]
  LOADK R14 K178 ["RightInnerBrowRaiser"]
  LOADK R15 K179 ["RightLipCornerDown"]
  LOADK R16 K180 ["RightLipCornerPuller"]
  LOADK R17 K181 ["RightLipStretcher"]
  LOADK R18 K182 ["RightLowerLipDepressor"]
  LOADK R19 K183 ["RightNoseWrinkler"]
  LOADK R20 K184 ["RightOuterBrowRaiser"]
  LOADK R21 K185 ["RightUpperLipRaiser"]
  LOADK R22 K186 ["TongueDown"]
  LOADK R23 K187 ["TongueOut"]
  SETLIST R7 R8 16 [33]
  LOADK R8 K188 ["TongueUp"]
  LOADK R9 K189 ["UpperLipSuck"]
  SETLIST R7 R8 2 [49]
  SETTABLEKS R7 R6 K39 ["FACE_CONTROLS_PROPERTIES"]
  SETTABLEKS R5 R6 K40 ["LIMBS"]
  GETTABLEKS R8 R1 K190 ["List"]
  GETTABLEKS R7 R8 K191 ["join"]
  MOVE R8 R5
  NEWTABLE R9 0 2
  LOADK R10 K192 ["Handle"]
  LOADK R11 K193 ["HumanoidRootPart"]
  SETLIST R9 R10 2 [1]
  CALL R7 2 1
  SETTABLEKS R7 R6 K41 ["ALL_ALLOWED_PART_NAMES"]
  DUPTABLE R7 K199 [{"BodyPoints", "EditingToolbar", "BodyPointsToolToolbar", "CageEditingToolToolbar", "MeshEditingModuleControlPointsAdornments"}]
  LOADK R8 K200 ["AvatarPreviewerEditingBodyPoints"]
  SETTABLEKS R8 R7 K194 ["BodyPoints"]
  LOADK R8 K201 ["AvatarPreviewerEditingToolbar"]
  SETTABLEKS R8 R7 K195 ["EditingToolbar"]
  LOADK R8 K202 ["AvatarPreviewerBodyPointsToolToolbar"]
  SETTABLEKS R8 R7 K196 ["BodyPointsToolToolbar"]
  LOADK R8 K203 ["AvatarPreviewerCageEditingToolToolbar"]
  SETTABLEKS R8 R7 K197 ["CageEditingToolToolbar"]
  LOADK R8 K198 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R8 R7 K198 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R7 R6 K42 ["EDITING_TOOLS_GUI_NAMES"]
  LOADK R7 K204 ["AvatarPreviewerClonedDummy"]
  SETTABLEKS R7 R6 K43 ["CLONED_DUMMY_NAME"]
  LOADK R7 K205 ["OriginalPosition"]
  SETTABLEKS R7 R6 K44 ["ORIGINAL_POSITION_VALUE"]
  LOADK R7 K206 ["NoSelection"]
  SETTABLEKS R7 R6 K45 ["PHONY_NO_SELECTION"]
  GETIMPORT R7 K209 [CFrame.lookAt]
  LOADK R9 K210 [-5.2]
  LOADN R10 1
  LOADK R11 K211 [-9.2]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K214 [Vector3.new]
  CALL R8 3 1
  LOADK R10 K215 [0.5]
  LOADK R11 K216 [-1.2]
  LOADK R12 K217 [0.85]
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K214 [Vector3.new]
  CALL R9 3 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K46 ["DEFAULT_CAMERA_ANGLE"]
  DUPTABLE R7 K224 [{"Eyelashes", "Eyebrows", "Face", "Hair", "Shoes", "Bottoms", "Tops", "Outerwear"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K218 ["Eyelashes"]
  LOADN R8 2
  SETTABLEKS R8 R7 K219 ["Eyebrows"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 3
  JUMP [+1]
  LOADN R8 1
  SETTABLEKS R8 R7 K83 ["Face"]
  LOADN R8 4
  SETTABLEKS R8 R7 K91 ["Hair"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 5
  JUMP [+1]
  LOADN R8 2
  SETTABLEKS R8 R7 K220 ["Shoes"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 6
  JUMP [+1]
  LOADN R8 3
  SETTABLEKS R8 R7 K221 ["Bottoms"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 7
  JUMP [+1]
  LOADN R8 4
  SETTABLEKS R8 R7 K222 ["Tops"]
  MOVE R9 R3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADN R8 8
  JUMP [+1]
  LOADN R8 5
  SETTABLEKS R8 R7 K223 ["Outerwear"]
  SETTABLEKS R7 R6 K47 ["PREFERRED_LAYERS"]
  DUPTABLE R7 K227 [{"Positions", "Dummy"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K225 ["Positions"]
  LOADN R8 2
  SETTABLEKS R8 R7 K226 ["Dummy"]
  SETTABLEKS R7 R6 K48 ["FOCUS_CALLBACK_PRIORITIES"]
  LOADK R7 K228 ["_geo"]
  SETTABLEKS R7 R6 K49 ["BODY_MESH_SUFFIX"]
  RETURN R6 1
