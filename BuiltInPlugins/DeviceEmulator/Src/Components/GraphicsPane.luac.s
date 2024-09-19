PROTO_0:
  LOADN R3 1
  GETUPVAL R4 0
  FASTCALL3 MATH_CLAMP R0 R3 R4
  MOVE R2 R0
  GETIMPORT R1 K2 [math.clamp]
  CALL R1 3 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["GraphicsQualityLevel"]
  GETUPVAL R3 1
  SETTABLEKS R1 R3 K3 ["GraphicsQualityLevel"]
  GETUPVAL R3 2
  SETTABLEKS R1 R3 K4 ["QualityLevel"]
  MOVE R3 R1
  SUB R4 R1 R2
  RETURN R3 2

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["graphicsQualityAutoMode"]
  NOT R0 R1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["GraphicsQualityLevel"]
  GETUPVAL R1 2
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["QualityLevel"]
  JUMP [+16]
  GETUPVAL R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K4 ["graphicsQuality"]
  SETTABLEKS R2 R1 K2 ["GraphicsQualityLevel"]
  GETUPVAL R1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K4 ["graphicsQuality"]
  SETTABLEKS R2 R1 K3 ["QualityLevel"]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"graphicsQualityAutoMode"}]
  SETTABLEKS R0 R3 K1 ["graphicsQualityAutoMode"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GraphicsQualityLevel"]
  JUMPIFEQKN R0 K1 [0] [+8]
  GETUPVAL R1 1
  DUPTABLE R3 K3 [{"graphicsQuality"}]
  SETTABLEKS R0 R3 K2 ["graphicsQuality"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 1
  DUPTABLE R3 K6 [{"graphicsQualityAutoMode"}]
  JUMPIFEQKN R0 K1 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["graphicsQualityAutoMode"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R2 K2 [{"graphicsQuality", "graphicsQualityAutoMode"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["GraphicsQualityLevel"]
  SETTABLEKS R3 R2 K0 ["graphicsQuality"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["GraphicsQualityLevel"]
  JUMPIFEQKN R4 K4 [0] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["graphicsQualityAutoMode"]
  SETTABLEKS R2 R0 K5 ["state"]
  DUPCLOSURE R2 K6 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K7 ["setGraphicsQuality"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K8 ["toggleGraphicsQualityAutomatic"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R3 3
  MOVE R5 R2
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K10 ["graphicsQualityLevelChangedConnection"]
  GETUPVAL R3 4
  MOVE R5 R2
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K11 ["savedQualityLevelChangedConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["graphicsQualityLevelChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["savedQualityLevelChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
  GETIMPORT R7 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K4 ["AutomaticSize"]
  GETIMPORT R7 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K5 ["HorizontalAlignment"]
  GETIMPORT R7 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K6 ["Layout"]
  LOADN R7 10
  SETTABLEKS R7 R6 K7 ["Padding"]
  LOADN R7 10
  SETTABLEKS R7 R6 K8 ["Spacing"]
  DUPTABLE R7 K19 [{"GraphicsQualityPane"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"AutomaticSize", "HorizontalAlignment", "Layout", "AlwaysExpanded", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R11 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K4 ["AutomaticSize"]
  GETIMPORT R11 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K5 ["HorizontalAlignment"]
  GETIMPORT R11 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K6 ["Layout"]
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["AlwaysExpanded"]
  LOADN R11 1
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  LOADK R11 K25 ["Box"]
  SETTABLEKS R11 R10 K22 ["Style"]
  LOADK R13 K26 ["GraphicsQuality"]
  LOADK R14 K27 ["GraphicsQualityLabel"]
  NAMECALL R11 R3 K28 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["Text"]
  NEWTABLE R11 0 2
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K38 [{"AnchorPoint", "Disabled", "Value", "Min", "Max", "OnValueChanged", "Size", "Padding", "SnapIncrement", "VerticalDragTolerance"}]
  GETIMPORT R15 K41 [Vector2.new]
  LOADN R16 0
  LOADK R17 K42 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K29 ["AnchorPoint"]
  GETTABLEKS R15 R2 K43 ["graphicsQualityAutoMode"]
  SETTABLEKS R15 R14 K30 ["Disabled"]
  GETTABLEKS R15 R2 K44 ["graphicsQuality"]
  SETTABLEKS R15 R14 K31 ["Value"]
  LOADN R15 0
  SETTABLEKS R15 R14 K32 ["Min"]
  GETUPVAL R15 4
  SETTABLEKS R15 R14 K33 ["Max"]
  GETTABLEKS R15 R0 K45 ["setGraphicsQuality"]
  SETTABLEKS R15 R14 K34 ["OnValueChanged"]
  GETIMPORT R15 K47 [UDim2.new]
  LOADN R16 0
  LOADN R17 200
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K35 ["Size"]
  GETIMPORT R15 K49 [UDim.new]
  LOADN R16 10
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K7 ["Padding"]
  LOADN R15 1
  SETTABLEKS R15 R14 K36 ["SnapIncrement"]
  LOADN R15 0
  SETTABLEKS R15 R14 K37 ["VerticalDragTolerance"]
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K53 [{"Checked", "Key", "OnClick", "Text"}]
  GETTABLEKS R16 R2 K43 ["graphicsQualityAutoMode"]
  SETTABLEKS R16 R15 K50 ["Checked"]
  LOADK R16 K43 ["graphicsQualityAutoMode"]
  SETTABLEKS R16 R15 K51 ["Key"]
  GETTABLEKS R16 R0 K54 ["toggleGraphicsQualityAutomatic"]
  SETTABLEKS R16 R15 K52 ["OnClick"]
  LOADK R18 K26 ["GraphicsQuality"]
  LOADK R19 K55 ["AutoGraphicsQualityLabel"]
  NAMECALL R16 R3 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["Text"]
  CALL R13 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["GraphicsQualityPane"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Pane"]
  GETTABLEKS R8 R6 K13 ["SimpleExpandablePane"]
  GETTABLEKS R9 R6 K14 ["Slider"]
  GETTABLEKS R10 R6 K15 ["Checkbox"]
  GETTABLEKS R11 R1 K16 ["PureComponent"]
  LOADK R13 K17 ["GraphicsPane"]
  NAMECALL R11 R11 K18 ["extend"]
  CALL R11 2 1
  GETIMPORT R12 K20 [UserSettings]
  CALL R12 0 1
  LOADK R14 K21 ["UserGameSettings"]
  NAMECALL R12 R12 K22 ["GetService"]
  CALL R12 2 1
  GETIMPORT R14 K24 [settings]
  CALL R14 0 1
  GETTABLEKS R13 R14 K25 ["Rendering"]
  LOADK R16 K26 ["SavedQualityLevel"]
  NAMECALL R14 R12 K27 ["GetPropertyChangedSignal"]
  CALL R14 2 1
  LOADK R17 K28 ["GraphicsQualityLevel"]
  NAMECALL R15 R12 K27 ["GetPropertyChangedSignal"]
  CALL R15 2 1
  NAMECALL R17 R13 K30 ["GetMaxQualityLevel"]
  CALL R17 1 1
  SUBK R16 R17 K29 [1]
  DUPCLOSURE R17 K31 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R14
  SETTABLEKS R17 R11 K32 ["init"]
  DUPCLOSURE R17 K33 [PROTO_4]
  SETTABLEKS R17 R11 K34 ["willUnmount"]
  DUPCLOSURE R17 K35 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R10
  SETTABLEKS R17 R11 K36 ["render"]
  MOVE R17 R4
  DUPTABLE R18 K38 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R18 K10 ["Localization"]
  GETTABLEKS R19 R3 K37 ["Stylizer"]
  SETTABLEKS R19 R18 K37 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R11
  CALL R17 1 1
  MOVE R11 R17
  RETURN R11 1
