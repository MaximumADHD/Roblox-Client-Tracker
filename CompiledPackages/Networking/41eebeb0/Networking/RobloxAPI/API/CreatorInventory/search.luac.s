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
        0 NEWTABLE                         R5 0 0
        2 JUMPIFEQKNIL                     R0 ; [+20]
        4 LENGTH                           R6 R0
        5 LOADN                            R7 0
        6 JUMPIFNOTLT                      R7 R6 ; [+16]
        8 LOADK                            R8 K0 ["assetTypes=%*"]
        9 GETIMPORT                        R10 K3 [table.concat]
       11 MOVE                             R11 R0
       12 LOADK                            R12 K4 [","]
       13 CALL                             R10 2 1
       14 NAMECALL                         R8 R8 K5 ["format"]
       16 CALL                             R8 2 1
       17 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K7 [table.insert]
       22 CALL                             R6 2 0
       23 JUMPIFNOT                        R1 ; [+7]
       24 FASTCALL2K                       TABLE_INSERT R5 K8 ; [+5]
       26 MOVE                             R7 R5
       27 LOADK                            R8 K8 ["includeFolders=true"]
       28 GETIMPORT                        R6 K7 [table.insert]
       30 CALL                             R6 2 0
       31 JUMPIFEQKNIL                     R2 ; [+12]
       33 LOADK                            R8 K9 ["sources=%*"]
       34 MOVE                             R10 R2
       35 NAMECALL                         R8 R8 K5 ["format"]
       37 CALL                             R8 2 1
       38 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K7 [table.insert]
       43 CALL                             R6 2 0
       44 LOADK                            R8 K10 ["%*=%*"]
       45 MOVE                             R10 R3
       46 MOVE                             R11 R4
       47 NAMECALL                         R8 R8 K5 ["format"]
       49 CALL                             R8 3 1
       50 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       52 MOVE                             R7 R5
       53 GETIMPORT                        R6 K7 [table.insert]
       55 CALL                             R6 2 0
       56 GETIMPORT                        R6 K3 [table.concat]
       58 MOVE                             R7 R5
       59 LOADK                            R8 K11 [";"]
       60 CALL                             R6 2 -1
       61 RETURN                           R6 -1

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
       72 MOVE                             R12 R7
       73 GETTABLEKS                       R13 R2 K19 ["Id"]
       75 CALL                             R8 5 1
       76 GETUPVAL                         R10 1
       77 CALL                             R10 0 1
       78 JUMPIFNOT                        R10 ; [+6]
       79 GETUPVAL                         R9 2
       80 MOVE                             R11 R0
       81 NAMECALL                         R9 R9 K20 ["UrlEncode"]
       83 CALL                             R9 2 1
       84 JUMP                             ; [+1]
       85 MOVE                             R9 R0
       86 GETUPVAL                         R10 3
       87 GETTABLEKS                       R10 R10 K21 ["composeUrl"]
       89 GETUPVAL                         R11 3
       90 GETTABLEKS                       R11 R11 K22 ["APIS_URL"]
       92 LOADK                            R12 K23 ["creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=%*&maxPageSize=%*&pageToken=%*"]
       93 MOVE                             R14 R9
       94 MOVE                             R15 R8
       95 MOVE                             R16 R3
       96 MOVE                             R17 R4
       97 NAMECALL                         R12 R12 K4 ["format"]
       99 CALL                             R12 5 1
      100 CALL                             R10 2 1
      101 DUPTABLE                         R11 K26 [{"getUrl", "makeRequest"}]
      102 NEWCLOSURE                       R12 P0
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R12 R11 K24 ["getUrl"]
      106 NEWCLOSURE                       R12 P1
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R12 R11 K25 ["makeRequest"]
      111 RETURN                           R11 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Networking"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Flags"]
       17 GETTABLEKS                       R3 R3 K11 ["CreatorInventory"]
       19 GETTABLEKS                       R3 R3 K12 ["getFFlagCreatorInventoryEncodeSearchQuery"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 DUPCLOSURE                       R4 K14 [PROTO_1]
       24 DUPCLOSURE                       R5 K15 [PROTO_5]
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 RETURN                           R5 1
