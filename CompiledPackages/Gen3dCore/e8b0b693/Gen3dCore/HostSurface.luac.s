PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["translator"]
        2 JUMPIFNOT                        R4 ; [+15]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R5 R4 K1 ["getText"]
        7 CALL                             R5 3 1
        8 FASTCALL1                        TYPEOF R5 ; [+3]
        9 MOVE                             R7 R5
       10 GETIMPORT                        R6 K3 [typeof]
       12 CALL                             R6 1 1
       13 JUMPIFNOTEQKS                    R6 K4 ["string"] ; [+4]
       15 JUMPIFEQKS                       R5 K5 [""] ; [+2]
       17 RETURN                           R5 1
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Gen3dTypes"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPTABLE                         R2 K8 [{"translate"}]
       12 SETTABLEKS                       R1 R2 K7 ["translate"]
       14 RETURN                           R2 1
