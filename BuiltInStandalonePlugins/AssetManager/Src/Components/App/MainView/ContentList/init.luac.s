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
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K1 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 GETUPVAL                         R7 6
       23 CALL                             R7 0 1
       24 GETUPVAL                         R8 7
       25 GETUPVAL                         R11 8
       26 GETTABLEKS                       R10 R11 K2 ["MenuContext"]
       28 GETTABLEKS                       R9 R10 K3 ["Asset"]
       30 CALL                             R8 1 1
       31 GETUPVAL                         R9 9
       32 LOADNIL                          R10
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 10
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R12 0 0
       40 CALL                             R10 2 0
       41 GETUPVAL                         R11 11
       42 CALL                             R11 0 1
       43 GETTABLEKS                       R10 R11 K4 ["Groups"]
       45 DUPTABLE                         R11 K7 [{"HeaderRow", "ListContainer"}]
       46 GETUPVAL                         R13 12
       47 GETTABLEKS                       R12 R13 K8 ["createElement"]
       49 GETUPVAL                         R13 13
       50 DUPTABLE                         R14 K10 [{"LayoutOrder"}]
       51 NAMECALL                         R15 R1 K11 ["getNextOrder"]
       53 CALL                             R15 1 1
       54 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K5 ["HeaderRow"]
       59 GETUPVAL                         R13 12
       60 GETTABLEKS                       R12 R13 K8 ["createElement"]
       62 GETUPVAL                         R13 14
       63 NEWTABLE                         R14 2 0
       65 NAMECALL                         R15 R1 K11 ["getNextOrder"]
       67 CALL                             R15 1 1
       68 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       70 GETUPVAL                         R16 12
       71 GETTABLEKS                       R15 R16 K12 ["Tag"]
       73 GETUPVAL                         R17 15
       74 CALL                             R17 0 1
       75 JUMPIFNOT                        R17 ; [+2]
       76 LOADK                            R16 K13 ["fill data-testid=content-list-internal"]
       77 JUMP                             ; [+1]
       78 LOADK                            R16 K14 ["ItemList data-testid=content-list-internal"]
       79 SETTABLE                         R16 R14 R15
       80 DUPTABLE                         R15 K16 [{"List"}]
       81 GETUPVAL                         R17 12
       82 GETTABLEKS                       R16 R17 K8 ["createElement"]
       84 GETUPVAL                         R17 16
       85 NEWTABLE                         R18 16 0
       87 NAMECALL                         R19 R1 K11 ["getNextOrder"]
       89 CALL                             R19 1 1
       90 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
       92 GETUPVAL                         R20 17
       93 CALL                             R20 0 1
       94 JUMPIFNOT                        R20 ; [+2]
       95 MOVE                             R19 R10
       96 JUMP                             ; [+1]
       97 LOADNIL                          R19
       98 SETTABLEKS                       R19 R18 K17 ["CellGroups"]
      100 GETUPVAL                         R20 17
      101 CALL                             R20 0 1
      102 JUMPIFNOT                        R20 ; [+19]
      103 DUPTABLE                         R19 K21 [{"HeaderComponent", "Size", "Collapsible"}]
      104 GETUPVAL                         R20 18
      105 SETTABLEKS                       R20 R19 K18 ["HeaderComponent"]
      107 GETIMPORT                        R20 K23 [UDim2.new]
      109 LOADN                            R21 1
      110 LOADN                            R22 0
      111 LOADN                            R23 0
      112 GETUPVAL                         R25 19
      113 GETTABLEKS                       R24 R25 K24 ["SectionHeaderHeight"]
      115 CALL                             R20 4 1
      116 SETTABLEKS                       R20 R19 K19 ["Size"]
      118 LOADB                            R20 0
      119 SETTABLEKS                       R20 R19 K20 ["Collapsible"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R19
      123 SETTABLEKS                       R19 R18 K25 ["CellGroupHeader"]
      125 NEWCLOSURE                       R19 P1
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R19 R18 K26 ["GetRowProps"]
      129 SETTABLEKS                       R7 R18 K27 ["Rows"]
      131 GETUPVAL                         R19 20
      132 SETTABLEKS                       R19 R18 K28 ["RowComponent"]
      134 GETUPVAL                         R19 21
      135 LOADK                            R21 K29 ["ContentListRowHeight"]
      136 NAMECALL                         R19 R19 K30 ["GetAttribute"]
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K31 ["RowHeight"]
      141 NEWCLOSURE                       R19 P2
      142 CAPTURE                          VAL R4
      143 SETTABLEKS                       R19 R18 K32 ["OnLoadRange"]
      145 GETIMPORT                        R19 K36 [Enum.ScrollBarInset.None]
      147 SETTABLEKS                       R19 R18 K37 ["VerticalScrollBarInset"]
      149 GETIMPORT                        R19 K40 [Enum.ScrollingDirection.XY]
      151 SETTABLEKS                       R19 R18 K38 ["ScrollingDirection"]
      153 SETTABLEKS                       R9 R18 K41 ["ref"]
      155 GETUPVAL                         R20 12
      156 GETTABLEKS                       R19 R20 K12 ["Tag"]
      158 GETUPVAL                         R21 15
      159 CALL                             R21 0 1
      160 JUMPIFNOT                        R21 ; [+2]
      161 LOADNIL                          R20
      162 JUMP                             ; [+1]
      163 LOADK                            R20 K42 ["MyList"]
      164 SETTABLE                         R20 R18 R19
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K15 ["List"]
      168 CALL                             R12 3 1
      169 SETTABLEKS                       R12 R11 K6 ["ListContainer"]
      171 GETUPVAL                         R12 15
      172 CALL                             R12 0 1
      173 JUMPIFNOT                        R12 ; [+38]
      174 GETUPVAL                         R13 12
      175 GETTABLEKS                       R12 R13 K8 ["createElement"]
      177 GETUPVAL                         R14 22
      178 GETTABLEKS                       R13 R14 K43 ["View"]
      180 DUPTABLE                         R14 K47 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
      181 GETTABLEKS                       R15 R0 K9 ["LayoutOrder"]
      183 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      185 NEWCLOSURE                       R15 P3
      186 CAPTURE                          UPVAL U23
      187 CAPTURE                          VAL R3
      188 CAPTURE                          UPVAL U8
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R2
      192 SETTABLEKS                       R15 R14 K44 ["onSecondaryActivated"]
      194 DUPTABLE                         R15 K49 [{"affordance"}]
      195 GETUPVAL                         R19 22
      196 GETTABLEKS                       R18 R19 K50 ["Enums"]
      198 GETTABLEKS                       R17 R18 K51 ["StateLayerAffordance"]
      200 GETTABLEKS                       R16 R17 K35 ["None"]
      202 SETTABLEKS                       R16 R15 K48 ["affordance"]
      204 SETTABLEKS                       R15 R14 K45 ["stateLayer"]
      206 LOADK                            R15 K52 ["size-full fill col align-x-center data-testid=content-list"]
      207 SETTABLEKS                       R15 R14 K46 ["tag"]
      209 MOVE                             R15 R11
      210 CALL                             R12 3 -1
      211 RETURN                           R12 -1
      212 GETUPVAL                         R13 12
      213 GETTABLEKS                       R12 R13 K8 ["createElement"]
      215 GETUPVAL                         R13 14
      216 NEWTABLE                         R14 4 0
      218 GETTABLEKS                       R15 R0 K9 ["LayoutOrder"]
      220 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      222 NEWCLOSURE                       R15 P4
      223 CAPTURE                          UPVAL U23
      224 CAPTURE                          VAL R3
      225 CAPTURE                          UPVAL U8
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R2
      229 SETTABLEKS                       R15 R14 K53 ["OnRightClick"]
      231 GETUPVAL                         R16 12
      232 GETTABLEKS                       R15 R16 K12 ["Tag"]
      234 LOADK                            R17 K54 ["ContentList X-Top X-Column X-Center %* data-testid=content-list"]
      235 GETUPVAL                         R21 12
      236 GETTABLEKS                       R20 R21 K12 ["Tag"]
      238 GETTABLE                         R19 R0 R20
      239 NAMECALL                         R17 R17 K55 ["format"]
      241 CALL                             R17 2 1
      242 MOVE                             R16 R17
      243 SETTABLE                         R16 R14 R15
      244 MOVE                             R15 R11
      245 CALL                             R12 3 -1
      246 RETURN                           R12 -1

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
       37 GETTABLEKS                       R5 R3 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETTABLEKS                       R7 R3 K15 ["UI"]
       43 GETTABLEKS                       R8 R7 K16 ["Pane"]
       45 GETTABLEKS                       R9 R7 K17 ["List"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETIMPORT                        R12 K1 [script]
       51 GETTABLEKS                       R11 R12 K18 ["HeaderRow"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R14 R0 K10 ["Src"]
       58 GETTABLEKS                       R13 R14 K19 ["Flags"]
       60 GETTABLEKS                       R12 R13 K20 ["getFFlagAmrFoundationifyBrowser"]
       62 CALL                             R11 1 1
       63 MOVE                             R13 R11
       64 CALL                             R13 0 1
       65 JUMPIFNOT                        R13 ; [+8]
       66 GETIMPORT                        R12 K5 [require]
       68 GETIMPORT                        R14 K1 [script]
       70 GETTABLEKS                       R13 R14 K21 ["ItemRow"]
       72 CALL                             R12 1 1
       73 JUMP                             ; [+7]
       74 GETIMPORT                        R12 K5 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R13 R14 K22 ["ItemRow_DEPRECATED"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R17 R0 K10 ["Src"]
       85 GETTABLEKS                       R16 R17 K23 ["Components"]
       87 GETTABLEKS                       R15 R16 K24 ["Shared"]
       89 GETTABLEKS                       R14 R15 K25 ["SearchSectionHeader"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R17 R0 K10 ["Src"]
       96 GETTABLEKS                       R16 R17 K26 ["Controllers"]
       98 GETTABLEKS                       R15 R16 K27 ["Input"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R18 R0 K10 ["Src"]
      105 GETTABLEKS                       R17 R18 K26 ["Controllers"]
      107 GETTABLEKS                       R16 R17 K28 ["ItemsController"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R19 R0 K10 ["Src"]
      114 GETTABLEKS                       R18 R19 K26 ["Controllers"]
      116 GETTABLEKS                       R17 R18 K29 ["LayoutController"]
      118 CALL                             R16 1 1
      119 GETTABLEKS                       R17 R1 K30 ["useRef"]
      121 GETTABLEKS                       R18 R1 K31 ["useEffect"]
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R22 R0 K10 ["Src"]
      127 GETTABLEKS                       R21 R22 K32 ["Hooks"]
      129 GETTABLEKS                       R20 R21 K33 ["useContextMenu"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETTABLEKS                       R23 R0 K10 ["Src"]
      136 GETTABLEKS                       R22 R23 K32 ["Hooks"]
      138 GETTABLEKS                       R21 R22 K34 ["useCurrentScope"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETTABLEKS                       R24 R0 K10 ["Src"]
      145 GETTABLEKS                       R23 R24 K32 ["Hooks"]
      147 GETTABLEKS                       R22 R23 K35 ["useItems"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R25 R0 K10 ["Src"]
      154 GETTABLEKS                       R24 R25 K32 ["Hooks"]
      156 GETTABLEKS                       R23 R24 K36 ["useSearchSections"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R25 R0 K10 ["Src"]
      163 GETTABLEKS                       R24 R25 K37 ["Types"]
      165 CALL                             R23 1 1
      166 GETTABLEKS                       R25 R3 K38 ["Util"]
      168 GETTABLEKS                       R24 R25 K39 ["LayoutOrderIterator"]
      170 GETIMPORT                        R25 K5 [require]
      172 GETTABLEKS                       R28 R0 K10 ["Src"]
      174 GETTABLEKS                       R27 R28 K11 ["Resources"]
      176 GETTABLEKS                       R26 R27 K40 ["PluginStyles"]
      178 CALL                             R25 1 1
      179 GETIMPORT                        R26 K5 [require]
      181 GETTABLEKS                       R29 R0 K10 ["Src"]
      183 GETTABLEKS                       R28 R29 K19 ["Flags"]
      185 GETTABLEKS                       R27 R28 K41 ["getFFlagAmrContextMenuRefactor"]
      187 CALL                             R26 1 1
      188 GETIMPORT                        R27 K5 [require]
      190 GETTABLEKS                       R30 R0 K10 ["Src"]
      192 GETTABLEKS                       R29 R30 K19 ["Flags"]
      194 GETTABLEKS                       R28 R29 K42 ["getFFlagAmrOrganizationFoundation"]
      196 CALL                             R27 1 1
      197 DUPCLOSURE                       R28 K43 [PROTO_6]
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R26
      222 RETURN                           R28 1
