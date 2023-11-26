PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["Modal"]
  GETTABLEKS R1 R2 K2 ["onSearchOptionsMouse"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["Modal"]
  GETTABLEKS R1 R2 K2 ["onSearchOptionsMouse"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnReset"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["search"]
  GETTABLEKS R2 R0 K2 ["GetSearchOptions"]
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETTABLEKS R3 R1 K3 ["Settings"]
  LOADK R5 K4 ["Plugin"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  GETTABLEKS R4 R1 K6 ["searchWithOptions"]
  MOVE R5 R2
  MOVE R6 R3
  MOVE R7 R0
  CALL R4 3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["cancel"]
  CALL R4 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"contentSize"}]
  SETTABLEKS R0 R3 K0 ["contentSize"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K0 ["state"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K2 ["layoutRef"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["cancel"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["mouseEnter"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["mouseLeave"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onReset"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onSubmit"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["search"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["updateContentsSize"]
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["AbsoluteSize"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  GETTABLEKS R6 R2 K5 ["contentSize"]
  GETTABLEKS R7 R5 K6 ["searchOptions"]
  LOADK R10 K7 ["General"]
  LOADK R11 K8 ["SearchOptionsDone"]
  NAMECALL R8 R4 K9 ["getText"]
  CALL R8 3 1
  GETUPVAL R9 0
  MOVE R10 R8
  LOADNIL R11
  LOADNIL R12
  GETIMPORT R13 K12 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 -1
  CALL R9 -1 1
  LOADB R10 1
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  JUMPIFNOT R6 [+19]
  GETTABLEKS R13 R3 K15 ["Y"]
  GETUPVAL R15 1
  ADDK R14 R15 K16 [40]
  SUB R12 R13 R14
  GETTABLEKS R14 R6 K15 ["Y"]
  ADDK R13 R14 K17 [42]
  JUMPIFNOTLT R13 R12 [+10]
  GETIMPORT R14 K14 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  MOVE R18 R13
  CALL R14 4 1
  MOVE R11 R14
  LOADB R10 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K11 ["new"]
  CALL R12 0 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K20 [{"Priority"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K19 ["Priority"]
  DUPTABLE R16 K22 [{"ClickEventDetectFrame"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K18 ["createElement"]
  LOADK R18 K23 ["ImageButton"]
  NEWTABLE R19 8 0
  LOADB R20 0
  SETTABLEKS R20 R19 K24 ["AutoButtonColor"]
  LOADK R20 K25 [0.25]
  SETTABLEKS R20 R19 K26 ["BackgroundTransparency"]
  GETUPVAL R20 5
  SETTABLEKS R20 R19 K27 ["BackgroundColor3"]
  GETIMPORT R20 K29 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K30 ["Size"]
  LOADN R20 10
  SETTABLEKS R20 R19 K31 ["ZIndex"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K32 ["Event"]
  GETTABLEKS R20 R21 K33 ["Activated"]
  GETTABLEKS R21 R0 K34 ["cancel"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K36 [{"MainPositioning"}]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 6
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K37 ["join"]
  DUPTABLE R24 K40 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R25 K12 [Vector2.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K38 ["AnchorPoint"]
  GETIMPORT R25 K14 [UDim2.new]
  LOADN R26 1
  LOADN R27 252
  LOADN R28 0
  GETUPVAL R30 1
  ADDK R29 R30 K41 [4]
  CALL R25 4 1
  SETTABLEKS R25 R24 K39 ["Position"]
  GETIMPORT R25 K14 [UDim2.new]
  LOADN R26 0
  GETUPVAL R28 8
  GETTABLEKS R27 R28 K42 ["TOOLBOX_MIN_WIDTH"]
  LOADN R28 1
  GETUPVAL R32 1
  ADDK R31 R32 K43 [8]
  ADDK R30 R31 K17 [42]
  MINUS R29 R30
  CALL R25 4 1
  SETTABLEKS R25 R24 K30 ["Size"]
  GETTABLEKS R25 R1 K44 ["WrapperProps"]
  CALL R23 2 1
  DUPTABLE R24 K46 [{"Contents"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 6
  NEWTABLE R27 8 0
  GETTABLEKS R28 R7 K47 ["background"]
  SETTABLEKS R28 R27 K48 ["BackgroundColor"]
  DUPCLOSURE R28 K49 [PROTO_8]
  SETTABLEKS R28 R27 K50 ["OnClick"]
  SETTABLEKS R11 R27 K30 ["Size"]
  LOADK R28 K51 ["BorderBox"]
  SETTABLEKS R28 R27 K52 ["Style"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K32 ["Event"]
  GETTABLEKS R28 R29 K53 ["MouseEnter"]
  GETTABLEKS R29 R0 K54 ["mouseEnter"]
  SETTABLE R29 R27 R28
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K32 ["Event"]
  GETTABLEKS R28 R29 K55 ["MouseLeave"]
  GETTABLEKS R29 R0 K56 ["mouseLeave"]
  SETTABLE R29 R27 R28
  DUPTABLE R28 K59 [{"Container", "BottomButtonsContainer"}]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R30 9
  DUPTABLE R31 K64 [{"AutoSizeCanvas", "AutoSizeLayoutOptions", "Layout", "OnCanvasResize", "Position", "Size"}]
  LOADB R32 1
  SETTABLEKS R32 R31 K60 ["AutoSizeCanvas"]
  DUPTABLE R32 K66 [{"SortOrder"}]
  GETIMPORT R33 K69 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K65 ["SortOrder"]
  SETTABLEKS R32 R31 K61 ["AutoSizeLayoutOptions"]
  GETIMPORT R32 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R32 R31 K62 ["Layout"]
  GETTABLEKS R32 R0 K73 ["updateContentsSize"]
  SETTABLEKS R32 R31 K63 ["OnCanvasResize"]
  GETIMPORT R32 K14 [UDim2.new]
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K39 ["Position"]
  GETIMPORT R32 K14 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 1
  LOADN R36 214
  CALL R32 4 1
  SETTABLEKS R32 R31 K30 ["Size"]
  DUPTABLE R32 K77 [{"Padding", "Content", "ExtraPadding"}]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  LOADK R34 K78 ["UIPadding"]
  DUPTABLE R35 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R36 K85 [UDim.new]
  LOADN R37 0
  LOADN R38 10
  CALL R36 2 1
  SETTABLEKS R36 R35 K79 ["PaddingLeft"]
  GETIMPORT R36 K85 [UDim.new]
  LOADN R37 0
  LOADN R38 10
  CALL R36 2 1
  SETTABLEKS R36 R35 K80 ["PaddingRight"]
  GETIMPORT R36 K85 [UDim.new]
  LOADN R37 0
  LOADN R38 10
  CALL R36 2 1
  SETTABLEKS R36 R35 K81 ["PaddingTop"]
  GETIMPORT R36 K85 [UDim.new]
  LOADN R37 0
  LOADN R38 20
  CALL R36 2 1
  SETTABLEKS R36 R35 K82 ["PaddingBottom"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K74 ["Padding"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  GETUPVAL R34 6
  DUPTABLE R35 K89 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing", "Size"}]
  GETIMPORT R36 K91 [Enum.AutomaticSize.XY]
  SETTABLEKS R36 R35 K86 ["AutomaticSize"]
  GETIMPORT R36 K93 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R36 R35 K87 ["HorizontalAlignment"]
  GETIMPORT R36 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R36 R35 K62 ["Layout"]
  LOADN R36 0
  SETTABLEKS R36 R35 K88 ["Spacing"]
  GETIMPORT R36 K29 [UDim2.fromScale]
  LOADN R37 1
  LOADN R38 0
  CALL R36 2 1
  SETTABLEKS R36 R35 K30 ["Size"]
  GETTABLEKS R37 R0 K0 ["props"]
  GETUPVAL R39 3
  GETTABLEKS R38 R39 K94 ["Children"]
  GETTABLE R36 R37 R38
  CALL R33 3 1
  SETTABLEKS R33 R32 K75 ["Content"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  LOADK R34 K95 ["Frame"]
  DUPTABLE R35 K96 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R36 1
  SETTABLEKS R36 R35 K26 ["BackgroundTransparency"]
  GETIMPORT R36 K14 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 10
  CALL R36 4 1
  SETTABLEKS R36 R35 K30 ["Size"]
  NAMECALL R36 R12 K97 ["getNextOrder"]
  CALL R36 1 1
  SETTABLEKS R36 R35 K68 ["LayoutOrder"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K76 ["ExtraPadding"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K57 ["Container"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R30 6
  DUPTABLE R31 K98 [{"Padding", "Position", "Spacing", "Size", "ZIndex"}]
  DUPTABLE R32 K100 [{"Left", "Right"}]
  LOADN R33 10
  SETTABLEKS R33 R32 K92 ["Left"]
  LOADN R33 10
  SETTABLEKS R33 R32 K99 ["Right"]
  SETTABLEKS R32 R31 K74 ["Padding"]
  GETIMPORT R32 K14 [UDim2.new]
  LOADN R33 0
  LOADN R34 0
  LOADN R35 1
  LOADN R36 214
  CALL R32 4 1
  SETTABLEKS R32 R31 K39 ["Position"]
  LOADN R32 20
  SETTABLEKS R32 R31 K88 ["Spacing"]
  GETIMPORT R32 K14 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  LOADN R36 42
  CALL R32 4 1
  SETTABLEKS R32 R31 K30 ["Size"]
  LOADN R32 3
  SETTABLEKS R32 R31 K31 ["ZIndex"]
  DUPTABLE R32 K103 [{"GradientOverlay", "Footer"}]
  MOVE R33 R10
  JUMPIFNOT R33 [+83]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  LOADK R34 K95 ["Frame"]
  DUPTABLE R35 K105 [{"LayoutOrder", "Size", "Position", "BackgroundColor3", "BorderColor3"}]
  NAMECALL R36 R12 K97 ["getNextOrder"]
  CALL R36 1 1
  SETTABLEKS R36 R35 K68 ["LayoutOrder"]
  GETIMPORT R36 K14 [UDim2.new]
  LOADN R37 1
  LOADN R38 248
  LOADN R39 0
  LOADN R40 20
  CALL R36 4 1
  SETTABLEKS R36 R35 K30 ["Size"]
  GETIMPORT R36 K14 [UDim2.new]
  LOADN R37 0
  LOADN R38 0
  LOADN R39 0
  LOADN R40 236
  CALL R36 4 1
  SETTABLEKS R36 R35 K39 ["Position"]
  GETIMPORT R36 K107 [Color3.new]
  LOADN R37 1
  LOADN R38 1
  LOADN R39 1
  CALL R36 3 1
  SETTABLEKS R36 R35 K27 ["BackgroundColor3"]
  GETIMPORT R36 K107 [Color3.new]
  LOADN R37 1
  LOADN R38 1
  LOADN R39 1
  CALL R36 3 1
  SETTABLEKS R36 R35 K104 ["BorderColor3"]
  DUPTABLE R36 K109 [{"Gradient"}]
  GETUPVAL R38 3
  GETTABLEKS R37 R38 K18 ["createElement"]
  LOADK R38 K110 ["UIGradient"]
  DUPTABLE R39 K114 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R40 K116 [ColorSequence.new]
  GETTABLEKS R41 R7 K47 ["background"]
  CALL R40 1 1
  SETTABLEKS R40 R39 K111 ["Color"]
  LOADN R40 90
  SETTABLEKS R40 R39 K112 ["Rotation"]
  GETIMPORT R40 K118 [NumberSequence.new]
  NEWTABLE R41 0 2
  GETIMPORT R42 K120 [NumberSequenceKeypoint.new]
  LOADN R43 0
  LOADN R44 1
  CALL R42 2 1
  GETIMPORT R43 K120 [NumberSequenceKeypoint.new]
  LOADN R44 1
  LOADK R45 K25 [0.25]
  CALL R43 2 -1
  SETLIST R41 R42 -1 [1]
  CALL R40 1 1
  SETTABLEKS R40 R39 K113 ["Transparency"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K108 ["Gradient"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K101 ["GradientOverlay"]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  GETUPVAL R34 6
  DUPTABLE R35 K122 [{"AutomaticSize", "AnchorPoint", "HorizontalAlignment", "VerticalAlignment", "Layout", "OnClick", "Padding", "Position", "Size", "Spacing"}]
  GETIMPORT R36 K123 [Enum.AutomaticSize.Y]
  SETTABLEKS R36 R35 K86 ["AutomaticSize"]
  GETIMPORT R36 K12 [Vector2.new]
  LOADN R37 0
  LOADN R38 1
  CALL R36 2 1
  SETTABLEKS R36 R35 K38 ["AnchorPoint"]
  GETIMPORT R36 K124 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R36 R35 K87 ["HorizontalAlignment"]
  GETIMPORT R36 K126 [Enum.VerticalAlignment.Center]
  SETTABLEKS R36 R35 K121 ["VerticalAlignment"]
  GETIMPORT R36 K128 [Enum.FillDirection.Horizontal]
  SETTABLEKS R36 R35 K62 ["Layout"]
  GETTABLEKS R36 R0 K129 ["footerButtonClicked"]
  SETTABLEKS R36 R35 K50 ["OnClick"]
  DUPTABLE R36 K131 [{"Bottom"}]
  LOADN R37 8
  SETTABLEKS R37 R36 K130 ["Bottom"]
  SETTABLEKS R36 R35 K74 ["Padding"]
  GETIMPORT R36 K14 [UDim2.new]
  LOADN R37 0
  LOADN R38 0
  LOADN R39 1
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K39 ["Position"]
  GETIMPORT R36 K14 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K30 ["Size"]
  LOADN R36 20
  SETTABLEKS R36 R35 K88 ["Spacing"]
  DUPTABLE R36 K134 [{"CancelButton", "ApplyButton"}]
  GETUPVAL R38 3
  GETTABLEKS R37 R38 K18 ["createElement"]
  GETUPVAL R38 10
  DUPTABLE R39 K136 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text"}]
  GETIMPORT R40 K91 [Enum.AutomaticSize.XY]
  SETTABLEKS R40 R39 K86 ["AutomaticSize"]
  NAMECALL R40 R12 K97 ["getNextOrder"]
  CALL R40 1 1
  SETTABLEKS R40 R39 K68 ["LayoutOrder"]
  GETTABLEKS R40 R0 K137 ["onReset"]
  SETTABLEKS R40 R39 K50 ["OnClick"]
  LOADK R42 K7 ["General"]
  LOADK R43 K138 ["SearchOptionsResetAll"]
  NAMECALL R40 R4 K9 ["getText"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K135 ["Text"]
  CALL R37 2 1
  SETTABLEKS R37 R36 K132 ["CancelButton"]
  GETUPVAL R38 3
  GETTABLEKS R37 R38 K18 ["createElement"]
  GETUPVAL R38 11
  DUPTABLE R39 K139 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
  NAMECALL R40 R12 K97 ["getNextOrder"]
  CALL R40 1 1
  SETTABLEKS R40 R39 K68 ["LayoutOrder"]
  GETTABLEKS R40 R0 K140 ["onSubmit"]
  SETTABLEKS R40 R39 K50 ["OnClick"]
  LOADK R40 K141 ["RoundPrimary"]
  SETTABLEKS R40 R39 K52 ["Style"]
  GETIMPORT R40 K143 [UDim2.fromOffset]
  GETTABLEKS R42 R9 K144 ["X"]
  GETUPVAL R45 12
  GETTABLEKS R44 R45 K144 ["X"]
  MULK R43 R44 K145 [2]
  ADD R41 R42 R43
  GETTABLEKS R43 R9 K15 ["Y"]
  GETUPVAL R46 12
  GETTABLEKS R45 R46 K15 ["Y"]
  MULK R44 R45 K145 [2]
  ADD R42 R43 R44
  CALL R40 2 1
  SETTABLEKS R40 R39 K30 ["Size"]
  SETTABLEKS R8 R39 K135 ["Text"]
  DUPTABLE R40 K147 [{"HoverArea"}]
  GETUPVAL R42 3
  GETTABLEKS R41 R42 K18 ["createElement"]
  GETUPVAL R42 13
  DUPTABLE R43 K149 [{"Cursor"}]
  LOADK R44 K150 ["PointingHand"]
  SETTABLEKS R44 R43 K148 ["Cursor"]
  CALL R41 2 1
  SETTABLEKS R41 R40 K146 ["HoverArea"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K133 ["ApplyButton"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K102 ["Footer"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K58 ["BottomButtonsContainer"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K45 ["Contents"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K35 ["MainPositioning"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K21 ["ClickEventDetectFrame"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_10:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"searchWithOptions"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["searchWithOptions"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R9 R0 K10 ["Core"]
  GETTABLEKS R8 R9 K11 ["Networking"]
  GETTABLEKS R7 R8 K12 ["Requests"]
  GETTABLEKS R6 R7 K13 ["SearchWithOptions"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K14 ["Util"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R6 K15 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["withContext"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K10 ["Core"]
  GETTABLEKS R12 R13 K16 ["ContextServices"]
  GETTABLEKS R11 R12 K18 ["ModalContext"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K10 ["Core"]
  GETTABLEKS R13 R14 K16 ["ContextServices"]
  GETTABLEKS R12 R13 K19 ["Settings"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K10 ["Core"]
  GETTABLEKS R14 R15 K16 ["ContextServices"]
  GETTABLEKS R13 R14 K20 ["NetworkContext"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R14 R1 K21 ["Dash"]
  CALL R13 1 1
  GETTABLEKS R15 R4 K14 ["Util"]
  GETTABLEKS R14 R15 K22 ["GetTextSize"]
  GETTABLEKS R16 R4 K14 ["Util"]
  GETTABLEKS R15 R16 K23 ["LayoutOrderIterator"]
  GETTABLEKS R17 R4 K24 ["Wrappers"]
  GETTABLEKS R16 R17 K25 ["withAbsoluteSize"]
  GETTABLEKS R18 R4 K26 ["UI"]
  GETTABLEKS R17 R18 K27 ["Button"]
  GETTABLEKS R19 R4 K26 ["UI"]
  GETTABLEKS R18 R19 K28 ["HoverArea"]
  GETTABLEKS R20 R4 K26 ["UI"]
  GETTABLEKS R19 R20 K29 ["LinkText"]
  GETTABLEKS R21 R4 K26 ["UI"]
  GETTABLEKS R20 R21 K30 ["Pane"]
  GETTABLEKS R22 R4 K26 ["UI"]
  GETTABLEKS R21 R22 K31 ["ShowOnTop"]
  GETTABLEKS R23 R4 K26 ["UI"]
  GETTABLEKS R22 R23 K32 ["ScrollingFrame"]
  GETIMPORT R23 K35 [Vector2.new]
  LOADN R24 17
  LOADN R25 6
  CALL R23 2 1
  GETIMPORT R24 K38 [Color3.fromRGB]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  CALL R24 3 1
  GETTABLEKS R26 R7 K39 ["TAB_WIDGET_HEIGHT"]
  GETTABLEKS R27 R7 K40 ["HEADER_HEIGHT"]
  ADD R25 R26 R27
  GETIMPORT R26 K6 [require]
  GETTABLEKS R29 R0 K10 ["Core"]
  GETTABLEKS R28 R29 K41 ["Flags"]
  GETTABLEKS R27 R28 K42 ["getFFlagToolboxImproveJestOutputSpam"]
  CALL R26 1 1
  GETTABLEKS R27 R2 K43 ["PureComponent"]
  LOADK R29 K44 ["SearchOptionsLayout"]
  NAMECALL R27 R27 K45 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K46 [PROTO_7]
  CAPTURE VAL R26
  CAPTURE VAL R2
  SETTABLEKS R28 R27 K47 ["init"]
  DUPCLOSURE R28 K48 [PROTO_9]
  CAPTURE VAL R14
  CAPTURE VAL R25
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R20
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R23
  CAPTURE VAL R18
  SETTABLEKS R28 R27 K49 ["render"]
  MOVE R28 R9
  DUPTABLE R29 K54 [{"Localization", "Modal", "Network", "Stylizer", "Settings"}]
  GETTABLEKS R30 R8 K50 ["Localization"]
  SETTABLEKS R30 R29 K50 ["Localization"]
  SETTABLEKS R10 R29 K51 ["Modal"]
  SETTABLEKS R12 R29 K52 ["Network"]
  GETTABLEKS R30 R8 K53 ["Stylizer"]
  SETTABLEKS R30 R29 K53 ["Stylizer"]
  SETTABLEKS R11 R29 K19 ["Settings"]
  CALL R28 1 1
  MOVE R29 R27
  CALL R28 1 1
  MOVE R27 R28
  DUPCLOSURE R28 K55 [PROTO_11]
  CAPTURE VAL R5
  GETTABLEKS R29 R3 K56 ["connect"]
  LOADNIL R30
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R27
  CALL R29 1 1
  MOVE R27 R29
  MOVE R29 R16
  MOVE R30 R27
  CALL R29 1 -1
  RETURN R29 -1
