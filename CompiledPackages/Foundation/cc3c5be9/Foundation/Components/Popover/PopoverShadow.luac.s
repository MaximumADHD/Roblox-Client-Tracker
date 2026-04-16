PROTO_0:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 ADD                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K9 [{"AnchorPoint", "Image", "Size", "Position", "ZIndex", "slice", "imageStyle", "testId"}]
        7 GETTABLEKS                       R5 R0 K1 ["AnchorPoint"]
        9 SETTABLEKS                       R5 R4 K1 ["AnchorPoint"]
       11 GETUPVAL                         R5 3
       12 SETTABLEKS                       R5 R4 K2 ["Image"]
       14 GETTABLEKS                       R5 R0 K10 ["contentSize"]
       16 DUPCLOSURE                       R7 K11 [PROTO_0]
       17 CAPTURE                          UPVAL U4
       18 NAMECALL                         R5 R5 K12 ["map"]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K3 ["Size"]
       23 GETTABLEKS                       R5 R0 K13 ["position"]
       25 SETTABLEKS                       R5 R4 K4 ["Position"]
       27 GETTABLEKS                       R5 R0 K5 ["ZIndex"]
       29 SETTABLEKS                       R5 R4 K5 ["ZIndex"]
       31 DUPTABLE                         R5 K15 [{"center"}]
       32 GETIMPORT                        R6 K18 [Rect.new]
       34 GETUPVAL                         R7 4
       35 GETUPVAL                         R8 4
       36 GETUPVAL                         R10 4
       37 ADDK                             R9 R10 K19 [1]
       38 GETUPVAL                         R11 4
       39 ADDK                             R10 R11 K19 [1]
       40 CALL                             R6 4 1
       41 SETTABLEKS                       R6 R5 K14 ["center"]
       43 SETTABLEKS                       R5 R4 K6 ["slice"]
       45 GETTABLEKS                       R8 R1 K20 ["Color"]
       47 GETTABLEKS                       R7 R8 K21 ["Extended"]
       49 GETTABLEKS                       R6 R7 K22 ["Black"]
       51 GETTABLEKS                       R5 R6 K23 ["Black_20"]
       53 SETTABLEKS                       R5 R4 K7 ["imageStyle"]
       55 GETTABLEKS                       R5 R0 K8 ["testId"]
       57 SETTABLEKS                       R5 R4 K8 ["testId"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Providers"]
       37 GETTABLEKS                       R8 R9 K13 ["Style"]
       39 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R3 K15 ["SHADOW_IMAGE"]
       44 GETTABLEKS                       R8 R3 K16 ["SHADOW_SIZE"]
       46 DUPCLOSURE                       R9 K17 [PROTO_1]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R8
       52 RETURN                           R9 1
