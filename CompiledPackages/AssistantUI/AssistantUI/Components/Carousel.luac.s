PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Hooks"]
  GETTABLEKS R1 R2 K1 ["useTokens"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K2 ["size"]
  GETTABLEKS R4 R0 K4 ["imagePadding"]
  ORK R3 R4 K3 [0]
  GETTABLEKS R5 R1 K5 ["Radius"]
  GETTABLEKS R4 R5 K6 ["Small"]
  GETTABLEKS R7 R1 K7 ["Color"]
  GETTABLEKS R6 R7 K8 ["Selection"]
  GETTABLEKS R5 R6 K9 ["Start"]
  GETTABLEKS R8 R1 K7 ["Color"]
  GETTABLEKS R7 R8 K8 ["Selection"]
  GETTABLEKS R6 R7 K10 ["End"]
  GETUPVAL R7 1
  GETUPVAL R8 2
  DUPTABLE R9 K15 [{"tag", "Size", "onActivated", "LayoutOrder"}]
  LOADK R10 K16 ["bg-shift-300 radius-small Component-CarouselItem"]
  SETTABLEKS R10 R9 K11 ["tag"]
  GETIMPORT R10 K19 [UDim2.fromOffset]
  MOVE R11 R2
  MOVE R12 R2
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETTABLEKS R10 R0 K13 ["onActivated"]
  SETTABLEKS R10 R9 K13 ["onActivated"]
  GETTABLEKS R10 R0 K14 ["LayoutOrder"]
  SETTABLEKS R10 R9 K14 ["LayoutOrder"]
  DUPTABLE R10 K23 [{"InnerBorder", "Image", "UIPadding"}]
  GETTABLEKS R11 R0 K24 ["selected"]
  JUMPIFNOT R11 [+105]
  GETUPVAL R11 1
  GETUPVAL R12 2
  DUPTABLE R13 K27 [{"tag", "Size", "ZIndex", "testId"}]
  LOADK R14 K28 ["anchor-center-center position-center-center"]
  SETTABLEKS R14 R13 K11 ["tag"]
  GETIMPORT R14 K19 [UDim2.fromOffset]
  SUBK R15 R2 K29 [4]
  SUBK R16 R2 K29 [4]
  CALL R14 2 1
  SETTABLEKS R14 R13 K12 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K25 ["ZIndex"]
  LOADK R14 K30 ["Assistant-CarouselItem-Selected"]
  SETTABLEKS R14 R13 K26 ["testId"]
  DUPTABLE R14 K33 [{"UICorner", "UIStroke"}]
  GETUPVAL R15 1
  LOADK R16 K31 ["UICorner"]
  DUPTABLE R17 K35 [{"CornerRadius"}]
  GETIMPORT R18 K38 [UDim.new]
  LOADN R19 0
  SUBK R20 R4 K39 [2]
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["CornerRadius"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["UICorner"]
  GETUPVAL R15 1
  LOADK R16 K32 ["UIStroke"]
  DUPTABLE R17 K41 [{"Thickness", "Color"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K40 ["Thickness"]
  GETIMPORT R18 K43 [Color3.new]
  LOADN R19 1
  LOADN R20 1
  LOADN R21 1
  CALL R18 3 1
  SETTABLEKS R18 R17 K7 ["Color"]
  GETUPVAL R19 3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+49]
  DUPTABLE R18 K45 [{"UIGradient"}]
  GETUPVAL R19 1
  LOADK R20 K44 ["UIGradient"]
  DUPTABLE R21 K47 [{"Color", "Transparency"}]
  GETIMPORT R22 K49 [ColorSequence.new]
  NEWTABLE R23 0 2
  GETIMPORT R24 K51 [ColorSequenceKeypoint.new]
  LOADN R25 0
  GETTABLEKS R26 R5 K42 ["Color3"]
  CALL R24 2 1
  GETIMPORT R25 K51 [ColorSequenceKeypoint.new]
  LOADN R26 1
  GETTABLEKS R27 R6 K42 ["Color3"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R22 1 1
  SETTABLEKS R22 R21 K7 ["Color"]
  GETIMPORT R22 K53 [NumberSequence.new]
  NEWTABLE R23 0 2
  GETIMPORT R24 K55 [NumberSequenceKeypoint.new]
  LOADN R25 0
  GETTABLEKS R26 R5 K46 ["Transparency"]
  CALL R24 2 1
  GETIMPORT R25 K55 [NumberSequenceKeypoint.new]
  LOADN R26 1
  GETTABLEKS R27 R6 K46 ["Transparency"]
  CALL R25 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R22 1 1
  SETTABLEKS R22 R21 K46 ["Transparency"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K44 ["UIGradient"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K32 ["UIStroke"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K20 ["InnerBorder"]
  GETUPVAL R11 1
  GETUPVAL R12 4
  DUPTABLE R13 K56 [{"tag", "Image"}]
  LOADK R14 K57 ["size-full-full radius-small anchor-center-center position-center-center"]
  SETTABLEKS R14 R13 K11 ["tag"]
  GETTABLEKS R14 R0 K58 ["uri"]
  SETTABLEKS R14 R13 K21 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Image"]
  GETUPVAL R11 1
  LOADK R12 K22 ["UIPadding"]
  DUPTABLE R13 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K38 [UDim.new]
  LOADN R15 0
  MOVE R16 R3
  CALL R14 2 1
  SETTABLEKS R14 R13 K59 ["PaddingLeft"]
  GETIMPORT R14 K38 [UDim.new]
  LOADN R15 0
  MOVE R16 R3
  CALL R14 2 1
  SETTABLEKS R14 R13 K60 ["PaddingRight"]
  GETIMPORT R14 K38 [UDim.new]
  LOADN R15 0
  MOVE R16 R3
  CALL R14 2 1
  SETTABLEKS R14 R13 K61 ["PaddingTop"]
  GETIMPORT R14 K38 [UDim.new]
  LOADN R15 0
  MOVE R16 R3
  CALL R14 2 1
  SETTABLEKS R14 R13 K62 ["PaddingBottom"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["UIPadding"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["canSelect"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 1
  GETUPVAL R1 2
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R0 3
  GETUPVAL R1 2
  CALL R0 1 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K1 ["onActivated"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K1 ["onActivated"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R0 K8 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasSize", "ScrollingDirection", "ScrollingEnabled", "HorizontalScrollBarInset", "VerticalScrollBarInset", "scrollBarVisibility"}]
  GETIMPORT R1 K11 [Enum.AutomaticSize.X]
  SETTABLEKS R1 R0 K0 ["AutomaticCanvasSize"]
  GETIMPORT R1 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R1 R0 K1 ["AutomaticSize"]
  GETIMPORT R1 K16 [UDim2.fromOffset]
  LOADN R2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["height"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["CanvasSize"]
  GETIMPORT R1 K18 [Enum.ScrollingDirection.X]
  SETTABLEKS R1 R0 K3 ["ScrollingDirection"]
  LOADB R1 1
  SETTABLEKS R1 R0 K4 ["ScrollingEnabled"]
  GETIMPORT R1 K21 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R1 R0 K5 ["HorizontalScrollBarInset"]
  GETIMPORT R1 K23 [Enum.ScrollBarInset.None]
  SETTABLEKS R1 R0 K6 ["VerticalScrollBarInset"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K24 ["Enums"]
  GETTABLEKS R2 R3 K25 ["Visibility"]
  GETTABLEKS R1 R2 K26 ["Auto"]
  SETTABLEKS R1 R0 K7 ["scrollBarVisibility"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useState"]
  LOADN R3 1
  CALL R2 1 2
  NEWTABLE R4 0 0
  GETTABLEKS R5 R0 K1 ["items"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  MOVE R11 R4
  GETUPVAL R12 2
  GETUPVAL R13 3
  DUPTABLE R14 K9 [{"key", "uri", "size", "imagePadding", "selected", "onActivated", "LayoutOrder"}]
  GETTABLEKS R15 R9 K3 ["uri"]
  SETTABLEKS R15 R14 K2 ["key"]
  GETTABLEKS R15 R9 K3 ["uri"]
  SETTABLEKS R15 R14 K3 ["uri"]
  GETTABLEKS R15 R0 K10 ["height"]
  SETTABLEKS R15 R14 K4 ["size"]
  GETTABLEKS R15 R0 K5 ["imagePadding"]
  SETTABLEKS R15 R14 K5 ["imagePadding"]
  GETTABLEKS R16 R0 K11 ["canSelect"]
  JUMPIFNOT R16 [+5]
  JUMPIFEQ R8 R2 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMP [+1]
  LOADB R15 0
  SETTABLEKS R15 R14 K6 ["selected"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K7 ["onActivated"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K8 ["LayoutOrder"]
  CALL R12 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K14 [table.insert]
  CALL R10 -1 0
  FORGLOOP R5 2 [-49]
  LOADNIL R5
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+15]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["useMemo"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NEWTABLE R8 0 1
  GETTABLEKS R9 R0 K10 ["height"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+22]
  DUPTABLE R6 K20 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "HorizontalScrollBarInset"}]
  GETIMPORT R7 K24 [Enum.AutomaticSize.X]
  SETTABLEKS R7 R6 K16 ["AutomaticCanvasSize"]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 0
  GETTABLEKS R9 R0 K10 ["height"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["CanvasSize"]
  GETIMPORT R7 K28 [Enum.ScrollingDirection.X]
  SETTABLEKS R7 R6 K18 ["ScrollingDirection"]
  GETIMPORT R7 K31 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R7 R6 K19 ["HorizontalScrollBarInset"]
  MOVE R5 R6
  GETUPVAL R6 2
  GETUPVAL R7 6
  DUPTABLE R8 K34 [{"tag", "scroll", "LayoutOrder"}]
  LOADK R9 K35 ["size-full-0 auto-y Component-Carousel"]
  SETTABLEKS R9 R8 K32 ["tag"]
  SETTABLEKS R5 R8 K33 ["scroll"]
  GETTABLEKS R9 R0 K8 ["LayoutOrder"]
  SETTABLEKS R9 R8 K8 ["LayoutOrder"]
  DUPTABLE R9 K37 [{"Container"}]
  GETUPVAL R10 2
  GETUPVAL R11 7
  DUPTABLE R12 K39 [{"tag", "testId"}]
  LOADK R13 K40 ["row auto-xy gap-small padding-bottom-xsmall"]
  SETTABLEKS R13 R12 K32 ["tag"]
  LOADK R13 K41 ["Assistant-Carousel-Container"]
  SETTABLEKS R13 R12 K38 ["testId"]
  MOVE R13 R4
  CALL R10 3 1
  SETTABLEKS R10 R9 K36 ["Container"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Flags"]
  GETTABLEKS R5 R6 K11 ["FFlagMCPAssistantRunCodeMaxHeight"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K12 ["Image"]
  GETTABLEKS R6 R1 K13 ["ScrollView"]
  GETTABLEKS R7 R1 K14 ["View"]
  GETTABLEKS R8 R3 K15 ["createNextOrder"]
  GETTABLEKS R9 R2 K16 ["createElement"]
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R11 K18 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R11 1
