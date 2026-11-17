PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 GETUPVAL                         R6 0
        7 JUMPIFNOTEQ                      R1 R6 ; [+9]
        9 LOADK                            R8 K2 ["TextEditor"]
       10 LOADK                            R9 K3 ["Left"]
       11 NAMECALL                         R6 R3 K4 ["getText"]
       13 CALL                             R6 3 1
       14 MOVE                             R4 R6
       15 LOADN                            R5 1
       16 JUMP                             ; [+32]
       17 GETUPVAL                         R6 1
       18 JUMPIFNOTEQ                      R1 R6 ; [+9]
       20 LOADK                            R8 K2 ["TextEditor"]
       21 LOADK                            R9 K5 ["Right"]
       22 NAMECALL                         R6 R3 K4 ["getText"]
       24 CALL                             R6 3 1
       25 MOVE                             R4 R6
       26 LOADN                            R5 2
       27 JUMP                             ; [+21]
       28 GETUPVAL                         R6 2
       29 JUMPIFNOTEQ                      R1 R6 ; [+9]
       31 LOADK                            R8 K2 ["TextEditor"]
       32 LOADK                            R9 K6 ["Top"]
       33 NAMECALL                         R6 R3 K4 ["getText"]
       35 CALL                             R6 3 1
       36 MOVE                             R4 R6
       37 LOADN                            R5 3
       38 JUMP                             ; [+10]
       39 GETUPVAL                         R6 3
       40 JUMPIFNOTEQ                      R1 R6 ; [+8]
       42 LOADK                            R8 K2 ["TextEditor"]
       43 LOADK                            R9 K7 ["Bottom"]
       44 NAMECALL                         R6 R3 K4 ["getText"]
       46 CALL                             R6 3 1
       47 MOVE                             R4 R6
       48 LOADN                            R5 4
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K8 ["createElement"]
       52 GETUPVAL                         R7 5
       53 DUPTABLE                         R8 K15 [{"orientation", "labelText", "sliceRect", "setSliceRect", "pixelDimensions", "layoutOrder"}]
       54 SETTABLEKS                       R1 R8 K9 ["orientation"]
       56 SETTABLEKS                       R4 R8 K10 ["labelText"]
       58 GETTABLEKS                       R9 R2 K11 ["sliceRect"]
       60 SETTABLEKS                       R9 R8 K11 ["sliceRect"]
       62 GETTABLEKS                       R9 R2 K12 ["setSliceRect"]
       64 SETTABLEKS                       R9 R8 K12 ["setSliceRect"]
       66 GETTABLEKS                       R9 R2 K13 ["pixelDimensions"]
       68 SETTABLEKS                       R9 R8 K13 ["pixelDimensions"]
       70 SETTABLEKS                       R5 R8 K14 ["layoutOrder"]
       72 CALL                             R6 2 -1
       73 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["size"]
        8 LOADK                            R7 K4 ["ImageEditor"]
        9 LOADK                            R8 K5 ["ImageSize"]
       10 NAMECALL                         R5 R3 K6 ["getText"]
       12 CALL                             R5 3 1
       13 GETTABLEKS                       R6 R1 K7 ["pixelDimensions"]
       15 JUMPIFNOT                        R6 ; [+11]
       16 MOVE                             R7 R5
       17 LOADK                            R8 K8 [":\n%d x %d px"]
       18 GETTABLEKS                       R10 R6 K9 ["X"]
       20 GETTABLEKS                       R11 R6 K10 ["Y"]
       22 NAMECALL                         R8 R8 K11 ["format"]
       24 CALL                             R8 3 1
       25 CONCAT                           R5 R7 R8
       26 JUMP                             ; [+6]
       27 LOADK                            R9 K4 ["ImageEditor"]
       28 LOADK                            R10 K12 ["ImageSizeError"]
       29 NAMECALL                         R7 R3 K6 ["getText"]
       31 CALL                             R7 3 1
       32 MOVE                             R5 R7
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K13 ["createElement"]
       36 GETUPVAL                         R8 1
       37 DUPTABLE                         R9 K21 [{"Position", "Size", "Layout", "VerticalAlignment", "HorizontalAlignment", "Spacing", "LayoutOrder"}]
       38 GETTABLEKS                       R10 R1 K22 ["position"]
       40 SETTABLEKS                       R10 R9 K14 ["Position"]
       42 SETTABLEKS                       R4 R9 K15 ["Size"]
       44 GETIMPORT                        R10 K26 [Enum.FillDirection.Vertical]
       46 SETTABLEKS                       R10 R9 K16 ["Layout"]
       48 GETIMPORT                        R10 K28 [Enum.VerticalAlignment.Bottom]
       50 SETTABLEKS                       R10 R9 K17 ["VerticalAlignment"]
       52 GETIMPORT                        R10 K30 [Enum.HorizontalAlignment.Center]
       54 SETTABLEKS                       R10 R9 K18 ["HorizontalAlignment"]
       56 GETTABLEKS                       R10 R2 K31 ["OffsetItemSpacing"]
       58 SETTABLEKS                       R10 R9 K19 ["Spacing"]
       60 GETTABLEKS                       R10 R1 K32 ["layoutOrder"]
       62 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       64 DUPTABLE                         R10 K39 [{"OffsetLabel", "LeftInput", "RightInput", "TopInput", "BottomInput", "PixelDimensionsText"}]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K13 ["createElement"]
       68 GETUPVAL                         R12 2
       69 DUPTABLE                         R13 K44 [{"AnchorPoint", "Position", "Size", "Text", "TextSize", "TextXAlignment"}]
       70 GETIMPORT                        R14 K47 [Vector2.new]
       72 LOADK                            R15 K48 [0.5]
       73 LOADN                            R16 0
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K40 ["AnchorPoint"]
       77 GETIMPORT                        R14 K51 [UDim2.fromScale]
       79 LOADK                            R15 K48 [0.5]
       80 LOADN                            R16 0
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K14 ["Position"]
       84 GETIMPORT                        R14 K52 [UDim2.new]
       86 LOADN                            R15 1
       87 LOADN                            R16 0
       88 LOADN                            R17 0
       89 GETUPVAL                         R18 3
       90 GETTABLEKS                       R18 R18 K53 ["TEXTSIZE"]
       92 CALL                             R14 4 1
       93 SETTABLEKS                       R14 R13 K15 ["Size"]
       95 LOADK                            R16 K54 ["TextEditor"]
       96 LOADK                            R17 K55 ["Offsets"]
       97 NAMECALL                         R14 R3 K6 ["getText"]
       99 CALL                             R14 3 1
      100 SETTABLEKS                       R14 R13 K41 ["Text"]
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K53 ["TEXTSIZE"]
      105 SETTABLEKS                       R14 R13 K42 ["TextSize"]
      107 GETIMPORT                        R14 K56 [Enum.TextXAlignment.Center]
      109 SETTABLEKS                       R14 R13 K43 ["TextXAlignment"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K33 ["OffsetLabel"]
      114 GETUPVAL                         R13 4
      115 NAMECALL                         R11 R0 K57 ["createOffset"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K34 ["LeftInput"]
      120 GETUPVAL                         R13 5
      121 NAMECALL                         R11 R0 K57 ["createOffset"]
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K35 ["RightInput"]
      126 GETUPVAL                         R13 6
      127 NAMECALL                         R11 R0 K57 ["createOffset"]
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K36 ["TopInput"]
      132 GETUPVAL                         R13 7
      133 NAMECALL                         R11 R0 K57 ["createOffset"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K37 ["BottomInput"]
      138 GETUPVAL                         R11 0
      139 GETTABLEKS                       R11 R11 K13 ["createElement"]
      141 GETUPVAL                         R12 2
      142 DUPTABLE                         R13 K62 [{["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 5}]
      143 GETIMPORT                        R14 K52 [UDim2.new]
      145 LOADN                            R15 1
      146 LOADN                            R16 0
      147 LOADN                            R17 0
      148 GETTABLEKS                       R18 R2 K63 ["PixelDimensionsHeightPx"]
      150 CALL                             R14 4 1
      151 SETTABLEKS                       R14 R13 K15 ["Size"]
      153 SETTABLEKS                       R5 R13 K41 ["Text"]
      155 GETUPVAL                         R14 3
      156 GETTABLEKS                       R14 R14 K53 ["TEXTSIZE"]
      158 SETTABLEKS                       R14 R13 K42 ["TextSize"]
      160 GETIMPORT                        R14 K56 [Enum.TextXAlignment.Center]
      162 SETTABLEKS                       R14 R13 K43 ["TextXAlignment"]
      164 GETIMPORT                        R14 K64 [Enum.TextYAlignment.Bottom]
      166 SETTABLEKS                       R14 R13 K58 ["TextYAlignment"]
      168 CALL                             R11 2 1
      169 SETTABLEKS                       R11 R10 K38 ["PixelDimensionsText"]
      171 CALL                             R7 3 -1
      172 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["TextOffset"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["Orientation"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       52 GETTABLEKS                       R7 R6 K15 ["withContext"]
       54 GETTABLEKS                       R8 R6 K16 ["Analytics"]
       56 GETTABLEKS                       R9 R6 K17 ["Localization"]
       58 GETTABLEKS                       R10 R2 K18 ["UI"]
       60 GETTABLEKS                       R11 R10 K19 ["Pane"]
       62 GETTABLEKS                       R12 R10 K20 ["TextLabel"]
       64 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
       66 LOADK                            R15 K22 ["TextEditor"]
       67 NAMECALL                         R13 R13 K23 ["extend"]
       69 CALL                             R13 2 1
       70 GETTABLEKS                       R14 R5 K24 ["Left"]
       72 GETTABLEKS                       R14 R14 K25 ["rawValue"]
       74 CALL                             R14 0 1
       75 GETTABLEKS                       R15 R5 K26 ["Right"]
       77 GETTABLEKS                       R15 R15 K25 ["rawValue"]
       79 CALL                             R15 0 1
       80 GETTABLEKS                       R16 R5 K27 ["Top"]
       82 GETTABLEKS                       R16 R16 K25 ["rawValue"]
       84 CALL                             R16 0 1
       85 GETTABLEKS                       R17 R5 K28 ["Bottom"]
       87 GETTABLEKS                       R17 R17 K25 ["rawValue"]
       89 CALL                             R17 0 1
       90 DUPCLOSURE                       R18 K29 [PROTO_0]
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R18 R13 K30 ["createOffset"]
       99 DUPCLOSURE                       R18 K31 [PROTO_1]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R17
      108 SETTABLEKS                       R18 R13 K32 ["render"]
      110 MOVE                             R18 R7
      111 DUPTABLE                         R19 K34 [{"Analytics", "Localization", "Stylizer"}]
      112 SETTABLEKS                       R8 R19 K16 ["Analytics"]
      114 SETTABLEKS                       R9 R19 K17 ["Localization"]
      116 GETTABLEKS                       R20 R6 K33 ["Stylizer"]
      118 SETTABLEKS                       R20 R19 K33 ["Stylizer"]
      120 CALL                             R18 1 1
      121 MOVE                             R19 R13
      122 CALL                             R18 1 1
      123 MOVE                             R13 R18
      124 RETURN                           R13 1
