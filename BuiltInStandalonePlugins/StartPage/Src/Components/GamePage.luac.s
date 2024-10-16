PROTO_0:
  GETTABLEKS R1 R0 K0 ["DropdownLabel"]
  RETURN R1 1

PROTO_1:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  MOVE R2 R0
  DUPCLOSURE R3 K0 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageIsOnGridView"]
  NAMECALL R0 R0 K1 ["GetSetting"]
  CALL R0 2 1
  LOADB R1 1
  JUMPIFEQKNIL R0 [+2]
  MOVE R1 R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+9]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 2
  JUMPIF R1 [+3]
  GETUPVAL R1 3
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFEQ R0 R1 [+47]
  GETUPVAL R1 1
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R5 K6 ["navigation"]
  SETTABLEKS R5 R4 K0 ["telemetryType"]
  LOADK R5 K7 ["tab"]
  SETTABLEKS R5 R4 K1 ["telemetrySubtype"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["PageName"]
  SETTABLEKS R5 R4 K2 ["context"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Tabs"]
  GETUPVAL R8 0
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K10 ["Key"]
  SETTABLEKS R5 R4 K3 ["from"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["Tabs"]
  GETTABLE R6 R7 R0
  GETTABLEKS R5 R6 K10 ["Key"]
  SETTABLEKS R5 R4 K4 ["to"]
  NAMECALL R1 R1 K11 ["log"]
  CALL R1 3 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K12 ["restartAnimation"]
  CALL R1 0 0
  GETUPVAL R1 5
  JUMPIF R1 [+3]
  GETUPVAL R1 6
  LOADB R2 0
  CALL R1 1 0
  GETUPVAL R1 7
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["restartAnimation"]
  CALL R2 0 0
  GETUPVAL R2 2
  JUMPIF R2 [+3]
  GETUPVAL R2 3
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["LuaStartPageIsOnGridView"]
  GETUPVAL R4 1
  NOT R3 R4
  NAMECALL R0 R0 K1 ["SetSetting"]
  CALL R0 3 0
  GETUPVAL R0 2
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["restartAnimation"]
  CALL R2 0 0
  GETUPVAL R2 2
  JUMPIF R2 [+3]
  GETUPVAL R2 3
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K2 [{"Title"}]
  GETUPVAL R7 3
  JUMPIFEQKS R7 K3 [""] [+8]
  GETUPVAL R6 4
  LOADK R8 K4 ["Plugin"]
  LOADK R9 K5 ["NoSearchResultsToDisplay"]
  NAMECALL R6 R6 K6 ["getText"]
  CALL R6 3 1
  JUMP [+7]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K7 ["Tabs"]
  GETUPVAL R9 6
  GETTABLE R7 R8 R9
  GETTABLEKS R6 R7 K8 ["FailedTitle"]
  SETTABLEKS R6 R5 K1 ["Title"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R1 0
  JUMPIF R1 [+3]
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 0
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Plugin"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R4 3
  LOADN R5 1
  CALL R4 1 2
  GETUPVAL R6 3
  NEWTABLE R7 0 0
  CALL R6 1 2
  GETUPVAL R8 3
  LOADK R9 K3 [""]
  CALL R8 1 2
  LOADNIL R10
  LOADNIL R11
  GETUPVAL R12 4
  JUMPIF R12 [+5]
  GETUPVAL R12 3
  LOADB R13 0
  CALL R12 1 2
  MOVE R10 R12
  MOVE R11 R13
  GETUPVAL R12 3
  NEWCLOSURE R13 P0
  CAPTURE VAL R1
  CALL R12 1 2
  GETUPVAL R14 5
  LOADK R15 K4 ["PointingHand"]
  CALL R14 1 2
  GETTABLEKS R18 R0 K5 ["Tabs"]
  GETTABLE R17 R18 R4
  GETTABLEKS R16 R17 K6 ["Dropdowns"]
  GETUPVAL R17 3
  JUMPIFNOT R16 [+6]
  GETTABLEKS R19 R16 K7 ["DefaultSortIndex"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R18 R16 K7 ["DefaultSortIndex"]
  JUMP [+1]
  LOADN R18 1
  CALL R17 1 2
  GETUPVAL R19 3
  LOADN R20 1
  CALL R19 1 2
  LOADNIL R21
  LOADNIL R22
  JUMPIFNOT R16 [+23]
  JUMPIFNOT R12 [+11]
  GETTABLEKS R23 R16 K8 ["SortDropdown"]
  JUMPIF R23 [+2]
  LOADNIL R21
  JUMP [+7]
  GETUPVAL R24 6
  MOVE R25 R23
  DUPCLOSURE R26 K9 [PROTO_0]
  CALL R24 2 1
  MOVE R21 R24
  JUMP [+1]
  LOADNIL R21
  GETTABLEKS R23 R16 K10 ["GroupDropdown"]
  JUMPIF R23 [+2]
  LOADNIL R22
  JUMP [+5]
  GETUPVAL R24 6
  MOVE R25 R23
  DUPCLOSURE R26 K9 [PROTO_0]
  CALL R24 2 1
  MOVE R22 R24
  NEWTABLE R23 1 0
  JUMPIFNOT R16 [+30]
  GETTABLEKS R24 R16 K8 ["SortDropdown"]
  JUMPIFNOT R24 [+9]
  GETUPVAL R24 7
  MOVE R25 R23
  GETTABLEKS R28 R16 K8 ["SortDropdown"]
  GETTABLE R27 R28 R17
  GETTABLEKS R26 R27 K11 ["Query"]
  CALL R24 2 1
  MOVE R23 R24
  GETTABLEKS R24 R16 K10 ["GroupDropdown"]
  JUMPIFNOT R24 [+15]
  GETTABLEKS R25 R16 K10 ["GroupDropdown"]
  LENGTH R24 R25
  LOADN R25 0
  JUMPIFNOTLT R25 R24 [+10]
  GETUPVAL R24 7
  MOVE R25 R23
  GETTABLEKS R28 R16 K10 ["GroupDropdown"]
  GETTABLE R27 R28 R19
  GETTABLEKS R26 R27 K11 ["Query"]
  CALL R24 2 1
  MOVE R23 R24
  JUMPIFNOT R8 [+2]
  SETTABLEKS R8 R23 K12 ["search"]
  JUMPIFNOT R6 [+5]
  GETUPVAL R24 7
  MOVE R25 R23
  MOVE R26 R6
  CALL R24 2 1
  MOVE R23 R24
  GETUPVAL R24 8
  CALL R24 0 1
  GETUPVAL R26 9
  GETTABLEKS R25 R26 K13 ["createElement"]
  LOADK R26 K14 ["Frame"]
  NEWTABLE R27 4 0
  GETUPVAL R29 4
  JUMPIFNOT R29 [+2]
  LOADNIL R28
  JUMP [+2]
  GETTABLEKS R28 R0 K15 ["Size"]
  SETTABLEKS R28 R27 K15 ["Size"]
  GETUPVAL R29 4
  JUMPIFNOT R29 [+2]
  LOADNIL R28
  JUMP [+2]
  GETTABLEKS R28 R0 K16 ["Position"]
  SETTABLEKS R28 R27 K16 ["Position"]
  GETUPVAL R29 9
  GETTABLEKS R28 R29 K17 ["Tag"]
  GETUPVAL R30 4
  JUMPIFNOT R30 [+2]
  LOADK R29 K18 ["StartPage-GamePagePadding X-ColumnM X-Left X-Fill X-Transparent"]
  JUMP [+1]
  LOADK R29 K19 ["StartPage-GamePagePadding X-ColumnM X-Left X-Transparent"]
  SETTABLE R29 R27 R28
  DUPTABLE R28 K24 [{"SearchBar", "Controls", "Title", "PageComponent"}]
  GETTABLEKS R30 R0 K25 ["HasSearchBar"]
  JUMPIFNOT R30 [+61]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K13 ["createElement"]
  GETUPVAL R30 10
  NEWTABLE R31 16 0
  GETIMPORT R32 K28 [UDim2.new]
  LOADN R33 1
  LOADN R34 226
  LOADN R35 0
  LOADN R36 48
  CALL R32 4 1
  SETTABLEKS R32 R31 K15 ["Size"]
  MOVE R32 R24
  CALL R32 0 1
  SETTABLEKS R32 R31 K29 ["LayoutOrder"]
  LOADK R34 K0 ["Plugin"]
  LOADK R35 K30 ["SearchPlaceholder"]
  NAMECALL R32 R3 K31 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K32 ["PlaceholderText"]
  NEWCLOSURE R32 P2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE UPVAL U4
  CAPTURE REF R11
  SETTABLEKS R32 R31 K33 ["OnSearchRequested"]
  LOADB R32 1
  SETTABLEKS R32 R31 K34 ["ShowSearchIcon"]
  SETTABLEKS R16 R31 K6 ["Dropdowns"]
  GETTABLEKS R34 R0 K5 ["Tabs"]
  GETTABLE R33 R34 R4
  GETTABLEKS R32 R33 K23 ["PageComponent"]
  SETTABLEKS R32 R31 K35 ["ResultComponent"]
  GETTABLEKS R34 R0 K5 ["Tabs"]
  GETTABLE R33 R34 R4
  GETTABLEKS R32 R33 K22 ["Title"]
  SETTABLEKS R32 R31 K36 ["Type"]
  SETTABLEKS R23 R31 K37 ["BaseQuery"]
  GETUPVAL R33 9
  GETTABLEKS R32 R33 K17 ["Tag"]
  LOADK R33 K38 ["X-Pad"]
  SETTABLE R33 R31 R32
  CALL R29 2 1
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K20 ["SearchBar"]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K13 ["createElement"]
  LOADK R30 K14 ["Frame"]
  NEWTABLE R31 2 0
  MOVE R32 R24
  CALL R32 0 1
  SETTABLEKS R32 R31 K29 ["LayoutOrder"]
  GETUPVAL R33 9
  GETTABLEKS R32 R33 K17 ["Tag"]
  LOADK R33 K39 ["X-FitY X-Transparent"]
  SETTABLE R33 R31 R32
  DUPTABLE R32 K42 [{"Pills", "DropdownControls"}]
  GETUPVAL R34 9
  GETTABLEKS R33 R34 K13 ["createElement"]
  GETUPVAL R34 11
  DUPTABLE R35 K45 [{"Tabs", "DefaultSelectedTab", "OnTabSelected"}]
  GETTABLEKS R36 R0 K5 ["Tabs"]
  SETTABLEKS R36 R35 K5 ["Tabs"]
  GETTABLEKS R38 R0 K5 ["Tabs"]
  GETTABLEN R37 R38 1
  GETTABLEKS R36 R37 K46 ["Key"]
  SETTABLEKS R36 R35 K43 ["DefaultSelectedTab"]
  NEWCLOSURE R36 P3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE REF R11
  CAPTURE VAL R5
  SETTABLEKS R36 R35 K44 ["OnTabSelected"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K40 ["Pills"]
  GETUPVAL R34 9
  GETTABLEKS R33 R34 K13 ["createElement"]
  LOADK R34 K14 ["Frame"]
  NEWTABLE R35 2 0
  GETIMPORT R36 K28 [UDim2.new]
  LOADN R37 1
  LOADN R38 226
  LOADN R39 0
  LOADN R40 32
  CALL R36 4 1
  SETTABLEKS R36 R35 K15 ["Size"]
  GETUPVAL R37 9
  GETTABLEKS R36 R37 K17 ["Tag"]
  LOADK R37 K47 ["X-RowS X-Right X-Transparent"]
  SETTABLE R37 R35 R36
  DUPTABLE R36 K49 [{"GroupDropdown", "ToggleView", "SortDropdown"}]
  JUMPIFNOT R22 [+45]
  GETUPVAL R38 4
  JUMPIF R38 [+1]
  JUMPIFNOT R10 [+42]
  GETUPVAL R38 9
  GETTABLEKS R37 R38 K13 ["createElement"]
  GETUPVAL R38 14
  DUPTABLE R39 K54 [{"LayoutOrder", "PlaceholderText", "Size", "SelectedIndex", "Items", "Variant", "OnItemActivated"}]
  MOVE R40 R24
  CALL R40 0 1
  SETTABLEKS R40 R39 K29 ["LayoutOrder"]
  LOADK R42 K0 ["Plugin"]
  LOADK R43 K55 ["GroupDropdown.Placeholder"]
  NAMECALL R40 R3 K31 ["getText"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K32 ["PlaceholderText"]
  GETIMPORT R40 K28 [UDim2.new]
  LOADN R41 0
  LOADN R42 186
  LOADN R43 0
  LOADN R44 32
  CALL R40 4 1
  SETTABLEKS R40 R39 K15 ["Size"]
  SETTABLEKS R19 R39 K50 ["SelectedIndex"]
  SETTABLEKS R22 R39 K51 ["Items"]
  LOADK R40 K56 ["modern"]
  SETTABLEKS R40 R39 K52 ["Variant"]
  NEWCLOSURE R40 P4
  CAPTURE VAL R19
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE REF R11
  CAPTURE VAL R20
  SETTABLEKS R40 R39 K53 ["OnItemActivated"]
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K10 ["GroupDropdown"]
  GETTABLEKS R38 R0 K57 ["CanSwapBetweenViews"]
  JUMPIFNOT R38 [+70]
  GETUPVAL R38 4
  JUMPIF R38 [+1]
  JUMPIFNOT R10 [+67]
  GETUPVAL R38 9
  GETTABLEKS R37 R38 K13 ["createElement"]
  LOADK R38 K58 ["ImageButton"]
  NEWTABLE R39 8 0
  MOVE R40 R24
  CALL R40 0 1
  SETTABLEKS R40 R39 K29 ["LayoutOrder"]
  GETIMPORT R40 K28 [UDim2.new]
  LOADN R41 0
  LOADN R42 30
  LOADN R43 0
  LOADN R44 32
  CALL R40 4 1
  SETTABLEKS R40 R39 K15 ["Size"]
  GETUPVAL R42 9
  GETTABLEKS R41 R42 K59 ["Event"]
  GETTABLEKS R40 R41 K60 ["Activated"]
  NEWCLOSURE R41 P5
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLE R41 R39 R40
  GETUPVAL R42 9
  GETTABLEKS R41 R42 K59 ["Event"]
  GETTABLEKS R40 R41 K61 ["MouseEnter"]
  SETTABLE R14 R39 R40
  GETUPVAL R42 9
  GETTABLEKS R41 R42 K59 ["Event"]
  GETTABLEKS R40 R41 K62 ["MouseLeave"]
  SETTABLE R15 R39 R40
  GETUPVAL R41 9
  GETTABLEKS R40 R41 K17 ["Tag"]
  LOADK R41 K63 ["X-Middle X-Center X-Corner StartPage-PageBackground"]
  SETTABLE R41 R39 R40
  NEWTABLE R40 0 1
  GETUPVAL R42 9
  GETTABLEKS R41 R42 K13 ["createElement"]
  GETUPVAL R42 15
  NEWTABLE R43 1 0
  GETUPVAL R45 9
  GETTABLEKS R44 R45 K17 ["Tag"]
  JUMPIFNOT R12 [+2]
  LOADK R45 K64 ["StartPage-ListIcon"]
  JUMP [+1]
  LOADK R45 K65 ["StartPage-GridIcon"]
  SETTABLE R45 R43 R44
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K48 ["ToggleView"]
  JUMPIFNOT R21 [+45]
  GETUPVAL R38 4
  JUMPIF R38 [+1]
  JUMPIFNOT R10 [+42]
  GETUPVAL R38 9
  GETTABLEKS R37 R38 K13 ["createElement"]
  GETUPVAL R38 14
  DUPTABLE R39 K54 [{"LayoutOrder", "PlaceholderText", "Size", "SelectedIndex", "Items", "Variant", "OnItemActivated"}]
  MOVE R40 R24
  CALL R40 0 1
  SETTABLEKS R40 R39 K29 ["LayoutOrder"]
  LOADK R42 K0 ["Plugin"]
  LOADK R43 K66 ["SortDropdown.Placeholder"]
  NAMECALL R40 R3 K31 ["getText"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K32 ["PlaceholderText"]
  GETIMPORT R40 K28 [UDim2.new]
  LOADN R41 0
  LOADN R42 186
  LOADN R43 0
  LOADN R44 32
  CALL R40 4 1
  SETTABLEKS R40 R39 K15 ["Size"]
  SETTABLEKS R17 R39 K50 ["SelectedIndex"]
  SETTABLEKS R21 R39 K51 ["Items"]
  LOADK R40 K56 ["modern"]
  SETTABLEKS R40 R39 K52 ["Variant"]
  NEWCLOSURE R40 P6
  CAPTURE VAL R17
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE REF R11
  CAPTURE VAL R18
  SETTABLEKS R40 R39 K53 ["OnItemActivated"]
  CALL R37 2 1
  JUMP [+1]
  LOADNIL R37
  SETTABLEKS R37 R36 K8 ["SortDropdown"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K41 ["DropdownControls"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K21 ["Controls"]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K13 ["createElement"]
  LOADK R30 K14 ["Frame"]
  NEWTABLE R31 4 0
  MOVE R32 R24
  CALL R32 0 1
  SETTABLEKS R32 R31 K29 ["LayoutOrder"]
  GETIMPORT R32 K28 [UDim2.new]
  LOADN R33 0
  LOADN R34 44
  LOADN R35 0
  LOADN R36 45
  CALL R32 4 1
  SETTABLEKS R32 R31 K15 ["Size"]
  GETUPVAL R33 9
  GETTABLEKS R32 R33 K17 ["Tag"]
  LOADK R33 K67 ["X-Transparent"]
  SETTABLE R33 R31 R32
  NEWTABLE R32 0 1
  GETUPVAL R34 4
  JUMPIF R34 [+1]
  JUMPIFNOT R10 [+28]
  GETUPVAL R34 9
  GETTABLEKS R33 R34 K13 ["createElement"]
  LOADK R34 K68 ["TextLabel"]
  NEWTABLE R35 2 0
  JUMPIFEQKS R8 K3 [""] [+7]
  LOADK R38 K0 ["Plugin"]
  LOADK R39 K69 ["SearchResults"]
  NAMECALL R36 R3 K31 ["getText"]
  CALL R36 3 1
  JUMP [+5]
  GETTABLEKS R38 R0 K5 ["Tabs"]
  GETTABLE R37 R38 R4
  GETTABLEKS R36 R37 K22 ["Title"]
  SETTABLEKS R36 R35 K70 ["Text"]
  GETUPVAL R37 9
  GETTABLEKS R36 R37 K17 ["Tag"]
  LOADK R37 K71 ["X-Fit StartPage-TextColor StartPage-TextSizeL StartPage-FontBold X-Transparent"]
  SETTABLE R37 R35 R36
  CALL R33 2 1
  JUMP [+17]
  GETUPVAL R34 9
  GETTABLEKS R33 R34 K13 ["createElement"]
  GETUPVAL R35 13
  GETTABLEKS R34 R35 K72 ["Component"]
  DUPTABLE R35 K73 [{"Size"}]
  GETIMPORT R36 K28 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 1
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K15 ["Size"]
  CALL R33 2 1
  SETLIST R32 R33 1 [1]
  CALL R29 3 1
  SETTABLEKS R29 R28 K22 ["Title"]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K13 ["createElement"]
  LOADK R30 K14 ["Frame"]
  NEWTABLE R31 4 0
  MOVE R32 R24
  CALL R32 0 1
  SETTABLEKS R32 R31 K29 ["LayoutOrder"]
  GETIMPORT R32 K28 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 1
  GETTABLEKS R37 R0 K25 ["HasSearchBar"]
  JUMPIFNOT R37 [+2]
  LOADN R36 96
  JUMP [+1]
  LOADN R36 156
  CALL R32 4 1
  SETTABLEKS R32 R31 K15 ["Size"]
  GETUPVAL R33 9
  GETTABLEKS R32 R33 K17 ["Tag"]
  LOADK R33 K67 ["X-Transparent"]
  SETTABLE R33 R31 R32
  NEWTABLE R32 0 1
  GETUPVAL R34 9
  GETTABLEKS R33 R34 K13 ["createElement"]
  GETTABLEKS R36 R0 K5 ["Tabs"]
  GETTABLE R35 R36 R4
  GETTABLEKS R34 R35 K23 ["PageComponent"]
  DUPTABLE R35 K82 [{"Size", "Position", "DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "HasParentLoaded", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
  GETIMPORT R36 K28 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 1
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K15 ["Size"]
  GETIMPORT R36 K28 [UDim2.new]
  LOADN R37 0
  LOADN R38 240
  LOADN R39 0
  LOADN R40 240
  CALL R36 4 1
  SETTABLEKS R36 R35 K16 ["Position"]
  JUMPIFNOT R12 [+2]
  GETUPVAL R36 16
  JUMP [+1]
  GETUPVAL R36 17
  SETTABLEKS R36 R35 K74 ["DisplayComponent"]
  SETTABLEKS R16 R35 K6 ["Dropdowns"]
  NEWCLOSURE R36 P7
  CAPTURE UPVAL U9
  CAPTURE UPVAL U18
  CAPTURE UPVAL U7
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R36 R35 K75 ["NoContentDisplayComponent"]
  NOT R36 R12
  JUMPIFNOT R36 [+4]
  MOVE R36 R16
  JUMPIFNOT R36 [+2]
  GETTABLEKS R36 R16 K8 ["SortDropdown"]
  SETTABLEKS R36 R35 K76 ["CanDisplayComponentAdjustQuery"]
  JUMPIF R12 [+5]
  NEWCLOSURE R36 P8
  CAPTURE UPVAL U4
  CAPTURE REF R11
  CAPTURE VAL R7
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K77 ["DisplayComponentHasAdjustedQuery"]
  GETUPVAL R37 4
  JUMPIFNOT R37 [+2]
  LOADNIL R36
  JUMP [+1]
  MOVE R36 R10
  SETTABLEKS R36 R35 K78 ["HasParentLoaded"]
  GETUPVAL R37 4
  JUMPIFNOT R37 [+2]
  DUPCLOSURE R36 K83 [PROTO_10]
  JUMP [+2]
  NEWCLOSURE R36 P10
  CAPTURE REF R11
  SETTABLEKS R36 R35 K79 ["InitialContentHasLoaded"]
  GETTABLEKS R36 R0 K80 ["CellSize"]
  SETTABLEKS R36 R35 K80 ["CellSize"]
  GETIMPORT R36 K28 [UDim2.new]
  LOADN R37 0
  LOADN R38 16
  LOADN R39 0
  LOADN R40 16
  CALL R36 4 1
  SETTABLEKS R36 R35 K81 ["CellPadding"]
  SETTABLEKS R23 R35 K37 ["BaseQuery"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  SETTABLEKS R29 R28 K23 ["PageComponent"]
  CALL R25 3 -1
  CLOSEUPVALS R11
  RETURN R25 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useState"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaStartPageQuickLoad"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["TypedDash"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["map"]
  GETTABLEKS R6 R4 K15 ["join"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K16 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K12 ["Util"]
  GETTABLEKS R8 R9 K17 ["counter"]
  GETTABLEKS R10 R7 K18 ["ContextServices"]
  GETTABLEKS R9 R10 K19 ["Localization"]
  GETTABLEKS R10 R7 K20 ["UI"]
  GETTABLEKS R11 R10 K21 ["Grid"]
  GETTABLEKS R12 R10 K22 ["SelectInput"]
  GETTABLEKS R13 R10 K23 ["Image"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K9 ["Src"]
  GETTABLEKS R17 R18 K12 ["Util"]
  GETTABLEKS R16 R17 K24 ["Telemetry"]
  GETTABLEKS R15 R16 K25 ["TelemetryContext"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K12 ["Util"]
  GETTABLEKS R17 R18 K24 ["Telemetry"]
  GETTABLEKS R16 R17 K26 ["StartPageTelemetryEvent"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K27 ["Components"]
  GETTABLEKS R17 R18 K28 ["Shimmer"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K9 ["Src"]
  GETTABLEKS R19 R20 K27 ["Components"]
  GETTABLEKS R18 R19 K29 ["PillTabs"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K9 ["Src"]
  GETTABLEKS R20 R21 K27 ["Components"]
  GETTABLEKS R19 R20 K30 ["ExperiencesTable"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K9 ["Src"]
  GETTABLEKS R21 R22 K27 ["Components"]
  GETTABLEKS R20 R21 K31 ["SearchBarWithPills"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K9 ["Src"]
  GETTABLEKS R22 R23 K27 ["Components"]
  GETTABLEKS R21 R22 K32 ["NoResultsFoundPage"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K9 ["Src"]
  GETTABLEKS R23 R24 K33 ["Hooks"]
  GETTABLEKS R22 R23 K34 ["useCursor"]
  CALL R21 1 1
  GETTABLEKS R22 R7 K18 ["ContextServices"]
  GETIMPORT R23 K5 [require]
  GETTABLEKS R25 R0 K9 ["Src"]
  GETTABLEKS R24 R25 K35 ["Types"]
  CALL R23 1 1
  DUPCLOSURE R24 K36 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R25 K37 [PROTO_12]
  CAPTURE VAL R22
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R20
  RETURN R25 1
