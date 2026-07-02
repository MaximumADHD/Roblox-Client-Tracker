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
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R7 0 2
       21 GETTABLEKS                       R8 R0 K4 ["setExpanded"]
       23 GETTABLEKS                       R9 R0 K5 ["expanded"]
       25 SETLIST                          R7 R8 2 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R3
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 1
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R9 0 1
       46 MOVE                             R10 R3
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K6 ["createElement"]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K7 ["View"]
       56 DUPTABLE                         R10 K12 [{["tag"] = "row flex-x-none align-y-center gap-none size-full-600 bg-surface-200", ["Size"], ["LayoutOrder"]}]
       57 GETIMPORT                        R11 K15 [UDim2.new]
       59 LOADN                            R12 0
       60 GETUPVAL                         R13 2
       61 GETTABLEKS                       R13 R13 K16 ["Hooks"]
       63 GETTABLEKS                       R13 R13 K17 ["useScaledValue"]
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R14 R14 K18 ["PARAMETER_PANE_WIDTH"]
       68 CALL                             R13 1 1
       69 LOADN                            R14 0
       70 GETUPVAL                         R15 2
       71 GETTABLEKS                       R15 R15 K16 ["Hooks"]
       73 GETTABLEKS                       R15 R15 K19 ["useTokens"]
       75 CALL                             R15 0 1
       76 GETTABLEKS                       R15 R15 K10 ["Size"]
       78 GETTABLEKS                       R15 R15 K20 ["Size_600"]
       80 CALL                             R11 4 1
       81 SETTABLEKS                       R11 R10 K10 ["Size"]
       83 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       85 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       87 DUPTABLE                         R11 K25 [{"ExpandButton", "Title", "AddParameterButton", "ParameterPaneInsertNodeMenu"}]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R12 R12 K6 ["createElement"]
       91 GETUPVAL                         R13 2
       92 GETTABLEKS                       R13 R13 K26 ["IconButton"]
       94 DUPTABLE                         R14 K35 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["isDisabled"], ["icon"], ["onActivated"], ["testId"] = "ParameterPane-ExpandButton", ["stateLayer"]}]
       95 MOVE                             R15 R1
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R15 R15 K36 ["Enums"]
      102 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      104 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      106 SETTABLEKS                       R15 R14 K28 ["size"]
      108 GETTABLEKS                       R16 R0 K39 ["canExpand"]
      110 NOT                              R15 R16
      111 SETTABLEKS                       R15 R14 K29 ["isDisabled"]
      113 GETTABLEKS                       R16 R0 K5 ["expanded"]
      115 JUMPIFNOT                        R16 ; [+8]
      116 GETUPVAL                         R15 2
      117 GETTABLEKS                       R15 R15 K36 ["Enums"]
      119 GETTABLEKS                       R15 R15 K40 ["IconName"]
      121 GETTABLEKS                       R15 R15 K41 ["ChevronSmallDown"]
      123 JUMP                             ; [+7]
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R15 R15 K36 ["Enums"]
      127 GETTABLEKS                       R15 R15 K40 ["IconName"]
      129 GETTABLEKS                       R15 R15 K42 ["ChevronSmallRight"]
      131 SETTABLEKS                       R15 R14 K30 ["icon"]
      133 SETTABLEKS                       R5 R14 K31 ["onActivated"]
      135 DUPTABLE                         R15 K44 [{"affordance"}]
      136 GETUPVAL                         R16 2
      137 GETTABLEKS                       R16 R16 K36 ["Enums"]
      139 GETTABLEKS                       R16 R16 K45 ["StateLayerAffordance"]
      141 GETTABLEKS                       R16 R16 K46 ["None"]
      143 SETTABLEKS                       R16 R15 K43 ["affordance"]
      145 SETTABLEKS                       R15 R14 K34 ["stateLayer"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K21 ["ExpandButton"]
      150 GETUPVAL                         R12 1
      151 GETTABLEKS                       R12 R12 K6 ["createElement"]
      153 GETUPVAL                         R13 2
      154 GETTABLEKS                       R13 R13 K47 ["Text"]
      156 DUPTABLE                         R14 K50 [{["tag"] = "grow text-title-small text-align-x-left", ["LayoutOrder"], ["Text"] = "Parameters"}]
      157 MOVE                             R15 R1
      158 CALL                             R15 0 1
      159 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K22 ["Title"]
      164 GETUPVAL                         R12 1
      165 GETTABLEKS                       R12 R12 K6 ["createElement"]
      167 GETUPVAL                         R13 2
      168 GETTABLEKS                       R13 R13 K26 ["IconButton"]
      170 DUPTABLE                         R14 K53 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["icon"], ["onActivated"], ["isDisabled"], ["testId"] = "ParameterPane-AddParameterButton", ["ref"], ["stateLayer"]}]
      171 MOVE                             R15 R1
      172 CALL                             R15 0 1
      173 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      175 GETUPVAL                         R15 2
      176 GETTABLEKS                       R15 R15 K36 ["Enums"]
      178 GETTABLEKS                       R15 R15 K37 ["InputSize"]
      180 GETTABLEKS                       R15 R15 K38 ["XSmall"]
      182 SETTABLEKS                       R15 R14 K28 ["size"]
      184 GETUPVAL                         R15 2
      185 GETTABLEKS                       R15 R15 K36 ["Enums"]
      187 GETTABLEKS                       R15 R15 K40 ["IconName"]
      189 GETTABLEKS                       R15 R15 K54 ["PlusSmall"]
      191 SETTABLEKS                       R15 R14 K30 ["icon"]
      193 SETTABLEKS                       R6 R14 K31 ["onActivated"]
      195 GETTABLEKS                       R16 R0 K55 ["canAddParameter"]
      197 NOT                              R15 R16
      198 SETTABLEKS                       R15 R14 K29 ["isDisabled"]
      200 SETTABLEKS                       R4 R14 K52 ["ref"]
      202 DUPTABLE                         R15 K44 [{"affordance"}]
      203 GETUPVAL                         R16 2
      204 GETTABLEKS                       R16 R16 K36 ["Enums"]
      206 GETTABLEKS                       R16 R16 K45 ["StateLayerAffordance"]
      208 GETTABLEKS                       R16 R16 K46 ["None"]
      210 SETTABLEKS                       R16 R15 K43 ["affordance"]
      212 SETTABLEKS                       R15 R14 K34 ["stateLayer"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K23 ["AddParameterButton"]
      217 GETUPVAL                         R12 1
      218 GETTABLEKS                       R12 R12 K6 ["createElement"]
      220 GETUPVAL                         R13 4
      221 DUPTABLE                         R14 K59 [{"isOpen", "close", "anchorRef"}]
      222 SETTABLEKS                       R2 R14 K56 ["isOpen"]
      224 SETTABLEKS                       R7 R14 K57 ["close"]
      226 SETTABLEKS                       R4 R14 K58 ["anchorRef"]
      228 CALL                             R12 2 1
      229 SETTABLEKS                       R12 R11 K24 ["ParameterPaneInsertNodeMenu"]
      231 CALL                             R8 3 -1
      232 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ParameterPane"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K9 ["ParameterPane"]
       29 GETTABLEKS                       R4 R4 K11 ["ParameterPaneInsertNodeMenu"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K14 [PROTO_3]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 RETURN                           R6 1
