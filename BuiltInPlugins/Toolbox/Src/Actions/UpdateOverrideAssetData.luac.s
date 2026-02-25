PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["UpdateOverrideAssetData resultsArray parameter must be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["boolean"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["UpdateOverrideAssetData fetchedAll parameter must be a boolean"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 DUPTABLE                         R2 K10 [{"resultsArray", "fetchedAll"}]
       31 SETTABLEKS                       R0 R2 K8 ["resultsArray"]
       33 SETTABLEKS                       R1 R2 K9 ["fetchedAll"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 MOVE                             R4 R3
       21 GETIMPORT                        R6 K1 [script]
       23 GETTABLEKS                       R5 R6 K9 ["Name"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
