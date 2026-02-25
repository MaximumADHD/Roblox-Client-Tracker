PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R7 K4 [script]
       11 GETTABLEKS                       R4 R7 K5 ["Name"]
       13 LOADK                            R5 K6 [" expected groupOwnerId to be a number, not "]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K1 [typeof]
       18 CALL                             R6 1 1
       19 CONCAT                           R3 R4 R6
       20 FASTCALL2                        ASSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K8 [assert]
       24 CALL                             R1 2 0
       25 DUPTABLE                         R1 K10 [{"groupOwnerId"}]
       26 SETTABLEKS                       R0 R1 K9 ["groupOwnerId"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["GameSettingsPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Packages"]
       11 GETTABLEKS                       R4 R5 K7 ["Framework"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K8 ["Util"]
       16 GETTABLEKS                       R1 R2 K9 ["Action"]
       18 MOVE                             R2 R1
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R3 R4 K10 ["Name"]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
