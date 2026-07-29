PROTO_0:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Src"]
        5 GETTABLEKS                       R3 R3 K3 ["MainPlugin"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K4 ["start"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
