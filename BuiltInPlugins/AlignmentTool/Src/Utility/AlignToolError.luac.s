PROTO_0:
        0 LOADK                            R5 K0 ["ErrorMessages"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R3 R0 K1 ["getText"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{[1] = "InvalidActiveObject"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K3 ["getErrorText"]
        5 RETURN                           R0 1
