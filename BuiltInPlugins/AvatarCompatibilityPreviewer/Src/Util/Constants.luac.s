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
  DUPTABLE R5 K47 [{"SOURCE_BUILTIN", "SOURCE_INSTANCE", "LUAU_ANALYZE_ERROR", "BODY_PREVIEW_PATH", "HEAD_PREVIEW_PATH", "PEDESTAL_PATH", "ATTRIBUTE_PREFIX", "ATTRIBUTE_CREATED_BY_AUTO_SETUP", "REFERENCE_VALUE_NAME", "ASSET_TYPE_TO_ACCESSORY_TYPE", "FACE_CONTROLS_PROPERTIES", "LIMBS", "ALL_ALLOWED_PART_NAMES", "EDITING_TOOLS_GUI_NAMES", "CLONED_DUMMY_NAME", "MULTI_SELECT_PHONY_TARGET", "ORIGINAL_POSITION_VALUE", "DEFAULT_CAMERA_ANGLE", "PREFERRED_LAYERS", "BODY_MESH_SUFFIX"}]
  LOADK R6 K48 ["builtin"]
  SETTABLEKS R6 R5 K27 ["SOURCE_BUILTIN"]
  LOADK R6 K49 ["instance"]
  SETTABLEKS R6 R5 K28 ["SOURCE_INSTANCE"]
  LOADK R6 K50 ["Assertion for Luau typechecking"]
  SETTABLEKS R6 R5 K29 ["LUAU_ANALYZE_ERROR"]
  LOADK R6 K51 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
  SETTABLEKS R6 R5 K30 ["BODY_PREVIEW_PATH"]
  LOADK R6 K52 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
  SETTABLEKS R6 R5 K31 ["HEAD_PREVIEW_PATH"]
  LOADK R6 K53 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
  SETTABLEKS R6 R5 K32 ["PEDESTAL_PATH"]
  LOADK R6 K54 ["RBX_AvatarPreviewer_"]
  SETTABLEKS R6 R5 K33 ["ATTRIBUTE_PREFIX"]
  MOVE R7 R2
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K55 ["RBX_AutoSetupped"]
  JUMP [+1]
  LOADK R6 K56 ["AutoSetupped"]
  SETTABLEKS R6 R5 K34 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADK R6 K57 ["AvatarPreviewer_OriginalObjectReference_"]
  SETTABLEKS R6 R5 K35 ["REFERENCE_VALUE_NAME"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K61 [Enum.AssetType.BackAccessory]
  GETIMPORT R8 K64 [Enum.AccessoryType.Back]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K66 [Enum.AssetType.DressSkirtAccessory]
  GETIMPORT R8 K68 [Enum.AccessoryType.DressSkirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K70 [Enum.AssetType.EyebrowAccessory]
  GETIMPORT R8 K72 [Enum.AccessoryType.Eyebrow]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K74 [Enum.AssetType.EyelashAccessory]
  GETIMPORT R8 K76 [Enum.AccessoryType.Eyelash]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K78 [Enum.AssetType.FaceAccessory]
  GETIMPORT R8 K80 [Enum.AccessoryType.Face]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K82 [Enum.AssetType.FrontAccessory]
  GETIMPORT R8 K84 [Enum.AccessoryType.Front]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K86 [Enum.AssetType.HairAccessory]
  GETIMPORT R8 K88 [Enum.AccessoryType.Hair]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K90 [Enum.AssetType.Hat]
  GETIMPORT R8 K91 [Enum.AccessoryType.Hat]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K93 [Enum.AssetType.JacketAccessory]
  GETIMPORT R8 K95 [Enum.AccessoryType.Jacket]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K97 [Enum.AssetType.LeftShoeAccessory]
  GETIMPORT R8 K99 [Enum.AccessoryType.LeftShoe]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K101 [Enum.AssetType.NeckAccessory]
  GETIMPORT R8 K103 [Enum.AccessoryType.Neck]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K105 [Enum.AssetType.PantsAccessory]
  GETIMPORT R8 K107 [Enum.AccessoryType.Pants]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K109 [Enum.AssetType.RightShoeAccessory]
  GETIMPORT R8 K111 [Enum.AccessoryType.RightShoe]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K113 [Enum.AssetType.ShirtAccessory]
  GETIMPORT R8 K115 [Enum.AccessoryType.Shirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K117 [Enum.AssetType.ShoulderAccessory]
  GETIMPORT R8 K119 [Enum.AccessoryType.Shoulder]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K121 [Enum.AssetType.ShortsAccessory]
  GETIMPORT R8 K123 [Enum.AccessoryType.Shorts]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K125 [Enum.AssetType.SweaterAccessory]
  GETIMPORT R8 K127 [Enum.AccessoryType.Sweater]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K129 [Enum.AssetType.TShirtAccessory]
  GETIMPORT R8 K131 [Enum.AccessoryType.TShirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K133 [Enum.AssetType.WaistAccessory]
  GETIMPORT R8 K135 [Enum.AccessoryType.Waist]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K36 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  NEWTABLE R6 0 50
  LOADK R7 K136 ["ChinRaiser"]
  LOADK R8 K137 ["ChinRaiserUpperLip"]
  LOADK R9 K138 ["Corrugator"]
  LOADK R10 K139 ["EyesLookDown"]
  LOADK R11 K140 ["EyesLookLeft"]
  LOADK R12 K141 ["EyesLookRight"]
  LOADK R13 K142 ["EyesLookUp"]
  LOADK R14 K143 ["FlatPucker"]
  LOADK R15 K144 ["Funneler"]
  LOADK R16 K145 ["JawDrop"]
  LOADK R17 K146 ["JawLeft"]
  LOADK R18 K147 ["JawRight"]
  LOADK R19 K148 ["LeftBrowLowerer"]
  LOADK R20 K149 ["LeftCheekPuff"]
  LOADK R21 K150 ["LeftCheekRaiser"]
  LOADK R22 K151 ["LeftDimpler"]
  SETLIST R6 R7 16 [1]
  LOADK R7 K152 ["LeftEyeClosed"]
  LOADK R8 K153 ["LeftEyeUpperLidRaiser"]
  LOADK R9 K154 ["LeftInnerBrowRaiser"]
  LOADK R10 K155 ["LeftLipCornerDown"]
  LOADK R11 K156 ["LeftLipCornerPuller"]
  LOADK R12 K157 ["LeftLipStretcher"]
  LOADK R13 K158 ["LeftLowerLipDepressor"]
  LOADK R14 K159 ["LeftNoseWrinkler"]
  LOADK R15 K160 ["LeftOuterBrowRaiser"]
  LOADK R16 K161 ["LeftUpperLipRaiser"]
  LOADK R17 K162 ["LipPresser"]
  LOADK R18 K163 ["LipsTogether"]
  LOADK R19 K164 ["LowerLipSuck"]
  LOADK R20 K165 ["MouthLeft"]
  LOADK R21 K166 ["MouthRight"]
  LOADK R22 K167 ["Pucker"]
  SETLIST R6 R7 16 [17]
  LOADK R7 K168 ["RightBrowLowerer"]
  LOADK R8 K169 ["RightCheekPuff"]
  LOADK R9 K170 ["RightCheekRaiser"]
  LOADK R10 K171 ["RightDimpler"]
  LOADK R11 K172 ["RightEyeClosed"]
  LOADK R12 K173 ["RightEyeUpperLidRaiser"]
  LOADK R13 K174 ["RightInnerBrowRaiser"]
  LOADK R14 K175 ["RightLipCornerDown"]
  LOADK R15 K176 ["RightLipCornerPuller"]
  LOADK R16 K177 ["RightLipStretcher"]
  LOADK R17 K178 ["RightLowerLipDepressor"]
  LOADK R18 K179 ["RightNoseWrinkler"]
  LOADK R19 K180 ["RightOuterBrowRaiser"]
  LOADK R20 K181 ["RightUpperLipRaiser"]
  LOADK R21 K182 ["TongueDown"]
  LOADK R22 K183 ["TongueOut"]
  SETLIST R6 R7 16 [33]
  LOADK R7 K184 ["TongueUp"]
  LOADK R8 K185 ["UpperLipSuck"]
  SETLIST R6 R7 2 [49]
  SETTABLEKS R6 R5 K37 ["FACE_CONTROLS_PROPERTIES"]
  SETTABLEKS R4 R5 K38 ["LIMBS"]
  GETTABLEKS R7 R1 K186 ["List"]
  GETTABLEKS R6 R7 K187 ["join"]
  MOVE R7 R4
  NEWTABLE R8 0 2
  LOADK R9 K188 ["Handle"]
  LOADK R10 K189 ["HumanoidRootPart"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  SETTABLEKS R6 R5 K39 ["ALL_ALLOWED_PART_NAMES"]
  DUPTABLE R6 K195 [{"BodyPoints", "EditingToolbar", "BodyPointsToolToolbar", "CageEditingToolToolbar", "MeshEditingModuleControlPointsAdornments"}]
  LOADK R7 K196 ["AvatarPreviewerEditingBodyPoints"]
  SETTABLEKS R7 R6 K190 ["BodyPoints"]
  LOADK R7 K197 ["AvatarPreviewerEditingToolbar"]
  SETTABLEKS R7 R6 K191 ["EditingToolbar"]
  LOADK R7 K198 ["AvatarPreviewerBodyPointsToolToolbar"]
  SETTABLEKS R7 R6 K192 ["BodyPointsToolToolbar"]
  LOADK R7 K199 ["AvatarPreviewerCageEditingToolToolbar"]
  SETTABLEKS R7 R6 K193 ["CageEditingToolToolbar"]
  LOADK R7 K194 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R7 R6 K194 ["MeshEditingModuleControlPointsAdornments"]
  SETTABLEKS R6 R5 K40 ["EDITING_TOOLS_GUI_NAMES"]
  LOADK R6 K200 ["AvatarPreviewerClonedDummy"]
  SETTABLEKS R6 R5 K41 ["CLONED_DUMMY_NAME"]
  LOADK R6 K201 ["MultiSelectPhony"]
  SETTABLEKS R6 R5 K42 ["MULTI_SELECT_PHONY_TARGET"]
  LOADK R6 K202 ["OriginalPosition"]
  SETTABLEKS R6 R5 K43 ["ORIGINAL_POSITION_VALUE"]
  GETIMPORT R6 K205 [CFrame.lookAt]
  LOADK R8 K206 [-5.2]
  LOADN R9 1
  LOADK R10 K207 [-9.2]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K210 [Vector3.new]
  CALL R7 3 1
  LOADK R9 K211 [0.5]
  LOADK R10 K212 [-1.2]
  LOADK R11 K213 [0.85]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K210 [Vector3.new]
  CALL R8 3 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K44 ["DEFAULT_CAMERA_ANGLE"]
  DUPTABLE R6 K220 [{"Eyelashes", "Eyebrows", "Face", "Hair", "Shoes", "Bottoms", "Tops", "Outerwear"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K214 ["Eyelashes"]
  LOADN R7 2
  SETTABLEKS R7 R6 K215 ["Eyebrows"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 3
  JUMP [+1]
  LOADN R7 1
  SETTABLEKS R7 R6 K79 ["Face"]
  LOADN R7 4
  SETTABLEKS R7 R6 K87 ["Hair"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 5
  JUMP [+1]
  LOADN R7 2
  SETTABLEKS R7 R6 K216 ["Shoes"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 6
  JUMP [+1]
  LOADN R7 3
  SETTABLEKS R7 R6 K217 ["Bottoms"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 7
  JUMP [+1]
  LOADN R7 4
  SETTABLEKS R7 R6 K218 ["Tops"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 8
  JUMP [+1]
  LOADN R7 5
  SETTABLEKS R7 R6 K219 ["Outerwear"]
  SETTABLEKS R6 R5 K45 ["PREFERRED_LAYERS"]
  LOADK R6 K221 ["_geo"]
  SETTABLEKS R6 R5 K46 ["BODY_MESH_SUFFIX"]
  RETURN R5 1
