PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["OnActivated"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADK                            R3 K1 ["ImageButton"]
        8 JUMP                             ; [+1]
        9 LOADK                            R3 K2 ["ImageLabel"]
       10 SETTABLEKS                       R3 R0 K3 ["elementType"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R1 K2 ["roundFrame"]
        8 GETTABLEKS                       R4 R2 K3 ["BackgroundColor3"]
       10 GETTABLEKS                       R5 R2 K4 ["BackgroundTransparency"]
       12 GETTABLEKS                       R6 R2 K5 ["BorderColor3"]
       14 JUMPIF                           R6 ; [+1]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R8 R2 K7 ["BorderSizePixel"]
       18 ORK                              R7 R8 K6 [1]
       19 GETTABLEKS                       R8 R2 K8 ["Size"]
       21 JUMPIF                           R8 ; [+1]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R9 R2 K9 ["Position"]
       25 GETTABLEKS                       R10 R2 K10 ["AnchorPoint"]
       27 GETTABLEKS                       R11 R2 K11 ["LayoutOrder"]
       29 GETTABLEKS                       R12 R2 K12 ["ZIndex"]
       31 GETTABLEKS                       R13 R2 K13 ["OnActivated"]
       33 GETTABLEKS                       R14 R2 K14 ["OnMouseEnter"]
       35 GETTABLEKS                       R15 R2 K15 ["OnMouseLeave"]
       37 LOADNIL                          R16
       38 JUMPIFNOTEQKN                    R7 K16 [0] ; [+3]
       40 LOADN                            R16 1
       41 JUMP                             ; [+1]
       42 MOVE                             R16 R5
       43 GETUPVAL                         R17 2
       44 GETTABLEKS                       R17 R17 K17 ["createElement"]
       46 GETTABLEKS                       R18 R0 K18 ["elementType"]
       48 NEWTABLE                         R19 16 0
       50 SETTABLEKS                       R8 R19 K8 ["Size"]
       52 SETTABLEKS                       R9 R19 K9 ["Position"]
       54 SETTABLEKS                       R10 R19 K10 ["AnchorPoint"]
       56 SETTABLEKS                       R11 R19 K11 ["LayoutOrder"]
       58 SETTABLEKS                       R12 R19 K12 ["ZIndex"]
       60 LOADN                            R20 1
       61 SETTABLEKS                       R20 R19 K4 ["BackgroundTransparency"]
       63 SETTABLEKS                       R4 R19 K19 ["ImageColor3"]
       65 SETTABLEKS                       R5 R19 K20 ["ImageTransparency"]
       67 GETTABLEKS                       R20 R3 K21 ["backgroundImage"]
       69 SETTABLEKS                       R20 R19 K22 ["Image"]
       71 GETIMPORT                        R20 K26 [Enum.ScaleType.Slice]
       73 SETTABLEKS                       R20 R19 K24 ["ScaleType"]
       75 GETUPVAL                         R20 3
       76 SETTABLEKS                       R20 R19 K27 ["SliceCenter"]
       78 GETUPVAL                         R20 2
       79 GETTABLEKS                       R20 R20 K28 ["Event"]
       81 GETTABLEKS                       R20 R20 K29 ["MouseEnter"]
       83 SETTABLE                         R14 R19 R20
       84 GETUPVAL                         R20 2
       85 GETTABLEKS                       R20 R20 K28 ["Event"]
       87 GETTABLEKS                       R20 R20 K30 ["MouseLeave"]
       89 SETTABLE                         R15 R19 R20
       90 GETUPVAL                         R20 2
       91 GETTABLEKS                       R20 R20 K28 ["Event"]
       93 GETTABLEKS                       R20 R20 K31 ["Activated"]
       95 SETTABLE                         R13 R19 R20
       96 GETUPVAL                         R20 2
       97 GETTABLEKS                       R20 R20 K32 ["Change"]
       99 GETTABLEKS                       R20 R20 K33 ["AbsoluteSize"]
      101 GETUPVAL                         R22 2
      102 GETTABLEKS                       R22 R22 K32 ["Change"]
      104 GETTABLEKS                       R22 R22 K33 ["AbsoluteSize"]
      106 GETTABLE                         R21 R2 R22
      107 SETTABLE                         R21 R19 R20
      108 GETUPVAL                         R20 2
      109 GETTABLEKS                       R20 R20 K32 ["Change"]
      111 GETTABLEKS                       R20 R20 K34 ["AbsolutePosition"]
      113 GETUPVAL                         R22 2
      114 GETTABLEKS                       R22 R22 K32 ["Change"]
      116 GETTABLEKS                       R22 R22 K34 ["AbsolutePosition"]
      118 GETTABLE                         R21 R2 R22
      119 SETTABLE                         R21 R19 R20
      120 DUPTABLE                         R20 K36 [{"Border"}]
      121 GETUPVAL                         R21 2
      122 GETTABLEKS                       R21 R21 K17 ["createElement"]
      124 LOADK                            R22 K37 ["ImageLabel"]
      125 DUPTABLE                         R23 K39 [{"Size", "BackgroundTransparency", "ImageColor3", "ImageTransparency", "Image", "ScaleType", "SliceCenter", "SliceScale"}]
      126 GETIMPORT                        R24 K42 [UDim2.new]
      128 LOADN                            R25 1
      129 LOADN                            R26 0
      130 LOADN                            R27 1
      131 LOADN                            R28 0
      132 CALL                             R24 4 1
      133 SETTABLEKS                       R24 R23 K8 ["Size"]
      135 LOADN                            R24 1
      136 SETTABLEKS                       R24 R23 K4 ["BackgroundTransparency"]
      138 SETTABLEKS                       R6 R23 K19 ["ImageColor3"]
      140 SETTABLEKS                       R16 R23 K20 ["ImageTransparency"]
      142 GETTABLEKS                       R24 R3 K43 ["borderImage"]
      144 SETTABLEKS                       R24 R23 K22 ["Image"]
      146 GETIMPORT                        R24 K26 [Enum.ScaleType.Slice]
      148 SETTABLEKS                       R24 R23 K24 ["ScaleType"]
      150 GETUPVAL                         R24 3
      151 SETTABLEKS                       R24 R23 K27 ["SliceCenter"]
      153 SETTABLEKS                       R7 R23 K38 ["SliceScale"]
      155 GETUPVAL                         R25 2
      156 GETTABLEKS                       R25 R25 K44 ["Children"]
      158 GETTABLE                         R24 R2 R25
      159 CALL                             R21 3 1
      160 SETTABLEKS                       R21 R20 K35 ["Border"]
      162 CALL                             R17 3 -1
      163 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K13 [Rect.new]
       27 LOADN                            R6 3
       28 LOADN                            R7 3
       29 LOADN                            R8 13
       30 LOADN                            R9 13
       31 CALL                             R5 4 1
       32 GETIMPORT                        R6 K16 [Color3.fromRGB]
       34 LOADN                            R7 27
       35 LOADN                            R8 42
       36 LOADN                            R9 53
       37 CALL                             R6 3 1
       38 GETIMPORT                        R7 K18 [UDim2.new]
       40 LOADN                            R8 0
       41 LOADN                            R9 100
       42 LOADN                            R10 0
       43 LOADN                            R11 100
       44 CALL                             R7 4 1
       45 GETTABLEKS                       R8 R2 K19 ["PureComponent"]
       47 LOADK                            R10 K20 ["RoundFrame"]
       48 NAMECALL                         R8 R8 K21 ["extend"]
       50 CALL                             R8 2 1
       51 DUPCLOSURE                       R9 K22 [PROTO_0]
       52 SETTABLEKS                       R9 R8 K23 ["init"]
       54 DUPCLOSURE                       R9 K24 [PROTO_1]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R8 K25 ["render"]
       61 MOVE                             R9 R4
       62 DUPTABLE                         R10 K27 [{"Stylizer"}]
       63 GETTABLEKS                       R11 R3 K26 ["Stylizer"]
       65 SETTABLEKS                       R11 R10 K26 ["Stylizer"]
       67 CALL                             R9 1 1
       68 MOVE                             R10 R8
       69 CALL                             R9 1 1
       70 MOVE                             R8 R9
       71 RETURN                           R8 1
