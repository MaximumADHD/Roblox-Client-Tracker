PROTO_0:
        0 ORK                              R0 R0 K0 [""]
        1 GETTABLEKS                       R2 R1 K1 ["type"]
        3 JUMPIFNOTEQKS                    R2 K2 ["SetSearch"] ; [+18]
        5 GETTABLEKS                       R5 R1 K3 ["text"]
        7 FASTCALL1                        TYPEOF R5 ; [+2]
        8 GETIMPORT                        R4 K5 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFEQKS                       R4 K6 ["string"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL1                        ASSERT R3 ; [+2]
       16 GETIMPORT                        R2 K8 [assert]
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R2 R1 K3 ["text"]
       21 RETURN                           R2 1
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
