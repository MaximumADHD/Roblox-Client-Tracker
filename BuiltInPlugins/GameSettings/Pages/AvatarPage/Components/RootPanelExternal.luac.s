PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBinding"]
  LOADN R2 0
  CALL R1 1 2
  SETTABLEKS R1 R0 K1 ["absoluteSizeChange"]
  SETTABLEKS R2 R0 K2 ["updateAbsoluteSizeChange"]
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 1
  LOADN R3 0
  LOADN R4 0
  MOVE R5 R0
  CALL R1 4 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateAbsoluteSizeChange"]
  GETTABLEKS R3 R0 K1 ["AbsoluteContentSize"]
  GETTABLEKS R2 R3 K2 ["y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"templates"}]
  NEWTABLE R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["fromUniverseData"]
  GETTABLEKS R4 R0 K3 ["props"]
  CALL R3 1 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K0 ["templates"]
  GETTABLEKS R3 R0 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["ThemeData"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  LOADK R4 K6 ["Frame"]
  DUPTABLE R5 K10 [{"Size", "BorderSizePixel", "BackgroundTransparency"}]
  GETTABLEKS R6 R0 K11 ["absoluteSizeChange"]
  DUPCLOSURE R8 K12 [PROTO_1]
  NAMECALL R6 R6 K13 ["map"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Size"]
  LOADN R6 0
  SETTABLEKS R6 R5 K8 ["BorderSizePixel"]
  LOADN R6 1
  SETTABLEKS R6 R5 K9 ["BackgroundTransparency"]
  NEWTABLE R6 0 3
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K14 ["UIListLayout"]
  NEWTABLE R9 1 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K15 ["Change"]
  GETTABLEKS R10 R11 K16 ["AbsoluteContentSize"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  SETTABLE R11 R9 R10
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"ThemeData", "StateTemplates", "IsEnabled", "IsGameShutdownRequired", "AssetOverrideErrors", "Mouse", "IsPlacePublished", "clobberTemplate"}]
  DUPTABLE R11 K26 [{"theme"}]
  SETTABLEKS R2 R11 K25 ["theme"]
  SETTABLEKS R11 R10 K4 ["ThemeData"]
  SETTABLEKS R1 R10 K17 ["StateTemplates"]
  GETTABLEKS R12 R0 K3 ["props"]
  GETTABLEKS R11 R12 K18 ["IsEnabled"]
  SETTABLEKS R11 R10 K18 ["IsEnabled"]
  GETTABLEKS R12 R0 K3 ["props"]
  GETTABLEKS R11 R12 K19 ["IsGameShutdownRequired"]
  SETTABLEKS R11 R10 K19 ["IsGameShutdownRequired"]
  GETTABLEKS R12 R0 K3 ["props"]
  GETTABLEKS R11 R12 K20 ["AssetOverrideErrors"]
  SETTABLEKS R11 R10 K20 ["AssetOverrideErrors"]
  GETTABLEKS R12 R0 K3 ["props"]
  GETTABLEKS R11 R12 K21 ["Mouse"]
  SETTABLEKS R11 R10 K21 ["Mouse"]
  GETTABLEKS R12 R0 K3 ["props"]
  GETTABLEKS R11 R12 K22 ["IsPlacePublished"]
  SETTABLEKS R11 R10 K22 ["IsPlacePublished"]
  NEWCLOSURE R11 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K23 ["clobberTemplate"]
  CALL R8 2 1
  GETIMPORT R10 K28 [game]
  LOADK R12 K29 ["DisableGameSettingsAvatarPreview"]
  NAMECALL R10 R10 K30 ["GetFastFlag"]
  CALL R10 2 1
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+12]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K31 [{"StateTemplates"}]
  GETTABLEKS R13 R0 K3 ["props"]
  GETTABLEKS R12 R13 K17 ["StateTemplates"]
  SETTABLEKS R12 R11 K17 ["StateTemplates"]
  CALL R9 2 1
  SETLIST R6 R7 3 [1]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  JUMPIFNOT R1 [+86]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["IsEnabled"]
  JUMPIFNOT R2 [+81]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["fromUniverseData"]
  GETTABLEKS R3 R0 K0 ["props"]
  CALL R2 1 1
  MOVE R5 R2
  NAMECALL R3 R1 K3 ["isAvatarTypeEqualTo"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["OnAvatarTypeChanged"]
  GETTABLEKS R4 R1 K5 ["RigTypeValue"]
  CALL R3 1 0
  MOVE R5 R2
  NAMECALL R3 R1 K6 ["isAnimationEqualTo"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["OnAvatarAnimationChanged"]
  GETTABLEKS R4 R1 K8 ["AnimationValue"]
  CALL R3 1 0
  MOVE R5 R2
  NAMECALL R3 R1 K9 ["isCollisionEqualTo"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K10 ["OnAvatarCollisionChanged"]
  GETTABLEKS R4 R1 K11 ["CollisionValue"]
  CALL R3 1 0
  MOVE R5 R2
  NAMECALL R3 R1 K12 ["areAssetsEqualTo"]
  CALL R3 2 1
  JUMPIF R3 [+8]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K13 ["OnAvatarAssetOverridesChanged"]
  NAMECALL R4 R1 K14 ["extractAssetOverridesForSaving"]
  CALL R4 1 -1
  CALL R3 -1 0
  MOVE R5 R2
  NAMECALL R3 R1 K15 ["areMinScalesEqualTo"]
  CALL R3 2 1
  JUMPIF R3 [+8]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K16 ["OnAvatarScalingMinChanged"]
  NAMECALL R4 R1 K17 ["extractScalingMinForSaving"]
  CALL R4 1 -1
  CALL R3 -1 0
  MOVE R5 R2
  NAMECALL R3 R1 K18 ["areMaxScalesEqualTo"]
  CALL R3 2 1
  JUMPIF R3 [+8]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K19 ["OnAvatarScalingMaxChanged"]
  NAMECALL R4 R1 K20 ["extractScalingMaxForSaving"]
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Util"]
  GETTABLEKS R4 R5 K8 ["StateModelTemplate"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["AvatarUpdater"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["MorpherTemplateContainer"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K12 ["Component"]
  LOADK R8 K13 ["ComponentRootPanelExternal"]
  NAMECALL R6 R6 K14 ["extend"]
  CALL R6 2 1
  LOADNIL R7
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R6 K16 ["init"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE REF R7
  CAPTURE VAL R4
  SETTABLEKS R8 R6 K17 ["render"]
  DUPCLOSURE R7 K18 [PROTO_5]
  CAPTURE VAL R3
  CLOSEUPVALS R7
  RETURN R6 1
