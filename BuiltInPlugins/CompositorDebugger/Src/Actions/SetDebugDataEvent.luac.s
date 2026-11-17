PROTO_0:
        0 DUPTABLE                         R2 K2 [{"event", "connection"}]
        1 MOVE                             R3 R0
        2 JUMPIF                           R3 ; [+1]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K0 ["event"]
        6 MOVE                             R3 R1
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K1 ["connection"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["None"]
       23 GETTABLEKS                       R4 R2 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["Action"]
       27 MOVE                             R5 R4
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K12 ["Name"]
       32 DUPCLOSURE                       R7 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CALL                             R5 2 -1
       35 RETURN                           R5 -1
