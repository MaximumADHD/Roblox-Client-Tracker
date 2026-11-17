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
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K9 ["createElement"]
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R10 R10 K10 ["View"]
       64 DUPTABLE                         R11 K14 [{["tag"] = "row flex-x-none align-y-center gap-none size-full-600 bg-surface-200", ["LayoutOrder"]}]
       65 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       67 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       69 DUPTABLE                         R12 K19 [{"ExpandButton", "Title", "AddParameterButton", "ParameterPaneInsertNodeMenu"}]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K9 ["createElement"]
       73 GETUPVAL                         R14 3
       74 GETTABLEKS                       R14 R14 K20 ["IconButton"]
       76 DUPTABLE                         R15 K29 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["isDisabled"], ["icon"], ["onActivated"], ["testId"] = "ParameterPane-ExpandButton", ["stateLayer"]}]
       77 MOVE                             R16 R1
       78 CALL                             R16 0 1
       79 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       81 GETUPVAL                         R16 3
       82 GETTABLEKS                       R16 R16 K30 ["Enums"]
       84 GETTABLEKS                       R16 R16 K31 ["InputSize"]
       86 GETTABLEKS                       R16 R16 K32 ["XSmall"]
       88 SETTABLEKS                       R16 R15 K22 ["size"]
       90 GETTABLEKS                       R17 R0 K33 ["canExpand"]
       92 NOT                              R16 R17
       93 SETTABLEKS                       R16 R15 K23 ["isDisabled"]
       95 GETTABLEKS                       R17 R0 K8 ["expanded"]
       97 JUMPIFNOT                        R17 ; [+8]
       98 GETUPVAL                         R16 3
       99 GETTABLEKS                       R16 R16 K30 ["Enums"]
      101 GETTABLEKS                       R16 R16 K34 ["IconName"]
      103 GETTABLEKS                       R16 R16 K35 ["ChevronSmallDown"]
      105 JUMP                             ; [+7]
      106 GETUPVAL                         R16 3
      107 GETTABLEKS                       R16 R16 K30 ["Enums"]
      109 GETTABLEKS                       R16 R16 K34 ["IconName"]
      111 GETTABLEKS                       R16 R16 K36 ["ChevronSmallRight"]
      113 SETTABLEKS                       R16 R15 K24 ["icon"]
      115 SETTABLEKS                       R6 R15 K25 ["onActivated"]
      117 DUPTABLE                         R16 K38 [{"affordance"}]
      118 GETUPVAL                         R17 3
      119 GETTABLEKS                       R17 R17 K30 ["Enums"]
      121 GETTABLEKS                       R17 R17 K39 ["StateLayerAffordance"]
      123 GETTABLEKS                       R17 R17 K40 ["None"]
      125 SETTABLEKS                       R17 R16 K37 ["affordance"]
      127 SETTABLEKS                       R16 R15 K28 ["stateLayer"]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K15 ["ExpandButton"]
      132 GETUPVAL                         R13 2
      133 GETTABLEKS                       R13 R13 K9 ["createElement"]
      135 GETUPVAL                         R14 3
      136 GETTABLEKS                       R14 R14 K41 ["Text"]
      138 DUPTABLE                         R15 K43 [{["tag"] = "grow text-title-small text-align-x-left", ["LayoutOrder"], ["Text"]}]
      139 MOVE                             R16 R1
      140 CALL                             R16 0 1
      141 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      143 GETUPVAL                         R17 4
      144 JUMPIFNOT                        R17 ; [+8]
      145 LOADK                            R18 K44 ["Common"]
      146 LOADK                            R19 K45 ["AnimationEditor"]
      147 LOADK                            R20 K46 ["Parameters"]
      148 LOADK                            R21 K16 ["Title"]
      149 NAMECALL                         R16 R2 K47 ["getExternalText"]
      151 CALL                             R16 5 1
      152 JUMP                             ; [+1]
      153 LOADK                            R16 K46 ["Parameters"]
      154 SETTABLEKS                       R16 R15 K41 ["Text"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K16 ["Title"]
      159 GETUPVAL                         R13 2
      160 GETTABLEKS                       R13 R13 K9 ["createElement"]
      162 GETUPVAL                         R14 3
      163 GETTABLEKS                       R14 R14 K20 ["IconButton"]
      165 DUPTABLE                         R15 K50 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["icon"], ["onActivated"], ["testId"] = "ParameterPane-AddParameterButton", ["ref"], ["stateLayer"]}]
      166 MOVE                             R16 R1
      167 CALL                             R16 0 1
      168 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      170 GETUPVAL                         R16 3
      171 GETTABLEKS                       R16 R16 K30 ["Enums"]
      173 GETTABLEKS                       R16 R16 K31 ["InputSize"]
      175 GETTABLEKS                       R16 R16 K32 ["XSmall"]
      177 SETTABLEKS                       R16 R15 K22 ["size"]
      179 GETUPVAL                         R16 3
      180 GETTABLEKS                       R16 R16 K30 ["Enums"]
      182 GETTABLEKS                       R16 R16 K34 ["IconName"]
      184 GETTABLEKS                       R16 R16 K51 ["PlusSmall"]
      186 SETTABLEKS                       R16 R15 K24 ["icon"]
      188 SETTABLEKS                       R7 R15 K25 ["onActivated"]
      190 SETTABLEKS                       R5 R15 K49 ["ref"]
      192 DUPTABLE                         R16 K38 [{"affordance"}]
      193 GETUPVAL                         R17 3
      194 GETTABLEKS                       R17 R17 K30 ["Enums"]
      196 GETTABLEKS                       R17 R17 K39 ["StateLayerAffordance"]
      198 GETTABLEKS                       R17 R17 K40 ["None"]
      200 SETTABLEKS                       R17 R16 K37 ["affordance"]
      202 SETTABLEKS                       R16 R15 K28 ["stateLayer"]
      204 CALL                             R13 2 1
      205 SETTABLEKS                       R13 R12 K17 ["AddParameterButton"]
      207 GETUPVAL                         R13 2
      208 GETTABLEKS                       R13 R13 K9 ["createElement"]
      210 GETUPVAL                         R14 5
      211 DUPTABLE                         R15 K55 [{"isOpen", "close", "anchorRef"}]
      212 SETTABLEKS                       R3 R15 K52 ["isOpen"]
      214 SETTABLEKS                       R8 R15 K53 ["close"]
      216 SETTABLEKS                       R5 R15 K54 ["anchorRef"]
      218 CALL                             R13 2 1
      219 SETTABLEKS                       R13 R12 K18 ["ParameterPaneInsertNodeMenu"]
      221 CALL                             R9 3 -1
      222 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_ImprovedTranslations"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["ParameterPane"]
       34 GETTABLEKS                       R5 R5 K13 ["ParameterPaneInsertNodeMenu"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K16 [PROTO_3]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 RETURN                           R7 1
