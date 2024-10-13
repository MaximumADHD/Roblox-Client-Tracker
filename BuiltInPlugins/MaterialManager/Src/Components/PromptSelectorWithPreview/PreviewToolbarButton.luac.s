PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"isHovered"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isHovered"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onHovered"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onHoverEnded"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["PromptSelectorWithPreview"]
  GETTABLEKS R5 R3 K5 ["ToolbarHeight"]
  SUBK R4 R5 K4 [4]
  SUBK R5 R4 K6 [10]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["join"]
  MOVE R7 R1
  NEWTABLE R8 16 0
  GETIMPORT R9 K10 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  GETIMPORT R9 K15 [Enum.SizeConstraint.RelativeYY]
  SETTABLEKS R9 R8 K13 ["SizeConstraint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K17 ["BorderSizePixel"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K18 ["Event"]
  GETTABLEKS R9 R10 K19 ["MouseEnter"]
  GETTABLEKS R10 R0 K20 ["onHovered"]
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K18 ["Event"]
  GETTABLEKS R9 R10 K21 ["MouseLeave"]
  GETTABLEKS R10 R0 K22 ["onHoverEnded"]
  SETTABLE R10 R8 R9
  LOADK R9 K23 [""]
  SETTABLEKS R9 R8 K24 ["Image"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["None"]
  SETTABLEKS R9 R8 K26 ["Icon"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["None"]
  SETTABLEKS R9 R8 K2 ["Stylizer"]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K27 ["createElement"]
  LOADK R8 K28 ["ImageButton"]
  MOVE R9 R6
  DUPTABLE R10 K30 [{"Background"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K27 ["createElement"]
  LOADK R12 K31 ["Frame"]
  DUPTABLE R13 K35 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R14 K37 [Vector2.new]
  LOADK R15 K38 [0.5]
  LOADK R16 K38 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["AnchorPoint"]
  GETIMPORT R14 K10 [UDim2.new]
  LOADK R15 K38 [0.5]
  LOADN R16 0
  LOADK R17 K38 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K33 ["Position"]
  GETIMPORT R14 K10 [UDim2.new]
  LOADN R15 0
  MOVE R16 R4
  LOADN R17 0
  MOVE R18 R4
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Size"]
  GETTABLEKS R15 R2 K39 ["isHovered"]
  JUMPIFNOT R15 [+2]
  LOADN R14 0
  JUMP [+1]
  LOADN R14 1
  SETTABLEKS R14 R13 K16 ["BackgroundTransparency"]
  LOADN R14 1
  SETTABLEKS R14 R13 K17 ["BorderSizePixel"]
  GETTABLEKS R14 R3 K40 ["ToolbarButtonBackgroundColor"]
  SETTABLEKS R14 R13 K34 ["BackgroundColor3"]
  DUPTABLE R14 K41 [{"Icon"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K27 ["createElement"]
  LOADK R16 K42 ["ImageLabel"]
  DUPTABLE R17 K44 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3"}]
  GETIMPORT R18 K37 [Vector2.new]
  LOADK R19 K38 [0.5]
  LOADK R20 K38 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["AnchorPoint"]
  GETIMPORT R18 K10 [UDim2.new]
  LOADK R19 K38 [0.5]
  LOADN R20 0
  LOADK R21 K38 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K33 ["Position"]
  GETIMPORT R18 K10 [UDim2.new]
  LOADN R19 0
  MOVE R20 R5
  LOADN R21 0
  MOVE R22 R5
  CALL R18 4 1
  SETTABLEKS R18 R17 K11 ["Size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K16 ["BackgroundTransparency"]
  LOADN R18 1
  SETTABLEKS R18 R17 K17 ["BorderSizePixel"]
  GETTABLEKS R18 R1 K26 ["Icon"]
  SETTABLEKS R18 R17 K24 ["Image"]
  GETTABLEKS R19 R2 K39 ["isHovered"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R18 R3 K45 ["ButtonIconHoveredColor"]
  JUMPIF R18 [+2]
  GETTABLEKS R18 R3 K46 ["ButtonIconColor"]
  SETTABLEKS R18 R17 K43 ["ImageColor3"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["Icon"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K29 ["Background"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R6 R2 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R6 R2 K12 ["Dash"]
  GETTABLEKS R7 R1 K13 ["PureComponent"]
  LOADK R9 K14 ["PreviewToolbarButton"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_2]
  SETTABLEKS R8 R7 K17 ["init"]
  DUPCLOSURE R8 K18 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K19 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K20 [{"Stylizer"}]
  SETTABLEKS R5 R9 K11 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
