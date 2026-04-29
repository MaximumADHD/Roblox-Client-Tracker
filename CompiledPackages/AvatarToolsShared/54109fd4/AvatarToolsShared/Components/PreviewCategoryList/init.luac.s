PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K2 ["state"]
        6 GETTABLEKS                       R5 R6 K0 ["expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K3 [{"selection"}]
        6 SETTABLEKS                       R0 R4 K2 ["selection"]
        8 NAMECALL                         R2 R2 K4 ["setState"]
       10 CALL                             R2 2 0
       11 JUMPIFNOT                        R1 ; [+10]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K5 ["props"]
       15 GETTABLEKS                       R2 R3 K6 ["OnCategoryChanged"]
       17 GETTABLEKS                       R3 R1 K7 ["key"]
       19 GETTABLEKS                       R4 R1 K8 ["categoryFilter"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["expanded"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["expanded"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K4 ["props"]
       16 GETTABLEKS                       R0 R1 K5 ["OnArrowClick"]
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K4 ["props"]
       22 GETTABLEKS                       R0 R1 K5 ["OnArrowClick"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"selection", "expansion", "expanded"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["selection"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["expansion"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["expanded"]
       12 SETTABLEKS                       R1 R0 K4 ["state"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K5 ["onExpansionChange"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K6 ["onSelectionChange"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K7 ["onArrowClick"]
       27 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["items"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R2 R1 K2 ["Localization"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R0 K0 ["items"]
       12 GETIMPORT                        R3 K4 [pairs]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R4 R6 K5 ["TABS_INFO"]
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 NEWTABLE                         R8 0 0
       21 GETIMPORT                        R9 K4 [pairs]
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R10 R12 K6 ["CategoryPrefixes"]
       26 CALL                             R9 1 3
       27 FORGPREP_NEXT                    R9
       28 DUPTABLE                         R16 K10 [{"key", "categoryFilter", "text"}]
       29 SETTABLEKS                       R6 R16 K7 ["key"]
       31 SETTABLEKS                       R13 R16 K8 ["categoryFilter"]
       33 GETUPVAL                         R21 1
       34 GETTABLEKS                       R20 R21 K11 ["LOCALIZATION_KEYS"]
       36 GETTABLEKS                       R19 R20 K12 ["Preview"]
       38 MOVE                             R20 R13
       39 NAMECALL                         R17 R2 K13 ["getText"]
       41 CALL                             R17 3 1
       42 SETTABLEKS                       R17 R16 K9 ["text"]
       44 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       46 MOVE                             R15 R8
       47 GETIMPORT                        R14 K16 [table.insert]
       49 CALL                             R14 2 0
       50 FORGLOOP                         R9 2 ; [-23]
       52 GETTABLEKS                       R10 R0 K0 ["items"]
       54 DUPTABLE                         R11 K18 [{"key", "text", "children"}]
       55 SETTABLEKS                       R6 R11 K7 ["key"]
       57 GETUPVAL                         R16 1
       58 GETTABLEKS                       R15 R16 K11 ["LOCALIZATION_KEYS"]
       60 GETTABLEKS                       R14 R15 K12 ["Preview"]
       62 GETTABLEKS                       R15 R7 K19 ["LocalizationKey"]
       64 NAMECALL                         R12 R2 K13 ["getText"]
       66 CALL                             R12 3 1
       67 SETTABLEKS                       R12 R11 K9 ["text"]
       69 SETTABLEKS                       R8 R11 K17 ["children"]
       71 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       73 GETIMPORT                        R9 K16 [table.insert]
       75 CALL                             R9 2 0
       76 FORGLOOP                         R3 2 ; [-58]
       78 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["expanded"]
        6 GETTABLEKS                       R4 R2 K3 ["expansion"]
        8 GETTABLEKS                       R5 R2 K4 ["selection"]
       10 GETTABLEKS                       R6 R1 K5 ["OnArrowClick"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETTABLEKS                       R9 R8 K8 ["IconSize"]
       18 NAMECALL                         R10 R0 K9 ["buildCategoryList"]
       20 CALL                             R10 1 0
       21 JUMPIFNOT                        R3 ; [+3]
       22 GETTABLEKS                       R10 R8 K10 ["Width"]
       24 JUMP                             ; [+1]
       25 MOVE                             R10 R9
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETTABLEKS                       R11 R8 K11 ["Expanded"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R11 R8 K12 ["Collapsed"]
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R12 R13 K13 ["new"]
       35 CALL                             R12 0 1
       36 GETUPVAL                         R14 1
       37 GETTABLEKS                       R13 R14 K14 ["createElement"]
       39 GETUPVAL                         R14 2
       40 DUPTABLE                         R15 K19 [{"Size", "Layout", "VerticalAlignment", "LayoutOrder", "Style"}]
       41 GETIMPORT                        R16 K21 [UDim2.new]
       43 LOADN                            R17 0
       44 MOVE                             R18 R10
       45 LOADN                            R19 1
       46 LOADN                            R20 0
       47 CALL                             R16 4 1
       48 SETTABLEKS                       R16 R15 K15 ["Size"]
       50 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
       52 SETTABLEKS                       R16 R15 K16 ["Layout"]
       54 GETIMPORT                        R16 K27 [Enum.VerticalAlignment.Top]
       56 SETTABLEKS                       R16 R15 K17 ["VerticalAlignment"]
       58 SETTABLEKS                       R7 R15 K6 ["LayoutOrder"]
       60 LOADK                            R16 K28 ["Box"]
       61 SETTABLEKS                       R16 R15 K18 ["Style"]
       63 DUPTABLE                         R16 K31 [{"ListContainer", "ArrowContainer"}]
       64 GETUPVAL                         R18 1
       65 GETTABLEKS                       R17 R18 K14 ["createElement"]
       67 GETUPVAL                         R18 2
       68 DUPTABLE                         R19 K32 [{"Size", "LayoutOrder"}]
       69 GETIMPORT                        R20 K21 [UDim2.new]
       71 LOADN                            R21 1
       72 LOADN                            R22 0
       73 LOADN                            R23 1
       74 MINUS                            R24 R9
       75 CALL                             R20 4 1
       76 SETTABLEKS                       R20 R19 K15 ["Size"]
       78 NAMECALL                         R20 R12 K33 ["getNextOrder"]
       80 CALL                             R20 1 1
       81 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
       83 DUPTABLE                         R20 K35 [{"CategoryTreeView"}]
       84 MOVE                             R21 R3
       85 JUMPIFNOT                        R21 ; [+26]
       86 GETUPVAL                         R22 1
       87 GETTABLEKS                       R21 R22 K14 ["createElement"]
       89 GETUPVAL                         R22 3
       90 DUPTABLE                         R23 K42 [{"Expansion", "Selection", "RootItems", "ScrollingDirection", "OnExpansionChange", "OnSelectionChange"}]
       91 SETTABLEKS                       R4 R23 K36 ["Expansion"]
       93 SETTABLEKS                       R5 R23 K37 ["Selection"]
       95 GETTABLEKS                       R24 R0 K43 ["items"]
       97 SETTABLEKS                       R24 R23 K38 ["RootItems"]
       99 GETIMPORT                        R24 K45 [Enum.ScrollingDirection.Y]
      101 SETTABLEKS                       R24 R23 K39 ["ScrollingDirection"]
      103 GETTABLEKS                       R24 R0 K46 ["onExpansionChange"]
      105 SETTABLEKS                       R24 R23 K40 ["OnExpansionChange"]
      107 GETTABLEKS                       R24 R0 K47 ["onSelectionChange"]
      109 SETTABLEKS                       R24 R23 K41 ["OnSelectionChange"]
      111 CALL                             R21 2 1
      112 SETTABLEKS                       R21 R20 K34 ["CategoryTreeView"]
      114 CALL                             R17 3 1
      115 SETTABLEKS                       R17 R16 K29 ["ListContainer"]
      117 GETUPVAL                         R18 1
      118 GETTABLEKS                       R17 R18 K14 ["createElement"]
      120 GETUPVAL                         R18 2
      121 DUPTABLE                         R19 K32 [{"Size", "LayoutOrder"}]
      122 GETIMPORT                        R20 K21 [UDim2.new]
      124 LOADN                            R21 1
      125 LOADN                            R22 0
      126 LOADN                            R23 0
      127 MOVE                             R24 R9
      128 CALL                             R20 4 1
      129 SETTABLEKS                       R20 R19 K15 ["Size"]
      131 NAMECALL                         R20 R12 K33 ["getNextOrder"]
      133 CALL                             R20 1 1
      134 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      136 DUPTABLE                         R20 K49 [{"Arrow"}]
      137 GETUPVAL                         R22 1
      138 GETTABLEKS                       R21 R22 K14 ["createElement"]
      140 GETUPVAL                         R22 4
      141 DUPTABLE                         R23 K55 [{"AnchorPoint", "Position", "BackgroundStyle", "Size", "IconSize", "LeftIcon", "OnClick"}]
      142 GETIMPORT                        R24 K57 [Vector2.new]
      144 LOADN                            R25 1
      145 LOADN                            R26 0
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K50 ["AnchorPoint"]
      149 GETIMPORT                        R24 K21 [UDim2.new]
      151 LOADN                            R25 1
      152 LOADN                            R26 0
      153 LOADN                            R27 0
      154 LOADN                            R28 0
      155 CALL                             R24 4 1
      156 SETTABLEKS                       R24 R23 K51 ["Position"]
      158 LOADK                            R24 K58 ["None"]
      159 SETTABLEKS                       R24 R23 K52 ["BackgroundStyle"]
      161 GETIMPORT                        R24 K60 [UDim2.fromOffset]
      163 MOVE                             R25 R9
      164 MOVE                             R26 R9
      165 CALL                             R24 2 1
      166 SETTABLEKS                       R24 R23 K15 ["Size"]
      168 SETTABLEKS                       R9 R23 K8 ["IconSize"]
      170 SETTABLEKS                       R11 R23 K53 ["LeftIcon"]
      172 GETTABLEKS                       R24 R0 K61 ["onArrowClick"]
      174 SETTABLEKS                       R24 R23 K54 ["OnClick"]
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K48 ["Arrow"]
      179 CALL                             R17 3 1
      180 SETTABLEKS                       R17 R16 K30 ["ArrowContainer"]
      182 CALL                             R13 3 -1
      183 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Dash"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["join"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R1 K8 ["Framework"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R5 K9 ["ContextServices"]
       28 GETTABLEKS                       R7 R6 K10 ["withContext"]
       30 GETTABLEKS                       R8 R5 K11 ["UI"]
       32 GETTABLEKS                       R9 R8 K12 ["TreeView"]
       34 GETTABLEKS                       R10 R8 K13 ["Pane"]
       36 GETTABLEKS                       R11 R8 K14 ["IconButton"]
       38 GETTABLEKS                       R12 R5 K15 ["Util"]
       40 GETTABLEKS                       R13 R12 K16 ["LayoutOrderIterator"]
       42 GETTABLEKS                       R14 R12 K17 ["Typecheck"]
       44 GETTABLEKS                       R16 R0 K15 ["Util"]
       46 GETTABLEKS                       R15 R16 K18 ["AccessoryAndBodyToolShared"]
       48 GETIMPORT                        R16 K4 [require]
       50 GETTABLEKS                       R17 R15 K19 ["PreviewConstants"]
       52 CALL                             R16 1 1
       53 GETIMPORT                        R17 K4 [require]
       55 GETTABLEKS                       R18 R15 K20 ["Constants"]
       57 CALL                             R17 1 1
       58 GETTABLEKS                       R18 R2 K21 ["PureComponent"]
       60 LOADK                            R20 K22 ["PreviewCategoryList"]
       61 NAMECALL                         R18 R18 K23 ["extend"]
       63 CALL                             R18 2 1
       64 GETTABLEKS                       R19 R14 K24 ["wrap"]
       66 MOVE                             R20 R18
       67 GETIMPORT                        R21 K1 [script]
       69 CALL                             R19 2 0
       70 DUPTABLE                         R19 K26 [{"LayoutOrder"}]
       71 LOADN                            R20 1
       72 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
       74 SETTABLEKS                       R19 R18 K27 ["defaultProps"]
       76 DUPCLOSURE                       R19 K28 [PROTO_3]
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R19 R18 K29 ["init"]
       80 DUPCLOSURE                       R19 K30 [PROTO_4]
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R17
       83 SETTABLEKS                       R19 R18 K31 ["buildCategoryList"]
       85 DUPCLOSURE                       R19 K32 [PROTO_5]
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R11
       91 SETTABLEKS                       R19 R18 K33 ["render"]
       93 MOVE                             R19 R7
       94 DUPTABLE                         R20 K36 [{"Localization", "Stylizer"}]
       95 GETTABLEKS                       R21 R6 K34 ["Localization"]
       97 SETTABLEKS                       R21 R20 K34 ["Localization"]
       99 GETTABLEKS                       R21 R6 K35 ["Stylizer"]
      101 SETTABLEKS                       R21 R20 K35 ["Stylizer"]
      103 CALL                             R19 1 1
      104 MOVE                             R20 R18
      105 CALL                             R19 1 1
      106 MOVE                             R18 R19
      107 RETURN                           R18 1
