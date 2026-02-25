PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [ipairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 JUMPIFEQKS                       R1 K0 [""] ; [+4]
        8 MOVE                             R7 R1
        9 LOADK                            R8 K3 [","]
       10 CONCAT                           R1 R7 R8
       11 MOVE                             R7 R1
       12 MOVE                             R8 R6
       13 CONCAT                           R1 R7 R8
       14 FORGLOOP                         R2 2 [inext] ; [-9]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
