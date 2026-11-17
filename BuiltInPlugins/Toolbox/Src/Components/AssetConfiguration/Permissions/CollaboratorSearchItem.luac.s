PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsHovered"]
        4 GETTABLEKS                       R3 R1 K2 ["Icon"]
        6 GETTABLEKS                       R4 R1 K3 ["Name"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["OnActivated"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["TextPadding"]
       16 GETTABLEKS                       R9 R0 K0 ["props"]
       18 GETTABLEKS                       R9 R9 K8 ["Stylizer"]
       20 GETTABLEKS                       R10 R9 K9 ["assetConfig"]
       22 GETTABLEKS                       R10 R10 K10 ["packagePermissions"]
       24 GETTABLEKS                       R10 R10 K11 ["searchBar"]
       26 JUMPIFNOT                        R2 ; [+2]
       27 LOADN                            R11 100
       28 JUMP                             ; [+1]
       29 LOADN                            R11 50
       30 MINUS                            R12 R11
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETTABLEKS                       R13 R10 K12 ["dropDown"]
       34 GETTABLEKS                       R13 R13 K13 ["hovered"]
       36 GETTABLEKS                       R13 R13 K14 ["backgroundColor"]
       38 JUMPIF                           R13 ; [+4]
       39 GETTABLEKS                       R13 R10 K12 ["dropDown"]
       41 GETTABLEKS                       R13 R13 K14 ["backgroundColor"]
       43 GETUPVAL                         R14 0
       44 GETTABLEKS                       R14 R14 K15 ["createElement"]
       46 GETUPVAL                         R15 1
       47 DUPTABLE                         R16 K17 [{"Size", "LayoutOrder", "OnClick"}]
       48 SETTABLEKS                       R7 R16 K6 ["Size"]
       50 SETTABLEKS                       R5 R16 K4 ["LayoutOrder"]
       52 SETTABLEKS                       R6 R16 K16 ["OnClick"]
       54 DUPTABLE                         R17 K19 [{"Container"}]
       55 GETUPVAL                         R18 0
       56 GETTABLEKS                       R18 R18 K15 ["createElement"]
       58 LOADK                            R19 K20 ["Frame"]
       59 DUPTABLE                         R20 K25 [{["AutomaticSize"], ["LayoutOrder"] = 0, ["BackgroundTransparency"] = 1}]
       60 GETIMPORT                        R21 K28 [Enum.AutomaticSize.X]
       62 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
       64 DUPTABLE                         R21 K32 [{"UIListLayout", "IconFrame", "TextLabel"}]
       65 GETUPVAL                         R22 0
       66 GETTABLEKS                       R22 R22 K15 ["createElement"]
       68 LOADK                            R23 K29 ["UIListLayout"]
       69 DUPTABLE                         R24 K35 [{"SortOrder", "FillDirection"}]
       70 GETIMPORT                        R25 K36 [Enum.SortOrder.LayoutOrder]
       72 SETTABLEKS                       R25 R24 K33 ["SortOrder"]
       74 GETIMPORT                        R25 K38 [Enum.FillDirection.Horizontal]
       76 SETTABLEKS                       R25 R24 K34 ["FillDirection"]
       78 CALL                             R22 2 1
       79 SETTABLEKS                       R22 R21 K29 ["UIListLayout"]
       81 GETUPVAL                         R22 0
       82 GETTABLEKS                       R22 R22 K15 ["createElement"]
       84 LOADK                            R23 K20 ["Frame"]
       85 DUPTABLE                         R24 K39 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
       86 GETIMPORT                        R25 K42 [UDim2.new]
       88 LOADN                            R26 0
       89 LOADN                            R27 50
       90 LOADN                            R28 0
       91 LOADN                            R29 50
       92 CALL                             R25 4 1
       93 SETTABLEKS                       R25 R24 K6 ["Size"]
       95 DUPTABLE                         R25 K44 [{"SmallIcon"}]
       96 GETUPVAL                         R26 0
       97 GETTABLEKS                       R26 R26 K15 ["createElement"]
       99 LOADK                            R27 K20 ["Frame"]
      100 DUPTABLE                         R28 K49 [{["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      101 GETIMPORT                        R29 K51 [Vector2.new]
      103 LOADK                            R30 K52 [0.5]
      104 LOADK                            R31 K52 [0.5]
      105 CALL                             R29 2 1
      106 SETTABLEKS                       R29 R28 K45 ["AnchorPoint"]
      108 SETTABLEKS                       R13 R28 K46 ["BackgroundColor3"]
      110 GETIMPORT                        R29 K42 [UDim2.new]
      112 LOADK                            R30 K52 [0.5]
      113 LOADN                            R31 0
      114 LOADK                            R32 K52 [0.5]
      115 LOADN                            R33 0
      116 CALL                             R29 4 1
      117 SETTABLEKS                       R29 R28 K48 ["Position"]
      119 GETIMPORT                        R29 K42 [UDim2.new]
      121 LOADN                            R30 0
      122 LOADN                            R31 32
      123 LOADN                            R32 0
      124 LOADN                            R33 32
      125 CALL                             R29 4 1
      126 SETTABLEKS                       R29 R28 K6 ["Size"]
      128 DUPTABLE                         R29 K53 [{"Icon"}]
      129 SETTABLEKS                       R3 R29 K2 ["Icon"]
      131 CALL                             R26 3 1
      132 SETTABLEKS                       R26 R25 K43 ["SmallIcon"]
      134 CALL                             R22 3 1
      135 SETTABLEKS                       R22 R21 K30 ["IconFrame"]
      137 GETUPVAL                         R22 0
      138 GETTABLEKS                       R22 R22 K15 ["createElement"]
      140 LOADK                            R23 K31 ["TextLabel"]
      141 DUPTABLE                         R24 K63 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      142 GETUPVAL                         R25 2
      143 GETTABLEKS                       R25 R25 K64 ["FONT"]
      145 SETTABLEKS                       R25 R24 K56 ["Font"]
      147 GETIMPORT                        R25 K42 [UDim2.new]
      149 LOADN                            R26 1
      150 MOVE                             R27 R12
      151 LOADN                            R28 0
      152 LOADN                            R29 50
      153 CALL                             R25 4 1
      154 SETTABLEKS                       R25 R24 K6 ["Size"]
      156 SETTABLEKS                       R4 R24 K58 ["Text"]
      158 GETTABLEKS                       R25 R9 K9 ["assetConfig"]
      160 GETTABLEKS                       R25 R25 K65 ["textColor"]
      162 SETTABLEKS                       R25 R24 K59 ["TextColor3"]
      164 GETUPVAL                         R25 2
      165 GETTABLEKS                       R25 R25 K66 ["FONT_SIZE_TITLE"]
      167 SETTABLEKS                       R25 R24 K60 ["TextSize"]
      169 GETIMPORT                        R25 K68 [Enum.TextXAlignment.Left]
      171 SETTABLEKS                       R25 R24 K62 ["TextXAlignment"]
      173 DUPTABLE                         R25 K70 [{"Padding"}]
      174 GETUPVAL                         R26 0
      175 GETTABLEKS                       R26 R26 K15 ["createElement"]
      177 LOADK                            R27 K71 ["UIPadding"]
      178 DUPTABLE                         R28 K73 [{"PaddingLeft"}]
      179 GETIMPORT                        R29 K75 [UDim.new]
      181 LOADN                            R30 0
      182 MOVE                             R31 R8
      183 CALL                             R29 2 1
      184 SETTABLEKS                       R29 R28 K72 ["PaddingLeft"]
      186 CALL                             R26 2 1
      187 SETTABLEKS                       R26 R25 K69 ["Padding"]
      189 CALL                             R22 3 1
      190 SETTABLEKS                       R22 R21 K31 ["TextLabel"]
      192 CALL                             R18 3 1
      193 SETTABLEKS                       R18 R17 K18 ["Container"]
      195 CALL                             R14 3 -1
      196 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R3 K9 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R1 K10 ["Framework"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K12 ["withContext"]
       38 GETTABLEKS                       R8 R5 K13 ["UI"]
       40 GETTABLEKS                       R8 R8 K14 ["Button"]
       42 GETTABLEKS                       R9 R2 K15 ["PureComponent"]
       44 LOADK                            R11 K16 ["CollaboratorSearchItem"]
       45 NAMECALL                         R9 R9 K17 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K18 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R10 R9 K19 ["render"]
       54 MOVE                             R10 R7
       55 DUPTABLE                         R11 K21 [{"Stylizer"}]
       56 GETTABLEKS                       R12 R6 K20 ["Stylizer"]
       58 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       60 CALL                             R10 1 1
       61 MOVE                             R11 R9
       62 CALL                             R10 1 1
       63 MOVE                             R9 R10
       64 RETURN                           R9 1
