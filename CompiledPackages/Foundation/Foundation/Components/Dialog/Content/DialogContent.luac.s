PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  MOVE R6 R0
  DUPTABLE R7 K5 [{"scroll", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged", "tag"}]
  DUPTABLE R8 K8 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R9 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K6 ["AutomaticCanvasSize"]
  GETIMPORT R9 K15 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["CanvasSize"]
  SETTABLEKS R8 R7 K1 ["scroll"]
  SETTABLEKS R2 R7 K2 ["onAbsoluteCanvasSizeChanged"]
  SETTABLEKS R2 R7 K3 ["onAbsoluteWindowSizeChanged"]
  LOADK R8 K16 ["auto-y size-full fill clip"]
  SETTABLEKS R8 R7 K4 ["tag"]
  CALL R5 2 1
  DUPTABLE R6 K19 [{"ScrollPadding", "ScrollContent"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K20 ["UIPadding"]
  DUPTABLE R9 K22 [{"PaddingRight"}]
  GETIMPORT R10 K24 [UDim.new]
  LOADN R11 0
  MOVE R12 R1
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["PaddingRight"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["ScrollPadding"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K25 ["Fragment"]
  LOADNIL R9
  GETTABLEKS R10 R0 K26 ["children"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["ScrollContent"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R4 R5 K9 ["ScrollView"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
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
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R7 1
