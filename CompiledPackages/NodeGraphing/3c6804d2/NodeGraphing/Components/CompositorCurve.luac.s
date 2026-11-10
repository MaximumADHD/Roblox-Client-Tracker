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
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K4 ["createElement"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K5 ["Curve"]
       34 DUPTABLE                         R5 K12 [{["ZIndex"], ["Color3"], ["PointCount"] = 2, ["ObservePoints"], ["ObserveThickness"]}]
       35 GETTABLEKS                       R6 R0 K6 ["ZIndex"]
       37 SETTABLEKS                       R6 R5 K6 ["ZIndex"]
       39 GETTABLEKS                       R6 R0 K7 ["Color3"]
       41 SETTABLEKS                       R6 R5 K7 ["Color3"]
       43 SETTABLEKS                       R1 R5 K10 ["ObservePoints"]
       45 MOVE                             R6 R2
       46 JUMPIF                           R6 ; [+1]
       47 GETUPVAL                         R6 3
       48 SETTABLEKS                       R6 R5 K11 ["ObserveThickness"]
       50 CALL                             R3 2 -1
       51 RETURN                           R3 -1

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
       40 GETTABLEKS                       R6 R5 K13 ["createSignal"]
       42 LOADN                            R7 3
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K14 [PROTO_2]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 GETTABLEKS                       R8 R4 K15 ["memo"]
       51 MOVE                             R9 R7
       52 CALL                             R8 1 1
       53 MOVE                             R7 R8
       54 RETURN                           R7 1
