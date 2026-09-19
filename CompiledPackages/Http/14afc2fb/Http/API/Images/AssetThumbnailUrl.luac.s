PROTO_0:
        0 ORK                              R1 R1 K0 [100]
        1 ORK                              R2 R2 K0 [100]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K2 [tonumber]
        6 CALL                             R5 1 1
        7 LOADN                            R6 -1
        8 JUMPIFLT                         R6 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       14 LOADK                            R5 K3 ["Expected assetId to be a valid number"]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K7 [type]
       22 CALL                             R5 1 1
       23 JUMPIFEQKS                       R5 K8 ["number"] ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       29 LOADK                            R5 K9 ["Expected width to be a number"]
       30 GETIMPORT                        R3 K5 [assert]
       32 CALL                             R3 2 0
       33 FASTCALL1                        TYPE R2 ; [+3]
       34 MOVE                             R6 R2
       35 GETIMPORT                        R5 K7 [type]
       37 CALL                             R5 1 1
       38 JUMPIFEQKS                       R5 K8 ["number"] ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       44 LOADK                            R5 K10 ["Expected height to be a number"]
       45 GETIMPORT                        R3 K5 [assert]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K11 ["makeQueryString"]
       51 DUPTABLE                         R4 K15 [{"assetId", "width", "height"}]
       52 SETTABLEKS                       R0 R4 K12 ["assetId"]
       54 SETTABLEKS                       R1 R4 K13 ["width"]
       56 SETTABLEKS                       R2 R4 K14 ["height"]
       58 CALL                             R3 1 1
       59 GETIMPORT                        R4 K18 [string.format]
       61 LOADK                            R5 K19 ["%sasset-thumbnail/image?%s"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K20 ["ASSET_GAME_URL"]
       65 MOVE                             R7 R3
       66 CALL                             R4 3 -1
       67 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["BaseUrl"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K6 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
