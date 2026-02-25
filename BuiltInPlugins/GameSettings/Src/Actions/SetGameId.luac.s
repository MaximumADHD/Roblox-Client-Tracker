PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R3 K5 [string.format]
       11 GETIMPORT                        R7 K7 [script]
       13 GETTABLEKS                       R5 R7 K8 ["Name"]
       15 LOADK                            R6 K9 [" requires gameId to be a number, not %s"]
       16 CONCAT                           R4 R5 R6
       17 FASTCALL1                        TYPEOF R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K1 [typeof]
       21 CALL                             R5 1 1
       22 CALL                             R3 2 -1
       23 FASTCALL                         ASSERT ; [+2]
       24 GETIMPORT                        R1 K11 [assert]
       26 CALL                             R1 -1 0
       27 DUPTABLE                         R1 K13 [{"gameId"}]
       28 SETTABLEKS                       R0 R1 K12 ["gameId"]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Packages"]
       13 GETTABLEKS                       R4 R5 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R1 R2 K8 ["Action"]
       20 MOVE                             R2 R1
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R3 R4 K9 ["Name"]
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
