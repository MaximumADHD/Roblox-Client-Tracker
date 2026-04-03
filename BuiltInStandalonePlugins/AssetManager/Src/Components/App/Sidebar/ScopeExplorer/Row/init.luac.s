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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
       10 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
       12 GETTABLE                         R0 R1 R2
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 GETUPVAL                         R3 6
       16 CALL                             R0 3 0
       17 RETURN                           R0 0

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
       78 GETUPVAL                         R13 9
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R15 R16 K16 ["MenuContext"]
       82 GETTABLEKS                       R14 R15 K17 ["Sidebar"]
       84 DUPTABLE                         R15 K19 [{"Scope"}]
       85 SETTABLEKS                       R5 R15 K18 ["Scope"]
       87 CALL                             R13 2 1
       88 GETUPVAL                         R15 10
       89 GETTABLEKS                       R14 R15 K20 ["useMemo"]
       91 NEWCLOSURE                       R15 P0
       92 CAPTURE                          VAL R5
       93 NEWTABLE                         R16 0 1
       95 GETTABLEKS                       R17 R5 K21 ["Children"]
       97 SETLIST                          R16 R17 1 [1]
       99 CALL                             R14 2 1
      100 GETTABLEKS                       R17 R7 K23 ["Expansion"]
      102 GETTABLEKS                       R18 R5 K14 ["Uid"]
      104 GETTABLE                         R16 R17 R18
      105 ORK                              R15 R16 K22 [False]
      106 GETUPVAL                         R17 10
      107 GETTABLEKS                       R16 R17 K24 ["createElement"]
      109 GETUPVAL                         R18 11
      110 GETTABLEKS                       R17 R18 K25 ["View"]
      112 DUPTABLE                         R18 K31 [{"LayoutOrder", "Position", "onActivated", "onSecondaryActivated", "tag"}]
      113 GETTABLEKS                       R19 R0 K32 ["Index"]
      115 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      117 GETTABLEKS                       R19 R0 K27 ["Position"]
      119 SETTABLEKS                       R19 R18 K27 ["Position"]
      121 NEWCLOSURE                       R19 P1
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 SETTABLEKS                       R19 R18 K28 ["onActivated"]
      126 NEWCLOSURE                       R19 P2
      127 CAPTURE                          UPVAL U12
      128 CAPTURE                          VAL R13
      129 CAPTURE                          UPVAL U13
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R19 R18 K29 ["onSecondaryActivated"]
      136 NEWTABLE                         R19 2 0
      138 LOADB                            R20 1
      139 SETTABLEKS                       R20 R19 K33 ["size-full-600 radius-small padding-right-xsmall row align-y-center"]
      141 SETTABLEKS                       R9 R19 K34 ["bg-action-soft-emphasis"]
      143 SETTABLEKS                       R19 R18 K30 ["tag"]
      145 DUPTABLE                         R19 K37 [{"Contents", "IndicatorWrapper"}]
      146 GETUPVAL                         R21 10
      147 GETTABLEKS                       R20 R21 K24 ["createElement"]
      149 GETUPVAL                         R22 11
      150 GETTABLEKS                       R21 R22 K25 ["View"]
      152 DUPTABLE                         R22 K38 [{"tag"}]
      153 LOADK                            R23 K39 ["size-full row align-x-left align-y-center padding-x-xsmall"]
      154 SETTABLEKS                       R23 R22 K30 ["tag"]
      156 DUPTABLE                         R23 K44 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      157 GETUPVAL                         R25 10
      158 GETTABLEKS                       R24 R25 K24 ["createElement"]
      160 GETUPVAL                         R25 14
      161 DUPTABLE                         R26 K46 [{"LayoutOrder", "Depth"}]
      162 NAMECALL                         R27 R2 K47 ["getNextOrder"]
      164 CALL                             R27 1 1
      165 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      167 GETTABLEKS                       R27 R0 K45 ["Depth"]
      169 SETTABLEKS                       R27 R26 K45 ["Depth"]
      171 CALL                             R24 2 1
      172 SETTABLEKS                       R24 R23 K40 ["IndentGuide"]
      174 JUMPIFNOT                        R14 ; [+42]
      175 GETUPVAL                         R25 10
      176 GETTABLEKS                       R24 R25 K24 ["createElement"]
      178 GETUPVAL                         R26 11
      179 GETTABLEKS                       R25 R26 K48 ["Image"]
      181 DUPTABLE                         R26 K50 [{"LayoutOrder", "onActivated", "stateLayer", "tag"}]
      182 NAMECALL                         R27 R2 K47 ["getNextOrder"]
      184 CALL                             R27 1 1
      185 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      187 NEWCLOSURE                       R27 P3
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R5
      190 SETTABLEKS                       R27 R26 K28 ["onActivated"]
      192 DUPTABLE                         R27 K52 [{"affordance"}]
      193 GETUPVAL                         R31 11
      194 GETTABLEKS                       R30 R31 K53 ["Enums"]
      196 GETTABLEKS                       R29 R30 K54 ["StateLayerAffordance"]
      198 GETTABLEKS                       R28 R29 K55 ["None"]
      200 SETTABLEKS                       R28 R27 K51 ["affordance"]
      202 SETTABLEKS                       R27 R26 K49 ["stateLayer"]
      204 LOADK                            R28 K56 ["%* size-400 data-testid=scope-expand-icon"]
      205 JUMPIFNOT                        R15 ; [+2]
      206 LOADK                            R30 K57 ["icon-arrow-down"]
      207 JUMP                             ; [+1]
      208 LOADK                            R30 K58 ["icon-arrow-right"]
      209 NAMECALL                         R28 R28 K59 ["format"]
      211 CALL                             R28 2 1
      212 MOVE                             R27 R28
      213 SETTABLEKS                       R27 R26 K30 ["tag"]
      215 CALL                             R24 2 1
      216 JUMP                             ; [+52]
      217 GETUPVAL                         R25 10
      218 GETTABLEKS                       R24 R25 K24 ["createElement"]
      220 GETUPVAL                         R26 11
      221 GETTABLEKS                       R25 R26 K25 ["View"]
      223 DUPTABLE                         R26 K60 [{"LayoutOrder", "tag"}]
      224 NAMECALL                         R27 R2 K47 ["getNextOrder"]
      226 CALL                             R27 1 1
      227 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      229 LOADK                            R27 K61 ["size-400"]
      230 SETTABLEKS                       R27 R26 K30 ["tag"]
      232 NEWTABLE                         R27 0 1
      234 GETTABLEKS                       R29 R0 K62 ["IsLoading"]
      236 JUMPIFNOT                        R29 ; [+28]
      237 GETUPVAL                         R29 10
      238 GETTABLEKS                       R28 R29 K24 ["createElement"]
      240 GETUPVAL                         R30 11
      241 GETTABLEKS                       R29 R30 K63 ["Loading"]
      243 DUPTABLE                         R30 K66 [{"size", "AnchorPoint", "Position"}]
      244 GETUPVAL                         R34 11
      245 GETTABLEKS                       R33 R34 K53 ["Enums"]
      247 GETTABLEKS                       R32 R33 K67 ["IconSize"]
      249 GETTABLEKS                       R31 R32 K68 ["XSmall"]
      251 SETTABLEKS                       R31 R30 K64 ["size"]
      253 GETUPVAL                         R32 15
      254 GETTABLEKS                       R31 R32 K69 ["AMR_ANCHOR_CENTER"]
      256 SETTABLEKS                       R31 R30 K65 ["AnchorPoint"]
      258 GETUPVAL                         R32 15
      259 GETTABLEKS                       R31 R32 K70 ["AMR_POSITION_CENTER"]
      261 SETTABLEKS                       R31 R30 K27 ["Position"]
      263 CALL                             R28 2 1
      264 JUMP                             ; [+1]
      265 LOADNIL                          R28
      266 SETLIST                          R27 R28 1 [1]
      268 CALL                             R24 3 1
      269 SETTABLEKS                       R24 R23 K41 ["ExpandArrow"]
      271 GETUPVAL                         R25 16
      272 CALL                             R25 0 1
      273 JUMPIFNOT                        R25 ; [+50]
      274 GETTABLEKS                       R25 R5 K3 ["Type"]
      276 GETUPVAL                         R28 4
      277 GETTABLEKS                       R27 R28 K4 ["ScopeType"]
      279 GETTABLEKS                       R26 R27 K71 ["RecentUploads"]
      281 JUMPIFNOTEQ                      R25 R26 ; [+42]
      283 GETUPVAL                         R25 10
      284 GETTABLEKS                       R24 R25 K24 ["createElement"]
      286 GETUPVAL                         R26 11
      287 GETTABLEKS                       R25 R26 K72 ["Icon"]
      289 DUPTABLE                         R26 K75 [{"LayoutOrder", "name", "variant", "size"}]
      290 NAMECALL                         R27 R2 K47 ["getNextOrder"]
      292 CALL                             R27 1 1
      293 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      295 GETUPVAL                         R30 11
      296 GETTABLEKS                       R29 R30 K53 ["Enums"]
      298 GETTABLEKS                       R28 R29 K76 ["IconName"]
      300 GETTABLEKS                       R27 R28 K77 ["ClockSpinReverse"]
      302 SETTABLEKS                       R27 R26 K73 ["name"]
      304 GETUPVAL                         R30 11
      305 GETTABLEKS                       R29 R30 K53 ["Enums"]
      307 GETTABLEKS                       R28 R29 K78 ["IconVariant"]
      309 GETTABLEKS                       R27 R28 K79 ["Filled"]
      311 SETTABLEKS                       R27 R26 K74 ["variant"]
      313 GETUPVAL                         R30 11
      314 GETTABLEKS                       R29 R30 K53 ["Enums"]
      316 GETTABLEKS                       R28 R29 K80 ["InputSize"]
      318 GETTABLEKS                       R27 R28 K81 ["Small"]
      320 SETTABLEKS                       R27 R26 K64 ["size"]
      322 CALL                             R24 2 1
      323 JUMP                             ; [+21]
      324 GETUPVAL                         R25 10
      325 GETTABLEKS                       R24 R25 K24 ["createElement"]
      327 GETUPVAL                         R26 11
      328 GETTABLEKS                       R25 R26 K48 ["Image"]
      330 DUPTABLE                         R26 K60 [{"LayoutOrder", "tag"}]
      331 NAMECALL                         R27 R2 K47 ["getNextOrder"]
      333 CALL                             R27 1 1
      334 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      336 LOADK                            R28 K82 ["%* size-400"]
      337 MOVE                             R30 R6
      338 NAMECALL                         R28 R28 K59 ["format"]
      340 CALL                             R28 2 1
      341 MOVE                             R27 R28
      342 SETTABLEKS                       R27 R26 K30 ["tag"]
      344 CALL                             R24 2 1
      345 SETTABLEKS                       R24 R23 K42 ["Thumbnail"]
      347 GETUPVAL                         R25 10
      348 GETTABLEKS                       R24 R25 K24 ["createElement"]
      350 GETUPVAL                         R26 11
      351 GETTABLEKS                       R25 R26 K83 ["Text"]
      353 DUPTABLE                         R26 K84 [{"LayoutOrder", "Text", "tag"}]
      354 NAMECALL                         R27 R2 K47 ["getNextOrder"]
      356 CALL                             R27 1 1
      357 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      359 SETTABLEKS                       R10 R26 K83 ["Text"]
      361 LOADK                            R27 K85 ["size-0-0 text-truncate-end auto-xy padding-left-xsmall text-label-small"]
      362 SETTABLEKS                       R27 R26 K30 ["tag"]
      364 CALL                             R24 2 1
      365 SETTABLEKS                       R24 R23 K43 ["Name"]
      367 CALL                             R20 3 1
      368 SETTABLEKS                       R20 R19 K35 ["Contents"]
      370 JUMPIFNOT                        R12 ; [+27]
      371 GETUPVAL                         R21 10
      372 GETTABLEKS                       R20 R21 K24 ["createElement"]
      374 GETUPVAL                         R22 11
      375 GETTABLEKS                       R21 R22 K25 ["View"]
      377 DUPTABLE                         R22 K38 [{"tag"}]
      378 LOADK                            R23 K86 ["am-size-icon bg-action-subtle"]
      379 SETTABLEKS                       R23 R22 K30 ["tag"]
      381 NEWTABLE                         R23 0 1
      383 GETUPVAL                         R25 10
      384 GETTABLEKS                       R24 R25 K24 ["createElement"]
      386 GETUPVAL                         R26 11
      387 GETTABLEKS                       R25 R26 K48 ["Image"]
      389 DUPTABLE                         R26 K38 [{"tag"}]
      390 LOADK                            R27 K87 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      391 SETTABLEKS                       R27 R26 K30 ["tag"]
      393 CALL                             R24 2 -1
      394 SETLIST                          R23 R24 -1 [1]
      396 CALL                             R20 3 1
      397 JUMP                             ; [+1]
      398 LOADNIL                          R20
      399 SETTABLEKS                       R20 R19 K36 ["IndicatorWrapper"]
      401 CALL                             R16 3 -1
      402 RETURN                           R16 -1

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
      126 GETTABLEKS                       R19 R20 K24 ["Hooks"]
      128 GETTABLEKS                       R18 R19 K28 ["useContextMenu"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K5 [require]
      133 GETTABLEKS                       R21 R0 K10 ["Src"]
      135 GETTABLEKS                       R20 R21 K29 ["Flags"]
      137 GETTABLEKS                       R19 R20 K30 ["getFFlagAmrRecents"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K5 [require]
      142 GETTABLEKS                       R22 R0 K10 ["Src"]
      144 GETTABLEKS                       R21 R22 K29 ["Flags"]
      146 GETTABLEKS                       R20 R21 K31 ["getFFlagAmrContextMenuRefactor"]
      148 CALL                             R19 1 1
      149 DUPCLOSURE                       R20 K32 [PROTO_0]
      150 CAPTURE                          VAL R4
      151 DUPCLOSURE                       R21 K33 [PROTO_1]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R1
      155 DUPCLOSURE                       R22 K34 [PROTO_6]
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R18
      173 DUPCLOSURE                       R23 K35 [PROTO_7]
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R22
      178 RETURN                           R23 1
