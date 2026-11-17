PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R4 K4 [script]
       11 GETTABLEKS                       R4 R4 K5 ["Name"]
       13 LOADK                            R5 K6 [" requires creatorId to be a number, not "]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K1 [typeof]
       18 CALL                             R6 1 1
       19 CONCAT                           R3 R4 R6
       20 FASTCALL2                        ASSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K8 [assert]
       24 CALL                             R1 2 0
       25 DUPTABLE                         R1 K10 [{"creatorId"}]
       26 SETTABLEKS                       R0 R1 K9 ["creatorId"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R1 R1 K8 ["Action"]
       20 MOVE                             R2 R1
       21 GETIMPORT                        R3 K1 [script]
       23 GETTABLEKS                       R3 R3 K9 ["Name"]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
