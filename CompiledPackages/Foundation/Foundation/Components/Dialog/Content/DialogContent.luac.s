PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 2
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  GETUPVAL R6 4
  MOVE R7 R0
  DUPTABLE R8 K5 [{"scroll", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "tag"}]
  DUPTABLE R9 K8 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R10 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K6 ["AutomaticCanvasSize"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K7 ["CanvasSize"]
  SETTABLEKS R9 R8 K1 ["scroll"]
  SETTABLEKS R2 R8 K2 ["onAbsoluteCanvasSizeChanged"]
  SETTABLEKS R2 R8 K3 ["onAbsoluteWindowSizeChanged"]
  GETTABLEKS R10 R3 K16 ["content"]
  GETTABLEKS R9 R10 K4 ["tag"]
  SETTABLEKS R9 R8 K4 ["tag"]
  CALL R6 2 1
  DUPTABLE R7 K19 [{"ScrollPadding", "ScrollContent"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K20 ["UIPadding"]
  DUPTABLE R10 K22 [{"PaddingRight"}]
  GETIMPORT R11 K24 [UDim.new]
  LOADN R12 0
  MOVE R13 R1
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["ScrollPadding"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K25 ["Fragment"]
  LOADNIL R10
  GETTABLEKS R11 R0 K26 ["children"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["ScrollContent"]
  CALL R4 3 -1
  RETURN R4 -1

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
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R8 1
