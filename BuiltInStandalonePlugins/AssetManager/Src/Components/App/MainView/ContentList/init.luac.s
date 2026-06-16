PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setContentList"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setContentList"]
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U1
       13 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R4 K4 [{"Key", "Position", "ItemPath", "ParentScope"}]
        1 SETTABLEKS                       R1 R4 K0 ["Key"]
        3 SETTABLEKS                       R2 R4 K1 ["Position"]
        5 SETTABLEKS                       R0 R4 K2 ["ItemPath"]
        7 GETUPVAL                         R5 0
        8 SETTABLEKS                       R5 R4 K3 ["ParentScope"]
       10 RETURN                           R4 1

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
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 1
       20 GETUPVAL                         R7 6
       21 GETUPVAL                         R8 7
       22 GETTABLEKS                       R8 R8 K2 ["MenuContext"]
       24 GETTABLEKS                       R8 R8 K3 ["Asset"]
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 8
       28 LOADNIL                          R9
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 9
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R8
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R11 0 0
       36 CALL                             R9 2 0
       37 GETUPVAL                         R9 10
       38 CALL                             R9 0 1
       39 GETTABLEKS                       R9 R9 K4 ["Groups"]
       41 DUPTABLE                         R10 K7 [{"HeaderRow", "ListContainer"}]
       42 GETUPVAL                         R11 11
       43 GETTABLEKS                       R11 R11 K8 ["createElement"]
       45 GETUPVAL                         R12 12
       46 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       47 NAMECALL                         R14 R1 K11 ["getNextOrder"]
       49 CALL                             R14 1 1
       50 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K5 ["HeaderRow"]
       55 GETUPVAL                         R11 11
       56 GETTABLEKS                       R11 R11 K8 ["createElement"]
       58 GETUPVAL                         R12 13
       59 NEWTABLE                         R13 2 0
       61 NAMECALL                         R14 R1 K11 ["getNextOrder"]
       63 CALL                             R14 1 1
       64 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       66 GETUPVAL                         R14 11
       67 GETTABLEKS                       R14 R14 K12 ["Tag"]
       69 LOADK                            R15 K13 ["fill data-testid=content-list-internal"]
       70 SETTABLE                         R15 R13 R14
       71 DUPTABLE                         R14 K15 [{"List"}]
       72 GETUPVAL                         R15 11
       73 GETTABLEKS                       R15 R15 K8 ["createElement"]
       75 GETUPVAL                         R16 14
       76 DUPTABLE                         R17 K26 [{"LayoutOrder", "CellGroups", "CellGroupHeader", "GetRowProps", "Rows", "RowComponent", "RowHeight", "OnLoadRange", "VerticalScrollBarInset", "ScrollingDirection", "ref"}]
       77 NAMECALL                         R18 R1 K11 ["getNextOrder"]
       79 CALL                             R18 1 1
       80 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
       82 GETUPVAL                         R19 15
       83 CALL                             R19 0 1
       84 JUMPIFNOT                        R19 ; [+2]
       85 MOVE                             R18 R9
       86 JUMP                             ; [+1]
       87 LOADNIL                          R18
       88 SETTABLEKS                       R18 R17 K16 ["CellGroups"]
       90 GETUPVAL                         R19 15
       91 CALL                             R19 0 1
       92 JUMPIFNOT                        R19 ; [+19]
       93 DUPTABLE                         R18 K30 [{"HeaderComponent", "Size", "Collapsible"}]
       94 GETUPVAL                         R19 16
       95 SETTABLEKS                       R19 R18 K27 ["HeaderComponent"]
       97 GETIMPORT                        R19 K32 [UDim2.new]
       99 LOADN                            R20 1
      100 LOADN                            R21 0
      101 LOADN                            R22 0
      102 GETUPVAL                         R23 17
      103 GETTABLEKS                       R23 R23 K33 ["SectionHeaderHeight"]
      105 CALL                             R19 4 1
      106 SETTABLEKS                       R19 R18 K28 ["Size"]
      108 LOADB                            R19 0
      109 SETTABLEKS                       R19 R18 K29 ["Collapsible"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R18
      113 SETTABLEKS                       R18 R17 K17 ["CellGroupHeader"]
      115 NEWCLOSURE                       R18 P1
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R18 R17 K18 ["GetRowProps"]
      119 SETTABLEKS                       R6 R17 K19 ["Rows"]
      121 GETUPVAL                         R18 18
      122 SETTABLEKS                       R18 R17 K20 ["RowComponent"]
      124 GETUPVAL                         R18 19
      125 LOADK                            R20 K34 ["ContentListRowHeight"]
      126 NAMECALL                         R18 R18 K35 ["GetAttribute"]
      128 CALL                             R18 2 1
      129 SETTABLEKS                       R18 R17 K21 ["RowHeight"]
      131 NEWCLOSURE                       R18 P2
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R18 R17 K22 ["OnLoadRange"]
      135 GETIMPORT                        R18 K39 [Enum.ScrollBarInset.None]
      137 SETTABLEKS                       R18 R17 K23 ["VerticalScrollBarInset"]
      139 GETIMPORT                        R18 K41 [Enum.ScrollingDirection.XY]
      141 SETTABLEKS                       R18 R17 K24 ["ScrollingDirection"]
      143 SETTABLEKS                       R8 R17 K25 ["ref"]
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K14 ["List"]
      148 CALL                             R11 3 1
      149 SETTABLEKS                       R11 R10 K6 ["ListContainer"]
      151 GETUPVAL                         R11 11
      152 GETTABLEKS                       R11 R11 K8 ["createElement"]
      154 GETUPVAL                         R12 20
      155 GETTABLEKS                       R12 R12 K42 ["View"]
      157 DUPTABLE                         R13 K46 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
      158 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
      160 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      162 NEWCLOSURE                       R14 P3
      163 CAPTURE                          VAL R2
      164 CAPTURE                          UPVAL U7
      165 CAPTURE                          VAL R7
      166 SETTABLEKS                       R14 R13 K43 ["onSecondaryActivated"]
      168 DUPTABLE                         R14 K48 [{"affordance"}]
      169 GETUPVAL                         R15 20
      170 GETTABLEKS                       R15 R15 K49 ["Enums"]
      172 GETTABLEKS                       R15 R15 K50 ["StateLayerAffordance"]
      174 GETTABLEKS                       R15 R15 K38 ["None"]
      176 SETTABLEKS                       R15 R14 K47 ["affordance"]
      178 SETTABLEKS                       R14 R13 K44 ["stateLayer"]
      180 LOADK                            R14 K51 ["size-full fill col align-x-center data-testid=content-list"]
      181 SETTABLEKS                       R14 R13 K45 ["tag"]
      183 MOVE                             R14 R10
      184 CALL                             R11 3 -1
      185 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["Pane"]
       41 GETTABLEKS                       R7 R5 K15 ["List"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETIMPORT                        R9 K1 [script]
       47 GETTABLEKS                       R9 R9 K16 ["HeaderRow"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K17 ["ItemRow"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Components"]
       63 GETTABLEKS                       R11 R11 K19 ["Shared"]
       65 GETTABLEKS                       R11 R11 K20 ["SearchSectionHeader"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R12 R12 K21 ["Controllers"]
       74 GETTABLEKS                       R12 R12 K22 ["Input"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Src"]
       81 GETTABLEKS                       R13 R13 K21 ["Controllers"]
       83 GETTABLEKS                       R13 R13 K23 ["ItemsController"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       92 GETTABLEKS                       R14 R14 K24 ["LayoutController"]
       94 CALL                             R13 1 1
       95 GETTABLEKS                       R14 R1 K25 ["useRef"]
       97 GETTABLEKS                       R15 R1 K26 ["useEffect"]
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R0 K10 ["Src"]
      103 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      105 GETTABLEKS                       R17 R17 K28 ["useContextMenu"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K5 [require]
      110 GETTABLEKS                       R18 R0 K10 ["Src"]
      112 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      114 GETTABLEKS                       R18 R18 K29 ["useCurrentScope"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K5 [require]
      119 GETTABLEKS                       R19 R0 K10 ["Src"]
      121 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      123 GETTABLEKS                       R19 R19 K30 ["useItems"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K5 [require]
      128 GETTABLEKS                       R20 R0 K10 ["Src"]
      130 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      132 GETTABLEKS                       R20 R20 K31 ["useSearchSections"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R21 R0 K10 ["Src"]
      139 GETTABLEKS                       R21 R21 K32 ["Types"]
      141 CALL                             R20 1 1
      142 GETTABLEKS                       R21 R3 K33 ["Util"]
      144 GETTABLEKS                       R21 R21 K34 ["LayoutOrderIterator"]
      146 GETIMPORT                        R22 K5 [require]
      148 GETTABLEKS                       R23 R0 K10 ["Src"]
      150 GETTABLEKS                       R23 R23 K11 ["Resources"]
      152 GETTABLEKS                       R23 R23 K35 ["PluginStyles"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K5 [require]
      157 GETTABLEKS                       R24 R0 K10 ["Src"]
      159 GETTABLEKS                       R24 R24 K36 ["Flags"]
      161 GETTABLEKS                       R24 R24 K37 ["getFFlagAmrOrganizationFoundation"]
      163 CALL                             R23 1 1
      164 DUPCLOSURE                       R24 K38 [PROTO_5]
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R2
      186 RETURN                           R24 1
