PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["KeyframeStyle"]
        6 GETTABLEKS                       R4 R1 K3 ["Selected"]
        8 GETTABLEKS                       R5 R1 K4 ["Named"]
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETTABLEKS                       R7 R2 K5 ["keyframe"]
       13 GETTABLE                         R6 R7 R3
       14 JUMPIF                           R6 ; [+4]
       15 GETTABLEKS                       R6 R2 K5 ["keyframe"]
       17 GETTABLEKS                       R6 R6 K6 ["Default"]
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R7 R6 K7 ["selected"]
       22 JUMPIF                           R7 ; [+1]
       23 MOVE                             R7 R6
       24 GETTABLEKS                       R8 R1 K8 ["Position"]
       26 GETTABLEKS                       R10 R1 K10 ["BorderSizePixel"]
       28 ORK                              R9 R10 K9 [2]
       29 GETTABLEKS                       R11 R1 K12 ["Width"]
       31 ORK                              R10 R11 K11 [10]
       32 GETTABLEKS                       R11 R1 K13 ["ZIndex"]
       34 GETTABLEKS                       R12 R1 K14 ["OnActivated"]
       36 GETTABLEKS                       R13 R1 K15 ["OnRightClick"]
       38 GETTABLEKS                       R14 R1 K16 ["OnInputBegan"]
       40 GETTABLEKS                       R15 R1 K17 ["OnInputEnded"]
       42 GETTABLEKS                       R17 R1 K18 ["Filled"]
       44 JUMPIFNOT                        R17 ; [+3]
       45 GETTABLEKS                       R16 R7 K19 ["backgroundColor"]
       47 JUMPIF                           R16 ; [+2]
       48 GETTABLEKS                       R16 R2 K19 ["backgroundColor"]
       50 GETUPVAL                         R17 0
       51 GETTABLEKS                       R17 R17 K20 ["createElement"]
       53 LOADK                            R18 K21 ["ImageButton"]
       54 NEWTABLE                         R19 16 0
       56 GETIMPORT                        R20 K24 [UDim2.new]
       58 LOADN                            R21 0
       59 MOVE                             R22 R10
       60 LOADN                            R23 0
       61 MOVE                             R24 R10
       62 CALL                             R20 4 1
       63 SETTABLEKS                       R20 R19 K25 ["Size"]
       65 GETIMPORT                        R20 K27 [Vector2.new]
       67 LOADK                            R21 K28 [0.5]
       68 LOADK                            R22 K28 [0.5]
       69 CALL                             R20 2 1
       70 SETTABLEKS                       R20 R19 K29 ["AnchorPoint"]
       72 SETTABLEKS                       R8 R19 K8 ["Position"]
       74 JUMPIFNOT                        R5 ; [+2]
       75 LOADNIL                          R20
       76 JUMP                             ; [+1]
       77 LOADN                            R20 45
       78 SETTABLEKS                       R20 R19 K30 ["Rotation"]
       80 SETTABLEKS                       R11 R19 K13 ["ZIndex"]
       82 LOADN                            R20 1
       83 SETTABLEKS                       R20 R19 K31 ["ImageTransparency"]
       85 LOADN                            R20 0
       86 SETTABLEKS                       R20 R19 K32 ["BackgroundTransparency"]
       88 LOADB                            R20 0
       89 SETTABLEKS                       R20 R19 K33 ["AutoButtonColor"]
       91 SETTABLEKS                       R9 R19 K10 ["BorderSizePixel"]
       93 GETTABLEKS                       R20 R7 K34 ["borderColor"]
       95 SETTABLEKS                       R20 R19 K35 ["BorderColor3"]
       97 SETTABLEKS                       R16 R19 K36 ["BackgroundColor3"]
       99 GETUPVAL                         R20 0
      100 GETTABLEKS                       R20 R20 K37 ["Event"]
      102 GETTABLEKS                       R20 R20 K38 ["Activated"]
      104 SETTABLE                         R12 R19 R20
      105 GETUPVAL                         R20 0
      106 GETTABLEKS                       R20 R20 K37 ["Event"]
      108 GETTABLEKS                       R20 R20 K39 ["MouseButton2Click"]
      110 SETTABLE                         R13 R19 R20
      111 GETUPVAL                         R20 0
      112 GETTABLEKS                       R20 R20 K37 ["Event"]
      114 GETTABLEKS                       R20 R20 K40 ["InputBegan"]
      116 SETTABLE                         R14 R19 R20
      117 GETUPVAL                         R20 0
      118 GETTABLEKS                       R20 R20 K37 ["Event"]
      120 GETTABLEKS                       R20 R20 K41 ["InputEnded"]
      122 SETTABLE                         R15 R19 R20
      123 GETUPVAL                         R21 0
      124 GETTABLEKS                       R21 R21 K42 ["Children"]
      126 GETTABLE                         R20 R1 R21
      127 CALL                             R17 3 -1
      128 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R1 K11 ["PureComponent"]
       27 LOADK                            R7 K12 ["Keyframe"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K15 ["render"]
       35 MOVE                             R6 R4
       36 DUPTABLE                         R7 K17 [{"Stylizer"}]
       37 GETTABLEKS                       R8 R3 K16 ["Stylizer"]
       39 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 RETURN                           R5 1
