PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected assetId to be a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["makeQueryString"]
       18 DUPTABLE                         R2 K8 [{"assetId"}]
       19 SETTABLEKS                       R0 R2 K7 ["assetId"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K10 [string.format]
       24 LOADK                            R3 K11 ["%sstudio/plugins/info?%s"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K12 ["BASE_URL"]
       28 MOVE                             R5 R1
       29 CALL                             R2 3 -1
       30 RETURN                           R2 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["BaseUrl"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K6 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
