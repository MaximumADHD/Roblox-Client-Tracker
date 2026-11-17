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
       21 CALL                             R7 0 1
       22 GETUPVAL                         R8 7
       23 GETUPVAL                         R9 8
       24 GETTABLEKS                       R9 R9 K2 ["MenuContext"]
       26 GETTABLEKS                       R9 R9 K3 ["Asset"]
       28 CALL                             R8 1 1
       29 GETUPVAL                         R9 9
       30 LOADNIL                          R10
       31 CALL                             R9 1 1
       32 GETUPVAL                         R10 10
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          VAL R9
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R12 0 1
       38 GETTABLEKS                       R13 R9 K4 ["current"]
       40 SETLIST                          R12 R13 1 [1]
       42 CALL                             R10 2 0
       43 GETUPVAL                         R10 11
       44 CALL                             R10 0 1
       45 GETTABLEKS                       R10 R10 K5 ["Groups"]
       47 DUPTABLE                         R11 K8 [{"HeaderRow", "ListContainer"}]
       48 GETUPVAL                         R12 12
       49 GETTABLEKS                       R12 R12 K9 ["createElement"]
       51 GETUPVAL                         R13 13
       52 DUPTABLE                         R14 K11 [{"LayoutOrder"}]
       53 NAMECALL                         R15 R1 K12 ["getNextOrder"]
       55 CALL                             R15 1 1
       56 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K6 ["HeaderRow"]
       61 GETUPVAL                         R12 12
       62 GETTABLEKS                       R12 R12 K9 ["createElement"]
       64 GETUPVAL                         R13 14
       65 NEWTABLE                         R14 2 0
       67 NAMECALL                         R15 R1 K12 ["getNextOrder"]
       69 CALL                             R15 1 1
       70 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       72 GETUPVAL                         R15 12
       73 GETTABLEKS                       R15 R15 K13 ["Tag"]
       75 LOADK                            R16 K14 ["fill data-testid=content-list-internal"]
       76 SETTABLE                         R16 R14 R15
       77 DUPTABLE                         R15 K16 [{"List"}]
       78 GETUPVAL                         R16 12
       79 GETTABLEKS                       R16 R16 K9 ["createElement"]
       81 GETUPVAL                         R17 15
       82 DUPTABLE                         R18 K27 [{"LayoutOrder", "CellGroups", "CellGroupHeader", "GetRowProps", "Rows", "RowComponent", "RowHeight", "OnLoadRange", "VerticalScrollBarInset", "ScrollingDirection", "ref"}]
       83 NAMECALL                         R19 R1 K12 ["getNextOrder"]
       85 CALL                             R19 1 1
       86 SETTABLEKS                       R19 R18 K10 ["LayoutOrder"]
       88 SETTABLEKS                       R10 R18 K17 ["CellGroups"]
       90 DUPTABLE                         R19 K32 [{["HeaderComponent"], ["Size"], ["Collapsible"] = False}]
       91 GETUPVAL                         R20 16
       92 SETTABLEKS                       R20 R19 K28 ["HeaderComponent"]
       94 GETIMPORT                        R20 K34 [UDim2.new]
       96 LOADN                            R21 1
       97 LOADN                            R22 0
       98 LOADN                            R23 0
       99 GETUPVAL                         R24 17
      100 GETTABLEKS                       R24 R24 K35 ["SectionHeaderHeight"]
      102 CALL                             R20 4 1
      103 SETTABLEKS                       R20 R19 K29 ["Size"]
      105 SETTABLEKS                       R19 R18 K18 ["CellGroupHeader"]
      107 NEWCLOSURE                       R19 P1
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R19 R18 K19 ["GetRowProps"]
      111 SETTABLEKS                       R6 R18 K20 ["Rows"]
      113 GETUPVAL                         R19 18
      114 SETTABLEKS                       R19 R18 K21 ["RowComponent"]
      116 GETTABLEKS                       R19 R7 K36 ["ListRowHeight"]
      118 SETTABLEKS                       R19 R18 K22 ["RowHeight"]
      120 NEWCLOSURE                       R19 P2
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R19 R18 K23 ["OnLoadRange"]
      124 GETIMPORT                        R19 K40 [Enum.ScrollBarInset.None]
      126 SETTABLEKS                       R19 R18 K24 ["VerticalScrollBarInset"]
      128 GETIMPORT                        R19 K42 [Enum.ScrollingDirection.XY]
      130 SETTABLEKS                       R19 R18 K25 ["ScrollingDirection"]
      132 SETTABLEKS                       R9 R18 K26 ["ref"]
      134 CALL                             R16 2 1
      135 SETTABLEKS                       R16 R15 K15 ["List"]
      137 CALL                             R12 3 1
      138 SETTABLEKS                       R12 R11 K7 ["ListContainer"]
      140 GETUPVAL                         R12 12
      141 GETTABLEKS                       R12 R12 K9 ["createElement"]
      143 GETUPVAL                         R13 19
      144 GETTABLEKS                       R13 R13 K43 ["View"]
      146 DUPTABLE                         R14 K51 [{["LayoutOrder"], ["onActivated"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "col align-x-center fill size-full", ["testId"] = "content-list"}]
      147 GETTABLEKS                       R15 R0 K10 ["LayoutOrder"]
      149 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      151 NEWCLOSURE                       R15 P3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          UPVAL U8
      154 SETTABLEKS                       R15 R14 K44 ["onActivated"]
      156 NEWCLOSURE                       R15 P4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          UPVAL U8
      159 CAPTURE                          VAL R8
      160 SETTABLEKS                       R15 R14 K45 ["onSecondaryActivated"]
      162 DUPTABLE                         R15 K53 [{"affordance"}]
      163 GETUPVAL                         R16 19
      164 GETTABLEKS                       R16 R16 K54 ["Enums"]
      166 GETTABLEKS                       R16 R16 K55 ["StateLayerAffordance"]
      168 GETTABLEKS                       R16 R16 K39 ["None"]
      170 SETTABLEKS                       R16 R15 K52 ["affordance"]
      172 SETTABLEKS                       R15 R14 K46 ["stateLayer"]
      174 MOVE                             R15 R11
      175 CALL                             R12 3 -1
      176 RETURN                           R12 -1

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
      132 GETTABLEKS                       R20 R20 K31 ["useLayoutInfo"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R21 R0 K10 ["Src"]
      139 GETTABLEKS                       R21 R21 K27 ["Hooks"]
      141 GETTABLEKS                       R21 R21 K32 ["useSearchSections"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K5 [require]
      146 GETTABLEKS                       R22 R0 K10 ["Src"]
      148 GETTABLEKS                       R22 R22 K33 ["Types"]
      150 CALL                             R21 1 1
      151 GETTABLEKS                       R22 R3 K34 ["Util"]
      153 GETTABLEKS                       R22 R22 K35 ["LayoutOrderIterator"]
      155 DUPCLOSURE                       R23 K36 [PROTO_6]
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R2
      176 RETURN                           R23 1
