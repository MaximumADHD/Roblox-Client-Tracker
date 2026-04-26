PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setExpanded"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["expanded"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R7 0 2
       21 GETTABLEKS                       R8 R0 K4 ["setExpanded"]
       23 GETTABLEKS                       R9 R0 K5 ["expanded"]
       25 SETLIST                          R7 R8 2 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R3
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R9 0 1
       46 MOVE                             R10 R3
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R8 R9 K6 ["createElement"]
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R9 R10 K7 ["View"]
       56 DUPTABLE                         R10 K11 [{"tag", "Size", "LayoutOrder"}]
       57 LOADK                            R11 K12 ["bg-surface-200 row align-y-center gap-none size-full-600 flex-x-none"]
       58 SETTABLEKS                       R11 R10 K8 ["tag"]
       60 GETIMPORT                        R11 K15 [UDim2.new]
       62 LOADN                            R12 0
       63 GETUPVAL                         R15 2
       64 GETTABLEKS                       R14 R15 K16 ["Hooks"]
       66 GETTABLEKS                       R13 R14 K17 ["useScaledValue"]
       68 GETUPVAL                         R15 3
       69 GETTABLEKS                       R14 R15 K18 ["PARAMETER_PANE_WIDTH"]
       71 CALL                             R13 1 1
       72 LOADN                            R14 0
       73 GETUPVAL                         R19 2
       74 GETTABLEKS                       R18 R19 K16 ["Hooks"]
       76 GETTABLEKS                       R17 R18 K19 ["useTokens"]
       78 CALL                             R17 0 1
       79 GETTABLEKS                       R16 R17 K9 ["Size"]
       81 GETTABLEKS                       R15 R16 K20 ["Size_600"]
       83 CALL                             R11 4 1
       84 SETTABLEKS                       R11 R10 K9 ["Size"]
       86 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       88 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       90 DUPTABLE                         R11 K25 [{"ExpandButton", "Title", "AddParameterButton", "ParameterPaneInsertNodeMenu"}]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R12 R13 K6 ["createElement"]
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R13 R14 K26 ["IconButton"]
       97 DUPTABLE                         R14 K33 [{"LayoutOrder", "tag", "size", "isDisabled", "icon", "onActivated", "testId", "stateLayer"}]
       98 MOVE                             R15 R1
       99 CALL                             R15 0 1
      100 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      102 LOADK                            R15 K34 ["shrink"]
      103 SETTABLEKS                       R15 R14 K8 ["tag"]
      105 GETUPVAL                         R18 2
      106 GETTABLEKS                       R17 R18 K35 ["Enums"]
      108 GETTABLEKS                       R16 R17 K36 ["InputSize"]
      110 GETTABLEKS                       R15 R16 K37 ["XSmall"]
      112 SETTABLEKS                       R15 R14 K27 ["size"]
      114 GETTABLEKS                       R16 R0 K38 ["canExpand"]
      116 NOT                              R15 R16
      117 SETTABLEKS                       R15 R14 K28 ["isDisabled"]
      119 GETTABLEKS                       R16 R0 K5 ["expanded"]
      121 JUMPIFNOT                        R16 ; [+8]
      122 GETUPVAL                         R18 2
      123 GETTABLEKS                       R17 R18 K35 ["Enums"]
      125 GETTABLEKS                       R16 R17 K39 ["IconName"]
      127 GETTABLEKS                       R15 R16 K40 ["ChevronSmallDown"]
      129 JUMP                             ; [+7]
      130 GETUPVAL                         R18 2
      131 GETTABLEKS                       R17 R18 K35 ["Enums"]
      133 GETTABLEKS                       R16 R17 K39 ["IconName"]
      135 GETTABLEKS                       R15 R16 K41 ["ChevronSmallRight"]
      137 SETTABLEKS                       R15 R14 K29 ["icon"]
      139 SETTABLEKS                       R5 R14 K30 ["onActivated"]
      141 LOADK                            R15 K42 ["ParameterPane-ExpandButton"]
      142 SETTABLEKS                       R15 R14 K31 ["testId"]
      144 DUPTABLE                         R15 K44 [{"affordance"}]
      145 GETUPVAL                         R19 2
      146 GETTABLEKS                       R18 R19 K35 ["Enums"]
      148 GETTABLEKS                       R17 R18 K45 ["StateLayerAffordance"]
      150 GETTABLEKS                       R16 R17 K46 ["None"]
      152 SETTABLEKS                       R16 R15 K43 ["affordance"]
      154 SETTABLEKS                       R15 R14 K32 ["stateLayer"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K21 ["ExpandButton"]
      159 GETUPVAL                         R13 1
      160 GETTABLEKS                       R12 R13 K6 ["createElement"]
      162 GETUPVAL                         R14 2
      163 GETTABLEKS                       R13 R14 K47 ["Text"]
      165 DUPTABLE                         R14 K48 [{"tag", "LayoutOrder", "Text"}]
      166 LOADK                            R15 K49 ["text-title-small grow text-align-x-left"]
      167 SETTABLEKS                       R15 R14 K8 ["tag"]
      169 MOVE                             R15 R1
      170 CALL                             R15 0 1
      171 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      173 LOADK                            R15 K50 ["Parameters"]
      174 SETTABLEKS                       R15 R14 K47 ["Text"]
      176 CALL                             R12 2 1
      177 SETTABLEKS                       R12 R11 K22 ["Title"]
      179 GETUPVAL                         R13 1
      180 GETTABLEKS                       R12 R13 K6 ["createElement"]
      182 GETUPVAL                         R14 2
      183 GETTABLEKS                       R13 R14 K26 ["IconButton"]
      185 DUPTABLE                         R14 K52 [{"LayoutOrder", "tag", "size", "icon", "onActivated", "isDisabled", "testId", "ref", "stateLayer"}]
      186 MOVE                             R15 R1
      187 CALL                             R15 0 1
      188 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      190 LOADK                            R15 K34 ["shrink"]
      191 SETTABLEKS                       R15 R14 K8 ["tag"]
      193 GETUPVAL                         R18 2
      194 GETTABLEKS                       R17 R18 K35 ["Enums"]
      196 GETTABLEKS                       R16 R17 K36 ["InputSize"]
      198 GETTABLEKS                       R15 R16 K37 ["XSmall"]
      200 SETTABLEKS                       R15 R14 K27 ["size"]
      202 GETUPVAL                         R18 2
      203 GETTABLEKS                       R17 R18 K35 ["Enums"]
      205 GETTABLEKS                       R16 R17 K39 ["IconName"]
      207 GETTABLEKS                       R15 R16 K53 ["PlusSmall"]
      209 SETTABLEKS                       R15 R14 K29 ["icon"]
      211 SETTABLEKS                       R6 R14 K30 ["onActivated"]
      213 GETTABLEKS                       R16 R0 K54 ["canAddParameter"]
      215 NOT                              R15 R16
      216 SETTABLEKS                       R15 R14 K28 ["isDisabled"]
      218 LOADK                            R15 K55 ["ParameterPane-AddParameterButton"]
      219 SETTABLEKS                       R15 R14 K31 ["testId"]
      221 SETTABLEKS                       R4 R14 K51 ["ref"]
      223 DUPTABLE                         R15 K44 [{"affordance"}]
      224 GETUPVAL                         R19 2
      225 GETTABLEKS                       R18 R19 K35 ["Enums"]
      227 GETTABLEKS                       R17 R18 K45 ["StateLayerAffordance"]
      229 GETTABLEKS                       R16 R17 K46 ["None"]
      231 SETTABLEKS                       R16 R15 K43 ["affordance"]
      233 SETTABLEKS                       R15 R14 K32 ["stateLayer"]
      235 CALL                             R12 2 1
      236 SETTABLEKS                       R12 R11 K23 ["AddParameterButton"]
      238 GETUPVAL                         R13 1
      239 GETTABLEKS                       R12 R13 K6 ["createElement"]
      241 GETUPVAL                         R13 4
      242 DUPTABLE                         R14 K59 [{"isOpen", "close", "anchorRef"}]
      243 SETTABLEKS                       R2 R14 K56 ["isOpen"]
      245 SETTABLEKS                       R7 R14 K57 ["close"]
      247 SETTABLEKS                       R4 R14 K58 ["anchorRef"]
      249 CALL                             R12 2 1
      250 SETTABLEKS                       R12 R11 K24 ["ParameterPaneInsertNodeMenu"]
      252 CALL                             R8 3 -1
      253 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["ParameterPane"]
       22 GETTABLEKS                       R3 R4 K11 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K6 ["Parent"]
       31 GETTABLEKS                       R4 R5 K12 ["ParameterPaneInsertNodeMenu"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Parent"]
       38 GETTABLEKS                       R5 R6 K13 ["React"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_3]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 RETURN                           R6 1
