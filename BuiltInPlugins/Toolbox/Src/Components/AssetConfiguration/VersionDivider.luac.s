PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K8 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K2 ["AnchorPoint"]
        7 SETTABLEKS                       R4 R3 K2 ["AnchorPoint"]
        9 GETTABLEKS                       R4 R0 K3 ["Position"]
       11 SETTABLEKS                       R4 R3 K3 ["Position"]
       13 GETTABLEKS                       R4 R0 K4 ["Size"]
       15 SETTABLEKS                       R4 R3 K4 ["Size"]
       17 GETIMPORT                        R4 K11 [Color3.fromRGB]
       19 LOADN                            R5 151
       20 LOADN                            R6 151
       21 LOADN                            R7 151
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       25 LOADN                            R4 0
       26 SETTABLEKS                       R4 R3 K6 ["BorderSizePixel"]
       28 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       30 ORK                              R4 R5 K12 [0]
       31 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R3 K7 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
