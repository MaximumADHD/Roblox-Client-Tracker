PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["SetAssetOwnerName requires assetId to be a string, not %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K1 [type]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R2 K8 [assert]
       21 CALL                             R2 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K1 [type]
       26 CALL                             R4 1 1
       27 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 GETIMPORT                        R4 K5 [string.format]
       33 LOADK                            R5 K9 ["SetAssetOwnerName requires username to be a string, not %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R7 R1
       36 GETIMPORT                        R6 K1 [type]
       38 CALL                             R6 1 1
       39 CALL                             R4 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R2 K8 [assert]
       43 CALL                             R2 -1 0
       44 DUPTABLE                         R2 K12 [{"assetId", "username"}]
       45 SETTABLEKS                       R0 R2 K10 ["assetId"]
       47 SETTABLEKS                       R1 R2 K11 ["username"]
       49 RETURN                           R2 1

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
