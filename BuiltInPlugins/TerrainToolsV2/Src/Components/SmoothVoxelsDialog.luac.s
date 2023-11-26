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
  GETTABLEKS R3 R1 K2 ["SmoothVoxelsController"]
  GETTABLEKS R4 R1 K3 ["SmoothVoxelsUpgradePercent"]
  GETTABLEKS R5 R1 K4 ["SmoothVoxelsUpgradeSuggestion"]
  LOADB R6 0
  LOADN R7 0
  JUMPIFNOTLE R7 R4 [+6]
  LOADN R7 1
  JUMPIFLT R4 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createFragment"]
  DUPTABLE R8 K8 [{"SmoothVoxelsUpdater", "ProgressDialog"}]
  JUMPIFNOT R5 [+36]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K15 [{"Title", "SubText", "ActionText", "OnActionButtonClicked", "OnDismissButtonClicked"}]
  LOADK R14 K16 ["UpgradeSmoothVoxels"]
  LOADK R15 K17 ["SuggestionTitle"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Title"]
  LOADK R14 K16 ["UpgradeSmoothVoxels"]
  LOADK R15 K19 ["SuggestionDescription"]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["SubText"]
  LOADK R14 K16 ["UpgradeSmoothVoxels"]
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
  SETTABLEKS R9 R8 K6 ["SmoothVoxelsUpdater"]
  JUMPIFNOT R6 [+27]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K23 [{"Title", "SubText", "Progress", "OnCancelButtonClicked"}]
  LOADK R14 K16 ["UpgradeSmoothVoxels"]
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
  DUPTABLE R1 K2 [{"SmoothVoxelsUpgradePercent", "SmoothVoxelsUpgradeSuggestion"}]
  GETTABLEKS R3 R0 K3 ["Tools"]
  GETTABLEKS R2 R3 K0 ["SmoothVoxelsUpgradePercent"]
  SETTABLEKS R2 R1 K0 ["SmoothVoxelsUpgradePercent"]
  GETTABLEKS R3 R0 K3 ["Tools"]
  GETTABLEKS R2 R3 K1 ["SmoothVoxelsUpgradeSuggestion"]
  SETTABLEKS R2 R1 K1 ["SmoothVoxelsUpgradeSuggestion"]
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
  GETTABLEKS R9 R10 K16 ["SmoothVoxelsController"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K17 ["PureComponent"]
  LOADK R11 K18 ["SmoothVoxelsDialog"]
  NAMECALL R9 R9 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K21 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K24 [{"Analytics", "Localization", "SmoothVoxelsController"}]
  GETTABLEKS R12 R4 K22 ["Analytics"]
  SETTABLEKS R12 R11 K22 ["Analytics"]
  GETTABLEKS R12 R4 K23 ["Localization"]
  SETTABLEKS R12 R11 K23 ["Localization"]
  SETTABLEKS R8 R11 K16 ["SmoothVoxelsController"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  GETTABLEKS R10 R1 K25 ["connect"]
  DUPCLOSURE R11 K26 [PROTO_4]
  DUPCLOSURE R12 K27 [PROTO_5]
  CALL R10 2 1
  MOVE R11 R9
  CALL R10 1 -1
  RETURN R10 -1
