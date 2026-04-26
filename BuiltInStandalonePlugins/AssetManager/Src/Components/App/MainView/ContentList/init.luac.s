PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setContentList"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R3 K1 ["Browser"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R3 K1 ["Browser"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 1
       20 GETUPVAL                         R7 6
       21 GETUPVAL                         R10 7
       22 GETTABLEKS                       R9 R10 K2 ["MenuContext"]
       24 GETTABLEKS                       R8 R9 K3 ["Asset"]
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
       37 GETUPVAL                         R10 10
       38 CALL                             R10 0 1
       39 GETTABLEKS                       R9 R10 K4 ["Groups"]
       41 DUPTABLE                         R10 K7 [{"HeaderRow", "ListContainer"}]
       42 GETUPVAL                         R12 11
       43 GETTABLEKS                       R11 R12 K8 ["createElement"]
       45 GETUPVAL                         R12 12
       46 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       47 NAMECALL                         R14 R1 K11 ["getNextOrder"]
       49 CALL                             R14 1 1
       50 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K5 ["HeaderRow"]
       55 GETUPVAL                         R12 11
       56 GETTABLEKS                       R11 R12 K8 ["createElement"]
       58 GETUPVAL                         R12 13
       59 NEWTABLE                         R13 2 0
       61 NAMECALL                         R14 R1 K11 ["getNextOrder"]
       63 CALL                             R14 1 1
       64 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       66 GETUPVAL                         R15 11
       67 GETTABLEKS                       R14 R15 K12 ["Tag"]
       69 GETUPVAL                         R16 14
       70 CALL                             R16 0 1
       71 JUMPIFNOT                        R16 ; [+2]
       72 LOADK                            R15 K13 ["fill data-testid=content-list-internal"]
       73 JUMP                             ; [+1]
       74 LOADK                            R15 K14 ["ItemList data-testid=content-list-internal"]
       75 SETTABLE                         R15 R13 R14
       76 DUPTABLE                         R14 K16 [{"List"}]
       77 GETUPVAL                         R16 11
       78 GETTABLEKS                       R15 R16 K8 ["createElement"]
       80 GETUPVAL                         R16 15
       81 NEWTABLE                         R17 16 0
       83 NAMECALL                         R18 R1 K11 ["getNextOrder"]
       85 CALL                             R18 1 1
       86 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
       88 GETUPVAL                         R19 16
       89 CALL                             R19 0 1
       90 JUMPIFNOT                        R19 ; [+2]
       91 MOVE                             R18 R9
       92 JUMP                             ; [+1]
       93 LOADNIL                          R18
       94 SETTABLEKS                       R18 R17 K17 ["CellGroups"]
       96 GETUPVAL                         R19 16
       97 CALL                             R19 0 1
       98 JUMPIFNOT                        R19 ; [+19]
       99 DUPTABLE                         R18 K21 [{"HeaderComponent", "Size", "Collapsible"}]
      100 GETUPVAL                         R19 17
      101 SETTABLEKS                       R19 R18 K18 ["HeaderComponent"]
      103 GETIMPORT                        R19 K23 [UDim2.new]
      105 LOADN                            R20 1
      106 LOADN                            R21 0
      107 LOADN                            R22 0
      108 GETUPVAL                         R24 18
      109 GETTABLEKS                       R23 R24 K24 ["SectionHeaderHeight"]
      111 CALL                             R19 4 1
      112 SETTABLEKS                       R19 R18 K19 ["Size"]
      114 LOADB                            R19 0
      115 SETTABLEKS                       R19 R18 K20 ["Collapsible"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R18
      119 SETTABLEKS                       R18 R17 K25 ["CellGroupHeader"]
      121 NEWCLOSURE                       R18 P1
      122 CAPTURE                          VAL R5
      123 SETTABLEKS                       R18 R17 K26 ["GetRowProps"]
      125 SETTABLEKS                       R6 R17 K27 ["Rows"]
      127 GETUPVAL                         R18 19
      128 SETTABLEKS                       R18 R17 K28 ["RowComponent"]
      130 GETUPVAL                         R18 20
      131 LOADK                            R20 K29 ["ContentListRowHeight"]
      132 NAMECALL                         R18 R18 K30 ["GetAttribute"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K31 ["RowHeight"]
      137 NEWCLOSURE                       R18 P2
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R18 R17 K32 ["OnLoadRange"]
      141 GETIMPORT                        R18 K36 [Enum.ScrollBarInset.None]
      143 SETTABLEKS                       R18 R17 K37 ["VerticalScrollBarInset"]
      145 GETIMPORT                        R18 K40 [Enum.ScrollingDirection.XY]
      147 SETTABLEKS                       R18 R17 K38 ["ScrollingDirection"]
      149 SETTABLEKS                       R8 R17 K41 ["ref"]
      151 GETUPVAL                         R19 11
      152 GETTABLEKS                       R18 R19 K12 ["Tag"]
      154 GETUPVAL                         R20 14
      155 CALL                             R20 0 1
      156 JUMPIFNOT                        R20 ; [+2]
      157 LOADNIL                          R19
      158 JUMP                             ; [+1]
      159 LOADK                            R19 K42 ["MyList"]
      160 SETTABLE                         R19 R17 R18
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K15 ["List"]
      164 CALL                             R11 3 1
      165 SETTABLEKS                       R11 R10 K6 ["ListContainer"]
      167 GETUPVAL                         R11 14
      168 CALL                             R11 0 1
      169 JUMPIFNOT                        R11 ; [+35]
      170 GETUPVAL                         R12 11
      171 GETTABLEKS                       R11 R12 K8 ["createElement"]
      173 GETUPVAL                         R13 21
      174 GETTABLEKS                       R12 R13 K43 ["View"]
      176 DUPTABLE                         R13 K47 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
      177 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
      179 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      181 NEWCLOSURE                       R14 P3
      182 CAPTURE                          VAL R2
      183 CAPTURE                          UPVAL U7
      184 CAPTURE                          VAL R7
      185 SETTABLEKS                       R14 R13 K44 ["onSecondaryActivated"]
      187 DUPTABLE                         R14 K49 [{"affordance"}]
      188 GETUPVAL                         R18 21
      189 GETTABLEKS                       R17 R18 K50 ["Enums"]
      191 GETTABLEKS                       R16 R17 K51 ["StateLayerAffordance"]
      193 GETTABLEKS                       R15 R16 K35 ["None"]
      195 SETTABLEKS                       R15 R14 K48 ["affordance"]
      197 SETTABLEKS                       R14 R13 K45 ["stateLayer"]
      199 LOADK                            R14 K52 ["size-full fill col align-x-center data-testid=content-list"]
      200 SETTABLEKS                       R14 R13 K46 ["tag"]
      202 MOVE                             R14 R10
      203 CALL                             R11 3 -1
      204 RETURN                           R11 -1
      205 GETUPVAL                         R12 11
      206 GETTABLEKS                       R11 R12 K8 ["createElement"]
      208 GETUPVAL                         R12 13
      209 NEWTABLE                         R13 4 0
      211 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
      213 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      215 NEWCLOSURE                       R14 P4
      216 CAPTURE                          VAL R2
      217 CAPTURE                          UPVAL U7
      218 CAPTURE                          VAL R7
      219 SETTABLEKS                       R14 R13 K53 ["OnRightClick"]
      221 GETUPVAL                         R15 11
      222 GETTABLEKS                       R14 R15 K12 ["Tag"]
      224 LOADK                            R16 K54 ["ContentList X-Top X-Column X-Center %* data-testid=content-list"]
      225 GETUPVAL                         R20 11
      226 GETTABLEKS                       R19 R20 K12 ["Tag"]
      228 GETTABLE                         R18 R0 R19
      229 NAMECALL                         R16 R16 K55 ["format"]
      231 CALL                             R16 2 1
      232 MOVE                             R15 R16
      233 SETTABLE                         R15 R13 R14
      234 MOVE                             R14 R10
      235 CALL                             R11 3 -1
      236 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Resources"]
       34 GETTABLEKS                       R5 R6 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["Pane"]
       41 GETTABLEKS                       R7 R5 K15 ["List"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETIMPORT                        R10 K1 [script]
       47 GETTABLEKS                       R9 R10 K16 ["HeaderRow"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R12 R0 K10 ["Src"]
       54 GETTABLEKS                       R11 R12 K17 ["Flags"]
       56 GETTABLEKS                       R10 R11 K18 ["getFFlagAmrFoundationifyBrowser"]
       58 CALL                             R9 1 1
       59 MOVE                             R11 R9
       60 CALL                             R11 0 1
       61 JUMPIFNOT                        R11 ; [+8]
       62 GETIMPORT                        R10 K5 [require]
       64 GETIMPORT                        R12 K1 [script]
       66 GETTABLEKS                       R11 R12 K19 ["ItemRow"]
       68 CALL                             R10 1 1
       69 JUMP                             ; [+7]
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R11 R12 K20 ["ItemRow_DEPRECATED"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R15 R0 K10 ["Src"]
       81 GETTABLEKS                       R14 R15 K21 ["Components"]
       83 GETTABLEKS                       R13 R14 K22 ["Shared"]
       85 GETTABLEKS                       R12 R13 K23 ["SearchSectionHeader"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R15 R0 K10 ["Src"]
       92 GETTABLEKS                       R14 R15 K24 ["Controllers"]
       94 GETTABLEKS                       R13 R14 K25 ["Input"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R16 R0 K10 ["Src"]
      101 GETTABLEKS                       R15 R16 K24 ["Controllers"]
      103 GETTABLEKS                       R14 R15 K26 ["ItemsController"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R17 R0 K10 ["Src"]
      110 GETTABLEKS                       R16 R17 K24 ["Controllers"]
      112 GETTABLEKS                       R15 R16 K27 ["LayoutController"]
      114 CALL                             R14 1 1
      115 GETTABLEKS                       R15 R1 K28 ["useRef"]
      117 GETTABLEKS                       R16 R1 K29 ["useEffect"]
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R20 R0 K10 ["Src"]
      123 GETTABLEKS                       R19 R20 K30 ["Hooks"]
      125 GETTABLEKS                       R18 R19 K31 ["useContextMenu"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R21 R0 K10 ["Src"]
      132 GETTABLEKS                       R20 R21 K30 ["Hooks"]
      134 GETTABLEKS                       R19 R20 K32 ["useCurrentScope"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R22 R0 K10 ["Src"]
      141 GETTABLEKS                       R21 R22 K30 ["Hooks"]
      143 GETTABLEKS                       R20 R21 K33 ["useItems"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R23 R0 K10 ["Src"]
      150 GETTABLEKS                       R22 R23 K30 ["Hooks"]
      152 GETTABLEKS                       R21 R22 K34 ["useSearchSections"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R23 R0 K10 ["Src"]
      159 GETTABLEKS                       R22 R23 K35 ["Types"]
      161 CALL                             R21 1 1
      162 GETTABLEKS                       R23 R3 K36 ["Util"]
      164 GETTABLEKS                       R22 R23 K37 ["LayoutOrderIterator"]
      166 GETIMPORT                        R23 K5 [require]
      168 GETTABLEKS                       R26 R0 K10 ["Src"]
      170 GETTABLEKS                       R25 R26 K11 ["Resources"]
      172 GETTABLEKS                       R24 R25 K38 ["PluginStyles"]
      174 CALL                             R23 1 1
      175 GETIMPORT                        R24 K5 [require]
      177 GETTABLEKS                       R27 R0 K10 ["Src"]
      179 GETTABLEKS                       R26 R27 K17 ["Flags"]
      181 GETTABLEKS                       R25 R26 K39 ["getFFlagAmrOrganizationFoundation"]
      183 CALL                             R24 1 1
      184 DUPCLOSURE                       R25 K40 [PROTO_6]
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R24
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R2
      207 RETURN                           R25 1
