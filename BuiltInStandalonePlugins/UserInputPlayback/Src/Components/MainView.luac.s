PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setPluginObject"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["Plugin"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["setLocalizationObject"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K5 ["Localization"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["setPluginStateRoduxActionHandler"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K7 ["SetPluginState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["PluginState"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["PluginState"]
  GETTABLEKS R5 R6 K3 ["Disabled"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R5 R1 K2 ["PluginState"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["PluginState"]
  GETTABLEKS R6 R7 K4 ["Recording"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R6 R1 K2 ["PluginState"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["PluginState"]
  GETTABLEKS R7 R8 K5 ["Playing"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K8 [{"Tabs"}]
  NEWTABLE R9 0 2
  DUPTABLE R10 K12 [{"Label", "ContentComponent", "Disabled", "Key"}]
  LOADK R13 K13 ["Plugin"]
  LOADK R14 K14 ["RecordingTabTitle"]
  NAMECALL R11 R2 K15 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Label"]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K10 ["ContentComponent"]
  OR R11 R3 R5
  SETTABLEKS R11 R10 K3 ["Disabled"]
  GETUPVAL R12 4
  JUMPIFNOT R12 [+2]
  LOADK R11 K16 ["Recording Tab"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K11 ["Key"]
  DUPTABLE R11 K12 [{"Label", "ContentComponent", "Disabled", "Key"}]
  LOADK R14 K13 ["Plugin"]
  LOADK R15 K17 ["PlaybackTabTitle"]
  NAMECALL R12 R2 K15 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K9 ["Label"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K10 ["ContentComponent"]
  OR R12 R3 R4
  SETTABLEKS R12 R11 K3 ["Disabled"]
  GETUPVAL R13 4
  JUMPIFNOT R13 [+2]
  LOADK R12 K18 ["Playback Tab"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K11 ["Key"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K7 ["Tabs"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_2:
  DUPTABLE R2 K1 [{"PluginState"}]
  GETTABLEKS R4 R0 K2 ["common"]
  GETTABLEKS R3 R4 K3 ["pluginState"]
  SETTABLEKS R3 R2 K0 ["PluginState"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"SetPluginState"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetPluginState"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Components"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["TabbedView"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K13 ["PlaybackTabView"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K14 ["RecordTabView"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K16 ["Enums"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K15 ["Util"]
  GETTABLEKS R11 R12 K17 ["DMBridge"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K18 ["Actions"]
  GETTABLEKS R13 R14 K19 ["Common"]
  GETTABLEKS R12 R13 K20 ["SetPluginState"]
  CALL R11 1 1
  GETIMPORT R12 K22 [game]
  LOADK R14 K23 ["UserInputPlaybackPluginFixTabInitiallySelected"]
  NAMECALL R12 R12 K24 ["getFastFlag"]
  CALL R12 2 1
  GETTABLEKS R13 R1 K25 ["PureComponent"]
  LOADK R15 K26 ["MainView"]
  NAMECALL R13 R13 K27 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K28 [PROTO_0]
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K29 ["didMount"]
  DUPCLOSURE R14 K30 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K31 ["render"]
  GETTABLEKS R14 R4 K32 ["withContext"]
  DUPTABLE R15 K35 [{"Plugin", "Localization"}]
  GETTABLEKS R16 R4 K33 ["Plugin"]
  SETTABLEKS R16 R15 K33 ["Plugin"]
  GETTABLEKS R16 R4 K34 ["Localization"]
  SETTABLEKS R16 R15 K34 ["Localization"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  DUPCLOSURE R14 K36 [PROTO_2]
  DUPCLOSURE R15 K37 [PROTO_4]
  CAPTURE VAL R11
  GETTABLEKS R16 R2 K38 ["connect"]
  MOVE R17 R14
  MOVE R18 R15
  CALL R16 2 1
  MOVE R17 R13
  CALL R16 1 -1
  RETURN R16 -1
