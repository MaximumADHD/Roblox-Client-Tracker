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
        2 JUMPIFNOT                        R0 ; [+12]
        3 LOADK                            R7 K0 ["assetTypes=%*"]
        4 MOVE                             R9 R0
        5 NAMECALL                         R7 R7 K1 ["format"]
        7 CALL                             R7 2 1
        8 MOVE                             R6 R7
        9 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [table.insert]
       14 CALL                             R4 2 0
       15 JUMPIFNOT                        R1 ; [+7]
       16 FASTCALL2K                       TABLE_INSERT R3 K5 ; [+5]
       18 MOVE                             R5 R3
       19 LOADK                            R6 K5 ["includeFolders=true"]
       20 GETIMPORT                        R4 K4 [table.insert]
       22 CALL                             R4 2 0
       23 JUMPIFEQKNIL                     R2 ; [+13]
       25 LOADK                            R7 K6 ["sources=%*"]
       26 MOVE                             R9 R2
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K4 [table.insert]
       36 CALL                             R4 2 0
       37 GETIMPORT                        R4 K8 [table.concat]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K9 [";"]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1

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
        9 LOADK                            R10 K3 ["searchQuery must be string, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R13 R0
       12 GETIMPORT                        R12 K1 [type]
       14 CALL                             R12 1 1
       15 NAMECALL                         R10 R10 K4 ["format"]
       17 CALL                             R10 2 1
       18 MOVE                             R9 R10
       19 FASTCALL2                        ASSERT R8 R9 ; [+3]
       21 GETIMPORT                        R7 K6 [assert]
       23 CALL                             R7 2 0
       24 FASTCALL1                        TYPE R2 ; [+3]
       25 MOVE                             R10 R2
       26 GETIMPORT                        R9 K1 [type]
       28 CALL                             R9 1 1
       29 JUMPIFEQKS                       R9 K7 ["table"] ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 LOADK                            R10 K8 ["source must be table, received %*"]
       34 FASTCALL1                        TYPE R2 ; [+3]
       35 MOVE                             R13 R2
       36 GETIMPORT                        R12 K1 [type]
       38 CALL                             R12 1 1
       39 NAMECALL                         R10 R10 K4 ["format"]
       41 CALL                             R10 2 1
       42 MOVE                             R9 R10
       43 FASTCALL2                        ASSERT R8 R9 ; [+3]
       45 GETIMPORT                        R7 K6 [assert]
       47 CALL                             R7 2 0
       48 JUMPIFNOTEQKNIL                  R3 ; [+2]
       50 LOADN                            R3 1
       51 GETTABLEKS                       R8 R2 K9 ["Type"]
       53 JUMPIFNOTEQKS                    R8 K10 ["User"] ; [+3]
       55 LOADK                            R7 K11 ["userids"]
       56 JUMP                             ; [+13]
       57 JUMPIFNOTEQKS                    R8 K12 ["Group"] ; [+3]
       59 LOADK                            R7 K13 ["groupids"]
       60 JUMP                             ; [+9]
       61 JUMPIFNOTEQKS                    R8 K14 ["Universe"] ; [+3]
       63 LOADK                            R7 K15 ["universeids"]
       64 JUMP                             ; [+5]
       65 GETIMPORT                        R9 K17 [error]
       67 LOADK                            R10 K18 ["Invalid sourceType"]
       68 CALL                             R9 1 0
       69 LOADNIL                          R7
       70 GETUPVAL                         R8 0
       71 MOVE                             R9 R1
       72 MOVE                             R10 R5
       73 MOVE                             R11 R6
       74 CALL                             R8 3 1
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K19 ["composeUrl"]
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R10 R10 K20 ["APIS_URL"]
       81 LOADK                            R12 K21 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=%*;%*=%*&maxPageSize=%*&pageToken=%*"]
       82 MOVE                             R14 R0
       83 MOVE                             R15 R8
       84 MOVE                             R16 R7
       85 GETTABLEKS                       R17 R2 K22 ["Id"]
       87 MOVE                             R18 R3
       88 MOVE                             R19 R4
       89 NAMECALL                         R12 R12 K4 ["format"]
       91 CALL                             R12 7 1
       92 MOVE                             R11 R12
       93 CALL                             R9 2 1
       94 DUPTABLE                         R10 K25 [{"getUrl", "makeRequest"}]
       95 NEWCLOSURE                       R11 P0
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R11 R10 K23 ["getUrl"]
       99 NEWCLOSURE                       R11 P1
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R11 R10 K24 ["makeRequest"]
      104 RETURN                           R10 1

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
