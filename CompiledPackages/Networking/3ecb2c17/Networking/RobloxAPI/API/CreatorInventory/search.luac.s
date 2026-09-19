PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["User"] ; [+3]
        2 LOADK                            R1 K1 ["userids"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["Group"] ; [+3]
        6 LOADK                            R1 K3 ["groupids"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K4 ["Universe"] ; [+3]
       10 LOADK                            R1 K5 ["universeids"]
       11 RETURN                           R1 1
       12 GETIMPORT                        R1 K7 [error]
       14 LOADK                            R2 K8 ["Invalid sourceType"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R0 ; [+11]
        3 LOADK                            R6 K0 ["assetTypes=%*"]
        4 MOVE                             R8 R0
        5 NAMECALL                         R6 R6 K1 ["format"]
        7 CALL                             R6 2 1
        8 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K4 [table.insert]
       13 CALL                             R4 2 0
       14 JUMPIFNOT                        R1 ; [+7]
       15 FASTCALL2K                       TABLE_INSERT R3 K5 ; [+5]
       17 MOVE                             R5 R3
       18 LOADK                            R6 K5 ["includeFolders=true"]
       19 GETIMPORT                        R4 K4 [table.insert]
       21 CALL                             R4 2 0
       22 JUMPIFEQKNIL                     R2 ; [+12]
       24 LOADK                            R6 K6 ["sources=%*"]
       25 MOVE                             R8 R2
       26 NAMECALL                         R6 R6 K1 ["format"]
       28 CALL                             R6 2 1
       29 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K4 [table.insert]
       34 CALL                             R4 2 0
       35 GETIMPORT                        R4 K8 [table.concat]
       37 MOVE                             R5 R3
       38 LOADK                            R6 K9 [";"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["handleRetry"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K2 ["parseJson"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R10 R0
        2 GETIMPORT                        R9 K1 [type]
        4 CALL                             R9 1 1
        5 JUMPIFEQKS                       R9 K2 ["string"] ; [+2]
        7 LOADB                            R8 0 +1
        8 LOADB                            R8 1
        9 LOADK                            R9 K3 ["searchQuery must be string, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R12 R0
       12 GETIMPORT                        R11 K1 [type]
       14 CALL                             R11 1 1
       15 NAMECALL                         R9 R9 K4 ["format"]
       17 CALL                             R9 2 1
       18 FASTCALL2                        ASSERT R8 R9 ; [+3]
       20 GETIMPORT                        R7 K6 [assert]
       22 CALL                             R7 2 0
       23 FASTCALL1                        TYPE R2 ; [+3]
       24 MOVE                             R10 R2
       25 GETIMPORT                        R9 K1 [type]
       27 CALL                             R9 1 1
       28 JUMPIFEQKS                       R9 K7 ["table"] ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 LOADK                            R9 K8 ["source must be table, received %*"]
       33 FASTCALL1                        TYPE R2 ; [+3]
       34 MOVE                             R12 R2
       35 GETIMPORT                        R11 K1 [type]
       37 CALL                             R11 1 1
       38 NAMECALL                         R9 R9 K4 ["format"]
       40 CALL                             R9 2 1
       41 FASTCALL2                        ASSERT R8 R9 ; [+3]
       43 GETIMPORT                        R7 K6 [assert]
       45 CALL                             R7 2 0
       46 JUMPIFNOTEQKNIL                  R3 ; [+2]
       48 LOADN                            R3 1
       49 GETTABLEKS                       R8 R2 K9 ["Type"]
       51 JUMPIFNOTEQKS                    R8 K10 ["User"] ; [+3]
       53 LOADK                            R7 K11 ["userids"]
       54 JUMP                             ; [+13]
       55 JUMPIFNOTEQKS                    R8 K12 ["Group"] ; [+3]
       57 LOADK                            R7 K13 ["groupids"]
       58 JUMP                             ; [+9]
       59 JUMPIFNOTEQKS                    R8 K14 ["Universe"] ; [+3]
       61 LOADK                            R7 K15 ["universeids"]
       62 JUMP                             ; [+5]
       63 GETIMPORT                        R9 K17 [error]
       65 LOADK                            R10 K18 ["Invalid sourceType"]
       66 CALL                             R9 1 0
       67 LOADNIL                          R7
       68 GETUPVAL                         R8 0
       69 MOVE                             R9 R1
       70 MOVE                             R10 R5
       71 MOVE                             R11 R6
       72 CALL                             R8 3 1
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R9 R9 K19 ["composeUrl"]
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R10 R10 K20 ["APIS_URL"]
       79 LOADK                            R11 K21 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=%*;%*=%*&maxPageSize=%*&pageToken=%*"]
       80 MOVE                             R13 R0
       81 MOVE                             R14 R8
       82 MOVE                             R15 R7
       83 GETTABLEKS                       R16 R2 K22 ["Id"]
       85 MOVE                             R17 R3
       86 MOVE                             R18 R4
       87 NAMECALL                         R11 R11 K4 ["format"]
       89 CALL                             R11 7 1
       90 CALL                             R9 2 1
       91 DUPTABLE                         R10 K25 [{"getUrl", "makeRequest"}]
       92 NEWCLOSURE                       R11 P0
       93 CAPTURE                          VAL R9
       94 SETTABLEKS                       R11 R10 K23 ["getUrl"]
       96 NEWCLOSURE                       R11 P1
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R11 R10 K24 ["makeRequest"]
      101 RETURN                           R10 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_5]
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1
