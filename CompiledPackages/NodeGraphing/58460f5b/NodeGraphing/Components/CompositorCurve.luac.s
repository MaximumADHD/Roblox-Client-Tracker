PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ObserveStart"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["ObserveFinish"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMPIF                           R2 ; [+3]
       12 NEWTABLE                         R3 0 0
       14 RETURN                           R3 1
       15 GETTABLEKS                       R6 R1 K3 ["X"]
       17 GETTABLEKS                       R7 R2 K3 ["X"]
       19 SUB                              R5 R6 R7
       20 FASTCALL1                        MATH_ABS R5 ; [+2]
       21 GETIMPORT                        R4 K6 [math.abs]
       23 CALL                             R4 1 1
       24 MULK                             R3 R4 K2 [0.5]
       25 GETIMPORT                        R4 K9 [table.freeze]
       27 NEWTABLE                         R5 0 2
       29 DUPTABLE                         R6 K13 [{"Position", "LeftTangent", "RightTangent"}]
       30 SETTABLEKS                       R1 R6 K10 ["Position"]
       32 LOADNIL                          R7
       33 SETTABLEKS                       R7 R6 K11 ["LeftTangent"]
       35 GETIMPORT                        R7 K16 [Vector2.new]
       37 MOVE                             R8 R3
       38 LOADN                            R9 0
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K12 ["RightTangent"]
       42 DUPTABLE                         R7 K13 [{"Position", "LeftTangent", "RightTangent"}]
       43 SETTABLEKS                       R2 R7 K10 ["Position"]
       45 GETIMPORT                        R8 K16 [Vector2.new]
       47 MINUS                            R9 R3
       48 LOADN                            R10 0
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K11 ["LeftTangent"]
       52 LOADNIL                          R8
       53 SETTABLEKS                       R8 R7 K12 ["RightTangent"]
       55 SETLIST                          R5 R6 2 [1]
       57 CALL                             R4 1 1
       58 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 ORK                              R2 R3 K1 [1]
        4 MULK                             R1 R2 K0 [3]
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ObserveScale"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["ObserveScale"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["createComputed"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["ObserveStart"]
       10 GETTABLEKS                       R5 R0 K2 ["ObserveFinish"]
       12 SETLIST                          R3 R4 2 [1]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 NEWTABLE                         R4 0 1
       23 GETTABLEKS                       R5 R0 K3 ["ObserveScale"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 2
       29 JUMPIFNOT                        R3 ; [+27]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K4 ["createElement"]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K5 ["Curve"]
       36 DUPTABLE                         R5 K11 [{"ZIndex", "Color3", "PointCount", "ObservePoints", "ObserveThickness"}]
       37 GETTABLEKS                       R6 R0 K6 ["ZIndex"]
       39 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       41 GETTABLEKS                       R6 R0 K7 ["Color3"]
       43 SETTABLEKS                       R6 R5 K7 ["Color3"]
       45 LOADN                            R6 2
       46 SETTABLEKS                       R6 R5 K8 ["PointCount"]
       48 SETTABLEKS                       R1 R5 K9 ["ObservePoints"]
       50 MOVE                             R6 R2
       51 JUMPIF                           R6 ; [+1]
       52 GETUPVAL                         R6 4
       53 SETTABLEKS                       R6 R5 K10 ["ObserveThickness"]
       55 CALL                             R3 2 -1
       56 RETURN                           R3 -1
       57 GETUPVAL                         R4 2
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADNIL                          R3
       60 JUMP                             ; [+5]
       61 GETUPVAL                         R3 5
       62 GETTABLEKS                       R3 R3 K12 ["useSignalState"]
       64 MOVE                             R4 R1
       65 CALL                             R3 1 1
       66 GETUPVAL                         R5 2
       67 JUMPIFNOT                        R5 ; [+2]
       68 LOADNIL                          R4
       69 JUMP                             ; [+7]
       70 GETUPVAL                         R4 5
       71 GETTABLEKS                       R4 R4 K12 ["useSignalState"]
       73 MOVE                             R5 R2
       74 JUMPIF                           R5 ; [+1]
       75 GETUPVAL                         R5 4
       76 CALL                             R4 1 1
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K4 ["createElement"]
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R6 R6 K5 ["Curve"]
       83 DUPTABLE                         R7 K15 [{"ZIndex", "Color3", "Points", "Thickness"}]
       84 GETTABLEKS                       R8 R0 K6 ["ZIndex"]
       86 SETTABLEKS                       R8 R7 K6 ["ZIndex"]
       88 GETTABLEKS                       R8 R0 K7 ["Color3"]
       90 SETTABLEKS                       R8 R7 K7 ["Color3"]
       92 SETTABLEKS                       R3 R7 K13 ["Points"]
       94 SETTABLEKS                       R4 R7 K14 ["Thickness"]
       96 CALL                             R5 2 -1
       97 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_PerfFixes_7123"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Signals"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["SignalsReact"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R5 K14 ["createSignal"]
       49 LOADN                            R8 3
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K15 [PROTO_4]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R6
       58 GETTABLEKS                       R9 R4 K16 ["memo"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 MOVE                             R8 R9
       63 RETURN                           R8 1
