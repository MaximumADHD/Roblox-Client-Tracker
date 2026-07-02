PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ObserveStart"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["ObserveFinish"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R1 ; [+20]
       11 JUMPIFNOT                        R2 ; [+19]
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+14]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K2 ["isValidVector2"]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 NOT                              R3 R4
       21 JUMPIF                           R3 ; [+8]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["isValidVector2"]
       25 MOVE                             R5 R2
       26 CALL                             R4 1 1
       27 NOT                              R3 R4
       28 JUMP                             ; [+1]
       29 LOADB                            R3 0
       30 JUMPIFNOT                        R3 ; [+8]
       31 GETUPVAL                         R4 1
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+2]
       34 GETUPVAL                         R3 3
       35 RETURN                           R3 1
       36 NEWTABLE                         R3 0 0
       38 RETURN                           R3 1
       39 GETTABLEKS                       R6 R1 K4 ["X"]
       41 GETTABLEKS                       R7 R2 K4 ["X"]
       43 SUB                              R5 R6 R7
       44 FASTCALL1                        MATH_ABS R5 ; [+2]
       45 GETIMPORT                        R4 K7 [math.abs]
       47 CALL                             R4 1 1
       48 MULK                             R3 R4 K3 [0.5]
       49 GETIMPORT                        R4 K10 [table.freeze]
       51 NEWTABLE                         R5 0 2
       53 DUPTABLE                         R6 K15 [{["Position"], ["LeftTangent"] = , ["RightTangent"]}]
       54 SETTABLEKS                       R1 R6 K11 ["Position"]
       56 GETIMPORT                        R7 K18 [Vector2.new]
       58 MOVE                             R8 R3
       59 LOADN                            R9 0
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K14 ["RightTangent"]
       63 DUPTABLE                         R7 K19 [{["Position"], ["LeftTangent"], ["RightTangent"] = }]
       64 SETTABLEKS                       R2 R7 K11 ["Position"]
       66 GETIMPORT                        R8 K18 [Vector2.new]
       68 MINUS                            R9 R3
       69 LOADN                            R10 0
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K12 ["LeftTangent"]
       73 SETLIST                          R5 R6 2 [1]
       75 CALL                             R4 1 1
       76 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

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
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NEWTABLE                         R3 0 2
       11 GETTABLEKS                       R4 R0 K1 ["ObserveStart"]
       13 GETTABLEKS                       R5 R0 K2 ["ObserveFinish"]
       15 SETLIST                          R3 R4 2 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 NEWTABLE                         R4 0 1
       26 GETTABLEKS                       R5 R0 K3 ["ObserveScale"]
       28 SETLIST                          R4 R5 1 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 5
       32 JUMPIFNOT                        R3 ; [+24]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K4 ["createElement"]
       36 GETUPVAL                         R4 6
       37 GETTABLEKS                       R4 R4 K5 ["Curve"]
       39 DUPTABLE                         R5 K12 [{["ZIndex"], ["Color3"], ["PointCount"] = 2, ["ObservePoints"], ["ObserveThickness"]}]
       40 GETTABLEKS                       R6 R0 K6 ["ZIndex"]
       42 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       44 GETTABLEKS                       R6 R0 K7 ["Color3"]
       46 SETTABLEKS                       R6 R5 K7 ["Color3"]
       48 SETTABLEKS                       R1 R5 K10 ["ObservePoints"]
       50 MOVE                             R6 R2
       51 JUMPIF                           R6 ; [+1]
       52 GETUPVAL                         R6 7
       53 SETTABLEKS                       R6 R5 K11 ["ObserveThickness"]
       55 CALL                             R3 2 -1
       56 RETURN                           R3 -1
       57 GETUPVAL                         R4 5
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADNIL                          R3
       60 JUMP                             ; [+5]
       61 GETUPVAL                         R3 8
       62 GETTABLEKS                       R3 R3 K13 ["useSignalState"]
       64 MOVE                             R4 R1
       65 CALL                             R3 1 1
       66 GETUPVAL                         R5 5
       67 JUMPIFNOT                        R5 ; [+2]
       68 LOADNIL                          R4
       69 JUMP                             ; [+7]
       70 GETUPVAL                         R4 8
       71 GETTABLEKS                       R4 R4 K13 ["useSignalState"]
       73 MOVE                             R5 R2
       74 JUMPIF                           R5 ; [+1]
       75 GETUPVAL                         R5 7
       76 CALL                             R4 1 1
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K4 ["createElement"]
       80 GETUPVAL                         R6 6
       81 GETTABLEKS                       R6 R6 K5 ["Curve"]
       83 DUPTABLE                         R7 K16 [{"ZIndex", "Color3", "Points", "Thickness"}]
       84 GETTABLEKS                       R8 R0 K6 ["ZIndex"]
       86 SETTABLEKS                       R8 R7 K6 ["ZIndex"]
       88 GETTABLEKS                       R8 R0 K7 ["Color3"]
       90 SETTABLEKS                       R8 R7 K7 ["Color3"]
       92 SETTABLEKS                       R3 R7 K14 ["Points"]
       94 SETTABLEKS                       R4 R7 K15 ["Thickness"]
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
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Util"]
       51 GETTABLEKS                       R8 R8 K15 ["Vector2Utils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Flags"]
       58 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R5 K17 ["createSignal"]
       63 LOADN                            R10 3
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K20 [table.freeze]
       67 NEWTABLE                         R11 0 0
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K21 [PROTO_4]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R6
       80 GETTABLEKS                       R12 R4 K22 ["memo"]
       82 MOVE                             R13 R11
       83 CALL                             R12 1 1
       84 MOVE                             R11 R12
       85 RETURN                           R11 1
