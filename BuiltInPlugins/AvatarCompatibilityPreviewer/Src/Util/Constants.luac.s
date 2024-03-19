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
  DUPTABLE R5 K46 [{"SOURCE_BUILTIN", "SOURCE_INSTANCE", "LUAU_ANALYZE_ERROR", "BODY_PREVIEW_PATH", "HEAD_PREVIEW_PATH", "PEDESTAL_PATH", "ATTRIBUTE_PREFIX", "ATTRIBUTE_CREATED_BY_AUTO_SETUP", "REFERENCE_VALUE_NAME", "ASSET_TYPE_TO_ACCESSORY_TYPE", "FACE_CONTROLS_PROPERTIES", "LIMBS", "ALL_ALLOWED_PART_NAMES", "EDITING_TOOLS_GUI_NAMES", "CAGE_EDITING_DEFAULT_FALLOFF", "MULTI_SELECT_PHONY_TARGET", "DEFAULT_CAMERA_ANGLE", "PREFERRED_LAYERS", "BODY_MESH_SUFFIX"}]
  LOADK R6 K47 ["builtin"]
  SETTABLEKS R6 R5 K27 ["SOURCE_BUILTIN"]
  LOADK R6 K48 ["instance"]
  SETTABLEKS R6 R5 K28 ["SOURCE_INSTANCE"]
  LOADK R6 K49 ["Assertion for Luau typechecking"]
  SETTABLEKS R6 R5 K29 ["LUAU_ANALYZE_ERROR"]
  LOADK R6 K50 ["rbxasset://models/AvatarCompatibilityPreviewer/bodyPreview.rbxm"]
  SETTABLEKS R6 R5 K30 ["BODY_PREVIEW_PATH"]
  LOADK R6 K51 ["rbxasset://models/AvatarCompatibilityPreviewer/headPreview.rbxm"]
  SETTABLEKS R6 R5 K31 ["HEAD_PREVIEW_PATH"]
  LOADK R6 K52 ["rbxasset://models/AvatarCompatibilityPreviewer/pedestal.rbxm"]
  SETTABLEKS R6 R5 K32 ["PEDESTAL_PATH"]
  LOADK R6 K53 ["RBX_AvatarPreviewer_"]
  SETTABLEKS R6 R5 K33 ["ATTRIBUTE_PREFIX"]
  MOVE R7 R2
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K54 ["RBX_AutoSetupped"]
  JUMP [+1]
  LOADK R6 K55 ["AutoSetupped"]
  SETTABLEKS R6 R5 K34 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  LOADK R6 K56 ["AvatarPreviewer_OriginalObjectReference_"]
  SETTABLEKS R6 R5 K35 ["REFERENCE_VALUE_NAME"]
  NEWTABLE R6 32 0
  GETIMPORT R7 K60 [Enum.AssetType.BackAccessory]
  GETIMPORT R8 K63 [Enum.AccessoryType.Back]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K65 [Enum.AssetType.DressSkirtAccessory]
  GETIMPORT R8 K67 [Enum.AccessoryType.DressSkirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K69 [Enum.AssetType.EyebrowAccessory]
  GETIMPORT R8 K71 [Enum.AccessoryType.Eyebrow]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K73 [Enum.AssetType.EyelashAccessory]
  GETIMPORT R8 K75 [Enum.AccessoryType.Eyelash]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K77 [Enum.AssetType.FaceAccessory]
  GETIMPORT R8 K79 [Enum.AccessoryType.Face]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K81 [Enum.AssetType.FrontAccessory]
  GETIMPORT R8 K83 [Enum.AccessoryType.Front]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K85 [Enum.AssetType.HairAccessory]
  GETIMPORT R8 K87 [Enum.AccessoryType.Hair]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K89 [Enum.AssetType.Hat]
  GETIMPORT R8 K90 [Enum.AccessoryType.Hat]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K92 [Enum.AssetType.JacketAccessory]
  GETIMPORT R8 K94 [Enum.AccessoryType.Jacket]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K96 [Enum.AssetType.LeftShoeAccessory]
  GETIMPORT R8 K98 [Enum.AccessoryType.LeftShoe]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K100 [Enum.AssetType.NeckAccessory]
  GETIMPORT R8 K102 [Enum.AccessoryType.Neck]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K104 [Enum.AssetType.PantsAccessory]
  GETIMPORT R8 K106 [Enum.AccessoryType.Pants]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K108 [Enum.AssetType.RightShoeAccessory]
  GETIMPORT R8 K110 [Enum.AccessoryType.RightShoe]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K112 [Enum.AssetType.ShirtAccessory]
  GETIMPORT R8 K114 [Enum.AccessoryType.Shirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K116 [Enum.AssetType.ShoulderAccessory]
  GETIMPORT R8 K118 [Enum.AccessoryType.Shoulder]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K120 [Enum.AssetType.ShortsAccessory]
  GETIMPORT R8 K122 [Enum.AccessoryType.Shorts]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K124 [Enum.AssetType.SweaterAccessory]
  GETIMPORT R8 K126 [Enum.AccessoryType.Sweater]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K128 [Enum.AssetType.TShirtAccessory]
  GETIMPORT R8 K130 [Enum.AccessoryType.TShirt]
  SETTABLE R8 R6 R7
  GETIMPORT R7 K132 [Enum.AssetType.WaistAccessory]
  GETIMPORT R8 K134 [Enum.AccessoryType.Waist]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K36 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  NEWTABLE R6 0 50
  LOADK R7 K135 ["ChinRaiser"]
  LOADK R8 K136 ["ChinRaiserUpperLip"]
  LOADK R9 K137 ["Corrugator"]
  LOADK R10 K138 ["EyesLookDown"]
  LOADK R11 K139 ["EyesLookLeft"]
  LOADK R12 K140 ["EyesLookRight"]
  LOADK R13 K141 ["EyesLookUp"]
  LOADK R14 K142 ["FlatPucker"]
  LOADK R15 K143 ["Funneler"]
  LOADK R16 K144 ["JawDrop"]
  LOADK R17 K145 ["JawLeft"]
  LOADK R18 K146 ["JawRight"]
  LOADK R19 K147 ["LeftBrowLowerer"]
  LOADK R20 K148 ["LeftCheekPuff"]
  LOADK R21 K149 ["LeftCheekRaiser"]
  LOADK R22 K150 ["LeftDimpler"]
  SETLIST R6 R7 16 [1]
  LOADK R7 K151 ["LeftEyeClosed"]
  LOADK R8 K152 ["LeftEyeUpperLidRaiser"]
  LOADK R9 K153 ["LeftInnerBrowRaiser"]
  LOADK R10 K154 ["LeftLipCornerDown"]
  LOADK R11 K155 ["LeftLipCornerPuller"]
  LOADK R12 K156 ["LeftLipStretcher"]
  LOADK R13 K157 ["LeftLowerLipDepressor"]
  LOADK R14 K158 ["LeftNoseWrinkler"]
  LOADK R15 K159 ["LeftOuterBrowRaiser"]
  LOADK R16 K160 ["LeftUpperLipRaiser"]
  LOADK R17 K161 ["LipPresser"]
  LOADK R18 K162 ["LipsTogether"]
  LOADK R19 K163 ["LowerLipSuck"]
  LOADK R20 K164 ["MouthLeft"]
  LOADK R21 K165 ["MouthRight"]
  LOADK R22 K166 ["Pucker"]
  SETLIST R6 R7 16 [17]
  LOADK R7 K167 ["RightBrowLowerer"]
  LOADK R8 K168 ["RightCheekPuff"]
  LOADK R9 K169 ["RightCheekRaiser"]
  LOADK R10 K170 ["RightDimpler"]
  LOADK R11 K171 ["RightEyeClosed"]
  LOADK R12 K172 ["RightEyeUpperLidRaiser"]
  LOADK R13 K173 ["RightInnerBrowRaiser"]
  LOADK R14 K174 ["RightLipCornerDown"]
  LOADK R15 K175 ["RightLipCornerPuller"]
  LOADK R16 K176 ["RightLipStretcher"]
  LOADK R17 K177 ["RightLowerLipDepressor"]
  LOADK R18 K178 ["RightNoseWrinkler"]
  LOADK R19 K179 ["RightOuterBrowRaiser"]
  LOADK R20 K180 ["RightUpperLipRaiser"]
  LOADK R21 K181 ["TongueDown"]
  LOADK R22 K182 ["TongueOut"]
  SETLIST R6 R7 16 [33]
  LOADK R7 K183 ["TongueUp"]
  LOADK R8 K184 ["UpperLipSuck"]
  SETLIST R6 R7 2 [49]
  SETTABLEKS R6 R5 K37 ["FACE_CONTROLS_PROPERTIES"]
  SETTABLEKS R4 R5 K38 ["LIMBS"]
  GETTABLEKS R7 R1 K185 ["List"]
  GETTABLEKS R6 R7 K186 ["join"]
  MOVE R7 R4
  NEWTABLE R8 0 2
  LOADK R9 K187 ["Handle"]
  LOADK R10 K188 ["HumanoidRootPart"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  SETTABLEKS R6 R5 K39 ["ALL_ALLOWED_PART_NAMES"]
  DUPTABLE R6 K192 [{"BodyPoints", "EditingToolbar", "BodyPointsToolToolbar"}]
  LOADK R7 K193 ["AvatarPreviewerEditingBodyPoints"]
  SETTABLEKS R7 R6 K189 ["BodyPoints"]
  LOADK R7 K194 ["AvatarPreviewerEditingToolbar"]
  SETTABLEKS R7 R6 K190 ["EditingToolbar"]
  LOADK R7 K195 ["AvatarPreviewerBodyPointsToolToolbar"]
  SETTABLEKS R7 R6 K191 ["BodyPointsToolToolbar"]
  SETTABLEKS R6 R5 K40 ["EDITING_TOOLS_GUI_NAMES"]
  LOADK R6 K196 [0.5]
  SETTABLEKS R6 R5 K41 ["CAGE_EDITING_DEFAULT_FALLOFF"]
  LOADK R6 K197 ["MultiSelectPhony"]
  SETTABLEKS R6 R5 K42 ["MULTI_SELECT_PHONY_TARGET"]
  GETIMPORT R6 K200 [CFrame.lookAt]
  LOADK R8 K201 [-5.2]
  LOADN R9 1
  LOADK R10 K202 [-9.2]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K205 [Vector3.new]
  CALL R7 3 1
  LOADK R9 K196 [0.5]
  LOADK R10 K206 [-1.2]
  LOADK R11 K207 [0.85]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K205 [Vector3.new]
  CALL R8 3 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K43 ["DEFAULT_CAMERA_ANGLE"]
  DUPTABLE R6 K214 [{"Eyelashes", "Eyebrows", "Hair", "Face", "Shoes", "Bottoms", "Tops", "Outerwear"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K208 ["Eyelashes"]
  LOADN R7 2
  SETTABLEKS R7 R6 K209 ["Eyebrows"]
  LOADN R7 3
  SETTABLEKS R7 R6 K86 ["Hair"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 4
  JUMP [+1]
  LOADN R7 1
  SETTABLEKS R7 R6 K78 ["Face"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 5
  JUMP [+1]
  LOADN R7 2
  SETTABLEKS R7 R6 K210 ["Shoes"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 6
  JUMP [+1]
  LOADN R7 3
  SETTABLEKS R7 R6 K211 ["Bottoms"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 7
  JUMP [+1]
  LOADN R7 4
  SETTABLEKS R7 R6 K212 ["Tops"]
  MOVE R8 R3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  LOADN R7 8
  JUMP [+1]
  LOADN R7 5
  SETTABLEKS R7 R6 K213 ["Outerwear"]
  SETTABLEKS R6 R5 K44 ["PREFERRED_LAYERS"]
  LOADK R6 K215 ["_geo"]
  SETTABLEKS R6 R5 K45 ["BODY_MESH_SUFFIX"]
  RETURN R5 1
