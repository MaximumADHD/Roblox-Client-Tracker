PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Reasons"]
        5 JUMPIF                           R0 ; [+2]
        6 NEWTABLE                         R0 0 0
        8 LOADN                            R1 0
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["scrollingFrameRef"]
       14 GETTABLEKS                       R3 R3 K3 ["current"]
       16 GETIMPORT                        R4 K5 [pairs]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 3
       20 FORGPREP_NEXT                    R4
       21 GETTABLEKS                       R9 R8 K6 ["response"]
       23 GETTABLEKS                       R9 R9 K7 ["responseBody"]
       25 LOADNIL                          R10
       26 JUMPIFNOT                        R3 ; [+10]
       27 GETTABLEKS                       R11 R3 K8 ["AbsoluteSize"]
       29 GETIMPORT                        R12 K11 [Vector2.new]
       31 GETTABLEKS                       R13 R11 K12 ["X"]
       33 LOADN                            R14 9000
       34 CALL                             R12 2 1
       35 MOVE                             R10 R12
       36 JUMP                             ; [+1]
       37 GETUPVAL                         R10 1
       38 GETUPVAL                         R11 2
       39 MOVE                             R12 R9
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R13 R13 K13 ["FONT_SIZE_LARGE"]
       43 GETUPVAL                         R14 3
       44 GETTABLEKS                       R14 R14 K14 ["FONT"]
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
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["createElement"]
        4 LOADK                            R5 K0 ["UIListLayout"]
        5 DUPTABLE                         R6 K8 [{"Padding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
        6 GETIMPORT                        R7 K11 [UDim.new]
        8 LOADN                            R8 0
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R9 R9 K12 ["ASSET_INNER_PADDING"]
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
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K3 ["createElement"]
       33 LOADK                            R5 K20 ["TextLabel"]
       34 DUPTABLE                         R6 K30 [{["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0}]
       35 GETIMPORT                        R7 K32 [UDim2.new]
       37 LOADN                            R8 1
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 LOADN                            R11 20
       41 CALL                             R7 4 1
       42 SETTABLEKS                       R7 R6 K21 ["Size"]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K33 ["props"]
       47 GETTABLEKS                       R7 R7 K34 ["Localization"]
       49 LOADK                            R9 K35 ["AssetConfigError"]
       50 LOADK                            R10 K36 ["NetworkError"]
       51 NAMECALL                         R7 R7 K37 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K22 ["Text"]
       56 GETTABLEKS                       R7 R2 K38 ["textColor"]
       58 SETTABLEKS                       R7 R6 K23 ["TextColor3"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K39 ["FONT"]
       63 SETTABLEKS                       R7 R6 K24 ["Font"]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K40 ["FONT_SIZE_LARGE"]
       68 SETTABLEKS                       R7 R6 K25 ["TextSize"]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R3 K1 ["ExplainLabel"]
       73 GETIMPORT                        R4 K42 [pairs]
       75 MOVE                             R5 R0
       76 CALL                             R4 1 3
       77 FORGPREP_NEXT                    R4
       78 GETTABLE                         R9 R1 R7
       79 GETTABLEKS                       R10 R8 K43 ["name"]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K3 ["createElement"]
       84 LOADK                            R12 K20 ["TextLabel"]
       85 DUPTABLE                         R13 K44 [{["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       86 GETIMPORT                        R14 K32 [UDim2.new]
       88 LOADN                            R15 1
       89 LOADN                            R16 0
       90 LOADN                            R17 0
       91 GETTABLEKS                       R18 R9 K45 ["Y"]
       93 CALL                             R14 4 1
       94 SETTABLEKS                       R14 R13 K21 ["Size"]
       96 GETTABLEKS                       R14 R8 K46 ["response"]
       98 GETTABLEKS                       R14 R14 K47 ["responseBody"]
      100 SETTABLEKS                       R14 R13 K22 ["Text"]
      102 GETTABLEKS                       R14 R2 K38 ["textColor"]
      104 SETTABLEKS                       R14 R13 K23 ["TextColor3"]
      106 GETUPVAL                         R14 1
      107 GETTABLEKS                       R14 R14 K39 ["FONT"]
      109 SETTABLEKS                       R14 R13 K24 ["Font"]
      111 GETUPVAL                         R14 1
      112 GETTABLEKS                       R14 R14 K40 ["FONT_SIZE_LARGE"]
      114 SETTABLEKS                       R14 R13 K25 ["TextSize"]
      116 SETTABLEKS                       R7 R13 K14 ["LayoutOrder"]
      118 CALL                             R11 2 1
      119 SETTABLE                         R11 R3 R10
      120 FORGLOOP                         R4 2 ; [-43]
      122 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
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
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K9 ["createElement"]
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
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K15 ["Ref"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K9 ["Constants"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K8 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["GetTextSize"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K7 ["Src"]
       40 GETTABLEKS                       R8 R8 K12 ["Components"]
       42 GETTABLEKS                       R8 R8 K13 ["StyledScrollingFrame"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R5 K14 ["ContextServices"]
       47 GETTABLEKS                       R9 R8 K15 ["withContext"]
       49 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       51 LOADK                            R12 K17 ["ReasonFrame"]
       52 NAMECALL                         R10 R10 K18 ["extend"]
       54 CALL                             R10 2 1
       55 GETIMPORT                        R11 K21 [Vector2.new]
       57 LOADN                            R12 400
       58 LOADN                            R13 9000
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
