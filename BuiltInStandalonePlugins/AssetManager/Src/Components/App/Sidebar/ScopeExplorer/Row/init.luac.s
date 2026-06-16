PROTO_0:
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
       81 DUPTABLE                         R17 K18 [{"tag"}]
       82 LOADK                            R18 K19 ["size-0-600 auto-x row align-x-left align-y-center padding-x-xsmall"]
       83 SETTABLEKS                       R18 R17 K17 ["tag"]
       85 DUPTABLE                         R18 K24 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
       86 GETUPVAL                         R19 9
       87 GETTABLEKS                       R19 R19 K15 ["createElement"]
       89 GETUPVAL                         R20 12
       90 DUPTABLE                         R21 K26 [{"LayoutOrder", "Depth"}]
       91 NAMECALL                         R22 R2 K27 ["getNextOrder"]
       93 CALL                             R22 1 1
       94 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
       96 GETTABLEKS                       R22 R0 K6 ["Depth"]
       98 SETTABLEKS                       R22 R21 K6 ["Depth"]
      100 CALL                             R19 2 1
      101 SETTABLEKS                       R19 R18 K20 ["IndentGuide"]
      103 JUMPIFNOT                        R9 ; [+54]
      104 GETUPVAL                         R19 9
      105 GETTABLEKS                       R19 R19 K15 ["createElement"]
      107 GETUPVAL                         R20 11
      108 GETTABLEKS                       R20 R20 K28 ["Image"]
      110 DUPTABLE                         R21 K33 [{"LayoutOrder", "onActivated", "stateLayer", "ref", "tag", "testId"}]
      111 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      113 CALL                             R22 1 1
      114 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      116 NEWCLOSURE                       R22 P0
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R22 R21 K29 ["onActivated"]
      121 DUPTABLE                         R22 K35 [{"affordance"}]
      122 GETUPVAL                         R23 11
      123 GETTABLEKS                       R23 R23 K36 ["Enums"]
      125 GETTABLEKS                       R23 R23 K37 ["StateLayerAffordance"]
      127 GETTABLEKS                       R23 R23 K38 ["None"]
      129 SETTABLEKS                       R23 R22 K34 ["affordance"]
      131 SETTABLEKS                       R22 R21 K30 ["stateLayer"]
      133 SETTABLEKS                       R13 R21 K31 ["ref"]
      135 NEWTABLE                         R22 2 0
      137 LOADK                            R24 K39 ["%*"]
      138 JUMPIFNOT                        R12 ; [+2]
      139 LOADK                            R26 K40 ["icon-arrow-down"]
      140 JUMP                             ; [+1]
      141 LOADK                            R26 K41 ["icon-arrow-right"]
      142 NAMECALL                         R24 R24 K42 ["format"]
      144 CALL                             R24 2 1
      145 MOVE                             R23 R24
      146 LOADB                            R24 1
      147 SETTABLE                         R24 R22 R23
      148 LOADB                            R23 1
      149 SETTABLEKS                       R23 R22 K43 ["size-400"]
      151 SETTABLEKS                       R22 R21 K17 ["tag"]
      153 LOADK                            R22 K44 ["scope-expand-icon"]
      154 SETTABLEKS                       R22 R21 K32 ["testId"]
      156 CALL                             R19 2 1
      157 JUMP                             ; [+16]
      158 GETUPVAL                         R19 9
      159 GETTABLEKS                       R19 R19 K15 ["createElement"]
      161 GETUPVAL                         R20 11
      162 GETTABLEKS                       R20 R20 K16 ["View"]
      164 DUPTABLE                         R21 K45 [{"LayoutOrder", "tag"}]
      165 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      167 CALL                             R22 1 1
      168 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      170 LOADK                            R22 K43 ["size-400"]
      171 SETTABLEKS                       R22 R21 K17 ["tag"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K21 ["ExpandArrow"]
      176 GETUPVAL                         R19 9
      177 GETTABLEKS                       R19 R19 K15 ["createElement"]
      179 GETUPVAL                         R20 13
      180 DUPTABLE                         R21 K47 [{"LayoutOrder", "ScopeType"}]
      181 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      183 CALL                             R22 1 1
      184 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      186 GETTABLEKS                       R22 R5 K48 ["Type"]
      188 SETTABLEKS                       R22 R21 K46 ["ScopeType"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K22 ["Thumbnail"]
      193 JUMPIFNOT                        R10 ; [+18]
      194 GETUPVAL                         R19 9
      195 GETTABLEKS                       R19 R19 K15 ["createElement"]
      197 GETUPVAL                         R20 14
      198 DUPTABLE                         R21 K50 [{"StagedFolder", "Depth", "LayoutOrder"}]
      199 SETTABLEKS                       R5 R21 K49 ["StagedFolder"]
      201 GETTABLEKS                       R22 R0 K6 ["Depth"]
      203 SETTABLEKS                       R22 R21 K6 ["Depth"]
      205 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      207 CALL                             R22 1 1
      208 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      210 CALL                             R19 2 1
      211 JUMP                             ; [+18]
      212 GETUPVAL                         R19 9
      213 GETTABLEKS                       R19 R19 K15 ["createElement"]
      215 GETUPVAL                         R20 11
      216 GETTABLEKS                       R20 R20 K51 ["Text"]
      218 DUPTABLE                         R21 K52 [{"LayoutOrder", "Text", "tag"}]
      219 NAMECALL                         R22 R2 K27 ["getNextOrder"]
      221 CALL                             R22 1 1
      222 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      224 SETTABLEKS                       R7 R21 K51 ["Text"]
      226 LOADK                            R22 K53 ["size-0-0 auto-xy padding-left-xsmall text-label-small"]
      227 SETTABLEKS                       R22 R21 K17 ["tag"]
      229 CALL                             R19 2 1
      230 SETTABLEKS                       R19 R18 K23 ["Name"]
      232 CALL                             R15 3 1
      233 SETTABLEKS                       R15 R14 K13 ["Contents"]
      235 GETUPVAL                         R15 9
      236 GETTABLEKS                       R15 R15 K15 ["createElement"]
      238 GETUPVAL                         R16 11
      239 GETTABLEKS                       R16 R16 K16 ["View"]
      241 DUPTABLE                         R17 K55 [{"LayoutOrder", "Position", "ref", "tag"}]
      242 GETTABLEKS                       R18 R0 K56 ["Index"]
      244 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      246 GETTABLEKS                       R18 R0 K54 ["Position"]
      248 SETTABLEKS                       R18 R17 K54 ["Position"]
      250 SETTABLEKS                       R11 R17 K31 ["ref"]
      252 LOADK                            R18 K57 ["size-full-600 radius-small padding-right-xsmall"]
      253 SETTABLEKS                       R18 R17 K17 ["tag"]
      255 GETUPVAL                         R18 9
      256 GETTABLEKS                       R18 R18 K15 ["createElement"]
      258 LOADK                            R19 K58 ["ImageButton"]
      259 NEWTABLE                         R20 4 0
      261 GETUPVAL                         R21 9
      262 GETTABLEKS                       R21 R21 K59 ["Event"]
      264 GETTABLEKS                       R21 R21 K60 ["MouseButton1Down"]
      266 NEWCLOSURE                       R22 P1
      267 CAPTURE                          VAL R4
      268 CAPTURE                          UPVAL U7
      269 CAPTURE                          VAL R5
      270 SETTABLE                         R22 R20 R21
      271 GETUPVAL                         R21 9
      272 GETTABLEKS                       R21 R21 K59 ["Event"]
      274 GETTABLEKS                       R21 R21 K61 ["MouseButton1Up"]
      276 NEWCLOSURE                       R22 P2
      277 CAPTURE                          VAL R4
      278 CAPTURE                          UPVAL U7
      279 CAPTURE                          VAL R5
      280 SETTABLE                         R22 R20 R21
      281 GETUPVAL                         R21 9
      282 GETTABLEKS                       R21 R21 K59 ["Event"]
      284 GETTABLEKS                       R21 R21 K62 ["MouseButton2Click"]
      286 NEWCLOSURE                       R22 P3
      287 CAPTURE                          VAL R8
      288 SETTABLE                         R22 R20 R21
      289 GETUPVAL                         R21 9
      290 GETTABLEKS                       R21 R21 K63 ["Tag"]
      292 LOADK                            R22 K64 ["size-full gui-object-defaults row align-x-left align-y-center"]
      293 SETTABLE                         R22 R20 R21
      294 MOVE                             R21 R14
      295 CALL                             R18 3 -1
      296 CALL                             R15 -1 -1
      297 RETURN                           R15 -1

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
      131 DUPCLOSURE                       R18 K30 [PROTO_0]
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R1
      135 DUPCLOSURE                       R19 K31 [PROTO_5]
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R9
      151 DUPCLOSURE                       R20 K32 [PROTO_6]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R19
      156 RETURN                           R20 1
