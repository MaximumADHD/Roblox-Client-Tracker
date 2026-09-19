PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        4 ORK                              R2 R3 K1 [1]
        5 GETTABLEKS                       R4 R1 K3 ["ZIndex"]
        7 ORK                              R3 R4 K1 [1]
        8 GETTABLEKS                       R5 R1 K5 ["IsOn"]
       10 ORK                              R4 R5 K4 [False]
       11 GETTABLEKS                       R5 R1 K6 ["Text"]
       13 GETTABLEKS                       R6 R1 K7 ["OnClick"]
       15 GETTABLEKS                       R7 R1 K8 ["Stylizer"]
       17 GETTABLEKS                       R8 R1 K9 ["Model"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K10 ["createElement"]
       22 GETUPVAL                         R10 1
       23 DUPTABLE                         R11 K15 [{"Style", "StyleModifier", "Size", "Position", "LayoutOrder", "ZIndex", "OnClick"}]
       24 NEWTABLE                         R12 4 0
       26 GETUPVAL                         R13 2
       27 SETTABLEKS                       R13 R12 K16 ["Background"]
       29 DUPTABLE                         R13 K20 [{["Color"], ["BorderSize"] = 0}]
       30 GETTABLEKS                       R14 R7 K21 ["ButtonBackgroundColor"]
       32 SETTABLEKS                       R14 R13 K17 ["Color"]
       34 SETTABLEKS                       R13 R12 K22 ["BackgroundStyle"]
       36 GETUPVAL                         R13 3
       37 GETTABLEKS                       R13 R13 K23 ["Pressed"]
       39 DUPTABLE                         R14 K24 [{"BackgroundStyle"}]
       40 DUPTABLE                         R15 K20 [{["Color"], ["BorderSize"] = 0}]
       41 GETTABLEKS                       R16 R7 K25 ["ButtonPressedColor"]
       43 SETTABLEKS                       R16 R15 K17 ["Color"]
       45 SETTABLEKS                       R15 R14 K22 ["BackgroundStyle"]
       47 SETTABLE                         R14 R12 R13
       48 SETTABLEKS                       R12 R11 K11 ["Style"]
       50 JUMPIFNOT                        R4 ; [+4]
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K23 ["Pressed"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R12
       56 SETTABLEKS                       R12 R11 K12 ["StyleModifier"]
       58 GETTABLEKS                       R12 R7 K26 ["TileSize"]
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 GETTABLEKS                       R12 R1 K14 ["Position"]
       64 SETTABLEKS                       R12 R11 K14 ["Position"]
       66 SETTABLEKS                       R2 R11 K2 ["LayoutOrder"]
       68 SETTABLEKS                       R3 R11 K3 ["ZIndex"]
       70 SETTABLEKS                       R6 R11 K7 ["OnClick"]
       72 DUPTABLE                         R12 K29 [{"PreviewThumbnail", "TextLabel"}]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R13 R13 K10 ["createElement"]
       76 GETUPVAL                         R14 4
       77 DUPTABLE                         R15 K30 [{"Model"}]
       78 SETTABLEKS                       R8 R15 K9 ["Model"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K27 ["PreviewThumbnail"]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K10 ["createElement"]
       86 GETUPVAL                         R14 5
       87 DUPTABLE                         R15 K36 [{"Text", "AutomaticSize", "TextXAlignment", "TextYAlignment", "ZIndex", "AnchorPoint", "Position", "TextTruncate"}]
       88 SETTABLEKS                       R5 R15 K6 ["Text"]
       90 GETIMPORT                        R16 K39 [Enum.AutomaticSize.XY]
       92 SETTABLEKS                       R16 R15 K31 ["AutomaticSize"]
       94 GETIMPORT                        R16 K41 [Enum.TextXAlignment.Left]
       96 SETTABLEKS                       R16 R15 K32 ["TextXAlignment"]
       98 GETIMPORT                        R16 K43 [Enum.TextYAlignment.Bottom]
      100 SETTABLEKS                       R16 R15 K33 ["TextYAlignment"]
      102 ADDK                             R16 R3 K1 [1]
      103 SETTABLEKS                       R16 R15 K3 ["ZIndex"]
      105 GETIMPORT                        R16 K46 [Vector2.new]
      107 LOADN                            R17 0
      108 LOADN                            R18 1
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K34 ["AnchorPoint"]
      112 GETIMPORT                        R16 K48 [UDim2.new]
      114 LOADN                            R17 0
      115 LOADN                            R18 0
      116 LOADN                            R19 1
      117 LOADN                            R20 0
      118 CALL                             R16 4 1
      119 SETTABLEKS                       R16 R15 K14 ["Position"]
      121 GETIMPORT                        R16 K50 [Enum.TextTruncate.AtEnd]
      123 SETTABLEKS                       R16 R15 K35 ["TextTruncate"]
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K28 ["TextLabel"]
      128 CALL                             R9 3 -1
      129 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R3 R1 K5 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K6 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K8 ["withContext"]
       29 GETTABLEKS                       R6 R3 K9 ["UI"]
       31 GETTABLEKS                       R7 R6 K10 ["Pane"]
       33 GETTABLEKS                       R8 R6 K11 ["Button"]
       35 GETTABLEKS                       R9 R6 K12 ["TextLabel"]
       37 GETTABLEKS                       R10 R6 K13 ["Box"]
       39 GETTABLEKS                       R11 R3 K14 ["Util"]
       41 GETTABLEKS                       R12 R11 K15 ["Typecheck"]
       43 GETTABLEKS                       R13 R11 K16 ["StyleModifier"]
       45 GETTABLEKS                       R14 R6 K17 ["AssetRenderModel"]
       47 GETIMPORT                        R15 K4 [require]
       49 GETTABLEKS                       R16 R0 K18 ["Components"]
       51 GETTABLEKS                       R16 R16 K19 ["StaticLCAssetRenderModel"]
       53 CALL                             R15 1 1
       54 GETTABLEKS                       R16 R2 K20 ["PureComponent"]
       56 LOADK                            R18 K21 ["PreviewTile"]
       57 NAMECALL                         R16 R16 K22 ["extend"]
       59 CALL                             R16 2 1
       60 GETTABLEKS                       R17 R12 K23 ["wrap"]
       62 MOVE                             R18 R16
       63 GETIMPORT                        R19 K1 [script]
       65 CALL                             R17 2 0
       66 DUPCLOSURE                       R17 K24 [PROTO_0]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R15
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R17 R16 K25 ["render"]
       75 MOVE                             R17 R5
       76 DUPTABLE                         R18 K27 [{"Stylizer"}]
       77 GETTABLEKS                       R19 R4 K26 ["Stylizer"]
       79 SETTABLEKS                       R19 R18 K26 ["Stylizer"]
       81 CALL                             R17 1 1
       82 MOVE                             R18 R16
       83 CALL                             R17 1 1
       84 MOVE                             R16 R17
       85 RETURN                           R16 1
