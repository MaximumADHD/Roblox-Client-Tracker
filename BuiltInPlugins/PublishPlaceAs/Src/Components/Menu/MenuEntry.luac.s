PROTO_0:
  DUPTABLE R4 K1 [{"hovering"}]
  SETTABLEKS R1 R4 K0 ["hovering"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["mouseHoverChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R2 0
  NAMECALL R0 R0 K0 ["mouseHoverChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["hovering"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["OnClicked"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K5 ["Title"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K6 ["ShowError"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K7 ["ShowWarning"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["Selected"]
  OR R8 R2 R7
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K10 ["Frame"]
  NEWTABLE R11 8 0
  GETIMPORT R12 K13 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 42
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  JUMPIFNOT R8 [+5]
  GETTABLEKS R13 R1 K15 ["menuEntry"]
  GETTABLEKS R12 R13 K16 ["hover"]
  JUMPIF R12 [+4]
  GETTABLEKS R13 R1 K17 ["menuBar"]
  GETTABLEKS R12 R13 K18 ["backgroundColor"]
  SETTABLEKS R12 R11 K19 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K20 ["BorderSizePixel"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K21 ["Event"]
  GETTABLEKS R12 R13 K22 ["MouseEnter"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLE R13 R11 R12
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K21 ["Event"]
  GETTABLEKS R12 R13 K23 ["MouseLeave"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R0
  SETTABLE R13 R11 R12
  DUPTABLE R12 K26 [{"Highlight", "Title", "Error"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K10 ["Frame"]
  DUPTABLE R15 K29 [{"ZIndex", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K27 ["ZIndex"]
  GETIMPORT R16 K13 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K14 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K20 ["BorderSizePixel"]
  GETTABLEKS R17 R1 K15 ["menuEntry"]
  GETTABLEKS R16 R17 K30 ["highlight"]
  SETTABLEKS R16 R15 K19 ["BackgroundColor3"]
  JUMPIFNOT R7 [+2]
  LOADN R16 0
  JUMP [+1]
  LOADN R16 1
  SETTABLEKS R16 R15 K28 ["BackgroundTransparency"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K24 ["Highlight"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K31 ["TextButton"]
  NEWTABLE R15 16 0
  LOADN R16 2
  SETTABLEKS R16 R15 K27 ["ZIndex"]
  GETIMPORT R16 K13 [UDim2.new]
  LOADN R17 1
  LOADN R18 241
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K14 ["Size"]
  GETIMPORT R16 K13 [UDim2.new]
  LOADN R17 0
  LOADN R18 15
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K32 ["Position"]
  LOADN R16 1
  SETTABLEKS R16 R15 K28 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K20 ["BorderSizePixel"]
  GETIMPORT R16 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K34 ["TextXAlignment"]
  GETIMPORT R16 K39 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K37 ["TextYAlignment"]
  SETTABLEKS R4 R15 K40 ["Text"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R18 R1 K15 ["menuEntry"]
  GETTABLEKS R17 R18 K41 ["font"]
  GETTABLEKS R16 R17 K42 ["selected"]
  JUMPIF R16 [+6]
  GETTABLEKS R18 R1 K15 ["menuEntry"]
  GETTABLEKS R17 R18 K41 ["font"]
  GETTABLEKS R16 R17 K43 ["unselected"]
  SETTABLEKS R16 R15 K44 ["Font"]
  LOADN R16 24
  SETTABLEKS R16 R15 K45 ["TextSize"]
  GETTABLEKS R17 R1 K15 ["menuEntry"]
  GETTABLEKS R16 R17 K46 ["text"]
  SETTABLEKS R16 R15 K47 ["TextColor3"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["Event"]
  GETTABLEKS R16 R17 K48 ["Activated"]
  SETTABLE R3 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K5 ["Title"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K49 ["ImageLabel"]
  DUPTABLE R15 K53 [{"ZIndex", "Visible", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "Image"}]
  LOADN R16 3
  SETTABLEKS R16 R15 K27 ["ZIndex"]
  MOVE R16 R5
  JUMPIF R16 [+3]
  MOVE R16 R6
  JUMPIF R16 [+1]
  LOADB R16 0
  SETTABLEKS R16 R15 K50 ["Visible"]
  GETIMPORT R16 K13 [UDim2.new]
  LOADN R17 0
  LOADN R18 18
  LOADN R19 0
  LOADN R20 18
  CALL R16 4 1
  SETTABLEKS R16 R15 K14 ["Size"]
  GETIMPORT R16 K13 [UDim2.new]
  LOADN R17 1
  LOADN R18 244
  LOADK R19 K54 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K32 ["Position"]
  GETIMPORT R16 K56 [Vector2.new]
  LOADN R17 1
  LOADK R18 K54 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["AnchorPoint"]
  LOADN R16 1
  SETTABLEKS R16 R15 K28 ["BackgroundTransparency"]
  JUMPIFNOT R5 [+2]
  LOADK R16 K57 ["rbxasset://textures/GameSettings/ErrorIcon.png"]
  JUMP [+1]
  LOADK R16 K58 ["rbxasset://textures/GameSettings/Warning.png"]
  SETTABLEKS R16 R15 K52 ["Image"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["Error"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
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
  GETTABLEKS R5 R1 K10 ["PureComponent"]
  LOADK R7 K11 ["MenuEntry"]
  NAMECALL R5 R5 K12 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K13 [PROTO_0]
  SETTABLEKS R6 R5 K14 ["mouseHoverChanged"]
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K16 ["render"]
  MOVE R6 R4
  DUPTABLE R7 K18 [{"Stylizer"}]
  GETTABLEKS R8 R3 K17 ["Stylizer"]
  SETTABLEKS R8 R7 K17 ["Stylizer"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1
