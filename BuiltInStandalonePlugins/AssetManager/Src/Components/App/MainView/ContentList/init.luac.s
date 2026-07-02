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
       36 NEWTABLE                         R12 0 0
       38 CALL                             R10 2 0
       39 GETUPVAL                         R10 11
       40 CALL                             R10 0 1
       41 GETTABLEKS                       R10 R10 K4 ["Groups"]
       43 DUPTABLE                         R11 K7 [{"HeaderRow", "ListContainer"}]
       44 GETUPVAL                         R12 12
       45 GETTABLEKS                       R12 R12 K8 ["createElement"]
       47 GETUPVAL                         R13 13
       48 DUPTABLE                         R14 K10 [{"LayoutOrder"}]
       49 NAMECALL                         R15 R1 K11 ["getNextOrder"]
       51 CALL                             R15 1 1
       52 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K5 ["HeaderRow"]
       57 GETUPVAL                         R12 12
       58 GETTABLEKS                       R12 R12 K8 ["createElement"]
       60 GETUPVAL                         R13 14
       61 NEWTABLE                         R14 2 0
       63 NAMECALL                         R15 R1 K11 ["getNextOrder"]
       65 CALL                             R15 1 1
       66 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       68 GETUPVAL                         R15 12
       69 GETTABLEKS                       R15 R15 K12 ["Tag"]
       71 LOADK                            R16 K13 ["fill data-testid=content-list-internal"]
       72 SETTABLE                         R16 R14 R15
       73 DUPTABLE                         R15 K15 [{"List"}]
       74 GETUPVAL                         R16 12
       75 GETTABLEKS                       R16 R16 K8 ["createElement"]
       77 GETUPVAL                         R17 15
       78 DUPTABLE                         R18 K26 [{"LayoutOrder", "CellGroups", "CellGroupHeader", "GetRowProps", "Rows", "RowComponent", "RowHeight", "OnLoadRange", "VerticalScrollBarInset", "ScrollingDirection", "ref"}]
       79 NAMECALL                         R19 R1 K11 ["getNextOrder"]
       81 CALL                             R19 1 1
       82 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
       84 SETTABLEKS                       R10 R18 K16 ["CellGroups"]
       86 DUPTABLE                         R19 K31 [{["HeaderComponent"], ["Size"], ["Collapsible"] = False}]
       87 GETUPVAL                         R20 16
       88 SETTABLEKS                       R20 R19 K27 ["HeaderComponent"]
       90 GETIMPORT                        R20 K33 [UDim2.new]
       92 LOADN                            R21 1
       93 LOADN                            R22 0
       94 LOADN                            R23 0
       95 GETUPVAL                         R24 17
       96 GETTABLEKS                       R24 R24 K34 ["SectionHeaderHeight"]
       98 CALL                             R20 4 1
       99 SETTABLEKS                       R20 R19 K28 ["Size"]
      101 SETTABLEKS                       R19 R18 K17 ["CellGroupHeader"]
      103 NEWCLOSURE                       R19 P1
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R19 R18 K18 ["GetRowProps"]
      107 SETTABLEKS                       R6 R18 K19 ["Rows"]
      109 GETUPVAL                         R19 18
      110 SETTABLEKS                       R19 R18 K20 ["RowComponent"]
      112 GETUPVAL                         R20 19
      113 CALL                             R20 0 1
      114 JUMPIFNOT                        R20 ; [+3]
      115 GETTABLEKS                       R19 R7 K35 ["ListRowHeight"]
      117 JUMP                             ; [+5]
      118 GETUPVAL                         R19 20
      119 LOADK                            R21 K36 ["ContentListRowHeight"]
      120 NAMECALL                         R19 R19 K37 ["GetAttribute"]
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K21 ["RowHeight"]
      125 NEWCLOSURE                       R19 P2
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R19 R18 K22 ["OnLoadRange"]
      129 GETIMPORT                        R19 K41 [Enum.ScrollBarInset.None]
      131 SETTABLEKS                       R19 R18 K23 ["VerticalScrollBarInset"]
      133 GETIMPORT                        R19 K43 [Enum.ScrollingDirection.XY]
      135 SETTABLEKS                       R19 R18 K24 ["ScrollingDirection"]
      137 SETTABLEKS                       R9 R18 K25 ["ref"]
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K14 ["List"]
      142 CALL                             R12 3 1
      143 SETTABLEKS                       R12 R11 K6 ["ListContainer"]
      145 GETUPVAL                         R12 12
      146 GETTABLEKS                       R12 R12 K8 ["createElement"]
      148 GETUPVAL                         R13 21
      149 GETTABLEKS                       R13 R13 K44 ["View"]
      151 DUPTABLE                         R14 K51 [{["LayoutOrder"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "col align-x-center fill size-full", ["testId"] = "content-list"}]
      152 GETTABLEKS                       R15 R0 K9 ["LayoutOrder"]
      154 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      156 NEWCLOSURE                       R15 P3
      157 CAPTURE                          VAL R2
      158 CAPTURE                          UPVAL U8
      159 CAPTURE                          VAL R8
      160 SETTABLEKS                       R15 R14 K45 ["onSecondaryActivated"]
      162 DUPTABLE                         R15 K53 [{"affordance"}]
      163 GETUPVAL                         R16 21
      164 GETTABLEKS                       R16 R16 K54 ["Enums"]
      166 GETTABLEKS                       R16 R16 K55 ["StateLayerAffordance"]
      168 GETTABLEKS                       R16 R16 K40 ["None"]
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
      148 GETTABLEKS                       R22 R22 K33 ["Flags"]
      150 GETTABLEKS                       R22 R22 K34 ["getFFlagAmrListViewCustomRowHeight"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K5 [require]
      155 GETTABLEKS                       R23 R0 K10 ["Src"]
      157 GETTABLEKS                       R23 R23 K35 ["Types"]
      159 CALL                             R22 1 1
      160 GETTABLEKS                       R23 R3 K36 ["Util"]
      162 GETTABLEKS                       R23 R23 K37 ["LayoutOrderIterator"]
      164 GETIMPORT                        R24 K5 [require]
      166 GETTABLEKS                       R25 R0 K10 ["Src"]
      168 GETTABLEKS                       R25 R25 K11 ["Resources"]
      170 GETTABLEKS                       R25 R25 K38 ["PluginStyles"]
      172 CALL                             R24 1 1
      173 DUPCLOSURE                       R25 K39 [PROTO_5]
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R2
      196 RETURN                           R25 1
