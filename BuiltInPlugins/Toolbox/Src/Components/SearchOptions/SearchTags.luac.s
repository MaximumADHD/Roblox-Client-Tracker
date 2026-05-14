PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDelete"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onDelete"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K1 ["prefix"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["createElement"]
        7 GETUPVAL                         R6 1
        8 DUPTABLE                         R7 K6 [{"Name", "LayoutOrder", "onDelete", "prefix"}]
        9 SETTABLEKS                       R3 R7 K3 ["Name"]
       11 SETTABLEKS                       R2 R7 K4 ["LayoutOrder"]
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R8 R7 K5 ["onDelete"]
       17 SETTABLEKS                       R4 R7 K1 ["prefix"]
       19 CALL                             R5 2 -1
       20 RETURN                           R5 -1

PROTO_2:
        0 DUPTABLE                         R3 K1 [{"UIListLayout"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K2 ["createElement"]
        4 LOADK                            R5 K0 ["UIListLayout"]
        5 DUPTABLE                         R6 K6 [{"SortOrder", "FillDirection", "Padding"}]
        6 GETIMPORT                        R7 K9 [Enum.SortOrder.LayoutOrder]
        8 SETTABLEKS                       R7 R6 K3 ["SortOrder"]
       10 GETIMPORT                        R7 K11 [Enum.FillDirection.Horizontal]
       12 SETTABLEKS                       R7 R6 K4 ["FillDirection"]
       14 GETUPVAL                         R7 1
       15 SETTABLEKS                       R7 R6 K5 ["Padding"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K0 ["UIListLayout"]
       20 GETIMPORT                        R4 K13 [ipairs]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 3
       24 FORGPREP_INEXT                   R4
       25 MOVE                             R11 R8
       26 MOVE                             R12 R7
       27 NAMECALL                         R9 R0 K14 ["createTag"]
       29 CALL                             R9 3 1
       30 SETTABLE                         R9 R3 R8
       31 FORGLOOP                         R4 2 [inext] ; [-7]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K2 ["createElement"]
       36 GETUPVAL                         R5 2
       37 DUPTABLE                         R6 K23 [{"AnchorPoint", "AutomaticCanvasSize", "BackgroundTransparency", "Size", "ScrollingEnabled", "Position", "ScrollingDirection", "ScrollBarThickness"}]
       38 GETIMPORT                        R7 K26 [Vector2.new]
       40 LOADN                            R8 0
       41 LOADN                            R9 1
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K15 ["AnchorPoint"]
       45 GETIMPORT                        R7 K29 [Enum.AutomaticSize.X]
       47 SETTABLEKS                       R7 R6 K16 ["AutomaticCanvasSize"]
       49 LOADN                            R7 1
       50 SETTABLEKS                       R7 R6 K17 ["BackgroundTransparency"]
       52 SETTABLEKS                       R2 R6 K18 ["Size"]
       54 LOADB                            R7 1
       55 SETTABLEKS                       R7 R6 K19 ["ScrollingEnabled"]
       57 GETIMPORT                        R7 K31 [UDim2.new]
       59 LOADN                            R8 0
       60 LOADN                            R9 0
       61 LOADN                            R10 1
       62 LOADN                            R11 0
       63 CALL                             R7 4 1
       64 SETTABLEKS                       R7 R6 K20 ["Position"]
       66 GETIMPORT                        R7 K32 [Enum.ScrollingDirection.X]
       68 SETTABLEKS                       R7 R6 K21 ["ScrollingDirection"]
       70 LOADN                            R7 0
       71 SETTABLEKS                       R7 R6 K22 ["ScrollBarThickness"]
       73 MOVE                             R7 R3
       74 CALL                             R4 3 -1
       75 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R2 K1 ["searchTag"]
        4 GETTABLEKS                       R4 R4 K2 ["textColor"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["FONT_SIZE_SMALL"]
        9 GETTABLEKS                       R6 R3 K4 ["Localization"]
       11 LOADK                            R8 K5 ["General"]
       12 LOADK                            R9 K6 ["BackToHome"]
       13 DUPTABLE                         R10 K8 [{"assetType"}]
       14 GETUPVAL                         R12 1
       15 GETTABLEKS                       R13 R3 K4 ["Localization"]
       17 CALL                             R12 1 1
       18 GETTABLEKS                       R13 R3 K9 ["categoryName"]
       20 GETTABLE                         R11 R12 R13
       21 SETTABLEKS                       R11 R10 K7 ["assetType"]
       23 NAMECALL                         R6 R6 K10 ["getText"]
       25 CALL                             R6 4 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K11 ["createElement"]
       29 LOADK                            R8 K12 ["Frame"]
       30 DUPTABLE                         R9 K15 [{"Size", "BackgroundTransparency"}]
       31 GETIMPORT                        R10 K18 [UDim2.new]
       33 LOADN                            R11 1
       34 LOADN                            R12 0
       35 LOADN                            R13 0
       36 GETUPVAL                         R14 3
       37 CALL                             R10 4 1
       38 SETTABLEKS                       R10 R9 K13 ["Size"]
       40 LOADN                            R10 1
       41 SETTABLEKS                       R10 R9 K14 ["BackgroundTransparency"]
       43 DUPTABLE                         R10 K22 [{"UIListLayout", "BackToHome", "Prompt", "SearchTerm"}]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R11 R11 K11 ["createElement"]
       47 LOADK                            R12 K19 ["UIListLayout"]
       48 DUPTABLE                         R13 K26 [{"SortOrder", "FillDirection", "Padding"}]
       49 GETIMPORT                        R14 K29 [Enum.SortOrder.LayoutOrder]
       51 SETTABLEKS                       R14 R13 K23 ["SortOrder"]
       53 GETIMPORT                        R14 K31 [Enum.FillDirection.Horizontal]
       55 SETTABLEKS                       R14 R13 K24 ["FillDirection"]
       57 GETUPVAL                         R14 4
       58 SETTABLEKS                       R14 R13 K25 ["Padding"]
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K19 ["UIListLayout"]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K11 ["createElement"]
       66 GETUPVAL                         R12 5
       67 DUPTABLE                         R13 K35 [{"LayoutOrder", "OnClick", "Style", "Text"}]
       68 LOADN                            R14 1
       69 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
       71 GETTABLEKS                       R14 R3 K36 ["onBackToHome"]
       73 SETTABLEKS                       R14 R13 K32 ["OnClick"]
       75 LOADK                            R14 K37 ["Unobtrusive"]
       76 SETTABLEKS                       R14 R13 K33 ["Style"]
       78 LOADK                            R15 K38 ["< %* /"]
       79 MOVE                             R17 R6
       80 NAMECALL                         R15 R15 K39 ["format"]
       82 CALL                             R15 2 1
       83 MOVE                             R14 R15
       84 SETTABLEKS                       R14 R13 K34 ["Text"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K6 ["BackToHome"]
       89 GETUPVAL                         R11 2
       90 GETTABLEKS                       R11 R11 K11 ["createElement"]
       92 LOADK                            R12 K40 ["TextLabel"]
       93 DUPTABLE                         R13 K45 [{"LayoutOrder", "Font", "Text", "TextSize", "TextColor3", "AutomaticSize", "BackgroundTransparency"}]
       94 LOADN                            R14 2
       95 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K46 ["FONT"]
      100 SETTABLEKS                       R14 R13 K41 ["Font"]
      102 JUMPIFEQKS                       R1 K47 [""] ; [+3]
      104 JUMPIFNOTEQKNIL                  R1 ; [+9]
      106 GETTABLEKS                       R14 R3 K4 ["Localization"]
      108 LOADK                            R16 K5 ["General"]
      109 LOADK                            R17 K48 ["SearchResults"]
      110 NAMECALL                         R14 R14 K10 ["getText"]
      112 CALL                             R14 3 1
      113 JUMP                             ; [+7]
      114 GETTABLEKS                       R14 R3 K4 ["Localization"]
      116 LOADK                            R16 K5 ["General"]
      117 LOADK                            R17 K49 ["SearchResultsKeyword"]
      118 NAMECALL                         R14 R14 K10 ["getText"]
      120 CALL                             R14 3 1
      121 SETTABLEKS                       R14 R13 K34 ["Text"]
      123 SETTABLEKS                       R5 R13 K42 ["TextSize"]
      125 SETTABLEKS                       R4 R13 K43 ["TextColor3"]
      127 GETIMPORT                        R14 K51 [Enum.AutomaticSize.XY]
      129 SETTABLEKS                       R14 R13 K44 ["AutomaticSize"]
      131 LOADN                            R14 1
      132 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K20 ["Prompt"]
      137 GETUPVAL                         R11 2
      138 GETTABLEKS                       R11 R11 K11 ["createElement"]
      140 LOADK                            R12 K40 ["TextLabel"]
      141 DUPTABLE                         R13 K54 [{"LayoutOrder", "Font", "Text", "TextXAlignment", "TextSize", "TextColor3", "AutomaticSize", "TextTruncate", "BackgroundTransparency"}]
      142 LOADN                            R14 3
      143 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K55 ["FONT_BOLD"]
      148 SETTABLEKS                       R14 R13 K41 ["Font"]
      150 ORK                              R14 R1 K47 [""]
      151 SETTABLEKS                       R14 R13 K34 ["Text"]
      153 GETIMPORT                        R14 K57 [Enum.TextXAlignment.Left]
      155 SETTABLEKS                       R14 R13 K52 ["TextXAlignment"]
      157 SETTABLEKS                       R5 R13 K42 ["TextSize"]
      159 SETTABLEKS                       R4 R13 K43 ["TextColor3"]
      161 GETIMPORT                        R14 K51 [Enum.AutomaticSize.XY]
      163 SETTABLEKS                       R14 R13 K44 ["AutomaticSize"]
      165 GETIMPORT                        R14 K59 [Enum.TextTruncate.AtEnd]
      167 SETTABLEKS                       R14 R13 K53 ["TextTruncate"]
      169 LOADN                            R14 1
      170 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
      172 CALL                             R11 2 1
      173 SETTABLEKS                       R11 R10 K21 ["SearchTerm"]
      175 CALL                             R7 3 -1
      176 RETURN                           R7 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Tags"]
        6 GETTABLEKS                       R4 R1 K3 ["searchTerm"]
        8 GETTABLEKS                       R5 R1 K4 ["onClearTags"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 LOADK                            R8 K6 ["General"]
       13 LOADK                            R9 K7 ["SearchResultsClearAll"]
       14 NAMECALL                         R6 R6 K8 ["getText"]
       16 CALL                             R6 3 1
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R6
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 GETIMPORT                        R11 K11 [Vector2.new]
       23 LOADN                            R12 0
       24 LOADN                            R13 0
       25 CALL                             R11 2 -1
       26 CALL                             R7 -1 1
       27 GETTABLEKS                       R7 R7 K12 ["x"]
       29 GETIMPORT                        R8 K14 [UDim2.new]
       31 LOADN                            R9 1
       32 MINUS                            R11 R7
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R12 R12 K15 ["Offset"]
       36 SUB                              R10 R11 R12
       37 LOADN                            R11 0
       38 GETUPVAL                         R12 2
       39 CALL                             R8 4 1
       40 ORK                              R9 R4 K16 ["Prompt"]
       41 MOVE                             R10 R3
       42 JUMPIFNOT                        R10 ; [+6]
       43 LENGTH                           R11 R3
       44 LOADN                            R12 0
       45 JUMPIFLT                         R12 R11 ; [+2]
       47 LOADB                            R10 0 +1
       48 LOADB                            R10 1
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADK                            R11 K17 [0.666666666666667]
       51 JUMP                             ; [+1]
       52 LOADK                            R11 K18 [0.333333333333333]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K19 ["createElement"]
       56 LOADK                            R13 K20 ["Frame"]
       57 DUPTABLE                         R14 K24 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       58 GETIMPORT                        R15 K14 [UDim2.new]
       60 LOADN                            R16 1
       61 LOADN                            R17 0
       62 MOVE                             R18 R11
       63 LOADN                            R19 0
       64 CALL                             R15 4 1
       65 SETTABLEKS                       R15 R14 K21 ["Size"]
       67 LOADN                            R15 1
       68 SETTABLEKS                       R15 R14 K22 ["BackgroundTransparency"]
       70 GETTABLEKS                       R15 R1 K23 ["LayoutOrder"]
       72 SETTABLEKS                       R15 R14 K23 ["LayoutOrder"]
       74 NEWTABLE                         R15 4 0
       76 MOVE                             R18 R4
       77 MOVE                             R19 R2
       78 NAMECALL                         R16 R0 K25 ["createPrompt"]
       80 CALL                             R16 3 1
       81 SETTABLE                         R16 R15 R9
       82 MOVE                             R16 R10
       83 JUMPIFNOT                        R16 ; [+63]
       84 GETUPVAL                         R16 3
       85 GETTABLEKS                       R16 R16 K19 ["createElement"]
       87 LOADK                            R17 K26 ["TextButton"]
       88 NEWTABLE                         R18 16 0
       90 GETUPVAL                         R19 4
       91 GETTABLEKS                       R19 R19 K27 ["FONT"]
       93 SETTABLEKS                       R19 R18 K28 ["Font"]
       95 SETTABLEKS                       R6 R18 K29 ["Text"]
       97 GETUPVAL                         R19 4
       98 GETTABLEKS                       R19 R19 K30 ["FONT_SIZE_MEDIUM"]
      100 SETTABLEKS                       R19 R18 K31 ["TextSize"]
      102 GETTABLEKS                       R19 R2 K32 ["searchTag"]
      104 GETTABLEKS                       R19 R19 K33 ["clearAllText"]
      106 SETTABLEKS                       R19 R18 K34 ["TextColor3"]
      108 GETIMPORT                        R19 K14 [UDim2.new]
      110 LOADN                            R20 0
      111 MOVE                             R21 R7
      112 LOADN                            R22 0
      113 GETUPVAL                         R23 2
      114 CALL                             R19 4 1
      115 SETTABLEKS                       R19 R18 K21 ["Size"]
      117 GETIMPORT                        R19 K14 [UDim2.new]
      119 LOADN                            R20 1
      120 LOADN                            R21 0
      121 LOADN                            R22 0
      122 LOADN                            R23 20
      123 CALL                             R19 4 1
      124 SETTABLEKS                       R19 R18 K35 ["Position"]
      126 GETIMPORT                        R19 K11 [Vector2.new]
      128 LOADN                            R20 1
      129 LOADN                            R21 0
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K36 ["AnchorPoint"]
      133 LOADN                            R19 1
      134 SETTABLEKS                       R19 R18 K22 ["BackgroundTransparency"]
      136 LENGTH                           R20 R3
      137 ADDK                             R19 R20 K37 [1]
      138 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      140 GETUPVAL                         R19 3
      141 GETTABLEKS                       R19 R19 K38 ["Event"]
      143 GETTABLEKS                       R19 R19 K39 ["Activated"]
      145 SETTABLE                         R5 R18 R19
      146 CALL                             R16 2 1
      147 SETTABLEKS                       R16 R15 K40 ["ClearAll"]
      149 MOVE                             R16 R10
      150 JUMPIFNOT                        R16 ; [+5]
      151 MOVE                             R18 R3
      152 MOVE                             R19 R8
      153 NAMECALL                         R16 R0 K41 ["createTags"]
      155 CALL                             R16 3 1
      156 SETTABLEKS                       R16 R15 K2 ["Tags"]
      158 CALL                             R12 3 -1
      159 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Localization"]
       38 GETTABLEKS                       R6 R6 K12 ["getLocalizedCategoryMap"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K14 ["withContext"]
       45 GETTABLEKS                       R8 R3 K15 ["UI"]
       47 GETTABLEKS                       R8 R8 K16 ["LinkText"]
       49 GETTABLEKS                       R9 R3 K15 ["UI"]
       51 GETTABLEKS                       R9 R9 K17 ["ScrollingFrame"]
       53 GETTABLEKS                       R10 R3 K9 ["Util"]
       55 GETTABLEKS                       R10 R10 K18 ["GetTextSize"]
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R0 K8 ["Src"]
       61 GETTABLEKS                       R12 R12 K19 ["Components"]
       63 GETTABLEKS                       R12 R12 K20 ["SearchOptions"]
       65 GETTABLEKS                       R12 R12 K21 ["SearchTag"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R4 K22 ["SEARCH_TAG_HEIGHT"]
       70 GETIMPORT                        R13 K25 [UDim.new]
       72 LOADN                            R14 0
       73 LOADN                            R15 3
       74 CALL                             R13 2 1
       75 GETTABLEKS                       R14 R2 K26 ["PureComponent"]
       77 LOADK                            R16 K27 ["SearchTags"]
       78 NAMECALL                         R14 R14 K28 ["extend"]
       80 CALL                             R14 2 1
       81 DUPCLOSURE                       R15 K29 [PROTO_1]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R11
       84 SETTABLEKS                       R15 R14 K30 ["createTag"]
       86 DUPCLOSURE                       R15 K31 [PROTO_2]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R9
       90 SETTABLEKS                       R15 R14 K32 ["createTags"]
       92 DUPCLOSURE                       R15 K33 [PROTO_3]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R8
       99 SETTABLEKS                       R15 R14 K34 ["createPrompt"]
      101 DUPCLOSURE                       R15 K35 [PROTO_4]
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R15 R14 K36 ["render"]
      109 MOVE                             R15 R7
      110 DUPTABLE                         R16 K38 [{"Localization", "Stylizer"}]
      111 GETTABLEKS                       R17 R6 K11 ["Localization"]
      113 SETTABLEKS                       R17 R16 K11 ["Localization"]
      115 GETTABLEKS                       R17 R6 K37 ["Stylizer"]
      117 SETTABLEKS                       R17 R16 K37 ["Stylizer"]
      119 CALL                             R15 1 1
      120 MOVE                             R16 R14
      121 CALL                             R15 1 1
      122 MOVE                             R14 R15
      123 RETURN                           R14 1
