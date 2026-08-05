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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["observeCurvePoints"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["ObserveStart"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["ObserveFinish"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K3 ["createComputed"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CALL                             R0 1 -1
       23 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 ORK                              R2 R3 K1 [1]
        4 MULK                             R1 R2 K0 [3]
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getObserveThickness"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["ObserveScale"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["ObserveScale"]
       14 JUMPIF                           R0 ; [+2]
       15 LOADNIL                          R0
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K1 ["ObserveScale"]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K2 ["createComputed"]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          VAL R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 NEWTABLE                         R3 0 2
       13 GETTABLEKS                       R4 R0 K1 ["ObserveStart"]
       15 GETTABLEKS                       R5 R0 K2 ["ObserveFinish"]
       17 SETLIST                          R3 R4 2 [1]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 NEWTABLE                         R4 0 1
       30 GETTABLEKS                       R5 R0 K3 ["ObserveScale"]
       32 SETLIST                          R4 R5 1 [1]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 7
       36 JUMPIFNOT                        R3 ; [+24]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K4 ["createElement"]
       40 GETUPVAL                         R4 8
       41 GETTABLEKS                       R4 R4 K5 ["Curve"]
       43 DUPTABLE                         R5 K12 [{["ZIndex"], ["Color3"], ["PointCount"] = 2, ["ObservePoints"], ["ObserveThickness"]}]
       44 GETTABLEKS                       R6 R0 K6 ["ZIndex"]
       46 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       48 GETTABLEKS                       R6 R0 K7 ["Color3"]
       50 SETTABLEKS                       R6 R5 K7 ["Color3"]
       52 SETTABLEKS                       R1 R5 K10 ["ObservePoints"]
       54 MOVE                             R6 R2
       55 JUMPIF                           R6 ; [+1]
       56 GETUPVAL                         R6 9
       57 SETTABLEKS                       R6 R5 K11 ["ObserveThickness"]
       59 CALL                             R3 2 -1
       60 RETURN                           R3 -1
       61 GETUPVAL                         R4 7
       62 JUMPIFNOT                        R4 ; [+2]
       63 LOADNIL                          R3
       64 JUMP                             ; [+5]
       65 GETUPVAL                         R3 10
       66 GETTABLEKS                       R3 R3 K13 ["useSignalState"]
       68 MOVE                             R4 R1
       69 CALL                             R3 1 1
       70 GETUPVAL                         R5 7
       71 JUMPIFNOT                        R5 ; [+2]
       72 LOADNIL                          R4
       73 JUMP                             ; [+7]
       74 GETUPVAL                         R4 10
       75 GETTABLEKS                       R4 R4 K13 ["useSignalState"]
       77 MOVE                             R5 R2
       78 JUMPIF                           R5 ; [+1]
       79 GETUPVAL                         R5 9
       80 CALL                             R4 1 1
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R5 R5 K4 ["createElement"]
       84 GETUPVAL                         R6 8
       85 GETTABLEKS                       R6 R6 K5 ["Curve"]
       87 DUPTABLE                         R7 K16 [{"ZIndex", "Color3", "Points", "Thickness"}]
       88 GETTABLEKS                       R8 R0 K6 ["ZIndex"]
       90 SETTABLEKS                       R8 R7 K6 ["ZIndex"]
       92 GETTABLEKS                       R8 R0 K7 ["Color3"]
       94 SETTABLEKS                       R8 R7 K7 ["Color3"]
       96 SETTABLEKS                       R3 R7 K14 ["Points"]
       98 SETTABLEKS                       R4 R7 K15 ["Thickness"]
      100 CALL                             R5 2 -1
      101 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["BezierCurveUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUI_PerfFixes_7123"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["Signals"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Parent"]
       51 GETTABLEKS                       R8 R8 K15 ["SignalsReact"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Util"]
       58 GETTABLEKS                       R9 R9 K16 ["Vector2Utils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K8 ["Flags"]
       65 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUIImplementNoodleDragging"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Flags"]
       72 GETTABLEKS                       R11 R11 K18 ["getFFlagAnimGraphUI_RunTimeDebug"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R6 K19 ["createSignal"]
       77 LOADN                            R12 3
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K22 [table.freeze]
       81 NEWTABLE                         R13 0 0
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K23 [PROTO_4]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R7
       96 GETTABLEKS                       R14 R5 K24 ["memo"]
       98 MOVE                             R15 R13
       99 CALL                             R14 1 1
      100 MOVE                             R13 R14
      101 RETURN                           R13 1
