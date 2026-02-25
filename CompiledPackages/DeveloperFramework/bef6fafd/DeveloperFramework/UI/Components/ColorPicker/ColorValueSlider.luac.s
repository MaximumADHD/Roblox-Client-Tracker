PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"MouseDown"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["MouseDown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["MouseDown"]
        5 JUMPIFNOT                        R2 ; [+20]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R2 R3 ; [+15]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K6 ["props"]
       15 GETTABLEKS                       R2 R3 K7 ["updatePosition"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R6 R1 K8 ["Position"]
       20 GETTABLEKS                       R5 R6 K9 ["X"]
       22 NAMECALL                         R3 R3 K10 ["xToAlpha"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+29]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["state"]
        9 GETTABLEKS                       R2 R3 K5 ["MouseDown"]
       11 JUMPIFNOT                        R2 ; [+22]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K6 [{"MouseDown"}]
       14 LOADB                            R5 0
       15 SETTABLEKS                       R5 R4 K5 ["MouseDown"]
       17 NAMECALL                         R2 R2 K7 ["setState"]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K8 ["props"]
       23 GETTABLEKS                       R2 R3 K9 ["updatePosition"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R6 R1 K10 ["Position"]
       28 GETTABLEKS                       R5 R6 K11 ["X"]
       30 NAMECALL                         R3 R3 K12 ["xToAlpha"]
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 0
       34 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"mouseDown"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["mouseDown"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["_rootRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onMouseDown"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onInputChanged"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onInputEnded"]
       24 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_rootRef"]
        2 GETTABLEKS                       R2 R3 K1 ["current"]
        4 GETTABLEKS                       R7 R2 K2 ["AbsolutePosition"]
        6 GETTABLEKS                       R6 R7 K3 ["X"]
        8 SUB                              R5 R1 R6
        9 GETTABLEKS                       R7 R2 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R6 R7 K3 ["X"]
       13 DIV                              R4 R5 R6
       14 LOADN                            R5 0
       15 LOADN                            R6 1
       16 FASTCALL                         MATH_CLAMP ; [+2]
       17 GETIMPORT                        R3 K7 [math.clamp]
       19 CALL                             R3 3 1
       20 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Style"]
        4 GETTABLEKS                       R2 R3 K2 ["ColorValueSlider"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["createElement"]
        9 LOADK                            R4 K4 ["ImageButton"]
       10 NEWTABLE                         R5 16 0
       12 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       14 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       16 GETTABLEKS                       R6 R2 K6 ["Size"]
       18 SETTABLEKS                       R6 R5 K6 ["Size"]
       20 GETTABLEKS                       R6 R2 K7 ["GradientImage"]
       22 SETTABLEKS                       R6 R5 K8 ["Image"]
       24 GETIMPORT                        R6 K11 [Color3.fromHSV]
       26 GETTABLEKS                       R7 R1 K12 ["Hue"]
       28 GETTABLEKS                       R8 R1 K13 ["Saturation"]
       30 LOADN                            R9 1
       31 CALL                             R6 3 1
       32 SETTABLEKS                       R6 R5 K14 ["ImageColor3"]
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K15 ["AutoButtonColor"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K16 ["Ref"]
       40 GETTABLEKS                       R7 R0 K17 ["_rootRef"]
       42 SETTABLE                         R7 R5 R6
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K18 ["Event"]
       46 GETTABLEKS                       R6 R7 K19 ["MouseButton1Down"]
       48 GETTABLEKS                       R7 R0 K20 ["onMouseDown"]
       50 SETTABLE                         R7 R5 R6
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K18 ["Event"]
       54 GETTABLEKS                       R6 R7 K21 ["InputEnded"]
       56 GETTABLEKS                       R7 R0 K22 ["onInputEnded"]
       58 SETTABLE                         R7 R5 R6
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K18 ["Event"]
       62 GETTABLEKS                       R6 R7 K23 ["InputChanged"]
       64 GETTABLEKS                       R7 R0 K24 ["onInputChanged"]
       66 SETTABLE                         R7 R5 R6
       67 DUPTABLE                         R6 K26 [{"PositionIndicator"}]
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R7 R8 K3 ["createElement"]
       71 LOADK                            R8 K27 ["ImageLabel"]
       72 DUPTABLE                         R9 K31 [{"Size", "BackgroundTransparency", "Position", "AnchorPoint", "Image", "ImageColor3"}]
       73 GETTABLEKS                       R10 R2 K32 ["PositionIndicatorSize"]
       75 SETTABLEKS                       R10 R9 K6 ["Size"]
       77 LOADN                            R10 1
       78 SETTABLEKS                       R10 R9 K28 ["BackgroundTransparency"]
       80 GETIMPORT                        R10 K35 [UDim2.fromScale]
       82 GETTABLEKS                       R11 R1 K36 ["Value"]
       84 LOADN                            R12 0
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K29 ["Position"]
       88 GETTABLEKS                       R10 R2 K37 ["PositionIndicatorAnchor"]
       90 SETTABLEKS                       R10 R9 K30 ["AnchorPoint"]
       92 GETTABLEKS                       R10 R2 K38 ["PositionIndicatorImage"]
       94 SETTABLEKS                       R10 R9 K8 ["Image"]
       96 GETTABLEKS                       R10 R2 K39 ["White"]
       98 SETTABLEKS                       R10 R9 K14 ["ImageColor3"]
      100 CALL                             R7 2 1
      101 SETTABLEKS                       R7 R6 K25 ["PositionIndicator"]
      103 CALL                             R3 3 -1
      104 RETURN                           R3 -1

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
       16 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       18 LOADK                            R4 K9 ["ColorValueSlider"]
       19 NAMECALL                         R2 R2 K10 ["extend"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K11 [PROTO_3]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K12 ["init"]
       26 DUPCLOSURE                       R3 K13 [PROTO_4]
       27 SETTABLEKS                       R3 R2 K14 ["xToAlpha"]
       29 DUPCLOSURE                       R3 K15 [PROTO_5]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R2 K16 ["render"]
       33 RETURN                           R2 1
