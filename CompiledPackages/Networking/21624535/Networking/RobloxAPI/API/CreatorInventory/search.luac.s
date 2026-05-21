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
       70 GETUPVAL                         R8 0
       71 CALL                             R8 0 1
       72 JUMPIFNOT                        R8 ; [+30]
       73 NEWTABLE                         R8 0 0
       75 JUMPIFNOT                        R1 ; [+12]
       76 LOADK                            R12 K19 ["assetTypes=%*"]
       77 MOVE                             R14 R1
       78 NAMECALL                         R12 R12 K4 ["format"]
       80 CALL                             R12 2 1
       81 MOVE                             R11 R12
       82 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
       84 MOVE                             R10 R8
       85 GETIMPORT                        R9 K21 [table.insert]
       87 CALL                             R9 2 0
       88 JUMPIFNOT                        R5 ; [+7]
       89 FASTCALL2K                       TABLE_INSERT R8 K22 ; [+5]
       91 MOVE                             R10 R8
       92 LOADK                            R11 K22 ["includeFolders=true"]
       93 GETIMPORT                        R9 K21 [table.insert]
       95 CALL                             R9 2 0
       96 GETIMPORT                        R9 K24 [table.concat]
       98 MOVE                             R10 R8
       99 LOADK                            R11 K25 [";"]
      100 CALL                             R9 2 1
      101 MOVE                             R7 R9
      102 JUMP                             ; [+6]
      103 LOADK                            R8 K19 ["assetTypes=%*"]
      104 MOVE                             R10 R1
      105 NAMECALL                         R8 R8 K4 ["format"]
      107 CALL                             R8 2 1
      108 MOVE                             R7 R8
      109 GETUPVAL                         R8 1
      110 GETTABLEKS                       R8 R8 K26 ["composeUrl"]
      112 GETUPVAL                         R9 1
      113 GETTABLEKS                       R9 R9 K27 ["APIS_URL"]
      115 LOADK                            R11 K28 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=%*;%*=%*&maxPageSize=%*&pageToken=%*"]
      116 MOVE                             R13 R0
      117 MOVE                             R14 R7
      118 MOVE                             R15 R6
      119 GETTABLEKS                       R16 R2 K29 ["Id"]
      121 MOVE                             R17 R3
      122 MOVE                             R18 R4
      123 NAMECALL                         R11 R11 K4 ["format"]
      125 CALL                             R11 7 1
      126 MOVE                             R10 R11
      127 CALL                             R8 2 1
      128 DUPTABLE                         R9 K32 [{"getUrl", "makeRequest"}]
      129 NEWCLOSURE                       R10 P0
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R10 R9 K30 ["getUrl"]
      133 NEWCLOSURE                       R10 P1
      134 CAPTURE                          UPVAL U2
      135 CAPTURE                          VAL R8
      136 SETTABLEKS                       R10 R9 K31 ["makeRequest"]
      138 RETURN                           R9 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Networking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAmrSearchSupportsFolders"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_5]
       17 CAPTURE                          VAL R1
       18 RETURN                           R4 1
