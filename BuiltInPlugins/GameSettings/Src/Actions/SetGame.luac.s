PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+5]
        8 LOADK                            R4 K3 ["DataModel"]
        9 NAMECALL                         R2 R0 K4 ["IsA"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K7 [string.format]
       14 GETIMPORT                        R5 K9 [script]
       16 GETTABLEKS                       R5 R5 K10 ["Name"]
       18 LOADK                            R6 K11 [" requires game to be a DataModel, not %s"]
       19 CONCAT                           R4 R5 R6
       20 FASTCALL1                        TYPEOF R0 ; [+3]
       21 MOVE                             R6 R0
       22 GETIMPORT                        R5 K1 [typeof]
       24 CALL                             R5 1 1
       25 CALL                             R3 2 -1
       26 FASTCALL                         ASSERT ; [+2]
       27 GETIMPORT                        R1 K13 [assert]
       29 CALL                             R1 -1 0
       30 DUPTABLE                         R1 K15 [{"game"}]
       31 SETTABLEKS                       R0 R1 K14 ["game"]
       33 RETURN                           R1 1

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
