PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["text"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 MOVE                             R4 R3
        8 DUPTABLE                         R5 K4 [{"node", "context", "extraContext"}]
        9 SETTABLEKS                       R0 R5 K1 ["node"]
       11 SETTABLEKS                       R1 R5 K2 ["context"]
       13 SETTABLEKS                       R2 R5 K3 ["extraContext"]
       15 CALL                             R4 1 -1
       16 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K12 [{"ActionButton", "Step"}]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K6 ["Src"]
       26 GETTABLEKS                       R5 R5 K13 ["Components"]
       28 GETTABLEKS                       R5 R5 K10 ["ActionButton"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K10 ["ActionButton"]
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Components"]
       39 GETTABLEKS                       R5 R5 K11 ["Step"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K11 ["Step"]
       44 DUPCLOSURE                       R4 K14 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 RETURN                           R4 1
