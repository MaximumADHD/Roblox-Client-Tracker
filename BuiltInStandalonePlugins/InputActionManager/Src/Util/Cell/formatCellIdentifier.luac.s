PROTO_0:
        0 LOADK                            R5 K0 ["%*|%*|%*|%*|%*"]
        1 MOVE                             R7 R0
        2 ORK                              R8 R1 K1 [""]
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 MOVE                             R11 R4
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 6 1
        9 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
