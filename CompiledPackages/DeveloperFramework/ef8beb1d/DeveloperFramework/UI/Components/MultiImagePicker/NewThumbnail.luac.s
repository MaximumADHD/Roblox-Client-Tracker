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
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
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
       37 GETTABLEKS                       R7 R2 K16 ["DottedBorder"]
       39 GETTABLEKS                       R7 R7 K17 ["Image"]
       41 SETTABLEKS                       R7 R6 K17 ["Image"]
       43 GETIMPORT                        R7 K21 [Enum.ResamplerMode.Pixelated]
       45 SETTABLEKS                       R7 R6 K22 ["ResampleMode"]
       47 GETIMPORT                        R7 K25 [Enum.ScaleType.Slice]
       49 SETTABLEKS                       R7 R6 K23 ["ScaleType"]
       51 GETTABLEKS                       R7 R2 K16 ["DottedBorder"]
       53 GETTABLEKS                       R7 R7 K26 ["SliceCenter"]
       55 SETTABLEKS                       R7 R6 K26 ["SliceCenter"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K27 ["Event"]
       60 GETTABLEKS                       R7 R7 K28 ["MouseEnter"]
       62 GETTABLEKS                       R8 R0 K29 ["mouseEnter"]
       64 SETTABLE                         R8 R6 R7
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K27 ["Event"]
       68 GETTABLEKS                       R7 R7 K30 ["MouseLeave"]
       70 GETTABLEKS                       R8 R0 K31 ["mouseLeave"]
       72 SETTABLE                         R8 R6 R7
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K27 ["Event"]
       76 GETTABLEKS                       R7 R7 K32 ["Activated"]
       78 GETTABLEKS                       R8 R1 K33 ["OnClick"]
       80 SETTABLE                         R8 R6 R7
       81 DUPTABLE                         R7 K35 [{"Plus"}]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K3 ["createElement"]
       85 LOADK                            R9 K36 ["ImageLabel"]
       86 DUPTABLE                         R10 K46 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["ImageTransparency"] = 0.4, ["Size"], ["ImageRectSize"], ["ImageRectOffset"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2}]
       87 GETTABLEKS                       R11 R3 K34 ["Plus"]
       89 GETTABLEKS                       R11 R11 K17 ["Image"]
       91 SETTABLEKS                       R11 R10 K17 ["Image"]
       93 GETTABLEKS                       R11 R3 K47 ["PlusColor"]
       95 SETTABLEKS                       R11 R10 K13 ["ImageColor3"]
       97 GETIMPORT                        R11 K10 [UDim2.new]
       99 LOADN                            R12 0
      100 LOADN                            R13 24
      101 LOADN                            R14 0
      102 LOADN                            R15 24
      103 CALL                             R11 4 1
      104 SETTABLEKS                       R11 R10 K11 ["Size"]
      106 GETTABLEKS                       R11 R3 K34 ["Plus"]
      108 GETTABLEKS                       R11 R11 K48 ["RectSize"]
      110 SETTABLEKS                       R11 R10 K40 ["ImageRectSize"]
      112 GETTABLEKS                       R11 R3 K34 ["Plus"]
      114 GETTABLEKS                       R11 R11 K49 ["RectOffset"]
      116 SETTABLEKS                       R11 R10 K41 ["ImageRectOffset"]
      118 GETIMPORT                        R11 K10 [UDim2.new]
      120 LOADK                            R12 K50 [0.5]
      121 LOADN                            R13 0
      122 LOADK                            R14 K50 [0.5]
      123 LOADN                            R15 0
      124 CALL                             R11 4 1
      125 SETTABLEKS                       R11 R10 K42 ["Position"]
      127 GETIMPORT                        R11 K52 [Vector2.new]
      129 LOADK                            R12 K50 [0.5]
      130 LOADK                            R13 K50 [0.5]
      131 CALL                             R11 2 1
      132 SETTABLEKS                       R11 R10 K43 ["AnchorPoint"]
      134 CALL                             R8 2 1
      135 SETTABLEKS                       R8 R7 K34 ["Plus"]
      137 CALL                             R4 3 -1
      138 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
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
