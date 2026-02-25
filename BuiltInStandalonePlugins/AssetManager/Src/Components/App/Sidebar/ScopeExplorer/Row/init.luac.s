PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ExplorerHeader"]
        3 GETTABLEKS                       R2 R3 K1 ["Project"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 LOADK                            R4 K2 ["Sidebar"]
        8 LOADK                            R5 K1 ["Project"]
        9 NAMECALL                         R2 R1 K3 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["ExplorerHeader"]
       16 GETTABLEKS                       R2 R3 K4 ["Library"]
       18 JUMPIFNOTEQ                      R0 R2 ; [+7]
       20 LOADK                            R4 K2 ["Sidebar"]
       21 LOADK                            R5 K4 ["Library"]
       22 NAMECALL                         R2 R1 K3 ["getText"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1
       26 LOADK                            R2 K5 [""]
       27 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R2 K1 ["Group"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["icon-group-folder"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R2 K3 ["User"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["icon-user-folder"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R2 K5 ["ProjectPlaces"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["icon-places-folder"]
       26 RETURN                           R1 1
       27 LOADK                            R1 K7 ["icon-folder"]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["Text"]
       10 DUPTABLE                         R4 K6 [{"LayoutOrder", "Position", "Text", "tag"}]
       11 GETTABLEKS                       R5 R0 K7 ["Index"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 GETTABLEKS                       R5 R0 K4 ["Position"]
       17 SETTABLEKS                       R5 R4 K4 ["Position"]
       19 GETTABLEKS                       R6 R0 K8 ["Id"]
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K9 ["ExplorerHeader"]
       24 GETTABLEKS                       R7 R8 K10 ["Project"]
       26 JUMPIFNOTEQ                      R6 R7 ; [+8]
       28 LOADK                            R9 K11 ["Sidebar"]
       29 LOADK                            R10 K10 ["Project"]
       30 NAMECALL                         R7 R1 K12 ["getText"]
       32 CALL                             R7 3 1
       33 MOVE                             R5 R7
       34 JUMP                             ; [+15]
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R8 R9 K9 ["ExplorerHeader"]
       38 GETTABLEKS                       R7 R8 K13 ["Library"]
       40 JUMPIFNOTEQ                      R6 R7 ; [+8]
       42 LOADK                            R9 K11 ["Sidebar"]
       43 LOADK                            R10 K13 ["Library"]
       44 NAMECALL                         R7 R1 K12 ["getText"]
       46 CALL                             R7 3 1
       47 MOVE                             R5 R7
       48 JUMP                             ; [+1]
       49 LOADK                            R5 K14 [""]
       50 SETTABLEKS                       R5 R4 K2 ["Text"]
       52 LOADK                            R5 K15 ["size-full-600 text-truncate-split text-title-small text-align-x-left padding-x-xsmall"]
       53 SETTABLEKS                       R5 R4 K5 ["tag"]
       55 CALL                             R2 2 -1
       56 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Children"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["Children"]
        7 LENGTH                           R1 R2
        8 LOADN                            R2 0
        9 JUMPIFLT                         R2 R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setCurrentScope"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        7 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        9 GETTABLE                         R0 R1 R2
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETUPVAL                         R3 5
       13 CALL                             R0 3 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R3 5
       17 GETTABLEKS                       R2 R3 K2 ["Id"]
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R4 R5 K3 ["Uid"]
       23 NAMECALL                         R0 R0 K4 ["handleRowRightClick_DEPRECATED"]
       25 CALL                             R0 4 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleExpansion"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R5 R0 K2 ["Item"]
       18 GETTABLEKS                       R7 R5 K3 ["Type"]
       20 GETUPVAL                         R10 4
       21 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       23 GETTABLEKS                       R8 R9 K5 ["Group"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+3]
       27 LOADK                            R6 K6 ["icon-group-folder"]
       28 JUMP                             ; [+19]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       32 GETTABLEKS                       R8 R9 K7 ["User"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 LOADK                            R6 K8 ["icon-user-folder"]
       37 JUMP                             ; [+10]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       41 GETTABLEKS                       R8 R9 K9 ["ProjectPlaces"]
       43 JUMPIFNOTEQ                      R7 R8 ; [+3]
       45 LOADK                            R6 K10 ["icon-places-folder"]
       46 JUMP                             ; [+1]
       47 LOADK                            R6 K11 ["icon-folder"]
       48 GETUPVAL                         R7 5
       49 CALL                             R7 0 1
       50 GETUPVAL                         R8 6
       51 CALL                             R8 0 1
       52 GETTABLEKS                       R10 R8 K12 ["Uid"]
       54 GETTABLEKS                       R11 R5 K12 ["Uid"]
       56 JUMPIFEQ                         R10 R11 ; [+2]
       58 LOADB                            R9 0 +1
       59 LOADB                            R9 1
       60 GETTABLEKS                       R11 R5 K3 ["Type"]
       62 GETUPVAL                         R14 4
       63 GETTABLEKS                       R13 R14 K4 ["ScopeType"]
       65 GETTABLEKS                       R12 R13 K9 ["ProjectPlaces"]
       67 JUMPIFNOTEQ                      R11 R12 ; [+7]
       69 LOADK                            R12 K13 ["Scopes"]
       70 LOADK                            R13 K14 ["ExperiencePlaces"]
       71 NAMECALL                         R10 R1 K15 ["getText"]
       73 CALL                             R10 3 1
       74 JUMP                             ; [+17]
       75 GETTABLEKS                       R11 R5 K3 ["Type"]
       77 GETUPVAL                         R14 4
       78 GETTABLEKS                       R13 R14 K4 ["ScopeType"]
       80 GETTABLEKS                       R12 R13 K16 ["ProjectShared"]
       82 JUMPIFNOTEQ                      R11 R12 ; [+7]
       84 LOADK                            R12 K13 ["Scopes"]
       85 LOADK                            R13 K17 ["ExperienceShared"]
       86 NAMECALL                         R10 R1 K15 ["getText"]
       88 CALL                             R10 3 1
       89 JUMP                             ; [+2]
       90 GETTABLEKS                       R10 R5 K18 ["Name"]
       92 GETUPVAL                         R11 7
       93 CALL                             R11 0 1
       94 GETTABLEKS                       R13 R5 K19 ["Id"]
       96 GETTABLE                         R12 R11 R13
       97 GETUPVAL                         R14 8
       98 GETTABLEKS                       R13 R14 K20 ["useMemo"]
      100 NEWCLOSURE                       R14 P0
      101 CAPTURE                          VAL R5
      102 NEWTABLE                         R15 0 1
      104 GETTABLEKS                       R16 R5 K21 ["Children"]
      106 SETLIST                          R15 R16 1 [1]
      108 CALL                             R13 2 1
      109 GETTABLEKS                       R16 R7 K23 ["Expansion"]
      111 GETTABLEKS                       R17 R5 K12 ["Uid"]
      113 GETTABLE                         R15 R16 R17
      114 ORK                              R14 R15 K22 [False]
      115 GETUPVAL                         R16 8
      116 GETTABLEKS                       R15 R16 K24 ["createElement"]
      118 GETUPVAL                         R17 9
      119 GETTABLEKS                       R16 R17 K25 ["View"]
      121 DUPTABLE                         R17 K31 [{"LayoutOrder", "Position", "onActivated", "onSecondaryActivated", "tag"}]
      122 GETTABLEKS                       R18 R0 K32 ["Index"]
      124 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      126 GETTABLEKS                       R18 R0 K27 ["Position"]
      128 SETTABLEKS                       R18 R17 K27 ["Position"]
      130 NEWCLOSURE                       R18 P1
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R5
      133 SETTABLEKS                       R18 R17 K28 ["onActivated"]
      135 NEWCLOSURE                       R18 P2
      136 CAPTURE                          UPVAL U10
      137 CAPTURE                          UPVAL U11
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R5
      142 SETTABLEKS                       R18 R17 K29 ["onSecondaryActivated"]
      144 NEWTABLE                         R18 2 0
      146 LOADB                            R19 1
      147 SETTABLEKS                       R19 R18 K33 ["size-full-600 radius-small padding-right-xsmall row align-y-center"]
      149 SETTABLEKS                       R9 R18 K34 ["bg-action-soft-emphasis"]
      151 SETTABLEKS                       R18 R17 K30 ["tag"]
      153 DUPTABLE                         R18 K37 [{"Contents", "IndicatorWrapper"}]
      154 GETUPVAL                         R20 8
      155 GETTABLEKS                       R19 R20 K24 ["createElement"]
      157 GETUPVAL                         R21 9
      158 GETTABLEKS                       R20 R21 K25 ["View"]
      160 DUPTABLE                         R21 K38 [{"tag"}]
      161 LOADK                            R22 K39 ["size-full row align-x-left align-y-center padding-x-xsmall"]
      162 SETTABLEKS                       R22 R21 K30 ["tag"]
      164 DUPTABLE                         R22 K43 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      165 GETUPVAL                         R24 8
      166 GETTABLEKS                       R23 R24 K24 ["createElement"]
      168 GETUPVAL                         R24 12
      169 DUPTABLE                         R25 K45 [{"LayoutOrder", "Depth"}]
      170 NAMECALL                         R26 R2 K46 ["getNextOrder"]
      172 CALL                             R26 1 1
      173 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      175 GETTABLEKS                       R26 R0 K44 ["Depth"]
      177 SETTABLEKS                       R26 R25 K44 ["Depth"]
      179 CALL                             R23 2 1
      180 SETTABLEKS                       R23 R22 K40 ["IndentGuide"]
      182 JUMPIFNOT                        R13 ; [+42]
      183 GETUPVAL                         R24 8
      184 GETTABLEKS                       R23 R24 K24 ["createElement"]
      186 GETUPVAL                         R25 9
      187 GETTABLEKS                       R24 R25 K47 ["Image"]
      189 DUPTABLE                         R25 K49 [{"LayoutOrder", "onActivated", "stateLayer", "tag"}]
      190 NAMECALL                         R26 R2 K46 ["getNextOrder"]
      192 CALL                             R26 1 1
      193 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      195 NEWCLOSURE                       R26 P3
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R5
      198 SETTABLEKS                       R26 R25 K28 ["onActivated"]
      200 DUPTABLE                         R26 K51 [{"affordance"}]
      201 GETUPVAL                         R30 9
      202 GETTABLEKS                       R29 R30 K52 ["Enums"]
      204 GETTABLEKS                       R28 R29 K53 ["StateLayerAffordance"]
      206 GETTABLEKS                       R27 R28 K54 ["None"]
      208 SETTABLEKS                       R27 R26 K50 ["affordance"]
      210 SETTABLEKS                       R26 R25 K48 ["stateLayer"]
      212 LOADK                            R27 K55 ["%* size-400 data-testid=scope-expand-icon"]
      213 JUMPIFNOT                        R14 ; [+2]
      214 LOADK                            R29 K56 ["icon-arrow-down"]
      215 JUMP                             ; [+1]
      216 LOADK                            R29 K57 ["icon-arrow-right"]
      217 NAMECALL                         R27 R27 K58 ["format"]
      219 CALL                             R27 2 1
      220 MOVE                             R26 R27
      221 SETTABLEKS                       R26 R25 K30 ["tag"]
      223 CALL                             R23 2 1
      224 JUMP                             ; [+52]
      225 GETUPVAL                         R24 8
      226 GETTABLEKS                       R23 R24 K24 ["createElement"]
      228 GETUPVAL                         R25 9
      229 GETTABLEKS                       R24 R25 K25 ["View"]
      231 DUPTABLE                         R25 K59 [{"LayoutOrder", "tag"}]
      232 NAMECALL                         R26 R2 K46 ["getNextOrder"]
      234 CALL                             R26 1 1
      235 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      237 LOADK                            R26 K60 ["size-400"]
      238 SETTABLEKS                       R26 R25 K30 ["tag"]
      240 NEWTABLE                         R26 0 1
      242 GETTABLEKS                       R28 R0 K61 ["IsLoading"]
      244 JUMPIFNOT                        R28 ; [+28]
      245 GETUPVAL                         R28 8
      246 GETTABLEKS                       R27 R28 K24 ["createElement"]
      248 GETUPVAL                         R29 9
      249 GETTABLEKS                       R28 R29 K62 ["Loading"]
      251 DUPTABLE                         R29 K65 [{"size", "AnchorPoint", "Position"}]
      252 GETUPVAL                         R33 9
      253 GETTABLEKS                       R32 R33 K52 ["Enums"]
      255 GETTABLEKS                       R31 R32 K66 ["IconSize"]
      257 GETTABLEKS                       R30 R31 K67 ["XSmall"]
      259 SETTABLEKS                       R30 R29 K63 ["size"]
      261 GETUPVAL                         R31 13
      262 GETTABLEKS                       R30 R31 K68 ["AMR_ANCHOR_CENTER"]
      264 SETTABLEKS                       R30 R29 K64 ["AnchorPoint"]
      266 GETUPVAL                         R31 13
      267 GETTABLEKS                       R30 R31 K69 ["AMR_POSITION_CENTER"]
      269 SETTABLEKS                       R30 R29 K27 ["Position"]
      271 CALL                             R27 2 1
      272 JUMP                             ; [+1]
      273 LOADNIL                          R27
      274 SETLIST                          R26 R27 1 [1]
      276 CALL                             R23 3 1
      277 SETTABLEKS                       R23 R22 K41 ["ExpandArrow"]
      279 GETUPVAL                         R24 8
      280 GETTABLEKS                       R23 R24 K24 ["createElement"]
      282 GETUPVAL                         R25 9
      283 GETTABLEKS                       R24 R25 K47 ["Image"]
      285 DUPTABLE                         R25 K59 [{"LayoutOrder", "tag"}]
      286 NAMECALL                         R26 R2 K46 ["getNextOrder"]
      288 CALL                             R26 1 1
      289 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      291 LOADK                            R27 K70 ["%* size-400"]
      292 MOVE                             R29 R6
      293 NAMECALL                         R27 R27 K58 ["format"]
      295 CALL                             R27 2 1
      296 MOVE                             R26 R27
      297 SETTABLEKS                       R26 R25 K30 ["tag"]
      299 CALL                             R23 2 1
      300 SETTABLEKS                       R23 R22 K42 ["Thumbnail"]
      302 GETUPVAL                         R24 8
      303 GETTABLEKS                       R23 R24 K24 ["createElement"]
      305 GETUPVAL                         R25 9
      306 GETTABLEKS                       R24 R25 K71 ["Text"]
      308 DUPTABLE                         R25 K72 [{"LayoutOrder", "Text", "tag"}]
      309 NAMECALL                         R26 R2 K46 ["getNextOrder"]
      311 CALL                             R26 1 1
      312 SETTABLEKS                       R26 R25 K26 ["LayoutOrder"]
      314 SETTABLEKS                       R10 R25 K71 ["Text"]
      316 LOADK                            R26 K73 ["size-0-0 text-truncate-end auto-xy padding-left-xsmall text-label-small"]
      317 SETTABLEKS                       R26 R25 K30 ["tag"]
      319 CALL                             R23 2 1
      320 SETTABLEKS                       R23 R22 K18 ["Name"]
      322 CALL                             R19 3 1
      323 SETTABLEKS                       R19 R18 K35 ["Contents"]
      325 JUMPIFNOT                        R12 ; [+27]
      326 GETUPVAL                         R20 8
      327 GETTABLEKS                       R19 R20 K24 ["createElement"]
      329 GETUPVAL                         R21 9
      330 GETTABLEKS                       R20 R21 K25 ["View"]
      332 DUPTABLE                         R21 K38 [{"tag"}]
      333 LOADK                            R22 K74 ["am-size-icon bg-action-subtle"]
      334 SETTABLEKS                       R22 R21 K30 ["tag"]
      336 NEWTABLE                         R22 0 1
      338 GETUPVAL                         R24 8
      339 GETTABLEKS                       R23 R24 K24 ["createElement"]
      341 GETUPVAL                         R25 9
      342 GETTABLEKS                       R24 R25 K47 ["Image"]
      344 DUPTABLE                         R25 K38 [{"tag"}]
      345 LOADK                            R26 K75 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      346 SETTABLEKS                       R26 R25 K30 ["tag"]
      348 CALL                             R23 2 -1
      349 SETLIST                          R22 R23 -1 [1]
      351 CALL                             R19 3 1
      352 JUMP                             ; [+1]
      353 LOADNIL                          R19
      354 SETTABLEKS                       R19 R18 K36 ["IndicatorWrapper"]
      356 CALL                             R15 3 -1
      357 RETURN                           R15 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R2 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R3 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+28]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["createElement"]
       14 GETUPVAL                         R2 2
       15 DUPTABLE                         R3 K8 [{"Index", "Id", "Position"}]
       16 GETTABLEKS                       R4 R0 K5 ["Index"]
       18 SETTABLEKS                       R4 R3 K5 ["Index"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K9 ["ExplorerHeader"]
       23 GETTABLEKS                       R4 R5 K10 ["fromRawValue"]
       25 GETTABLEKS                       R6 R0 K0 ["Item"]
       27 GETTABLEKS                       R5 R6 K6 ["Id"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K6 ["Id"]
       32 GETTABLEKS                       R4 R0 K7 ["Position"]
       34 SETTABLEKS                       R4 R3 K7 ["Position"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R1 R2 K4 ["createElement"]
       41 GETUPVAL                         R2 3
       42 DUPTABLE                         R3 K13 [{"Index", "Item", "Position", "Depth", "IsLoading"}]
       43 GETTABLEKS                       R4 R0 K5 ["Index"]
       45 SETTABLEKS                       R4 R3 K5 ["Index"]
       47 GETTABLEKS                       R4 R0 K0 ["Item"]
       49 SETTABLEKS                       R4 R3 K0 ["Item"]
       51 GETTABLEKS                       R4 R0 K7 ["Position"]
       53 SETTABLEKS                       R4 R3 K7 ["Position"]
       55 GETTABLEKS                       R4 R0 K11 ["Depth"]
       57 SETTABLEKS                       R4 R3 K11 ["Depth"]
       59 GETTABLEKS                       R4 R0 K12 ["IsLoading"]
       61 SETTABLEKS                       R4 R3 K12 ["IsLoading"]
       63 CALL                             R1 2 -1
       64 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K10 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Resources"]
       45 GETTABLEKS                       R8 R9 K15 ["StyleConstants"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R11 R0 K10 ["Src"]
       52 GETTABLEKS                       R10 R11 K16 ["Util"]
       54 GETTABLEKS                       R9 R10 K17 ["renderContextMenu"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETIMPORT                        R11 K1 [script]
       61 GETTABLEKS                       R10 R11 K18 ["IndentGuide"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R11 R3 K16 ["Util"]
       66 GETTABLEKS                       R10 R11 K19 ["LayoutOrderIterator"]
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R14 R0 K10 ["Src"]
       72 GETTABLEKS                       R13 R14 K20 ["Controllers"]
       74 GETTABLEKS                       R12 R13 K21 ["ExplorerController"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R15 R0 K10 ["Src"]
       81 GETTABLEKS                       R14 R15 K20 ["Controllers"]
       83 GETTABLEKS                       R13 R14 K22 ["PluginController"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R16 R0 K10 ["Src"]
       90 GETTABLEKS                       R15 R16 K23 ["Hooks"]
       92 GETTABLEKS                       R14 R15 K24 ["useCurrentScope"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R17 R0 K10 ["Src"]
       99 GETTABLEKS                       R16 R17 K23 ["Hooks"]
      101 GETTABLEKS                       R15 R16 K25 ["useExplorerInfo"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K5 [require]
      106 GETTABLEKS                       R18 R0 K10 ["Src"]
      108 GETTABLEKS                       R17 R18 K23 ["Hooks"]
      110 GETTABLEKS                       R16 R17 K26 ["useScopeNotifications"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R19 R0 K10 ["Src"]
      117 GETTABLEKS                       R18 R19 K27 ["Flags"]
      119 GETTABLEKS                       R17 R18 K28 ["getFFlagAmrCleanupContextAndInput"]
      121 CALL                             R16 1 1
      122 DUPCLOSURE                       R17 K29 [PROTO_0]
      123 CAPTURE                          VAL R4
      124 DUPCLOSURE                       R18 K30 [PROTO_1]
      125 CAPTURE                          VAL R4
      126 DUPCLOSURE                       R19 K31 [PROTO_2]
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R4
      131 DUPCLOSURE                       R20 K32 [PROTO_7]
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R7
      146 DUPCLOSURE                       R21 K33 [PROTO_8]
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R20
      151 RETURN                           R21 1
