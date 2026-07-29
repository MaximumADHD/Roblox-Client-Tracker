PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setContentGrid"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setContentGrid"]
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U1
       13 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R4 K5 [{"Cell", "ParentScope", "Key", "Size", "Position"}]
        1 SETTABLEKS                       R0 R4 K0 ["Cell"]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K1 ["ParentScope"]
        6 SETTABLEKS                       R1 R4 K2 ["Key"]
        8 SETTABLEKS                       R3 R4 K3 ["Size"]
       10 SETTABLEKS                       R2 R4 K4 ["Position"]
       12 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["requestNextPage"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Click"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 CALL                             R6 0 1
       18 GETTABLEKS                       R7 R6 K1 ["GridSize"]
       20 GETUPVAL                         R9 6
       21 LOADK                            R11 K2 ["CellHeightDiff"]
       22 NAMECALL                         R9 R9 K3 ["GetAttribute"]
       24 CALL                             R9 2 1
       25 ADD                              R8 R7 R9
       26 GETUPVAL                         R9 7
       27 CALL                             R9 0 2
       28 LOADB                            R11 0
       29 LOADN                            R12 0
       30 JUMPIFNOTLT                      R12 R10 ; [+6]
       32 LENGTH                           R12 R5
       33 JUMPIFLT                         R10 R12 ; [+2]
       35 LOADB                            R11 0 +1
       36 LOADB                            R11 1
       37 GETUPVAL                         R12 8
       38 GETUPVAL                         R13 9
       39 GETTABLEKS                       R13 R13 K4 ["MenuContext"]
       41 GETTABLEKS                       R13 R13 K5 ["Asset"]
       43 CALL                             R12 1 1
       44 GETUPVAL                         R13 10
       45 LOADNIL                          R14
       46 CALL                             R13 1 1
       47 GETUPVAL                         R14 11
       48 NEWCLOSURE                       R15 P0
       49 CAPTURE                          VAL R13
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R16 0 1
       53 GETTABLEKS                       R17 R13 K6 ["current"]
       55 SETLIST                          R16 R17 1 [1]
       57 CALL                             R14 2 0
       58 GETUPVAL                         R14 12
       59 CALL                             R14 0 1
       60 GETTABLEKS                       R14 R14 K7 ["Groups"]
       62 DUPTABLE                         R15 K9 [{"View"}]
       63 GETUPVAL                         R16 13
       64 GETTABLEKS                       R16 R16 K10 ["createElement"]
       66 GETUPVAL                         R17 14
       67 DUPTABLE                         R18 K20 [{"Cells", "CellGroups", "CellGroupHeader", "CellSize", "CellPadding", "GetCellProps", "CellComponent", "OnLoadRange", "ref"}]
       68 SETTABLEKS                       R5 R18 K11 ["Cells"]
       70 SETTABLEKS                       R14 R18 K12 ["CellGroups"]
       72 DUPTABLE                         R19 K25 [{["HeaderComponent"], ["Size"], ["Collapsible"] = False}]
       73 GETUPVAL                         R20 15
       74 SETTABLEKS                       R20 R19 K21 ["HeaderComponent"]
       76 GETIMPORT                        R20 K28 [UDim2.new]
       78 LOADN                            R21 1
       79 LOADN                            R22 0
       80 LOADN                            R23 0
       81 GETUPVAL                         R24 16
       82 GETTABLEKS                       R24 R24 K29 ["SectionHeaderHeight"]
       84 CALL                             R20 4 1
       85 SETTABLEKS                       R20 R19 K22 ["Size"]
       87 SETTABLEKS                       R19 R18 K13 ["CellGroupHeader"]
       89 GETIMPORT                        R19 K31 [UDim2.fromOffset]
       91 MOVE                             R20 R7
       92 MOVE                             R21 R8
       93 CALL                             R19 2 1
       94 SETTABLEKS                       R19 R18 K14 ["CellSize"]
       96 JUMPIFNOT                        R11 ; [+2]
       97 MOVE                             R19 R9
       98 JUMP                             ; [+3]
       99 GETUPVAL                         R19 16
      100 GETTABLEKS                       R19 R19 K32 ["GridCellPadding"]
      102 SETTABLEKS                       R19 R18 K15 ["CellPadding"]
      104 NEWCLOSURE                       R19 P1
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R19 R18 K16 ["GetCellProps"]
      108 GETUPVAL                         R19 17
      109 SETTABLEKS                       R19 R18 K17 ["CellComponent"]
      111 NEWCLOSURE                       R19 P2
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R19 R18 K18 ["OnLoadRange"]
      115 SETTABLEKS                       R13 R18 K19 ["ref"]
      117 CALL                             R16 2 1
      118 SETTABLEKS                       R16 R15 K8 ["View"]
      120 GETUPVAL                         R16 13
      121 GETTABLEKS                       R16 R16 K10 ["createElement"]
      123 GETUPVAL                         R17 18
      124 GETTABLEKS                       R17 R17 K8 ["View"]
      126 DUPTABLE                         R18 K41 [{["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "col align-x-center fill size-full", ["testId"] = "content-grid"}]
      127 GETTABLEKS                       R19 R0 K33 ["LayoutOrder"]
      129 SETTABLEKS                       R19 R18 K33 ["LayoutOrder"]
      131 NEWCLOSURE                       R19 P3
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U9
      134 SETTABLEKS                       R19 R18 K34 ["onActivated"]
      136 NEWCLOSURE                       R19 P4
      137 CAPTURE                          VAL R1
      138 CAPTURE                          UPVAL U9
      139 CAPTURE                          VAL R12
      140 SETTABLEKS                       R19 R18 K35 ["onSecondaryActivated"]
      142 DUPTABLE                         R19 K43 [{"affordance"}]
      143 GETUPVAL                         R20 18
      144 GETTABLEKS                       R20 R20 K44 ["Enums"]
      146 GETTABLEKS                       R20 R20 K45 ["StateLayerAffordance"]
      148 GETTABLEKS                       R20 R20 K46 ["None"]
      150 SETTABLEKS                       R20 R19 K42 ["affordance"]
      152 SETTABLEKS                       R19 R18 K36 ["stateLayer"]
      154 MOVE                             R19 R15
      155 CALL                             R16 3 -1
      156 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K14 ["UI"]
       46 GETTABLEKS                       R7 R6 K15 ["Grid"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K16 ["ItemCell"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Components"]
       61 GETTABLEKS                       R10 R10 K18 ["Shared"]
       63 GETTABLEKS                       R10 R10 K19 ["SearchSectionHeader"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K21 ["Input"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       81 GETTABLEKS                       R12 R12 K22 ["ItemsController"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Controllers"]
       90 GETTABLEKS                       R13 R13 K23 ["LayoutController"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R2 K24 ["useEffect"]
       95 GETTABLEKS                       R14 R2 K25 ["useRef"]
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K6 ["Src"]
      101 GETTABLEKS                       R16 R16 K26 ["Hooks"]
      103 GETTABLEKS                       R16 R16 K27 ["useContextMenu"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K6 ["Src"]
      110 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      112 GETTABLEKS                       R17 R17 K28 ["useItems"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K6 ["Src"]
      119 GETTABLEKS                       R18 R18 K26 ["Hooks"]
      121 GETTABLEKS                       R18 R18 K29 ["useLayoutInfo"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K6 ["Src"]
      128 GETTABLEKS                       R19 R19 K26 ["Hooks"]
      130 GETTABLEKS                       R19 R19 K30 ["useCurrentScope"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K6 ["Src"]
      137 GETTABLEKS                       R20 R20 K26 ["Hooks"]
      139 GETTABLEKS                       R20 R20 K31 ["useSearchSections"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K6 ["Src"]
      146 GETTABLEKS                       R21 R21 K26 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K32 ["useGridCellPadding"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K6 ["Src"]
      155 GETTABLEKS                       R22 R22 K7 ["Resources"]
      157 GETTABLEKS                       R22 R22 K33 ["PluginStyles"]
      159 CALL                             R21 1 1
      160 DUPCLOSURE                       R22 K34 [PROTO_6]
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R3
      180 RETURN                           R22 1
