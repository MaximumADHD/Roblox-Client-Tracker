PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["findActivationData"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["findActivationData"]
  GETTABLEKS R1 R2 K1 ["showReplace"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["useRef"]
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["useState"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["minSearchHeaderHeight"]
  CALL R4 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["useCallback"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K4 ["useToggleState"]
  LOADB R8 0
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K1 ["useState"]
  LOADB R9 0
  CALL R8 1 2
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["useEffect"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE VAL R9
  NEWTABLE R12 0 1
  GETTABLEKS R13 R0 K6 ["findActivationData"]
  SETLIST R12 R13 1 [1]
  CALL R10 2 0
  GETUPVAL R10 5
  LOADK R11 K7 ["Frame"]
  NEWTABLE R12 4 0
  LOADN R13 0
  SETTABLEKS R13 R12 K8 ["BorderSizePixel"]
  GETIMPORT R13 K11 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K12 ["Size"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["Tag"]
  LOADK R14 K14 ["FindReplaceAll-TopPadM FindReplaceAll-BG-Surface100 data-testid=MainViewFrame"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K18 [{"DropdownOverlay", "WidgetHeader", "WidgetBody"}]
  GETUPVAL R14 5
  LOADK R15 K7 ["Frame"]
  NEWTABLE R16 8 0
  GETIMPORT R17 K11 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K12 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K19 ["BackgroundTransparency"]
  LOADN R17 3
  SETTABLEKS R17 R16 K20 ["ZIndex"]
  SETTABLEKS R3 R16 K21 ["ref"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K13 ["Tag"]
  LOADK R18 K22 ["FindReplaceAll-SidePadM"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R13 K15 ["DropdownOverlay"]
  GETUPVAL R14 5
  GETUPVAL R15 6
  DUPTABLE R16 K30 [{"LayoutOrder", "ZIndex", "dropdownOverlay", "onSearchHeaderSizeChange", "disableConfirmationDialog", "showReplace", "setShowReplace", "resultManager", "findActivationData"}]
  MOVE R17 R1
  CALL R17 0 1
  SETTABLEKS R17 R16 K23 ["LayoutOrder"]
  LOADN R17 2
  SETTABLEKS R17 R16 K20 ["ZIndex"]
  SETTABLEKS R3 R16 K24 ["dropdownOverlay"]
  SETTABLEKS R6 R16 K25 ["onSearchHeaderSizeChange"]
  GETTABLEKS R17 R7 K31 ["disable"]
  SETTABLEKS R17 R16 K26 ["disableConfirmationDialog"]
  SETTABLEKS R8 R16 K27 ["showReplace"]
  SETTABLEKS R9 R16 K28 ["setShowReplace"]
  SETTABLEKS R2 R16 K29 ["resultManager"]
  GETTABLEKS R17 R0 K6 ["findActivationData"]
  SETTABLEKS R17 R16 K6 ["findActivationData"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K16 ["WidgetHeader"]
  GETUPVAL R14 5
  GETUPVAL R15 7
  DUPTABLE R16 K35 [{"LayoutOrder", "ZIndex", "headerOffset", "confirmationDialogVisible", "toggleConfirmationDialog", "showReplace", "resultManager"}]
  MOVE R17 R1
  CALL R17 0 1
  SETTABLEKS R17 R16 K23 ["LayoutOrder"]
  LOADN R17 2
  SETTABLEKS R17 R16 K20 ["ZIndex"]
  SETTABLEKS R4 R16 K32 ["headerOffset"]
  GETTABLEKS R17 R7 K36 ["enabled"]
  SETTABLEKS R17 R16 K33 ["confirmationDialogVisible"]
  GETTABLEKS R17 R7 K37 ["toggle"]
  SETTABLEKS R17 R16 K34 ["toggleConfirmationDialog"]
  SETTABLEKS R8 R16 K27 ["showReplace"]
  SETTABLEKS R2 R16 K29 ["resultManager"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["WidgetBody"]
  CALL R10 3 -1
  RETURN R10 -1

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
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R9 1
