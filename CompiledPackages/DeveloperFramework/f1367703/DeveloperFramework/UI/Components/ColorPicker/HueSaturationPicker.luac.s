PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"MouseDown"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["MouseDown"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["MouseDown"]
        5 JUMPIFNOT                        R2 ; [+34]
        6 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseMovement]
       10 JUMPIFNOTEQ                      R2 R3 ; [+29]
       12 GETIMPORT                        R3 K8 [Vector2.new]
       14 GETTABLEKS                       R5 R1 K9 ["Position"]
       16 GETTABLEKS                       R4 R5 K10 ["X"]
       18 GETTABLEKS                       R6 R1 K9 ["Position"]
       20 GETTABLEKS                       R5 R6 K11 ["Y"]
       22 CALL                             R3 2 1
       23 GETTABLEKS                       R4 R0 K12 ["AbsolutePosition"]
       25 SUB                              R2 R3 R4
       26 GETTABLEKS                       R3 R0 K13 ["AbsoluteSize"]
       28 DIV                              R2 R2 R3
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K14 ["props"]
       32 GETTABLEKS                       R3 R4 K15 ["OnHueSaturationChanged"]
       34 GETTABLEKS                       R4 R2 K16 ["x"]
       36 GETTABLEKS                       R6 R2 K18 ["y"]
       38 SUBRK                            R5 R17 K6 ["Vector2"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+65]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["state"]
        9 GETTABLEKS                       R2 R3 K5 ["MouseDown"]
       11 JUMPIFNOT                        R2 ; [+58]
       12 GETTABLEKS                       R4 R1 K6 ["Position"]
       14 GETTABLEKS                       R2 R4 K7 ["X"]
       16 GETTABLEKS                       R4 R1 K6 ["Position"]
       18 GETTABLEKS                       R3 R4 K8 ["Y"]
       20 GETIMPORT                        R5 K11 [Vector2.new]
       22 MOVE                             R6 R2
       23 MOVE                             R7 R3
       24 CALL                             R5 2 1
       25 GETTABLEKS                       R6 R0 K12 ["AbsolutePosition"]
       27 SUB                              R4 R5 R6
       28 GETTABLEKS                       R5 R0 K13 ["AbsoluteSize"]
       30 DIV                              R4 R4 R5
       31 GETIMPORT                        R5 K11 [Vector2.new]
       33 GETTABLEKS                       R7 R4 K14 ["x"]
       35 LOADN                            R8 0
       36 LOADN                            R9 1
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R6 K17 [math.clamp]
       40 CALL                             R6 3 1
       41 GETTABLEKS                       R8 R4 K18 ["y"]
       43 LOADN                            R9 0
       44 LOADN                            R10 1
       45 FASTCALL                         MATH_CLAMP ; [+2]
       46 GETIMPORT                        R7 K17 [math.clamp]
       48 CALL                             R7 3 1
       49 CALL                             R5 2 1
       50 MOVE                             R4 R5
       51 GETUPVAL                         R5 0
       52 DUPTABLE                         R7 K19 [{"MouseDown"}]
       53 LOADB                            R8 0
       54 SETTABLEKS                       R8 R7 K5 ["MouseDown"]
       56 NAMECALL                         R5 R5 K20 ["setState"]
       58 CALL                             R5 2 0
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K21 ["props"]
       62 GETTABLEKS                       R5 R6 K22 ["OnHueSaturationChanged"]
       64 GETTABLEKS                       R6 R4 K14 ["x"]
       66 GETTABLEKS                       R8 R4 K18 ["y"]
       68 SUBRK                            R7 R23 K8 ["Y"]
       69 CALL                             R5 2 0
       70 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K1 [{"MouseDown"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["MouseDown"]
        4 NAMECALL                         R1 R0 K2 ["setState"]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["onMouseDown"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onInputChanged"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onInputEnded"]
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Style"]
        4 GETTABLEKS                       R2 R3 K2 ["HueSaturationPicker"]
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
       24 GETTABLEKS                       R6 R2 K9 ["Black"]
       26 SETTABLEKS                       R6 R5 K10 ["BackgroundColor3"]
       28 LOADB                            R6 0
       29 SETTABLEKS                       R6 R5 K11 ["AutoButtonColor"]
       31 GETTABLEKS                       R7 R1 K13 ["Value"]
       33 SUBRK                            R6 R12 K7 ["GradientImage"]
       34 SETTABLEKS                       R6 R5 K14 ["ImageTransparency"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K15 ["Event"]
       39 GETTABLEKS                       R6 R7 K16 ["MouseButton1Down"]
       41 GETTABLEKS                       R7 R0 K17 ["onMouseDown"]
       43 SETTABLE                         R7 R5 R6
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K15 ["Event"]
       47 GETTABLEKS                       R6 R7 K18 ["InputEnded"]
       49 GETTABLEKS                       R7 R0 K19 ["onInputEnded"]
       51 SETTABLE                         R7 R5 R6
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K15 ["Event"]
       55 GETTABLEKS                       R6 R7 K20 ["InputChanged"]
       57 GETTABLEKS                       R7 R0 K21 ["onInputChanged"]
       59 SETTABLE                         R7 R5 R6
       60 DUPTABLE                         R6 K23 [{"PositionIndicator"}]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R7 R8 K3 ["createElement"]
       64 LOADK                            R8 K24 ["ImageLabel"]
       65 DUPTABLE                         R9 K29 [{"Size", "BackgroundTransparency", "Position", "AnchorPoint", "Image", "ImageColor3"}]
       66 GETTABLEKS                       R10 R2 K30 ["PositionIndicatorSize"]
       68 SETTABLEKS                       R10 R9 K6 ["Size"]
       70 LOADN                            R10 1
       71 SETTABLEKS                       R10 R9 K25 ["BackgroundTransparency"]
       73 GETIMPORT                        R10 K33 [UDim2.fromScale]
       75 GETTABLEKS                       R11 R1 K34 ["Hue"]
       77 GETTABLEKS                       R13 R1 K35 ["Saturation"]
       79 SUBRK                            R12 R12 K13 ["Value"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K26 ["Position"]
       83 GETTABLEKS                       R10 R2 K36 ["PositionIndicatorAnchor"]
       85 SETTABLEKS                       R10 R9 K27 ["AnchorPoint"]
       87 GETTABLEKS                       R10 R2 K37 ["PositionIndicatorImage"]
       89 SETTABLEKS                       R10 R9 K8 ["Image"]
       91 GETTABLEKS                       R10 R2 K9 ["Black"]
       93 SETTABLEKS                       R10 R9 K28 ["ImageColor3"]
       95 CALL                             R7 2 1
       96 SETTABLEKS                       R7 R6 K22 ["PositionIndicator"]
       98 CALL                             R3 3 -1
       99 RETURN                           R3 -1

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
       18 LOADK                            R4 K9 ["HueSaturationPicker"]
       19 NAMECALL                         R2 R2 K10 ["extend"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K11 [PROTO_3]
       23 SETTABLEKS                       R3 R2 K12 ["init"]
       25 DUPCLOSURE                       R3 K13 [PROTO_4]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K14 ["render"]
       29 RETURN                           R2 1
