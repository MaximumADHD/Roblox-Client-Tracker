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
       24 GETTABLEKS                       R3 R0 K7 ["operationId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["operationId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"operationId\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["operationId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["sampleIds"]
       55 JUMPIFEQKNIL                     R3 ; [+83]
       57 GETTABLEKS                       R4 R0 K10 ["sampleIds"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       65 LOADK                            R5 K11 ["%*\"sampleIds\" > Expected table, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["sampleIds"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 RETURN                           R0 1
       83 GETTABLEKS                       R3 R0 K10 ["sampleIds"]
       85 LOADNIL                          R4
       86 LOADNIL                          R5
       87 FORGPREP                         R3
       88 FASTCALL1                        TYPEOF R6 ; [+3]
       89 MOVE                             R9 R6
       90 GETIMPORT                        R8 K1 [typeof]
       92 CALL                             R8 1 1
       93 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
       95 LOADK                            R10 K13 ["%*\"sampleIds\" > Expected index of type number, got %* as %*"]
       96 MOVE                             R12 R2
       97 MOVE                             R13 R6
       98 FASTCALL1                        TYPEOF R6 ; [+3]
       99 MOVE                             R15 R6
      100 GETIMPORT                        R14 K1 [typeof]
      102 CALL                             R14 1 1
      103 NAMECALL                         R10 R10 K4 ["format"]
      105 CALL                             R10 4 1
      106 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      108 MOVE                             R9 R1
      109 GETIMPORT                        R8 K6 [table.insert]
      111 CALL                             R8 2 0
      112 JUMP                             ; [+24]
      113 FASTCALL1                        TYPEOF R7 ; [+3]
      114 MOVE                             R9 R7
      115 GETIMPORT                        R8 K1 [typeof]
      117 CALL                             R8 1 1
      118 JUMPIFEQKS                       R8 K12 ["number"] ; [+18]
      120 LOADK                            R10 K14 ["%*\"sampleIds\" > [%*] > Expected number, got %*"]
      121 MOVE                             R12 R2
      122 MOVE                             R13 R6
      123 FASTCALL1                        TYPEOF R7 ; [+3]
      124 MOVE                             R15 R7
      125 GETIMPORT                        R14 K1 [typeof]
      127 CALL                             R14 1 1
      128 NAMECALL                         R10 R10 K4 ["format"]
      130 CALL                             R10 4 1
      131 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      133 MOVE                             R9 R1
      134 GETIMPORT                        R8 K6 [table.insert]
      136 CALL                             R8 2 0
      137 FORGLOOP                         R3 2 ; [-50]
      139 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_1]
       16 GETIMPORT                        R5 K12 [table.freeze]
       18 DUPTABLE                         R6 K15 [{"fromResponse", "toRequest"}]
       19 SETTABLEKS                       R3 R6 K13 ["fromResponse"]
       21 SETTABLEKS                       R4 R6 K14 ["toRequest"]
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
