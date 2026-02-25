PROTO_0:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["number"] ; [+10]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [type]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K3 ["nil"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 GETIMPORT                        R3 K6 [string.format]
       19 LOADK                            R4 K7 ["SetEditSecretId requires a number or nil, not %s"]
       20 FASTCALL1                        TYPE R0 ; [+3]
       21 MOVE                             R6 R0
       22 GETIMPORT                        R5 K1 [type]
       24 CALL                             R5 1 1
       25 CALL                             R3 2 -1
       26 FASTCALL                         ASSERT ; [+2]
       27 GETIMPORT                        R1 K9 [assert]
       29 CALL                             R1 -1 0
       30 DUPTABLE                         R1 K11 [{"editSecretId"}]
       31 SETTABLEKS                       R0 R1 K10 ["editSecretId"]
       33 RETURN                           R1 1

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
