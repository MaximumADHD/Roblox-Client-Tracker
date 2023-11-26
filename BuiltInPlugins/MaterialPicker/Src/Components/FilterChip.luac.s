PROTO_0:
  GETUPVAL R2 0
  LOADK R4 K0 ["Filters"]
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K2 ["selected"]
  GETTABLEKS R4 R0 K3 ["Disabled"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R5 R2 K0 ["Filters"]
  GETTABLEKS R4 R5 K4 ["InactiveBackgroundColor"]
  RETURN R4 1
  JUMPIFNOT R3 [+6]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R5 R2 K0 ["Filters"]
  GETTABLEKS R4 R5 K5 ["ActiveHoverBackgroundColor"]
  RETURN R4 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R5 R2 K0 ["Filters"]
  GETTABLEKS R4 R5 K6 ["ActiveBackgroundColor"]
  RETURN R4 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R5 R2 K0 ["Filters"]
  GETTABLEKS R4 R5 K7 ["InactiveHoverBackgroundColor"]
  RETURN R4 1
  GETTABLEKS R5 R2 K0 ["Filters"]
  GETTABLEKS R4 R5 K4 ["InactiveBackgroundColor"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  LOADK R3 K0 ["Filters"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  LOADK R7 K0 ["Filters"]
  NAMECALL R5 R5 K1 ["use"]
  CALL R5 2 1
  GETTABLEKS R6 R0 K2 ["selected"]
  GETTABLEKS R7 R0 K3 ["Disabled"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R5 K0 ["Filters"]
  GETTABLEKS R4 R7 K4 ["InactiveBackgroundColor"]
  JUMP [+24]
  JUMPIFNOT R6 [+6]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R7 R5 K0 ["Filters"]
  GETTABLEKS R4 R7 K5 ["ActiveHoverBackgroundColor"]
  JUMP [+17]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R7 R5 K0 ["Filters"]
  GETTABLEKS R4 R7 K6 ["ActiveBackgroundColor"]
  JUMP [+11]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R7 R5 K0 ["Filters"]
  GETTABLEKS R4 R7 K7 ["InactiveHoverBackgroundColor"]
  JUMP [+5]
  GETTABLEKS R7 R5 K0 ["Filters"]
  GETTABLEKS R4 R7 K4 ["InactiveBackgroundColor"]
  JUMP [0]
  GETUPVAL R5 2
  LOADK R6 K8 ["TextButton"]
  NEWTABLE R7 16 0
  LOADN R8 1
  SETTABLEKS R8 R7 K9 ["BackgroundTransparency"]
  GETTABLEKS R8 R0 K10 ["AnchorPoint"]
  SETTABLEKS R8 R7 K10 ["AnchorPoint"]
  GETIMPORT R8 K14 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K12 ["AutomaticSize"]
  GETTABLEKS R8 R0 K15 ["LayoutOrder"]
  SETTABLEKS R8 R7 K15 ["LayoutOrder"]
  GETTABLEKS R8 R0 K16 ["Position"]
  SETTABLEKS R8 R7 K16 ["Position"]
  GETTABLEKS R8 R0 K17 ["Rotation"]
  SETTABLEKS R8 R7 K17 ["Rotation"]
  GETTABLEKS R8 R0 K18 ["ZIndex"]
  SETTABLEKS R8 R7 K18 ["ZIndex"]
  LOADK R8 K19 [""]
  SETTABLEKS R8 R7 K20 ["Text"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["Event"]
  GETTABLEKS R8 R9 K22 ["Activated"]
  GETTABLEKS R10 R0 K3 ["Disabled"]
  JUMPIF R10 [+3]
  GETTABLEKS R9 R0 K23 ["OnClick"]
  JUMPIF R9 [+1]
  LOADNIL R9
  SETTABLE R9 R7 R8
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["Event"]
  GETTABLEKS R8 R9 K24 ["MouseEnter"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R3
  SETTABLE R9 R7 R8
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["Event"]
  GETTABLEKS R8 R9 K25 ["MouseLeave"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R3
  SETTABLE R9 R7 R8
  NEWTABLE R8 0 1
  GETUPVAL R9 2
  GETUPVAL R10 4
  DUPTABLE R11 K28 [{"AutomaticSize", "BackgroundColor", "Padding"}]
  GETIMPORT R12 K14 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K12 ["AutomaticSize"]
  SETTABLEKS R4 R11 K26 ["BackgroundColor"]
  DUPTABLE R12 K31 [{"Left", "Right"}]
  LOADN R13 6
  SETTABLEKS R13 R12 K29 ["Left"]
  LOADN R13 6
  SETTABLEKS R13 R12 K30 ["Right"]
  SETTABLEKS R12 R11 K27 ["Padding"]
  NEWTABLE R12 0 3
  GETUPVAL R13 2
  LOADK R14 K32 ["UICorner"]
  DUPTABLE R15 K34 [{"CornerRadius"}]
  GETIMPORT R16 K37 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["CornerRadius"]
  CALL R13 2 1
  GETUPVAL R14 2
  LOADK R15 K38 ["UIStroke"]
  DUPTABLE R16 K41 [{"Thickness", "Color"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K39 ["Thickness"]
  GETTABLEKS R18 R1 K0 ["Filters"]
  GETTABLEKS R17 R18 K42 ["BorderColor"]
  SETTABLEKS R17 R16 K40 ["Color"]
  CALL R14 2 1
  GETUPVAL R15 2
  GETUPVAL R16 5
  DUPTABLE R17 K48 [{"Size", "Padding", "Text", "TextColor", "TextXAlignment", "TextYAlignment", "TextSize"}]
  GETTABLEKS R19 R1 K0 ["Filters"]
  GETTABLEKS R18 R19 K49 ["ChipSize"]
  SETTABLEKS R18 R17 K43 ["Size"]
  DUPTABLE R18 K31 [{"Left", "Right"}]
  LOADN R19 4
  SETTABLEKS R19 R18 K29 ["Left"]
  LOADN R19 4
  SETTABLEKS R19 R18 K30 ["Right"]
  SETTABLEKS R18 R17 K27 ["Padding"]
  GETTABLEKS R18 R0 K20 ["Text"]
  SETTABLEKS R18 R17 K20 ["Text"]
  GETTABLEKS R19 R1 K0 ["Filters"]
  GETTABLEKS R18 R19 K44 ["TextColor"]
  SETTABLEKS R18 R17 K44 ["TextColor"]
  GETIMPORT R18 K51 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K45 ["TextXAlignment"]
  GETIMPORT R18 K52 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K46 ["TextYAlignment"]
  GETTABLEKS R19 R1 K0 ["Filters"]
  GETTABLEKS R18 R19 K47 ["TextSize"]
  SETTABLEKS R18 R17 K47 ["TextSize"]
  CALL R15 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createElement"]
  GETTABLEKS R3 R1 K9 ["useState"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K11 ["UI"]
  GETTABLEKS R5 R6 K12 ["Pane"]
  GETTABLEKS R7 R4 K11 ["UI"]
  GETTABLEKS R6 R7 K13 ["TextLabel"]
  GETTABLEKS R8 R4 K14 ["Style"]
  GETTABLEKS R7 R8 K15 ["Stylizer"]
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R9 K17 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETGLOBAL R9 K18 ["FilterChip"]
  GETGLOBAL R9 K18 ["FilterChip"]
  RETURN R9 1
