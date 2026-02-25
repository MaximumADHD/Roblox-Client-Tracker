PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["Text"]
        2 ORK                              R1 R2 K0 [""]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K2 ["FONT_SIZE_SMALL"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["FONT"]
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 MOVE                             R7 R3
       13 GETIMPORT                        R8 K6 [Vector2.new]
       15 LOADN                            R9 0
       16 LOADN                            R10 0
       17 CALL                             R8 2 -1
       18 CALL                             R4 -1 1
       19 LOADN                            R7 12
       20 GETTABLEKS                       R8 R4 K8 ["x"]
       22 ADD                              R6 R7 R8
       23 ADDK                             R5 R6 K7 [12]
       24 LOADN                            R8 8
       25 GETTABLEKS                       R9 R4 K10 ["y"]
       27 ADD                              R7 R8 R9
       28 ADDK                             R6 R7 K9 [8]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K11 ["createElement"]
       32 GETUPVAL                         R8 3
       33 DUPTABLE                         R9 K18 [{"AnchorPoint", "Position", "Size", "ZIndex", "BackgroundColor3", "BackgroundTransparency"}]
       34 GETIMPORT                        R10 K6 [Vector2.new]
       36 LOADK                            R11 K19 [0.5]
       37 LOADN                            R12 1
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K12 ["AnchorPoint"]
       41 GETIMPORT                        R10 K21 [UDim2.new]
       43 LOADK                            R11 K19 [0.5]
       44 LOADN                            R12 0
       45 LOADN                            R13 1
       46 LOADN                            R14 240
       47 CALL                             R10 4 1
       48 SETTABLEKS                       R10 R9 K13 ["Position"]
       50 GETIMPORT                        R10 K21 [UDim2.new]
       52 LOADN                            R11 0
       53 MOVE                             R12 R5
       54 LOADN                            R13 0
       55 MOVE                             R14 R6
       56 CALL                             R10 4 1
       57 SETTABLEKS                       R10 R9 K14 ["Size"]
       59 LOADN                            R10 10
       60 SETTABLEKS                       R10 R9 K15 ["ZIndex"]
       62 GETUPVAL                         R11 4
       63 GETTABLEKS                       R10 R11 K22 ["GRAY_2"]
       65 SETTABLEKS                       R10 R9 K16 ["BackgroundColor3"]
       67 LOADK                            R10 K23 [0.2]
       68 SETTABLEKS                       R10 R9 K17 ["BackgroundTransparency"]
       70 DUPTABLE                         R10 K25 [{"TextLabel"}]
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R11 R12 K11 ["createElement"]
       74 LOADK                            R12 K24 ["TextLabel"]
       75 DUPTABLE                         R13 K29 [{"Position", "Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3"}]
       76 GETIMPORT                        R14 K21 [UDim2.new]
       78 LOADN                            R15 0
       79 LOADN                            R16 0
       80 LOADN                            R17 0
       81 LOADN                            R18 255
       82 CALL                             R14 4 1
       83 SETTABLEKS                       R14 R13 K13 ["Position"]
       85 GETIMPORT                        R14 K21 [UDim2.new]
       87 LOADN                            R15 1
       88 LOADN                            R16 0
       89 LOADN                            R17 1
       90 LOADN                            R18 0
       91 CALL                             R14 4 1
       92 SETTABLEKS                       R14 R13 K14 ["Size"]
       94 LOADN                            R14 1
       95 SETTABLEKS                       R14 R13 K17 ["BackgroundTransparency"]
       97 SETTABLEKS                       R1 R13 K1 ["Text"]
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R14 R15 K3 ["FONT"]
      102 SETTABLEKS                       R14 R13 K26 ["Font"]
      104 GETUPVAL                         R15 0
      105 GETTABLEKS                       R14 R15 K2 ["FONT_SIZE_SMALL"]
      107 SETTABLEKS                       R14 R13 K27 ["TextSize"]
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R14 R15 K30 ["GRAY_6"]
      112 SETTABLEKS                       R14 R13 K28 ["TextColor3"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K24 ["TextLabel"]
      117 CALL                             R7 3 -1
      118 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R3 K8 ["Util"]
       23 GETTABLEKS                       R4 R5 K9 ["GetTextSize"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K10 ["Src"]
       29 GETTABLEKS                       R7 R8 K8 ["Util"]
       31 GETTABLEKS                       R6 R7 K11 ["Colors"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K10 ["Src"]
       38 GETTABLEKS                       R8 R9 K8 ["Util"]
       40 GETTABLEKS                       R7 R8 K12 ["Constants"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R10 R0 K10 ["Src"]
       47 GETTABLEKS                       R9 R10 K13 ["Components"]
       49 GETTABLEKS                       R8 R9 K14 ["RoundFrame"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K15 [PROTO_0]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 RETURN                           R8 1
