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
        1 GETTABLEKS                       R0 R0 K0 ["Children"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["Children"]
        7 LENGTH                           R1 R2
        8 LOADN                            R2 0
        9 JUMPIFLT                         R2 R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleExpansion"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Down"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Up"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
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
       77 GETUPVAL                         R10 8
       78 GETTABLEKS                       R10 R10 K19 ["useMemo"]
       80 NEWCLOSURE                       R11 P0
       81 CAPTURE                          VAL R5
       82 NEWTABLE                         R12 0 1
       84 GETTABLEKS                       R13 R5 K20 ["Children"]
       86 SETLIST                          R12 R13 1 [1]
       88 CALL                             R10 2 1
       89 GETUPVAL                         R11 9
       90 GETTABLEKS                       R12 R5 K21 ["Uid"]
       92 CALL                             R11 1 1
       93 GETUPVAL                         R12 8
       94 GETTABLEKS                       R12 R12 K22 ["useRef"]
       96 LOADNIL                          R13
       97 CALL                             R12 1 1
       98 GETUPVAL                         R13 10
       99 MOVE                             R14 R12
      100 MOVE                             R15 R5
      101 CALL                             R13 2 1
      102 GETTABLEKS                       R16 R7 K24 ["Expansion"]
      104 GETTABLEKS                       R17 R5 K21 ["Uid"]
      106 GETTABLE                         R15 R16 R17
      107 ORK                              R14 R15 K23 [False]
      108 GETUPVAL                         R15 8
      109 GETTABLEKS                       R15 R15 K22 ["useRef"]
      111 LOADNIL                          R16
      112 CALL                             R15 1 1
      113 GETUPVAL                         R16 11
      114 MOVE                             R17 R15
      115 GETTABLEKS                       R18 R5 K21 ["Uid"]
      117 CALL                             R16 2 0
      118 DUPTABLE                         R16 K26 [{"Contents"}]
      119 GETUPVAL                         R17 8
      120 GETTABLEKS                       R17 R17 K27 ["createElement"]
      122 GETUPVAL                         R18 12
      123 GETTABLEKS                       R18 R18 K28 ["View"]
      125 DUPTABLE                         R19 K30 [{"tag"}]
      126 LOADK                            R20 K31 ["size-0-600 auto-x row align-x-left align-y-center padding-x-xsmall"]
      127 SETTABLEKS                       R20 R19 K29 ["tag"]
      129 DUPTABLE                         R20 K36 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
      130 GETUPVAL                         R21 8
      131 GETTABLEKS                       R21 R21 K27 ["createElement"]
      133 GETUPVAL                         R22 13
      134 DUPTABLE                         R23 K38 [{"LayoutOrder", "Depth"}]
      135 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      137 CALL                             R24 1 1
      138 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      140 GETTABLEKS                       R24 R0 K17 ["Depth"]
      142 SETTABLEKS                       R24 R23 K17 ["Depth"]
      144 CALL                             R21 2 1
      145 SETTABLEKS                       R21 R20 K32 ["IndentGuide"]
      147 JUMPIFNOT                        R10 ; [+51]
      148 GETUPVAL                         R21 8
      149 GETTABLEKS                       R21 R21 K27 ["createElement"]
      151 GETUPVAL                         R22 12
      152 GETTABLEKS                       R22 R22 K40 ["Image"]
      154 DUPTABLE                         R23 K44 [{"LayoutOrder", "onActivated", "stateLayer", "ref", "tag"}]
      155 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      157 CALL                             R24 1 1
      158 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      160 NEWCLOSURE                       R24 P1
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R5
      163 SETTABLEKS                       R24 R23 K41 ["onActivated"]
      165 DUPTABLE                         R24 K46 [{"affordance"}]
      166 GETUPVAL                         R25 12
      167 GETTABLEKS                       R25 R25 K47 ["Enums"]
      169 GETTABLEKS                       R25 R25 K48 ["StateLayerAffordance"]
      171 GETTABLEKS                       R25 R25 K49 ["None"]
      173 SETTABLEKS                       R25 R24 K45 ["affordance"]
      175 SETTABLEKS                       R24 R23 K42 ["stateLayer"]
      177 SETTABLEKS                       R15 R23 K43 ["ref"]
      179 NEWTABLE                         R24 2 0
      181 LOADK                            R26 K50 ["%*"]
      182 JUMPIFNOT                        R14 ; [+2]
      183 LOADK                            R28 K51 ["icon-arrow-down"]
      184 JUMP                             ; [+1]
      185 LOADK                            R28 K52 ["icon-arrow-right"]
      186 NAMECALL                         R26 R26 K53 ["format"]
      188 CALL                             R26 2 1
      189 MOVE                             R25 R26
      190 LOADB                            R26 1
      191 SETTABLE                         R26 R24 R25
      192 LOADB                            R25 1
      193 SETTABLEKS                       R25 R24 K54 ["size-400 data-testid=scope-expand-icon"]
      195 SETTABLEKS                       R24 R23 K29 ["tag"]
      197 CALL                             R21 2 1
      198 JUMP                             ; [+16]
      199 GETUPVAL                         R21 8
      200 GETTABLEKS                       R21 R21 K27 ["createElement"]
      202 GETUPVAL                         R22 12
      203 GETTABLEKS                       R22 R22 K28 ["View"]
      205 DUPTABLE                         R23 K55 [{"LayoutOrder", "tag"}]
      206 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      208 CALL                             R24 1 1
      209 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      211 LOADK                            R24 K56 ["size-400"]
      212 SETTABLEKS                       R24 R23 K29 ["tag"]
      214 CALL                             R21 2 1
      215 SETTABLEKS                       R21 R20 K33 ["ExpandArrow"]
      217 GETTABLEKS                       R22 R5 K3 ["Type"]
      219 GETUPVAL                         R23 4
      220 GETTABLEKS                       R23 R23 K4 ["ScopeType"]
      222 GETTABLEKS                       R23 R23 K57 ["RecentUploads"]
      224 JUMPIFNOTEQ                      R22 R23 ; [+42]
      226 GETUPVAL                         R21 8
      227 GETTABLEKS                       R21 R21 K27 ["createElement"]
      229 GETUPVAL                         R22 12
      230 GETTABLEKS                       R22 R22 K58 ["Icon"]
      232 DUPTABLE                         R23 K62 [{"LayoutOrder", "name", "variant", "size"}]
      233 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      235 CALL                             R24 1 1
      236 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      238 GETUPVAL                         R24 12
      239 GETTABLEKS                       R24 R24 K47 ["Enums"]
      241 GETTABLEKS                       R24 R24 K63 ["IconName"]
      243 GETTABLEKS                       R24 R24 K64 ["ClockSpinReverse"]
      245 SETTABLEKS                       R24 R23 K59 ["name"]
      247 GETUPVAL                         R24 12
      248 GETTABLEKS                       R24 R24 K47 ["Enums"]
      250 GETTABLEKS                       R24 R24 K65 ["IconVariant"]
      252 GETTABLEKS                       R24 R24 K66 ["Filled"]
      254 SETTABLEKS                       R24 R23 K60 ["variant"]
      256 GETUPVAL                         R24 12
      257 GETTABLEKS                       R24 R24 K47 ["Enums"]
      259 GETTABLEKS                       R24 R24 K67 ["InputSize"]
      261 GETTABLEKS                       R24 R24 K68 ["Small"]
      263 SETTABLEKS                       R24 R23 K61 ["size"]
      265 CALL                             R21 2 1
      266 JUMP                             ; [+21]
      267 GETUPVAL                         R21 8
      268 GETTABLEKS                       R21 R21 K27 ["createElement"]
      270 GETUPVAL                         R22 12
      271 GETTABLEKS                       R22 R22 K40 ["Image"]
      273 DUPTABLE                         R23 K55 [{"LayoutOrder", "tag"}]
      274 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      276 CALL                             R24 1 1
      277 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      279 LOADK                            R25 K69 ["%* size-400"]
      280 MOVE                             R27 R6
      281 NAMECALL                         R25 R25 K53 ["format"]
      283 CALL                             R25 2 1
      284 MOVE                             R24 R25
      285 SETTABLEKS                       R24 R23 K29 ["tag"]
      287 CALL                             R21 2 1
      288 SETTABLEKS                       R21 R20 K34 ["Thumbnail"]
      290 JUMPIFNOT                        R11 ; [+18]
      291 GETUPVAL                         R21 8
      292 GETTABLEKS                       R21 R21 K27 ["createElement"]
      294 GETUPVAL                         R22 14
      295 DUPTABLE                         R23 K71 [{"StagedFolder", "Depth", "LayoutOrder"}]
      296 SETTABLEKS                       R5 R23 K70 ["StagedFolder"]
      298 GETTABLEKS                       R24 R0 K17 ["Depth"]
      300 SETTABLEKS                       R24 R23 K17 ["Depth"]
      302 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      304 CALL                             R24 1 1
      305 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      307 CALL                             R21 2 1
      308 JUMP                             ; [+18]
      309 GETUPVAL                         R21 8
      310 GETTABLEKS                       R21 R21 K27 ["createElement"]
      312 GETUPVAL                         R22 12
      313 GETTABLEKS                       R22 R22 K72 ["Text"]
      315 DUPTABLE                         R23 K73 [{"LayoutOrder", "Text", "tag"}]
      316 NAMECALL                         R24 R2 K39 ["getNextOrder"]
      318 CALL                             R24 1 1
      319 SETTABLEKS                       R24 R23 K37 ["LayoutOrder"]
      321 SETTABLEKS                       R8 R23 K72 ["Text"]
      323 LOADK                            R24 K74 ["size-0-0 auto-xy padding-left-xsmall text-label-small"]
      324 SETTABLEKS                       R24 R23 K29 ["tag"]
      326 CALL                             R21 2 1
      327 SETTABLEKS                       R21 R20 K35 ["Name"]
      329 CALL                             R17 3 1
      330 SETTABLEKS                       R17 R16 K25 ["Contents"]
      332 GETUPVAL                         R17 8
      333 GETTABLEKS                       R17 R17 K27 ["createElement"]
      335 GETUPVAL                         R18 12
      336 GETTABLEKS                       R18 R18 K28 ["View"]
      338 DUPTABLE                         R19 K76 [{"LayoutOrder", "Position", "ref", "tag"}]
      339 GETTABLEKS                       R20 R0 K77 ["Index"]
      341 SETTABLEKS                       R20 R19 K37 ["LayoutOrder"]
      343 GETTABLEKS                       R20 R0 K75 ["Position"]
      345 SETTABLEKS                       R20 R19 K75 ["Position"]
      347 SETTABLEKS                       R12 R19 K43 ["ref"]
      349 NEWTABLE                         R20 2 0
      351 LOADB                            R21 1
      352 SETTABLEKS                       R21 R20 K78 ["size-full-600 radius-small padding-right-xsmall"]
      354 SETTABLEKS                       R13 R20 K79 ["stroke-system-emphasis stroke-standard stroke-position-inner"]
      356 SETTABLEKS                       R20 R19 K29 ["tag"]
      358 GETUPVAL                         R20 8
      359 GETTABLEKS                       R20 R20 K27 ["createElement"]
      361 LOADK                            R21 K80 ["ImageButton"]
      362 NEWTABLE                         R22 4 0
      364 GETUPVAL                         R23 8
      365 GETTABLEKS                       R23 R23 K81 ["Event"]
      367 GETTABLEKS                       R23 R23 K82 ["MouseButton1Down"]
      369 NEWCLOSURE                       R24 P2
      370 CAPTURE                          VAL R4
      371 CAPTURE                          UPVAL U4
      372 CAPTURE                          VAL R5
      373 SETTABLE                         R24 R22 R23
      374 GETUPVAL                         R23 8
      375 GETTABLEKS                       R23 R23 K81 ["Event"]
      377 GETTABLEKS                       R23 R23 K83 ["MouseButton1Up"]
      379 NEWCLOSURE                       R24 P3
      380 CAPTURE                          VAL R4
      381 CAPTURE                          UPVAL U4
      382 CAPTURE                          VAL R5
      383 SETTABLE                         R24 R22 R23
      384 GETUPVAL                         R23 8
      385 GETTABLEKS                       R23 R23 K81 ["Event"]
      387 GETTABLEKS                       R23 R23 K84 ["MouseButton2Click"]
      389 NEWCLOSURE                       R24 P4
      390 CAPTURE                          VAL R9
      391 SETTABLE                         R24 R22 R23
      392 GETUPVAL                         R23 8
      393 GETTABLEKS                       R23 R23 K85 ["Tag"]
      395 LOADK                            R24 K86 ["size-full gui-object-defaults row align-x-left align-y-center"]
      396 SETTABLE                         R24 R22 R23
      397 MOVE                             R23 R16
      398 CALL                             R20 3 -1
      399 CALL                             R17 -1 -1
      400 RETURN                           R17 -1

PROTO_8:
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
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K10 ["Src"]
      124 GETTABLEKS                       R18 R18 K22 ["Hooks"]
      126 GETTABLEKS                       R18 R18 K27 ["useSidebarScopeDragHovered"]
      128 CALL                             R17 1 1
      129 DUPCLOSURE                       R18 K28 [PROTO_0]
      130 CAPTURE                          VAL R4
      131 DUPCLOSURE                       R19 K29 [PROTO_1]
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R1
      135 DUPCLOSURE                       R20 K30 [PROTO_7]
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R8
      151 DUPCLOSURE                       R21 K31 [PROTO_8]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R20
      156 RETURN                           R21 1
