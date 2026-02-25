PROTO_0:
        0 LOADK                            R2 K0 ["networkErrorAction must be a string, received %s"]
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [type]
        5 CALL                             R5 1 1
        6 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETIMPORT                        R5 K5 [string.format]
       12 MOVE                             R6 R2
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K2 [type]
       17 CALL                             R7 1 1
       18 CALL                             R5 2 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R3 K7 [assert]
       22 CALL                             R3 -1 0
       23 LOADK                            R2 K8 ["response must be a string, or table, received %s"]
       24 LOADB                            R4 1
       25 FASTCALL1                        TYPE R0 ; [+3]
       26 MOVE                             R6 R0
       27 GETIMPORT                        R5 K2 [type]
       29 CALL                             R5 1 1
       30 JUMPIFEQKS                       R5 K3 ["string"] ; [+10]
       32 FASTCALL1                        TYPE R0 ; [+3]
       33 MOVE                             R6 R0
       34 GETIMPORT                        R5 K2 [type]
       36 CALL                             R5 1 1
       37 JUMPIFEQKS                       R5 K9 ["table"] ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 GETIMPORT                        R5 K5 [string.format]
       43 MOVE                             R6 R2
       44 FASTCALL1                        TYPE R0 ; [+3]
       45 MOVE                             R8 R0
       46 GETIMPORT                        R7 K2 [type]
       48 CALL                             R7 1 1
       49 CALL                             R5 2 -1
       50 FASTCALL                         ASSERT ; [+2]
       51 GETIMPORT                        R3 K7 [assert]
       53 CALL                             R3 -1 0
       54 MOVE                             R3 R0
       55 FASTCALL1                        TYPEOF R0 ; [+3]
       56 MOVE                             R5 R0
       57 GETIMPORT                        R4 K11 [typeof]
       59 CALL                             R4 1 1
       60 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+5]
       62 DUPTABLE                         R4 K13 [{"responseBody"}]
       63 SETTABLEKS                       R0 R4 K12 ["responseBody"]
       65 MOVE                             R3 R4
       66 DUPTABLE                         R4 K16 [{"response", "networkErrorAction"}]
       67 SETTABLEKS                       R3 R4 K14 ["response"]
       69 SETTABLEKS                       R1 R4 K15 ["networkErrorAction"]
       71 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["Action"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R3 R4 K8 ["Name"]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
