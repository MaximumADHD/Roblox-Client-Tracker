PROTO_0:
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
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["ScopeType"]
       30 GETTABLEKS                       R1 R2 K7 ["Folder"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K8 ["icon-shared-folder"]
       35 RETURN                           R1 1
       36 LOADK                            R1 K9 ["icon-folder"]
       37 RETURN                           R1 1

PROTO_1:
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
       19 LOADK                            R7 K8 ["Sidebar"]
       20 GETTABLEKS                       R8 R0 K2 ["Text"]
       22 NAMECALL                         R5 R1 K9 ["getText"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K2 ["Text"]
       27 LOADK                            R5 K10 ["size-full-600 text-truncate-split text-title-small text-align-x-left padding-x-xsmall"]
       28 SETTABLEKS                       R5 R4 K5 ["tag"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setCurrentScope"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        6 GETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleExpansion"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
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
       28 JUMP                             ; [+28]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       32 GETTABLEKS                       R8 R9 K7 ["User"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 LOADK                            R6 K8 ["icon-user-folder"]
       37 JUMP                             ; [+19]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       41 GETTABLEKS                       R8 R9 K9 ["ProjectPlaces"]
       43 JUMPIFNOTEQ                      R7 R8 ; [+3]
       45 LOADK                            R6 K10 ["icon-places-folder"]
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K4 ["ScopeType"]
       50 GETTABLEKS                       R8 R9 K11 ["Folder"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+3]
       54 LOADK                            R6 K12 ["icon-shared-folder"]
       55 JUMP                             ; [+1]
       56 LOADK                            R6 K13 ["icon-folder"]
       57 GETUPVAL                         R7 5
       58 CALL                             R7 0 1
       59 GETUPVAL                         R8 6
       60 CALL                             R8 0 1
       61 GETTABLEKS                       R10 R8 K14 ["Uid"]
       63 GETTABLEKS                       R11 R5 K14 ["Uid"]
       65 JUMPIFEQ                         R10 R11 ; [+2]
       67 LOADB                            R9 0 +1
       68 LOADB                            R9 1
       69 GETUPVAL                         R10 7
       70 MOVE                             R11 R5
       71 MOVE                             R12 R1
       72 CALL                             R10 2 1
       73 GETUPVAL                         R11 8
       74 CALL                             R11 0 1
       75 GETTABLEKS                       R13 R5 K15 ["Id"]
       77 GETTABLE                         R12 R11 R13
       78 GETUPVAL                         R14 9
       79 GETTABLEKS                       R13 R14 K16 ["useMemo"]
       81 NEWCLOSURE                       R14 P0
       82 CAPTURE                          VAL R5
       83 NEWTABLE                         R15 0 1
       85 GETTABLEKS                       R16 R5 K17 ["Children"]
       87 SETLIST                          R15 R16 1 [1]
       89 CALL                             R13 2 1
       90 GETTABLEKS                       R16 R7 K19 ["Expansion"]
       92 GETTABLEKS                       R17 R5 K14 ["Uid"]
       94 GETTABLE                         R15 R16 R17
       95 ORK                              R14 R15 K18 [False]
       96 GETUPVAL                         R16 9
       97 GETTABLEKS                       R15 R16 K20 ["createElement"]
       99 GETUPVAL                         R17 10
      100 GETTABLEKS                       R16 R17 K21 ["View"]
      102 DUPTABLE                         R17 K27 [{"LayoutOrder", "Position", "onActivated", "onSecondaryActivated", "tag"}]
      103 GETTABLEKS                       R18 R0 K28 ["Index"]
      105 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      107 GETTABLEKS                       R18 R0 K23 ["Position"]
      109 SETTABLEKS                       R18 R17 K23 ["Position"]
      111 NEWCLOSURE                       R18 P1
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R5
      114 SETTABLEKS                       R18 R17 K24 ["onActivated"]
      116 NEWCLOSURE                       R18 P2
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R18 R17 K25 ["onSecondaryActivated"]
      124 NEWTABLE                         R18 2 0
      126 LOADB                            R19 1
      127 SETTABLEKS                       R19 R18 K29 ["size-full-600 radius-small padding-right-xsmall row align-y-center"]
      129 SETTABLEKS                       R9 R18 K30 ["bg-action-soft-emphasis"]
      131 SETTABLEKS                       R18 R17 K26 ["tag"]
      133 DUPTABLE                         R18 K33 [{"Contents", "IndicatorWrapper"}]
      134 GETUPVAL                         R20 9
      135 GETTABLEKS                       R19 R20 K20 ["createElement"]
      137 GETUPVAL                         R21 10
      138 GETTABLEKS                       R20 R21 K21 ["View"]
      140 DUPTABLE                         R21 K34 [{"tag"}]
      141 LOADK                            R22 K35 ["size-full row align-x-left align-y-center padding-x-xsmall"]
      142 SETTABLEKS                       R22 R21 K26 ["tag"]
      144 DUPTABLE                         R22 K40 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      145 GETUPVAL                         R24 9
      146 GETTABLEKS                       R23 R24 K20 ["createElement"]
      148 GETUPVAL                         R24 12
      149 DUPTABLE                         R25 K42 [{"LayoutOrder", "Depth"}]
      150 NAMECALL                         R26 R2 K43 ["getNextOrder"]
      152 CALL                             R26 1 1
      153 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      155 GETTABLEKS                       R26 R0 K41 ["Depth"]
      157 SETTABLEKS                       R26 R25 K41 ["Depth"]
      159 CALL                             R23 2 1
      160 SETTABLEKS                       R23 R22 K36 ["IndentGuide"]
      162 JUMPIFNOT                        R13 ; [+42]
      163 GETUPVAL                         R24 9
      164 GETTABLEKS                       R23 R24 K20 ["createElement"]
      166 GETUPVAL                         R25 10
      167 GETTABLEKS                       R24 R25 K44 ["Image"]
      169 DUPTABLE                         R25 K46 [{"LayoutOrder", "onActivated", "stateLayer", "tag"}]
      170 NAMECALL                         R26 R2 K43 ["getNextOrder"]
      172 CALL                             R26 1 1
      173 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      175 NEWCLOSURE                       R26 P3
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R26 R25 K24 ["onActivated"]
      180 DUPTABLE                         R26 K48 [{"affordance"}]
      181 GETUPVAL                         R30 10
      182 GETTABLEKS                       R29 R30 K49 ["Enums"]
      184 GETTABLEKS                       R28 R29 K50 ["StateLayerAffordance"]
      186 GETTABLEKS                       R27 R28 K51 ["None"]
      188 SETTABLEKS                       R27 R26 K47 ["affordance"]
      190 SETTABLEKS                       R26 R25 K45 ["stateLayer"]
      192 LOADK                            R27 K52 ["%* size-400 data-testid=scope-expand-icon"]
      193 JUMPIFNOT                        R14 ; [+2]
      194 LOADK                            R29 K53 ["icon-arrow-down"]
      195 JUMP                             ; [+1]
      196 LOADK                            R29 K54 ["icon-arrow-right"]
      197 NAMECALL                         R27 R27 K55 ["format"]
      199 CALL                             R27 2 1
      200 MOVE                             R26 R27
      201 SETTABLEKS                       R26 R25 K26 ["tag"]
      203 CALL                             R23 2 1
      204 JUMP                             ; [+52]
      205 GETUPVAL                         R24 9
      206 GETTABLEKS                       R23 R24 K20 ["createElement"]
      208 GETUPVAL                         R25 10
      209 GETTABLEKS                       R24 R25 K21 ["View"]
      211 DUPTABLE                         R25 K56 [{"LayoutOrder", "tag"}]
      212 NAMECALL                         R26 R2 K43 ["getNextOrder"]
      214 CALL                             R26 1 1
      215 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      217 LOADK                            R26 K57 ["size-400"]
      218 SETTABLEKS                       R26 R25 K26 ["tag"]
      220 NEWTABLE                         R26 0 1
      222 GETTABLEKS                       R28 R0 K58 ["IsLoading"]
      224 JUMPIFNOT                        R28 ; [+28]
      225 GETUPVAL                         R28 9
      226 GETTABLEKS                       R27 R28 K20 ["createElement"]
      228 GETUPVAL                         R29 10
      229 GETTABLEKS                       R28 R29 K59 ["Loading"]
      231 DUPTABLE                         R29 K62 [{"size", "AnchorPoint", "Position"}]
      232 GETUPVAL                         R33 10
      233 GETTABLEKS                       R32 R33 K49 ["Enums"]
      235 GETTABLEKS                       R31 R32 K63 ["IconSize"]
      237 GETTABLEKS                       R30 R31 K64 ["XSmall"]
      239 SETTABLEKS                       R30 R29 K60 ["size"]
      241 GETUPVAL                         R31 13
      242 GETTABLEKS                       R30 R31 K65 ["AMR_ANCHOR_CENTER"]
      244 SETTABLEKS                       R30 R29 K61 ["AnchorPoint"]
      246 GETUPVAL                         R31 13
      247 GETTABLEKS                       R30 R31 K66 ["AMR_POSITION_CENTER"]
      249 SETTABLEKS                       R30 R29 K23 ["Position"]
      251 CALL                             R27 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R27
      254 SETLIST                          R26 R27 1 [1]
      256 CALL                             R23 3 1
      257 SETTABLEKS                       R23 R22 K37 ["ExpandArrow"]
      259 GETUPVAL                         R24 14
      260 CALL                             R24 0 1
      261 JUMPIFNOT                        R24 ; [+50]
      262 GETTABLEKS                       R24 R5 K3 ["Type"]
      264 GETUPVAL                         R27 4
      265 GETTABLEKS                       R26 R27 K4 ["ScopeType"]
      267 GETTABLEKS                       R25 R26 K67 ["RecentUploads"]
      269 JUMPIFNOTEQ                      R24 R25 ; [+42]
      271 GETUPVAL                         R24 9
      272 GETTABLEKS                       R23 R24 K20 ["createElement"]
      274 GETUPVAL                         R25 10
      275 GETTABLEKS                       R24 R25 K68 ["Icon"]
      277 DUPTABLE                         R25 K71 [{"LayoutOrder", "name", "variant", "size"}]
      278 NAMECALL                         R26 R2 K43 ["getNextOrder"]
      280 CALL                             R26 1 1
      281 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      283 GETUPVAL                         R29 10
      284 GETTABLEKS                       R28 R29 K49 ["Enums"]
      286 GETTABLEKS                       R27 R28 K72 ["IconName"]
      288 GETTABLEKS                       R26 R27 K73 ["ClockSpinReverse"]
      290 SETTABLEKS                       R26 R25 K69 ["name"]
      292 GETUPVAL                         R29 10
      293 GETTABLEKS                       R28 R29 K49 ["Enums"]
      295 GETTABLEKS                       R27 R28 K74 ["IconVariant"]
      297 GETTABLEKS                       R26 R27 K75 ["Filled"]
      299 SETTABLEKS                       R26 R25 K70 ["variant"]
      301 GETUPVAL                         R29 10
      302 GETTABLEKS                       R28 R29 K49 ["Enums"]
      304 GETTABLEKS                       R27 R28 K76 ["InputSize"]
      306 GETTABLEKS                       R26 R27 K77 ["Small"]
      308 SETTABLEKS                       R26 R25 K60 ["size"]
      310 CALL                             R23 2 1
      311 JUMP                             ; [+21]
      312 GETUPVAL                         R24 9
      313 GETTABLEKS                       R23 R24 K20 ["createElement"]
      315 GETUPVAL                         R25 10
      316 GETTABLEKS                       R24 R25 K44 ["Image"]
      318 DUPTABLE                         R25 K56 [{"LayoutOrder", "tag"}]
      319 NAMECALL                         R26 R2 K43 ["getNextOrder"]
      321 CALL                             R26 1 1
      322 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      324 LOADK                            R27 K78 ["%* size-400"]
      325 MOVE                             R29 R6
      326 NAMECALL                         R27 R27 K55 ["format"]
      328 CALL                             R27 2 1
      329 MOVE                             R26 R27
      330 SETTABLEKS                       R26 R25 K26 ["tag"]
      332 CALL                             R23 2 1
      333 SETTABLEKS                       R23 R22 K38 ["Thumbnail"]
      335 GETUPVAL                         R24 9
      336 GETTABLEKS                       R23 R24 K20 ["createElement"]
      338 GETUPVAL                         R25 10
      339 GETTABLEKS                       R24 R25 K79 ["Text"]
      341 DUPTABLE                         R25 K80 [{"LayoutOrder", "Text", "tag"}]
      342 NAMECALL                         R26 R2 K43 ["getNextOrder"]
      344 CALL                             R26 1 1
      345 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      347 SETTABLEKS                       R10 R25 K79 ["Text"]
      349 LOADK                            R26 K81 ["size-0-0 text-truncate-end auto-xy padding-left-xsmall text-label-small"]
      350 SETTABLEKS                       R26 R25 K26 ["tag"]
      352 CALL                             R23 2 1
      353 SETTABLEKS                       R23 R22 K39 ["Name"]
      355 CALL                             R19 3 1
      356 SETTABLEKS                       R19 R18 K31 ["Contents"]
      358 JUMPIFNOT                        R12 ; [+27]
      359 GETUPVAL                         R20 9
      360 GETTABLEKS                       R19 R20 K20 ["createElement"]
      362 GETUPVAL                         R21 10
      363 GETTABLEKS                       R20 R21 K21 ["View"]
      365 DUPTABLE                         R21 K34 [{"tag"}]
      366 LOADK                            R22 K82 ["am-size-icon bg-action-subtle"]
      367 SETTABLEKS                       R22 R21 K26 ["tag"]
      369 NEWTABLE                         R22 0 1
      371 GETUPVAL                         R24 9
      372 GETTABLEKS                       R23 R24 K20 ["createElement"]
      374 GETUPVAL                         R25 10
      375 GETTABLEKS                       R24 R25 K44 ["Image"]
      377 DUPTABLE                         R25 K34 [{"tag"}]
      378 LOADK                            R26 K83 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      379 SETTABLEKS                       R26 R25 K26 ["tag"]
      381 CALL                             R23 2 -1
      382 SETLIST                          R22 R23 -1 [1]
      384 CALL                             R19 3 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R19
      387 SETTABLEKS                       R19 R18 K32 ["IndicatorWrapper"]
      389 CALL                             R15 3 -1
      390 RETURN                           R15 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R2 K1 ["Type"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R3 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+41]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["SidebarHeader"]
       14 GETTABLEKS                       R5 R0 K0 ["Item"]
       16 GETTABLEKS                       R4 R5 K5 ["Name"]
       18 GETTABLE                         R2 R3 R4
       19 LOADK                            R4 K6 ["Invalid header name: "]
       20 GETTABLEKS                       R6 R0 K0 ["Item"]
       22 GETTABLEKS                       R5 R6 K5 ["Name"]
       24 CONCAT                           R3 R4 R5
       25 FASTCALL2                        ASSERT R2 R3 ; [+3]
       27 GETIMPORT                        R1 K8 [assert]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K9 ["createElement"]
       33 GETUPVAL                         R2 2
       34 DUPTABLE                         R3 K13 [{"Index", "Text", "Position"}]
       35 GETTABLEKS                       R4 R0 K10 ["Index"]
       37 SETTABLEKS                       R4 R3 K10 ["Index"]
       39 GETTABLEKS                       R5 R0 K0 ["Item"]
       41 GETTABLEKS                       R4 R5 K5 ["Name"]
       43 SETTABLEKS                       R4 R3 K11 ["Text"]
       45 GETTABLEKS                       R4 R0 K12 ["Position"]
       47 SETTABLEKS                       R4 R3 K12 ["Position"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R1 R2 K9 ["createElement"]
       54 GETUPVAL                         R2 3
       55 DUPTABLE                         R3 K16 [{"Index", "Item", "Position", "Depth", "IsLoading"}]
       56 GETTABLEKS                       R4 R0 K10 ["Index"]
       58 SETTABLEKS                       R4 R3 K10 ["Index"]
       60 GETTABLEKS                       R4 R0 K0 ["Item"]
       62 SETTABLEKS                       R4 R3 K0 ["Item"]
       64 GETTABLEKS                       R4 R0 K12 ["Position"]
       66 SETTABLEKS                       R4 R3 K12 ["Position"]
       68 GETTABLEKS                       R4 R0 K14 ["Depth"]
       70 SETTABLEKS                       R4 R3 K14 ["Depth"]
       72 GETTABLEKS                       R4 R0 K15 ["IsLoading"]
       74 SETTABLEKS                       R4 R3 K15 ["IsLoading"]
       76 CALL                             R1 2 -1
       77 RETURN                           R1 -1

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
       59 GETTABLEKS                       R12 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R12 K16 ["Util"]
       63 GETTABLEKS                       R10 R11 K18 ["getLocalizedScopeName"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R11 R12 K19 ["IndentGuide"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R12 R3 K16 ["Util"]
       75 GETTABLEKS                       R11 R12 K20 ["LayoutOrderIterator"]
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R15 R0 K10 ["Src"]
       81 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       83 GETTABLEKS                       R13 R14 K22 ["ExplorerController"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R16 R0 K10 ["Src"]
       90 GETTABLEKS                       R15 R16 K21 ["Controllers"]
       92 GETTABLEKS                       R14 R15 K23 ["PluginController"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R17 R0 K10 ["Src"]
       99 GETTABLEKS                       R16 R17 K24 ["Hooks"]
      101 GETTABLEKS                       R15 R16 K25 ["useCurrentScope"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K5 [require]
      106 GETTABLEKS                       R18 R0 K10 ["Src"]
      108 GETTABLEKS                       R17 R18 K24 ["Hooks"]
      110 GETTABLEKS                       R16 R17 K26 ["useExplorerInfo"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R19 R0 K10 ["Src"]
      117 GETTABLEKS                       R18 R19 K24 ["Hooks"]
      119 GETTABLEKS                       R17 R18 K27 ["useScopeNotifications"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K5 [require]
      124 GETTABLEKS                       R20 R0 K10 ["Src"]
      126 GETTABLEKS                       R19 R20 K28 ["Flags"]
      128 GETTABLEKS                       R18 R19 K29 ["getFFlagAmrRecents"]
      130 CALL                             R17 1 1
      131 DUPCLOSURE                       R18 K30 [PROTO_0]
      132 CAPTURE                          VAL R4
      133 DUPCLOSURE                       R19 K31 [PROTO_1]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R1
      137 DUPCLOSURE                       R20 K32 [PROTO_6]
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R17
      153 DUPCLOSURE                       R21 K33 [PROTO_7]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 RETURN                           R21 1
