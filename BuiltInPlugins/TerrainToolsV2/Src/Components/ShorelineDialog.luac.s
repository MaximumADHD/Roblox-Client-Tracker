PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["Suggestion"]
  NAMECALL R0 R0 K1 ["start"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["dismiss"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["cancel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["ShorelineController"]
  GETTABLEKS R4 R1 K3 ["ShorelinesUpgradePercent"]
  GETTABLEKS R5 R1 K4 ["ShorelinesUpgradeSuggestion"]
  LOADB R6 0
  LOADN R7 0
  JUMPIFNOTLE R7 R4 [+6]
  LOADN R7 1
  JUMPIFLT R4 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createFragment"]
  DUPTABLE R8 K8 [{"ShoresUpdater", "ProgressDialog"}]
  GETUPVAL R10 1
  JUMPIF R10 [+37]
  JUMPIFNOT R5 [+36]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K15 [{"Title", "SubText", "ActionText", "OnActionButtonClicked", "OnDismissButtonClicked"}]
  LOADK R14 K16 ["UpgradeShorelines"]
  LOADK R15 K17 ["SuggestionTitle"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Title"]
  LOADK R14 K16 ["UpgradeShorelines"]
  LOADK R15 K19 ["SuggestionDescription"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["SubText"]
  LOADK R14 K16 ["UpgradeShorelines"]
  LOADK R15 K20 ["ActionButton"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K12 ["ActionText"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K13 ["OnActionButtonClicked"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K14 ["OnDismissButtonClicked"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K6 ["ShoresUpdater"]
  JUMPIFNOT R6 [+27]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K23 [{"Title", "SubText", "Progress", "OnCancelButtonClicked"}]
  LOADK R14 K16 ["UpgradeShorelines"]
  LOADK R15 K10 ["Title"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Title"]
  LOADK R14 K24 ["Replace"]
  LOADK R15 K25 ["Replacing"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["SubText"]
  SETTABLEKS R4 R11 K21 ["Progress"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K22 ["OnCancelButtonClicked"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K7 ["ProgressDialog"]
  CALL R7 1 -1
  RETURN R7 -1

PROTO_4:
  DUPTABLE R1 K2 [{"ShorelinesUpgradePercent", "ShorelinesUpgradeSuggestion"}]
  GETTABLEKS R3 R0 K3 ["Tools"]
  GETTABLEKS R2 R3 K0 ["ShorelinesUpgradePercent"]
  SETTABLEKS R2 R1 K0 ["ShorelinesUpgradePercent"]
  GETTABLEKS R3 R0 K3 ["Tools"]
  GETTABLEKS R2 R3 K1 ["ShorelinesUpgradeSuggestion"]
  SETTABLEKS R2 R1 K1 ["ShorelinesUpgradeSuggestion"]
  RETURN R1 1

PROTO_5:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["RoactRodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["ProgressDialog"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K12 ["Components"]
  GETTABLEKS R8 R9 K14 ["SuggestionDialog"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["ShorelineController"]
  CALL R8 1 1
  GETIMPORT R9 K18 [game]
  LOADK R11 K19 ["ShorelinesRemoveDialog"]
  NAMECALL R9 R9 K20 ["GetFastFlag"]
  CALL R9 2 1
  GETTABLEKS R10 R2 K21 ["PureComponent"]
  LOADK R12 K22 ["ShorelineDialog"]
  NAMECALL R10 R10 K23 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K24 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K25 ["render"]
  MOVE R11 R5
  DUPTABLE R12 K28 [{"Analytics", "Localization", "ShorelineController"}]
  GETTABLEKS R13 R4 K26 ["Analytics"]
  SETTABLEKS R13 R12 K26 ["Analytics"]
  GETTABLEKS R13 R4 K27 ["Localization"]
  SETTABLEKS R13 R12 K27 ["Localization"]
  SETTABLEKS R8 R12 K16 ["ShorelineController"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  GETTABLEKS R11 R1 K29 ["connect"]
  DUPCLOSURE R12 K30 [PROTO_4]
  DUPCLOSURE R13 K31 [PROTO_5]
  CALL R11 2 1
  MOVE R12 R10
  CALL R11 1 -1
  RETURN R11 -1
