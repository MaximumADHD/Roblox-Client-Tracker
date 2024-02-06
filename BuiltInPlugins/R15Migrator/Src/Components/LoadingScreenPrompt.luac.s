PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showLoadingScreen"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showLoadingScreen"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClick"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClick"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"showLoadingScreen"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showLoadingScreen"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onClick"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["status"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  LOADK R5 K4 [""]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["ScanningScripts"]
  JUMPIFEQ R2 R6 [+11]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["ScanningWorkspace"]
  JUMPIFEQ R2 R6 [+6]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["ConvertingAnimations"]
  JUMPIFNOTEQ R2 R6 [+7]
  LOADK R8 K8 ["AnimationConversion"]
  MOVE R9 R2
  NAMECALL R6 R3 K9 ["getText"]
  CALL R6 3 1
  MOVE R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["new"]
  CALL R6 0 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K17 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R10 K21 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K12 ["Layout"]
  GETIMPORT R10 K23 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K13 ["HorizontalAlignment"]
  GETIMPORT R10 K24 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K14 ["VerticalAlignment"]
  GETTABLEKS R10 R4 K15 ["Spacing"]
  SETTABLEKS R10 R9 K15 ["Spacing"]
  GETTABLEKS R10 R4 K16 ["Padding"]
  SETTABLEKS R10 R9 K16 ["Padding"]
  DUPTABLE R10 K27 [{"Text", "LoadingIndicator"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K30 [{"Text", "AutomaticSize", "LayoutOrder"}]
  SETTABLEKS R5 R13 K25 ["Text"]
  GETIMPORT R14 K32 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K28 ["AutomaticSize"]
  NAMECALL R14 R6 K33 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Text"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K34 [{"LayoutOrder"}]
  NAMECALL R14 R6 K33 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["LoadingIndicator"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K10 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R8 K14 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K5 ["Layout"]
  GETIMPORT R8 K16 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K6 ["HorizontalAlignment"]
  GETIMPORT R8 K17 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K7 ["VerticalAlignment"]
  GETTABLEKS R8 R3 K8 ["Spacing"]
  SETTABLEKS R8 R7 K8 ["Spacing"]
  GETTABLEKS R8 R3 K9 ["Padding"]
  SETTABLEKS R8 R7 K9 ["Padding"]
  DUPTABLE R8 K20 [{"Text", "Button"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K24 [{"TextWrapped", "Text", "AutomaticSize", "LayoutOrder"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K21 ["TextWrapped"]
  LOADK R14 K25 ["InitialScanning"]
  LOADK R15 K26 ["ScanPrompt"]
  NAMECALL R12 R2 K27 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["Text"]
  GETIMPORT R12 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K22 ["AutomaticSize"]
  NAMECALL R12 R4 K30 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K23 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K34 [{"LayoutOrder", "Style", "Size", "Text", "OnClick"}]
  NAMECALL R12 R4 K30 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K23 ["LayoutOrder"]
  LOADK R12 K35 ["Round"]
  SETTABLEKS R12 R11 K31 ["Style"]
  GETTABLEKS R12 R3 K36 ["ButtonSize"]
  SETTABLEKS R12 R11 K32 ["Size"]
  LOADK R14 K25 ["InitialScanning"]
  LOADK R15 K37 ["ScanButton"]
  NAMECALL R12 R2 K27 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["Text"]
  GETTABLEKS R12 R0 K38 ["onClick"]
  SETTABLEKS R12 R11 K33 ["OnClick"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["Button"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["showLoadingScreen"]
  JUMPIFNOT R2 [+4]
  NAMECALL R3 R0 K2 ["renderLoadingScreen"]
  CALL R3 1 -1
  RETURN R3 -1
  NAMECALL R3 R0 K3 ["renderPrompt"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_5:
  DUPTABLE R2 K1 [{"status"}]
  GETTABLEKS R4 R0 K2 ["AnimationConversion"]
  GETTABLEKS R3 R4 K0 ["status"]
  SETTABLEKS R3 R2 K0 ["status"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["LoadingIndicator"]
  GETTABLEKS R8 R5 K14 ["TextLabel"]
  GETTABLEKS R9 R5 K15 ["Button"]
  GETTABLEKS R11 R1 K16 ["Util"]
  GETTABLEKS R10 R11 K17 ["LayoutOrderIterator"]
  GETTABLEKS R13 R0 K18 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K19 ["AnimationConversion"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R11 K20 ["constants"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K21 ["Status"]
  GETTABLEKS R13 R2 K22 ["PureComponent"]
  LOADK R15 K23 ["LoadingScreenPrompt"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_1]
  SETTABLEKS R14 R13 K26 ["init"]
  DUPCLOSURE R14 K27 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K28 ["renderLoadingScreen"]
  DUPCLOSURE R14 K29 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K30 ["renderPrompt"]
  DUPCLOSURE R14 K31 [PROTO_4]
  SETTABLEKS R14 R13 K32 ["render"]
  GETTABLEKS R14 R4 K33 ["withContext"]
  DUPTABLE R15 K36 [{"Stylizer", "Localization"}]
  GETTABLEKS R16 R4 K34 ["Stylizer"]
  SETTABLEKS R16 R15 K34 ["Stylizer"]
  GETTABLEKS R16 R4 K35 ["Localization"]
  SETTABLEKS R16 R15 K35 ["Localization"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  DUPCLOSURE R14 K37 [PROTO_5]
  GETTABLEKS R15 R3 K38 ["connect"]
  MOVE R16 R14
  CALL R15 1 1
  MOVE R16 R13
  CALL R15 1 -1
  RETURN R15 -1
