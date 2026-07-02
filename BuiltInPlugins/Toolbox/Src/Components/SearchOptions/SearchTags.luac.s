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
       37 DUPTABLE                         R6 K26 [{["AnchorPoint"], ["AutomaticCanvasSize"], ["BackgroundTransparency"] = 1, ["Size"], ["ScrollingEnabled"] = True, ["Position"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0}]
       38 GETIMPORT                        R7 K29 [Vector2.new]
       40 LOADN                            R8 0
       41 LOADN                            R9 1
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K15 ["AnchorPoint"]
       45 GETIMPORT                        R7 K32 [Enum.AutomaticSize.X]
       47 SETTABLEKS                       R7 R6 K16 ["AutomaticCanvasSize"]
       49 SETTABLEKS                       R2 R6 K19 ["Size"]
       51 GETIMPORT                        R7 K34 [UDim2.new]
       53 LOADN                            R8 0
       54 LOADN                            R9 0
       55 LOADN                            R10 1
       56 LOADN                            R11 0
       57 CALL                             R7 4 1
       58 SETTABLEKS                       R7 R6 K22 ["Position"]
       60 GETIMPORT                        R7 K35 [Enum.ScrollingDirection.X]
       62 SETTABLEKS                       R7 R6 K23 ["ScrollingDirection"]
       64 MOVE                             R7 R3
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1

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
       30 DUPTABLE                         R9 K16 [{["Size"], ["BackgroundTransparency"] = 1}]
       31 GETIMPORT                        R10 K19 [UDim2.new]
       33 LOADN                            R11 1
       34 LOADN                            R12 0
       35 LOADN                            R13 0
       36 GETUPVAL                         R14 3
       37 CALL                             R10 4 1
       38 SETTABLEKS                       R10 R9 K13 ["Size"]
       40 DUPTABLE                         R10 K23 [{"UIListLayout", "BackToHome", "Prompt", "SearchTerm"}]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K11 ["createElement"]
       44 LOADK                            R12 K20 ["UIListLayout"]
       45 DUPTABLE                         R13 K27 [{"SortOrder", "FillDirection", "Padding"}]
       46 GETIMPORT                        R14 K30 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R14 R13 K24 ["SortOrder"]
       50 GETIMPORT                        R14 K32 [Enum.FillDirection.Horizontal]
       52 SETTABLEKS                       R14 R13 K25 ["FillDirection"]
       54 GETUPVAL                         R14 4
       55 SETTABLEKS                       R14 R13 K26 ["Padding"]
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K20 ["UIListLayout"]
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K11 ["createElement"]
       63 GETUPVAL                         R12 5
       64 DUPTABLE                         R13 K37 [{["LayoutOrder"] = 1, ["OnClick"], ["Style"] = "Unobtrusive", ["Text"]}]
       65 GETTABLEKS                       R14 R3 K38 ["onBackToHome"]
       67 SETTABLEKS                       R14 R13 K33 ["OnClick"]
       69 LOADK                            R15 K39 ["< %* /"]
       70 MOVE                             R17 R6
       71 NAMECALL                         R15 R15 K40 ["format"]
       73 CALL                             R15 2 1
       74 MOVE                             R14 R15
       75 SETTABLEKS                       R14 R13 K36 ["Text"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K6 ["BackToHome"]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R11 R11 K11 ["createElement"]
       83 LOADK                            R12 K41 ["TextLabel"]
       84 DUPTABLE                         R13 K47 [{["LayoutOrder"] = 2, ["Font"], ["Text"], ["TextSize"], ["TextColor3"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K48 ["FONT"]
       88 SETTABLEKS                       R14 R13 K43 ["Font"]
       90 JUMPIFEQKS                       R1 K49 [""] ; [+3]
       92 JUMPIFNOTEQKNIL                  R1 ; [+9]
       94 GETTABLEKS                       R14 R3 K4 ["Localization"]
       96 LOADK                            R16 K5 ["General"]
       97 LOADK                            R17 K50 ["SearchResults"]
       98 NAMECALL                         R14 R14 K10 ["getText"]
      100 CALL                             R14 3 1
      101 JUMP                             ; [+7]
      102 GETTABLEKS                       R14 R3 K4 ["Localization"]
      104 LOADK                            R16 K5 ["General"]
      105 LOADK                            R17 K51 ["SearchResultsKeyword"]
      106 NAMECALL                         R14 R14 K10 ["getText"]
      108 CALL                             R14 3 1
      109 SETTABLEKS                       R14 R13 K36 ["Text"]
      111 SETTABLEKS                       R5 R13 K44 ["TextSize"]
      113 SETTABLEKS                       R4 R13 K45 ["TextColor3"]
      115 GETIMPORT                        R14 K53 [Enum.AutomaticSize.XY]
      117 SETTABLEKS                       R14 R13 K46 ["AutomaticSize"]
      119 CALL                             R11 2 1
      120 SETTABLEKS                       R11 R10 K21 ["Prompt"]
      122 GETUPVAL                         R11 2
      123 GETTABLEKS                       R11 R11 K11 ["createElement"]
      125 LOADK                            R12 K41 ["TextLabel"]
      126 DUPTABLE                         R13 K57 [{["LayoutOrder"] = 3, ["Font"], ["Text"], ["TextXAlignment"], ["TextSize"], ["TextColor3"], ["AutomaticSize"], ["TextTruncate"], ["BackgroundTransparency"] = 1}]
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R14 R14 K58 ["FONT_BOLD"]
      130 SETTABLEKS                       R14 R13 K43 ["Font"]
      132 ORK                              R14 R1 K49 [""]
      133 SETTABLEKS                       R14 R13 K36 ["Text"]
      135 GETIMPORT                        R14 K60 [Enum.TextXAlignment.Left]
      137 SETTABLEKS                       R14 R13 K55 ["TextXAlignment"]
      139 SETTABLEKS                       R5 R13 K44 ["TextSize"]
      141 SETTABLEKS                       R4 R13 K45 ["TextColor3"]
      143 GETIMPORT                        R14 K53 [Enum.AutomaticSize.XY]
      145 SETTABLEKS                       R14 R13 K46 ["AutomaticSize"]
      147 GETIMPORT                        R14 K62 [Enum.TextTruncate.AtEnd]
      149 SETTABLEKS                       R14 R13 K56 ["TextTruncate"]
      151 CALL                             R11 2 1
      152 SETTABLEKS                       R11 R10 K22 ["SearchTerm"]
      154 CALL                             R7 3 -1
      155 RETURN                           R7 -1

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
       57 DUPTABLE                         R14 K25 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       58 GETIMPORT                        R15 K14 [UDim2.new]
       60 LOADN                            R16 1
       61 LOADN                            R17 0
       62 MOVE                             R18 R11
       63 LOADN                            R19 0
       64 CALL                             R15 4 1
       65 SETTABLEKS                       R15 R14 K21 ["Size"]
       67 GETTABLEKS                       R15 R1 K24 ["LayoutOrder"]
       69 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
       71 NEWTABLE                         R15 4 0
       73 MOVE                             R18 R4
       74 MOVE                             R19 R2
       75 NAMECALL                         R16 R0 K26 ["createPrompt"]
       77 CALL                             R16 3 1
       78 SETTABLE                         R16 R15 R9
       79 MOVE                             R16 R10
       80 JUMPIFNOT                        R16 ; [+63]
       81 GETUPVAL                         R16 3
       82 GETTABLEKS                       R16 R16 K19 ["createElement"]
       84 LOADK                            R17 K27 ["TextButton"]
       85 NEWTABLE                         R18 16 0
       87 GETUPVAL                         R19 4
       88 GETTABLEKS                       R19 R19 K28 ["FONT"]
       90 SETTABLEKS                       R19 R18 K29 ["Font"]
       92 SETTABLEKS                       R6 R18 K30 ["Text"]
       94 GETUPVAL                         R19 4
       95 GETTABLEKS                       R19 R19 K31 ["FONT_SIZE_MEDIUM"]
       97 SETTABLEKS                       R19 R18 K32 ["TextSize"]
       99 GETTABLEKS                       R19 R2 K33 ["searchTag"]
      101 GETTABLEKS                       R19 R19 K34 ["clearAllText"]
      103 SETTABLEKS                       R19 R18 K35 ["TextColor3"]
      105 GETIMPORT                        R19 K14 [UDim2.new]
      107 LOADN                            R20 0
      108 MOVE                             R21 R7
      109 LOADN                            R22 0
      110 GETUPVAL                         R23 2
      111 CALL                             R19 4 1
      112 SETTABLEKS                       R19 R18 K21 ["Size"]
      114 GETIMPORT                        R19 K14 [UDim2.new]
      116 LOADN                            R20 1
      117 LOADN                            R21 0
      118 LOADN                            R22 0
      119 LOADN                            R23 20
      120 CALL                             R19 4 1
      121 SETTABLEKS                       R19 R18 K36 ["Position"]
      123 GETIMPORT                        R19 K11 [Vector2.new]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K37 ["AnchorPoint"]
      130 LOADN                            R19 1
      131 SETTABLEKS                       R19 R18 K22 ["BackgroundTransparency"]
      133 LENGTH                           R20 R3
      134 ADDK                             R19 R20 K23 [1]
      135 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      137 GETUPVAL                         R19 3
      138 GETTABLEKS                       R19 R19 K38 ["Event"]
      140 GETTABLEKS                       R19 R19 K39 ["Activated"]
      142 SETTABLE                         R5 R18 R19
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R15 K40 ["ClearAll"]
      146 MOVE                             R16 R10
      147 JUMPIFNOT                        R16 ; [+5]
      148 MOVE                             R18 R3
      149 MOVE                             R19 R8
      150 NAMECALL                         R16 R0 K41 ["createTags"]
      152 CALL                             R16 3 1
      153 SETTABLEKS                       R16 R15 K2 ["Tags"]
      155 CALL                             R12 3 -1
      156 RETURN                           R12 -1

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
