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
       29 DUPTABLE                         R13 K19 [{"Color", "BorderSize"}]
       30 GETTABLEKS                       R14 R7 K20 ["ButtonBackgroundColor"]
       32 SETTABLEKS                       R14 R13 K17 ["Color"]
       34 LOADN                            R14 0
       35 SETTABLEKS                       R14 R13 K18 ["BorderSize"]
       37 SETTABLEKS                       R13 R12 K21 ["BackgroundStyle"]
       39 GETUPVAL                         R13 3
       40 GETTABLEKS                       R13 R13 K22 ["Pressed"]
       42 DUPTABLE                         R14 K23 [{"BackgroundStyle"}]
       43 DUPTABLE                         R15 K19 [{"Color", "BorderSize"}]
       44 GETTABLEKS                       R16 R7 K24 ["ButtonPressedColor"]
       46 SETTABLEKS                       R16 R15 K17 ["Color"]
       48 LOADN                            R16 0
       49 SETTABLEKS                       R16 R15 K18 ["BorderSize"]
       51 SETTABLEKS                       R15 R14 K21 ["BackgroundStyle"]
       53 SETTABLE                         R14 R12 R13
       54 SETTABLEKS                       R12 R11 K11 ["Style"]
       56 JUMPIFNOT                        R4 ; [+4]
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R12 R12 K22 ["Pressed"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R12
       62 SETTABLEKS                       R12 R11 K12 ["StyleModifier"]
       64 GETTABLEKS                       R12 R7 K25 ["TileSize"]
       66 SETTABLEKS                       R12 R11 K13 ["Size"]
       68 GETTABLEKS                       R12 R1 K14 ["Position"]
       70 SETTABLEKS                       R12 R11 K14 ["Position"]
       72 SETTABLEKS                       R2 R11 K2 ["LayoutOrder"]
       74 SETTABLEKS                       R3 R11 K3 ["ZIndex"]
       76 SETTABLEKS                       R6 R11 K7 ["OnClick"]
       78 DUPTABLE                         R12 K28 [{"PreviewThumbnail", "TextLabel"}]
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K10 ["createElement"]
       82 GETUPVAL                         R14 4
       83 DUPTABLE                         R15 K29 [{"Model"}]
       84 SETTABLEKS                       R8 R15 K9 ["Model"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K26 ["PreviewThumbnail"]
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K10 ["createElement"]
       92 GETUPVAL                         R14 5
       93 DUPTABLE                         R15 K35 [{"Text", "AutomaticSize", "TextXAlignment", "TextYAlignment", "ZIndex", "AnchorPoint", "Position", "TextTruncate"}]
       94 SETTABLEKS                       R5 R15 K6 ["Text"]
       96 GETIMPORT                        R16 K38 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R16 R15 K30 ["AutomaticSize"]
      100 GETIMPORT                        R16 K40 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R16 R15 K31 ["TextXAlignment"]
      104 GETIMPORT                        R16 K42 [Enum.TextYAlignment.Bottom]
      106 SETTABLEKS                       R16 R15 K32 ["TextYAlignment"]
      108 ADDK                             R16 R3 K1 [1]
      109 SETTABLEKS                       R16 R15 K3 ["ZIndex"]
      111 GETIMPORT                        R16 K45 [Vector2.new]
      113 LOADN                            R17 0
      114 LOADN                            R18 1
      115 CALL                             R16 2 1
      116 SETTABLEKS                       R16 R15 K33 ["AnchorPoint"]
      118 GETIMPORT                        R16 K47 [UDim2.new]
      120 LOADN                            R17 0
      121 LOADN                            R18 0
      122 LOADN                            R19 1
      123 LOADN                            R20 0
      124 CALL                             R16 4 1
      125 SETTABLEKS                       R16 R15 K14 ["Position"]
      127 GETIMPORT                        R16 K49 [Enum.TextTruncate.AtEnd]
      129 SETTABLEKS                       R16 R15 K34 ["TextTruncate"]
      131 CALL                             R13 2 1
      132 SETTABLEKS                       R13 R12 K27 ["TextLabel"]
      134 CALL                             R9 3 -1
      135 RETURN                           R9 -1

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
