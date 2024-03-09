PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K9 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder", "BackgroundColor"}]
  GETTABLEKS R6 R1 K3 ["Size"]
  SETTABLEKS R6 R5 K3 ["Size"]
  GETIMPORT R6 K13 [Enum.FillDirection.Horizontal]
  SETTABLEKS R6 R5 K4 ["Layout"]
  GETIMPORT R6 K15 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R6 R5 K5 ["HorizontalAlignment"]
  GETIMPORT R6 K17 [Enum.VerticalAlignment.Top]
  SETTABLEKS R6 R5 K6 ["VerticalAlignment"]
  GETTABLEKS R6 R1 K7 ["LayoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETTABLEKS R6 R2 K8 ["BackgroundColor"]
  SETTABLEKS R6 R5 K8 ["BackgroundColor"]
  DUPTABLE R6 K20 [{"TimeControls", "SettingsButton"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K24 [{"FrameBuffer", "LayoutOrder", "Size", "MajorInterval", "MinorInterval"}]
  GETTABLEKS R10 R1 K21 ["FrameBuffer"]
  SETTABLEKS R10 R9 K21 ["FrameBuffer"]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETIMPORT R10 K27 [UDim2.new]
  LOADN R11 1
  GETTABLEKS R15 R2 K28 ["ButtonSize"]
  GETTABLEKS R14 R15 K29 ["X"]
  GETTABLEKS R13 R14 K30 ["Offset"]
  MINUS R12 R13
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K3 ["Size"]
  LOADN R10 5
  SETTABLEKS R10 R9 K22 ["MajorInterval"]
  LOADN R10 1
  SETTABLEKS R10 R9 K23 ["MinorInterval"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["TimeControls"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K32 [{"FrameBuffer", "LayoutOrder", "Size", "AnchorPoint"}]
  GETTABLEKS R10 R1 K21 ["FrameBuffer"]
  SETTABLEKS R10 R9 K21 ["FrameBuffer"]
  LOADN R10 2
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETTABLEKS R10 R2 K28 ["ButtonSize"]
  SETTABLEKS R10 R9 K3 ["Size"]
  GETIMPORT R10 K34 [Vector2.new]
  LOADN R11 1
  LOADK R12 K35 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K31 ["AnchorPoint"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["SettingsButton"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_3:
  NEWTABLE R1 0 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R9 R3 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["Stylizer"]
  GETTABLEKS R9 R3 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["Pane"]
  GETTABLEKS R12 R0 K18 ["Src"]
  GETTABLEKS R11 R12 K19 ["Components"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K20 ["SettingsButton"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R11 K21 ["TimeControls"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K22 ["Types"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K23 ["PureComponent"]
  LOADK R17 K24 ["Toolbar"]
  NAMECALL R15 R15 K25 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K26 [PROTO_0]
  SETTABLEKS R16 R15 K27 ["init"]
  DUPCLOSURE R16 K28 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K29 ["render"]
  MOVE R16 R5
  DUPTABLE R17 K30 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R6 R17 K12 ["Analytics"]
  SETTABLEKS R7 R17 K13 ["Localization"]
  SETTABLEKS R8 R17 K15 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  DUPCLOSURE R16 K31 [PROTO_2]
  DUPCLOSURE R17 K32 [PROTO_3]
  GETTABLEKS R18 R2 K33 ["connect"]
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 1
  MOVE R15 R18
  RETURN R15 1
