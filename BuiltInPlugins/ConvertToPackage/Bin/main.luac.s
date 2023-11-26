PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Enabled"]
  JUMPIF R0 [+9]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Name"]
  GETUPVAL R1 2
  MOVE R3 R0
  DUPTABLE R4 K6 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
  GETIMPORT R5 K9 [Vector2.new]
  LOADN R6 192
  LOADN R7 88
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["Size"]
  GETIMPORT R5 K9 [Vector2.new]
  LOADN R6 192
  LOADN R7 88
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["MinSize"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Resizable"]
  GETUPVAL R6 3
  NOT R5 R6
  SETTABLEKS R5 R4 K4 ["Modal"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["InitialEnabled"]
  NAMECALL R1 R1 K10 ["CreateQWidgetPluginGui"]
  CALL R1 3 1
  SETUPVAL R1 1
  GETUPVAL R1 1
  GETUPVAL R2 4
  LOADK R4 K11 ["Meta"]
  LOADK R5 K12 ["PluginName"]
  NAMECALL R2 R2 K13 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["Name"]
  GETUPVAL R1 1
  GETUPVAL R2 4
  LOADK R4 K11 ["Meta"]
  LOADK R5 K12 ["PluginName"]
  NAMECALL R2 R2 K13 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K14 ["Title"]
  GETUPVAL R1 1
  GETIMPORT R2 K18 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K16 ["ZIndexBehavior"]
  GETUPVAL R1 1
  LOADK R3 K19 ["Enabled"]
  NAMECALL R1 R1 K20 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NAMECALL R1 R1 K21 ["connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETUPVAL R0 2
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["Enabled"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Store"]
  GETTABLEKS R3 R4 K1 ["new"]
  GETUPVAL R4 2
  DUPTABLE R5 K3 [{"AssetConfigReducer"}]
  DUPTABLE R6 K6 [{"instances", "clonedInstances"}]
  SETTABLEKS R0 R6 K4 ["instances"]
  SETTABLEKS R2 R6 K5 ["clonedInstances"]
  SETTABLEKS R6 R5 K2 ["AssetConfigReducer"]
  NEWTABLE R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["thunkMiddleware"]
  SETLIST R6 R7 1 [1]
  CALL R3 3 1
  GETUPVAL R4 3
  CALL R4 0 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K1 ["new"]
  CALL R5 0 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K16 [{"plugin", "store", "theme", "mouse", "focusGui", "networkInterface", "localization"}]
  GETUPVAL R9 7
  SETTABLEKS R9 R8 K9 ["plugin"]
  SETTABLEKS R3 R8 K10 ["store"]
  SETTABLEKS R4 R8 K11 ["theme"]
  GETUPVAL R9 7
  NAMECALL R9 R9 K17 ["GetMouse"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["mouse"]
  GETUPVAL R9 8
  SETTABLEKS R9 R8 K13 ["focusGui"]
  SETTABLEKS R5 R8 K14 ["networkInterface"]
  GETUPVAL R9 9
  SETTABLEKS R9 R8 K15 ["localization"]
  NEWTABLE R9 0 1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 10
  DUPTABLE R12 K22 [{"onClose", "assetName", "pluginGui", "currentScreen", "instances"}]
  GETUPVAL R13 11
  SETTABLEKS R13 R12 K18 ["onClose"]
  SETTABLEKS R1 R12 K19 ["assetName"]
  GETUPVAL R13 8
  SETTABLEKS R13 R12 K20 ["pluginGui"]
  GETUPVAL R15 12
  GETTABLEKS R14 R15 K23 ["SCREENS"]
  GETTABLEKS R13 R14 K24 ["CONFIGURE_ASSET"]
  SETTABLEKS R13 R12 K21 ["currentScreen"]
  SETTABLEKS R0 R12 K4 ["instances"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K25 ["mount"]
  MOVE R8 R6
  GETUPVAL R9 8
  CALL R7 2 1
  SETUPVAL R7 0
  GETUPVAL R7 8
  LOADB R8 1
  SETTABLEKS R8 R7 K26 ["Enabled"]
  GETUPVAL R7 0
  RETURN R7 1

PROTO_4:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Name"]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R0 2
  CALL R0 0 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["signals"]
  GETTABLEKS R0 R1 K1 ["PackageUIService.OnOpenConvertToPackagePlugin"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K3 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["DebugBuiltInPluginModalsNotBlocking"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R3 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R3 K9 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Rodux"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R3 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K13 ["ContextServices"]
  GETTABLEKS R9 R3 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R3 K14 ["Src"]
  GETTABLEKS R11 R12 K16 ["Resources"]
  GETTABLEKS R10 R11 K17 ["MakeTheme"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R11 R8 K18 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R3 K14 ["Src"]
  GETTABLEKS R13 R14 K19 ["Reducers"]
  GETTABLEKS R12 R13 K20 ["MainReducer"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R3 K14 ["Src"]
  GETTABLEKS R14 R15 K21 ["Networking"]
  GETTABLEKS R13 R14 K22 ["NetworkInterface"]
  CALL R12 1 1
  GETTABLEKS R15 R3 K14 ["Src"]
  GETTABLEKS R14 R15 K16 ["Resources"]
  GETTABLEKS R13 R14 K23 ["SourceStrings"]
  GETTABLEKS R16 R3 K14 ["Src"]
  GETTABLEKS R15 R16 K16 ["Resources"]
  GETTABLEKS R14 R15 K24 ["LocalizedStrings"]
  GETTABLEKS R15 R7 K25 ["Localization"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R3 K14 ["Src"]
  GETTABLEKS R18 R19 K26 ["Components"]
  GETTABLEKS R17 R18 K27 ["ServiceWrapper"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R21 R3 K14 ["Src"]
  GETTABLEKS R20 R21 K26 ["Components"]
  GETTABLEKS R19 R20 K28 ["ConvertToPackageWindow"]
  GETTABLEKS R18 R19 K29 ["ScreenSelect"]
  CALL R17 1 1
  GETTABLEKS R18 R15 K30 ["new"]
  DUPTABLE R19 K34 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R13 R19 K31 ["stringResourceTable"]
  SETTABLEKS R14 R19 K32 ["translationResourceTable"]
  GETTABLEKS R20 R3 K35 ["Name"]
  SETTABLEKS R20 R19 K33 ["pluginName"]
  CALL R18 1 1
  LOADNIL R19
  LOADNIL R20
  NEWCLOSURE R21 P0
  CAPTURE VAL R3
  CAPTURE REF R20
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R18
  CAPTURE REF R19
  CAPTURE VAL R4
  NEWCLOSURE R22 P1
  CAPTURE REF R19
  CAPTURE VAL R4
  CAPTURE REF R20
  NEWCLOSURE R23 P2
  CAPTURE REF R19
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R0
  CAPTURE REF R20
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R22
  CAPTURE VAL R10
  NEWCLOSURE R24 P3
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R23
  GETTABLEKS R25 R3 K35 ["Name"]
  SETTABLEKS R25 R0 K35 ["Name"]
  MOVE R25 R21
  CALL R25 0 0
  GETTABLEKS R26 R1 K37 ["signals"]
  GETTABLEKS R25 R26 K36 ["PackageUIService.OnOpenConvertToPackagePlugin"]
  NEWCLOSURE R27 P4
  CAPTURE VAL R23
  NAMECALL R25 R25 K38 ["Connect"]
  CALL R25 2 0
  CLOSEUPVALS R19
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_6]
  RETURN R0 1
