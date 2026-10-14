PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K7 ["imageUrls"]
       26 JUMPIFEQKNIL                     R3 ; [+83]
       28 GETTABLEKS                       R4 R0 K7 ["imageUrls"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"imageUrls\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["imageUrls"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+56]
       54 GETTABLEKS                       R3 R0 K7 ["imageUrls"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"imageUrls\" > Expected index of type number, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [+24]
       84 FASTCALL1                        TYPEOF R7 ; [+3]
       85 MOVE                             R9 R7
       86 GETIMPORT                        R8 K1 [typeof]
       88 CALL                             R8 1 1
       89 JUMPIFEQKS                       R8 K11 ["string"] ; [+18]
       91 LOADK                            R10 K12 ["%*\"imageUrls\" > [%*] > Expected string, got %*"]
       92 MOVE                             R12 R2
       93 MOVE                             R13 R6
       94 FASTCALL1                        TYPEOF R7 ; [+3]
       95 MOVE                             R15 R7
       96 GETIMPORT                        R14 K1 [typeof]
       98 CALL                             R14 1 1
       99 NAMECALL                         R10 R10 K4 ["format"]
      101 CALL                             R10 4 1
      102 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      104 MOVE                             R9 R1
      105 GETIMPORT                        R8 K6 [table.insert]
      107 CALL                             R8 2 0
      108 FORGLOOP                         R3 2 ; [-50]
      110 GETTABLEKS                       R3 R0 K13 ["camera"]
      112 JUMPIFEQKNIL                     R3 ; [+15]
      114 GETUPVAL                         R3 0
      115 GETTABLEKS                       R3 R3 K14 ["fromResponse"]
      117 GETTABLEKS                       R4 R0 K13 ["camera"]
      119 MOVE                             R5 R1
      120 LOADK                            R6 K15 ["%*\"camera\" > "]
      121 MOVE                             R8 R2
      122 NAMECALL                         R6 R6 K4 ["format"]
      124 CALL                             R6 2 1
      125 CALL                             R3 3 1
      126 SETTABLEKS                       R3 R0 K13 ["camera"]
      128 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["camera"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["camera"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["camera"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCubeGenerationGateway"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["TexturePreviewCamera"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
