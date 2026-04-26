PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["mouseHoverChanged"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["mouseEnter"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["mouseLeave"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R2 K1 ["Mouse"]
        5 LOADK                            R5 K2 ["PointingHand"]
        6 NAMECALL                         R3 R3 K3 ["__pushCursor"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R2 K1 ["Mouse"]
       12 NAMECALL                         R3 R3 K4 ["__resetCursor"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["NewThumbnail"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 LOADK                            R5 K4 ["ImageButton"]
       10 NEWTABLE                         R6 16 0
       12 LOADN                            R7 0
       13 SETTABLEKS                       R7 R6 K5 ["BorderSizePixel"]
       15 GETTABLEKS                       R7 R3 K6 ["Background"]
       17 SETTABLEKS                       R7 R6 K7 ["BackgroundColor3"]
       19 GETIMPORT                        R7 K10 [UDim2.new]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 LOADN                            R10 1
       24 LOADN                            R11 0
       25 CALL                             R7 4 1
       26 SETTABLEKS                       R7 R6 K11 ["Size"]
       28 GETTABLEKS                       R7 R3 K12 ["Border"]
       30 SETTABLEKS                       R7 R6 K13 ["ImageColor3"]
       32 GETTABLEKS                       R8 R1 K15 ["LayoutOrder"]
       34 ORK                              R7 R8 K14 [1]
       35 SETTABLEKS                       R7 R6 K15 ["LayoutOrder"]
       37 GETTABLEKS                       R8 R2 K16 ["DottedBorder"]
       39 GETTABLEKS                       R7 R8 K17 ["Image"]
       41 SETTABLEKS                       R7 R6 K17 ["Image"]
       43 GETIMPORT                        R7 K21 [Enum.ResamplerMode.Pixelated]
       45 SETTABLEKS                       R7 R6 K22 ["ResampleMode"]
       47 GETIMPORT                        R7 K25 [Enum.ScaleType.Slice]
       49 SETTABLEKS                       R7 R6 K23 ["ScaleType"]
       51 GETTABLEKS                       R8 R2 K16 ["DottedBorder"]
       53 GETTABLEKS                       R7 R8 K26 ["SliceCenter"]
       55 SETTABLEKS                       R7 R6 K26 ["SliceCenter"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R8 R9 K27 ["Event"]
       60 GETTABLEKS                       R7 R8 K28 ["MouseEnter"]
       62 GETTABLEKS                       R8 R0 K29 ["mouseEnter"]
       64 SETTABLE                         R8 R6 R7
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R8 R9 K27 ["Event"]
       68 GETTABLEKS                       R7 R8 K30 ["MouseLeave"]
       70 GETTABLEKS                       R8 R0 K31 ["mouseLeave"]
       72 SETTABLE                         R8 R6 R7
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R8 R9 K27 ["Event"]
       76 GETTABLEKS                       R7 R8 K32 ["Activated"]
       78 GETTABLEKS                       R8 R1 K33 ["OnClick"]
       80 SETTABLE                         R8 R6 R7
       81 DUPTABLE                         R7 K35 [{"Plus"}]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R8 R9 K3 ["createElement"]
       85 LOADK                            R9 K36 ["ImageLabel"]
       86 DUPTABLE                         R10 K44 [{"BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Size", "ImageRectSize", "ImageRectOffset", "Position", "AnchorPoint", "ZIndex"}]
       87 LOADN                            R11 1
       88 SETTABLEKS                       R11 R10 K37 ["BackgroundTransparency"]
       90 GETTABLEKS                       R12 R3 K34 ["Plus"]
       92 GETTABLEKS                       R11 R12 K17 ["Image"]
       94 SETTABLEKS                       R11 R10 K17 ["Image"]
       96 GETTABLEKS                       R11 R3 K45 ["PlusColor"]
       98 SETTABLEKS                       R11 R10 K13 ["ImageColor3"]
      100 LOADK                            R11 K46 [0.4]
      101 SETTABLEKS                       R11 R10 K38 ["ImageTransparency"]
      103 GETIMPORT                        R11 K10 [UDim2.new]
      105 LOADN                            R12 0
      106 LOADN                            R13 24
      107 LOADN                            R14 0
      108 LOADN                            R15 24
      109 CALL                             R11 4 1
      110 SETTABLEKS                       R11 R10 K11 ["Size"]
      112 GETTABLEKS                       R12 R3 K34 ["Plus"]
      114 GETTABLEKS                       R11 R12 K47 ["RectSize"]
      116 SETTABLEKS                       R11 R10 K39 ["ImageRectSize"]
      118 GETTABLEKS                       R12 R3 K34 ["Plus"]
      120 GETTABLEKS                       R11 R12 K48 ["RectOffset"]
      122 SETTABLEKS                       R11 R10 K40 ["ImageRectOffset"]
      124 GETIMPORT                        R11 K10 [UDim2.new]
      126 LOADK                            R12 K49 [0.5]
      127 LOADN                            R13 0
      128 LOADK                            R14 K49 [0.5]
      129 LOADN                            R15 0
      130 CALL                             R11 4 1
      131 SETTABLEKS                       R11 R10 K41 ["Position"]
      133 GETIMPORT                        R11 K51 [Vector2.new]
      135 LOADK                            R12 K49 [0.5]
      136 LOADK                            R13 K49 [0.5]
      137 CALL                             R11 2 1
      138 SETTABLEKS                       R11 R10 K42 ["AnchorPoint"]
      140 LOADN                            R11 2
      141 SETTABLEKS                       R11 R10 K43 ["ZIndex"]
      143 CALL                             R8 2 1
      144 SETTABLEKS                       R8 R7 K34 ["Plus"]
      146 CALL                             R4 3 -1
      147 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["ContextServices"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["withContext"]
       23 GETTABLEKS                       R4 R1 K10 ["PureComponent"]
       25 LOADK                            R6 K11 ["NewThumbnail"]
       26 NAMECALL                         R4 R4 K12 ["extend"]
       28 CALL                             R4 2 1
       29 DUPCLOSURE                       R5 K13 [PROTO_2]
       30 SETTABLEKS                       R5 R4 K14 ["init"]
       32 DUPCLOSURE                       R5 K15 [PROTO_3]
       33 SETTABLEKS                       R5 R4 K16 ["mouseHoverChanged"]
       35 DUPCLOSURE                       R5 K17 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K18 ["render"]
       39 MOVE                             R5 R3
       40 DUPTABLE                         R6 K20 [{"Mouse"}]
       41 GETTABLEKS                       R7 R2 K19 ["Mouse"]
       43 SETTABLEKS                       R7 R6 K19 ["Mouse"]
       45 CALL                             R5 1 1
       46 MOVE                             R6 R4
       47 CALL                             R5 1 1
       48 MOVE                             R4 R5
       49 RETURN                           R4 1
