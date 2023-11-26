PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["ZIndex"]
  GETTABLEKS R6 R1 K5 ["OnScaleHandleDragStart"]
  GETTABLEKS R7 R1 K6 ["OnScaleHandleDragMoved"]
  GETTABLEKS R8 R1 K7 ["OnScaleHandleDragEnd"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  LOADK R10 K9 ["Frame"]
  DUPTABLE R11 K11 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  SETTABLEKS R3 R11 K2 ["Size"]
  SETTABLEKS R4 R11 K3 ["Position"]
  SETTABLEKS R5 R11 K4 ["ZIndex"]
  DUPTABLE R12 K14 [{"DragListenerArea", "Bar"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K19 [{"Cursor", "OnDragBegan", "OnDragMoved", "OnDragEnded"}]
  LOADK R16 K20 ["SizeEW"]
  SETTABLEKS R16 R15 K15 ["Cursor"]
  SETTABLEKS R6 R15 K16 ["OnDragBegan"]
  SETTABLEKS R7 R15 K17 ["OnDragMoved"]
  SETTABLEKS R8 R15 K18 ["OnDragEnded"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K12 ["DragListenerArea"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["createElement"]
  LOADK R14 K9 ["Frame"]
  DUPTABLE R15 K24 [{"BackgroundColor3", "BorderSizePixel", "Size", "Position", "AnchorPoint", "ZIndex"}]
  GETTABLEKS R17 R2 K25 ["scaleControlsTheme"]
  GETTABLEKS R16 R17 K26 ["mainColor"]
  SETTABLEKS R16 R15 K21 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K22 ["BorderSizePixel"]
  GETIMPORT R16 K29 [UDim2.new]
  LOADN R17 0
  LOADN R18 2
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["Size"]
  GETIMPORT R16 K29 [UDim2.new]
  LOADK R17 K30 [0.5]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K3 ["Position"]
  GETIMPORT R16 K32 [Vector2.new]
  LOADK R17 K30 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["AnchorPoint"]
  SETTABLEKS R5 R15 K4 ["ZIndex"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K13 ["Bar"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["DragListenerArea"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["PureComponent"]
  LOADK R8 K15 ["ScaleHandle"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K18 ["render"]
  MOVE R7 R4
  DUPTABLE R8 K20 [{"Stylizer"}]
  GETTABLEKS R9 R3 K19 ["Stylizer"]
  SETTABLEKS R9 R8 K19 ["Stylizer"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
