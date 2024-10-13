PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["InBounds"]
  GETTABLEKS R3 R1 K2 ["PromptText"]
  GETTABLEKS R4 R1 K3 ["GoToNext"]
  GETTABLEKS R5 R1 K4 ["GoToPrevious"]
  GETTABLEKS R6 R1 K5 ["Localization"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K13 [{"Title", "PromptText", "NextButtonText", "BackButtonText", "NextButtonEnabled", "BackButtonEnabled", "HasBackButton", "GoToNext", "GoToPrevious"}]
  LOADK R12 K14 ["Editor"]
  LOADK R13 K15 ["EditAndPreview"]
  NAMECALL R10 R6 K16 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K7 ["Title"]
  SETTABLEKS R3 R9 K2 ["PromptText"]
  LOADK R12 K17 ["Flow"]
  LOADK R13 K18 ["Next"]
  NAMECALL R10 R6 K16 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K8 ["NextButtonText"]
  LOADK R12 K17 ["Flow"]
  LOADK R13 K19 ["Back"]
  NAMECALL R10 R6 K16 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K9 ["BackButtonText"]
  SETTABLEKS R2 R9 K10 ["NextButtonEnabled"]
  LOADB R10 1
  SETTABLEKS R10 R9 K11 ["BackButtonEnabled"]
  LOADB R10 1
  SETTABLEKS R10 R9 K12 ["HasBackButton"]
  SETTABLEKS R4 R9 K3 ["GoToNext"]
  SETTABLEKS R5 R9 K4 ["GoToPrevious"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["selectItem"]
  DUPTABLE R3 K2 [{"InBounds"}]
  GETTABLEKS R4 R2 K3 ["inBounds"]
  SETTABLEKS R4 R3 K1 ["InBounds"]
  RETURN R3 1

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
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K5 ["Packages"]
  GETTABLEKS R7 R8 K11 ["AvatarToolsShared"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K12 ["Components"]
  GETTABLEKS R8 R7 K13 ["FlowScreenLayout"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["EditAndPreviewFrame"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  GETTABLEKS R10 R3 K17 ["Util"]
  GETTABLEKS R11 R10 K18 ["Typecheck"]
  GETTABLEKS R12 R11 K19 ["wrap"]
  MOVE R13 R9
  GETIMPORT R14 K1 [script]
  CALL R12 2 0
  DUPCLOSURE R12 K20 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R12 R9 K21 ["render"]
  MOVE R12 R5
  DUPTABLE R13 K23 [{"Localization"}]
  GETTABLEKS R14 R4 K22 ["Localization"]
  SETTABLEKS R14 R13 K22 ["Localization"]
  CALL R12 1 1
  MOVE R13 R9
  CALL R12 1 1
  MOVE R9 R12
  DUPCLOSURE R12 K24 [PROTO_1]
  GETTABLEKS R13 R2 K25 ["connect"]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R14 R9
  CALL R13 1 -1
  RETURN R13 -1
