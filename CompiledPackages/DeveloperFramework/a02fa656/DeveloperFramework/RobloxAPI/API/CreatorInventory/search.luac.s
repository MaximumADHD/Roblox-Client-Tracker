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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
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

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R8 R0
        2 GETIMPORT                        R7 K1 [type]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 LOADK                            R7 K3 ["searchQuery must be string, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R10 R0
       12 GETIMPORT                        R9 K1 [type]
       14 CALL                             R9 1 1
       15 NAMECALL                         R7 R7 K4 ["format"]
       17 CALL                             R7 2 1
       18 FASTCALL2                        ASSERT R6 R7 ; [+3]
       20 GETIMPORT                        R5 K6 [assert]
       22 CALL                             R5 2 0
       23 FASTCALL1                        TYPE R1 ; [+3]
       24 MOVE                             R8 R1
       25 GETIMPORT                        R7 K1 [type]
       27 CALL                             R7 1 1
       28 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 LOADK                            R7 K7 ["assetType must be string, received %*"]
       33 FASTCALL1                        TYPE R1 ; [+3]
       34 MOVE                             R10 R1
       35 GETIMPORT                        R9 K1 [type]
       37 CALL                             R9 1 1
       38 NAMECALL                         R7 R7 K4 ["format"]
       40 CALL                             R7 2 1
       41 FASTCALL2                        ASSERT R6 R7 ; [+3]
       43 GETIMPORT                        R5 K6 [assert]
       45 CALL                             R5 2 0
       46 FASTCALL1                        TYPE R2 ; [+3]
       47 MOVE                             R8 R2
       48 GETIMPORT                        R7 K1 [type]
       50 CALL                             R7 1 1
       51 JUMPIFEQKS                       R7 K8 ["table"] ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 LOADK                            R7 K9 ["source must be table, received %*"]
       56 FASTCALL1                        TYPE R2 ; [+3]
       57 MOVE                             R10 R2
       58 GETIMPORT                        R9 K1 [type]
       60 CALL                             R9 1 1
       61 NAMECALL                         R7 R7 K4 ["format"]
       63 CALL                             R7 2 1
       64 FASTCALL2                        ASSERT R6 R7 ; [+3]
       66 GETIMPORT                        R5 K6 [assert]
       68 CALL                             R5 2 0
       69 JUMPIFNOTEQKNIL                  R3 ; [+2]
       71 LOADN                            R3 1
       72 GETTABLEKS                       R6 R2 K10 ["Type"]
       74 JUMPIFNOTEQKS                    R6 K11 ["User"] ; [+3]
       76 LOADK                            R5 K12 ["userids"]
       77 JUMP                             ; [+13]
       78 JUMPIFNOTEQKS                    R6 K13 ["Group"] ; [+3]
       80 LOADK                            R5 K14 ["groupids"]
       81 JUMP                             ; [+9]
       82 JUMPIFNOTEQKS                    R6 K15 ["Universe"] ; [+3]
       84 LOADK                            R5 K16 ["universeids"]
       85 JUMP                             ; [+5]
       86 GETIMPORT                        R7 K18 [error]
       88 LOADK                            R8 K19 ["Invalid sourceType"]
       89 CALL                             R7 1 0
       90 LOADNIL                          R5
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K20 ["composeUrl"]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K21 ["APIS_URL"]
       97 LOADK                            R8 K22 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;%*=%*&maxPageSize=%*&pageToken=%*"]
       98 MOVE                             R10 R0
       99 MOVE                             R11 R1
      100 MOVE                             R12 R5
      101 GETTABLEKS                       R13 R2 K23 ["Id"]
      103 MOVE                             R14 R3
      104 MOVE                             R15 R4
      105 NAMECALL                         R8 R8 K4 ["format"]
      107 CALL                             R8 7 1
      108 CALL                             R6 2 1
      109 DUPTABLE                         R7 K26 [{"getUrl", "makeRequest"}]
      110 NEWCLOSURE                       R8 P0
      111 CAPTURE                          VAL R6
      112 SETTABLEKS                       R8 R7 K24 ["getUrl"]
      114 NEWCLOSURE                       R8 P1
      115 CAPTURE                          UPVAL U1
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R8 R7 K25 ["makeRequest"]
      119 RETURN                           R7 1

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_4]
        3 RETURN                           R1 1
