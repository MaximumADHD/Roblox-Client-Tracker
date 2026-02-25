PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoveredIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredIndex"}]
        2 LOADN                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["hoveredIndex"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"hoveredIndex"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["hoveredIndex"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["onItemEntered"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onItemLeft"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 MULK                             R7 R3 K0 [0.4]
        1 DUPTABLE                         R8 K2 [{"UIListLayout"}]
        2 GETUPVAL                         R10 0
        3 GETTABLEKS                       R9 R10 K3 ["createElement"]
        5 LOADK                            R10 K1 ["UIListLayout"]
        6 DUPTABLE                         R11 K9 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
        7 GETIMPORT                        R12 K12 [Enum.FillDirection.Vertical]
        9 SETTABLEKS                       R12 R11 K4 ["FillDirection"]
       11 GETIMPORT                        R12 K14 [Enum.HorizontalAlignment.Center]
       13 SETTABLEKS                       R12 R11 K5 ["HorizontalAlignment"]
       15 GETIMPORT                        R12 K16 [Enum.VerticalAlignment.Top]
       17 SETTABLEKS                       R12 R11 K6 ["VerticalAlignment"]
       19 GETIMPORT                        R12 K18 [Enum.SortOrder.LayoutOrder]
       21 SETTABLEKS                       R12 R11 K7 ["SortOrder"]
       23 GETIMPORT                        R12 K21 [UDim.new]
       25 LOADN                            R13 0
       26 LOADN                            R14 0
       27 CALL                             R12 2 1
       28 SETTABLEKS                       R12 R11 K8 ["Padding"]
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K1 ["UIListLayout"]
       33 GETTABLEKS                       R9 R5 K22 ["current"]
       35 LOADN                            R10 0
       36 JUMPIFNOT                        R9 ; [+4]
       37 GETTABLEKS                       R11 R9 K23 ["AbsoluteSize"]
       39 GETTABLEKS                       R10 R11 K24 ["X"]
       41 GETIMPORT                        R11 K26 [pairs]
       43 MOVE                             R12 R1
       44 CALL                             R11 1 3
       45 FORGPREP_NEXT                    R11
       46 GETUPVAL                         R17 1
       47 GETTABLEKS                       R19 R0 K27 ["props"]
       49 GETTABLEKS                       R18 R19 K28 ["Localization"]
       51 CALL                             R17 1 1
       52 GETTABLEKS                       R18 R15 K29 ["name"]
       54 GETTABLE                         R16 R17 R18
       55 JUMPIFEQ                         R15 R2 ; [+2]
       57 LOADB                            R17 0 +1
       58 LOADB                            R17 1
       59 GETTABLEKS                       R19 R4 K30 ["sideTab"]
       61 GETTABLEKS                       R18 R19 K31 ["contentColor"]
       63 GETUPVAL                         R20 0
       64 GETTABLEKS                       R19 R20 K3 ["createElement"]
       66 LOADK                            R20 K32 ["Frame"]
       67 DUPTABLE                         R21 K35 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       68 GETIMPORT                        R22 K37 [UDim2.new]
       70 LOADK                            R23 K38 [0.5]
       71 LOADN                            R24 0
       72 LOADN                            R25 0
       73 MOVE                             R26 R3
       74 CALL                             R22 4 1
       75 SETTABLEKS                       R22 R21 K33 ["Size"]
       77 LOADN                            R22 1
       78 SETTABLEKS                       R22 R21 K34 ["BackgroundTransparency"]
       80 SETTABLEKS                       R14 R21 K17 ["LayoutOrder"]
       82 DUPTABLE                         R22 K43 [{"Icon", "Text", "Selection", "Error"}]
       83 GETUPVAL                         R24 0
       84 GETTABLEKS                       R23 R24 K3 ["createElement"]
       86 LOADK                            R24 K44 ["ImageButton"]
       87 NEWTABLE                         R25 8 0
       89 GETIMPORT                        R26 K46 [Vector2.new]
       91 LOADN                            R27 0
       92 LOADK                            R28 K38 [0.5]
       93 CALL                             R26 2 1
       94 SETTABLEKS                       R26 R25 K47 ["AnchorPoint"]
       96 GETIMPORT                        R26 K37 [UDim2.new]
       98 LOADN                            R27 0
       99 LOADN                            R28 0
      100 LOADK                            R29 K38 [0.5]
      101 LOADN                            R30 0
      102 CALL                             R26 4 1
      103 SETTABLEKS                       R26 R25 K48 ["Position"]
      105 GETIMPORT                        R26 K37 [UDim2.new]
      107 LOADN                            R27 0
      108 MOVE                             R28 R7
      109 LOADN                            R29 0
      110 MOVE                             R30 R7
      111 CALL                             R26 4 1
      112 SETTABLEKS                       R26 R25 K33 ["Size"]
      114 LOADN                            R26 1
      115 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      117 SETTABLEKS                       R18 R25 K49 ["ImageColor3"]
      119 GETTABLEKS                       R26 R15 K50 ["image"]
      121 SETTABLEKS                       R26 R25 K51 ["Image"]
      123 GETUPVAL                         R28 0
      124 GETTABLEKS                       R27 R28 K52 ["Event"]
      126 GETTABLEKS                       R26 R27 K53 ["Activated"]
      128 NEWCLOSURE                       R27 P0
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R15
      132 SETTABLE                         R27 R25 R26
      133 LOADN                            R26 1
      134 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      136 CALL                             R23 2 1
      137 SETTABLEKS                       R23 R22 K39 ["Icon"]
      139 GETUPVAL                         R24 0
      140 GETTABLEKS                       R23 R24 K3 ["createElement"]
      142 LOADK                            R24 K54 ["TextButton"]
      143 NEWTABLE                         R25 16 0
      145 GETIMPORT                        R26 K37 [UDim2.new]
      147 LOADN                            R27 0
      148 MULK                             R28 R7 K55 [2]
      149 LOADN                            R29 0
      150 LOADN                            R30 0
      151 CALL                             R26 4 1
      152 SETTABLEKS                       R26 R25 K48 ["Position"]
      154 GETIMPORT                        R26 K37 [UDim2.new]
      156 LOADN                            R27 1
      157 MINUS                            R28 R7
      158 LOADN                            R29 1
      159 LOADN                            R30 0
      160 CALL                             R26 4 1
      161 SETTABLEKS                       R26 R25 K33 ["Size"]
      163 LOADN                            R26 1
      164 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      166 SETTABLEKS                       R16 R25 K40 ["Text"]
      168 GETUPVAL                         R27 2
      169 GETTABLEKS                       R26 R27 K56 ["FONT"]
      171 SETTABLEKS                       R26 R25 K57 ["Font"]
      173 GETUPVAL                         R27 2
      174 GETTABLEKS                       R26 R27 K58 ["FONT_SIZE_LARGE"]
      176 SETTABLEKS                       R26 R25 K59 ["TextSize"]
      178 GETIMPORT                        R26 K62 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R26 R25 K60 ["TextXAlignment"]
      182 GETTABLEKS                       R27 R4 K30 ["sideTab"]
      184 GETTABLEKS                       R26 R27 K63 ["textColor"]
      186 SETTABLEKS                       R26 R25 K64 ["TextColor3"]
      188 GETUPVAL                         R28 0
      189 GETTABLEKS                       R27 R28 K52 ["Event"]
      191 GETTABLEKS                       R26 R27 K53 ["Activated"]
      193 NEWCLOSURE                       R27 P1
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R15
      197 SETTABLE                         R27 R25 R26
      198 LOADN                            R26 2
      199 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      201 CALL                             R23 2 1
      202 SETTABLEKS                       R23 R22 K40 ["Text"]
      204 MOVE                             R23 R17
      205 JUMPIFNOT                        R23 ; [+80]
      206 GETUPVAL                         R24 0
      207 GETTABLEKS                       R23 R24 K3 ["createElement"]
      209 LOADK                            R24 K32 ["Frame"]
      210 DUPTABLE                         R25 K68 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "ZIndex", "LayoutOrder"}]
      211 GETIMPORT                        R26 K37 [UDim2.new]
      213 LOADK                            R27 K69 [-0.5]
      214 LOADN                            R28 0
      215 LOADN                            R29 0
      216 LOADN                            R30 0
      217 CALL                             R26 4 1
      218 SETTABLEKS                       R26 R25 K48 ["Position"]
      220 GETIMPORT                        R26 K37 [UDim2.new]
      222 LOADN                            R27 0
      223 MOVE                             R28 R10
      224 LOADN                            R29 1
      225 LOADN                            R30 0
      226 CALL                             R26 4 1
      227 SETTABLEKS                       R26 R25 K33 ["Size"]
      229 GETTABLEKS                       R26 R6 K70 ["selecteBarTrans"]
      231 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      233 GETTABLEKS                       R26 R6 K71 ["selecteBarColor"]
      235 SETTABLEKS                       R26 R25 K65 ["BackgroundColor3"]
      237 LOADN                            R26 0
      238 SETTABLEKS                       R26 R25 K66 ["BorderSizePixel"]
      240 GETTABLEKS                       R26 R6 K72 ["selecteBarZindex"]
      242 SETTABLEKS                       R26 R25 K67 ["ZIndex"]
      244 LOADN                            R26 0
      245 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      247 DUPTABLE                         R26 K74 [{"Indicator"}]
      248 GETUPVAL                         R28 0
      249 GETTABLEKS                       R27 R28 K3 ["createElement"]
      251 LOADK                            R28 K32 ["Frame"]
      252 DUPTABLE                         R29 K75 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      253 GETIMPORT                        R30 K37 [UDim2.new]
      255 LOADN                            R31 0
      256 LOADN                            R32 0
      257 LOADN                            R33 0
      258 LOADN                            R34 0
      259 CALL                             R30 4 1
      260 SETTABLEKS                       R30 R29 K48 ["Position"]
      262 GETIMPORT                        R30 K37 [UDim2.new]
      264 LOADN                            R31 0
      265 LOADN                            R32 4
      266 LOADN                            R33 1
      267 LOADN                            R34 0
      268 CALL                             R30 4 1
      269 SETTABLEKS                       R30 R29 K33 ["Size"]
      271 GETTABLEKS                       R30 R6 K76 ["selecteIndicatorTrans"]
      273 SETTABLEKS                       R30 R29 K34 ["BackgroundTransparency"]
      275 GETTABLEKS                       R30 R6 K77 ["selecteIndicatorColor"]
      277 SETTABLEKS                       R30 R29 K65 ["BackgroundColor3"]
      279 LOADN                            R30 0
      280 SETTABLEKS                       R30 R29 K66 ["BorderSizePixel"]
      282 CALL                             R27 2 1
      283 SETTABLEKS                       R27 R26 K73 ["Indicator"]
      285 CALL                             R23 3 1
      286 SETTABLEKS                       R23 R22 K41 ["Selection"]
      288 GETTABLEKS                       R24 R0 K27 ["props"]
      290 GETTABLEKS                       R23 R24 K78 ["tabHasErrors"]
      292 GETTABLEKS                       R24 R15 K29 ["name"]
      294 CALL                             R23 1 1
      295 JUMPIFNOT                        R23 ; [+46]
      296 GETUPVAL                         R24 0
      297 GETTABLEKS                       R23 R24 K3 ["createElement"]
      299 LOADK                            R24 K44 ["ImageButton"]
      300 NEWTABLE                         R25 8 0
      302 LOADN                            R26 1
      303 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      305 GETIMPORT                        R26 K37 [UDim2.new]
      307 LOADN                            R27 0
      308 LOADN                            R28 20
      309 LOADN                            R29 0
      310 LOADN                            R30 20
      311 CALL                             R26 4 1
      312 SETTABLEKS                       R26 R25 K33 ["Size"]
      314 GETIMPORT                        R26 K37 [UDim2.new]
      316 LOADN                            R27 1
      317 LOADN                            R28 236
      318 LOADK                            R29 K38 [0.5]
      319 LOADN                            R30 246
      320 CALL                             R26 4 1
      321 SETTABLEKS                       R26 R25 K48 ["Position"]
      323 GETUPVAL                         R27 3
      324 GETTABLEKS                       R26 R27 K79 ["ERROR_ICON"]
      326 SETTABLEKS                       R26 R25 K51 ["Image"]
      328 GETUPVAL                         R28 0
      329 GETTABLEKS                       R27 R28 K52 ["Event"]
      331 GETTABLEKS                       R26 R27 K53 ["Activated"]
      333 NEWCLOSURE                       R27 P2
      334 CAPTURE                          VAL R0
      335 CAPTURE                          VAL R14
      336 CAPTURE                          VAL R15
      337 SETTABLE                         R27 R25 R26
      338 LOADN                            R26 3
      339 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      341 CALL                             R23 2 1
      342 SETTABLEKS                       R23 R22 K42 ["Error"]
      344 CALL                             R19 3 1
      345 SETTABLE                         R19 R8 R16
      346 FORGLOOP                         R11 2 ; [-301]
      348 RETURN                           R8 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["Items"]
       12 GETTABLEKS                       R7 R1 K6 ["ItemHeight"]
       14 GETTABLEKS                       R8 R1 K7 ["CurrentTab"]
       16 GETTABLEKS                       R9 R1 K8 ["SelectParentRef"]
       18 GETTABLEKS                       R10 R2 K9 ["sideTab"]
       20 MOVE                             R13 R6
       21 MOVE                             R14 R8
       22 MOVE                             R15 R7
       23 MOVE                             R16 R2
       24 MOVE                             R17 R9
       25 MOVE                             R18 R10
       26 NAMECALL                         R11 R0 K10 ["createSideButtons"]
       28 CALL                             R11 7 1
       29 GETUPVAL                         R13 0
       30 GETTABLEKS                       R12 R13 K11 ["createElement"]
       32 LOADK                            R13 K12 ["Frame"]
       33 DUPTABLE                         R14 K15 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       34 SETTABLEKS                       R5 R14 K4 ["Position"]
       36 SETTABLEKS                       R4 R14 K3 ["Size"]
       38 LOADN                            R15 1
       39 SETTABLEKS                       R15 R14 K13 ["BackgroundTransparency"]
       41 LOADN                            R15 0
       42 SETTABLEKS                       R15 R14 K14 ["BorderSizePixel"]
       44 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       46 MOVE                             R15 R11
       47 CALL                             R12 3 -1
       48 RETURN                           R12 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["tabErrors"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["tabErrors"]
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+11]
        9 GETIMPORT                        R2 K2 [pairs]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       16 LOADB                            R7 1
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 2 ; [-5]
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_9:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"tabHasErrors"}]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          REF R0
        8 SETTABLEKS                       R3 R2 K0 ["tabHasErrors"]
       10 CLOSEUPVALS                      R0
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R5 K12 ["Images"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R11 R0 K9 ["Src"]
       46 GETTABLEKS                       R10 R11 K13 ["Localization"]
       48 GETTABLEKS                       R9 R10 K14 ["getLocalizedSideTabsMap"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R4 K15 ["ContextServices"]
       53 GETTABLEKS                       R10 R9 K16 ["withContext"]
       55 GETTABLEKS                       R11 R2 K17 ["PureComponent"]
       57 LOADK                            R13 K18 ["SideTabs"]
       58 NAMECALL                         R11 R11 K19 ["extend"]
       60 CALL                             R11 2 1
       61 DUPCLOSURE                       R12 K20 [PROTO_2]
       62 SETTABLEKS                       R12 R11 K21 ["init"]
       64 DUPCLOSURE                       R12 K22 [PROTO_6]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R12 R11 K23 ["createSideButtons"]
       71 DUPCLOSURE                       R12 K24 [PROTO_7]
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R12 R11 K25 ["render"]
       75 DUPCLOSURE                       R12 K26 [PROTO_9]
       76 MOVE                             R13 R10
       77 DUPTABLE                         R14 K28 [{"Stylizer", "Localization"}]
       78 GETTABLEKS                       R15 R9 K27 ["Stylizer"]
       80 SETTABLEKS                       R15 R14 K27 ["Stylizer"]
       82 GETTABLEKS                       R15 R9 K13 ["Localization"]
       84 SETTABLEKS                       R15 R14 K13 ["Localization"]
       86 CALL                             R13 1 1
       87 MOVE                             R14 R11
       88 CALL                             R13 1 1
       89 MOVE                             R11 R13
       90 GETTABLEKS                       R13 R3 K29 ["connect"]
       92 MOVE                             R14 R12
       93 CALL                             R13 1 1
       94 MOVE                             R14 R11
       95 CALL                             R13 1 -1
       96 RETURN                           R13 -1
