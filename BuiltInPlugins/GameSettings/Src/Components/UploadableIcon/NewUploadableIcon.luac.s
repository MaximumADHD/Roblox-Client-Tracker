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
        2 GETTABLEKS                       R2 R1 K1 ["Visible"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 LOADK                            R5 K4 ["ImageButton"]
       10 NEWTABLE                         R6 16 0
       12 SETTABLEKS                       R2 R6 K1 ["Visible"]
       14 LOADN                            R7 0
       15 SETTABLEKS                       R7 R6 K5 ["BorderSizePixel"]
       17 GETTABLEKS                       R8 R3 K6 ["newThumbnail"]
       19 GETTABLEKS                       R7 R8 K7 ["background"]
       21 SETTABLEKS                       R7 R6 K8 ["BackgroundColor3"]
       23 GETTABLEKS                       R8 R3 K6 ["newThumbnail"]
       25 GETTABLEKS                       R7 R8 K9 ["border"]
       27 SETTABLEKS                       R7 R6 K10 ["ImageColor3"]
       29 GETTABLEKS                       R9 R3 K11 ["dottedBorder"]
       31 GETTABLEKS                       R8 R9 K12 ["square"]
       33 GETTABLEKS                       R7 R8 K13 ["image"]
       35 SETTABLEKS                       R7 R6 K14 ["Image"]
       37 GETIMPORT                        R7 K18 [Enum.ResamplerMode.Pixelated]
       39 SETTABLEKS                       R7 R6 K19 ["ResampleMode"]
       41 GETIMPORT                        R7 K22 [Enum.ScaleType.Slice]
       43 SETTABLEKS                       R7 R6 K20 ["ScaleType"]
       45 GETTABLEKS                       R8 R3 K11 ["dottedBorder"]
       47 GETTABLEKS                       R7 R8 K23 ["sliceCenter"]
       49 SETTABLEKS                       R7 R6 K24 ["SliceCenter"]
       51 GETIMPORT                        R7 K27 [UDim2.new]
       53 LOADN                            R8 0
       54 LOADN                            R9 150
       55 LOADN                            R10 0
       56 LOADN                            R11 150
       57 CALL                             R7 4 1
       58 SETTABLEKS                       R7 R6 K28 ["Size"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K29 ["Event"]
       63 GETTABLEKS                       R7 R8 K30 ["MouseEnter"]
       65 GETTABLEKS                       R8 R0 K31 ["mouseEnter"]
       67 SETTABLE                         R8 R6 R7
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R8 R9 K29 ["Event"]
       71 GETTABLEKS                       R7 R8 K32 ["MouseLeave"]
       73 GETTABLEKS                       R8 R0 K33 ["mouseLeave"]
       75 SETTABLE                         R8 R6 R7
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R8 R9 K29 ["Event"]
       79 GETTABLEKS                       R7 R8 K34 ["Activated"]
       81 GETTABLEKS                       R9 R0 K0 ["props"]
       83 GETTABLEKS                       R8 R9 K35 ["OnClick"]
       85 SETTABLE                         R8 R6 R7
       86 DUPTABLE                         R7 K37 [{"Plus"}]
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R8 R9 K3 ["createElement"]
       90 LOADK                            R9 K38 ["ImageLabel"]
       91 DUPTABLE                         R10 K46 [{"BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "ImageRectSize", "ImageRectOffset", "Size", "Position", "AnchorPoint", "ZIndex"}]
       92 LOADN                            R11 1
       93 SETTABLEKS                       R11 R10 K39 ["BackgroundTransparency"]
       95 GETTABLEKS                       R12 R3 K47 ["plus"]
       97 GETTABLEKS                       R11 R12 K13 ["image"]
       99 SETTABLEKS                       R11 R10 K14 ["Image"]
      101 GETTABLEKS                       R12 R3 K6 ["newThumbnail"]
      103 GETTABLEKS                       R11 R12 K47 ["plus"]
      105 SETTABLEKS                       R11 R10 K10 ["ImageColor3"]
      107 LOADK                            R11 K48 [0.4]
      108 SETTABLEKS                       R11 R10 K40 ["ImageTransparency"]
      110 GETTABLEKS                       R12 R3 K47 ["plus"]
      112 GETTABLEKS                       R11 R12 K49 ["rectSize"]
      114 SETTABLEKS                       R11 R10 K41 ["ImageRectSize"]
      116 GETTABLEKS                       R12 R3 K47 ["plus"]
      118 GETTABLEKS                       R11 R12 K50 ["rectOffset"]
      120 SETTABLEKS                       R11 R10 K42 ["ImageRectOffset"]
      122 GETIMPORT                        R11 K27 [UDim2.new]
      124 LOADN                            R12 0
      125 LOADN                            R13 24
      126 LOADN                            R14 0
      127 LOADN                            R15 24
      128 CALL                             R11 4 1
      129 SETTABLEKS                       R11 R10 K28 ["Size"]
      131 GETIMPORT                        R11 K27 [UDim2.new]
      133 LOADK                            R12 K51 [0.5]
      134 LOADN                            R13 0
      135 LOADK                            R14 K51 [0.5]
      136 LOADN                            R15 0
      137 CALL                             R11 4 1
      138 SETTABLEKS                       R11 R10 K43 ["Position"]
      140 GETIMPORT                        R11 K53 [Vector2.new]
      142 LOADK                            R12 K51 [0.5]
      143 LOADK                            R13 K51 [0.5]
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K44 ["AnchorPoint"]
      147 LOADN                            R11 2
      148 SETTABLEKS                       R11 R10 K45 ["ZIndex"]
      150 CALL                             R8 2 1
      151 SETTABLEKS                       R8 R7 K36 ["Plus"]
      153 CALL                             R4 3 -1
      154 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R1 K10 ["PureComponent"]
       31 LOADK                            R7 K11 ["NewUploadableIcon"]
       32 NAMECALL                         R5 R5 K12 ["extend"]
       34 CALL                             R5 2 1
       35 DUPCLOSURE                       R6 K13 [PROTO_2]
       36 SETTABLEKS                       R6 R5 K14 ["init"]
       38 DUPCLOSURE                       R6 K15 [PROTO_3]
       39 SETTABLEKS                       R6 R5 K16 ["mouseHoverChanged"]
       41 DUPCLOSURE                       R6 K17 [PROTO_4]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K18 ["render"]
       45 MOVE                             R6 R4
       46 DUPTABLE                         R7 K21 [{"Stylizer", "Mouse"}]
       47 GETTABLEKS                       R8 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R8 R7 K19 ["Stylizer"]
       51 GETTABLEKS                       R8 R3 K20 ["Mouse"]
       53 SETTABLEKS                       R8 R7 K20 ["Mouse"]
       55 CALL                             R6 1 1
       56 MOVE                             R7 R5
       57 CALL                             R6 1 1
       58 MOVE                             R5 R6
       59 RETURN                           R5 1
