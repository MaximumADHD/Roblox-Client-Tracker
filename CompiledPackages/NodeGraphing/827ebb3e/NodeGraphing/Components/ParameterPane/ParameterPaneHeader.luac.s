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
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K6 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K7 ["useTokens"]
       55 CALL                             R8 0 1
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K8 ["createElement"]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K9 ["View"]
       62 DUPTABLE                         R11 K14 [{["tag"] = "row flex-x-none align-y-center gap-none size-full-600 bg-surface-200", ["Size"], ["LayoutOrder"]}]
       63 GETUPVAL                         R13 3
       64 CALL                             R13 0 1
       65 JUMPIF                           R13 ; [+19]
       66 GETIMPORT                        R12 K17 [UDim2.new]
       68 LOADN                            R13 0
       69 GETUPVAL                         R14 2
       70 GETTABLEKS                       R14 R14 K6 ["Hooks"]
       72 GETTABLEKS                       R14 R14 K18 ["useScaledValue"]
       74 GETUPVAL                         R15 4
       75 GETTABLEKS                       R15 R15 K19 ["PARAMETER_PANE_WIDTH"]
       77 CALL                             R14 1 1
       78 LOADN                            R15 0
       79 GETTABLEKS                       R16 R8 K12 ["Size"]
       81 GETTABLEKS                       R16 R16 K20 ["Size_600"]
       83 CALL                             R12 4 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R12
       86 SETTABLEKS                       R12 R11 K12 ["Size"]
       88 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       90 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       92 DUPTABLE                         R12 K25 [{"ExpandButton", "Title", "AddParameterButton", "ParameterPaneInsertNodeMenu"}]
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K8 ["createElement"]
       96 GETUPVAL                         R14 2
       97 GETTABLEKS                       R14 R14 K26 ["IconButton"]
       99 DUPTABLE                         R15 K35 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["isDisabled"], ["icon"], ["onActivated"], ["testId"] = "ParameterPane-ExpandButton", ["stateLayer"]}]
      100 MOVE                             R16 R1
      101 CALL                             R16 0 1
      102 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R16 R16 K36 ["Enums"]
      107 GETTABLEKS                       R16 R16 K37 ["InputSize"]
      109 GETTABLEKS                       R16 R16 K38 ["XSmall"]
      111 SETTABLEKS                       R16 R15 K28 ["size"]
      113 GETTABLEKS                       R17 R0 K39 ["canExpand"]
      115 NOT                              R16 R17
      116 SETTABLEKS                       R16 R15 K29 ["isDisabled"]
      118 GETTABLEKS                       R17 R0 K5 ["expanded"]
      120 JUMPIFNOT                        R17 ; [+8]
      121 GETUPVAL                         R16 2
      122 GETTABLEKS                       R16 R16 K36 ["Enums"]
      124 GETTABLEKS                       R16 R16 K40 ["IconName"]
      126 GETTABLEKS                       R16 R16 K41 ["ChevronSmallDown"]
      128 JUMP                             ; [+7]
      129 GETUPVAL                         R16 2
      130 GETTABLEKS                       R16 R16 K36 ["Enums"]
      132 GETTABLEKS                       R16 R16 K40 ["IconName"]
      134 GETTABLEKS                       R16 R16 K42 ["ChevronSmallRight"]
      136 SETTABLEKS                       R16 R15 K30 ["icon"]
      138 SETTABLEKS                       R5 R15 K31 ["onActivated"]
      140 DUPTABLE                         R16 K44 [{"affordance"}]
      141 GETUPVAL                         R17 2
      142 GETTABLEKS                       R17 R17 K36 ["Enums"]
      144 GETTABLEKS                       R17 R17 K45 ["StateLayerAffordance"]
      146 GETTABLEKS                       R17 R17 K46 ["None"]
      148 SETTABLEKS                       R17 R16 K43 ["affordance"]
      150 SETTABLEKS                       R16 R15 K34 ["stateLayer"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K21 ["ExpandButton"]
      155 GETUPVAL                         R13 1
      156 GETTABLEKS                       R13 R13 K8 ["createElement"]
      158 GETUPVAL                         R14 2
      159 GETTABLEKS                       R14 R14 K47 ["Text"]
      161 DUPTABLE                         R15 K50 [{["tag"] = "grow text-title-small text-align-x-left", ["LayoutOrder"], ["Text"] = "Parameters"}]
      162 MOVE                             R16 R1
      163 CALL                             R16 0 1
      164 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      166 CALL                             R13 2 1
      167 SETTABLEKS                       R13 R12 K22 ["Title"]
      169 GETTABLEKS                       R14 R0 K51 ["readonly"]
      171 JUMPIFNOT                        R14 ; [+2]
      172 LOADNIL                          R13
      173 JUMP                             ; [+55]
      174 GETUPVAL                         R13 1
      175 GETTABLEKS                       R13 R13 K8 ["createElement"]
      177 GETUPVAL                         R14 2
      178 GETTABLEKS                       R14 R14 K26 ["IconButton"]
      180 DUPTABLE                         R15 K54 [{["LayoutOrder"], ["tag"] = "shrink", ["size"], ["icon"], ["onActivated"], ["isDisabled"], ["testId"] = "ParameterPane-AddParameterButton", ["ref"], ["stateLayer"]}]
      181 MOVE                             R16 R1
      182 CALL                             R16 0 1
      183 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      185 GETUPVAL                         R16 2
      186 GETTABLEKS                       R16 R16 K36 ["Enums"]
      188 GETTABLEKS                       R16 R16 K37 ["InputSize"]
      190 GETTABLEKS                       R16 R16 K38 ["XSmall"]
      192 SETTABLEKS                       R16 R15 K28 ["size"]
      194 GETUPVAL                         R16 2
      195 GETTABLEKS                       R16 R16 K36 ["Enums"]
      197 GETTABLEKS                       R16 R16 K40 ["IconName"]
      199 GETTABLEKS                       R16 R16 K55 ["PlusSmall"]
      201 SETTABLEKS                       R16 R15 K30 ["icon"]
      203 SETTABLEKS                       R6 R15 K31 ["onActivated"]
      205 GETUPVAL                         R17 5
      206 JUMPIFNOT                        R17 ; [+2]
      207 LOADNIL                          R16
      208 JUMP                             ; [+3]
      209 GETTABLEKS                       R17 R0 K56 ["DEPRECATED_canAddParameter"]
      211 NOT                              R16 R17
      212 SETTABLEKS                       R16 R15 K29 ["isDisabled"]
      214 SETTABLEKS                       R4 R15 K53 ["ref"]
      216 DUPTABLE                         R16 K44 [{"affordance"}]
      217 GETUPVAL                         R17 2
      218 GETTABLEKS                       R17 R17 K36 ["Enums"]
      220 GETTABLEKS                       R17 R17 K45 ["StateLayerAffordance"]
      222 GETTABLEKS                       R17 R17 K46 ["None"]
      224 SETTABLEKS                       R17 R16 K43 ["affordance"]
      226 SETTABLEKS                       R16 R15 K34 ["stateLayer"]
      228 CALL                             R13 2 1
      229 SETTABLEKS                       R13 R12 K23 ["AddParameterButton"]
      231 GETTABLEKS                       R14 R0 K51 ["readonly"]
      233 JUMPIFNOT                        R14 ; [+2]
      234 LOADNIL                          R13
      235 JUMP                             ; [+12]
      236 GETUPVAL                         R13 1
      237 GETTABLEKS                       R13 R13 K8 ["createElement"]
      239 GETUPVAL                         R14 6
      240 DUPTABLE                         R15 K60 [{"isOpen", "close", "anchorRef"}]
      241 SETTABLEKS                       R2 R15 K57 ["isOpen"]
      243 SETTABLEKS                       R7 R15 K58 ["close"]
      245 SETTABLEKS                       R4 R15 K59 ["anchorRef"]
      247 CALL                             R13 2 1
      248 SETTABLEKS                       R13 R12 K24 ["ParameterPaneInsertNodeMenu"]
      250 CALL                             R9 3 -1
      251 RETURN                           R9 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["ParameterPane"]
       27 GETTABLEKS                       R4 R4 K12 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Components"]
       34 GETTABLEKS                       R5 R5 K11 ["ParameterPane"]
       36 GETTABLEKS                       R5 R5 K13 ["ParameterPaneInsertNodeMenu"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Flags"]
       57 GETTABLEKS                       R8 R8 K16 ["getFFlagAnimGraphUIResizeParameterPane"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K17 [PROTO_3]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R4
       68 RETURN                           R8 1
