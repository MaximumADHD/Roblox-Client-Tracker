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

PROTO_5:
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

PROTO_6:
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
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 1
       20 GETUPVAL                         R7 6
       21 CALL                             R7 0 1
       22 GETTABLEKS                       R8 R7 K1 ["GridSize"]
       24 GETUPVAL                         R10 7
       25 LOADK                            R12 K2 ["CellHeightDiff"]
       26 NAMECALL                         R10 R10 K3 ["GetAttribute"]
       28 CALL                             R10 2 1
       29 ADD                              R9 R8 R10
       30 GETUPVAL                         R11 8
       31 GETTABLEKS                       R10 R11 K4 ["GridCellPadding"]
       33 GETUPVAL                         R11 9
       34 GETUPVAL                         R14 10
       35 GETTABLEKS                       R13 R14 K5 ["MenuContext"]
       37 GETTABLEKS                       R12 R13 K6 ["Asset"]
       39 CALL                             R11 1 1
       40 GETUPVAL                         R12 11
       41 LOADNIL                          R13
       42 CALL                             R12 1 1
       43 GETUPVAL                         R13 12
       44 NEWCLOSURE                       R14 P0
       45 CAPTURE                          VAL R12
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R15 0 1
       49 GETTABLEKS                       R16 R12 K7 ["current"]
       51 SETLIST                          R15 R16 1 [1]
       53 CALL                             R13 2 0
       54 GETUPVAL                         R14 13
       55 CALL                             R14 0 1
       56 GETTABLEKS                       R13 R14 K8 ["Groups"]
       58 DUPTABLE                         R14 K10 [{"View"}]
       59 GETUPVAL                         R16 14
       60 GETTABLEKS                       R15 R16 K11 ["createElement"]
       62 GETUPVAL                         R16 15
       63 DUPTABLE                         R17 K21 [{"Cells", "CellGroups", "CellGroupHeader", "CellSize", "CellPadding", "GetCellProps", "CellComponent", "OnLoadRange", "ref"}]
       64 SETTABLEKS                       R6 R17 K12 ["Cells"]
       66 GETUPVAL                         R19 16
       67 CALL                             R19 0 1
       68 JUMPIFNOT                        R19 ; [+2]
       69 MOVE                             R18 R13
       70 JUMP                             ; [+1]
       71 LOADNIL                          R18
       72 SETTABLEKS                       R18 R17 K13 ["CellGroups"]
       74 GETUPVAL                         R19 16
       75 CALL                             R19 0 1
       76 JUMPIFNOT                        R19 ; [+19]
       77 DUPTABLE                         R18 K25 [{"HeaderComponent", "Size", "Collapsible"}]
       78 GETUPVAL                         R19 17
       79 SETTABLEKS                       R19 R18 K22 ["HeaderComponent"]
       81 GETIMPORT                        R19 K28 [UDim2.new]
       83 LOADN                            R20 1
       84 LOADN                            R21 0
       85 LOADN                            R22 0
       86 GETUPVAL                         R24 8
       87 GETTABLEKS                       R23 R24 K29 ["SectionHeaderHeight"]
       89 CALL                             R19 4 1
       90 SETTABLEKS                       R19 R18 K23 ["Size"]
       92 LOADB                            R19 0
       93 SETTABLEKS                       R19 R18 K24 ["Collapsible"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R18
       97 SETTABLEKS                       R18 R17 K14 ["CellGroupHeader"]
       99 GETIMPORT                        R18 K31 [UDim2.fromOffset]
      101 MOVE                             R19 R8
      102 MOVE                             R20 R9
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K15 ["CellSize"]
      106 SETTABLEKS                       R10 R17 K16 ["CellPadding"]
      108 NEWCLOSURE                       R18 P1
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R18 R17 K17 ["GetCellProps"]
      112 GETUPVAL                         R18 18
      113 SETTABLEKS                       R18 R17 K18 ["CellComponent"]
      115 NEWCLOSURE                       R18 P2
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R18 R17 K19 ["OnLoadRange"]
      119 SETTABLEKS                       R12 R17 K20 ["ref"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K9 ["View"]
      124 GETUPVAL                         R15 19
      125 CALL                             R15 0 1
      126 JUMPIFNOT                        R15 ; [+38]
      127 GETUPVAL                         R16 14
      128 GETTABLEKS                       R15 R16 K11 ["createElement"]
      130 GETUPVAL                         R17 20
      131 GETTABLEKS                       R16 R17 K9 ["View"]
      133 DUPTABLE                         R17 K36 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
      134 GETTABLEKS                       R18 R0 K32 ["LayoutOrder"]
      136 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      138 NEWCLOSURE                       R18 P3
      139 CAPTURE                          UPVAL U21
      140 CAPTURE                          VAL R2
      141 CAPTURE                          UPVAL U10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R1
      145 SETTABLEKS                       R18 R17 K33 ["onSecondaryActivated"]
      147 DUPTABLE                         R18 K38 [{"affordance"}]
      148 GETUPVAL                         R22 20
      149 GETTABLEKS                       R21 R22 K39 ["Enums"]
      151 GETTABLEKS                       R20 R21 K40 ["StateLayerAffordance"]
      153 GETTABLEKS                       R19 R20 K41 ["None"]
      155 SETTABLEKS                       R19 R18 K37 ["affordance"]
      157 SETTABLEKS                       R18 R17 K34 ["stateLayer"]
      159 LOADK                            R18 K42 ["size-full fill col align-x-center data-testid=content-grid"]
      160 SETTABLEKS                       R18 R17 K35 ["tag"]
      162 MOVE                             R18 R14
      163 CALL                             R15 3 -1
      164 RETURN                           R15 -1
      165 GETUPVAL                         R16 14
      166 GETTABLEKS                       R15 R16 K11 ["createElement"]
      168 GETUPVAL                         R16 22
      169 NEWTABLE                         R17 4 0
      171 GETTABLEKS                       R18 R0 K32 ["LayoutOrder"]
      173 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      175 NEWCLOSURE                       R18 P4
      176 CAPTURE                          UPVAL U21
      177 CAPTURE                          VAL R2
      178 CAPTURE                          UPVAL U10
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R1
      182 SETTABLEKS                       R18 R17 K43 ["OnRightClick"]
      184 GETUPVAL                         R19 14
      185 GETTABLEKS                       R18 R19 K44 ["Tag"]
      187 LOADK                            R20 K45 ["ContentGrid X-Top X-Column X-Center %* data-testid=content-grid"]
      188 GETUPVAL                         R24 14
      189 GETTABLEKS                       R23 R24 K44 ["Tag"]
      191 GETTABLE                         R22 R0 R23
      192 NAMECALL                         R20 R20 K46 ["format"]
      194 CALL                             R20 2 1
      195 MOVE                             R19 R20
      196 SETTABLE                         R19 R17 R18
      197 MOVE                             R18 R14
      198 CALL                             R15 3 -1
      199 RETURN                           R15 -1

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
       27 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Src"]
       45 GETTABLEKS                       R8 R9 K15 ["Types"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R4 K16 ["UI"]
       50 GETTABLEKS                       R9 R8 K17 ["Grid"]
       52 GETTABLEKS                       R10 R8 K18 ["Pane"]
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R14 R0 K6 ["Src"]
       58 GETTABLEKS                       R13 R14 K19 ["Flags"]
       60 GETTABLEKS                       R12 R13 K20 ["getFFlagAmrFoundationifyBrowser"]
       62 CALL                             R11 1 1
       63 MOVE                             R13 R11
       64 CALL                             R13 0 1
       65 JUMPIFNOT                        R13 ; [+8]
       66 GETIMPORT                        R12 K5 [require]
       68 GETIMPORT                        R14 K1 [script]
       70 GETTABLEKS                       R13 R14 K21 ["ItemCell"]
       72 CALL                             R12 1 1
       73 JUMP                             ; [+7]
       74 GETIMPORT                        R12 K5 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R13 R14 K22 ["ItemCell_DEPRECATED"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R17 R0 K6 ["Src"]
       85 GETTABLEKS                       R16 R17 K23 ["Components"]
       87 GETTABLEKS                       R15 R16 K24 ["Shared"]
       89 GETTABLEKS                       R14 R15 K25 ["SearchSectionHeader"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R17 R0 K6 ["Src"]
       96 GETTABLEKS                       R16 R17 K26 ["Controllers"]
       98 GETTABLEKS                       R15 R16 K27 ["Input"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R18 R0 K6 ["Src"]
      105 GETTABLEKS                       R17 R18 K26 ["Controllers"]
      107 GETTABLEKS                       R16 R17 K28 ["ItemsController"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R19 R0 K6 ["Src"]
      114 GETTABLEKS                       R18 R19 K26 ["Controllers"]
      116 GETTABLEKS                       R17 R18 K29 ["LayoutController"]
      118 CALL                             R16 1 1
      119 GETTABLEKS                       R17 R2 K30 ["useEffect"]
      121 GETTABLEKS                       R18 R2 K31 ["useRef"]
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R22 R0 K6 ["Src"]
      127 GETTABLEKS                       R21 R22 K32 ["Hooks"]
      129 GETTABLEKS                       R20 R21 K33 ["useContextMenu"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETTABLEKS                       R23 R0 K6 ["Src"]
      136 GETTABLEKS                       R22 R23 K32 ["Hooks"]
      138 GETTABLEKS                       R21 R22 K34 ["useItems"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETTABLEKS                       R24 R0 K6 ["Src"]
      145 GETTABLEKS                       R23 R24 K32 ["Hooks"]
      147 GETTABLEKS                       R22 R23 K35 ["useLayoutInfo"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R25 R0 K6 ["Src"]
      154 GETTABLEKS                       R24 R25 K32 ["Hooks"]
      156 GETTABLEKS                       R23 R24 K36 ["useCurrentScope"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R26 R0 K6 ["Src"]
      163 GETTABLEKS                       R25 R26 K32 ["Hooks"]
      165 GETTABLEKS                       R24 R25 K37 ["useSearchSections"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K5 [require]
      170 GETTABLEKS                       R27 R0 K6 ["Src"]
      172 GETTABLEKS                       R26 R27 K7 ["Resources"]
      174 GETTABLEKS                       R25 R26 K38 ["PluginStyles"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K5 [require]
      179 GETTABLEKS                       R28 R0 K6 ["Src"]
      181 GETTABLEKS                       R27 R28 K19 ["Flags"]
      183 GETTABLEKS                       R26 R27 K39 ["getFFlagAmrContextMenuRefactor"]
      185 CALL                             R25 1 1
      186 GETIMPORT                        R26 K5 [require]
      188 GETTABLEKS                       R29 R0 K6 ["Src"]
      190 GETTABLEKS                       R28 R29 K19 ["Flags"]
      192 GETTABLEKS                       R27 R28 K40 ["getFFlagAmrOrganizationFoundation"]
      194 CALL                             R26 1 1
      195 DUPCLOSURE                       R27 K41 [PROTO_6]
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R10
      219 RETURN                           R27 1
