PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R5 R1 K0 ["Value"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K2 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K3 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Missing required property Value."]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETTABLEKS R5 R1 K7 ["OnValueChanged"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K2 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K8 ["function"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["Missing required property OnValueChanged."]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnValueChanged"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K7 [{"LayoutOrder", "Size", "StyleModifier", "Style", "OnClick"}]
  GETUPVAL R6 3
  NAMECALL R6 R6 K8 ["getNextOrder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K2 ["LayoutOrder"]
  GETIMPORT R6 K11 [UDim2.fromOffset]
  LOADN R7 32
  LOADN R8 32
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["Size"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K12 ["Selected"]
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K4 ["StyleModifier"]
  LOADK R6 K13 ["Selectable"]
  SETTABLEKS R6 R5 K5 ["Style"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["OnClick"]
  DUPTABLE R6 K16 [{"Image", "Tooltip"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K17 [{"Style"}]
  DUPTABLE R10 K20 [{"AnchorPoint", "Image", "Position", "Size"}]
  GETIMPORT R11 K23 [Vector2.new]
  LOADK R12 K24 [0.5]
  LOADK R13 K24 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["AnchorPoint"]
  SETTABLEKS R1 R10 K14 ["Image"]
  GETIMPORT R11 K25 [UDim2.new]
  LOADK R12 K24 [0.5]
  LOADN R13 0
  LOADK R14 K24 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K19 ["Position"]
  GETIMPORT R11 K11 [UDim2.fromOffset]
  LOADN R12 24
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Size"]
  SETTABLEKS R10 R9 K5 ["Style"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Image"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K27 [{"Text"}]
  GETUPVAL R10 7
  LOADK R12 K28 ["ModeSection"]
  MOVE R13 R0
  NAMECALL R10 R10 K29 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K26 ["Text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["Tooltip"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  NEWTABLE R6 0 0
  GETIMPORT R7 K5 [ipairs]
  GETTABLEKS R8 R3 K6 ["ModeButtons"]
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R12 R11 K7 ["Mode"]
  GETTABLEKS R13 R11 K8 ["Image"]
  FASTCALL1 TOSTRING R12 [+3]
  MOVE R15 R12
  GETIMPORT R14 K10 [tostring]
  CALL R14 1 1
  MOVE R15 R5
  MOVE R16 R12
  MOVE R17 R13
  CALL R15 2 1
  SETTABLE R15 R6 R14
  FORGLOOP R7 2 [inext] [-15]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K17 [{"axis", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K18 ["Axis"]
  GETTABLEKS R10 R11 K19 ["Both"]
  SETTABLEKS R10 R9 K12 ["axis"]
  GETIMPORT R10 K21 [UDim.new]
  LOADN R11 0
  LOADN R12 2
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["contentPadding"]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  GETIMPORT R10 K24 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K15 ["FillDirection"]
  GETTABLEKS R10 R1 K16 ["LayoutOrder"]
  SETTABLEKS R10 R9 K16 ["LayoutOrder"]
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["FitFrame"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["FitFrameOnAxis"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R3 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Button"]
  GETTABLEKS R8 R6 K14 ["Image"]
  GETTABLEKS R9 R6 K15 ["Tooltip"]
  GETTABLEKS R10 R3 K16 ["Util"]
  GETTABLEKS R11 R10 K17 ["StyleModifier"]
  GETTABLEKS R12 R10 K18 ["LayoutOrderIterator"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K20 ["Utility"]
  GETTABLEKS R14 R15 K21 ["AlignmentMode"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K22 ["PureComponent"]
  LOADK R16 K23 ["ModeSetting"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  DUPTABLE R15 K28 [{"LayoutOrder", "Value", "OnValueChanged"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K25 ["LayoutOrder"]
  GETTABLEKS R16 R13 K29 ["Center"]
  SETTABLEKS R16 R15 K26 ["Value"]
  DUPCLOSURE R16 K30 [PROTO_0]
  SETTABLEKS R16 R15 K27 ["OnValueChanged"]
  SETTABLEKS R15 R14 K31 ["defaultProps"]
  DUPCLOSURE R15 K32 [PROTO_1]
  SETTABLEKS R15 R14 K33 ["init"]
  DUPCLOSURE R15 K34 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K35 ["render"]
  MOVE R15 R5
  DUPTABLE R16 K38 [{"Localization", "Stylizer"}]
  GETTABLEKS R17 R4 K36 ["Localization"]
  SETTABLEKS R17 R16 K36 ["Localization"]
  GETTABLEKS R17 R4 K37 ["Stylizer"]
  SETTABLEKS R17 R16 K37 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
