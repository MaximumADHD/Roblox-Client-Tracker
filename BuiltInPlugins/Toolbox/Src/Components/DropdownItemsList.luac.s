PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["dropdownHoveredItemIndex"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 DUPTABLE                         R1 K1 [{"dropdownHoveredItemIndex"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K0 ["dropdownHoveredItemIndex"]
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["dropdownHoveredItemIndex"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 DUPTABLE                         R1 K2 [{[1] = 0}]
        6 RETURN                           R1 1
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R2 ; [+4]
        1 MOVE                             R3 R2
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onDropdownItemMouseEntered"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onDropdownItemMouseLeft"]
       11 DUPCLOSURE                       R1 K6 [PROTO_4]
       12 SETTABLEKS                       R1 R0 K7 ["onDropdownItemActivated"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K8 ["lastReportedHeight"]
       17 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["selectable"]
        3 JUMPIFEQKNIL                     R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K0 ["selectable"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+7]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["onDropdownItemActivated"]
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 4
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["onDropdownItemMouseEntered"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["onDropdownItemMouseLeft"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R11 R10 K0 ["isDarkerTheme"]
        2 GETTABLEKS                       R12 R10 K1 ["dropdownMenu"]
        4 GETTABLEKS                       R13 R12 K2 ["item"]
        6 DUPTABLE                         R14 K4 [{"UIListLayout"}]
        7 GETUPVAL                         R15 0
        8 GETTABLEKS                       R15 R15 K5 ["createElement"]
       10 LOADK                            R16 K3 ["UIListLayout"]
       11 DUPTABLE                         R17 K8 [{"FillDirection", "SortOrder"}]
       12 GETIMPORT                        R18 K11 [Enum.FillDirection.Vertical]
       14 SETTABLEKS                       R18 R17 K6 ["FillDirection"]
       16 GETIMPORT                        R18 K13 [Enum.SortOrder.LayoutOrder]
       18 SETTABLEKS                       R18 R17 K7 ["SortOrder"]
       20 CALL                             R15 2 1
       21 SETTABLEKS                       R15 R14 K3 ["UIListLayout"]
       23 GETIMPORT                        R15 K15 [ipairs]
       25 MOVE                             R16 R1
       26 CALL                             R15 1 3
       27 FORGPREP_INEXT                   R15
       28 GETTABLEKS                       R20 R19 K16 ["name"]
       30 JUMPIF                           R20 ; [+13]
       31 GETUPVAL                         R20 1
       32 GETTABLEKS                       R20 R20 K17 ["shouldDebugWarnings"]
       34 CALL                             R20 0 1
       35 JUMPIFNOT                        R20 ; [+8]
       36 GETIMPORT                        R20 K19 [warn]
       38 LOADK                            R21 K20 ["Index %d in DropdownMenu doesn't have a 'name' member"]
       39 MOVE                             R23 R18
       40 NAMECALL                         R21 R21 K21 ["format"]
       42 CALL                             R21 2 -1
       43 CALL                             R20 -1 0
       44 LOADB                            R20 1
       45 GETTABLEKS                       R21 R19 K22 ["selectable"]
       47 JUMPIFEQKNIL                     R21 ; [+3]
       49 GETTABLEKS                       R20 R19 K22 ["selectable"]
       51 JUMPIFNOT                        R20 ; [+3]
       52 GETTABLEKS                       R21 R13 K23 ["textColor"]
       54 JUMPIF                           R21 ; [+2]
       55 GETTABLEKS                       R21 R13 K24 ["labelTextColor"]
       57 GETTABLEKS                       R22 R19 K16 ["name"]
       59 LOADB                            R23 0
       60 JUMPIFNOTEQ                      R2 R18 ; [+2]
       62 MOVE                             R23 R20
       63 JUMPIFNOT                        R3 ; [+2]
       64 GETTABLE                         R24 R19 R3
       65 JUMPIF                           R24 ; [+1]
       66 MOVE                             R24 R22
       67 GETUPVAL                         R29 2
       68 MOVE                             R30 R22
       69 MOVE                             R31 R7
       70 LOADNIL                          R32
       71 GETIMPORT                        R33 K27 [Vector2.new]
       73 LOADN                            R34 0
       74 LOADN                            R35 0
       75 CALL                             R33 2 -1
       76 CALL                             R29 -1 1
       77 GETTABLEKS                       R29 R29 K28 ["X"]
       79 MULK                             R30 R5 K29 [2]
       80 ADD                              R28 R29 R30
       81 GETUPVAL                         R29 3
       82 GETTABLEKS                       R29 R29 K30 ["SCROLLBAR_BACKGROUND_THICKNESS"]
       84 ADD                              R27 R28 R29
       85 FASTCALL2                        MATH_MAX R4 R27 ; [+4]
       87 MOVE                             R26 R4
       88 GETIMPORT                        R25 K33 [math.max]
       90 CALL                             R25 2 1
       91 MOVE                             R4 R25
       92 OR                               R25 R24 R22
       93 GETUPVAL                         R26 0
       94 GETTABLEKS                       R26 R26 K5 ["createElement"]
       96 LOADK                            R27 K34 ["ImageButton"]
       97 NEWTABLE                         R28 16 0
       99 GETIMPORT                        R29 K36 [UDim2.new]
      101 LOADN                            R30 1
      102 GETUPVAL                         R33 3
      103 GETTABLEKS                       R33 R33 K30 ["SCROLLBAR_BACKGROUND_THICKNESS"]
      105 MINUS                            R32 R33
      106 GETUPVAL                         R33 3
      107 GETTABLEKS                       R33 R33 K37 ["SCROLLBAR_PADDING"]
      109 ADD                              R31 R32 R33
      110 LOADN                            R32 0
      111 MOVE                             R33 R6
      112 CALL                             R29 4 1
      113 SETTABLEKS                       R29 R28 K38 ["Size"]
      115 JUMPIFNOT                        R23 ; [+3]
      116 GETTABLEKS                       R29 R13 K39 ["backgroundSelectedColor"]
      118 JUMPIF                           R29 ; [+2]
      119 GETTABLEKS                       R29 R13 K40 ["backgroundColor"]
      121 SETTABLEKS                       R29 R28 K41 ["BackgroundColor3"]
      123 LOADN                            R29 0
      124 SETTABLEKS                       R29 R28 K42 ["BorderSizePixel"]
      126 SETTABLEKS                       R18 R28 K12 ["LayoutOrder"]
      128 LOADN                            R29 2
      129 SETTABLEKS                       R29 R28 K43 ["ZIndex"]
      131 LOADB                            R29 0
      132 SETTABLEKS                       R29 R28 K44 ["AutoButtonColor"]
      134 GETUPVAL                         R29 0
      135 GETTABLEKS                       R29 R29 K45 ["Event"]
      137 GETTABLEKS                       R29 R29 K46 ["Activated"]
      139 NEWCLOSURE                       R30 P0
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R8
      145 SETTABLE                         R30 R28 R29
      146 GETUPVAL                         R29 0
      147 GETTABLEKS                       R29 R29 K45 ["Event"]
      149 GETTABLEKS                       R29 R29 K47 ["MouseEnter"]
      151 NEWCLOSURE                       R30 P1
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R18
      154 SETTABLE                         R30 R28 R29
      155 GETUPVAL                         R29 0
      156 GETTABLEKS                       R29 R29 K45 ["Event"]
      158 GETTABLEKS                       R29 R29 K48 ["MouseLeave"]
      160 NEWCLOSURE                       R30 P2
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R18
      163 SETTABLE                         R30 R28 R29
      164 GETUPVAL                         R29 0
      165 GETTABLEKS                       R29 R29 K45 ["Event"]
      167 GETTABLEKS                       R29 R29 K49 ["InputEnded"]
      169 GETTABLEKS                       R30 R0 K50 ["focusLost"]
      171 SETTABLE                         R30 R28 R29
      172 DUPTABLE                         R29 K53 [{"SelectedBar", "TextLabel"}]
      173 NOT                              R30 R11
      174 JUMPIFNOT                        R30 ; [+23]
      175 GETUPVAL                         R30 0
      176 GETTABLEKS                       R30 R30 K5 ["createElement"]
      178 LOADK                            R31 K54 ["Frame"]
      179 DUPTABLE                         R32 K57 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Visible"], ["ZIndex"] = 2}]
      180 GETIMPORT                        R33 K36 [UDim2.new]
      182 LOADN                            R34 0
      183 MOVE                             R35 R9
      184 LOADN                            R36 1
      185 LOADN                            R37 0
      186 CALL                             R33 4 1
      187 SETTABLEKS                       R33 R32 K38 ["Size"]
      189 GETTABLEKS                       R33 R12 K2 ["item"]
      191 GETTABLEKS                       R33 R33 K58 ["selectedBarColor"]
      193 SETTABLEKS                       R33 R32 K41 ["BackgroundColor3"]
      195 SETTABLEKS                       R23 R32 K56 ["Visible"]
      197 CALL                             R30 2 1
      198 SETTABLEKS                       R30 R29 K51 ["SelectedBar"]
      200 GETUPVAL                         R30 0
      201 GETTABLEKS                       R30 R30 K5 ["createElement"]
      203 LOADK                            R31 K52 ["TextLabel"]
      204 DUPTABLE                         R32 K71 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["ClipsDescendants"] = True, ["ZIndex"] = 3}]
      205 GETIMPORT                        R33 K36 [UDim2.new]
      207 LOADN                            R34 0
      208 MOVE                             R35 R5
      209 LOADN                            R36 0
      210 LOADN                            R37 0
      211 CALL                             R33 4 1
      212 SETTABLEKS                       R33 R32 K59 ["Position"]
      214 GETIMPORT                        R33 K36 [UDim2.new]
      216 LOADN                            R34 1
      217 MINUS                            R35 R5
      218 LOADN                            R36 1
      219 LOADN                            R37 0
      220 CALL                             R33 4 1
      221 SETTABLEKS                       R33 R32 K38 ["Size"]
      223 SETTABLEKS                       R22 R32 K62 ["Text"]
      225 SETTABLEKS                       R21 R32 K63 ["TextColor3"]
      227 GETUPVAL                         R33 3
      228 GETTABLEKS                       R33 R33 K72 ["FONT"]
      230 SETTABLEKS                       R33 R32 K64 ["Font"]
      232 SETTABLEKS                       R7 R32 K65 ["TextSize"]
      234 GETIMPORT                        R33 K74 [Enum.TextXAlignment.Left]
      236 SETTABLEKS                       R33 R32 K66 ["TextXAlignment"]
      238 GETIMPORT                        R33 K76 [Enum.TextYAlignment.Center]
      240 SETTABLEKS                       R33 R32 K67 ["TextYAlignment"]
      242 CALL                             R30 2 1
      243 SETTABLEKS                       R30 R29 K52 ["TextLabel"]
      245 CALL                             R26 3 1
      246 SETTABLE                         R26 R14 R25
      247 FORGLOOP                         R15 2 [inext] ; [-220]
      249 RETURN                           R14 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["listKey"]
        8 GETTABLEKS                       R5 R1 K4 ["left"]
       10 GETTABLEKS                       R6 R1 K5 ["top"]
       12 GETTABLEKS                       R7 R1 K6 ["dropDownWidth"]
       14 GETTABLEKS                       R8 R1 K7 ["items"]
       16 JUMPIF                           R8 ; [+2]
       17 NEWTABLE                         R8 0 0
       19 LENGTH                           R9 R8
       20 GETTABLEKS                       R12 R1 K9 ["visibleDropDownCount"]
       22 ORK                              R11 R12 K8 [5]
       23 FASTCALL2                        MATH_MIN R11 R9 ; [+4]
       25 MOVE                             R12 R9
       26 GETIMPORT                        R10 K12 [math.min]
       28 CALL                             R10 2 1
       29 GETTABLEKS                       R12 R1 K14 ["rowHeight"]
       31 ORK                              R11 R12 K13 [24]
       32 GETTABLEKS                       R12 R1 K15 ["fontSize"]
       34 JUMPIF                           R12 ; [+3]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K16 ["FONT_SIZE_MEDIUM"]
       38 GETTABLEKS                       R13 R1 K17 ["setDropdownHeight"]
       40 GETTABLEKS                       R14 R1 K18 ["windowPosition"]
       42 GETTABLEKS                       R15 R1 K19 ["windowSize"]
       44 GETTABLEKS                       R16 R1 K20 ["onItemClicked"]
       46 GETUPVAL                         R17 0
       47 GETTABLEKS                       R17 R17 K21 ["DROPDOWN_SELECTED_BAR"]
       49 GETUPVAL                         R19 0
       50 GETTABLEKS                       R19 R19 K22 ["DROPDOWN_TEXT_INSET"]
       52 ADD                              R18 R17 R19
       53 GETTABLEKS                       R19 R3 K23 ["dropdownMenu"]
       55 GETTABLEKS                       R20 R2 K24 ["dropdownHoveredItemIndex"]
       57 GETUPVAL                         R21 0
       58 GETTABLEKS                       R21 R21 K25 ["DROPDOWN_WIDTH"]
       60 MUL                              R22 R10 R11
       61 JUMPIFNOT                        R13 ; [+9]
       62 GETTABLEKS                       R23 R0 K26 ["lastReportedHeight"]
       64 JUMPIFEQ                         R23 R22 ; [+6]
       66 SETTABLEKS                       R22 R0 K26 ["lastReportedHeight"]
       68 MOVE                             R23 R13
       69 MOVE                             R24 R22
       70 CALL                             R23 1 0
       71 MOVE                             R25 R8
       72 MOVE                             R26 R20
       73 MOVE                             R27 R4
       74 MOVE                             R28 R21
       75 MOVE                             R29 R18
       76 MOVE                             R30 R11
       77 MOVE                             R31 R12
       78 MOVE                             R32 R16
       79 MOVE                             R33 R17
       80 MOVE                             R34 R3
       81 NAMECALL                         R23 R0 K27 ["getScrollButtons"]
       83 CALL                             R23 11 1
       84 GETUPVAL                         R24 1
       85 GETTABLEKS                       R24 R24 K28 ["createElement"]
       87 GETUPVAL                         R25 2
       88 NEWTABLE                         R26 4 0
       90 SETTABLEKS                       R14 R26 K18 ["windowPosition"]
       92 SETTABLEKS                       R15 R26 K19 ["windowSize"]
       94 GETUPVAL                         R27 1
       95 GETTABLEKS                       R27 R27 K29 ["Event"]
       97 GETTABLEKS                       R27 R27 K30 ["Activated"]
       99 GETTABLEKS                       R28 R0 K0 ["props"]
      101 GETTABLEKS                       R28 R28 K31 ["closeDropdown"]
      103 SETTABLE                         R28 R26 R27
      104 DUPTABLE                         R27 K34 [{"StyledScrollingFrame", "DropDownContainer"}]
      105 GETUPVAL                         R28 1
      106 GETTABLEKS                       R28 R28 K28 ["createElement"]
      108 GETUPVAL                         R29 3
      109 DUPTABLE                         R30 K40 [{["Position"], ["Size"], ["CanvasSize"], ["ZIndex"] = 1}]
      110 GETIMPORT                        R31 K43 [UDim2.new]
      112 LOADN                            R32 0
      113 MOVE                             R33 R5
      114 LOADN                            R34 0
      115 MOVE                             R35 R6
      116 CALL                             R31 4 1
      117 SETTABLEKS                       R31 R30 K35 ["Position"]
      119 GETIMPORT                        R31 K43 [UDim2.new]
      121 LOADN                            R32 0
      122 MOVE                             R33 R7
      123 LOADN                            R34 0
      124 MOVE                             R35 R22
      125 CALL                             R31 4 1
      126 SETTABLEKS                       R31 R30 K36 ["Size"]
      128 GETIMPORT                        R31 K43 [UDim2.new]
      130 LOADN                            R32 0
      131 LOADN                            R33 0
      132 LOADN                            R34 0
      133 MUL                              R35 R9 R11
      134 CALL                             R31 4 1
      135 SETTABLEKS                       R31 R30 K37 ["CanvasSize"]
      137 MOVE                             R31 R23
      138 CALL                             R28 3 1
      139 SETTABLEKS                       R28 R27 K32 ["StyledScrollingFrame"]
      141 GETUPVAL                         R28 1
      142 GETTABLEKS                       R28 R28 K28 ["createElement"]
      144 GETUPVAL                         R29 4
      145 DUPTABLE                         R30 K47 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2, ["BorderColor3"]}]
      146 GETIMPORT                        R31 K43 [UDim2.new]
      148 LOADN                            R32 0
      149 MOVE                             R33 R5
      150 LOADN                            R34 0
      151 MOVE                             R35 R6
      152 CALL                             R31 4 1
      153 SETTABLEKS                       R31 R30 K35 ["Position"]
      155 GETIMPORT                        R31 K43 [UDim2.new]
      157 LOADN                            R32 0
      158 MOVE                             R33 R7
      159 LOADN                            R34 0
      160 MOVE                             R35 R22
      161 CALL                             R31 4 1
      162 SETTABLEKS                       R31 R30 K36 ["Size"]
      164 GETTABLEKS                       R31 R19 K48 ["dropdownFrame"]
      166 GETTABLEKS                       R31 R31 K49 ["borderColor"]
      168 SETTABLEKS                       R31 R30 K46 ["BorderColor3"]
      170 CALL                             R28 2 1
      171 SETTABLEKS                       R28 R27 K33 ["DropDownContainer"]
      173 CALL                             R24 3 -1
      174 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Util"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["Constants"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R4 K11 ["DebugFlags"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R8 R7 K13 ["withContext"]
       39 GETTABLEKS                       R9 R3 K9 ["Util"]
       41 GETTABLEKS                       R9 R9 K14 ["GetTextSize"]
       43 GETTABLEKS                       R10 R0 K8 ["Src"]
       45 GETTABLEKS                       R10 R10 K15 ["Components"]
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R12 R10 K16 ["StyledScrollingFrame"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K5 [require]
       54 GETTABLEKS                       R13 R10 K17 ["ClickEventDetectFrame"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R10 K18 ["RoundFrame"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R2 K19 ["PureComponent"]
       64 LOADK                            R16 K20 ["DropdownItemsList"]
       65 NAMECALL                         R14 R14 K21 ["extend"]
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K22 [PROTO_5]
       69 SETTABLEKS                       R15 R14 K23 ["init"]
       71 DUPCLOSURE                       R15 K24 [PROTO_6]
       72 DUPCLOSURE                       R16 K25 [PROTO_10]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R16 R14 K26 ["getScrollButtons"]
       79 DUPCLOSURE                       R16 K27 [PROTO_11]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R13
       85 SETTABLEKS                       R16 R14 K28 ["render"]
       87 MOVE                             R16 R8
       88 DUPTABLE                         R17 K30 [{"Stylizer"}]
       89 GETTABLEKS                       R18 R7 K29 ["Stylizer"]
       91 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       93 CALL                             R16 1 1
       94 MOVE                             R17 R14
       95 CALL                             R16 1 1
       96 MOVE                             R14 R16
       97 RETURN                           R14 1
