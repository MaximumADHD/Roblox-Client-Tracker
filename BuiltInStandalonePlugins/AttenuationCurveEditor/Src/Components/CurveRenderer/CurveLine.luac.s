PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clampLineToRect"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["StartPoint"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["EndPoint"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["PlotRect"]
       12 CALL                             R0 3 1
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K4 ["plotToAbsolutePosition"]
       19 GETTABLEN                        R2 R0 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K3 ["PlotRect"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K5 ["PlotAbsoluteSize"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K4 ["plotToAbsolutePosition"]
       30 GETTABLEN                        R3 R0 2
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K3 ["PlotRect"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K5 ["PlotAbsoluteSize"]
       37 CALL                             R2 3 1
       38 ADD                              R4 R1 R2
       39 DIVK                             R3 R4 K6 [2]
       40 SUB                              R4 R2 R1
       41 GETTABLEKS                       R6 R4 K7 ["Y"]
       43 GETTABLEKS                       R7 R4 K8 ["X"]
       45 FASTCALL2                        MATH_ATAN2 R6 R7 ; [+3]
       47 GETIMPORT                        R5 K11 [math.atan2]
       49 CALL                             R5 2 1
       50 LOADN                            R6 4
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R7 R8 K12 ["IsEndLine"]
       54 JUMPIFNOT                        R7 ; [+1]
       55 LOADN                            R6 2
       56 DUPTABLE                         R7 K16 [{"Position", "Rotation", "Size"}]
       57 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       59 GETTABLEKS                       R9 R3 K8 ["X"]
       61 GETTABLEKS                       R10 R3 K7 ["Y"]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K13 ["Position"]
       66 FASTCALL1                        MATH_DEG R5 ; [+3]
       67 MOVE                             R9 R5
       68 GETIMPORT                        R8 K21 [math.deg]
       70 CALL                             R8 1 1
       71 SETTABLEKS                       R8 R7 K14 ["Rotation"]
       73 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       75 GETTABLEKS                       R9 R4 K22 ["Magnitude"]
       77 MOVE                             R10 R6
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K15 ["Size"]
       81 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWTABLE                         R3 0 5
        6 GETTABLEKS                       R4 R0 K0 ["StartPoint"]
        8 GETTABLEKS                       R5 R0 K1 ["EndPoint"]
       10 GETTABLEKS                       R6 R0 K2 ["PlotRect"]
       12 GETTABLEKS                       R7 R0 K3 ["PlotAbsoluteSize"]
       14 GETTABLEKS                       R8 R0 K4 ["IsEndLine"]
       16 SETLIST                          R3 R4 5 [1]
       18 CALL                             R1 2 1
       19 MOVE                             R2 R1
       20 JUMPIFNOT                        R2 ; [+45]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K5 ["createElement"]
       24 LOADK                            R3 K6 ["Frame"]
       25 NEWTABLE                         R4 8 0
       27 GETIMPORT                        R5 K9 [Vector2.new]
       29 LOADK                            R6 K10 [0.5]
       30 LOADK                            R7 K10 [0.5]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K11 ["AnchorPoint"]
       34 GETTABLEKS                       R5 R1 K12 ["Position"]
       36 SETTABLEKS                       R5 R4 K12 ["Position"]
       38 GETTABLEKS                       R5 R1 K13 ["Rotation"]
       40 SETTABLEKS                       R5 R4 K13 ["Rotation"]
       42 GETTABLEKS                       R5 R1 K14 ["Size"]
       44 SETTABLEKS                       R5 R4 K14 ["Size"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R5 R6 K15 ["Tag"]
       49 GETUPVAL                         R6 3
       50 LOADK                            R7 K16 ["CurveLine"]
       51 GETTABLEKS                       R9 R0 K17 ["StartPointSelected"]
       53 JUMPIFNOT                        R9 ; [+2]
       54 LOADK                            R8 K18 ["SelectedStart"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 GETTABLEKS                       R10 R0 K19 ["EndPointSelected"]
       59 JUMPIFNOT                        R10 ; [+2]
       60 LOADK                            R9 K20 ["SelectedEnd"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 CALL                             R6 3 1
       64 SETTABLE                         R6 R4 R5
       65 CALL                             R2 2 1
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AttenuationCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R6 R1 K7 ["Packages"]
       24 GETTABLEKS                       R5 R6 K10 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R4 K11 ["Styling"]
       29 GETTABLEKS                       R5 R6 K12 ["joinTags"]
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K13 ["PlotRectUtil"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K14 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 RETURN                           R7 1
