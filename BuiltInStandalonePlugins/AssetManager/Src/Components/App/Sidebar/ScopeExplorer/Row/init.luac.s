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
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R4 R0 K2 ["Item"]
       14 GETUPVAL                         R5 3
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 4
       17 MOVE                             R7 R4
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 GETTABLEKS                       R7 R4 K3 ["Children"]
       22 JUMPIFNOT                        R7 ; [+8]
       23 GETTABLEKS                       R9 R4 K3 ["Children"]
       25 LENGTH                           R8 R9
       26 LOADN                            R9 0
       27 JUMPIFLT                         R9 R8 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R9 R4 K4 ["Uid"]
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 6
       36 GETTABLEKS                       R9 R9 K5 ["useState"]
       38 LOADNIL                          R10
       39 CALL                             R9 1 2
       40 GETUPVAL                         R12 7
       41 CALL                             R12 0 1
       42 GETTABLEKS                       R12 R12 K4 ["Uid"]
       44 GETTABLEKS                       R13 R4 K4 ["Uid"]
       46 JUMPIFEQ                         R12 R13 ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 GETTABLEKS                       R14 R5 K7 ["Expansion"]
       52 GETTABLEKS                       R15 R4 K4 ["Uid"]
       54 GETTABLE                         R13 R14 R15
       55 ORK                              R12 R13 K6 [False]
       56 GETUPVAL                         R13 6
       57 GETTABLEKS                       R13 R13 K8 ["useRef"]
       59 LOADNIL                          R14
       60 CALL                             R13 1 1
       61 GETUPVAL                         R14 8
       62 MOVE                             R15 R13
       63 GETTABLEKS                       R16 R4 K4 ["Uid"]
       65 CALL                             R14 2 0
       66 DUPTABLE                         R14 K11 [{"Contents", "SidebarTutorialTooltip"}]
       67 GETUPVAL                         R15 6
       68 GETTABLEKS                       R15 R15 K12 ["createElement"]
       70 GETUPVAL                         R16 9
       71 GETTABLEKS                       R16 R16 K13 ["View"]
       73 DUPTABLE                         R17 K16 [{["tag"] = "row align-x-left align-y-center size-0-600 auto-x padding-x-xsmall"}]
       74 DUPTABLE                         R18 K21 [{"IndentGuide", "ExpandArrow", "Thumbnail", "Name"}]
       75 GETUPVAL                         R19 6
       76 GETTABLEKS                       R19 R19 K12 ["createElement"]
       78 GETUPVAL                         R20 10
       79 DUPTABLE                         R21 K24 [{"LayoutOrder", "Depth"}]
       80 NAMECALL                         R22 R2 K25 ["getNextOrder"]
       82 CALL                             R22 1 1
       83 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
       85 GETTABLEKS                       R22 R0 K23 ["Depth"]
       87 SETTABLEKS                       R22 R21 K23 ["Depth"]
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K17 ["IndentGuide"]
       92 JUMPIFNOT                        R7 ; [+50]
       93 GETUPVAL                         R19 6
       94 GETTABLEKS                       R19 R19 K12 ["createElement"]
       96 GETUPVAL                         R20 9
       97 GETTABLEKS                       R20 R20 K26 ["Image"]
       99 DUPTABLE                         R21 K32 [{["LayoutOrder"], ["onActivated"], ["stateLayer"], ["ref"], ["tag"], ["testId"] = "scope-expand-icon"}]
      100 NAMECALL                         R22 R2 K25 ["getNextOrder"]
      102 CALL                             R22 1 1
      103 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      105 NEWCLOSURE                       R22 P0
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R22 R21 K27 ["onActivated"]
      110 DUPTABLE                         R22 K34 [{"affordance"}]
      111 GETUPVAL                         R23 9
      112 GETTABLEKS                       R23 R23 K35 ["Enums"]
      114 GETTABLEKS                       R23 R23 K36 ["StateLayerAffordance"]
      116 GETTABLEKS                       R23 R23 K37 ["None"]
      118 SETTABLEKS                       R23 R22 K33 ["affordance"]
      120 SETTABLEKS                       R22 R21 K28 ["stateLayer"]
      122 SETTABLEKS                       R13 R21 K29 ["ref"]
      124 NEWTABLE                         R22 2 0
      126 LOADK                            R23 K38 ["%*"]
      127 JUMPIFNOT                        R12 ; [+2]
      128 LOADK                            R25 K39 ["icon-arrow-down"]
      129 JUMP                             ; [+1]
      130 LOADK                            R25 K40 ["icon-arrow-right"]
      131 NAMECALL                         R23 R23 K41 ["format"]
      133 CALL                             R23 2 1
      134 LOADB                            R24 1
      135 SETTABLE                         R24 R22 R23
      136 LOADB                            R23 1
      137 SETTABLEKS                       R23 R22 K42 ["size-400"]
      139 SETTABLEKS                       R22 R21 K14 ["tag"]
      141 CALL                             R19 2 1
      142 JUMP                             ; [+13]
      143 GETUPVAL                         R19 6
      144 GETTABLEKS                       R19 R19 K12 ["createElement"]
      146 GETUPVAL                         R20 9
      147 GETTABLEKS                       R20 R20 K13 ["View"]
      149 DUPTABLE                         R21 K43 [{["LayoutOrder"], ["tag"] = "size-400"}]
      150 NAMECALL                         R22 R2 K25 ["getNextOrder"]
      152 CALL                             R22 1 1
      153 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      155 CALL                             R19 2 1
      156 SETTABLEKS                       R19 R18 K18 ["ExpandArrow"]
      158 GETUPVAL                         R19 6
      159 GETTABLEKS                       R19 R19 K12 ["createElement"]
      161 GETUPVAL                         R20 11
      162 DUPTABLE                         R21 K45 [{"LayoutOrder", "ScopeType"}]
      163 NAMECALL                         R22 R2 K25 ["getNextOrder"]
      165 CALL                             R22 1 1
      166 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      168 GETTABLEKS                       R22 R4 K46 ["Type"]
      170 SETTABLEKS                       R22 R21 K44 ["ScopeType"]
      172 CALL                             R19 2 1
      173 SETTABLEKS                       R19 R18 K19 ["Thumbnail"]
      175 JUMPIFNOT                        R8 ; [+18]
      176 GETUPVAL                         R19 6
      177 GETTABLEKS                       R19 R19 K12 ["createElement"]
      179 GETUPVAL                         R20 12
      180 DUPTABLE                         R21 K48 [{"StagedFolder", "Depth", "LayoutOrder"}]
      181 SETTABLEKS                       R4 R21 K47 ["StagedFolder"]
      183 GETTABLEKS                       R22 R0 K23 ["Depth"]
      185 SETTABLEKS                       R22 R21 K23 ["Depth"]
      187 NAMECALL                         R22 R2 K25 ["getNextOrder"]
      189 CALL                             R22 1 1
      190 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      192 CALL                             R19 2 1
      193 JUMP                             ; [+15]
      194 GETUPVAL                         R19 6
      195 GETTABLEKS                       R19 R19 K12 ["createElement"]
      197 GETUPVAL                         R20 9
      198 GETTABLEKS                       R20 R20 K49 ["Text"]
      200 DUPTABLE                         R21 K51 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0-0 auto-xy padding-left-xsmall text-label-small"}]
      201 NAMECALL                         R22 R2 K25 ["getNextOrder"]
      203 CALL                             R22 1 1
      204 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      206 SETTABLEKS                       R6 R21 K49 ["Text"]
      208 CALL                             R19 2 1
      209 SETTABLEKS                       R19 R18 K20 ["Name"]
      211 CALL                             R15 3 1
      212 SETTABLEKS                       R15 R14 K9 ["Contents"]
      214 JUMPIFNOT                        R11 ; [+41]
      215 GETUPVAL                         R15 6
      216 GETTABLEKS                       R15 R15 K12 ["createElement"]
      218 GETUPVAL                         R16 13
      219 DUPTABLE                         R17 K57 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      220 GETUPVAL                         R18 14
      221 GETTABLEKS                       R18 R18 K58 ["TutorialId"]
      223 GETTABLEKS                       R18 R18 K59 ["Intro"]
      225 SETTABLEKS                       R18 R17 K52 ["tutorialId"]
      227 GETUPVAL                         R18 14
      228 GETTABLEKS                       R18 R18 K60 ["TutorialStepId"]
      230 GETTABLEKS                       R18 R18 K61 ["Sidebar"]
      232 SETTABLEKS                       R18 R17 K53 ["stepId"]
      234 SETTABLEKS                       R9 R17 K54 ["anchorInstance"]
      236 GETUPVAL                         R18 9
      237 GETTABLEKS                       R18 R18 K35 ["Enums"]
      239 GETTABLEKS                       R18 R18 K62 ["PopoverSide"]
      241 GETTABLEKS                       R18 R18 K63 ["Right"]
      243 SETTABLEKS                       R18 R17 K55 ["side"]
      245 GETUPVAL                         R18 9
      246 GETTABLEKS                       R18 R18 K35 ["Enums"]
      248 GETTABLEKS                       R18 R18 K64 ["PopoverAlign"]
      250 GETTABLEKS                       R18 R18 K65 ["Center"]
      252 SETTABLEKS                       R18 R17 K56 ["align"]
      254 CALL                             R15 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R15
      257 SETTABLEKS                       R15 R14 K10 ["SidebarTutorialTooltip"]
      259 GETUPVAL                         R15 6
      260 GETTABLEKS                       R15 R15 K12 ["createElement"]
      262 GETUPVAL                         R16 9
      263 GETTABLEKS                       R16 R16 K13 ["View"]
      265 DUPTABLE                         R17 K68 [{["LayoutOrder"], ["Position"], ["ref"], ["tag"] = "size-full-600 padding-right-xsmall radius-small"}]
      266 GETTABLEKS                       R18 R0 K69 ["Index"]
      268 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      270 GETTABLEKS                       R18 R0 K66 ["Position"]
      272 SETTABLEKS                       R18 R17 K66 ["Position"]
      274 SETTABLEKS                       R10 R17 K29 ["ref"]
      276 MOVE                             R18 R14
      277 CALL                             R15 3 -1
      278 RETURN                           R15 -1

PROTO_3:
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
      101 GETTABLEKS                       R15 R15 K25 ["Hooks"]
      103 GETTABLEKS                       R15 R15 K26 ["useCurrentScope"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R16 R0 K10 ["Src"]
      110 GETTABLEKS                       R16 R16 K25 ["Hooks"]
      112 GETTABLEKS                       R16 R16 K27 ["useExpandOnDragHover"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K5 [require]
      117 GETTABLEKS                       R17 R0 K10 ["Src"]
      119 GETTABLEKS                       R17 R17 K25 ["Hooks"]
      121 GETTABLEKS                       R17 R17 K28 ["useExplorerInfo"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K5 [require]
      126 GETTABLEKS                       R18 R0 K10 ["Src"]
      128 GETTABLEKS                       R18 R18 K25 ["Hooks"]
      130 GETTABLEKS                       R18 R18 K29 ["useIsStagedFolder"]
      132 CALL                             R17 1 1
      133 DUPCLOSURE                       R18 K30 [PROTO_0]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R1
      137 DUPCLOSURE                       R19 K31 [PROTO_2]
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R4
      153 DUPCLOSURE                       R20 K32 [PROTO_3]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R19
      158 RETURN                           R20 1
