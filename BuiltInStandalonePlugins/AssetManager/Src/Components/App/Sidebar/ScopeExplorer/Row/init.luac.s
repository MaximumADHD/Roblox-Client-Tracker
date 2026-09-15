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
       54 GETTABLEKS                       R11 R11 K10 ["useRef"]
       56 LOADNIL                          R12
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R14 R6 K12 ["Expansion"]
       60 GETTABLEKS                       R15 R5 K9 ["Uid"]
       62 GETTABLE                         R13 R14 R15
       63 ORK                              R12 R13 K11 [False]
       64 GETUPVAL                         R13 9
       65 GETTABLEKS                       R13 R13 K10 ["useRef"]
       67 LOADNIL                          R14
       68 CALL                             R13 1 1
       69 GETUPVAL                         R14 10
       70 MOVE                             R15 R13
       71 GETTABLEKS                       R16 R5 K9 ["Uid"]
       73 CALL                             R14 2 0
       74 DUPTABLE                         R14 K14 [{"Contents"}]
       75 GETUPVAL                         R15 9
       76 GETTABLEKS                       R15 R15 K15 ["createElement"]
       78 GETUPVAL                         R16 11
       79 GETTABLEKS                       R16 R16 K16 ["View"]
       81 DUPTABLE                         R17 K19 [{["tag"] = "row align-x-left align-y-center size-0-600 auto-x padding-x-xsmall"}]
       82 DUPTABLE                         R18 K24 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
       83 GETUPVAL                         R19 9
       84 GETTABLEKS                       R19 R19 K15 ["createElement"]
       86 GETUPVAL                         R20 12
       87 DUPTABLE                         R21 K26 [{"LayoutOrder", "Depth"}]
       88 NAMECALL                         R22 R2 K27 ["getNextOrder"]
       90 CALL                             R22 1 1
       91 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
       93 GETTABLEKS                       R22 R0 K6 ["Depth"]
       95 SETTABLEKS                       R22 R21 K6 ["Depth"]
       97 CALL                             R19 2 1
       98 SETTABLEKS                       R19 R18 K20 ["IndentGuide"]
      100 JUMPIFNOT                        R9 ; [+50]
      101 GETUPVAL                         R19 9
      102 GETTABLEKS                       R19 R19 K15 ["createElement"]
      104 GETUPVAL                         R20 11
      105 GETTABLEKS                       R20 R20 K28 ["Image"]
      107 DUPTABLE                         R21 K34 [{["LayoutOrder"], ["onActivated"], ["stateLayer"], ["ref"], ["tag"], ["testId"] = "scope-expand-icon"}]
      108 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      110 CALL                             R22 1 1
      111 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      113 NEWCLOSURE                       R22 P0
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R22 R21 K29 ["onActivated"]
      118 DUPTABLE                         R22 K36 [{"affordance"}]
      119 GETUPVAL                         R23 11
      120 GETTABLEKS                       R23 R23 K37 ["Enums"]
      122 GETTABLEKS                       R23 R23 K38 ["StateLayerAffordance"]
      124 GETTABLEKS                       R23 R23 K39 ["None"]
      126 SETTABLEKS                       R23 R22 K35 ["affordance"]
      128 SETTABLEKS                       R22 R21 K30 ["stateLayer"]
      130 SETTABLEKS                       R13 R21 K31 ["ref"]
      132 NEWTABLE                         R22 2 0
      134 LOADK                            R23 K40 ["%*"]
      135 JUMPIFNOT                        R12 ; [+2]
      136 LOADK                            R25 K41 ["icon-arrow-down"]
      137 JUMP                             ; [+1]
      138 LOADK                            R25 K42 ["icon-arrow-right"]
      139 NAMECALL                         R23 R23 K43 ["format"]
      141 CALL                             R23 2 1
      142 LOADB                            R24 1
      143 SETTABLE                         R24 R22 R23
      144 LOADB                            R23 1
      145 SETTABLEKS                       R23 R22 K44 ["size-400"]
      147 SETTABLEKS                       R22 R21 K17 ["tag"]
      149 CALL                             R19 2 1
      150 JUMP                             ; [+13]
      151 GETUPVAL                         R19 9
      152 GETTABLEKS                       R19 R19 K15 ["createElement"]
      154 GETUPVAL                         R20 11
      155 GETTABLEKS                       R20 R20 K16 ["View"]
      157 DUPTABLE                         R21 K45 [{["LayoutOrder"], ["tag"] = "size-400"}]
      158 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      160 CALL                             R22 1 1
      161 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      163 CALL                             R19 2 1
      164 SETTABLEKS                       R19 R18 K21 ["ExpandArrow"]
      166 GETUPVAL                         R19 9
      167 GETTABLEKS                       R19 R19 K15 ["createElement"]
      169 GETUPVAL                         R20 13
      170 DUPTABLE                         R21 K47 [{"LayoutOrder", "ScopeType"}]
      171 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      173 CALL                             R22 1 1
      174 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      176 GETTABLEKS                       R22 R5 K48 ["Type"]
      178 SETTABLEKS                       R22 R21 K46 ["ScopeType"]
      180 CALL                             R19 2 1
      181 SETTABLEKS                       R19 R18 K22 ["Thumbnail"]
      183 JUMPIFNOT                        R10 ; [+18]
      184 GETUPVAL                         R19 9
      185 GETTABLEKS                       R19 R19 K15 ["createElement"]
      187 GETUPVAL                         R20 14
      188 DUPTABLE                         R21 K50 [{"StagedFolder", "Depth", "LayoutOrder"}]
      189 SETTABLEKS                       R5 R21 K49 ["StagedFolder"]
      191 GETTABLEKS                       R22 R0 K6 ["Depth"]
      193 SETTABLEKS                       R22 R21 K6 ["Depth"]
      195 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      197 CALL                             R22 1 1
      198 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      200 CALL                             R19 2 1
      201 JUMP                             ; [+15]
      202 GETUPVAL                         R19 9
      203 GETTABLEKS                       R19 R19 K15 ["createElement"]
      205 GETUPVAL                         R20 11
      206 GETTABLEKS                       R20 R20 K51 ["Text"]
      208 DUPTABLE                         R21 K53 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0-0 auto-xy padding-left-xsmall text-label-small"}]
      209 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      211 CALL                             R22 1 1
      212 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      214 SETTABLEKS                       R7 R21 K51 ["Text"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K23 ["Name"]
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K13 ["Contents"]
      222 GETUPVAL                         R15 15
      223 CALL                             R15 0 1
      224 JUMPIFNOT                        R15 ; [+20]
      225 GETUPVAL                         R15 9
      226 GETTABLEKS                       R15 R15 K15 ["createElement"]
      228 GETUPVAL                         R16 11
      229 GETTABLEKS                       R16 R16 K16 ["View"]
      231 DUPTABLE                         R17 K56 [{["LayoutOrder"], ["Position"], ["ref"], ["tag"] = "size-full-600 padding-right-xsmall radius-small"}]
      232 GETTABLEKS                       R18 R0 K57 ["Index"]
      234 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      236 GETTABLEKS                       R18 R0 K54 ["Position"]
      238 SETTABLEKS                       R18 R17 K54 ["Position"]
      240 SETTABLEKS                       R11 R17 K31 ["ref"]
      242 MOVE                             R18 R14
      243 CALL                             R15 3 -1
      244 RETURN                           R15 -1
      245 GETUPVAL                         R15 9
      246 GETTABLEKS                       R15 R15 K15 ["createElement"]
      248 GETUPVAL                         R16 11
      249 GETTABLEKS                       R16 R16 K16 ["View"]
      251 DUPTABLE                         R17 K56 [{["LayoutOrder"], ["Position"], ["ref"], ["tag"] = "size-full-600 padding-right-xsmall radius-small"}]
      252 GETTABLEKS                       R18 R0 K57 ["Index"]
      254 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      256 GETTABLEKS                       R18 R0 K54 ["Position"]
      258 SETTABLEKS                       R18 R17 K54 ["Position"]
      260 SETTABLEKS                       R11 R17 K31 ["ref"]
      262 GETUPVAL                         R18 9
      263 GETTABLEKS                       R18 R18 K15 ["createElement"]
      265 LOADK                            R19 K58 ["ImageButton"]
      266 NEWTABLE                         R20 4 0
      268 GETUPVAL                         R21 9
      269 GETTABLEKS                       R21 R21 K59 ["Event"]
      271 GETTABLEKS                       R21 R21 K60 ["MouseButton1Down"]
      273 NEWCLOSURE                       R22 P1
      274 CAPTURE                          VAL R4
      275 CAPTURE                          UPVAL U7
      276 CAPTURE                          VAL R5
      277 SETTABLE                         R22 R20 R21
      278 GETUPVAL                         R21 9
      279 GETTABLEKS                       R21 R21 K59 ["Event"]
      281 GETTABLEKS                       R21 R21 K61 ["MouseButton1Up"]
      283 NEWCLOSURE                       R22 P2
      284 CAPTURE                          VAL R4
      285 CAPTURE                          UPVAL U7
      286 CAPTURE                          VAL R5
      287 SETTABLE                         R22 R20 R21
      288 GETUPVAL                         R21 9
      289 GETTABLEKS                       R21 R21 K59 ["Event"]
      291 GETTABLEKS                       R21 R21 K62 ["MouseButton2Click"]
      293 NEWCLOSURE                       R22 P3
      294 CAPTURE                          VAL R8
      295 SETTABLE                         R22 R20 R21
      296 GETUPVAL                         R21 9
      297 GETTABLEKS                       R21 R21 K63 ["Tag"]
      299 LOADK                            R22 K64 ["size-full auto-x gui-object-defaults row align-x-left align-y-center"]
      300 SETTABLE                         R22 R20 R21
      301 MOVE                             R21 R14
      302 CALL                             R18 3 -1
      303 CALL                             R15 -1 -1
      304 RETURN                           R15 -1

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
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K19 ["EditScopeInput"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K20 ["IndentGuide"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R3 K14 ["Util"]
       75 GETTABLEKS                       R11 R11 K21 ["LayoutOrderIterator"]
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Src"]
       81 GETTABLEKS                       R13 R13 K22 ["Controllers"]
       83 GETTABLEKS                       R13 R13 K23 ["ExplorerController"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R14 R14 K22 ["Controllers"]
       92 GETTABLEKS                       R14 R14 K24 ["Input"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Src"]
       99 GETTABLEKS                       R15 R15 K25 ["Hooks"]
      101 GETTABLEKS                       R15 R15 K26 ["useContextMenu"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K5 [require]
      106 GETTABLEKS                       R16 R0 K10 ["Src"]
      108 GETTABLEKS                       R16 R16 K25 ["Hooks"]
      110 GETTABLEKS                       R16 R16 K27 ["useExpandOnDragHover"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R17 R0 K10 ["Src"]
      117 GETTABLEKS                       R17 R17 K25 ["Hooks"]
      119 GETTABLEKS                       R17 R17 K28 ["useExplorerInfo"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K5 [require]
      124 GETTABLEKS                       R18 R0 K10 ["Src"]
      126 GETTABLEKS                       R18 R18 K25 ["Hooks"]
      128 GETTABLEKS                       R18 R18 K29 ["useIsStagedFolder"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K5 [require]
      133 GETTABLEKS                       R19 R0 K10 ["Src"]
      135 GETTABLEKS                       R19 R19 K30 ["Flags"]
      137 GETTABLEKS                       R19 R19 K31 ["getFFlagAmrFixSidebar"]
      139 CALL                             R18 1 1
      140 DUPCLOSURE                       R19 K32 [PROTO_0]
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R1
      144 DUPCLOSURE                       R20 K33 [PROTO_5]
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R18
      161 DUPCLOSURE                       R21 K34 [PROTO_6]
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R20
      166 RETURN                           R21 1
