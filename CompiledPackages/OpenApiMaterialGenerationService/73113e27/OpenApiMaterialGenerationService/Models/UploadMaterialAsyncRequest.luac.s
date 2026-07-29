PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R3 R0 K7 ["operationId"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["operationId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"operationId\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["operationId"]
       41 FASTCALL1                        TYPEOF R10 ; [+2]
       42 GETIMPORT                        R9 K1 [typeof]
       44 CALL                             R9 1 1
       45 NAMECALL                         R6 R6 K4 ["format"]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K6 [table.insert]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R0 K10 ["sampleIds"]
       57 JUMPIFEQKNIL                     R3 ; [+86]
       59 GETTABLEKS                       R4 R0 K10 ["sampleIds"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       67 LOADK                            R6 K11 ["%*\"sampleIds\" > Expected table, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["sampleIds"]
       71 FASTCALL1                        TYPEOF R10 ; [+2]
       72 GETIMPORT                        R9 K1 [typeof]
       74 CALL                             R9 1 1
       75 NAMECALL                         R6 R6 K4 ["format"]
       77 CALL                             R6 3 1
       78 MOVE                             R5 R6
       79 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       81 MOVE                             R4 R1
       82 GETIMPORT                        R3 K6 [table.insert]
       84 CALL                             R3 2 0
       85 RETURN                           R0 1
       86 GETTABLEKS                       R3 R0 K10 ["sampleIds"]
       88 LOADNIL                          R4
       89 LOADNIL                          R5
       90 FORGPREP                         R3
       91 FASTCALL1                        TYPEOF R6 ; [+3]
       92 MOVE                             R9 R6
       93 GETIMPORT                        R8 K1 [typeof]
       95 CALL                             R8 1 1
       96 JUMPIFEQKS                       R8 K12 ["number"] ; [+20]
       98 LOADK                            R11 K13 ["%*\"sampleIds\" > Expected index of type number, got %* as %*"]
       99 MOVE                             R13 R2
      100 MOVE                             R14 R6
      101 FASTCALL1                        TYPEOF R6 ; [+3]
      102 MOVE                             R16 R6
      103 GETIMPORT                        R15 K1 [typeof]
      105 CALL                             R15 1 1
      106 NAMECALL                         R11 R11 K4 ["format"]
      108 CALL                             R11 4 1
      109 MOVE                             R10 R11
      110 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      112 MOVE                             R9 R1
      113 GETIMPORT                        R8 K6 [table.insert]
      115 CALL                             R8 2 0
      116 JUMP                             ; [+25]
      117 FASTCALL1                        TYPEOF R7 ; [+3]
      118 MOVE                             R9 R7
      119 GETIMPORT                        R8 K1 [typeof]
      121 CALL                             R8 1 1
      122 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
      124 LOADK                            R11 K14 ["%*\"sampleIds\" > [%*] > Expected number, got %*"]
      125 MOVE                             R13 R2
      126 MOVE                             R14 R6
      127 FASTCALL1                        TYPEOF R7 ; [+3]
      128 MOVE                             R16 R7
      129 GETIMPORT                        R15 K1 [typeof]
      131 CALL                             R15 1 1
      132 NAMECALL                         R11 R11 K4 ["format"]
      134 CALL                             R11 4 1
      135 MOVE                             R10 R11
      136 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      138 MOVE                             R9 R1
      139 GETIMPORT                        R8 K6 [table.insert]
      141 CALL                             R8 2 0
      142 FORGLOOP                         R3 2 ; [-52]
      144 RETURN                           R0 1

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
