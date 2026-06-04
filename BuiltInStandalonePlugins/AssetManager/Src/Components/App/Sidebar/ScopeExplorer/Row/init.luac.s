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
       21 GETTABLEKS                       R1 R1 K5 ["ProjectShared"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["icon-game-folder"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       30 GETTABLEKS                       R1 R1 K7 ["ProjectPlaces"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K8 ["icon-places-folder"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       39 GETTABLEKS                       R1 R1 K9 ["Folder"]
       41 JUMPIFNOTEQ                      R0 R1 ; [+3]
       43 LOADK                            R1 K10 ["icon-folder"]
       44 RETURN                           R1 1
       45 LOADK                            R1 K11 ["icon-placeholder"]
       46 RETURN                           R1 1

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
       28 JUMP                             ; [+37]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       32 GETTABLEKS                       R8 R8 K7 ["User"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+3]
       36 LOADK                            R6 K8 ["icon-user-folder"]
       37 JUMP                             ; [+28]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       41 GETTABLEKS                       R8 R8 K9 ["ProjectShared"]
       43 JUMPIFNOTEQ                      R7 R8 ; [+3]
       45 LOADK                            R6 K10 ["icon-game-folder"]
       46 JUMP                             ; [+19]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       50 GETTABLEKS                       R8 R8 K11 ["ProjectPlaces"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+3]
       54 LOADK                            R6 K12 ["icon-places-folder"]
       55 JUMP                             ; [+10]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       59 GETTABLEKS                       R8 R8 K13 ["Folder"]
       61 JUMPIFNOTEQ                      R7 R8 ; [+3]
       63 LOADK                            R6 K14 ["icon-folder"]
       64 JUMP                             ; [+1]
       65 LOADK                            R6 K15 ["icon-placeholder"]
       66 GETUPVAL                         R7 5
       67 CALL                             R7 0 1
       68 GETUPVAL                         R8 6
       69 MOVE                             R9 R5
       70 MOVE                             R10 R1
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 7
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R10 R10 K16 ["MenuContext"]
       76 GETTABLEKS                       R10 R10 K17 ["Sidebar"]
       78 DUPTABLE                         R11 K20 [{"Scope", "Depth"}]
       79 SETTABLEKS                       R5 R11 K18 ["Scope"]
       81 GETTABLEKS                       R12 R0 K19 ["Depth"]
       83 SETTABLEKS                       R12 R11 K19 ["Depth"]
       85 CALL                             R9 2 1
       86 GETTABLEKS                       R10 R5 K21 ["Children"]
       88 JUMPIFNOT                        R10 ; [+8]
       89 GETTABLEKS                       R12 R5 K21 ["Children"]
       91 LENGTH                           R11 R12
       92 LOADN                            R12 0
       93 JUMPIFLT                         R12 R11 ; [+2]
       95 LOADB                            R10 0 +1
       96 LOADB                            R10 1
       97 GETUPVAL                         R11 8
       98 GETTABLEKS                       R12 R5 K22 ["Uid"]
      100 CALL                             R11 1 1
      101 GETUPVAL                         R12 9
      102 GETTABLEKS                       R12 R12 K23 ["useRef"]
      104 LOADNIL                          R13
      105 CALL                             R12 1 1
      106 GETTABLEKS                       R15 R7 K25 ["Expansion"]
      108 GETTABLEKS                       R16 R5 K22 ["Uid"]
      110 GETTABLE                         R14 R15 R16
      111 ORK                              R13 R14 K24 [False]
      112 GETUPVAL                         R14 9
      113 GETTABLEKS                       R14 R14 K23 ["useRef"]
      115 LOADNIL                          R15
      116 CALL                             R14 1 1
      117 GETUPVAL                         R15 10
      118 MOVE                             R16 R14
      119 GETTABLEKS                       R17 R5 K22 ["Uid"]
      121 CALL                             R15 2 0
      122 DUPTABLE                         R15 K27 [{"Contents"}]
      123 GETUPVAL                         R16 9
      124 GETTABLEKS                       R16 R16 K28 ["createElement"]
      126 GETUPVAL                         R17 11
      127 GETTABLEKS                       R17 R17 K29 ["View"]
      129 DUPTABLE                         R18 K31 [{"tag"}]
      130 LOADK                            R19 K32 ["size-0-600 auto-x row align-x-left align-y-center padding-x-xsmall"]
      131 SETTABLEKS                       R19 R18 K30 ["tag"]
      133 DUPTABLE                         R19 K37 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      134 GETUPVAL                         R20 9
      135 GETTABLEKS                       R20 R20 K28 ["createElement"]
      137 GETUPVAL                         R21 12
      138 DUPTABLE                         R22 K39 [{"LayoutOrder", "Depth"}]
      139 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      141 CALL                             R23 1 1
      142 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      144 GETTABLEKS                       R23 R0 K19 ["Depth"]
      146 SETTABLEKS                       R23 R22 K19 ["Depth"]
      148 CALL                             R20 2 1
      149 SETTABLEKS                       R20 R19 K33 ["IndentGuide"]
      151 JUMPIFNOT                        R10 ; [+51]
      152 GETUPVAL                         R20 9
      153 GETTABLEKS                       R20 R20 K28 ["createElement"]
      155 GETUPVAL                         R21 11
      156 GETTABLEKS                       R21 R21 K41 ["Image"]
      158 DUPTABLE                         R22 K45 [{"LayoutOrder", "onActivated", "stateLayer", "ref", "tag"}]
      159 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      161 CALL                             R23 1 1
      162 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      164 NEWCLOSURE                       R23 P0
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R5
      167 SETTABLEKS                       R23 R22 K42 ["onActivated"]
      169 DUPTABLE                         R23 K47 [{"affordance"}]
      170 GETUPVAL                         R24 11
      171 GETTABLEKS                       R24 R24 K48 ["Enums"]
      173 GETTABLEKS                       R24 R24 K49 ["StateLayerAffordance"]
      175 GETTABLEKS                       R24 R24 K50 ["None"]
      177 SETTABLEKS                       R24 R23 K46 ["affordance"]
      179 SETTABLEKS                       R23 R22 K43 ["stateLayer"]
      181 SETTABLEKS                       R14 R22 K44 ["ref"]
      183 NEWTABLE                         R23 2 0
      185 LOADK                            R25 K51 ["%*"]
      186 JUMPIFNOT                        R13 ; [+2]
      187 LOADK                            R27 K52 ["icon-arrow-down"]
      188 JUMP                             ; [+1]
      189 LOADK                            R27 K53 ["icon-arrow-right"]
      190 NAMECALL                         R25 R25 K54 ["format"]
      192 CALL                             R25 2 1
      193 MOVE                             R24 R25
      194 LOADB                            R25 1
      195 SETTABLE                         R25 R23 R24
      196 LOADB                            R24 1
      197 SETTABLEKS                       R24 R23 K55 ["size-400 data-testid=scope-expand-icon"]
      199 SETTABLEKS                       R23 R22 K30 ["tag"]
      201 CALL                             R20 2 1
      202 JUMP                             ; [+16]
      203 GETUPVAL                         R20 9
      204 GETTABLEKS                       R20 R20 K28 ["createElement"]
      206 GETUPVAL                         R21 11
      207 GETTABLEKS                       R21 R21 K29 ["View"]
      209 DUPTABLE                         R22 K56 [{"LayoutOrder", "tag"}]
      210 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      212 CALL                             R23 1 1
      213 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      215 LOADK                            R23 K57 ["size-400"]
      216 SETTABLEKS                       R23 R22 K30 ["tag"]
      218 CALL                             R20 2 1
      219 SETTABLEKS                       R20 R19 K34 ["ExpandArrow"]
      221 GETTABLEKS                       R21 R5 K3 ["Type"]
      223 GETUPVAL                         R22 4
      224 GETTABLEKS                       R22 R22 K4 ["ScopeType"]
      226 GETTABLEKS                       R22 R22 K58 ["RecentUploads"]
      228 JUMPIFNOTEQ                      R21 R22 ; [+42]
      230 GETUPVAL                         R20 9
      231 GETTABLEKS                       R20 R20 K28 ["createElement"]
      233 GETUPVAL                         R21 11
      234 GETTABLEKS                       R21 R21 K59 ["Icon"]
      236 DUPTABLE                         R22 K63 [{"LayoutOrder", "name", "variant", "size"}]
      237 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      239 CALL                             R23 1 1
      240 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      242 GETUPVAL                         R23 11
      243 GETTABLEKS                       R23 R23 K48 ["Enums"]
      245 GETTABLEKS                       R23 R23 K64 ["IconName"]
      247 GETTABLEKS                       R23 R23 K65 ["ClockSpinReverse"]
      249 SETTABLEKS                       R23 R22 K60 ["name"]
      251 GETUPVAL                         R23 11
      252 GETTABLEKS                       R23 R23 K48 ["Enums"]
      254 GETTABLEKS                       R23 R23 K66 ["IconVariant"]
      256 GETTABLEKS                       R23 R23 K67 ["Filled"]
      258 SETTABLEKS                       R23 R22 K61 ["variant"]
      260 GETUPVAL                         R23 11
      261 GETTABLEKS                       R23 R23 K48 ["Enums"]
      263 GETTABLEKS                       R23 R23 K68 ["InputSize"]
      265 GETTABLEKS                       R23 R23 K69 ["Small"]
      267 SETTABLEKS                       R23 R22 K62 ["size"]
      269 CALL                             R20 2 1
      270 JUMP                             ; [+21]
      271 GETUPVAL                         R20 9
      272 GETTABLEKS                       R20 R20 K28 ["createElement"]
      274 GETUPVAL                         R21 11
      275 GETTABLEKS                       R21 R21 K41 ["Image"]
      277 DUPTABLE                         R22 K56 [{"LayoutOrder", "tag"}]
      278 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      280 CALL                             R23 1 1
      281 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      283 LOADK                            R24 K70 ["%* size-400"]
      284 MOVE                             R26 R6
      285 NAMECALL                         R24 R24 K54 ["format"]
      287 CALL                             R24 2 1
      288 MOVE                             R23 R24
      289 SETTABLEKS                       R23 R22 K30 ["tag"]
      291 CALL                             R20 2 1
      292 SETTABLEKS                       R20 R19 K35 ["Thumbnail"]
      294 JUMPIFNOT                        R11 ; [+18]
      295 GETUPVAL                         R20 9
      296 GETTABLEKS                       R20 R20 K28 ["createElement"]
      298 GETUPVAL                         R21 13
      299 DUPTABLE                         R22 K72 [{"StagedFolder", "Depth", "LayoutOrder"}]
      300 SETTABLEKS                       R5 R22 K71 ["StagedFolder"]
      302 GETTABLEKS                       R23 R0 K19 ["Depth"]
      304 SETTABLEKS                       R23 R22 K19 ["Depth"]
      306 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      308 CALL                             R23 1 1
      309 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      311 CALL                             R20 2 1
      312 JUMP                             ; [+18]
      313 GETUPVAL                         R20 9
      314 GETTABLEKS                       R20 R20 K28 ["createElement"]
      316 GETUPVAL                         R21 11
      317 GETTABLEKS                       R21 R21 K73 ["Text"]
      319 DUPTABLE                         R22 K74 [{"LayoutOrder", "Text", "tag"}]
      320 NAMECALL                         R23 R2 K40 ["getNextOrder"]
      322 CALL                             R23 1 1
      323 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      325 SETTABLEKS                       R8 R22 K73 ["Text"]
      327 LOADK                            R23 K75 ["size-0-0 auto-xy padding-left-xsmall text-label-small"]
      328 SETTABLEKS                       R23 R22 K30 ["tag"]
      330 CALL                             R20 2 1
      331 SETTABLEKS                       R20 R19 K36 ["Name"]
      333 CALL                             R16 3 1
      334 SETTABLEKS                       R16 R15 K26 ["Contents"]
      336 GETUPVAL                         R16 9
      337 GETTABLEKS                       R16 R16 K28 ["createElement"]
      339 GETUPVAL                         R17 11
      340 GETTABLEKS                       R17 R17 K29 ["View"]
      342 DUPTABLE                         R18 K77 [{"LayoutOrder", "Position", "ref", "tag"}]
      343 GETTABLEKS                       R19 R0 K78 ["Index"]
      345 SETTABLEKS                       R19 R18 K38 ["LayoutOrder"]
      347 GETTABLEKS                       R19 R0 K76 ["Position"]
      349 SETTABLEKS                       R19 R18 K76 ["Position"]
      351 SETTABLEKS                       R12 R18 K44 ["ref"]
      353 LOADK                            R19 K79 ["size-full-600 radius-small padding-right-xsmall"]
      354 SETTABLEKS                       R19 R18 K30 ["tag"]
      356 GETUPVAL                         R19 9
      357 GETTABLEKS                       R19 R19 K28 ["createElement"]
      359 LOADK                            R20 K80 ["ImageButton"]
      360 NEWTABLE                         R21 4 0
      362 GETUPVAL                         R22 9
      363 GETTABLEKS                       R22 R22 K81 ["Event"]
      365 GETTABLEKS                       R22 R22 K82 ["MouseButton1Down"]
      367 NEWCLOSURE                       R23 P1
      368 CAPTURE                          VAL R4
      369 CAPTURE                          UPVAL U4
      370 CAPTURE                          VAL R5
      371 SETTABLE                         R23 R21 R22
      372 GETUPVAL                         R22 9
      373 GETTABLEKS                       R22 R22 K81 ["Event"]
      375 GETTABLEKS                       R22 R22 K83 ["MouseButton1Up"]
      377 NEWCLOSURE                       R23 P2
      378 CAPTURE                          VAL R4
      379 CAPTURE                          UPVAL U4
      380 CAPTURE                          VAL R5
      381 SETTABLE                         R23 R21 R22
      382 GETUPVAL                         R22 9
      383 GETTABLEKS                       R22 R22 K81 ["Event"]
      385 GETTABLEKS                       R22 R22 K84 ["MouseButton2Click"]
      387 NEWCLOSURE                       R23 P3
      388 CAPTURE                          VAL R9
      389 SETTABLE                         R23 R21 R22
      390 GETUPVAL                         R22 9
      391 GETTABLEKS                       R22 R22 K85 ["Tag"]
      393 LOADK                            R23 K86 ["size-full gui-object-defaults row align-x-left align-y-center"]
      394 SETTABLE                         R23 R21 R22
      395 MOVE                             R22 R15
      396 CALL                             R19 3 -1
      397 CALL                             R16 -1 -1
      398 RETURN                           R16 -1

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
