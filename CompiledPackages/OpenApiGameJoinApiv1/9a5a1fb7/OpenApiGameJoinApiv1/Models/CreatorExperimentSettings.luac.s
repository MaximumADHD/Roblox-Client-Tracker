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
       24 GETTABLEKS                       R3 R0 K7 ["variantName"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["variantName"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"variantName\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["variantName"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R4 R0 K10 ["customScoringConfigurationId"]
       55 FASTCALL1                        TYPEOF R4 ; [+2]
       56 GETIMPORT                        R3 K1 [typeof]
       58 CALL                             R3 1 1
       59 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       61 LOADK                            R5 K11 ["%*\"customScoringConfigurationId\" > Expected string, got %*"]
       62 MOVE                             R7 R2
       63 GETTABLEKS                       R9 R0 K10 ["customScoringConfigurationId"]
       65 FASTCALL1                        TYPEOF R9 ; [+2]
       66 GETIMPORT                        R8 K1 [typeof]
       68 CALL                             R8 1 1
       69 NAMECALL                         R5 R5 K4 ["format"]
       71 CALL                             R5 3 1
       72 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       74 MOVE                             R4 R1
       75 GETIMPORT                        R3 K6 [table.insert]
       77 CALL                             R3 2 0
       78 GETTABLEKS                       R4 R0 K12 ["gameInstanceIsolationTag"]
       80 FASTCALL1                        TYPEOF R4 ; [+2]
       81 GETIMPORT                        R3 K1 [typeof]
       83 CALL                             R3 1 1
       84 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
       86 LOADK                            R5 K14 ["%*\"gameInstanceIsolationTag\" > Expected number, got %*"]
       87 MOVE                             R7 R2
       88 GETTABLEKS                       R9 R0 K12 ["gameInstanceIsolationTag"]
       90 FASTCALL1                        TYPEOF R9 ; [+2]
       91 GETIMPORT                        R8 K1 [typeof]
       93 CALL                             R8 1 1
       94 NAMECALL                         R5 R5 K4 ["format"]
       96 CALL                             R5 3 1
       97 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       99 MOVE                             R4 R1
      100 GETIMPORT                        R3 K6 [table.insert]
      102 CALL                             R3 2 0
      103 GETTABLEKS                       R4 R0 K15 ["algorithmId"]
      105 FASTCALL1                        TYPEOF R4 ; [+2]
      106 GETIMPORT                        R3 K1 [typeof]
      108 CALL                             R3 1 1
      109 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
      111 LOADK                            R5 K16 ["%*\"algorithmId\" > Expected number, got %*"]
      112 MOVE                             R7 R2
      113 GETTABLEKS                       R9 R0 K15 ["algorithmId"]
      115 FASTCALL1                        TYPEOF R9 ; [+2]
      116 GETIMPORT                        R8 K1 [typeof]
      118 CALL                             R8 1 1
      119 NAMECALL                         R5 R5 K4 ["format"]
      121 CALL                             R5 3 1
      122 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      124 MOVE                             R4 R1
      125 GETIMPORT                        R3 K6 [table.insert]
      127 CALL                             R3 2 0
      128 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
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
