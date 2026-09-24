PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Text"]
       10 DUPTABLE                         R4 K7 [{["LayoutOrder"], ["Position"], ["Text"], ["tag"] = "size-full-600 padding-x-xsmall text-title-small text-align-x-left text-truncate-split"}]
       11 GETTABLEKS                       R5 R0 K8 ["Index"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 GETTABLEKS                       R5 R0 K4 ["Position"]
       17 SETTABLEKS                       R5 R4 K4 ["Position"]
       19 LOADK                            R7 K9 ["Sidebar"]
       20 GETTABLEKS                       R8 R0 K2 ["Text"]
       22 NAMECALL                         R5 R1 K10 ["getText"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K2 ["Text"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleExpansion"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Down"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Up"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
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
       18 GETUPVAL                         R6 4
       19 CALL                             R6 0 1
       20 GETUPVAL                         R7 5
       21 MOVE                             R8 R5
       22 MOVE                             R9 R1
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 6
       25 GETUPVAL                         R9 7
       26 GETTABLEKS                       R9 R9 K3 ["MenuContext"]
       28 GETTABLEKS                       R9 R9 K4 ["Sidebar"]
       30 DUPTABLE                         R10 K7 [{"Scope", "Depth"}]
       31 SETTABLEKS                       R5 R10 K5 ["Scope"]
       33 GETTABLEKS                       R11 R0 K6 ["Depth"]
       35 SETTABLEKS                       R11 R10 K6 ["Depth"]
       37 CALL                             R8 2 1
       38 GETTABLEKS                       R9 R5 K8 ["Children"]
       40 JUMPIFNOT                        R9 ; [+8]
       41 GETTABLEKS                       R11 R5 K8 ["Children"]
       43 LENGTH                           R10 R11
       44 LOADN                            R11 0
       45 JUMPIFLT                         R11 R10 ; [+2]
       47 LOADB                            R9 0 +1
       48 LOADB                            R9 1
       49 GETUPVAL                         R10 8
       50 GETTABLEKS                       R11 R5 K9 ["Uid"]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 9
       54 GETTABLEKS                       R11 R11 K10 ["useState"]
       56 LOADNIL                          R12
       57 CALL                             R11 1 2
       58 GETUPVAL                         R14 10
       59 CALL                             R14 0 1
       60 GETTABLEKS                       R14 R14 K9 ["Uid"]
       62 GETTABLEKS                       R15 R5 K9 ["Uid"]
       64 JUMPIFEQ                         R14 R15 ; [+2]
       66 LOADB                            R13 0 +1
       67 LOADB                            R13 1
       68 GETTABLEKS                       R16 R6 K12 ["Expansion"]
       70 GETTABLEKS                       R17 R5 K9 ["Uid"]
       72 GETTABLE                         R15 R16 R17
       73 ORK                              R14 R15 K11 [False]
       74 GETUPVAL                         R15 9
       75 GETTABLEKS                       R15 R15 K13 ["useRef"]
       77 LOADNIL                          R16
       78 CALL                             R15 1 1
       79 GETUPVAL                         R16 11
       80 MOVE                             R17 R15
       81 GETTABLEKS                       R18 R5 K9 ["Uid"]
       83 CALL                             R16 2 0
       84 DUPTABLE                         R16 K16 [{"Contents", "SidebarTutorialTooltip"}]
       85 GETUPVAL                         R17 9
       86 GETTABLEKS                       R17 R17 K17 ["createElement"]
       88 GETUPVAL                         R18 12
       89 GETTABLEKS                       R18 R18 K18 ["View"]
       91 DUPTABLE                         R19 K21 [{["tag"] = "row align-x-left align-y-center size-0-600 auto-x padding-x-xsmall"}]
       92 DUPTABLE                         R20 K26 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
       93 GETUPVAL                         R21 9
       94 GETTABLEKS                       R21 R21 K17 ["createElement"]
       96 GETUPVAL                         R22 13
       97 DUPTABLE                         R23 K28 [{"LayoutOrder", "Depth"}]
       98 NAMECALL                         R24 R2 K29 ["getNextOrder"]
      100 CALL                             R24 1 1
      101 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      103 GETTABLEKS                       R24 R0 K6 ["Depth"]
      105 SETTABLEKS                       R24 R23 K6 ["Depth"]
      107 CALL                             R21 2 1
      108 SETTABLEKS                       R21 R20 K22 ["IndentGuide"]
      110 JUMPIFNOT                        R9 ; [+50]
      111 GETUPVAL                         R21 9
      112 GETTABLEKS                       R21 R21 K17 ["createElement"]
      114 GETUPVAL                         R22 12
      115 GETTABLEKS                       R22 R22 K30 ["Image"]
      117 DUPTABLE                         R23 K36 [{["LayoutOrder"], ["onActivated"], ["stateLayer"], ["ref"], ["tag"], ["testId"] = "scope-expand-icon"}]
      118 NAMECALL                         R24 R2 K29 ["getNextOrder"]
      120 CALL                             R24 1 1
      121 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      123 NEWCLOSURE                       R24 P0
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R5
      126 SETTABLEKS                       R24 R23 K31 ["onActivated"]
      128 DUPTABLE                         R24 K38 [{"affordance"}]
      129 GETUPVAL                         R25 12
      130 GETTABLEKS                       R25 R25 K39 ["Enums"]
      132 GETTABLEKS                       R25 R25 K40 ["StateLayerAffordance"]
      134 GETTABLEKS                       R25 R25 K41 ["None"]
      136 SETTABLEKS                       R25 R24 K37 ["affordance"]
      138 SETTABLEKS                       R24 R23 K32 ["stateLayer"]
      140 SETTABLEKS                       R15 R23 K33 ["ref"]
      142 NEWTABLE                         R24 2 0
      144 LOADK                            R25 K42 ["%*"]
      145 JUMPIFNOT                        R14 ; [+2]
      146 LOADK                            R27 K43 ["icon-arrow-down"]
      147 JUMP                             ; [+1]
      148 LOADK                            R27 K44 ["icon-arrow-right"]
      149 NAMECALL                         R25 R25 K45 ["format"]
      151 CALL                             R25 2 1
      152 LOADB                            R26 1
      153 SETTABLE                         R26 R24 R25
      154 LOADB                            R25 1
      155 SETTABLEKS                       R25 R24 K46 ["size-400"]
      157 SETTABLEKS                       R24 R23 K19 ["tag"]
      159 CALL                             R21 2 1
      160 JUMP                             ; [+13]
      161 GETUPVAL                         R21 9
      162 GETTABLEKS                       R21 R21 K17 ["createElement"]
      164 GETUPVAL                         R22 12
      165 GETTABLEKS                       R22 R22 K18 ["View"]
      167 DUPTABLE                         R23 K47 [{["LayoutOrder"], ["tag"] = "size-400"}]
      168 NAMECALL                         R24 R2 K29 ["getNextOrder"]
      170 CALL                             R24 1 1
      171 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      173 CALL                             R21 2 1
      174 SETTABLEKS                       R21 R20 K23 ["ExpandArrow"]
      176 GETUPVAL                         R21 9
      177 GETTABLEKS                       R21 R21 K17 ["createElement"]
      179 GETUPVAL                         R22 14
      180 DUPTABLE                         R23 K49 [{"LayoutOrder", "ScopeType"}]
      181 NAMECALL                         R24 R2 K29 ["getNextOrder"]
      183 CALL                             R24 1 1
      184 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      186 GETTABLEKS                       R24 R5 K50 ["Type"]
      188 SETTABLEKS                       R24 R23 K48 ["ScopeType"]
      190 CALL                             R21 2 1
      191 SETTABLEKS                       R21 R20 K24 ["Thumbnail"]
      193 JUMPIFNOT                        R10 ; [+18]
      194 GETUPVAL                         R21 9
      195 GETTABLEKS                       R21 R21 K17 ["createElement"]
      197 GETUPVAL                         R22 15
      198 DUPTABLE                         R23 K52 [{"StagedFolder", "Depth", "LayoutOrder"}]
      199 SETTABLEKS                       R5 R23 K51 ["StagedFolder"]
      201 GETTABLEKS                       R24 R0 K6 ["Depth"]
      203 SETTABLEKS                       R24 R23 K6 ["Depth"]
      205 NAMECALL                         R24 R2 K29 ["getNextOrder"]
      207 CALL                             R24 1 1
      208 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      210 CALL                             R21 2 1
      211 JUMP                             ; [+15]
      212 GETUPVAL                         R21 9
      213 GETTABLEKS                       R21 R21 K17 ["createElement"]
      215 GETUPVAL                         R22 12
      216 GETTABLEKS                       R22 R22 K53 ["Text"]
      218 DUPTABLE                         R23 K55 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0-0 auto-xy padding-left-xsmall text-label-small"}]
      219 NAMECALL                         R24 R2 K29 ["getNextOrder"]
      221 CALL                             R24 1 1
      222 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      224 SETTABLEKS                       R7 R23 K53 ["Text"]
      226 CALL                             R21 2 1
      227 SETTABLEKS                       R21 R20 K25 ["Name"]
      229 CALL                             R17 3 1
      230 SETTABLEKS                       R17 R16 K14 ["Contents"]
      232 JUMPIFNOT                        R13 ; [+41]
      233 GETUPVAL                         R17 9
      234 GETTABLEKS                       R17 R17 K17 ["createElement"]
      236 GETUPVAL                         R18 16
      237 DUPTABLE                         R19 K61 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      238 GETUPVAL                         R20 7
      239 GETTABLEKS                       R20 R20 K62 ["TutorialId"]
      241 GETTABLEKS                       R20 R20 K63 ["Intro"]
      243 SETTABLEKS                       R20 R19 K56 ["tutorialId"]
      245 GETUPVAL                         R20 7
      246 GETTABLEKS                       R20 R20 K64 ["TutorialStepId"]
      248 GETTABLEKS                       R20 R20 K4 ["Sidebar"]
      250 SETTABLEKS                       R20 R19 K57 ["stepId"]
      252 SETTABLEKS                       R11 R19 K58 ["anchorInstance"]
      254 GETUPVAL                         R20 12
      255 GETTABLEKS                       R20 R20 K39 ["Enums"]
      257 GETTABLEKS                       R20 R20 K65 ["PopoverSide"]
      259 GETTABLEKS                       R20 R20 K66 ["Right"]
      261 SETTABLEKS                       R20 R19 K59 ["side"]
      263 GETUPVAL                         R20 12
      264 GETTABLEKS                       R20 R20 K39 ["Enums"]
      266 GETTABLEKS                       R20 R20 K67 ["PopoverAlign"]
      268 GETTABLEKS                       R20 R20 K68 ["Center"]
      270 SETTABLEKS                       R20 R19 K60 ["align"]
      272 CALL                             R17 2 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R17
      275 SETTABLEKS                       R17 R16 K15 ["SidebarTutorialTooltip"]
      277 GETUPVAL                         R17 17
      278 CALL                             R17 0 1
      279 JUMPIFNOT                        R17 ; [+20]
      280 GETUPVAL                         R17 9
      281 GETTABLEKS                       R17 R17 K17 ["createElement"]
      283 GETUPVAL                         R18 12
      284 GETTABLEKS                       R18 R18 K18 ["View"]
      286 DUPTABLE                         R19 K71 [{["LayoutOrder"], ["Position"], ["ref"], ["tag"] = "size-full-600 padding-right-xsmall radius-small"}]
      287 GETTABLEKS                       R20 R0 K72 ["Index"]
      289 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      291 GETTABLEKS                       R20 R0 K69 ["Position"]
      293 SETTABLEKS                       R20 R19 K69 ["Position"]
      295 SETTABLEKS                       R12 R19 K33 ["ref"]
      297 MOVE                             R20 R16
      298 CALL                             R17 3 -1
      299 RETURN                           R17 -1
      300 GETUPVAL                         R17 9
      301 GETTABLEKS                       R17 R17 K17 ["createElement"]
      303 GETUPVAL                         R18 12
      304 GETTABLEKS                       R18 R18 K18 ["View"]
      306 DUPTABLE                         R19 K71 [{["LayoutOrder"], ["Position"], ["ref"], ["tag"] = "size-full-600 padding-right-xsmall radius-small"}]
      307 GETTABLEKS                       R20 R0 K72 ["Index"]
      309 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      311 GETTABLEKS                       R20 R0 K69 ["Position"]
      313 SETTABLEKS                       R20 R19 K69 ["Position"]
      315 SETTABLEKS                       R12 R19 K33 ["ref"]
      317 GETUPVAL                         R20 9
      318 GETTABLEKS                       R20 R20 K17 ["createElement"]
      320 LOADK                            R21 K73 ["ImageButton"]
      321 NEWTABLE                         R22 4 0
      323 GETUPVAL                         R23 9
      324 GETTABLEKS                       R23 R23 K74 ["Event"]
      326 GETTABLEKS                       R23 R23 K75 ["MouseButton1Down"]
      328 NEWCLOSURE                       R24 P1
      329 CAPTURE                          VAL R4
      330 CAPTURE                          UPVAL U7
      331 CAPTURE                          VAL R5
      332 SETTABLE                         R24 R22 R23
      333 GETUPVAL                         R23 9
      334 GETTABLEKS                       R23 R23 K74 ["Event"]
      336 GETTABLEKS                       R23 R23 K76 ["MouseButton1Up"]
      338 NEWCLOSURE                       R24 P2
      339 CAPTURE                          VAL R4
      340 CAPTURE                          UPVAL U7
      341 CAPTURE                          VAL R5
      342 SETTABLE                         R24 R22 R23
      343 GETUPVAL                         R23 9
      344 GETTABLEKS                       R23 R23 K74 ["Event"]
      346 GETTABLEKS                       R23 R23 K77 ["MouseButton2Click"]
      348 NEWCLOSURE                       R24 P3
      349 CAPTURE                          VAL R8
      350 SETTABLE                         R24 R22 R23
      351 GETUPVAL                         R23 9
      352 GETTABLEKS                       R23 R23 K78 ["Tag"]
      354 LOADK                            R24 K79 ["size-full auto-x gui-object-defaults row align-x-left align-y-center"]
      355 SETTABLE                         R24 R22 R23
      356 MOVE                             R23 R16
      357 CALL                             R20 3 -1
      358 CALL                             R17 -1 -1
      359 RETURN                           R17 -1

PROTO_6:
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
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Components"]
       54 GETTABLEKS                       R9 R9 K17 ["Shared"]
       56 GETTABLEKS                       R9 R9 K18 ["ScopeIcon"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R10 K16 ["Components"]
       65 GETTABLEKS                       R10 R10 K17 ["Shared"]
       67 GETTABLEKS                       R10 R10 K19 ["TutorialTooltip"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K20 ["EditScopeInput"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETIMPORT                        R12 K1 [script]
       81 GETTABLEKS                       R12 R12 K21 ["IndentGuide"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R3 K14 ["Util"]
       86 GETTABLEKS                       R12 R12 K22 ["LayoutOrderIterator"]
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K10 ["Src"]
       92 GETTABLEKS                       R14 R14 K23 ["Controllers"]
       94 GETTABLEKS                       R14 R14 K24 ["ExplorerController"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R15 R0 K10 ["Src"]
      101 GETTABLEKS                       R15 R15 K23 ["Controllers"]
      103 GETTABLEKS                       R15 R15 K25 ["Input"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R16 R0 K10 ["Src"]
      110 GETTABLEKS                       R16 R16 K26 ["Hooks"]
      112 GETTABLEKS                       R16 R16 K27 ["useContextMenu"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K5 [require]
      117 GETTABLEKS                       R17 R0 K10 ["Src"]
      119 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      121 GETTABLEKS                       R17 R17 K28 ["useCurrentScope"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K5 [require]
      126 GETTABLEKS                       R18 R0 K10 ["Src"]
      128 GETTABLEKS                       R18 R18 K26 ["Hooks"]
      130 GETTABLEKS                       R18 R18 K29 ["useExpandOnDragHover"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K5 [require]
      135 GETTABLEKS                       R19 R0 K10 ["Src"]
      137 GETTABLEKS                       R19 R19 K26 ["Hooks"]
      139 GETTABLEKS                       R19 R19 K30 ["useExplorerInfo"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K5 [require]
      144 GETTABLEKS                       R20 R0 K10 ["Src"]
      146 GETTABLEKS                       R20 R20 K26 ["Hooks"]
      148 GETTABLEKS                       R20 R20 K31 ["useIsStagedFolder"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K5 [require]
      153 GETTABLEKS                       R21 R0 K10 ["Src"]
      155 GETTABLEKS                       R21 R21 K32 ["Flags"]
      157 GETTABLEKS                       R21 R21 K33 ["getFFlagAmrFixSidebar"]
      159 CALL                             R20 1 1
      160 DUPCLOSURE                       R21 K34 [PROTO_0]
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R1
      164 DUPCLOSURE                       R22 K35 [PROTO_5]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R20
      183 DUPCLOSURE                       R23 K36 [PROTO_6]
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R22
      188 RETURN                           R23 1
