PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoveredIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{[1] = 0}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{[1] = 0}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["onItemEntered"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onItemLeft"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 MULK                             R7 R3 K0 [0.4]
        1 DUPTABLE                         R8 K2 [{"UIListLayout"}]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K3 ["createElement"]
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
       47 GETTABLEKS                       R18 R0 K27 ["props"]
       49 GETTABLEKS                       R18 R18 K28 ["Localization"]
       51 CALL                             R17 1 1
       52 GETTABLEKS                       R18 R15 K29 ["name"]
       54 GETTABLE                         R16 R17 R18
       55 JUMPIFEQ                         R15 R2 ; [+2]
       57 LOADB                            R17 0 +1
       58 LOADB                            R17 1
       59 GETTABLEKS                       R18 R4 K30 ["sideTab"]
       61 GETTABLEKS                       R18 R18 K31 ["contentColor"]
       63 GETUPVAL                         R19 0
       64 GETTABLEKS                       R19 R19 K3 ["createElement"]
       66 LOADK                            R20 K32 ["Frame"]
       67 DUPTABLE                         R21 K36 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       68 GETIMPORT                        R22 K38 [UDim2.new]
       70 LOADK                            R23 K39 [0.5]
       71 LOADN                            R24 0
       72 LOADN                            R25 0
       73 MOVE                             R26 R3
       74 CALL                             R22 4 1
       75 SETTABLEKS                       R22 R21 K33 ["Size"]
       77 SETTABLEKS                       R14 R21 K17 ["LayoutOrder"]
       79 DUPTABLE                         R22 K44 [{"Icon", "Text", "Selection", "Error"}]
       80 GETUPVAL                         R23 0
       81 GETTABLEKS                       R23 R23 K3 ["createElement"]
       83 LOADK                            R24 K45 ["ImageButton"]
       84 NEWTABLE                         R25 8 0
       86 GETIMPORT                        R26 K47 [Vector2.new]
       88 LOADN                            R27 0
       89 LOADK                            R28 K39 [0.5]
       90 CALL                             R26 2 1
       91 SETTABLEKS                       R26 R25 K48 ["AnchorPoint"]
       93 GETIMPORT                        R26 K38 [UDim2.new]
       95 LOADN                            R27 0
       96 LOADN                            R28 0
       97 LOADK                            R29 K39 [0.5]
       98 LOADN                            R30 0
       99 CALL                             R26 4 1
      100 SETTABLEKS                       R26 R25 K49 ["Position"]
      102 GETIMPORT                        R26 K38 [UDim2.new]
      104 LOADN                            R27 0
      105 MOVE                             R28 R7
      106 LOADN                            R29 0
      107 MOVE                             R30 R7
      108 CALL                             R26 4 1
      109 SETTABLEKS                       R26 R25 K33 ["Size"]
      111 LOADN                            R26 1
      112 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      114 SETTABLEKS                       R18 R25 K50 ["ImageColor3"]
      116 GETTABLEKS                       R26 R15 K51 ["image"]
      118 SETTABLEKS                       R26 R25 K52 ["Image"]
      120 GETUPVAL                         R26 0
      121 GETTABLEKS                       R26 R26 K53 ["Event"]
      123 GETTABLEKS                       R26 R26 K54 ["Activated"]
      125 NEWCLOSURE                       R27 P0
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R15
      129 SETTABLE                         R27 R25 R26
      130 LOADN                            R26 1
      131 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      133 CALL                             R23 2 1
      134 SETTABLEKS                       R23 R22 K40 ["Icon"]
      136 GETUPVAL                         R23 0
      137 GETTABLEKS                       R23 R23 K3 ["createElement"]
      139 LOADK                            R24 K55 ["TextButton"]
      140 NEWTABLE                         R25 16 0
      142 GETIMPORT                        R26 K38 [UDim2.new]
      144 LOADN                            R27 0
      145 MULK                             R28 R7 K56 [2]
      146 LOADN                            R29 0
      147 LOADN                            R30 0
      148 CALL                             R26 4 1
      149 SETTABLEKS                       R26 R25 K49 ["Position"]
      151 GETIMPORT                        R26 K38 [UDim2.new]
      153 LOADN                            R27 1
      154 MINUS                            R28 R7
      155 LOADN                            R29 1
      156 LOADN                            R30 0
      157 CALL                             R26 4 1
      158 SETTABLEKS                       R26 R25 K33 ["Size"]
      160 LOADN                            R26 1
      161 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      163 SETTABLEKS                       R16 R25 K41 ["Text"]
      165 GETUPVAL                         R26 2
      166 GETTABLEKS                       R26 R26 K57 ["FONT"]
      168 SETTABLEKS                       R26 R25 K58 ["Font"]
      170 GETUPVAL                         R26 2
      171 GETTABLEKS                       R26 R26 K59 ["FONT_SIZE_LARGE"]
      173 SETTABLEKS                       R26 R25 K60 ["TextSize"]
      175 GETIMPORT                        R26 K63 [Enum.TextXAlignment.Left]
      177 SETTABLEKS                       R26 R25 K61 ["TextXAlignment"]
      179 GETTABLEKS                       R26 R4 K30 ["sideTab"]
      181 GETTABLEKS                       R26 R26 K64 ["textColor"]
      183 SETTABLEKS                       R26 R25 K65 ["TextColor3"]
      185 GETUPVAL                         R26 0
      186 GETTABLEKS                       R26 R26 K53 ["Event"]
      188 GETTABLEKS                       R26 R26 K54 ["Activated"]
      190 NEWCLOSURE                       R27 P1
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R15
      194 SETTABLE                         R27 R25 R26
      195 LOADN                            R26 2
      196 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      198 CALL                             R23 2 1
      199 SETTABLEKS                       R23 R22 K41 ["Text"]
      201 MOVE                             R23 R17
      202 JUMPIFNOT                        R23 ; [+71]
      203 GETUPVAL                         R23 0
      204 GETTABLEKS                       R23 R23 K3 ["createElement"]
      206 LOADK                            R24 K32 ["Frame"]
      207 DUPTABLE                         R25 K70 [{["Position"], ["Size"], ["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["ZIndex"], ["LayoutOrder"] = 0}]
      208 GETIMPORT                        R26 K38 [UDim2.new]
      210 LOADK                            R27 K71 [-0.5]
      211 LOADN                            R28 0
      212 LOADN                            R29 0
      213 LOADN                            R30 0
      214 CALL                             R26 4 1
      215 SETTABLEKS                       R26 R25 K49 ["Position"]
      217 GETIMPORT                        R26 K38 [UDim2.new]
      219 LOADN                            R27 0
      220 MOVE                             R28 R10
      221 LOADN                            R29 1
      222 LOADN                            R30 0
      223 CALL                             R26 4 1
      224 SETTABLEKS                       R26 R25 K33 ["Size"]
      226 GETTABLEKS                       R26 R6 K72 ["selecteBarTrans"]
      228 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      230 GETTABLEKS                       R26 R6 K73 ["selecteBarColor"]
      232 SETTABLEKS                       R26 R25 K66 ["BackgroundColor3"]
      234 GETTABLEKS                       R26 R6 K74 ["selecteBarZindex"]
      236 SETTABLEKS                       R26 R25 K69 ["ZIndex"]
      238 DUPTABLE                         R26 K76 [{"Indicator"}]
      239 GETUPVAL                         R27 0
      240 GETTABLEKS                       R27 R27 K3 ["createElement"]
      242 LOADK                            R28 K32 ["Frame"]
      243 DUPTABLE                         R29 K77 [{["Position"], ["Size"], ["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      244 GETIMPORT                        R30 K38 [UDim2.new]
      246 LOADN                            R31 0
      247 LOADN                            R32 0
      248 LOADN                            R33 0
      249 LOADN                            R34 0
      250 CALL                             R30 4 1
      251 SETTABLEKS                       R30 R29 K49 ["Position"]
      253 GETIMPORT                        R30 K38 [UDim2.new]
      255 LOADN                            R31 0
      256 LOADN                            R32 4
      257 LOADN                            R33 1
      258 LOADN                            R34 0
      259 CALL                             R30 4 1
      260 SETTABLEKS                       R30 R29 K33 ["Size"]
      262 GETTABLEKS                       R30 R6 K78 ["selecteIndicatorTrans"]
      264 SETTABLEKS                       R30 R29 K34 ["BackgroundTransparency"]
      266 GETTABLEKS                       R30 R6 K79 ["selecteIndicatorColor"]
      268 SETTABLEKS                       R30 R29 K66 ["BackgroundColor3"]
      270 CALL                             R27 2 1
      271 SETTABLEKS                       R27 R26 K75 ["Indicator"]
      273 CALL                             R23 3 1
      274 SETTABLEKS                       R23 R22 K42 ["Selection"]
      276 GETTABLEKS                       R23 R0 K27 ["props"]
      278 GETTABLEKS                       R23 R23 K80 ["tabHasErrors"]
      280 GETTABLEKS                       R24 R15 K29 ["name"]
      282 CALL                             R23 1 1
      283 JUMPIFNOT                        R23 ; [+46]
      284 GETUPVAL                         R23 0
      285 GETTABLEKS                       R23 R23 K3 ["createElement"]
      287 LOADK                            R24 K45 ["ImageButton"]
      288 NEWTABLE                         R25 8 0
      290 LOADN                            R26 1
      291 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      293 GETIMPORT                        R26 K38 [UDim2.new]
      295 LOADN                            R27 0
      296 LOADN                            R28 20
      297 LOADN                            R29 0
      298 LOADN                            R30 20
      299 CALL                             R26 4 1
      300 SETTABLEKS                       R26 R25 K33 ["Size"]
      302 GETIMPORT                        R26 K38 [UDim2.new]
      304 LOADN                            R27 1
      305 LOADN                            R28 -20
      306 LOADK                            R29 K39 [0.5]
      307 LOADN                            R30 -10
      308 CALL                             R26 4 1
      309 SETTABLEKS                       R26 R25 K49 ["Position"]
      311 GETUPVAL                         R26 3
      312 GETTABLEKS                       R26 R26 K81 ["ERROR_ICON"]
      314 SETTABLEKS                       R26 R25 K52 ["Image"]
      316 GETUPVAL                         R26 0
      317 GETTABLEKS                       R26 R26 K53 ["Event"]
      319 GETTABLEKS                       R26 R26 K54 ["Activated"]
      321 NEWCLOSURE                       R27 P2
      322 CAPTURE                          VAL R0
      323 CAPTURE                          VAL R14
      324 CAPTURE                          VAL R15
      325 SETTABLE                         R27 R25 R26
      326 LOADN                            R26 3
      327 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      329 CALL                             R23 2 1
      330 SETTABLEKS                       R23 R22 K43 ["Error"]
      332 CALL                             R19 3 1
      333 SETTABLE                         R19 R8 R16
      334 FORGLOOP                         R11 2 ; [-289]
      336 RETURN                           R8 1

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
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K11 ["createElement"]
       32 LOADK                            R13 K12 ["Frame"]
       33 DUPTABLE                         R14 K17 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       34 SETTABLEKS                       R5 R14 K4 ["Position"]
       36 SETTABLEKS                       R4 R14 K3 ["Size"]
       38 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       40 MOVE                             R15 R11
       41 CALL                             R12 3 -1
       42 RETURN                           R12 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tabErrors"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["tabErrors"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       28 GETTABLEKS                       R5 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R5 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R5 K12 ["Images"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Src"]
       46 GETTABLEKS                       R9 R9 K13 ["Localization"]
       48 GETTABLEKS                       R9 R9 K14 ["getLocalizedSideTabsMap"]
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
