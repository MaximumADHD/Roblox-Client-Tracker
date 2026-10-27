PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["parseJson"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

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
       27 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETIMPORT                        R5 K4 [string.format]
       33 LOADK                            R6 K8 ["cursor must be string, received %s"]
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
       49 JUMPIFEQKS                       R5 K9 ["number"] ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 GETIMPORT                        R5 K4 [string.format]
       55 LOADK                            R6 K10 ["gameId must be number, received %s"]
       56 FASTCALL1                        TYPE R2 ; [+3]
       57 MOVE                             R8 R2
       58 GETIMPORT                        R7 K1 [type]
       60 CALL                             R7 1 1
       61 CALL                             R5 2 -1
       62 FASTCALL                         ASSERT ; [+2]
       63 GETIMPORT                        R3 K7 [assert]
       65 CALL                             R3 -1 0
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K11 ["composeUrl"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K12 ["LOCALIZATION_TABLES_URL"]
       72 GETIMPORT                        R5 K4 [string.format]
       74 LOADK                            R6 K13 ["v1/localization-table/tables/%s/entries?cursor=%s&gameId=%d"]
       75 MOVE                             R7 R0
       76 MOVE                             R8 R1
       77 MOVE                             R9 R2
       78 CALL                             R5 4 -1
       79 CALL                             R3 -1 1
       80 DUPTABLE                         R4 K16 [{"getUrl", "makeRequest"}]
       81 NEWCLOSURE                       R5 P0
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R5 R4 K14 ["getUrl"]
       85 NEWCLOSURE                       R5 P1
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R5 R4 K15 ["makeRequest"]
       90 RETURN                           R4 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
