PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R1 0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useState"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["minSearchHeaderHeight"]
  CALL R3 1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["useToggleState"]
  LOADB R7 0
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["useState"]
  LOADB R8 0
  CALL R7 1 2
  GETUPVAL R9 5
  LOADK R10 K5 ["Frame"]
  NEWTABLE R11 4 0
  LOADN R12 0
  SETTABLEKS R12 R11 K6 ["BorderSizePixel"]
  GETIMPORT R12 K9 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Size"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K11 ["Tag"]
  LOADK R13 K12 ["FindReplaceAll-TopPadM FindReplaceAll-BG-Surface100 data-testid=MainViewFrame"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K16 [{"DropdownOverlay", "WidgetHeader", "WidgetBody"}]
  GETUPVAL R13 5
  LOADK R14 K5 ["Frame"]
  NEWTABLE R15 8 0
  GETIMPORT R16 K9 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K10 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  LOADN R16 3
  SETTABLEKS R16 R15 K18 ["ZIndex"]
  SETTABLEKS R2 R15 K19 ["ref"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["Tag"]
  LOADK R17 K20 ["FindReplaceAll-SidePadM"]
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["DropdownOverlay"]
  GETUPVAL R13 5
  GETUPVAL R14 6
  DUPTABLE R15 K28 [{"LayoutOrder", "ZIndex", "dropdownOverlay", "onSearchHeaderSizeChange", "disableConfirmationDialog", "showReplace", "setShowReplace", "resultManager"}]
  MOVE R16 R0
  CALL R16 0 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  LOADN R16 2
  SETTABLEKS R16 R15 K18 ["ZIndex"]
  SETTABLEKS R2 R15 K22 ["dropdownOverlay"]
  SETTABLEKS R5 R15 K23 ["onSearchHeaderSizeChange"]
  GETTABLEKS R16 R6 K29 ["disable"]
  SETTABLEKS R16 R15 K24 ["disableConfirmationDialog"]
  SETTABLEKS R7 R15 K25 ["showReplace"]
  SETTABLEKS R8 R15 K26 ["setShowReplace"]
  SETTABLEKS R1 R15 K27 ["resultManager"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["WidgetHeader"]
  GETUPVAL R13 5
  GETUPVAL R14 7
  DUPTABLE R15 K33 [{"LayoutOrder", "ZIndex", "headerOffset", "confirmationDialogVisible", "toggleConfirmationDialog", "showReplace", "resultManager"}]
  MOVE R16 R0
  CALL R16 0 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  LOADN R16 2
  SETTABLEKS R16 R15 K18 ["ZIndex"]
  SETTABLEKS R3 R15 K30 ["headerOffset"]
  GETTABLEKS R16 R6 K34 ["enabled"]
  SETTABLEKS R16 R15 K31 ["confirmationDialogVisible"]
  GETTABLEKS R16 R6 K35 ["toggle"]
  SETTABLEKS R16 R15 K32 ["toggleConfirmationDialog"]
  SETTABLEKS R7 R15 K25 ["showReplace"]
  SETTABLEKS R1 R15 K27 ["resultManager"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K15 ["WidgetBody"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K8 ["ReactUtils"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K9 ["createNextOrder"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["FindReplaceWidgetHeader"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K13 ["FindReplaceWidgetBody"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["StyleConstants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K16 ["Hooks"]
  GETTABLEKS R8 R9 K17 ["useResultsManager"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K18 ["createElement"]
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R9 1
