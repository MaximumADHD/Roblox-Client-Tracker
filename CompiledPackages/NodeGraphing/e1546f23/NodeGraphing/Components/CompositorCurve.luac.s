PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeCurvePoints"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ObserveStart"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["ObserveFinish"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getObserveThickness"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ObserveScale"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
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
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R4 0 1
       23 GETTABLEKS                       R5 R0 K3 ["ObserveScale"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 2
       29 JUMPIFNOT                        R3 ; [+24]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K4 ["createElement"]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K5 ["Curve"]
       36 DUPTABLE                         R5 K12 [{["ZIndex"], ["Color3"], ["PointCount"] = 2, ["ObservePoints"], ["ObserveThickness"]}]
       37 GETTABLEKS                       R6 R0 K6 ["ZIndex"]
       39 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       41 GETTABLEKS                       R6 R0 K7 ["Color3"]
       43 SETTABLEKS                       R6 R5 K7 ["Color3"]
       45 SETTABLEKS                       R1 R5 K10 ["ObservePoints"]
       47 MOVE                             R6 R2
       48 JUMPIF                           R6 ; [+1]
       49 GETUPVAL                         R6 4
       50 SETTABLEKS                       R6 R5 K11 ["ObserveThickness"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1
       54 GETUPVAL                         R4 2
       55 JUMPIFNOT                        R4 ; [+2]
       56 LOADNIL                          R3
       57 JUMP                             ; [+5]
       58 GETUPVAL                         R3 5
       59 GETTABLEKS                       R3 R3 K13 ["useSignalState"]
       61 MOVE                             R4 R1
       62 CALL                             R3 1 1
       63 GETUPVAL                         R5 2
       64 JUMPIFNOT                        R5 ; [+2]
       65 LOADNIL                          R4
       66 JUMP                             ; [+7]
       67 GETUPVAL                         R4 5
       68 GETTABLEKS                       R4 R4 K13 ["useSignalState"]
       70 MOVE                             R5 R2
       71 JUMPIF                           R5 ; [+1]
       72 GETUPVAL                         R5 4
       73 CALL                             R4 1 1
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K4 ["createElement"]
       77 GETUPVAL                         R6 3
       78 GETTABLEKS                       R6 R6 K5 ["Curve"]
       80 DUPTABLE                         R7 K16 [{"ZIndex", "Color3", "Points", "Thickness"}]
       81 GETTABLEKS                       R8 R0 K6 ["ZIndex"]
       83 SETTABLEKS                       R8 R7 K6 ["ZIndex"]
       85 GETTABLEKS                       R8 R0 K7 ["Color3"]
       87 SETTABLEKS                       R8 R7 K7 ["Color3"]
       89 SETTABLEKS                       R3 R7 K14 ["Points"]
       91 SETTABLEKS                       R4 R7 K15 ["Thickness"]
       93 CALL                             R5 2 -1
       94 RETURN                           R5 -1

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
       54 GETTABLEKS                       R8 R6 K16 ["createSignal"]
       56 LOADN                            R9 3
       57 CALL                             R8 1 1
       58 DUPCLOSURE                       R9 K17 [PROTO_2]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 GETTABLEKS                       R10 R5 K18 ["memo"]
       67 MOVE                             R11 R9
       68 CALL                             R10 1 1
       69 MOVE                             R9 R10
       70 RETURN                           R9 1
