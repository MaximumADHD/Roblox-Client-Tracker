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
       21 CALL                             R9 0 1
       22 JUMPIFNOT                        R9 ; [+4]
       23 GETUPVAL                         R8 7
       24 GETTABLEKS                       R8 R8 K2 ["CellDataHeightWithTwoLineName"]
       26 JUMP                             ; [+5]
       27 GETUPVAL                         R8 8
       28 LOADK                            R10 K3 ["CellHeightDiff"]
       29 NAMECALL                         R8 R8 K4 ["GetAttribute"]
       31 CALL                             R8 2 1
       32 ADD                              R9 R7 R8
       33 GETUPVAL                         R10 9
       34 CALL                             R10 0 2
       35 LOADB                            R12 0
       36 LOADN                            R13 0
       37 JUMPIFNOTLT                      R13 R11 ; [+6]
       39 LENGTH                           R13 R5
       40 JUMPIFLT                         R11 R13 ; [+2]
       42 LOADB                            R12 0 +1
       43 LOADB                            R12 1
       44 GETUPVAL                         R13 10
       45 GETUPVAL                         R14 11
       46 GETTABLEKS                       R14 R14 K5 ["MenuContext"]
       48 GETTABLEKS                       R14 R14 K6 ["Asset"]
       50 CALL                             R13 1 1
       51 GETUPVAL                         R14 12
       52 LOADNIL                          R15
       53 CALL                             R14 1 1
       54 GETUPVAL                         R15 13
       55 NEWCLOSURE                       R16 P0
       56 CAPTURE                          VAL R14
       57 CAPTURE                          VAL R3
       58 NEWTABLE                         R17 0 1
       60 GETTABLEKS                       R18 R14 K7 ["current"]
       62 SETLIST                          R17 R18 1 [1]
       64 CALL                             R15 2 0
       65 GETUPVAL                         R15 14
       66 CALL                             R15 0 1
       67 GETTABLEKS                       R15 R15 K8 ["Groups"]
       69 DUPTABLE                         R16 K10 [{"View"}]
       70 GETUPVAL                         R17 15
       71 GETTABLEKS                       R17 R17 K11 ["createElement"]
       73 GETUPVAL                         R18 16
       74 DUPTABLE                         R19 K21 [{"Cells", "CellGroups", "CellGroupHeader", "CellSize", "CellPadding", "GetCellProps", "CellComponent", "OnLoadRange", "ref"}]
       75 SETTABLEKS                       R5 R19 K12 ["Cells"]
       77 SETTABLEKS                       R15 R19 K13 ["CellGroups"]
       79 DUPTABLE                         R20 K26 [{["HeaderComponent"], ["Size"], ["Collapsible"] = False}]
       80 GETUPVAL                         R21 17
       81 SETTABLEKS                       R21 R20 K22 ["HeaderComponent"]
       83 GETIMPORT                        R21 K29 [UDim2.new]
       85 LOADN                            R22 1
       86 LOADN                            R23 0
       87 LOADN                            R24 0
       88 GETUPVAL                         R25 7
       89 GETTABLEKS                       R25 R25 K30 ["SectionHeaderHeight"]
       91 CALL                             R21 4 1
       92 SETTABLEKS                       R21 R20 K23 ["Size"]
       94 SETTABLEKS                       R20 R19 K14 ["CellGroupHeader"]
       96 GETIMPORT                        R20 K32 [UDim2.fromOffset]
       98 MOVE                             R21 R7
       99 MOVE                             R22 R9
      100 CALL                             R20 2 1
      101 SETTABLEKS                       R20 R19 K15 ["CellSize"]
      103 JUMPIFNOT                        R12 ; [+2]
      104 MOVE                             R20 R10
      105 JUMP                             ; [+3]
      106 GETUPVAL                         R20 7
      107 GETTABLEKS                       R20 R20 K33 ["GridCellPadding"]
      109 SETTABLEKS                       R20 R19 K16 ["CellPadding"]
      111 NEWCLOSURE                       R20 P1
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R20 R19 K17 ["GetCellProps"]
      115 GETUPVAL                         R20 18
      116 SETTABLEKS                       R20 R19 K18 ["CellComponent"]
      118 NEWCLOSURE                       R20 P2
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R20 R19 K19 ["OnLoadRange"]
      122 SETTABLEKS                       R14 R19 K20 ["ref"]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K9 ["View"]
      127 GETUPVAL                         R17 15
      128 GETTABLEKS                       R17 R17 K11 ["createElement"]
      130 GETUPVAL                         R18 19
      131 GETTABLEKS                       R18 R18 K9 ["View"]
      133 DUPTABLE                         R19 K42 [{["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "col align-x-center fill size-full", ["testId"] = "content-grid"}]
      134 GETTABLEKS                       R20 R0 K34 ["LayoutOrder"]
      136 SETTABLEKS                       R20 R19 K34 ["LayoutOrder"]
      138 NEWCLOSURE                       R20 P3
      139 CAPTURE                          VAL R1
      140 CAPTURE                          UPVAL U11
      141 SETTABLEKS                       R20 R19 K35 ["onActivated"]
      143 NEWCLOSURE                       R20 P4
      144 CAPTURE                          VAL R1
      145 CAPTURE                          UPVAL U11
      146 CAPTURE                          VAL R13
      147 SETTABLEKS                       R20 R19 K36 ["onSecondaryActivated"]
      149 DUPTABLE                         R20 K44 [{"affordance"}]
      150 GETUPVAL                         R21 19
      151 GETTABLEKS                       R21 R21 K45 ["Enums"]
      153 GETTABLEKS                       R21 R21 K46 ["StateLayerAffordance"]
      155 GETTABLEKS                       R21 R21 K47 ["None"]
      157 SETTABLEKS                       R21 R20 K43 ["affordance"]
      159 SETTABLEKS                       R20 R19 K37 ["stateLayer"]
      161 MOVE                             R20 R16
      162 CALL                             R17 3 -1
      163 RETURN                           R17 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K14 ["UI"]
       46 GETTABLEKS                       R7 R6 K15 ["Grid"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K16 ["ItemCell"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Components"]
       61 GETTABLEKS                       R10 R10 K18 ["Shared"]
       63 GETTABLEKS                       R10 R10 K19 ["SearchSectionHeader"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K21 ["Input"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       81 GETTABLEKS                       R12 R12 K22 ["ItemsController"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Controllers"]
       90 GETTABLEKS                       R13 R13 K23 ["LayoutController"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R3 K24 ["useEffect"]
       95 GETTABLEKS                       R14 R3 K25 ["useRef"]
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K10 ["Src"]
      101 GETTABLEKS                       R16 R16 K26 ["Hooks"]
      103 GETTABLEKS                       R16 R16 K27 ["useContextMenu"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K10 ["Src"]
      110 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      112 GETTABLEKS                       R17 R17 K28 ["useCurrentScope"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K10 ["Src"]
      119 GETTABLEKS                       R18 R18 K26 ["Hooks"]
      121 GETTABLEKS                       R18 R18 K29 ["useGridCellPadding"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K10 ["Src"]
      128 GETTABLEKS                       R19 R19 K26 ["Hooks"]
      130 GETTABLEKS                       R19 R19 K30 ["useItems"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K10 ["Src"]
      137 GETTABLEKS                       R20 R20 K26 ["Hooks"]
      139 GETTABLEKS                       R20 R20 K31 ["useLayoutInfo"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K10 ["Src"]
      146 GETTABLEKS                       R21 R21 K26 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K32 ["useSearchSections"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K10 ["Src"]
      155 GETTABLEKS                       R22 R22 K33 ["Flags"]
      157 GETTABLEKS                       R22 R22 K34 ["getFFlagAmrGridAssetNameTwoLine"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K10 ["Src"]
      164 GETTABLEKS                       R23 R23 K11 ["Resources"]
      166 GETTABLEKS                       R23 R23 K35 ["PluginStyles"]
      168 CALL                             R22 1 1
      169 DUPCLOSURE                       R23 K36 [PROTO_6]
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R1
      190 RETURN                           R23 1
