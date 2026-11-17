PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["JoinDictionaries"]
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K12 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Image"], ["ImageColor3"], ["ImageTransparency"], ["ScaleType"], ["SliceCenter"]}]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K13 ["DROP_SHADOW_IMAGE"]
       14 SETTABLEKS                       R4 R3 K7 ["Image"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K14 ["DROP_SHADOW_COLOR"]
       19 SETTABLEKS                       R4 R3 K8 ["ImageColor3"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K15 ["DROP_SHADOW_TRANSPARENCY"]
       24 SETTABLEKS                       R4 R3 K9 ["ImageTransparency"]
       26 GETIMPORT                        R4 K18 [Enum.ScaleType.Slice]
       28 SETTABLEKS                       R4 R3 K10 ["ScaleType"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K19 ["DROP_SHADOW_SLICE_CENTER"]
       33 SETTABLEKS                       R4 R3 K11 ["SliceCenter"]
       35 CALL                             R1 2 1
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K20 ["createElement"]
       39 LOADK                            R3 K21 ["ImageLabel"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K9 ["Util"]
       36 GETTABLEKS                       R6 R6 K11 ["Images"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R7 K9 ["Util"]
       45 GETTABLEKS                       R7 R7 K12 ["Immutable"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K13 [PROTO_0]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 RETURN                           R7 1
