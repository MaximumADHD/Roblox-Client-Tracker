PROTO_0:
        0 DUPTABLE                         R1 K1 [{"frameBuffer"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K0 ["frameBuffer"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["None"]
       23 GETTABLEKS                       R5 R2 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["Action"]
       27 GETTABLEKS                       R6 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R5 K13 ["CircularBuffer"]
       35 CALL                             R6 1 1
       36 MOVE                             R7 R4
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K14 ["Name"]
       41 DUPCLOSURE                       R9 K15 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CALL                             R7 2 -1
       44 RETURN                           R7 -1
