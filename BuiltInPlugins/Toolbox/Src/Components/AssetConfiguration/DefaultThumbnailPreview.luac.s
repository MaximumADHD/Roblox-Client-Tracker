PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["instances"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R3 K1 ["instances"]
        9 LENGTH                           R1 R2
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+9]
       13 GETTABLEKS                       R4 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R4 K1 ["instances"]
       17 GETTABLEN                        R2 R3 1
       18 GETTABLEKS                       R1 R2 K2 ["Name"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K3 [""]
       22 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["title"]
        6 JUMPIF                           R3 ; [+3]
        7 NAMECALL                         R3 R0 K3 ["getName"]
        9 CALL                             R3 1 1
       10 LOADB                            R4 1
       11 GETTABLEKS                       R5 R1 K4 ["ShowTitle"]
       13 JUMPIFEQKNIL                     R5 ; [+3]
       15 GETTABLEKS                       R4 R1 K5 ["showTitle"]
       17 GETTABLEKS                       R5 R1 K6 ["Position"]
       19 JUMPIF                           R5 ; [+7]
       20 GETIMPORT                        R5 K9 [UDim2.new]
       22 LOADN                            R6 1
       23 LOADN                            R7 0
       24 LOADN                            R8 1
       25 LOADN                            R9 0
       26 CALL                             R5 4 1
       27 GETTABLEKS                       R7 R1 K11 ["titleHeight"]
       29 ORK                              R6 R7 K10 [24]
       30 GETTABLEKS                       R8 R1 K13 ["titlePadding"]
       32 ORK                              R7 R8 K12 [12]
       33 GETTABLEKS                       R9 R1 K15 ["LayoutOrder"]
       35 ORK                              R8 R9 K14 [1]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K16 ["createElement"]
       39 LOADK                            R10 K17 ["Frame"]
       40 DUPTABLE                         R11 K20 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
       41 LOADN                            R12 1
       42 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
       44 GETTABLEKS                       R12 R1 K19 ["Size"]
       46 SETTABLEKS                       R12 R11 K19 ["Size"]
       48 SETTABLEKS                       R5 R11 K6 ["Position"]
       50 SETTABLEKS                       R8 R11 K15 ["LayoutOrder"]
       52 DUPTABLE                         R12 K23 [{"PreviewFrame", "Title"}]
       53 GETUPVAL                         R14 0
       54 GETTABLEKS                       R13 R14 K16 ["createElement"]
       56 GETUPVAL                         R14 1
       57 DUPTABLE                         R15 K26 [{"BackgroundColor3", "BorderColor3", "Size"}]
       58 GETTABLEKS                       R17 R2 K27 ["thumbnailPreview"]
       60 GETTABLEKS                       R16 R17 K28 ["background"]
       62 SETTABLEKS                       R16 R15 K24 ["BackgroundColor3"]
       64 GETTABLEKS                       R17 R2 K27 ["thumbnailPreview"]
       66 GETTABLEKS                       R16 R17 K29 ["border"]
       68 SETTABLEKS                       R16 R15 K25 ["BorderColor3"]
       70 JUMPIFNOT                        R4 ; [+9]
       71 GETIMPORT                        R16 K9 [UDim2.new]
       73 LOADN                            R17 1
       74 LOADN                            R18 0
       75 LOADN                            R19 1
       76 ADD                              R21 R6 R7
       77 MINUS                            R20 R21
       78 CALL                             R16 4 1
       79 JUMPIF                           R16 ; [+7]
       80 GETIMPORT                        R16 K9 [UDim2.new]
       82 LOADN                            R17 1
       83 LOADN                            R18 0
       84 LOADN                            R19 1
       85 LOADN                            R20 0
       86 CALL                             R16 4 1
       87 SETTABLEKS                       R16 R15 K19 ["Size"]
       89 DUPTABLE                         R16 K31 [{"Thumbnail"}]
       90 GETUPVAL                         R18 0
       91 GETTABLEKS                       R17 R18 K16 ["createElement"]
       93 GETUPVAL                         R18 2
       94 DUPTABLE                         R19 K34 [{"Size", "BackgroundTransparency", "Image", "defaultImage"}]
       95 GETIMPORT                        R20 K9 [UDim2.new]
       97 LOADN                            R21 1
       98 LOADN                            R22 0
       99 LOADN                            R23 1
      100 LOADN                            R24 0
      101 CALL                             R20 4 1
      102 SETTABLEKS                       R20 R19 K19 ["Size"]
      104 LOADN                            R20 1
      105 SETTABLEKS                       R20 R19 K18 ["BackgroundTransparency"]
      107 LOADK                            R20 K35 ["rbxasset://textures/StudioToolbox/Animation.png"]
      108 SETTABLEKS                       R20 R19 K32 ["Image"]
      110 LOADK                            R20 K36 [""]
      111 SETTABLEKS                       R20 R19 K33 ["defaultImage"]
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K30 ["Thumbnail"]
      116 CALL                             R13 3 1
      117 SETTABLEKS                       R13 R12 K21 ["PreviewFrame"]
      119 MOVE                             R13 R4
      120 JUMPIFNOT                        R13 ; [+45]
      121 GETUPVAL                         R14 0
      122 GETTABLEKS                       R13 R14 K16 ["createElement"]
      124 LOADK                            R14 K37 ["TextLabel"]
      125 DUPTABLE                         R15 K42 [{"Text", "Font", "TextSize", "TextColor3", "Position", "Size", "BackgroundTransparency"}]
      126 SETTABLEKS                       R3 R15 K38 ["Text"]
      128 GETUPVAL                         R17 3
      129 GETTABLEKS                       R16 R17 K43 ["FONT"]
      131 SETTABLEKS                       R16 R15 K39 ["Font"]
      133 GETUPVAL                         R17 3
      134 GETTABLEKS                       R16 R17 K44 ["FONT_SIZE_MEDIUM"]
      136 SETTABLEKS                       R16 R15 K40 ["TextSize"]
      138 GETTABLEKS                       R17 R2 K27 ["thumbnailPreview"]
      140 GETTABLEKS                       R16 R17 K45 ["text"]
      142 SETTABLEKS                       R16 R15 K41 ["TextColor3"]
      144 GETIMPORT                        R16 K9 [UDim2.new]
      146 LOADN                            R17 0
      147 LOADN                            R18 0
      148 LOADN                            R19 1
      149 MINUS                            R20 R6
      150 CALL                             R16 4 1
      151 SETTABLEKS                       R16 R15 K6 ["Position"]
      153 GETIMPORT                        R16 K9 [UDim2.new]
      155 LOADN                            R17 1
      156 LOADN                            R18 0
      157 LOADN                            R19 0
      158 MOVE                             R20 R6
      159 CALL                             R16 4 1
      160 SETTABLEKS                       R16 R15 K19 ["Size"]
      162 LOADN                            R16 1
      163 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
      165 CALL                             R13 2 1
      166 SETTABLEKS                       R13 R12 K22 ["Title"]
      168 CALL                             R9 3 -1
      169 RETURN                           R9 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"instances"}]
        6 GETTABLEKS                       R3 R0 K0 ["instances"]
        8 SETTABLEKS                       R3 R2 K0 ["instances"]
       10 RETURN                           R2 1

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
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["Constants"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       39 GETTABLEKS                       R8 R7 K13 ["withContext"]
       41 GETTABLEKS                       R10 R0 K9 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Components"]
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R11 R9 K15 ["RoundFrame"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R14 R0 K9 ["Src"]
       54 GETTABLEKS                       R13 R14 K14 ["Components"]
       56 GETTABLEKS                       R12 R13 K16 ["ImageWithDefault"]
       58 CALL                             R11 1 1
       59 GETTABLEKS                       R12 R2 K17 ["PureComponent"]
       61 LOADK                            R14 K18 ["DefaultThumbnailPreview"]
       62 NAMECALL                         R12 R12 K19 ["extend"]
       64 CALL                             R12 2 1
       65 DUPCLOSURE                       R13 K20 [PROTO_0]
       66 SETTABLEKS                       R13 R12 K21 ["getName"]
       68 DUPCLOSURE                       R13 K22 [PROTO_1]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R13 R12 K23 ["render"]
       75 DUPCLOSURE                       R13 K24 [PROTO_2]
       76 MOVE                             R14 R8
       77 DUPTABLE                         R15 K26 [{"Stylizer"}]
       78 GETTABLEKS                       R16 R7 K25 ["Stylizer"]
       80 SETTABLEKS                       R16 R15 K25 ["Stylizer"]
       82 CALL                             R14 1 1
       83 MOVE                             R15 R12
       84 CALL                             R14 1 1
       85 MOVE                             R12 R14
       86 GETTABLEKS                       R14 R3 K27 ["connect"]
       88 MOVE                             R15 R13
       89 CALL                             R14 1 1
       90 MOVE                             R15 R12
       91 CALL                             R14 1 -1
       92 RETURN                           R14 -1
