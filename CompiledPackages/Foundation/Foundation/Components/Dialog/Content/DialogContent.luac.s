PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 2
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R4 2
  CALL R4 0 1
  LOADK R6 K0 ["%*--content"]
  GETTABLEKS R8 R4 K1 ["testId"]
  NAMECALL R6 R6 K2 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R0 K1 ["testId"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 4
  GETUPVAL R7 5
  MOVE R8 R0
  DUPTABLE R9 K8 [{"scroll", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "tag"}]
  DUPTABLE R10 K11 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R11 K15 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K9 ["AutomaticCanvasSize"]
  GETIMPORT R11 K18 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["CanvasSize"]
  SETTABLEKS R10 R9 K4 ["scroll"]
  SETTABLEKS R2 R9 K5 ["onAbsoluteCanvasSizeChanged"]
  SETTABLEKS R2 R9 K6 ["onAbsoluteWindowSizeChanged"]
  GETTABLEKS R11 R3 K19 ["content"]
  GETTABLEKS R10 R11 K7 ["tag"]
  SETTABLEKS R10 R9 K7 ["tag"]
  CALL R7 2 1
  DUPTABLE R8 K22 [{"ScrollPadding", "ScrollContent"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K23 ["UIPadding"]
  DUPTABLE R11 K25 [{"PaddingRight"}]
  GETIMPORT R12 K27 [UDim.new]
  LOADN R13 0
  MOVE R14 R1
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["PaddingRight"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["ScrollPadding"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K3 ["createElement"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K28 ["Fragment"]
  LOADNIL R11
  GETTABLEKS R12 R0 K29 ["children"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["ScrollContent"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["ScrollView"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["withCommonProps"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K13 ["useScrollBarPadding"]
  CALL R6 1 1
  GETIMPORT R8 K6 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K14 ["useDialogVariants"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K14 ["useDialogVariants"]
  GETIMPORT R8 K6 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K15 ["useDialog"]
  CALL R8 1 1
  DUPCLOSURE R9 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R9 1
