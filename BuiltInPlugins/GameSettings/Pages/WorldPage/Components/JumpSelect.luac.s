PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADN R2 0
  LOADK R3 K0 [∞]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R0 K3 [math.clamp]
  CALL R0 3 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [tonumber]
  CALL R1 1 1
  ORK R0 R1 K0 [0]
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  LOADN R2 0
  LOADN R3 232
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R0 K2 [math.clamp]
  CALL R0 3 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [tonumber]
  CALL R1 1 1
  ORK R0 R1 K0 [0]
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["UseJumpPower"]
  GETTABLEKS R4 R1 K3 ["JumpPower"]
  GETTABLEKS R5 R1 K4 ["JumpHeight"]
  GETTABLEKS R6 R1 K5 ["SetUseJumpPower"]
  GETTABLEKS R7 R1 K6 ["SetJumpPower"]
  GETTABLEKS R8 R1 K7 ["SetJumpHeight"]
  GETTABLEKS R9 R1 K8 ["Localization"]
  GETTABLEKS R10 R1 K9 ["Mouse"]
  NAMECALL R10 R10 K10 ["get"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K11 ["WorldRootPhysics"]
  NAMECALL R11 R11 K10 ["get"]
  CALL R11 1 1
  GETIMPORT R12 K14 [UDim.new]
  LOADN R13 0
  LOADN R14 10
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K15 ["createElement"]
  LOADK R14 K16 ["Frame"]
  DUPTABLE R15 K19 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  SETTABLEKS R2 R15 K1 ["LayoutOrder"]
  GETIMPORT R16 K21 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 50
  CALL R16 4 1
  SETTABLEKS R16 R15 K17 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["BackgroundTransparency"]
  DUPTABLE R16 K25 [{"JumpSelect", "JumpInput", "MetricLabels"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 1
  DUPTABLE R19 K31 [{"Title", "Buttons", "Enabled", "Selected", "Mouse", "SelectionChanged"}]
  LOADK R22 K32 ["General"]
  LOADK R23 K33 ["TitleJump"]
  NAMECALL R20 R9 K34 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K26 ["Title"]
  NEWTABLE R20 0 2
  DUPTABLE R21 K36 [{"Id", "Title"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K35 ["Id"]
  LOADK R24 K32 ["General"]
  LOADK R25 K4 ["JumpHeight"]
  NAMECALL R22 R9 K34 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K26 ["Title"]
  DUPTABLE R22 K36 [{"Id", "Title"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K35 ["Id"]
  LOADK R25 K32 ["General"]
  LOADK R26 K3 ["JumpPower"]
  NAMECALL R23 R9 K34 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K26 ["Title"]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K27 ["Buttons"]
  LOADB R20 1
  SETTABLEKS R20 R19 K28 ["Enabled"]
  SETTABLEKS R3 R19 K29 ["Selected"]
  SETTABLEKS R10 R19 K9 ["Mouse"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R6
  SETTABLEKS R20 R19 K30 ["SelectionChanged"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K22 ["JumpSelect"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K15 ["createElement"]
  LOADK R18 K16 ["Frame"]
  DUPTABLE R19 K38 [{"Position", "BackgroundTransparency"}]
  GETIMPORT R20 K21 [UDim2.new]
  LOADN R21 0
  LOADN R22 84
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K37 ["Position"]
  LOADN R20 1
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  DUPTABLE R20 K42 [{"Layout", "JumpHeightInputBox", "JumpPowerInputBox"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K15 ["createElement"]
  LOADK R22 K43 ["UIListLayout"]
  DUPTABLE R23 K46 [{"Padding", "SortOrder"}]
  SETTABLEKS R12 R23 K44 ["Padding"]
  GETIMPORT R24 K48 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K45 ["SortOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["Layout"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K53 [{"Disabled", "LayoutOrder", "OnFocusLost", "OnTextChanged", "Size", "Text"}]
  SETTABLEKS R3 R23 K49 ["Disabled"]
  LOADN R24 1
  SETTABLEKS R24 R23 K1 ["LayoutOrder"]
  NEWCLOSURE R24 P1
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R24 R23 K50 ["OnFocusLost"]
  NEWCLOSURE R24 P2
  CAPTURE VAL R8
  SETTABLEKS R24 R23 K51 ["OnTextChanged"]
  GETIMPORT R24 K55 [UDim2.fromOffset]
  LOADN R25 150
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K17 ["Size"]
  GETUPVAL R24 3
  MOVE R25 R5
  CALL R24 1 1
  SETTABLEKS R24 R23 K52 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K40 ["JumpHeightInputBox"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 2
  DUPTABLE R23 K53 [{"Disabled", "LayoutOrder", "OnFocusLost", "OnTextChanged", "Size", "Text"}]
  NOT R24 R3
  SETTABLEKS R24 R23 K49 ["Disabled"]
  LOADN R24 2
  SETTABLEKS R24 R23 K1 ["LayoutOrder"]
  NEWCLOSURE R24 P3
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R24 R23 K50 ["OnFocusLost"]
  NEWCLOSURE R24 P4
  CAPTURE VAL R7
  SETTABLEKS R24 R23 K51 ["OnTextChanged"]
  GETIMPORT R24 K21 [UDim2.new]
  LOADN R25 0
  LOADN R26 150
  LOADN R27 0
  LOADN R28 20
  CALL R24 4 1
  SETTABLEKS R24 R23 K17 ["Size"]
  GETUPVAL R24 3
  MOVE R25 R4
  CALL R24 1 1
  SETTABLEKS R24 R23 K52 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K41 ["JumpPowerInputBox"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K23 ["JumpInput"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K15 ["createElement"]
  LOADK R18 K16 ["Frame"]
  DUPTABLE R19 K38 [{"Position", "BackgroundTransparency"}]
  GETIMPORT R20 K21 [UDim2.new]
  LOADN R21 0
  LOADN R22 254
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K37 ["Position"]
  LOADN R20 1
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  DUPTABLE R20 K57 [{"Layout", "JumpHeightMetricLabel"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K15 ["createElement"]
  LOADK R22 K43 ["UIListLayout"]
  DUPTABLE R23 K46 [{"Padding", "SortOrder"}]
  SETTABLEKS R12 R23 K44 ["Padding"]
  GETIMPORT R24 K48 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K45 ["SortOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["Layout"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K58 [{"Enabled", "Size", "Text"}]
  NOT R24 R3
  SETTABLEKS R24 R23 K28 ["Enabled"]
  GETIMPORT R24 K21 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 20
  CALL R24 4 1
  SETTABLEKS R24 R23 K17 ["Size"]
  LOADK R26 K32 ["General"]
  LOADK R27 K59 ["UnitsMeters1"]
  NEWTABLE R28 0 1
  GETUPVAL R29 3
  GETTABLEKS R30 R11 K60 ["convertStudsToMeters"]
  MOVE R31 R5
  CALL R30 1 -1
  CALL R29 -1 -1
  SETLIST R28 R29 -1 [1]
  NAMECALL R24 R9 K34 ["getText"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K52 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K56 ["JumpHeightMetricLabel"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K24 ["MetricLabels"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R1 K5 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETTABLEKS R6 R3 K10 ["UI"]
  GETTABLEKS R7 R6 K11 ["TextInput"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K8 ["ContextServices"]
  GETTABLEKS R9 R10 K12 ["WorldRootPhysics"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K13 ["Util"]
  GETTABLEKS R10 R11 K14 ["formatNumberForDisplay"]
  CALL R9 1 1
  GETTABLEKS R11 R1 K5 ["Packages"]
  GETTABLEKS R10 R11 K15 ["RoactStudioWidgets"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R10 K16 ["RadioButtonSet"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R10 K17 ["Text"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K18 ["PureComponent"]
  LOADK R15 K19 ["JumpSelect"]
  NAMECALL R13 R13 K20 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K21 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K22 ["render"]
  MOVE R14 R5
  DUPTABLE R15 K25 [{"Localization", "Mouse", "WorldRootPhysics"}]
  GETTABLEKS R16 R4 K23 ["Localization"]
  SETTABLEKS R16 R15 K23 ["Localization"]
  GETTABLEKS R16 R4 K24 ["Mouse"]
  SETTABLEKS R16 R15 K24 ["Mouse"]
  SETTABLEKS R8 R15 K12 ["WorldRootPhysics"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
