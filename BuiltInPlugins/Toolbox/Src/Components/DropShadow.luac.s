PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["JoinDictionaries"]
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K10 [{"BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "ImageTransparency", "ScaleType", "SliceCenter"}]
       11 LOADN                            R4 1
       12 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       14 LOADN                            R4 0
       15 SETTABLEKS                       R4 R3 K4 ["BorderSizePixel"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K11 ["DROP_SHADOW_IMAGE"]
       20 SETTABLEKS                       R4 R3 K5 ["Image"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K12 ["DROP_SHADOW_COLOR"]
       25 SETTABLEKS                       R4 R3 K6 ["ImageColor3"]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K13 ["DROP_SHADOW_TRANSPARENCY"]
       30 SETTABLEKS                       R4 R3 K7 ["ImageTransparency"]
       32 GETIMPORT                        R4 K16 [Enum.ScaleType.Slice]
       34 SETTABLEKS                       R4 R3 K8 ["ScaleType"]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K17 ["DROP_SHADOW_SLICE_CENTER"]
       39 SETTABLEKS                       R4 R3 K9 ["SliceCenter"]
       41 CALL                             R1 2 1
       42 GETUPVAL                         R2 4
       43 GETTABLEKS                       R2 R2 K18 ["createElement"]
       45 LOADK                            R3 K19 ["ImageLabel"]
       46 MOVE                             R4 R1
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

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
