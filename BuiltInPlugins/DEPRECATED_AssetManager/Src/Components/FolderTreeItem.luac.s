PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 LOADK                            R3 K2 ["PointingHand"]
        6 NAMECALL                         R1 R1 K3 ["__pushCursor"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K6 [{["Hovering"] = True}]
       11 NAMECALL                         R1 R1 K7 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 NAMECALL                         R1 R1 K2 ["__popCursor"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K5 [{["Hovering"] = False}]
       10 NAMECALL                         R1 R1 K6 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 NAMECALL                         R1 R1 K2 ["__popCursor"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["props"]
       11 GETTABLEKS                       R1 R1 K3 ["toggleSelected"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R1 K2 ["TreeViewItem"]
        7 GETTABLEKS                       R2 R2 K3 ["Height"]
        9 LOADNIL                          R3
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["layoutRef"]
       13 GETTABLEKS                       R4 R4 K5 ["current"]
       15 JUMPIFNOT                        R4 ; [+11]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["layoutRef"]
       19 GETTABLEKS                       R4 R4 K5 ["current"]
       21 GETTABLEKS                       R4 R4 K6 ["AbsoluteContentSize"]
       23 GETTABLEKS                       R4 R4 K7 ["Y"]
       25 ADD                              R3 R4 R2
       26 JUMP                             ; [+1]
       27 MOVE                             R3 R2
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K8 ["parentContentRef"]
       31 GETTABLEKS                       R4 R4 K5 ["current"]
       33 GETIMPORT                        R5 K11 [UDim2.new]
       35 LOADN                            R6 1
       36 LOADN                            R7 0
       37 LOADN                            R8 0
       38 MOVE                             R9 R3
       39 CALL                             R5 4 1
       40 SETTABLEKS                       R5 R4 K12 ["Size"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K13 ["childrenContentRef"]
       45 GETTABLEKS                       R4 R4 K5 ["current"]
       47 GETIMPORT                        R5 K11 [UDim2.new]
       49 LOADN                            R6 1
       50 LOADN                            R7 0
       51 LOADN                            R8 0
       52 MOVE                             R9 R3
       53 CALL                             R5 4 1
       54 SETTABLEKS                       R5 R4 K12 ["Size"]
       56 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["parentContentRef"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K3 ["childrenContentRef"]
       18 DUPTABLE                         R1 K6 [{["Hovering"] = False}]
       19 SETTABLEKS                       R1 R0 K7 ["state"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K8 ["mouseEnter"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K9 ["mouseLeave"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K10 ["onClick"]
       33 NEWCLOSURE                       R1 P3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K11 ["resizeFrameHeight"]
       37 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleExpanded"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["resizeFrameHeight"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["TreeViewItem"]
        6 GETTABLEKS                       R4 R1 K3 ["element"]
        8 GETTABLEKS                       R5 R4 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["indent"]
       12 GETTABLEKS                       R7 R1 K6 ["canExpand"]
       14 GETTABLEKS                       R8 R1 K7 ["isExpanded"]
       16 GETTABLEKS                       R10 R1 K9 ["rowIndex"]
       18 ORK                              R9 R10 K8 [1]
       19 GETTABLEKS                       R10 R3 K10 ["Height"]
       21 JUMPIFNOT                        R8 ; [+5]
       22 GETTABLEKS                       R11 R3 K11 ["Arrow"]
       24 GETTABLEKS                       R11 R11 K12 ["Expanded"]
       26 JUMPIF                           R11 ; [+4]
       27 GETTABLEKS                       R11 R3 K11 ["Arrow"]
       29 GETTABLEKS                       R11 R11 K13 ["Collapsed"]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K14 ["getIconForCurrentTheme"]
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K15 ["IconEnums"]
       37 GETTABLEKS                       R13 R13 K16 ["BlankFolder"]
       39 CALL                             R12 1 1
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R13 R13 K17 ["createElement"]
       43 LOADK                            R14 K18 ["Frame"]
       44 NEWTABLE                         R15 4 0
       46 GETIMPORT                        R16 K21 [UDim2.new]
       48 LOADN                            R17 1
       49 LOADN                            R18 0
       50 LOADN                            R19 0
       51 GETTABLEKS                       R20 R3 K22 ["Indent"]
       53 CALL                             R16 4 1
       54 SETTABLEKS                       R16 R15 K23 ["Size"]
       56 LOADN                            R16 1
       57 SETTABLEKS                       R16 R15 K24 ["BackgroundTransparency"]
       59 GETUPVAL                         R16 1
       60 GETTABLEKS                       R16 R16 K25 ["Ref"]
       62 GETTABLEKS                       R17 R0 K26 ["childrenContentRef"]
       64 SETTABLE                         R17 R15 R16
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R16 R16 K27 ["Dictionary"]
       68 GETTABLEKS                       R16 R16 K28 ["join"]
       70 DUPTABLE                         R17 K31 [{"FolderLayout", "Padding"}]
       71 GETUPVAL                         R18 1
       72 GETTABLEKS                       R18 R18 K17 ["createElement"]
       74 LOADK                            R19 K32 ["UIListLayout"]
       75 NEWTABLE                         R20 8 0
       77 GETIMPORT                        R21 K34 [UDim.new]
       79 LOADN                            R22 0
       80 GETTABLEKS                       R23 R3 K30 ["Padding"]
       82 CALL                             R21 2 1
       83 SETTABLEKS                       R21 R20 K30 ["Padding"]
       85 GETIMPORT                        R21 K38 [Enum.FillDirection.Vertical]
       87 SETTABLEKS                       R21 R20 K36 ["FillDirection"]
       89 GETIMPORT                        R21 K41 [Enum.SortOrder.LayoutOrder]
       91 SETTABLEKS                       R21 R20 K39 ["SortOrder"]
       93 GETUPVAL                         R21 1
       94 GETTABLEKS                       R21 R21 K25 ["Ref"]
       96 GETTABLEKS                       R22 R0 K42 ["layoutRef"]
       98 SETTABLE                         R22 R20 R21
       99 GETUPVAL                         R21 1
      100 GETTABLEKS                       R21 R21 K43 ["Change"]
      102 GETTABLEKS                       R21 R21 K44 ["AbsoluteContentSize"]
      104 GETTABLEKS                       R22 R0 K45 ["resizeFrameHeight"]
      106 SETTABLE                         R22 R20 R21
      107 CALL                             R18 2 1
      108 SETTABLEKS                       R18 R17 K29 ["FolderLayout"]
      110 GETUPVAL                         R18 1
      111 GETTABLEKS                       R18 R18 K17 ["createElement"]
      113 LOADK                            R19 K46 ["UIPadding"]
      114 DUPTABLE                         R20 K48 [{"PaddingTop"}]
      115 GETIMPORT                        R21 K34 [UDim.new]
      117 LOADN                            R22 0
      118 GETTABLEKS                       R23 R3 K22 ["Indent"]
      120 CALL                             R21 2 1
      121 SETTABLEKS                       R21 R20 K47 ["PaddingTop"]
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K30 ["Padding"]
      126 GETTABLEKS                       R18 R1 K49 ["children"]
      128 CALL                             R16 2 -1
      129 CALL                             R13 -1 1
      130 GETUPVAL                         R14 1
      131 GETTABLEKS                       R14 R14 K17 ["createElement"]
      133 LOADK                            R15 K18 ["Frame"]
      134 NEWTABLE                         R16 8 0
      136 GETIMPORT                        R17 K21 [UDim2.new]
      138 LOADN                            R18 1
      139 LOADN                            R19 0
      140 LOADN                            R20 0
      141 MOVE                             R21 R10
      142 CALL                             R17 4 1
      143 SETTABLEKS                       R17 R16 K23 ["Size"]
      145 LOADN                            R17 1
      146 SETTABLEKS                       R17 R16 K24 ["BackgroundTransparency"]
      148 GETUPVAL                         R17 1
      149 GETTABLEKS                       R17 R17 K25 ["Ref"]
      151 GETTABLEKS                       R18 R0 K50 ["parentContentRef"]
      153 SETTABLE                         R18 R16 R17
      154 SETTABLEKS                       R9 R16 K40 ["LayoutOrder"]
      156 GETUPVAL                         R17 1
      157 GETTABLEKS                       R17 R17 K51 ["Event"]
      159 GETTABLEKS                       R17 R17 K52 ["MouseEnter"]
      161 GETTABLEKS                       R18 R0 K53 ["mouseEnter"]
      163 SETTABLE                         R18 R16 R17
      164 GETUPVAL                         R17 1
      165 GETTABLEKS                       R17 R17 K51 ["Event"]
      167 GETTABLEKS                       R17 R17 K54 ["mouseLeave"]
      169 GETTABLEKS                       R18 R0 K54 ["mouseLeave"]
      171 SETTABLE                         R18 R16 R17
      172 DUPTABLE                         R17 K57 [{"Contents", "Children"}]
      173 GETUPVAL                         R18 1
      174 GETTABLEKS                       R18 R18 K17 ["createElement"]
      176 GETUPVAL                         R19 3
      177 DUPTABLE                         R20 K63 [{["Size"], ["Position"], ["Text"], ["Style"] = "TreeItemButton", ["OnClick"]}]
      178 GETIMPORT                        R21 K21 [UDim2.new]
      180 LOADN                            R22 1
      181 LOADN                            R23 0
      182 LOADN                            R24 0
      183 MOVE                             R25 R10
      184 CALL                             R21 4 1
      185 SETTABLEKS                       R21 R20 K23 ["Size"]
      187 GETIMPORT                        R21 K21 [UDim2.new]
      189 LOADN                            R22 0
      190 LOADN                            R24 2
      191 MUL                              R23 R24 R10
      192 LOADN                            R24 0
      193 LOADN                            R25 0
      194 CALL                             R21 4 1
      195 SETTABLEKS                       R21 R20 K58 ["Position"]
      197 SETTABLEKS                       R5 R20 K59 ["Text"]
      199 GETTABLEKS                       R21 R0 K64 ["onClick"]
      201 SETTABLEKS                       R21 R20 K62 ["OnClick"]
      203 DUPTABLE                         R21 K67 [{"Padding", "Expand", "Icon"}]
      204 GETUPVAL                         R22 1
      205 GETTABLEKS                       R22 R22 K17 ["createElement"]
      207 LOADK                            R23 K46 ["UIPadding"]
      208 DUPTABLE                         R24 K69 [{"PaddingLeft"}]
      209 GETIMPORT                        R25 K34 [UDim.new]
      211 LOADN                            R26 0
      212 GETTABLEKS                       R28 R3 K22 ["Indent"]
      214 MUL                              R27 R6 R28
      215 CALL                             R25 2 1
      216 SETTABLEKS                       R25 R24 K68 ["PaddingLeft"]
      218 CALL                             R22 2 1
      219 SETTABLEKS                       R22 R21 K30 ["Padding"]
      221 GETUPVAL                         R22 1
      222 GETTABLEKS                       R22 R22 K17 ["createElement"]
      224 LOADK                            R23 K70 ["ImageButton"]
      225 NEWTABLE                         R24 8 0
      227 LOADN                            R25 0
      228 SETTABLEKS                       R25 R24 K40 ["LayoutOrder"]
      230 GETIMPORT                        R25 K21 [UDim2.new]
      232 LOADN                            R26 0
      233 MOVE                             R27 R10
      234 LOADN                            R28 0
      235 MOVE                             R29 R10
      236 CALL                             R25 4 1
      237 SETTABLEKS                       R25 R24 K23 ["Size"]
      239 GETIMPORT                        R25 K21 [UDim2.new]
      241 LOADN                            R26 0
      242 LOADN                            R29 -2
      243 MUL                              R28 R29 R10
      244 GETTABLEKS                       R29 R3 K71 ["Offset"]
      246 SUB                              R27 R28 R29
      247 LOADN                            R28 0
      248 LOADN                            R29 0
      249 CALL                             R25 4 1
      250 SETTABLEKS                       R25 R24 K58 ["Position"]
      252 LOADN                            R25 1
      253 SETTABLEKS                       R25 R24 K24 ["BackgroundTransparency"]
      255 LOADN                            R25 1
      256 SETTABLEKS                       R25 R24 K72 ["ImageTransparency"]
      258 GETUPVAL                         R25 1
      259 GETTABLEKS                       R25 R25 K51 ["Event"]
      261 GETTABLEKS                       R25 R25 K73 ["Activated"]
      263 NEWCLOSURE                       R26 P0
      264 CAPTURE                          VAL R1
      265 CAPTURE                          VAL R0
      266 SETTABLE                         R26 R24 R25
      267 DUPTABLE                         R25 K75 [{"ExpandIcon"}]
      268 MOVE                             R26 R7
      269 JUMPIFNOT                        R26 ; [+60]
      270 GETUPVAL                         R26 1
      271 GETTABLEKS                       R26 R26 K17 ["createElement"]
      273 LOADK                            R27 K76 ["ImageLabel"]
      274 GETUPVAL                         R28 2
      275 GETTABLEKS                       R28 R28 K27 ["Dictionary"]
      277 GETTABLEKS                       R28 R28 K28 ["join"]
      279 MOVE                             R29 R11
      280 DUPTABLE                         R30 K80 [{["BackgroundTransparency"] = 1, ["ScaleType"], ["Size"], ["AnchorPoint"], ["Position"], ["ImageTransparency"], ["ImageColor3"]}]
      281 GETIMPORT                        R31 K82 [Enum.ScaleType.Fit]
      283 SETTABLEKS                       R31 R30 K77 ["ScaleType"]
      285 GETIMPORT                        R31 K21 [UDim2.new]
      287 LOADN                            R32 0
      288 GETTABLEKS                       R33 R3 K11 ["Arrow"]
      290 GETTABLEKS                       R33 R33 K23 ["Size"]
      292 LOADN                            R34 0
      293 GETTABLEKS                       R35 R3 K11 ["Arrow"]
      295 GETTABLEKS                       R35 R35 K23 ["Size"]
      297 CALL                             R31 4 1
      298 SETTABLEKS                       R31 R30 K23 ["Size"]
      300 GETIMPORT                        R31 K84 [Vector2.new]
      302 LOADK                            R32 K85 [0.5]
      303 LOADK                            R33 K85 [0.5]
      304 CALL                             R31 2 1
      305 SETTABLEKS                       R31 R30 K78 ["AnchorPoint"]
      307 GETIMPORT                        R31 K21 [UDim2.new]
      309 LOADK                            R32 K85 [0.5]
      310 LOADN                            R33 0
      311 LOADK                            R34 K85 [0.5]
      312 LOADN                            R35 1
      313 CALL                             R31 4 1
      314 SETTABLEKS                       R31 R30 K58 ["Position"]
      316 JUMPIFNOT                        R7 ; [+2]
      317 LOADN                            R31 0
      318 JUMP                             ; [+1]
      319 LOADN                            R31 1
      320 SETTABLEKS                       R31 R30 K72 ["ImageTransparency"]
      322 GETTABLEKS                       R31 R3 K11 ["Arrow"]
      324 GETTABLEKS                       R31 R31 K86 ["Color"]
      326 SETTABLEKS                       R31 R30 K79 ["ImageColor3"]
      328 CALL                             R28 2 -1
      329 CALL                             R26 -1 1
      330 SETTABLEKS                       R26 R25 K74 ["ExpandIcon"]
      332 CALL                             R22 3 1
      333 SETTABLEKS                       R22 R21 K65 ["Expand"]
      335 GETUPVAL                         R22 1
      336 GETTABLEKS                       R22 R22 K17 ["createElement"]
      338 LOADK                            R23 K76 ["ImageLabel"]
      339 DUPTABLE                         R24 K90 [{["ZIndex"] = 2, ["LayoutOrder"] = 1, ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Image"]}]
      340 GETIMPORT                        R25 K21 [UDim2.new]
      342 LOADN                            R26 0
      343 MOVE                             R27 R10
      344 LOADN                            R28 0
      345 MOVE                             R29 R10
      346 CALL                             R25 4 1
      347 SETTABLEKS                       R25 R24 K23 ["Size"]
      349 GETIMPORT                        R25 K21 [UDim2.new]
      351 LOADN                            R26 0
      352 LOADN                            R29 -1
      353 MUL                              R28 R29 R10
      354 GETTABLEKS                       R29 R3 K71 ["Offset"]
      356 SUB                              R27 R28 R29
      357 LOADN                            R28 0
      358 LOADN                            R29 0
      359 CALL                             R25 4 1
      360 SETTABLEKS                       R25 R24 K58 ["Position"]
      362 SETTABLEKS                       R12 R24 K89 ["Image"]
      364 CALL                             R22 2 1
      365 SETTABLEKS                       R22 R21 K66 ["Icon"]
      367 CALL                             R18 3 1
      368 SETTABLEKS                       R18 R17 K55 ["Contents"]
      370 SETTABLEKS                       R13 R17 K56 ["Children"]
      372 CALL                             R14 3 -1
      373 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Button"]
       38 GETTABLEKS                       R8 R2 K13 ["PureComponent"]
       40 LOADK                            R10 K14 ["FolderTreeItem"]
       41 NAMECALL                         R8 R8 K15 ["extend"]
       43 CALL                             R8 2 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R10 R0 K16 ["Src"]
       48 GETTABLEKS                       R10 R10 K17 ["Util"]
       50 GETTABLEKS                       R10 R10 K18 ["ModernIcons"]
       52 CALL                             R9 1 1
       53 DUPCLOSURE                       R10 K19 [PROTO_4]
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R10 R8 K20 ["init"]
       57 DUPCLOSURE                       R10 K21 [PROTO_6]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R7
       62 SETTABLEKS                       R10 R8 K22 ["render"]
       64 MOVE                             R10 R5
       65 DUPTABLE                         R11 K25 [{"Stylizer", "Mouse"}]
       66 GETTABLEKS                       R12 R4 K23 ["Stylizer"]
       68 SETTABLEKS                       R12 R11 K23 ["Stylizer"]
       70 GETTABLEKS                       R12 R4 K24 ["Mouse"]
       72 SETTABLEKS                       R12 R11 K24 ["Mouse"]
       74 CALL                             R10 1 1
       75 MOVE                             R11 R8
       76 CALL                             R10 1 1
       77 MOVE                             R8 R10
       78 RETURN                           R8 1
