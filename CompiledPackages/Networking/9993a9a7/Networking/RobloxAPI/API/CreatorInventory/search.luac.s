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
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+12]
        3 LOADK                            R6 K0 ["assetTypes=%*"]
        4 MOVE                             R8 R0
        5 NAMECALL                         R6 R6 K1 ["format"]
        7 CALL                             R6 2 1
        8 MOVE                             R5 R6
        9 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K4 [table.insert]
       14 CALL                             R3 2 0
       15 JUMPIFNOT                        R1 ; [+7]
       16 FASTCALL2K                       TABLE_INSERT R2 K5 ; [+5]
       18 MOVE                             R4 R2
       19 LOADK                            R5 K5 ["includeFolders=true"]
       20 GETIMPORT                        R3 K4 [table.insert]
       22 CALL                             R3 2 0
       23 GETIMPORT                        R3 K7 [table.concat]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K8 [";"]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

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
        1 MOVE                             R9 R0
        2 GETIMPORT                        R8 K1 [type]
        4 CALL                             R8 1 1
        5 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 LOADK                            R9 K3 ["searchQuery must be string, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R12 R0
       12 GETIMPORT                        R11 K1 [type]
       14 CALL                             R11 1 1
       15 NAMECALL                         R9 R9 K4 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 FASTCALL2                        ASSERT R7 R8 ; [+3]
       21 GETIMPORT                        R6 K6 [assert]
       23 CALL                             R6 2 0
       24 FASTCALL1                        TYPE R2 ; [+3]
       25 MOVE                             R9 R2
       26 GETIMPORT                        R8 K1 [type]
       28 CALL                             R8 1 1
       29 JUMPIFEQKS                       R8 K7 ["table"] ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 LOADK                            R9 K8 ["source must be table, received %*"]
       34 FASTCALL1                        TYPE R2 ; [+3]
       35 MOVE                             R12 R2
       36 GETIMPORT                        R11 K1 [type]
       38 CALL                             R11 1 1
       39 NAMECALL                         R9 R9 K4 ["format"]
       41 CALL                             R9 2 1
       42 MOVE                             R8 R9
       43 FASTCALL2                        ASSERT R7 R8 ; [+3]
       45 GETIMPORT                        R6 K6 [assert]
       47 CALL                             R6 2 0
       48 JUMPIFNOTEQKNIL                  R3 ; [+2]
       50 LOADN                            R3 1
       51 GETTABLEKS                       R7 R2 K9 ["Type"]
       53 JUMPIFNOTEQKS                    R7 K10 ["User"] ; [+3]
       55 LOADK                            R6 K11 ["userids"]
       56 JUMP                             ; [+13]
       57 JUMPIFNOTEQKS                    R7 K12 ["Group"] ; [+3]
       59 LOADK                            R6 K13 ["groupids"]
       60 JUMP                             ; [+9]
       61 JUMPIFNOTEQKS                    R7 K14 ["Universe"] ; [+3]
       63 LOADK                            R6 K15 ["universeids"]
       64 JUMP                             ; [+5]
       65 GETIMPORT                        R8 K17 [error]
       67 LOADK                            R9 K18 ["Invalid sourceType"]
       68 CALL                             R8 1 0
       69 LOADNIL                          R6
       70 NEWTABLE                         R8 0 0
       72 JUMPIFNOT                        R1 ; [+12]
       73 LOADK                            R12 K19 ["assetTypes=%*"]
       74 MOVE                             R14 R1
       75 NAMECALL                         R12 R12 K4 ["format"]
       77 CALL                             R12 2 1
       78 MOVE                             R11 R12
       79 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
       81 MOVE                             R10 R8
       82 GETIMPORT                        R9 K21 [table.insert]
       84 CALL                             R9 2 0
       85 JUMPIFNOT                        R5 ; [+7]
       86 FASTCALL2K                       TABLE_INSERT R8 K22 ; [+5]
       88 MOVE                             R10 R8
       89 LOADK                            R11 K22 ["includeFolders=true"]
       90 GETIMPORT                        R9 K21 [table.insert]
       92 CALL                             R9 2 0
       93 GETIMPORT                        R9 K24 [table.concat]
       95 MOVE                             R10 R8
       96 LOADK                            R11 K25 [";"]
       97 CALL                             R9 2 1
       98 MOVE                             R7 R9
       99 GETUPVAL                         R8 0
      100 GETTABLEKS                       R8 R8 K26 ["composeUrl"]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K27 ["APIS_URL"]
      105 LOADK                            R11 K28 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=%*;%*=%*&maxPageSize=%*&pageToken=%*"]
      106 MOVE                             R13 R0
      107 MOVE                             R14 R7
      108 MOVE                             R15 R6
      109 GETTABLEKS                       R16 R2 K29 ["Id"]
      111 MOVE                             R17 R3
      112 MOVE                             R18 R4
      113 NAMECALL                         R11 R11 K4 ["format"]
      115 CALL                             R11 7 1
      116 MOVE                             R10 R11
      117 CALL                             R8 2 1
      118 DUPTABLE                         R9 K32 [{"getUrl", "makeRequest"}]
      119 NEWCLOSURE                       R10 P0
      120 CAPTURE                          VAL R8
      121 SETTABLEKS                       R10 R9 K30 ["getUrl"]
      123 NEWCLOSURE                       R10 P1
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          VAL R8
      126 SETTABLEKS                       R10 R9 K31 ["makeRequest"]
      128 RETURN                           R9 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_5]
        4 RETURN                           R2 1
