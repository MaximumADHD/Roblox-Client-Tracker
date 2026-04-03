PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setContentGrid"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setContentGrid"]
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U1
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        7 GETTABLEKS                       R2 R3 K1 ["Browser"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 GETUPVAL                         R6 3
       13 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       15 CALL                             R0 6 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R2 5
       19 NAMECALL                         R0 R0 K3 ["handleRightClick"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R4 K5 [{"Cell", "ParentScope", "Key", "Size", "Position"}]
        1 SETTABLEKS                       R0 R4 K0 ["Cell"]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K1 ["ParentScope"]
        6 SETTABLEKS                       R1 R4 K2 ["Key"]
        8 SETTABLEKS                       R3 R4 K3 ["Size"]
       10 SETTABLEKS                       R2 R4 K4 ["Position"]
       12 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["requestNextPage"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 LOADNIL                          R5
       17 GETUPVAL                         R6 4
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 MOVE                             R5 R6
       23 GETUPVAL                         R6 6
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 7
       26 CALL                             R7 0 1
       27 GETTABLEKS                       R8 R7 K1 ["GridSize"]
       29 GETUPVAL                         R10 8
       30 LOADK                            R12 K2 ["CellHeightDiff"]
       31 NAMECALL                         R10 R10 K3 ["GetAttribute"]
       33 CALL                             R10 2 1
       34 ADD                              R9 R8 R10
       35 GETUPVAL                         R11 9
       36 GETTABLEKS                       R10 R11 K4 ["AMR_GRIDCELL_PADDING"]
       38 GETUPVAL                         R11 10
       39 GETUPVAL                         R14 11
       40 GETTABLEKS                       R13 R14 K5 ["MenuContext"]
       42 GETTABLEKS                       R12 R13 K6 ["Asset"]
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 12
       46 LOADNIL                          R13
       47 CALL                             R12 1 1
       48 GETUPVAL                         R13 13
       49 NEWCLOSURE                       R14 P0
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R15 0 1
       54 GETTABLEKS                       R16 R12 K7 ["current"]
       56 SETLIST                          R15 R16 1 [1]
       58 CALL                             R13 2 0
       59 GETUPVAL                         R14 14
       60 GETTABLEKS                       R13 R14 K8 ["createElement"]
       62 GETUPVAL                         R14 15
       63 NEWTABLE                         R15 4 0
       65 GETTABLEKS                       R16 R0 K9 ["LayoutOrder"]
       67 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       69 NEWCLOSURE                       R16 P1
       70 CAPTURE                          UPVAL U16
       71 CAPTURE                          VAL R2
       72 CAPTURE                          UPVAL U11
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R16 R15 K10 ["OnRightClick"]
       78 GETUPVAL                         R17 14
       79 GETTABLEKS                       R16 R17 K11 ["Tag"]
       81 LOADK                            R18 K12 ["ContentGrid X-Top X-Column X-Center %*"]
       82 GETUPVAL                         R22 14
       83 GETTABLEKS                       R21 R22 K11 ["Tag"]
       85 GETTABLE                         R20 R0 R21
       86 NAMECALL                         R18 R18 K13 ["format"]
       88 CALL                             R18 2 1
       89 MOVE                             R17 R18
       90 SETTABLE                         R17 R15 R16
       91 DUPTABLE                         R16 K15 [{"View"}]
       92 GETUPVAL                         R18 14
       93 GETTABLEKS                       R17 R18 K8 ["createElement"]
       95 GETUPVAL                         R18 17
       96 DUPTABLE                         R19 K23 [{"Cells", "CellSize", "CellPadding", "GetCellProps", "CellComponent", "OnLoadRange", "ref"}]
       97 SETTABLEKS                       R6 R19 K16 ["Cells"]
       99 GETIMPORT                        R20 K26 [UDim2.fromOffset]
      101 MOVE                             R21 R8
      102 MOVE                             R22 R9
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K17 ["CellSize"]
      106 SETTABLEKS                       R10 R19 K18 ["CellPadding"]
      108 GETUPVAL                         R21 4
      109 CALL                             R21 0 1
      110 JUMPIFNOT                        R21 ; [+3]
      111 NEWCLOSURE                       R20 P2
      112 CAPTURE                          REF R5
      113 JUMP                             ; [+1]
      114 LOADNIL                          R20
      115 SETTABLEKS                       R20 R19 K19 ["GetCellProps"]
      117 GETUPVAL                         R20 18
      118 SETTABLEKS                       R20 R19 K20 ["CellComponent"]
      120 NEWCLOSURE                       R20 P3
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R20 R19 K21 ["OnLoadRange"]
      124 SETTABLEKS                       R12 R19 K22 ["ref"]
      126 CALL                             R17 2 1
      127 SETTABLEKS                       R17 R16 K14 ["View"]
      129 CALL                             R13 3 -1
      130 CLOSEUPVALS                      R5
      131 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R8 R0 K6 ["Src"]
       38 GETTABLEKS                       R7 R8 K14 ["Types"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R3 K15 ["UI"]
       43 GETTABLEKS                       R8 R7 K16 ["Grid"]
       45 GETTABLEKS                       R9 R7 K17 ["Pane"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R13 R0 K6 ["Src"]
       51 GETTABLEKS                       R12 R13 K18 ["Flags"]
       53 GETTABLEKS                       R11 R12 K19 ["getFFlagAmrFoundationifyBrowser"]
       55 CALL                             R10 1 1
       56 MOVE                             R12 R10
       57 CALL                             R12 0 1
       58 JUMPIFNOT                        R12 ; [+8]
       59 GETIMPORT                        R11 K5 [require]
       61 GETIMPORT                        R13 K1 [script]
       63 GETTABLEKS                       R12 R13 K20 ["ItemCell"]
       65 CALL                             R11 1 1
       66 JUMP                             ; [+7]
       67 GETIMPORT                        R11 K5 [require]
       69 GETIMPORT                        R13 K1 [script]
       71 GETTABLEKS                       R12 R13 K21 ["ItemCell_DEPRECATED"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K6 ["Src"]
       78 GETTABLEKS                       R14 R15 K22 ["Controllers"]
       80 GETTABLEKS                       R13 R14 K23 ["Input"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K6 ["Src"]
       87 GETTABLEKS                       R15 R16 K22 ["Controllers"]
       89 GETTABLEKS                       R14 R15 K24 ["ItemsController"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R17 R0 K6 ["Src"]
       96 GETTABLEKS                       R16 R17 K22 ["Controllers"]
       98 GETTABLEKS                       R15 R16 K25 ["LayoutController"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R2 K26 ["useEffect"]
      103 GETTABLEKS                       R16 R2 K27 ["useRef"]
      105 GETIMPORT                        R17 K5 [require]
      107 GETTABLEKS                       R20 R0 K6 ["Src"]
      109 GETTABLEKS                       R19 R20 K28 ["Hooks"]
      111 GETTABLEKS                       R18 R19 K29 ["useContextMenu"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K5 [require]
      116 GETTABLEKS                       R21 R0 K6 ["Src"]
      118 GETTABLEKS                       R20 R21 K28 ["Hooks"]
      120 GETTABLEKS                       R19 R20 K30 ["useItems"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R22 R0 K6 ["Src"]
      127 GETTABLEKS                       R21 R22 K28 ["Hooks"]
      129 GETTABLEKS                       R20 R21 K31 ["useLayoutInfo"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETTABLEKS                       R23 R0 K6 ["Src"]
      136 GETTABLEKS                       R22 R23 K28 ["Hooks"]
      138 GETTABLEKS                       R21 R22 K32 ["useCurrentScope"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETTABLEKS                       R24 R0 K6 ["Src"]
      145 GETTABLEKS                       R23 R24 K7 ["Resources"]
      147 GETTABLEKS                       R22 R23 K33 ["PluginStyles"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R25 R0 K6 ["Src"]
      154 GETTABLEKS                       R24 R25 K18 ["Flags"]
      156 GETTABLEKS                       R23 R24 K34 ["getFFlagAmrUpdatedItemsCache"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R26 R0 K6 ["Src"]
      163 GETTABLEKS                       R25 R26 K18 ["Flags"]
      165 GETTABLEKS                       R24 R25 K35 ["getFFlagAmrContextMenuRefactor"]
      167 CALL                             R23 1 1
      168 DUPCLOSURE                       R24 K36 [PROTO_5]
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R11
      188 RETURN                           R24 1
