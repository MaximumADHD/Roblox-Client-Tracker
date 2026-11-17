PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["Instance"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 DUPTABLE                         R1 K6 [{"targetObject"}]
       14 SETTABLEKS                       R0 R1 K5 ["targetObject"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["Framework"]
       13 GETIMPORT                        R2 K6 [require]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["Util"]
       19 GETTABLEKS                       R2 R2 K8 ["Action"]
       21 MOVE                             R3 R2
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K9 ["Name"]
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
