PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Modal"]
        5 GETTABLEKS                       R3 R2 K2 ["onDropdownToggled"]
        7 LOADB                            R4 1
        8 CALL                             R3 1 0
        9 DUPTABLE                         R3 K4 [{"isShowingDropdown"}]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["isShowingDropdown"]
       13 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R0 R0 K2 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"showDropDownButtonHovered"}]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["showDropDownButtonHovered"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"showDropDownButtonHovered"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["showDropDownButtonHovered"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Modal"]
        5 GETTABLEKS                       R1 R0 K2 ["onDropdownToggled"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K4 [{"isShowingDropdown"}]
       11 LOADB                            R4 0
       12 SETTABLEKS                       R4 R3 K3 ["isShowingDropdown"]
       14 NAMECALL                         R1 R1 K5 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Focus]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["closeDropdown"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["currentSelectionRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+55]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["currentSelectionRef"]
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
       13 GETTABLEKS                       R3 R1 K3 ["AbsolutePosition"]
       15 GETTABLEKS                       R4 R2 K4 ["X"]
       17 JUMPIF                           R4 ; [+3]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K5 ["DROPDOWN_WIDTH"]
       21 GETTABLEKS                       R7 R3 K7 ["y"]
       23 GETTABLEKS                       R8 R2 K7 ["y"]
       25 ADD                              R6 R7 R8
       26 ADDK                             R5 R6 K6 [2]
       27 GETTABLEKS                       R6 R3 K8 ["x"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K9 ["state"]
       32 GETTABLEKS                       R7 R8 K10 ["dropDownWidth"]
       34 JUMPIFNOTEQ                      R7 R4 ; [+15]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K9 ["state"]
       39 GETTABLEKS                       R7 R8 K11 ["dropDownTop"]
       41 JUMPIFNOTEQ                      R7 R5 ; [+8]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K9 ["state"]
       46 GETTABLEKS                       R7 R8 K12 ["dropDownLeft"]
       48 JUMPIFEQ                         R7 R6 ; [+12]
       50 GETUPVAL                         R7 0
       51 DUPTABLE                         R9 K13 [{"dropDownWidth", "dropDownTop", "dropDownLeft"}]
       52 SETTABLEKS                       R4 R9 K10 ["dropDownWidth"]
       54 SETTABLEKS                       R5 R9 K11 ["dropDownTop"]
       56 SETTABLEKS                       R6 R9 K12 ["dropDownLeft"]
       58 NAMECALL                         R7 R7 K14 ["setState"]
       60 CALL                             R7 2 0
       61 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["onItemClicked"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K1 ["onItemClicked"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["closeDropdown"]
       17 CALL                             R2 0 0
       18 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"isShowingDropdown", "showDropDownButtonHovered"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["isShowingDropdown"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["showDropDownButtonHovered"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K4 ["createRef"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R0 K5 ["currentSelectionRef"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["createRef"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R0 K6 ["baseFrameRef"]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K7 ["openDropdown"]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K8 ["showDropDownButtonEntered"]
       29 NEWCLOSURE                       R2 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K9 ["showDropDownButtonLeft"]
       33 NEWCLOSURE                       R2 P3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R0 K10 ["closeDropdown"]
       37 NEWCLOSURE                       R2 P4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K11 ["focusLost"]
       41 NEWCLOSURE                       R2 P5
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R2 R0 K12 ["refresh"]
       46 NEWCLOSURE                       R2 P6
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K13 ["onItemClicked"]
       50 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["selectable"]
        3 JUMPIFEQKNIL                     R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K0 ["selectable"]
        7 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 LOADB                            R6 1
        6 GETTABLEKS                       R7 R5 K2 ["selectable"]
        8 JUMPIFEQKNIL                     R7 ; [+3]
       10 GETTABLEKS                       R6 R5 K2 ["selectable"]
       12 JUMPIFNOT                        R6 ; [+1]
       13 RETURN                           R4 1
       14 FORGLOOP                         R1 2 [inext] ; [-10]
       16 GETIMPORT                        R1 K4 [warn]
       18 LOADK                            R2 K5 ["No selectable items found in DropdownMenu"]
       19 CALL                             R1 1 0
       20 LOADN                            R1 1
       21 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["refresh"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["menuKey"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       14 ORK                              R7 R8 K6 [0]
       15 GETTABLEKS                       R8 R1 K8 ["items"]
       17 JUMPIF                           R8 ; [+2]
       18 NEWTABLE                         R8 0 0
       20 LENGTH                           R9 R8
       21 GETTABLEKS                       R12 R1 K10 ["visibleDropDownCount"]
       23 ORK                              R11 R12 K9 [5]
       24 FASTCALL2                        MATH_MIN R11 R9 ; [+4]
       26 MOVE                             R12 R9
       27 GETIMPORT                        R10 K13 [math.min]
       29 CALL                             R10 2 1
       30 GETTABLEKS                       R12 R1 K15 ["rowHeight"]
       32 ORK                              R11 R12 K14 [24]
       33 GETTABLEKS                       R13 R1 K17 ["selectedDropDownIndex"]
       35 ORK                              R12 R13 K16 [1]
       36 GETTABLEKS                       R13 R1 K18 ["fontSize"]
       38 JUMPIF                           R13 ; [+3]
       39 GETUPVAL                         R14 0
       40 GETTABLEKS                       R13 R14 K19 ["FONT_SIZE_MEDIUM"]
       42 GETTABLEKS                       R14 R1 K20 ["setDropdownHeight"]
       44 LENGTH                           R15 R8
       45 JUMPIFNOTLT                      R15 R12 ; [+2]
       47 LOADN                            R12 0
       48 LOADB                            R15 0
       49 LOADN                            R16 0
       50 JUMPIFNOTLT                      R16 R12 ; [+16]
       52 LOADB                            R15 0
       53 LENGTH                           R16 R8
       54 JUMPIFNOTLE                      R12 R16 ; [+12]
       56 GETTABLE                         R15 R8 R12
       57 JUMPIFNOT                        R15 ; [+9]
       58 GETTABLE                         R17 R8 R12
       59 LOADB                            R16 1
       60 GETTABLEKS                       R18 R17 K21 ["selectable"]
       62 JUMPIFEQKNIL                     R18 ; [+3]
       64 GETTABLEKS                       R16 R17 K21 ["selectable"]
       66 NOT                              R15 R16
       67 JUMPIFNOT                        R15 ; [+4]
       68 GETUPVAL                         R16 1
       69 MOVE                             R17 R8
       70 CALL                             R16 1 1
       71 MOVE                             R12 R16
       72 LOADB                            R16 0
       73 LOADN                            R17 0
       74 JUMPIFNOTLT                      R17 R12 ; [+6]
       76 LENGTH                           R17 R8
       77 JUMPIFLE                         R12 R17 ; [+2]
       79 LOADB                            R16 0 +1
       80 LOADB                            R16 1
       81 GETTABLEKS                       R17 R1 K22 ["Localization"]
       83 LOADK                            R19 K23 ["Dropdown"]
       84 LOADK                            R20 K24 ["ChooseOne"]
       85 NAMECALL                         R17 R17 K25 ["getText"]
       87 CALL                             R17 3 1
       88 JUMPIFNOT                        R16 ; [+9]
       89 GETTABLE                         R18 R8 R12
       90 JUMPIFNOT                        R18 ; [+7]
       91 GETTABLE                         R19 R8 R12
       92 GETTABLEKS                       R18 R19 K26 ["name"]
       94 JUMPIFNOT                        R18 ; [+3]
       95 GETTABLE                         R18 R8 R12
       96 GETTABLEKS                       R17 R18 K26 ["name"]
       98 GETUPVAL                         R19 0
       99 GETTABLEKS                       R18 R19 K27 ["DROPDOWN_SELECTED_BAR"]
      101 GETUPVAL                         R21 0
      102 GETTABLEKS                       R20 R21 K28 ["DROPDOWN_TEXT_INSET"]
      104 ADD                              R19 R18 R20
      105 GETUPVAL                         R23 0
      106 GETTABLEKS                       R22 R23 K29 ["DROPDOWN_ICON_SIZE"]
      108 MUL                              R21 R22 R13
      109 GETUPVAL                         R23 0
      110 GETTABLEKS                       R22 R23 K19 ["FONT_SIZE_MEDIUM"]
      112 DIV                              R20 R21 R22
      113 GETUPVAL                         R22 0
      114 GETTABLEKS                       R21 R22 K30 ["DROPDOWN_ICON_FROM_RIGHT"]
      116 GETTABLEKS                       R22 R3 K31 ["dropdownMenu"]
      118 GETTABLEKS                       R23 R22 K32 ["currentSelection"]
      120 GETTABLEKS                       R24 R2 K33 ["showDropDownButtonHovered"]
      122 GETTABLEKS                       R25 R2 K34 ["isShowingDropdown"]
      124 OR                               R26 R25 R24
      125 JUMPIFNOT                        R26 ; [+3]
      126 GETTABLEKS                       R27 R23 K35 ["borderSelectedColor"]
      128 JUMPIF                           R27 ; [+2]
      129 GETTABLEKS                       R27 R23 K36 ["borderColor"]
      131 GETTABLEKS                       R29 R1 K37 ["Disabled"]
      133 JUMPIFNOT                        R29 ; [+3]
      134 GETTABLEKS                       R28 R23 K38 ["backgroundDisabledColor"]
      136 JUMP                             ; [+6]
      137 JUMPIFNOT                        R26 ; [+3]
      138 GETTABLEKS                       R28 R23 K39 ["backgroundSelectedColor"]
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R28 R23 K40 ["backgroundColor"]
      143 JUMPIFNOT                        R26 ; [+3]
      144 GETTABLEKS                       R29 R23 K41 ["textSelectedColor"]
      146 JUMPIF                           R29 ; [+2]
      147 GETTABLEKS                       R29 R23 K42 ["textColor"]
      149 GETTABLEKS                       R30 R23 K43 ["dropdownIconColor"]
      151 GETIMPORT                        R31 K46 [UDim2.new]
      153 LOADN                            R32 1
      154 LOADN                            R33 0
      155 LOADN                            R34 1
      156 LOADN                            R35 0
      157 CALL                             R31 4 1
      158 GETUPVAL                         R33 2
      159 GETTABLEKS                       R32 R33 K47 ["createElement"]
      161 LOADK                            R33 K48 ["Frame"]
      162 NEWTABLE                         R34 8 0
      164 SETTABLEKS                       R5 R34 K4 ["Position"]
      166 SETTABLEKS                       R6 R34 K5 ["Size"]
      168 LOADN                            R35 1
      169 SETTABLEKS                       R35 R34 K49 ["BackgroundTransparency"]
      171 GETUPVAL                         R36 2
      172 GETTABLEKS                       R35 R36 K50 ["Ref"]
      174 GETTABLEKS                       R36 R0 K51 ["baseFrameRef"]
      176 SETTABLE                         R36 R34 R35
      177 SETTABLEKS                       R7 R34 K7 ["LayoutOrder"]
      179 DUPTABLE                         R35 K54 [{"CurrentSelection", "DropdownItemsWrapper"}]
      180 GETUPVAL                         R37 2
      181 GETTABLEKS                       R36 R37 K47 ["createElement"]
      183 GETUPVAL                         R37 3
      184 NEWTABLE                         R38 16 0
      186 SETTABLEKS                       R31 R38 K5 ["Size"]
      188 SETTABLEKS                       R28 R38 K55 ["BackgroundColor3"]
      190 SETTABLEKS                       R27 R38 K56 ["BorderColor3"]
      192 GETUPVAL                         R40 2
      193 GETTABLEKS                       R39 R40 K50 ["Ref"]
      195 GETTABLEKS                       R40 R0 K57 ["currentSelectionRef"]
      197 SETTABLE                         R40 R38 R39
      198 GETUPVAL                         R41 2
      199 GETTABLEKS                       R40 R41 K58 ["Event"]
      201 GETTABLEKS                       R39 R40 K59 ["Activated"]
      203 GETTABLEKS                       R40 R0 K60 ["openDropdown"]
      205 SETTABLE                         R40 R38 R39
      206 GETUPVAL                         R41 2
      207 GETTABLEKS                       R40 R41 K58 ["Event"]
      209 GETTABLEKS                       R39 R40 K61 ["MouseEnter"]
      211 GETTABLEKS                       R40 R0 K62 ["showDropDownButtonEntered"]
      213 SETTABLE                         R40 R38 R39
      214 GETUPVAL                         R41 2
      215 GETTABLEKS                       R40 R41 K58 ["Event"]
      217 GETTABLEKS                       R39 R40 K63 ["MouseLeave"]
      219 GETTABLEKS                       R40 R0 K64 ["showDropDownButtonLeft"]
      221 SETTABLE                         R40 R38 R39
      222 GETUPVAL                         R41 2
      223 GETTABLEKS                       R40 R41 K58 ["Event"]
      225 GETTABLEKS                       R39 R40 K65 ["InputEnded"]
      227 GETTABLEKS                       R40 R0 K66 ["focusLost"]
      229 SETTABLE                         R40 R38 R39
      230 GETUPVAL                         R41 2
      231 GETTABLEKS                       R40 R41 K67 ["Change"]
      233 GETTABLEKS                       R39 R40 K68 ["AbsolutePosition"]
      235 GETTABLEKS                       R40 R0 K69 ["refresh"]
      237 SETTABLE                         R40 R38 R39
      238 GETUPVAL                         R41 2
      239 GETTABLEKS                       R40 R41 K67 ["Change"]
      241 GETTABLEKS                       R39 R40 K70 ["AbsoluteSize"]
      243 GETTABLEKS                       R40 R0 K69 ["refresh"]
      245 SETTABLE                         R40 R38 R39
      246 DUPTABLE                         R39 K73 [{"CurrentSelectionLabel", "DropDownIcon"}]
      247 GETUPVAL                         R41 2
      248 GETTABLEKS                       R40 R41 K47 ["createElement"]
      250 LOADK                            R41 K74 ["TextLabel"]
      251 DUPTABLE                         R42 K83 [{"Position", "Size", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "ClipsDescendants", "TextTruncate"}]
      252 GETIMPORT                        R43 K46 [UDim2.new]
      254 LOADN                            R44 0
      255 MOVE                             R45 R19
      256 LOADN                            R46 0
      257 LOADN                            R47 0
      258 CALL                             R43 4 1
      259 SETTABLEKS                       R43 R42 K4 ["Position"]
      261 GETIMPORT                        R43 K46 [UDim2.new]
      263 LOADN                            R44 1
      264 ADD                              R47 R19 R20
      265 ADD                              R46 R47 R21
      266 MINUS                            R45 R46
      267 LOADN                            R46 1
      268 LOADN                            R47 0
      269 CALL                             R43 4 1
      270 SETTABLEKS                       R43 R42 K5 ["Size"]
      272 LOADN                            R43 1
      273 SETTABLEKS                       R43 R42 K49 ["BackgroundTransparency"]
      275 SETTABLEKS                       R29 R42 K75 ["TextColor3"]
      277 SETTABLEKS                       R17 R42 K76 ["Text"]
      279 GETUPVAL                         R44 0
      280 GETTABLEKS                       R43 R44 K84 ["FONT"]
      282 SETTABLEKS                       R43 R42 K77 ["Font"]
      284 SETTABLEKS                       R13 R42 K78 ["TextSize"]
      286 GETIMPORT                        R43 K87 [Enum.TextXAlignment.Left]
      288 SETTABLEKS                       R43 R42 K79 ["TextXAlignment"]
      290 GETIMPORT                        R43 K89 [Enum.TextYAlignment.Center]
      292 SETTABLEKS                       R43 R42 K80 ["TextYAlignment"]
      294 LOADB                            R43 1
      295 SETTABLEKS                       R43 R42 K81 ["ClipsDescendants"]
      297 GETIMPORT                        R43 K91 [Enum.TextTruncate.AtEnd]
      299 SETTABLEKS                       R43 R42 K82 ["TextTruncate"]
      301 CALL                             R40 2 1
      302 SETTABLEKS                       R40 R39 K71 ["CurrentSelectionLabel"]
      304 GETUPVAL                         R41 2
      305 GETTABLEKS                       R40 R41 K47 ["createElement"]
      307 LOADK                            R41 K92 ["ImageLabel"]
      308 DUPTABLE                         R42 K97 [{"AnchorPoint", "Size", "Position", "Image", "Rotation", "ImageColor3", "BackgroundTransparency"}]
      309 GETIMPORT                        R43 K99 [Vector2.new]
      311 LOADN                            R44 1
      312 LOADK                            R45 K100 [0.5]
      313 CALL                             R43 2 1
      314 SETTABLEKS                       R43 R42 K93 ["AnchorPoint"]
      316 GETIMPORT                        R43 K46 [UDim2.new]
      318 LOADN                            R44 0
      319 MOVE                             R45 R20
      320 LOADN                            R46 0
      321 MOVE                             R47 R20
      322 CALL                             R43 4 1
      323 SETTABLEKS                       R43 R42 K5 ["Size"]
      325 GETIMPORT                        R43 K46 [UDim2.new]
      327 LOADN                            R44 1
      328 MINUS                            R45 R21
      329 LOADK                            R46 K100 [0.5]
      330 LOADN                            R47 0
      331 CALL                             R43 4 1
      332 SETTABLEKS                       R43 R42 K4 ["Position"]
      334 GETUPVAL                         R44 4
      335 GETTABLEKS                       R43 R44 K101 ["ARROW_DOWN_ICON"]
      337 SETTABLEKS                       R43 R42 K94 ["Image"]
      339 JUMPIFNOT                        R25 ; [+2]
      340 LOADN                            R43 180
      341 JUMP                             ; [+1]
      342 LOADN                            R43 0
      343 SETTABLEKS                       R43 R42 K95 ["Rotation"]
      345 SETTABLEKS                       R30 R42 K96 ["ImageColor3"]
      347 LOADN                            R43 1
      348 SETTABLEKS                       R43 R42 K49 ["BackgroundTransparency"]
      350 CALL                             R40 2 1
      351 SETTABLEKS                       R40 R39 K72 ["DropDownIcon"]
      353 CALL                             R36 3 1
      354 SETTABLEKS                       R36 R35 K52 ["CurrentSelection"]
      356 MOVE                             R36 R25
      357 JUMPIFNOT                        R36 ; [+50]
      358 GETUPVAL                         R37 2
      359 GETTABLEKS                       R36 R37 K47 ["createElement"]
      361 GETUPVAL                         R37 5
      362 DUPTABLE                         R38 K103 [{"Priority"}]
      363 LOADN                            R39 2
      364 SETTABLEKS                       R39 R38 K102 ["Priority"]
      366 DUPTABLE                         R39 K105 [{"DropdownItemsList"}]
      367 GETUPVAL                         R41 2
      368 GETTABLEKS                       R40 R41 K47 ["createElement"]
      370 GETUPVAL                         R41 6
      371 DUPTABLE                         R42 K112 [{"listKey", "items", "visibleDropDownCount", "rowHeight", "fontSize", "onItemClicked", "closeDropdown", "setDropdownHeight", "dropDownWidth", "top", "left"}]
      372 SETTABLEKS                       R4 R42 K106 ["listKey"]
      374 SETTABLEKS                       R8 R42 K8 ["items"]
      376 SETTABLEKS                       R10 R42 K10 ["visibleDropDownCount"]
      378 SETTABLEKS                       R11 R42 K15 ["rowHeight"]
      380 SETTABLEKS                       R13 R42 K18 ["fontSize"]
      382 GETTABLEKS                       R43 R0 K107 ["onItemClicked"]
      384 SETTABLEKS                       R43 R42 K107 ["onItemClicked"]
      386 GETTABLEKS                       R43 R0 K108 ["closeDropdown"]
      388 SETTABLEKS                       R43 R42 K108 ["closeDropdown"]
      390 SETTABLEKS                       R14 R42 K20 ["setDropdownHeight"]
      392 GETTABLEKS                       R43 R2 K109 ["dropDownWidth"]
      394 SETTABLEKS                       R43 R42 K109 ["dropDownWidth"]
      396 GETTABLEKS                       R43 R2 K113 ["dropDownTop"]
      398 SETTABLEKS                       R43 R42 K110 ["top"]
      400 GETTABLEKS                       R43 R2 K114 ["dropDownLeft"]
      402 SETTABLEKS                       R43 R42 K111 ["left"]
      404 CALL                             R40 2 1
      405 SETTABLEKS                       R40 R39 K104 ["DropdownItemsList"]
      407 CALL                             R36 3 1
      408 SETTABLEKS                       R36 R35 K53 ["DropdownItemsWrapper"]
      410 CALL                             R32 3 -1
      411 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R5 K9 ["Util"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["Constants"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R9 R0 K8 ["Src"]
       34 GETTABLEKS                       R8 R9 K11 ["ContextServices"]
       36 GETTABLEKS                       R7 R8 K12 ["ModalContext"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R4 K13 ["Images"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R9 R3 K14 ["UI"]
       46 GETTABLEKS                       R8 R9 K15 ["ShowOnTop"]
       48 GETTABLEKS                       R9 R3 K11 ["ContextServices"]
       50 GETTABLEKS                       R10 R9 K16 ["withContext"]
       52 GETTABLEKS                       R12 R0 K8 ["Src"]
       54 GETTABLEKS                       R11 R12 K17 ["Components"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R11 K18 ["RoundButton"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R14 R11 K19 ["DropdownItemsList"]
       65 CALL                             R13 1 1
       66 GETTABLEKS                       R14 R2 K20 ["PureComponent"]
       68 LOADK                            R16 K21 ["DropdownMenu"]
       69 NAMECALL                         R14 R14 K22 ["extend"]
       71 CALL                             R14 2 1
       72 DUPCLOSURE                       R15 K23 [PROTO_8]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R15 R14 K24 ["init"]
       77 DUPCLOSURE                       R15 K25 [PROTO_9]
       78 DUPCLOSURE                       R16 K26 [PROTO_10]
       79 DUPCLOSURE                       R17 K27 [PROTO_11]
       80 SETTABLEKS                       R17 R14 K28 ["didMount"]
       82 DUPCLOSURE                       R17 K29 [PROTO_12]
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R13
       90 SETTABLEKS                       R17 R14 K30 ["render"]
       92 MOVE                             R17 R10
       93 DUPTABLE                         R18 K34 [{"Stylizer", "Localization", "Modal"}]
       94 GETTABLEKS                       R19 R9 K31 ["Stylizer"]
       96 SETTABLEKS                       R19 R18 K31 ["Stylizer"]
       98 GETTABLEKS                       R19 R9 K32 ["Localization"]
      100 SETTABLEKS                       R19 R18 K32 ["Localization"]
      102 SETTABLEKS                       R6 R18 K33 ["Modal"]
      104 CALL                             R17 1 1
      105 MOVE                             R18 R14
      106 CALL                             R17 1 1
      107 MOVE                             R14 R17
      108 RETURN                           R14 1
