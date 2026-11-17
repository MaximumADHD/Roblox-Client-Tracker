PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R2 K2 [table.find]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["Emissive"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADB                            R1 1
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{[1] = "Emissive"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K3 ["isEmissiveFromAttributes"]
        6 RETURN                           R0 1
