PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K2 ["JoinDictionaries"]
        7 DUPTABLE                         R5 K6 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
        8 GETIMPORT                        R6 K9 [UDim2.new]
       10 LOADN                            R7 1
       11 LOADN                            R8 0
       12 LOADN                            R9 0
       13 LOADN                            R10 242
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Immutable"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Examples"]
       27 GETTABLEKS                       R4 R5 K11 ["renderStories"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K12 ["stories"]
       38 CALL                             R4 1 1
       39 MOVE                             R5 R3
       40 MOVE                             R6 R4
       41 DUPTABLE                         R7 K14 [{"storyRenderer"}]
       42 DUPCLOSURE                       R8 K15 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R8 R7 K13 ["storyRenderer"]
       47 CALL                             R5 2 -1
       48 RETURN                           R5 -1
