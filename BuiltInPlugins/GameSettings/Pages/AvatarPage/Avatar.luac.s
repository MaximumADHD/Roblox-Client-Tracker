PROTO_0:
  DUPTABLE R2 K10 [{"AvatarType", "AvatarAnimation", "AvatarCollision", "AvatarAssetOverrides", "AvatarScalingMin", "AvatarScalingMax", "CurrentAvatarType", "AssetOverrideErrors", "OwnerId", "OwnerType"}]
  MOVE R3 R0
  LOADK R4 K11 ["universeAvatarType"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["AvatarType"]
  MOVE R3 R0
  LOADK R4 K12 ["universeAnimationType"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["AvatarAnimation"]
  MOVE R3 R0
  LOADK R4 K13 ["universeCollisionType"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["AvatarCollision"]
  MOVE R3 R0
  LOADK R4 K14 ["universeAvatarAssetOverrides"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["AvatarAssetOverrides"]
  MOVE R3 R0
  LOADK R4 K15 ["universeAvatarMinScales"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["AvatarScalingMin"]
  MOVE R3 R0
  LOADK R4 K16 ["universeAvatarMaxScales"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["AvatarScalingMax"]
  GETTABLEKS R5 R1 K17 ["Settings"]
  GETTABLEKS R4 R5 K18 ["Current"]
  GETTABLEKS R3 R4 K11 ["universeAvatarType"]
  SETTABLEKS R3 R2 K6 ["CurrentAvatarType"]
  GETTABLEKS R5 R1 K17 ["Settings"]
  GETTABLEKS R4 R5 K19 ["Errors"]
  GETTABLEKS R3 R4 K14 ["universeAvatarAssetOverrides"]
  SETTABLEKS R3 R2 K7 ["AssetOverrideErrors"]
  GETTABLEKS R4 R1 K20 ["GameOwnerMetadata"]
  GETTABLEKS R3 R4 K21 ["creatorId"]
  SETTABLEKS R3 R2 K8 ["OwnerId"]
  GETTABLEKS R4 R1 K20 ["GameOwnerMetadata"]
  GETTABLEKS R3 R4 K22 ["creatorType"]
  SETTABLEKS R3 R2 K9 ["OwnerType"]
  RETURN R2 1

PROTO_1:
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETUPVAL R3 1
  LOADK R4 K0 ["universeAvatarType"]
  CALL R3 1 -1
  CALL R2 -1 0
  JUMP [+5]
  GETUPVAL R2 0
  GETUPVAL R3 2
  LOADK R4 K0 ["universeAvatarType"]
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 3
  LOADK R4 K0 ["universeAvatarType"]
  MOVE R5 R0
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["universeAvatarAssetOverrides"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["getErrors"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  GETUPVAL R3 3
  DUPTABLE R4 K2 [{"universeAvatarAssetOverrides"}]
  SETTABLEKS R1 R4 K0 ["universeAvatarAssetOverrides"]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K1 [{"scales"}]
  SETTABLEKS R0 R3 K0 ["scales"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R2 K7 [{"AvatarAnimationChanged", "AvatarCollisionChanged", "AvatarScalingMinChanged", "AvatarScalingMaxChanged", "AvatarTypeChanged", "AvatarAssetOverridesChanged", "SaveScaleBoundaries"}]
  MOVE R3 R0
  LOADK R4 K8 ["universeAnimationType"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["AvatarAnimationChanged"]
  MOVE R3 R0
  LOADK R4 K9 ["universeCollisionType"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["AvatarCollisionChanged"]
  MOVE R3 R0
  LOADK R4 K10 ["universeAvatarMinScales"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["AvatarScalingMinChanged"]
  MOVE R3 R0
  LOADK R4 K11 ["universeAvatarMaxScales"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["AvatarScalingMaxChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K4 ["AvatarTypeChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R3 R2 K5 ["AvatarAssetOverridesChanged"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  SETTABLEKS R3 R2 K6 ["SaveScaleBoundaries"]
  RETURN R2 1

PROTO_5:
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["GameId"]
  JUMPIFNOTEQKN R2 K3 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_6:
  LOADB R2 0
  JUMPIFEQKS R0 K0 ["PlayerChoice"] [+5]
  JUMPIFNOTEQ R1 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OwnerId"]
  GETTABLEKS R3 R1 K2 ["OwnerType"]
  LOADB R4 1
  GETIMPORT R5 K6 [Enum.CreatorType.Group]
  JUMPIFEQ R3 R5 [+9]
  GETUPVAL R5 0
  NAMECALL R5 R5 K7 ["GetUserId"]
  CALL R5 1 1
  JUMPIFEQ R2 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1

PROTO_8:
  GETUPVAL R2 0
  GETIMPORT R4 K1 [game]
  GETTABLEKS R3 R4 K2 ["GameId"]
  JUMPIFNOTEQKN R3 K3 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+17]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["CurrentAvatarType"]
  LOADB R1 0
  JUMPIFEQKS R2 K5 ["PlayerChoice"] [+5]
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["AvatarTypeChanged"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["AvatarTypeChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Mouse"]
  DUPTABLE R4 K4 [{"Morpher"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K23 [{"ThemeData", "IsEnabled", "IsGameShutdownRequired", "AssetOverrideErrors", "Mouse", "IsPlacePublished", "AvatarType", "AvatarAnimation", "AvatarCollision", "AvatarAssetOverrides", "AvatarScalingMin", "AvatarScalingMax", "OnAvatarTypeChanged", "OnAvatarAnimationChanged", "OnAvatarCollisionChanged", "OnAvatarAssetOverridesChanged", "OnAvatarScalingMinChanged", "OnAvatarScalingMaxChanged"}]
  SETTABLEKS R2 R7 K6 ["ThemeData"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["IsEnabled"]
  GETTABLEKS R9 R1 K24 ["CurrentAvatarType"]
  GETTABLEKS R10 R1 K11 ["AvatarType"]
  LOADB R8 0
  JUMPIFEQKS R9 K25 ["PlayerChoice"] [+5]
  JUMPIFNOTEQ R10 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["IsGameShutdownRequired"]
  GETTABLEKS R8 R1 K9 ["AssetOverrideErrors"]
  SETTABLEKS R8 R7 K9 ["AssetOverrideErrors"]
  NAMECALL R8 R3 K26 ["get"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K2 ["Mouse"]
  GETIMPORT R10 K28 [game]
  GETTABLEKS R9 R10 K29 ["GameId"]
  JUMPIFNOTEQKN R9 K30 [0] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K10 ["IsPlacePublished"]
  GETTABLEKS R8 R1 K11 ["AvatarType"]
  SETTABLEKS R8 R7 K11 ["AvatarType"]
  GETTABLEKS R8 R1 K12 ["AvatarAnimation"]
  SETTABLEKS R8 R7 K12 ["AvatarAnimation"]
  GETTABLEKS R8 R1 K13 ["AvatarCollision"]
  SETTABLEKS R8 R7 K13 ["AvatarCollision"]
  GETTABLEKS R8 R1 K14 ["AvatarAssetOverrides"]
  SETTABLEKS R8 R7 K14 ["AvatarAssetOverrides"]
  GETTABLEKS R8 R1 K15 ["AvatarScalingMin"]
  SETTABLEKS R8 R7 K15 ["AvatarScalingMin"]
  GETTABLEKS R8 R1 K16 ["AvatarScalingMax"]
  SETTABLEKS R8 R7 K16 ["AvatarScalingMax"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K17 ["OnAvatarTypeChanged"]
  GETTABLEKS R8 R1 K31 ["AvatarAnimationChanged"]
  SETTABLEKS R8 R7 K18 ["OnAvatarAnimationChanged"]
  GETTABLEKS R8 R1 K32 ["AvatarCollisionChanged"]
  SETTABLEKS R8 R7 K19 ["OnAvatarCollisionChanged"]
  GETTABLEKS R8 R1 K33 ["AvatarAssetOverridesChanged"]
  SETTABLEKS R8 R7 K20 ["OnAvatarAssetOverridesChanged"]
  GETTABLEKS R8 R1 K34 ["AvatarScalingMinChanged"]
  SETTABLEKS R8 R7 K21 ["OnAvatarScalingMinChanged"]
  GETTABLEKS R8 R1 K35 ["AvatarScalingMaxChanged"]
  SETTABLEKS R8 R7 K22 ["OnAvatarScalingMaxChanged"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Morpher"]
  RETURN R4 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  CALL R1 1 -1
  RETURN R1 -1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R3 1
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 1
  RETURN R3 1

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  GETUPVAL R2 1
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R2 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R2 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Actions"]
  GETTABLEKS R8 R9 K17 ["AddChange"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R2 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Actions"]
  GETTABLEKS R9 R10 K18 ["AddWarning"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R2 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Actions"]
  GETTABLEKS R10 R11 K19 ["DiscardWarning"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K16 ["Actions"]
  GETTABLEKS R11 R12 K20 ["SettingsSaveScaleBoundaries"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R2 K15 ["Src"]
  GETTABLEKS R13 R14 K21 ["Util"]
  GETTABLEKS R12 R13 K22 ["AssetOverrides"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R2 K15 ["Src"]
  GETTABLEKS R14 R15 K16 ["Actions"]
  GETTABLEKS R13 R14 K23 ["AddErrors"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R1 K24 ["Components"]
  GETTABLEKS R14 R15 K25 ["RootPanelExternal"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R16 R1 K24 ["Components"]
  GETTABLEKS R15 R16 K26 ["RedirectToAvatarSettings"]
  CALL R14 1 1
  GETIMPORT R16 K5 [script]
  GETTABLEKS R15 R16 K27 ["Name"]
  DUPCLOSURE R16 K28 [PROTO_0]
  DUPCLOSURE R17 K29 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R10
  DUPCLOSURE R18 K30 [PROTO_5]
  DUPCLOSURE R19 K31 [PROTO_6]
  GETTABLEKS R20 R3 K32 ["PureComponent"]
  GETIMPORT R23 K5 [script]
  GETTABLEKS R22 R23 K27 ["Name"]
  NAMECALL R20 R20 K33 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K34 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R21 R20 K35 ["hasPermissionToEdit"]
  DUPCLOSURE R21 K36 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K37 ["createChildren"]
  DUPCLOSURE R21 K38 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R14
  SETTABLEKS R21 R20 K39 ["render"]
  MOVE R21 R6
  DUPTABLE R22 K43 [{"Localization", "Stylizer", "Mouse"}]
  GETTABLEKS R23 R5 K40 ["Localization"]
  SETTABLEKS R23 R22 K40 ["Localization"]
  GETTABLEKS R23 R5 K41 ["Stylizer"]
  SETTABLEKS R23 R22 K41 ["Stylizer"]
  GETTABLEKS R23 R5 K42 ["Mouse"]
  SETTABLEKS R23 R22 K42 ["Mouse"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R2 K15 ["Src"]
  GETTABLEKS R23 R24 K44 ["Networking"]
  GETTABLEKS R22 R23 K45 ["settingFromState"]
  CALL R21 1 1
  GETTABLEKS R22 R4 K46 ["connect"]
  DUPCLOSURE R23 K47 [PROTO_12]
  CAPTURE VAL R21
  CAPTURE VAL R16
  DUPCLOSURE R24 K48 [PROTO_15]
  CAPTURE VAL R7
  CAPTURE VAL R17
  CALL R22 2 1
  MOVE R23 R20
  CALL R22 1 1
  MOVE R20 R22
  SETTABLEKS R15 R20 K49 ["LocalizationId"]
  RETURN R20 1
