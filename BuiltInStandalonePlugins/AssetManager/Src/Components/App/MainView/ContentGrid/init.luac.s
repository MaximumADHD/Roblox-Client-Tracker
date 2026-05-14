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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Click"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       27 GETTABLEKS                       R9 R9 K4 ["GridCellPadding"]
       29 GETUPVAL                         R10 8
       30 GETUPVAL                         R11 9
       31 GETTABLEKS                       R11 R11 K5 ["MenuContext"]
       33 GETTABLEKS                       R11 R11 K6 ["Asset"]
       35 CALL                             R10 1 1
       36 GETUPVAL                         R11 10
       37 LOADNIL                          R12
       38 CALL                             R11 1 1
       39 GETUPVAL                         R12 11
       40 NEWCLOSURE                       R13 P0
       41 CAPTURE                          VAL R11
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R14 0 1
       45 GETTABLEKS                       R15 R11 K7 ["current"]
       47 SETLIST                          R14 R15 1 [1]
       49 CALL                             R12 2 0
       50 GETUPVAL                         R12 12
       51 CALL                             R12 0 1
       52 GETTABLEKS                       R12 R12 K8 ["Groups"]
       54 DUPTABLE                         R13 K10 [{"View"}]
       55 GETUPVAL                         R14 13
       56 GETTABLEKS                       R14 R14 K11 ["createElement"]
       58 GETUPVAL                         R15 14
       59 DUPTABLE                         R16 K21 [{"Cells", "CellGroups", "CellGroupHeader", "CellSize", "CellPadding", "GetCellProps", "CellComponent", "OnLoadRange", "ref"}]
       60 SETTABLEKS                       R5 R16 K12 ["Cells"]
       62 GETUPVAL                         R18 15
       63 CALL                             R18 0 1
       64 JUMPIFNOT                        R18 ; [+2]
       65 MOVE                             R17 R12
       66 JUMP                             ; [+1]
       67 LOADNIL                          R17
       68 SETTABLEKS                       R17 R16 K13 ["CellGroups"]
       70 GETUPVAL                         R18 15
       71 CALL                             R18 0 1
       72 JUMPIFNOT                        R18 ; [+19]
       73 DUPTABLE                         R17 K25 [{"HeaderComponent", "Size", "Collapsible"}]
       74 GETUPVAL                         R18 16
       75 SETTABLEKS                       R18 R17 K22 ["HeaderComponent"]
       77 GETIMPORT                        R18 K28 [UDim2.new]
       79 LOADN                            R19 1
       80 LOADN                            R20 0
       81 LOADN                            R21 0
       82 GETUPVAL                         R22 7
       83 GETTABLEKS                       R22 R22 K29 ["SectionHeaderHeight"]
       85 CALL                             R18 4 1
       86 SETTABLEKS                       R18 R17 K23 ["Size"]
       88 LOADB                            R18 0
       89 SETTABLEKS                       R18 R17 K24 ["Collapsible"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R17
       93 SETTABLEKS                       R17 R16 K14 ["CellGroupHeader"]
       95 GETIMPORT                        R17 K31 [UDim2.fromOffset]
       97 MOVE                             R18 R7
       98 MOVE                             R19 R8
       99 CALL                             R17 2 1
      100 SETTABLEKS                       R17 R16 K15 ["CellSize"]
      102 SETTABLEKS                       R9 R16 K16 ["CellPadding"]
      104 NEWCLOSURE                       R17 P1
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R17 R16 K17 ["GetCellProps"]
      108 GETUPVAL                         R17 17
      109 SETTABLEKS                       R17 R16 K18 ["CellComponent"]
      111 NEWCLOSURE                       R17 P2
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R17 R16 K19 ["OnLoadRange"]
      115 SETTABLEKS                       R11 R16 K20 ["ref"]
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K9 ["View"]
      120 GETUPVAL                         R14 18
      121 CALL                             R14 0 1
      122 JUMPIFNOT                        R14 ; [+40]
      123 GETUPVAL                         R14 13
      124 GETTABLEKS                       R14 R14 K11 ["createElement"]
      126 GETUPVAL                         R15 19
      127 GETTABLEKS                       R15 R15 K9 ["View"]
      129 DUPTABLE                         R16 K37 [{"LayoutOrder", "onActivated", "onSecondaryActivated", "stateLayer", "tag"}]
      130 GETTABLEKS                       R17 R0 K32 ["LayoutOrder"]
      132 SETTABLEKS                       R17 R16 K32 ["LayoutOrder"]
      134 NEWCLOSURE                       R17 P3
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U9
      137 SETTABLEKS                       R17 R16 K33 ["onActivated"]
      139 NEWCLOSURE                       R17 P4
      140 CAPTURE                          VAL R1
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          VAL R10
      143 SETTABLEKS                       R17 R16 K34 ["onSecondaryActivated"]
      145 DUPTABLE                         R17 K39 [{"affordance"}]
      146 GETUPVAL                         R18 19
      147 GETTABLEKS                       R18 R18 K40 ["Enums"]
      149 GETTABLEKS                       R18 R18 K41 ["StateLayerAffordance"]
      151 GETTABLEKS                       R18 R18 K42 ["None"]
      153 SETTABLEKS                       R18 R17 K38 ["affordance"]
      155 SETTABLEKS                       R17 R16 K35 ["stateLayer"]
      157 LOADK                            R17 K43 ["size-full fill col align-x-center data-testid=content-grid"]
      158 SETTABLEKS                       R17 R16 K36 ["tag"]
      160 MOVE                             R17 R13
      161 CALL                             R14 3 -1
      162 RETURN                           R14 -1
      163 GETUPVAL                         R14 13
      164 GETTABLEKS                       R14 R14 K11 ["createElement"]
      166 GETUPVAL                         R15 20
      167 NEWTABLE                         R16 4 0
      169 GETTABLEKS                       R17 R0 K32 ["LayoutOrder"]
      171 SETTABLEKS                       R17 R16 K32 ["LayoutOrder"]
      173 NEWCLOSURE                       R17 P5
      174 CAPTURE                          VAL R1
      175 CAPTURE                          UPVAL U9
      176 SETTABLEKS                       R17 R16 K44 ["OnClick"]
      178 NEWCLOSURE                       R17 P6
      179 CAPTURE                          VAL R1
      180 CAPTURE                          UPVAL U9
      181 CAPTURE                          VAL R10
      182 SETTABLEKS                       R17 R16 K45 ["OnRightClick"]
      184 GETUPVAL                         R17 13
      185 GETTABLEKS                       R17 R17 K46 ["Tag"]
      187 LOADK                            R19 K47 ["ContentGrid X-Top X-Column X-Center %* data-testid=content-grid"]
      188 GETUPVAL                         R22 13
      189 GETTABLEKS                       R22 R22 K46 ["Tag"]
      191 GETTABLE                         R21 R0 R22
      192 NAMECALL                         R19 R19 K48 ["format"]
      194 CALL                             R19 2 1
      195 MOVE                             R18 R19
      196 SETTABLE                         R18 R16 R17
      197 MOVE                             R17 R13
      198 CALL                             R14 3 -1
      199 RETURN                           R14 -1

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
       48 GETTABLEKS                       R8 R6 K16 ["Pane"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K6 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["Flags"]
       56 GETTABLEKS                       R10 R10 K18 ["getFFlagAmrFoundationifyBrowser"]
       58 CALL                             R9 1 1
       59 MOVE                             R11 R9
       60 CALL                             R11 0 1
       61 JUMPIFNOT                        R11 ; [+8]
       62 GETIMPORT                        R10 K5 [require]
       64 GETIMPORT                        R11 K1 [script]
       66 GETTABLEKS                       R11 R11 K19 ["ItemCell"]
       68 CALL                             R10 1 1
       69 JUMP                             ; [+7]
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K20 ["ItemCell_DEPRECATED"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Src"]
       81 GETTABLEKS                       R12 R12 K21 ["Components"]
       83 GETTABLEKS                       R12 R12 K22 ["Shared"]
       85 GETTABLEKS                       R12 R12 K23 ["SearchSectionHeader"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Src"]
       92 GETTABLEKS                       R13 R13 K24 ["Controllers"]
       94 GETTABLEKS                       R13 R13 K25 ["Input"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K6 ["Src"]
      101 GETTABLEKS                       R14 R14 K24 ["Controllers"]
      103 GETTABLEKS                       R14 R14 K26 ["ItemsController"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K6 ["Src"]
      110 GETTABLEKS                       R15 R15 K24 ["Controllers"]
      112 GETTABLEKS                       R15 R15 K27 ["LayoutController"]
      114 CALL                             R14 1 1
      115 GETTABLEKS                       R15 R2 K28 ["useEffect"]
      117 GETTABLEKS                       R16 R2 K29 ["useRef"]
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K6 ["Src"]
      123 GETTABLEKS                       R18 R18 K30 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K31 ["useContextMenu"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K6 ["Src"]
      132 GETTABLEKS                       R19 R19 K30 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K32 ["useItems"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K6 ["Src"]
      141 GETTABLEKS                       R20 R20 K30 ["Hooks"]
      143 GETTABLEKS                       R20 R20 K33 ["useLayoutInfo"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K6 ["Src"]
      150 GETTABLEKS                       R21 R21 K30 ["Hooks"]
      152 GETTABLEKS                       R21 R21 K34 ["useCurrentScope"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K6 ["Src"]
      159 GETTABLEKS                       R22 R22 K30 ["Hooks"]
      161 GETTABLEKS                       R22 R22 K35 ["useSearchSections"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K6 ["Src"]
      168 GETTABLEKS                       R23 R23 K7 ["Resources"]
      170 GETTABLEKS                       R23 R23 K36 ["PluginStyles"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K6 ["Src"]
      177 GETTABLEKS                       R24 R24 K17 ["Flags"]
      179 GETTABLEKS                       R24 R24 K37 ["getFFlagAmrOrganizationFoundation"]
      181 CALL                             R23 1 1
      182 DUPCLOSURE                       R24 K38 [PROTO_8]
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R8
      204 RETURN                           R24 1
