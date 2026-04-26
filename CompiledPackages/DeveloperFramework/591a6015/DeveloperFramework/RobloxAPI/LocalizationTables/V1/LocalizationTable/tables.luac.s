PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["patch"]
        6 CALL                             R0 4 1
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["parseJson"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 GETIMPORT                        R5 K4 [string.format]
       11 LOADK                            R6 K5 ["tableId must be string, received %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R8 R0
       14 GETIMPORT                        R7 K1 [type]
       16 CALL                             R7 1 1
       17 CALL                             R5 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R3 K7 [assert]
       21 CALL                             R3 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K1 [type]
       26 CALL                             R5 1 1
       27 JUMPIFEQKS                       R5 K8 ["number"] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETIMPORT                        R5 K4 [string.format]
       33 LOADK                            R6 K9 ["gameId must be number, received %s"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R8 R1
       36 GETIMPORT                        R7 K1 [type]
       38 CALL                             R7 1 1
       39 CALL                             R5 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R3 K7 [assert]
       43 CALL                             R3 -1 0
       44 FASTCALL1                        TYPE R2 ; [+3]
       45 MOVE                             R6 R2
       46 GETIMPORT                        R5 K1 [type]
       48 CALL                             R5 1 1
       49 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 GETIMPORT                        R5 K4 [string.format]
       55 LOADK                            R6 K10 ["patch must be string, received %s"]
       56 FASTCALL1                        TYPE R2 ; [+3]
       57 MOVE                             R8 R2
       58 GETIMPORT                        R7 K1 [type]
       60 CALL                             R7 1 1
       61 CALL                             R5 2 -1
       62 FASTCALL                         ASSERT ; [+2]
       63 GETIMPORT                        R3 K7 [assert]
       65 CALL                             R3 -1 0
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R3 R4 K11 ["composeUrl"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K12 ["LOCALIZATION_TABLES_URL"]
       72 GETIMPORT                        R5 K4 [string.format]
       74 LOADK                            R6 K13 ["v1/localization-table/tables/%s?gameId=%d"]
       75 MOVE                             R7 R0
       76 MOVE                             R8 R1
       77 CALL                             R5 3 -1
       78 CALL                             R3 -1 1
       79 NEWTABLE                         R4 1 0
       81 LOADK                            R5 K14 ["application/json"]
       82 SETTABLEKS                       R5 R4 K15 ["Content-Type"]
       84 DUPTABLE                         R5 K18 [{"getUrl", "makeRequest"}]
       85 NEWCLOSURE                       R6 P0
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R6 R5 K16 ["getUrl"]
       89 NEWCLOSURE                       R6 P1
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R6 R5 K17 ["makeRequest"]
       96 RETURN                           R5 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
