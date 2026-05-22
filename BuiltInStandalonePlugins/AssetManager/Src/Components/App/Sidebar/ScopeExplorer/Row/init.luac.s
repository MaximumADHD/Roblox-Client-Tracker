PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R1 K1 ["Group"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["icon-group-folder"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R1 K3 ["User"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["icon-user-folder"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R1 K5 ["ProjectPlaces"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["icon-places-folder"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       30 GETTABLEKS                       R1 R1 K7 ["Folder"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K8 ["icon-folder"]
       35 RETURN                           R1 1
       36 LOADK                            R1 K9 ["icon-placeholder"]
       37 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Text"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleExpansion"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Down"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Up"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R5 R0 K2 ["Item"]
       18 GETTABLEKS                       R7 R5 K3 ["Type"]
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       23 GETTABLEKS                       R8 R8 K5 ["Group"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+3]
       27 LOADK                            R6 K6 ["icon-group-folder"]
       28 JUMP                             ; [+28]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       32 GETTABLEKS                       R8 R8 K7 ["User"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 LOADK                            R6 K8 ["icon-user-folder"]
       37 JUMP                             ; [+19]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       41 GETTABLEKS                       R8 R8 K9 ["ProjectPlaces"]
       43 JUMPIFNOTEQ                      R7 R8 ; [+3]
       45 LOADK                            R6 K10 ["icon-places-folder"]
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       50 GETTABLEKS                       R8 R8 K11 ["Folder"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+3]
       54 LOADK                            R6 K12 ["icon-folder"]
       55 JUMP                             ; [+1]
       56 LOADK                            R6 K13 ["icon-placeholder"]
       57 GETUPVAL                         R7 5
       58 CALL                             R7 0 1
       59 GETUPVAL                         R8 6
       60 MOVE                             R9 R5
       61 MOVE                             R10 R1
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 7
       64 GETUPVAL                         R10 4
       65 GETTABLEKS                       R10 R10 K14 ["MenuContext"]
       67 GETTABLEKS                       R10 R10 K15 ["Sidebar"]
       69 DUPTABLE                         R11 K18 [{"Scope", "Depth"}]
       70 SETTABLEKS                       R5 R11 K16 ["Scope"]
       72 GETTABLEKS                       R12 R0 K17 ["Depth"]
       74 SETTABLEKS                       R12 R11 K17 ["Depth"]
       76 CALL                             R9 2 1
       77 GETTABLEKS                       R10 R5 K19 ["Children"]
       79 JUMPIFNOT                        R10 ; [+8]
       80 GETTABLEKS                       R12 R5 K19 ["Children"]
       82 LENGTH                           R11 R12
       83 LOADN                            R12 0
       84 JUMPIFLT                         R12 R11 ; [+2]
       86 LOADB                            R10 0 +1
       87 LOADB                            R10 1
       88 GETUPVAL                         R11 8
       89 GETTABLEKS                       R12 R5 K20 ["Uid"]
       91 CALL                             R11 1 1
       92 GETUPVAL                         R12 9
       93 GETTABLEKS                       R12 R12 K21 ["useRef"]
       95 LOADNIL                          R13
       96 CALL                             R12 1 1
       97 GETTABLEKS                       R15 R7 K23 ["Expansion"]
       99 GETTABLEKS                       R16 R5 K20 ["Uid"]
      101 GETTABLE                         R14 R15 R16
      102 ORK                              R13 R14 K22 [False]
      103 GETUPVAL                         R14 9
      104 GETTABLEKS                       R14 R14 K21 ["useRef"]
      106 LOADNIL                          R15
      107 CALL                             R14 1 1
      108 GETUPVAL                         R15 10
      109 MOVE                             R16 R14
      110 GETTABLEKS                       R17 R5 K20 ["Uid"]
      112 CALL                             R15 2 0
      113 DUPTABLE                         R15 K25 [{"Contents"}]
      114 GETUPVAL                         R16 9
      115 GETTABLEKS                       R16 R16 K26 ["createElement"]
      117 GETUPVAL                         R17 11
      118 GETTABLEKS                       R17 R17 K27 ["View"]
      120 DUPTABLE                         R18 K29 [{"tag"}]
      121 LOADK                            R19 K30 ["size-0-600 auto-x row align-x-left align-y-center padding-x-xsmall"]
      122 SETTABLEKS                       R19 R18 K28 ["tag"]
      124 DUPTABLE                         R19 K35 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      125 GETUPVAL                         R20 9
      126 GETTABLEKS                       R20 R20 K26 ["createElement"]
      128 GETUPVAL                         R21 12
      129 DUPTABLE                         R22 K37 [{"LayoutOrder", "Depth"}]
      130 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      132 CALL                             R23 1 1
      133 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      135 GETTABLEKS                       R23 R0 K17 ["Depth"]
      137 SETTABLEKS                       R23 R22 K17 ["Depth"]
      139 CALL                             R20 2 1
      140 SETTABLEKS                       R20 R19 K31 ["IndentGuide"]
      142 JUMPIFNOT                        R10 ; [+51]
      143 GETUPVAL                         R20 9
      144 GETTABLEKS                       R20 R20 K26 ["createElement"]
      146 GETUPVAL                         R21 11
      147 GETTABLEKS                       R21 R21 K39 ["Image"]
      149 DUPTABLE                         R22 K43 [{"LayoutOrder", "onActivated", "stateLayer", "ref", "tag"}]
      150 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      152 CALL                             R23 1 1
      153 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      155 NEWCLOSURE                       R23 P0
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R5
      158 SETTABLEKS                       R23 R22 K40 ["onActivated"]
      160 DUPTABLE                         R23 K45 [{"affordance"}]
      161 GETUPVAL                         R24 11
      162 GETTABLEKS                       R24 R24 K46 ["Enums"]
      164 GETTABLEKS                       R24 R24 K47 ["StateLayerAffordance"]
      166 GETTABLEKS                       R24 R24 K48 ["None"]
      168 SETTABLEKS                       R24 R23 K44 ["affordance"]
      170 SETTABLEKS                       R23 R22 K41 ["stateLayer"]
      172 SETTABLEKS                       R14 R22 K42 ["ref"]
      174 NEWTABLE                         R23 2 0
      176 LOADK                            R25 K49 ["%*"]
      177 JUMPIFNOT                        R13 ; [+2]
      178 LOADK                            R27 K50 ["icon-arrow-down"]
      179 JUMP                             ; [+1]
      180 LOADK                            R27 K51 ["icon-arrow-right"]
      181 NAMECALL                         R25 R25 K52 ["format"]
      183 CALL                             R25 2 1
      184 MOVE                             R24 R25
      185 LOADB                            R25 1
      186 SETTABLE                         R25 R23 R24
      187 LOADB                            R24 1
      188 SETTABLEKS                       R24 R23 K53 ["size-400 data-testid=scope-expand-icon"]
      190 SETTABLEKS                       R23 R22 K28 ["tag"]
      192 CALL                             R20 2 1
      193 JUMP                             ; [+16]
      194 GETUPVAL                         R20 9
      195 GETTABLEKS                       R20 R20 K26 ["createElement"]
      197 GETUPVAL                         R21 11
      198 GETTABLEKS                       R21 R21 K27 ["View"]
      200 DUPTABLE                         R22 K54 [{"LayoutOrder", "tag"}]
      201 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      203 CALL                             R23 1 1
      204 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      206 LOADK                            R23 K55 ["size-400"]
      207 SETTABLEKS                       R23 R22 K28 ["tag"]
      209 CALL                             R20 2 1
      210 SETTABLEKS                       R20 R19 K32 ["ExpandArrow"]
      212 GETTABLEKS                       R21 R5 K3 ["Type"]
      214 GETUPVAL                         R22 4
      215 GETTABLEKS                       R22 R22 K4 ["ScopeType"]
      217 GETTABLEKS                       R22 R22 K56 ["RecentUploads"]
      219 JUMPIFNOTEQ                      R21 R22 ; [+42]
      221 GETUPVAL                         R20 9
      222 GETTABLEKS                       R20 R20 K26 ["createElement"]
      224 GETUPVAL                         R21 11
      225 GETTABLEKS                       R21 R21 K57 ["Icon"]
      227 DUPTABLE                         R22 K61 [{"LayoutOrder", "name", "variant", "size"}]
      228 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      230 CALL                             R23 1 1
      231 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      233 GETUPVAL                         R23 11
      234 GETTABLEKS                       R23 R23 K46 ["Enums"]
      236 GETTABLEKS                       R23 R23 K62 ["IconName"]
      238 GETTABLEKS                       R23 R23 K63 ["ClockSpinReverse"]
      240 SETTABLEKS                       R23 R22 K58 ["name"]
      242 GETUPVAL                         R23 11
      243 GETTABLEKS                       R23 R23 K46 ["Enums"]
      245 GETTABLEKS                       R23 R23 K64 ["IconVariant"]
      247 GETTABLEKS                       R23 R23 K65 ["Filled"]
      249 SETTABLEKS                       R23 R22 K59 ["variant"]
      251 GETUPVAL                         R23 11
      252 GETTABLEKS                       R23 R23 K46 ["Enums"]
      254 GETTABLEKS                       R23 R23 K66 ["InputSize"]
      256 GETTABLEKS                       R23 R23 K67 ["Small"]
      258 SETTABLEKS                       R23 R22 K60 ["size"]
      260 CALL                             R20 2 1
      261 JUMP                             ; [+21]
      262 GETUPVAL                         R20 9
      263 GETTABLEKS                       R20 R20 K26 ["createElement"]
      265 GETUPVAL                         R21 11
      266 GETTABLEKS                       R21 R21 K39 ["Image"]
      268 DUPTABLE                         R22 K54 [{"LayoutOrder", "tag"}]
      269 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      271 CALL                             R23 1 1
      272 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      274 LOADK                            R24 K68 ["%* size-400"]
      275 MOVE                             R26 R6
      276 NAMECALL                         R24 R24 K52 ["format"]
      278 CALL                             R24 2 1
      279 MOVE                             R23 R24
      280 SETTABLEKS                       R23 R22 K28 ["tag"]
      282 CALL                             R20 2 1
      283 SETTABLEKS                       R20 R19 K33 ["Thumbnail"]
      285 JUMPIFNOT                        R11 ; [+18]
      286 GETUPVAL                         R20 9
      287 GETTABLEKS                       R20 R20 K26 ["createElement"]
      289 GETUPVAL                         R21 13
      290 DUPTABLE                         R22 K70 [{"StagedFolder", "Depth", "LayoutOrder"}]
      291 SETTABLEKS                       R5 R22 K69 ["StagedFolder"]
      293 GETTABLEKS                       R23 R0 K17 ["Depth"]
      295 SETTABLEKS                       R23 R22 K17 ["Depth"]
      297 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      299 CALL                             R23 1 1
      300 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      302 CALL                             R20 2 1
      303 JUMP                             ; [+18]
      304 GETUPVAL                         R20 9
      305 GETTABLEKS                       R20 R20 K26 ["createElement"]
      307 GETUPVAL                         R21 11
      308 GETTABLEKS                       R21 R21 K71 ["Text"]
      310 DUPTABLE                         R22 K72 [{"LayoutOrder", "Text", "tag"}]
      311 NAMECALL                         R23 R2 K38 ["getNextOrder"]
      313 CALL                             R23 1 1
      314 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      316 SETTABLEKS                       R8 R22 K71 ["Text"]
      318 LOADK                            R23 K73 ["size-0-0 auto-xy padding-left-xsmall text-label-small"]
      319 SETTABLEKS                       R23 R22 K28 ["tag"]
      321 CALL                             R20 2 1
      322 SETTABLEKS                       R20 R19 K34 ["Name"]
      324 CALL                             R16 3 1
      325 SETTABLEKS                       R16 R15 K24 ["Contents"]
      327 GETUPVAL                         R16 9
      328 GETTABLEKS                       R16 R16 K26 ["createElement"]
      330 GETUPVAL                         R17 11
      331 GETTABLEKS                       R17 R17 K27 ["View"]
      333 DUPTABLE                         R18 K75 [{"LayoutOrder", "Position", "ref", "tag"}]
      334 GETTABLEKS                       R19 R0 K76 ["Index"]
      336 SETTABLEKS                       R19 R18 K36 ["LayoutOrder"]
      338 GETTABLEKS                       R19 R0 K74 ["Position"]
      340 SETTABLEKS                       R19 R18 K74 ["Position"]
      342 SETTABLEKS                       R12 R18 K42 ["ref"]
      344 LOADK                            R19 K77 ["size-full-600 radius-small padding-right-xsmall"]
      345 SETTABLEKS                       R19 R18 K28 ["tag"]
      347 GETUPVAL                         R19 9
      348 GETTABLEKS                       R19 R19 K26 ["createElement"]
      350 LOADK                            R20 K78 ["ImageButton"]
      351 NEWTABLE                         R21 4 0
      353 GETUPVAL                         R22 9
      354 GETTABLEKS                       R22 R22 K79 ["Event"]
      356 GETTABLEKS                       R22 R22 K80 ["MouseButton1Down"]
      358 NEWCLOSURE                       R23 P1
      359 CAPTURE                          VAL R4
      360 CAPTURE                          UPVAL U4
      361 CAPTURE                          VAL R5
      362 SETTABLE                         R23 R21 R22
      363 GETUPVAL                         R22 9
      364 GETTABLEKS                       R22 R22 K79 ["Event"]
      366 GETTABLEKS                       R22 R22 K81 ["MouseButton1Up"]
      368 NEWCLOSURE                       R23 P2
      369 CAPTURE                          VAL R4
      370 CAPTURE                          UPVAL U4
      371 CAPTURE                          VAL R5
      372 SETTABLE                         R23 R21 R22
      373 GETUPVAL                         R22 9
      374 GETTABLEKS                       R22 R22 K79 ["Event"]
      376 GETTABLEKS                       R22 R22 K82 ["MouseButton2Click"]
      378 NEWCLOSURE                       R23 P3
      379 CAPTURE                          VAL R9
      380 SETTABLE                         R23 R21 R22
      381 GETUPVAL                         R22 9
      382 GETTABLEKS                       R22 R22 K83 ["Tag"]
      384 LOADK                            R23 K84 ["size-full gui-object-defaults row align-x-left align-y-center"]
      385 SETTABLE                         R23 R21 R22
      386 MOVE                             R22 R15
      387 CALL                             R19 3 -1
      388 CALL                             R16 -1 -1
      389 RETURN                           R16 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R1 K1 ["Type"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R2 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+41]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["SidebarHeader"]
       14 GETTABLEKS                       R4 R0 K0 ["Item"]
       16 GETTABLEKS                       R4 R4 K5 ["Name"]
       18 GETTABLE                         R2 R3 R4
       19 LOADK                            R4 K6 ["Invalid header name: "]
       20 GETTABLEKS                       R5 R0 K0 ["Item"]
       22 GETTABLEKS                       R5 R5 K5 ["Name"]
       24 CONCAT                           R3 R4 R5
       25 FASTCALL2                        ASSERT R2 R3 ; [+3]
       27 GETIMPORT                        R1 K8 [assert]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K9 ["createElement"]
       33 GETUPVAL                         R2 2
       34 DUPTABLE                         R3 K13 [{"Index", "Text", "Position"}]
       35 GETTABLEKS                       R4 R0 K10 ["Index"]
       37 SETTABLEKS                       R4 R3 K10 ["Index"]
       39 GETTABLEKS                       R4 R0 K0 ["Item"]
       41 GETTABLEKS                       R4 R4 K5 ["Name"]
       43 SETTABLEKS                       R4 R3 K11 ["Text"]
       45 GETTABLEKS                       R4 R0 K12 ["Position"]
       47 SETTABLEKS                       R4 R3 K12 ["Position"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K9 ["createElement"]
       54 GETUPVAL                         R2 3
       55 DUPTABLE                         R3 K15 [{"Index", "Item", "Position", "Depth"}]
       56 GETTABLEKS                       R4 R0 K10 ["Index"]
       58 SETTABLEKS                       R4 R3 K10 ["Index"]
       60 GETTABLEKS                       R4 R0 K0 ["Item"]
       62 SETTABLEKS                       R4 R3 K0 ["Item"]
       64 GETTABLEKS                       R4 R0 K12 ["Position"]
       66 SETTABLEKS                       R4 R3 K12 ["Position"]
       68 GETTABLEKS                       R4 R0 K14 ["Depth"]
       70 SETTABLEKS                       R4 R3 K14 ["Depth"]
       72 CALL                             R1 2 -1
       73 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Util"]
       45 GETTABLEKS                       R8 R8 K15 ["getLocalizedScopeName"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K16 ["EditScopeInput"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETIMPORT                        R10 K1 [script]
       59 GETTABLEKS                       R10 R10 K17 ["IndentGuide"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R3 K14 ["Util"]
       64 GETTABLEKS                       R10 R10 K18 ["LayoutOrderIterator"]
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Src"]
       70 GETTABLEKS                       R12 R12 K19 ["Controllers"]
       72 GETTABLEKS                       R12 R12 K20 ["ExplorerController"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K10 ["Src"]
       79 GETTABLEKS                       R13 R13 K19 ["Controllers"]
       81 GETTABLEKS                       R13 R13 K21 ["Input"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K10 ["Src"]
       88 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       90 GETTABLEKS                       R14 R14 K23 ["useContextMenu"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K10 ["Src"]
       97 GETTABLEKS                       R15 R15 K22 ["Hooks"]
       99 GETTABLEKS                       R15 R15 K24 ["useExpandOnDragHover"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K10 ["Src"]
      106 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      108 GETTABLEKS                       R16 R16 K25 ["useExplorerInfo"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R0 K10 ["Src"]
      115 GETTABLEKS                       R17 R17 K22 ["Hooks"]
      117 GETTABLEKS                       R17 R17 K26 ["useIsStagedFolder"]
      119 CALL                             R16 1 1
      120 DUPCLOSURE                       R17 K27 [PROTO_0]
      121 CAPTURE                          VAL R4
      122 DUPCLOSURE                       R18 K28 [PROTO_1]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R1
      126 DUPCLOSURE                       R19 K29 [PROTO_6]
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R8
      141 DUPCLOSURE                       R20 K30 [PROTO_7]
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R19
      146 RETURN                           R20 1
