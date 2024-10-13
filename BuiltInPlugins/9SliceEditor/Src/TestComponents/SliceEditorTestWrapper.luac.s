PROTO_0:
  DUPTABLE R2 K1 [{"sliceRect"}]
  GETTABLEKS R3 R1 K0 ["sliceRect"]
  SETTABLEKS R3 R2 K0 ["sliceRect"]
  SETTABLEKS R2 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"sliceRect"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["getSliceRectFromSliceCenter"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["SliceCenter"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["sliceRect"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["selectedObject"]
  LOADK R4 K2 ["SliceCenter"]
  NAMECALL R2 R1 K3 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["sliceCenterChangedSignal"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["sliceCenterChangedSignal"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["sliceCenterChangedSignal"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["sliceCenterChangedSignal"]
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K8 [{"selectedObject", "pixelDimensions", "onClose", "sliceRect", "revertSliceRect"}]
  GETTABLEKS R6 R1 K3 ["selectedObject"]
  SETTABLEKS R6 R5 K3 ["selectedObject"]
  GETTABLEKS R6 R1 K4 ["pixelDimensions"]
  SETTABLEKS R6 R5 K4 ["pixelDimensions"]
  DUPCLOSURE R6 K9 [PROTO_4]
  SETTABLEKS R6 R5 K5 ["onClose"]
  GETTABLEKS R6 R2 K6 ["sliceRect"]
  SETTABLEKS R6 R5 K6 ["sliceRect"]
  GETTABLEKS R6 R1 K6 ["sliceRect"]
  SETTABLEKS R6 R5 K7 ["revertSliceRect"]
  CALL R3 2 -1
  RETURN R3 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R6 R3 K11 ["Localization"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["SliceRectUtil"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K16 ["SliceEditorMain"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K17 ["PureComponent"]
  LOADK R11 K18 ["SliceEditorTestWrapper"]
  NAMECALL R9 R9 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_0]
  SETTABLEKS R10 R9 K21 ["init"]
  DUPCLOSURE R10 K22 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K23 ["didMount"]
  DUPCLOSURE R10 K24 [PROTO_3]
  SETTABLEKS R10 R9 K25 ["willUnmount"]
  DUPCLOSURE R10 K26 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K27 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K30 [{"Analytics", "Localization", "Stylizer", "Mouse"}]
  SETTABLEKS R5 R11 K10 ["Analytics"]
  SETTABLEKS R6 R11 K11 ["Localization"]
  GETTABLEKS R12 R3 K28 ["Stylizer"]
  SETTABLEKS R12 R11 K28 ["Stylizer"]
  GETTABLEKS R12 R3 K29 ["Mouse"]
  SETTABLEKS R12 R11 K29 ["Mouse"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
