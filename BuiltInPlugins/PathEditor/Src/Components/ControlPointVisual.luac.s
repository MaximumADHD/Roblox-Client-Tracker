PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ControlPointVisual"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["StyleModifier"]
        7 GETTABLEKS                       R3 R0 K3 ["Style"]
        9 JUMPIFEQKNIL                     R3 ; [+15]
       11 GETTABLEKS                       R4 R0 K3 ["Style"]
       13 GETTABLE                         R3 R1 R4
       14 JUMPIFEQKNIL                     R3 ; [+10]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K4 ["join"]
       19 MOVE                             R4 R1
       20 GETTABLEKS                       R6 R0 K3 ["Style"]
       22 GETTABLE                         R5 R1 R6
       23 CALL                             R3 2 1
       24 MOVE                             R1 R3
       25 JUMPIFEQKNIL                     R2 ; [+11]
       27 GETTABLE                         R3 R1 R2
       28 JUMPIFEQKNIL                     R3 ; [+8]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K4 ["join"]
       33 MOVE                             R4 R1
       34 GETTABLE                         R5 R1 R2
       35 CALL                             R3 2 1
       36 MOVE                             R1 R3
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K5 ["createElement"]
       40 LOADK                            R4 K6 ["Frame"]
       41 DUPTABLE                         R5 K12 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "Rotation"}]
       42 GETIMPORT                        R6 K15 [Vector2.new]
       44 LOADK                            R7 K16 [0.5]
       45 LOADK                            R8 K16 [0.5]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K7 ["AnchorPoint"]
       49 GETIMPORT                        R6 K19 [UDim2.fromScale]
       51 LOADK                            R7 K16 [0.5]
       52 LOADK                            R8 K16 [0.5]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K8 ["Position"]
       56 GETTABLEKS                       R6 R1 K20 ["PointSize"]
       58 SETTABLEKS                       R6 R5 K9 ["Size"]
       60 GETTABLEKS                       R6 R1 K10 ["BackgroundColor3"]
       62 SETTABLEKS                       R6 R5 K10 ["BackgroundColor3"]
       64 GETTABLEKS                       R7 R1 K11 ["Rotation"]
       66 JUMPIFNOT                        R7 ; [+3]
       67 GETTABLEKS                       R6 R1 K11 ["Rotation"]
       69 JUMP                             ; [+1]
       70 LOADN                            R6 0
       71 SETTABLEKS                       R6 R5 K11 ["Rotation"]
       73 DUPTABLE                         R6 K23 [{"Corner", "Stroke"}]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R7 R8 K5 ["createElement"]
       77 LOADK                            R8 K24 ["UICorner"]
       78 DUPTABLE                         R9 K26 [{"CornerRadius"}]
       79 GETTABLEKS                       R10 R1 K25 ["CornerRadius"]
       81 SETTABLEKS                       R10 R9 K25 ["CornerRadius"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K21 ["Corner"]
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R7 R8 K5 ["createElement"]
       89 LOADK                            R8 K27 ["UIStroke"]
       90 DUPTABLE                         R9 K31 [{"Color", "Thickness", "LineJoinMode"}]
       91 GETTABLEKS                       R10 R1 K32 ["StrokeColor"]
       93 SETTABLEKS                       R10 R9 K28 ["Color"]
       95 GETTABLEKS                       R10 R1 K33 ["StrokeWidth"]
       97 SETTABLEKS                       R10 R9 K29 ["Thickness"]
       99 GETTABLEKS                       R10 R1 K30 ["LineJoinMode"]
      101 SETTABLEKS                       R10 R9 K30 ["LineJoinMode"]
      103 CALL                             R7 2 1
      104 SETTABLEKS                       R7 R6 K22 ["Stroke"]
      106 CALL                             R3 3 -1
      107 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Dash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R4 R5 K10 ["Stylizer"]
       34 GETTABLEKS                       R5 R2 K11 ["Util"]
       36 GETTABLEKS                       R6 R5 K12 ["StyleModifier"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R10 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R10 K14 ["Resources"]
       44 GETTABLEKS                       R8 R9 K15 ["MakeTheme"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K16 [PROTO_0]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 RETURN                           R8 1
