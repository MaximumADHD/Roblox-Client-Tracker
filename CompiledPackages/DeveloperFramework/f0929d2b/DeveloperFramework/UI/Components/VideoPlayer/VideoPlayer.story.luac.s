PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["JoinDictionaries"]
        7 DUPTABLE                         R5 K6 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
        8 GETIMPORT                        R6 K9 [UDim2.new]
       10 LOADN                            R7 1
       11 LOADN                            R8 0
       12 LOADN                            R9 0
       13 LOADN                            R10 144
       14 CALL                             R6 4 1
       15 SETTABLEKS                       R6 R5 K3 ["Size"]
       17 LOADN                            R6 1
       18 SETTABLEKS                       R6 R5 K4 ["BackgroundTransparency"]
       20 LOADN                            R6 0
       21 SETTABLEKS                       R6 R5 K5 ["BorderSizePixel"]
       23 MOVE                             R6 R1
       24 CALL                             R4 2 1
       25 DUPTABLE                         R5 K11 [{"Story"}]
       26 SETTABLEKS                       R0 R5 K10 ["Story"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"storyRenderer"}]
        3 DUPCLOSURE                       R3 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R3 R2 K0 ["storyRenderer"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Immutable"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Examples"]
       27 GETTABLEKS                       R4 R4 K11 ["renderStories"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K12 ["stories"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
