PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Reasons"]
        5 JUMPIF                           R0 ; [+2]
        6 NEWTABLE                         R0 0 0
        8 LOADN                            R1 0
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["scrollingFrameRef"]
       14 GETTABLEKS                       R3 R4 K3 ["current"]
       16 GETIMPORT                        R4 K5 [pairs]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 3
       20 FORGPREP_NEXT                    R4
       21 GETTABLEKS                       R10 R8 K6 ["response"]
       23 GETTABLEKS                       R9 R10 K7 ["responseBody"]
       25 LOADNIL                          R10
       26 JUMPIFNOT                        R3 ; [+10]
       27 GETTABLEKS                       R11 R3 K8 ["AbsoluteSize"]
       29 GETIMPORT                        R12 K11 [Vector2.new]
       31 GETTABLEKS                       R13 R11 K12 ["X"]
       33 LOADN                            R14 40
       34 CALL                             R12 2 1
       35 MOVE                             R10 R12
       36 JUMP                             ; [+1]
       37 GETUPVAL                         R10 1
       38 GETUPVAL                         R11 2
       39 MOVE                             R12 R9
       40 GETUPVAL                         R14 3
       41 GETTABLEKS                       R13 R14 K13 ["FONT_SIZE_LARGE"]
       43 GETUPVAL                         R15 3
       44 GETTABLEKS                       R14 R15 K14 ["FONT"]
       46 MOVE                             R15 R10
       47 CALL                             R11 4 1
       48 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
       50 MOVE                             R13 R2
       51 MOVE                             R14 R11
       52 GETIMPORT                        R12 K17 [table.insert]
       54 CALL                             R12 2 0
       55 JUMPIFNOT                        R11 ; [+4]
       56 GETTABLEKS                       R12 R11 K18 ["Y"]
       58 ADD                              R1 R1 R12
       59 JUMP                             ; [+1]
       60 ADDK                             R1 R1 K19 [10]
       61 FORGLOOP                         R4 2 ; [-41]
       63 JUMPIF                           R1 ; [+1]
       64 LOADN                            R1 40
       65 JUMPIFNOT                        R3 ; [+9]
       66 GETIMPORT                        R4 K21 [UDim2.new]
       68 LOADN                            R5 1
       69 LOADN                            R6 0
       70 LOADN                            R7 0
       71 MOVE                             R8 R1
       72 CALL                             R4 4 1
       73 SETTABLEKS                       R4 R3 K22 ["CanvasSize"]
       75 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K2 [{"UIListLayout", "ExplainLabel"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["createElement"]
        4 LOADK                            R5 K0 ["UIListLayout"]
        5 DUPTABLE                         R6 K8 [{"Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
        6 GETIMPORT                        R7 K11 [UDim.new]
        8 LOADN                            R8 0
        9 GETUPVAL                         R10 1
       10 GETTABLEKS                       R9 R10 K12 ["ASSET_INNER_PADDING"]
       12 CALL                             R7 2 1
       13 SETTABLEKS                       R7 R6 K4 ["Padding"]
       15 GETIMPORT                        R7 K15 [Enum.SortOrder.LayoutOrder]
       17 SETTABLEKS                       R7 R6 K5 ["SortOrder"]
       19 GETIMPORT                        R7 K17 [Enum.HorizontalAlignment.Center]
       21 SETTABLEKS                       R7 R6 K6 ["HorizontalAlignment"]
       23 GETIMPORT                        R7 K19 [Enum.VerticalAlignment.Top]
       25 SETTABLEKS                       R7 R6 K7 ["VerticalAlignment"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K0 ["UIListLayout"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K3 ["createElement"]
       33 LOADK                            R5 K20 ["TextLabel"]
       34 DUPTABLE                         R6 K28 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       35 GETIMPORT                        R7 K30 [UDim2.new]
       37 LOADN                            R8 1
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 LOADN                            R11 20
       41 CALL                             R7 4 1
       42 SETTABLEKS                       R7 R6 K21 ["Size"]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R8 R9 K31 ["props"]
       47 GETTABLEKS                       R7 R8 K32 ["Localization"]
       49 LOADK                            R9 K33 ["AssetConfigError"]
       50 LOADK                            R10 K34 ["NetworkError"]
       51 NAMECALL                         R7 R7 K35 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K22 ["Text"]
       56 GETTABLEKS                       R7 R2 K36 ["textColor"]
       58 SETTABLEKS                       R7 R6 K23 ["TextColor3"]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R7 R8 K37 ["FONT"]
       63 SETTABLEKS                       R7 R6 K24 ["Font"]
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R7 R8 K38 ["FONT_SIZE_LARGE"]
       68 SETTABLEKS                       R7 R6 K25 ["TextSize"]
       70 LOADN                            R7 1
       71 SETTABLEKS                       R7 R6 K26 ["BackgroundTransparency"]
       73 LOADN                            R7 0
       74 SETTABLEKS                       R7 R6 K27 ["BorderSizePixel"]
       76 LOADN                            R7 0
       77 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K1 ["ExplainLabel"]
       82 GETIMPORT                        R4 K40 [pairs]
       84 MOVE                             R5 R0
       85 CALL                             R4 1 3
       86 FORGPREP_NEXT                    R4
       87 GETTABLE                         R9 R1 R7
       88 GETTABLEKS                       R10 R8 K41 ["name"]
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R11 R12 K3 ["createElement"]
       93 LOADK                            R12 K20 ["TextLabel"]
       94 DUPTABLE                         R13 K28 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       95 GETIMPORT                        R14 K30 [UDim2.new]
       97 LOADN                            R15 1
       98 LOADN                            R16 0
       99 LOADN                            R17 0
      100 GETTABLEKS                       R18 R9 K42 ["Y"]
      102 CALL                             R14 4 1
      103 SETTABLEKS                       R14 R13 K21 ["Size"]
      105 GETTABLEKS                       R15 R8 K43 ["response"]
      107 GETTABLEKS                       R14 R15 K44 ["responseBody"]
      109 SETTABLEKS                       R14 R13 K22 ["Text"]
      111 GETTABLEKS                       R14 R2 K36 ["textColor"]
      113 SETTABLEKS                       R14 R13 K23 ["TextColor3"]
      115 GETUPVAL                         R15 1
      116 GETTABLEKS                       R14 R15 K37 ["FONT"]
      118 SETTABLEKS                       R14 R13 K24 ["Font"]
      120 GETUPVAL                         R15 1
      121 GETTABLEKS                       R14 R15 K38 ["FONT_SIZE_LARGE"]
      123 SETTABLEKS                       R14 R13 K25 ["TextSize"]
      125 LOADN                            R14 1
      126 SETTABLEKS                       R14 R13 K26 ["BackgroundTransparency"]
      128 LOADN                            R14 0
      129 SETTABLEKS                       R14 R13 K27 ["BorderSizePixel"]
      131 SETTABLEKS                       R7 R13 K14 ["LayoutOrder"]
      133 CALL                             R11 2 1
      134 SETTABLE                         R11 R3 R10
      135 FORGLOOP                         R4 2 ; [-49]
      137 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["scrollingFrameRef"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R2 R0 K2 ["calibrateCanvas"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K3 ["getReasons"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["Reasons"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R2 K6 ["assetConfig"]
       14 GETTABLEKS                       R8 R0 K7 ["getReasons"]
       16 MOVE                             R9 R5
       17 GETTABLEKS                       R10 R0 K8 ["calibrateCanvas"]
       19 CALL                             R10 0 1
       20 MOVE                             R11 R7
       21 CALL                             R8 3 1
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R9 R10 K9 ["createElement"]
       25 GETUPVAL                         R10 1
       26 NEWTABLE                         R11 8 0
       28 SETTABLEKS                       R4 R11 K3 ["Position"]
       30 SETTABLEKS                       R3 R11 K2 ["Size"]
       32 GETIMPORT                        R12 K12 [UDim2.new]
       34 LOADN                            R13 0
       35 LOADN                            R14 0
       36 LOADN                            R15 0
       37 LOADN                            R16 40
       38 CALL                             R12 4 1
       39 SETTABLEKS                       R12 R11 K13 ["CanvasSize"]
       41 LOADN                            R12 1
       42 SETTABLEKS                       R12 R11 K14 ["ZIndex"]
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R12 R13 K15 ["Ref"]
       47 GETTABLEKS                       R13 R0 K16 ["scrollingFrameRef"]
       49 SETTABLE                         R13 R11 R12
       50 GETTABLEKS                       R12 R0 K17 ["onScroll"]
       52 SETTABLEKS                       R12 R11 K17 ["onScroll"]
       54 SETTABLEKS                       R6 R11 K5 ["LayoutOrder"]
       56 MOVE                             R12 R8
       57 CALL                             R9 3 -1
       58 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R4 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R4 K8 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K9 ["Constants"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R7 R5 K8 ["Util"]
       34 GETTABLEKS                       R6 R7 K11 ["GetTextSize"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R10 R0 K7 ["Src"]
       40 GETTABLEKS                       R9 R10 K12 ["Components"]
       42 GETTABLEKS                       R8 R9 K13 ["StyledScrollingFrame"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R5 K14 ["ContextServices"]
       47 GETTABLEKS                       R9 R8 K15 ["withContext"]
       49 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       51 LOADK                            R12 K17 ["ReasonFrame"]
       52 NAMECALL                         R10 R10 K18 ["extend"]
       54 CALL                             R10 2 1
       55 GETIMPORT                        R11 K21 [Vector2.new]
       57 LOADN                            R12 144
       58 LOADN                            R13 40
       59 CALL                             R11 2 1
       60 DUPCLOSURE                       R12 K22 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R12 R10 K23 ["init"]
       67 DUPCLOSURE                       R12 K24 [PROTO_3]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 SETTABLEKS                       R12 R10 K25 ["render"]
       72 MOVE                             R12 R9
       73 DUPTABLE                         R13 K28 [{"Stylizer", "Localization"}]
       74 GETTABLEKS                       R14 R8 K26 ["Stylizer"]
       76 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
       78 GETTABLEKS                       R14 R8 K27 ["Localization"]
       80 SETTABLEKS                       R14 R13 K27 ["Localization"]
       82 CALL                             R12 1 1
       83 MOVE                             R13 R10
       84 CALL                             R12 1 1
       85 MOVE                             R10 R12
       86 RETURN                           R10 1
