PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["calculateCatmullRomTangents"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["positionsSignal"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["positionsSignal"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 DUPTABLE                         R4 K8 [{["ObservePoints"], ["PointCount"] = 3, ["Color3"], ["Thickness"], ["ZIndex"]}]
       17 SETTABLEKS                       R1 R4 K2 ["ObservePoints"]
       19 GETTABLEKS                       R5 R0 K5 ["Color3"]
       21 SETTABLEKS                       R5 R4 K5 ["Color3"]
       23 GETTABLEKS                       R5 R0 K6 ["Thickness"]
       25 SETTABLEKS                       R5 R4 K6 ["Thickness"]
       27 GETTABLEKS                       R5 R0 K7 ["ZIndex"]
       29 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["EnvelopeHandles"]
       21 GETTABLEKS                       R3 R3 K12 ["Util"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R4 R1 K13 ["Graphing"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K15 ["Signals"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K16 ["Curve"]
       41 GETTABLEKS                       R7 R4 K17 ["createElement"]
       43 DUPCLOSURE                       R8 K18 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R6
       49 RETURN                           R8 1
