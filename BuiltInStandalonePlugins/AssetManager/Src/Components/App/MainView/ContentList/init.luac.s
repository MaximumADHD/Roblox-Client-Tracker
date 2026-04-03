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
        0 DUPTABLE                         R4 K4 [{"Key", "Position", "ItemPath", "ParentScope"}]
        1 SETTABLEKS                       R1 R4 K0 ["Key"]
        3 SETTABLEKS                       R2 R4 K1 ["Position"]
        5 GETUPVAL                         R6 0
        6 CALL                             R6 0 1
        7 JUMPIFNOT                        R6 ; [+2]
        8 MOVE                             R5 R0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K2 ["ItemPath"]
       13 GETUPVAL                         R6 0
       14 CALL                             R6 0 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 GETUPVAL                         R5 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 SETTABLEKS                       R5 R4 K3 ["ParentScope"]
       21 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["requestNextPage"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
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
       20 LOADNIL                          R6
       21 GETUPVAL                         R7 5
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+3]
       24 GETUPVAL                         R7 6
       25 CALL                             R7 0 1
       26 MOVE                             R6 R7
       27 GETUPVAL                         R7 7
       28 CALL                             R7 0 1
       29 GETUPVAL                         R8 8
       30 GETUPVAL                         R11 9
       31 GETTABLEKS                       R10 R11 K2 ["MenuContext"]
       33 GETTABLEKS                       R9 R10 K3 ["Asset"]
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 10
       37 LOADNIL                          R10
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 11
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R12 0 0
       45 CALL                             R10 2 0
       46 GETUPVAL                         R11 12
       47 GETTABLEKS                       R10 R11 K4 ["createElement"]
       49 GETUPVAL                         R11 13
       50 NEWTABLE                         R12 4 0
       52 GETTABLEKS                       R13 R0 K5 ["LayoutOrder"]
       54 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          UPVAL U14
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R13 R12 K6 ["OnRightClick"]
       65 GETUPVAL                         R14 12
       66 GETTABLEKS                       R13 R14 K7 ["Tag"]
       68 LOADK                            R15 K8 ["ContentList X-Top X-Column X-Center %*"]
       69 GETUPVAL                         R19 12
       70 GETTABLEKS                       R18 R19 K7 ["Tag"]
       72 GETTABLE                         R17 R0 R18
       73 NAMECALL                         R15 R15 K9 ["format"]
       75 CALL                             R15 2 1
       76 MOVE                             R14 R15
       77 SETTABLE                         R14 R12 R13
       78 DUPTABLE                         R13 K12 [{"HeaderRow", "ListContainer"}]
       79 GETUPVAL                         R15 12
       80 GETTABLEKS                       R14 R15 K4 ["createElement"]
       82 GETUPVAL                         R15 15
       83 DUPTABLE                         R16 K13 [{"LayoutOrder"}]
       84 NAMECALL                         R17 R1 K14 ["getNextOrder"]
       86 CALL                             R17 1 1
       87 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K10 ["HeaderRow"]
       92 GETUPVAL                         R15 12
       93 GETTABLEKS                       R14 R15 K4 ["createElement"]
       95 GETUPVAL                         R15 13
       96 NEWTABLE                         R16 2 0
       98 NAMECALL                         R17 R1 K14 ["getNextOrder"]
      100 CALL                             R17 1 1
      101 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      103 GETUPVAL                         R18 12
      104 GETTABLEKS                       R17 R18 K7 ["Tag"]
      106 LOADK                            R18 K15 ["ItemList"]
      107 SETTABLE                         R18 R16 R17
      108 DUPTABLE                         R17 K17 [{"List"}]
      109 GETUPVAL                         R19 12
      110 GETTABLEKS                       R18 R19 K4 ["createElement"]
      112 GETUPVAL                         R19 16
      113 NEWTABLE                         R20 16 0
      115 NAMECALL                         R21 R1 K14 ["getNextOrder"]
      117 CALL                             R21 1 1
      118 SETTABLEKS                       R21 R20 K5 ["LayoutOrder"]
      120 NEWCLOSURE                       R21 P2
      121 CAPTURE                          UPVAL U5
      122 CAPTURE                          REF R6
      123 SETTABLEKS                       R21 R20 K18 ["GetRowProps"]
      125 SETTABLEKS                       R7 R20 K19 ["Rows"]
      127 GETUPVAL                         R21 17
      128 SETTABLEKS                       R21 R20 K20 ["RowComponent"]
      130 GETUPVAL                         R21 18
      131 LOADK                            R23 K21 ["ContentListRowHeight"]
      132 NAMECALL                         R21 R21 K22 ["GetAttribute"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K23 ["RowHeight"]
      137 NEWCLOSURE                       R21 P3
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R21 R20 K24 ["OnLoadRange"]
      141 GETIMPORT                        R21 K28 [Enum.ScrollBarInset.None]
      143 SETTABLEKS                       R21 R20 K29 ["VerticalScrollBarInset"]
      145 GETIMPORT                        R21 K32 [Enum.ScrollingDirection.XY]
      147 SETTABLEKS                       R21 R20 K30 ["ScrollingDirection"]
      149 SETTABLEKS                       R9 R20 K33 ["ref"]
      151 GETUPVAL                         R22 12
      152 GETTABLEKS                       R21 R22 K7 ["Tag"]
      154 LOADK                            R22 K34 ["MyList"]
      155 SETTABLE                         R22 R20 R21
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K16 ["List"]
      159 CALL                             R14 3 1
      160 SETTABLEKS                       R14 R13 K11 ["ListContainer"]
      162 CALL                             R10 3 -1
      163 CLOSEUPVALS                      R6
      164 RETURN                           R10 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["List"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETIMPORT                        R10 K1 [script]
       35 GETTABLEKS                       R9 R10 K14 ["HeaderRow"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R12 R0 K15 ["Src"]
       42 GETTABLEKS                       R11 R12 K16 ["Flags"]
       44 GETTABLEKS                       R10 R11 K17 ["getFFlagAmrFoundationifyBrowser"]
       46 CALL                             R9 1 1
       47 MOVE                             R11 R9
       48 CALL                             R11 0 1
       49 JUMPIFNOT                        R11 ; [+8]
       50 GETIMPORT                        R10 K5 [require]
       52 GETIMPORT                        R12 K1 [script]
       54 GETTABLEKS                       R11 R12 K18 ["ItemRow"]
       56 CALL                             R10 1 1
       57 JUMP                             ; [+7]
       58 GETIMPORT                        R10 K5 [require]
       60 GETIMPORT                        R12 K1 [script]
       62 GETTABLEKS                       R11 R12 K19 ["ItemRow_DEPRECATED"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K15 ["Src"]
       69 GETTABLEKS                       R13 R14 K20 ["Controllers"]
       71 GETTABLEKS                       R12 R13 K21 ["Input"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K15 ["Src"]
       78 GETTABLEKS                       R14 R15 K20 ["Controllers"]
       80 GETTABLEKS                       R13 R14 K22 ["ItemsController"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K15 ["Src"]
       87 GETTABLEKS                       R15 R16 K20 ["Controllers"]
       89 GETTABLEKS                       R14 R15 K23 ["LayoutController"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R14 R1 K24 ["useRef"]
       94 GETTABLEKS                       R15 R1 K25 ["useEffect"]
       96 GETIMPORT                        R16 K5 [require]
       98 GETTABLEKS                       R19 R0 K15 ["Src"]
      100 GETTABLEKS                       R18 R19 K26 ["Hooks"]
      102 GETTABLEKS                       R17 R18 K27 ["useContextMenu"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K5 [require]
      107 GETTABLEKS                       R20 R0 K15 ["Src"]
      109 GETTABLEKS                       R19 R20 K26 ["Hooks"]
      111 GETTABLEKS                       R18 R19 K28 ["useCurrentScope"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K5 [require]
      116 GETTABLEKS                       R21 R0 K15 ["Src"]
      118 GETTABLEKS                       R20 R21 K26 ["Hooks"]
      120 GETTABLEKS                       R19 R20 K29 ["useItems"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K5 [require]
      125 GETTABLEKS                       R21 R0 K15 ["Src"]
      127 GETTABLEKS                       R20 R21 K30 ["Types"]
      129 CALL                             R19 1 1
      130 GETTABLEKS                       R21 R2 K31 ["Util"]
      132 GETTABLEKS                       R20 R21 K32 ["LayoutOrderIterator"]
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R24 R0 K15 ["Src"]
      138 GETTABLEKS                       R23 R24 K33 ["Resources"]
      140 GETTABLEKS                       R22 R23 K34 ["PluginStyles"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K5 [require]
      145 GETTABLEKS                       R25 R0 K15 ["Src"]
      147 GETTABLEKS                       R24 R25 K16 ["Flags"]
      149 GETTABLEKS                       R23 R24 K35 ["getFFlagAmrUpdatedItemsCache"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R23 K5 [require]
      154 GETTABLEKS                       R26 R0 K15 ["Src"]
      156 GETTABLEKS                       R25 R26 K16 ["Flags"]
      158 GETTABLEKS                       R24 R25 K36 ["getFFlagAmrContextMenuRefactor"]
      160 CALL                             R23 1 1
      161 DUPCLOSURE                       R24 K37 [PROTO_5]
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R21
      181 RETURN                           R24 1
