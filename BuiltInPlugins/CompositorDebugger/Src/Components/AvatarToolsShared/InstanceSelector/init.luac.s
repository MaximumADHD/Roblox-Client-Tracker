PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Actor"]
  GETUPVAL R1 1
  NAMECALL R1 R1 K2 ["Get"]
  CALL R1 1 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K3 [1] [+19]
  GETUPVAL R3 1
  NAMECALL R3 R3 K2 ["Get"]
  CALL R3 1 1
  GETTABLEN R2 R3 1
  JUMPIFEQ R2 R0 [+12]
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 4
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["IsSelectedInstanceValid"]
  GETTABLEKS R3 R1 K2 ["OnValidSelection"]
  GETTABLEKS R4 R1 K3 ["OnInvalidSelection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["SelectionChanged"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  NAMECALL R5 R5 K5 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K6 ["SelectionChangedHandle"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["SelectionChangedHandle"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["SelectionChangedHandle"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  LOADNIL R1
  RETURN R1 1

PROTO_4:
  DUPTABLE R2 K1 [{"Actor"}]
  GETTABLEKS R4 R0 K2 ["Status"]
  GETTABLEKS R3 R4 K0 ["Actor"]
  SETTABLEKS R3 R2 K0 ["Actor"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K13 [game]
  LOADK R8 K14 ["Selection"]
  NAMECALL R6 R6 K15 ["GetService"]
  CALL R6 2 1
  GETTABLEKS R7 R1 K16 ["PureComponent"]
  LOADK R9 K17 ["InstanceSelector"]
  NAMECALL R7 R7 K18 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R3 K19 ["Util"]
  GETTABLEKS R9 R8 K20 ["Typecheck"]
  GETTABLEKS R10 R9 K21 ["wrap"]
  MOVE R11 R7
  GETIMPORT R12 K1 [script]
  CALL R10 2 0
  DUPCLOSURE R10 K22 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R10 R7 K23 ["didMount"]
  DUPCLOSURE R10 K24 [PROTO_2]
  SETTABLEKS R10 R7 K25 ["willUnmount"]
  DUPCLOSURE R10 K26 [PROTO_3]
  SETTABLEKS R10 R7 K27 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K31 [{"Localization", "Mouse", "Plugin"}]
  GETTABLEKS R12 R4 K28 ["Localization"]
  SETTABLEKS R12 R11 K28 ["Localization"]
  GETTABLEKS R12 R4 K29 ["Mouse"]
  SETTABLEKS R12 R11 K29 ["Mouse"]
  GETTABLEKS R12 R4 K30 ["Plugin"]
  SETTABLEKS R12 R11 K30 ["Plugin"]
  CALL R10 1 1
  MOVE R11 R7
  CALL R10 1 1
  MOVE R7 R10
  DUPCLOSURE R10 K32 [PROTO_4]
  GETTABLEKS R11 R2 K33 ["connect"]
  MOVE R12 R10
  CALL R11 1 1
  MOVE R12 R7
  CALL R11 1 1
  MOVE R7 R11
  RETURN R7 1
