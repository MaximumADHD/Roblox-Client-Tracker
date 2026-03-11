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
       15 GETTABLEKS                       R5 R6 K3 ["createElement"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K4 ["View"]
       20 DUPTABLE                         R7 K8 [{"tag", "Size", "LayoutOrder"}]
       21 LOADK                            R8 K9 ["bg-surface-100 row stroke-muted align-x-center align-y-center gap-xsmall items-stretch flex-between radius-small"]
       22 SETTABLEKS                       R8 R7 K5 ["tag"]
       24 GETIMPORT                        R8 K12 [UDim2.new]
       26 LOADN                            R9 0
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R11 R12 K13 ["Hooks"]
       30 GETTABLEKS                       R10 R11 K14 ["useScaledValue"]
       32 GETUPVAL                         R12 3
       33 GETTABLEKS                       R11 R12 K15 ["PARAMETER_PANE_WIDTH"]
       35 CALL                             R10 1 1
       36 LOADN                            R11 0
       37 GETUPVAL                         R16 2
       38 GETTABLEKS                       R15 R16 K13 ["Hooks"]
       40 GETTABLEKS                       R14 R15 K16 ["useTokens"]
       42 CALL                             R14 0 1
       43 GETTABLEKS                       R13 R14 K6 ["Size"]
       45 GETTABLEKS                       R12 R13 K17 ["Size_600"]
       47 CALL                             R8 4 1
       48 SETTABLEKS                       R8 R7 K6 ["Size"]
       50 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       54 DUPTABLE                         R8 K22 [{"ExpandButton", "Title", "AddParameterButton", "ParameterPaneInsertNodeMenu"}]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K3 ["createElement"]
       58 GETUPVAL                         R11 2
       59 GETTABLEKS                       R10 R11 K23 ["IconButton"]
       61 DUPTABLE                         R11 K28 [{"LayoutOrder", "size", "icon", "onActivated", "testId"}]
       62 MOVE                             R12 R1
       63 CALL                             R12 0 1
       64 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       66 GETUPVAL                         R15 2
       67 GETTABLEKS                       R14 R15 K29 ["Enums"]
       69 GETTABLEKS                       R13 R14 K30 ["InputSize"]
       71 GETTABLEKS                       R12 R13 K31 ["XSmall"]
       73 SETTABLEKS                       R12 R11 K24 ["size"]
       75 GETTABLEKS                       R13 R0 K32 ["expanded"]
       77 JUMPIFNOT                        R13 ; [+2]
       78 LOADK                            R12 K33 ["icons/actions/truncationExpand_small"]
       79 JUMP                             ; [+1]
       80 LOADK                            R12 K34 ["icons/actions/cycleRight_small"]
       81 SETTABLEKS                       R12 R11 K25 ["icon"]
       83 NEWCLOSURE                       R12 P0
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R12 R11 K26 ["onActivated"]
       87 LOADK                            R12 K35 ["ParameterPane-ExpandButton"]
       88 SETTABLEKS                       R12 R11 K27 ["testId"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K18 ["ExpandButton"]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R9 R10 K3 ["createElement"]
       96 GETUPVAL                         R11 2
       97 GETTABLEKS                       R10 R11 K36 ["Text"]
       99 DUPTABLE                         R11 K37 [{"tag", "Size", "LayoutOrder", "Text"}]
      100 LOADK                            R12 K38 ["text-title-small text-align-x-left auto-y"]
      101 SETTABLEKS                       R12 R11 K5 ["tag"]
      103 GETIMPORT                        R12 K12 [UDim2.new]
      105 LOADN                            R13 0
      106 GETUPVAL                         R16 2
      107 GETTABLEKS                       R15 R16 K13 ["Hooks"]
      109 GETTABLEKS                       R14 R15 K14 ["useScaledValue"]
      111 GETUPVAL                         R16 3
      112 GETTABLEKS                       R15 R16 K39 ["PARAMETER_PANE_HEADER_TITLE_WIDTH"]
      114 CALL                             R14 1 1
      115 LOADN                            R15 0
      116 LOADN                            R16 0
      117 CALL                             R12 4 1
      118 SETTABLEKS                       R12 R11 K6 ["Size"]
      120 MOVE                             R12 R1
      121 CALL                             R12 0 1
      122 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      124 LOADK                            R12 K40 ["Parameters"]
      125 SETTABLEKS                       R12 R11 K36 ["Text"]
      127 CALL                             R9 2 1
      128 SETTABLEKS                       R9 R8 K19 ["Title"]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R9 R10 K3 ["createElement"]
      133 GETUPVAL                         R11 2
      134 GETTABLEKS                       R10 R11 K23 ["IconButton"]
      136 DUPTABLE                         R11 K42 [{"LayoutOrder", "size", "icon", "onActivated", "testId", "ref"}]
      137 MOVE                             R12 R1
      138 CALL                             R12 0 1
      139 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      141 GETUPVAL                         R15 2
      142 GETTABLEKS                       R14 R15 K29 ["Enums"]
      144 GETTABLEKS                       R13 R14 K30 ["InputSize"]
      146 GETTABLEKS                       R12 R13 K31 ["XSmall"]
      148 SETTABLEKS                       R12 R11 K24 ["size"]
      150 LOADK                            R12 K43 ["icons/common/plus_small"]
      151 SETTABLEKS                       R12 R11 K25 ["icon"]
      153 NEWCLOSURE                       R12 P1
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R12 R11 K26 ["onActivated"]
      157 LOADK                            R12 K44 ["ParameterPane-AddParameterButton"]
      158 SETTABLEKS                       R12 R11 K27 ["testId"]
      160 SETTABLEKS                       R4 R11 K41 ["ref"]
      162 CALL                             R9 2 1
      163 SETTABLEKS                       R9 R8 K20 ["AddParameterButton"]
      165 GETUPVAL                         R10 1
      166 GETTABLEKS                       R9 R10 K3 ["createElement"]
      168 GETUPVAL                         R10 4
      169 DUPTABLE                         R11 K48 [{"isOpen", "close", "anchorRef"}]
      170 SETTABLEKS                       R2 R11 K45 ["isOpen"]
      172 NEWCLOSURE                       R12 P2
      173 CAPTURE                          VAL R3
      174 SETTABLEKS                       R12 R11 K46 ["close"]
      176 SETTABLEKS                       R4 R11 K47 ["anchorRef"]
      178 CALL                             R9 2 1
      179 SETTABLEKS                       R9 R8 K21 ["ParameterPaneInsertNodeMenu"]
      181 CALL                             R5 3 -1
      182 RETURN                           R5 -1

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
