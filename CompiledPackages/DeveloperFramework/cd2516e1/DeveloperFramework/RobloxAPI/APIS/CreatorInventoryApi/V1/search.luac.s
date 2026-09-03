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
        9 LOADK                            R8 K3 ["searchQuery must be string, received %*"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R11 R0
       12 GETIMPORT                        R10 K1 [type]
       14 CALL                             R10 1 1
       15 NAMECALL                         R8 R8 K4 ["format"]
       17 CALL                             R8 2 1
       18 MOVE                             R7 R8
       19 FASTCALL2                        ASSERT R6 R7 ; [+3]
       21 GETIMPORT                        R5 K6 [assert]
       23 CALL                             R5 2 0
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R8 R1
       26 GETIMPORT                        R7 K1 [type]
       28 CALL                             R7 1 1
       29 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 LOADK                            R8 K7 ["assetType must be string, received %*"]
       34 FASTCALL1                        TYPE R1 ; [+3]
       35 MOVE                             R11 R1
       36 GETIMPORT                        R10 K1 [type]
       38 CALL                             R10 1 1
       39 NAMECALL                         R8 R8 K4 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R6 R7 ; [+3]
       45 GETIMPORT                        R5 K6 [assert]
       47 CALL                             R5 2 0
       48 FASTCALL1                        TYPE R2 ; [+3]
       49 MOVE                             R8 R2
       50 GETIMPORT                        R7 K1 [type]
       52 CALL                             R7 1 1
       53 JUMPIFEQKS                       R7 K8 ["table"] ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 LOADK                            R8 K9 ["source must be table, received %*"]
       58 FASTCALL1                        TYPE R2 ; [+3]
       59 MOVE                             R11 R2
       60 GETIMPORT                        R10 K1 [type]
       62 CALL                             R10 1 1
       63 NAMECALL                         R8 R8 K4 ["format"]
       65 CALL                             R8 2 1
       66 MOVE                             R7 R8
       67 FASTCALL2                        ASSERT R6 R7 ; [+3]
       69 GETIMPORT                        R5 K6 [assert]
       71 CALL                             R5 2 0
       72 JUMPIFNOTEQKNIL                  R3 ; [+2]
       74 LOADN                            R3 1
       75 GETTABLEKS                       R6 R2 K10 ["Type"]
       77 JUMPIFNOTEQKS                    R6 K11 ["User"] ; [+3]
       79 LOADK                            R5 K12 ["userids"]
       80 JUMP                             ; [+13]
       81 JUMPIFNOTEQKS                    R6 K13 ["Group"] ; [+3]
       83 LOADK                            R5 K14 ["groupids"]
       84 JUMP                             ; [+9]
       85 JUMPIFNOTEQKS                    R6 K15 ["Universe"] ; [+3]
       87 LOADK                            R5 K16 ["universeids"]
       88 JUMP                             ; [+5]
       89 GETIMPORT                        R7 K18 [error]
       91 LOADK                            R8 K19 ["Invalid sourceType"]
       92 CALL                             R7 1 0
       93 LOADNIL                          R5
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R6 R6 K20 ["composeUrl"]
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R7 R7 K21 ["APIS_URL"]
      100 LOADK                            R9 K22 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;%*=%*&maxPageSize=%*&pageToken=%*"]
      101 MOVE                             R11 R0
      102 MOVE                             R12 R1
      103 MOVE                             R13 R5
      104 GETTABLEKS                       R14 R2 K23 ["Id"]
      106 MOVE                             R15 R3
      107 MOVE                             R16 R4
      108 NAMECALL                         R9 R9 K4 ["format"]
      110 CALL                             R9 7 1
      111 MOVE                             R8 R9
      112 CALL                             R6 2 1
      113 DUPTABLE                         R7 K26 [{"getUrl", "makeRequest"}]
      114 NEWCLOSURE                       R8 P0
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R8 R7 K24 ["getUrl"]
      118 NEWCLOSURE                       R8 P1
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          VAL R6
      121 SETTABLEKS                       R8 R7 K25 ["makeRequest"]
      123 RETURN                           R7 1

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
