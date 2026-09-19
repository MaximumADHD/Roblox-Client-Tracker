PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setExpanded"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["expanded"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["ContextServices"]
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K3 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["useRef"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R8 0 2
       29 GETTABLEKS                       R9 R0 K7 ["setExpanded"]
       31 GETTABLEKS                       R10 R0 K8 ["expanded"]
       33 SETLIST                          R8 R9 2 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R4
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R4
       55 SETLIST                          R10 R11 1 [1]
       57 CALL                             R8 2 1
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K9 ["Hooks"]
       61 GETTABLEKS                       R9 R9 K10 ["useTokens"]
       63 CALL                             R9 0 1
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K11 ["createElement"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K12 ["View"]
       70 DUPTABLE                         R12 K17 [{["tag"] = "row flex-x-none align-y-center gap-none size-full-600 bg-surface-200", ["Size"], ["LayoutOrder"]}]
       71 GETUPVAL                         R14 4
       72 CALL                             R14 0 1
       73 JUMPIF                           R14 ; [+19]
       74 GETIMPORT                        R13 K20 [UDim2.new]
       76 LOADN                            R14 0
       77 GETUPVAL                         R15 3
       78 GETTABLEKS                       R15 R15 K9 ["Hooks"]
       80 GETTABLEKS                       R15 R15 K21 ["useScaledValue"]
       82 GETUPVAL                         R16 5
       83 GETTABLEKS                       R16 R16 K22 ["PARAMETER_PANE_WIDTH"]
       85 CALL                             R15 1 1
       86 LOADN                            R16 0
       87 GETTABLEKS                       R17 R9 K15 ["Size"]
       89 GETTABLEKS                       R17 R17 K23 ["Size_600"]
       91 CALL                             R13 4 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R13
       94 SETTABLEKS                       R13 R12 K15 ["Size"]
       96 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
       98 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      100 DUPTABLE                         R13 K28 [{"ExpandButton", "Title", "AddParameterButton", "ParameterPaneInsertNodeMenu"}]
      101 GETUPVAL                         R14 2
      102 GETTABLEKS                       R14 R14 K11 ["createElement"]
      104 GETUPVAL                         R15 3
      105 GETTABLEKS                       R15 R15 K29 ["IconButton"]
      107 DUPTABLE                         R16 K38 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["isDisabled"], ["icon"], ["onActivated"], ["testId"] = "ParameterPane-ExpandButton", ["stateLayer"]}]
      108 MOVE                             R17 R1
      109 CALL                             R17 0 1
      110 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      112 GETUPVAL                         R17 3
      113 GETTABLEKS                       R17 R17 K39 ["Enums"]
      115 GETTABLEKS                       R17 R17 K40 ["InputSize"]
      117 GETTABLEKS                       R17 R17 K41 ["XSmall"]
      119 SETTABLEKS                       R17 R16 K31 ["size"]
      121 GETTABLEKS                       R18 R0 K42 ["canExpand"]
      123 NOT                              R17 R18
      124 SETTABLEKS                       R17 R16 K32 ["isDisabled"]
      126 GETTABLEKS                       R18 R0 K8 ["expanded"]
      128 JUMPIFNOT                        R18 ; [+8]
      129 GETUPVAL                         R17 3
      130 GETTABLEKS                       R17 R17 K39 ["Enums"]
      132 GETTABLEKS                       R17 R17 K43 ["IconName"]
      134 GETTABLEKS                       R17 R17 K44 ["ChevronSmallDown"]
      136 JUMP                             ; [+7]
      137 GETUPVAL                         R17 3
      138 GETTABLEKS                       R17 R17 K39 ["Enums"]
      140 GETTABLEKS                       R17 R17 K43 ["IconName"]
      142 GETTABLEKS                       R17 R17 K45 ["ChevronSmallRight"]
      144 SETTABLEKS                       R17 R16 K33 ["icon"]
      146 SETTABLEKS                       R6 R16 K34 ["onActivated"]
      148 DUPTABLE                         R17 K47 [{"affordance"}]
      149 GETUPVAL                         R18 3
      150 GETTABLEKS                       R18 R18 K39 ["Enums"]
      152 GETTABLEKS                       R18 R18 K48 ["StateLayerAffordance"]
      154 GETTABLEKS                       R18 R18 K49 ["None"]
      156 SETTABLEKS                       R18 R17 K46 ["affordance"]
      158 SETTABLEKS                       R17 R16 K37 ["stateLayer"]
      160 CALL                             R14 2 1
      161 SETTABLEKS                       R14 R13 K24 ["ExpandButton"]
      163 GETUPVAL                         R14 2
      164 GETTABLEKS                       R14 R14 K11 ["createElement"]
      166 GETUPVAL                         R15 3
      167 GETTABLEKS                       R15 R15 K50 ["Text"]
      169 DUPTABLE                         R16 K52 [{["tag"] = "grow text-title-small text-align-x-left", ["LayoutOrder"], ["Text"]}]
      170 MOVE                             R17 R1
      171 CALL                             R17 0 1
      172 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      174 GETUPVAL                         R18 6
      175 JUMPIFNOT                        R18 ; [+8]
      176 LOADK                            R19 K53 ["Common"]
      177 LOADK                            R20 K54 ["AnimationEditor"]
      178 LOADK                            R21 K55 ["Parameters"]
      179 LOADK                            R22 K25 ["Title"]
      180 NAMECALL                         R17 R2 K56 ["getExternalText"]
      182 CALL                             R17 5 1
      183 JUMP                             ; [+1]
      184 LOADK                            R17 K55 ["Parameters"]
      185 SETTABLEKS                       R17 R16 K50 ["Text"]
      187 CALL                             R14 2 1
      188 SETTABLEKS                       R14 R13 K25 ["Title"]
      190 GETTABLEKS                       R15 R0 K57 ["readonly"]
      192 JUMPIFNOT                        R15 ; [+2]
      193 LOADNIL                          R14
      194 JUMP                             ; [+55]
      195 GETUPVAL                         R14 2
      196 GETTABLEKS                       R14 R14 K11 ["createElement"]
      198 GETUPVAL                         R15 3
      199 GETTABLEKS                       R15 R15 K29 ["IconButton"]
      201 DUPTABLE                         R16 K60 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["icon"], ["onActivated"], ["isDisabled"], ["testId"] = "ParameterPane-AddParameterButton", ["ref"], ["stateLayer"]}]
      202 MOVE                             R17 R1
      203 CALL                             R17 0 1
      204 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      206 GETUPVAL                         R17 3
      207 GETTABLEKS                       R17 R17 K39 ["Enums"]
      209 GETTABLEKS                       R17 R17 K40 ["InputSize"]
      211 GETTABLEKS                       R17 R17 K41 ["XSmall"]
      213 SETTABLEKS                       R17 R16 K31 ["size"]
      215 GETUPVAL                         R17 3
      216 GETTABLEKS                       R17 R17 K39 ["Enums"]
      218 GETTABLEKS                       R17 R17 K43 ["IconName"]
      220 GETTABLEKS                       R17 R17 K61 ["PlusSmall"]
      222 SETTABLEKS                       R17 R16 K33 ["icon"]
      224 SETTABLEKS                       R7 R16 K34 ["onActivated"]
      226 GETUPVAL                         R18 7
      227 JUMPIFNOT                        R18 ; [+2]
      228 LOADNIL                          R17
      229 JUMP                             ; [+3]
      230 GETTABLEKS                       R18 R0 K62 ["DEPRECATED_canAddParameter"]
      232 NOT                              R17 R18
      233 SETTABLEKS                       R17 R16 K32 ["isDisabled"]
      235 SETTABLEKS                       R5 R16 K59 ["ref"]
      237 DUPTABLE                         R17 K47 [{"affordance"}]
      238 GETUPVAL                         R18 3
      239 GETTABLEKS                       R18 R18 K39 ["Enums"]
      241 GETTABLEKS                       R18 R18 K48 ["StateLayerAffordance"]
      243 GETTABLEKS                       R18 R18 K49 ["None"]
      245 SETTABLEKS                       R18 R17 K46 ["affordance"]
      247 SETTABLEKS                       R17 R16 K37 ["stateLayer"]
      249 CALL                             R14 2 1
      250 SETTABLEKS                       R14 R13 K26 ["AddParameterButton"]
      252 GETTABLEKS                       R15 R0 K57 ["readonly"]
      254 JUMPIFNOT                        R15 ; [+2]
      255 LOADNIL                          R14
      256 JUMP                             ; [+12]
      257 GETUPVAL                         R14 2
      258 GETTABLEKS                       R14 R14 K11 ["createElement"]
      260 GETUPVAL                         R15 8
      261 DUPTABLE                         R16 K66 [{"isOpen", "close", "anchorRef"}]
      262 SETTABLEKS                       R3 R16 K63 ["isOpen"]
      264 SETTABLEKS                       R8 R16 K64 ["close"]
      266 SETTABLEKS                       R5 R16 K65 ["anchorRef"]
      268 CALL                             R14 2 1
      269 SETTABLEKS                       R14 R13 K27 ["ParameterPaneInsertNodeMenu"]
      271 CALL                             R10 3 -1
      272 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_AllowNoParameters"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Flags"]
       18 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_ImprovedTranslations"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["ParameterPane"]
       41 GETTABLEKS                       R6 R6 K14 ["Constants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Components"]
       48 GETTABLEKS                       R7 R7 K13 ["ParameterPane"]
       50 GETTABLEKS                       R7 R7 K15 ["ParameterPaneInsertNodeMenu"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Parent"]
       57 GETTABLEKS                       R8 R8 K16 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K9 ["Parent"]
       64 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Flags"]
       71 GETTABLEKS                       R10 R10 K18 ["getFFlagAnimGraphUIResizeParameterPane"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K19 [PROTO_3]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R6
       84 RETURN                           R10 1
