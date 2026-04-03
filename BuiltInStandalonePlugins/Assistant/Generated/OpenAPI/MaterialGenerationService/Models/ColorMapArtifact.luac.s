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
       25 GETTABLEKS                       R3 R0 K7 ["base64"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["base64"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"base64\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["base64"]
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
       55 GETTABLEKS                       R3 R0 K10 ["seed"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["seed"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K11 ["number"] ; [+19]
       67 LOADK                            R6 K12 ["%*\"seed\" > Expected number, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["seed"]
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
       85 GETTABLEKS                       R3 R0 K13 ["finishReason"]
       87 JUMPIFEQKNIL                     R3 ; [+16]
       89 GETUPVAL                         R4 0
       90 GETTABLEKS                       R3 R4 K14 ["fromResponse"]
       92 GETTABLEKS                       R4 R0 K13 ["finishReason"]
       94 MOVE                             R5 R1
       95 LOADK                            R7 K15 ["%*\"finishReason\" > "]
       96 MOVE                             R9 R2
       97 NAMECALL                         R7 R7 K4 ["format"]
       99 CALL                             R7 2 1
      100 MOVE                             R6 R7
      101 CALL                             R3 3 1
      102 SETTABLEKS                       R3 R0 K13 ["finishReason"]
      104 GETTABLEKS                       R3 R0 K16 ["scannedByRobloxModeration"]
      106 JUMPIFEQKNIL                     R3 ; [+27]
      108 GETTABLEKS                       R4 R0 K16 ["scannedByRobloxModeration"]
      110 FASTCALL1                        TYPEOF R4 ; [+2]
      111 GETIMPORT                        R3 K1 [typeof]
      113 CALL                             R3 1 1
      114 JUMPIFEQKS                       R3 K17 ["boolean"] ; [+19]
      116 LOADK                            R6 K18 ["%*\"scannedByRobloxModeration\" > Expected boolean, got %*"]
      117 MOVE                             R8 R2
      118 GETTABLEKS                       R10 R0 K16 ["scannedByRobloxModeration"]
      120 FASTCALL1                        TYPEOF R10 ; [+2]
      121 GETIMPORT                        R9 K1 [typeof]
      123 CALL                             R9 1 1
      124 NAMECALL                         R6 R6 K4 ["format"]
      126 CALL                             R6 3 1
      127 MOVE                             R5 R6
      128 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      130 MOVE                             R4 R1
      131 GETIMPORT                        R3 K6 [table.insert]
      133 CALL                             R3 2 0
      134 GETTABLEKS                       R3 R0 K19 ["mapsScannedByRobloxModeration"]
      136 JUMPIFEQKNIL                     R3 ; [+27]
      138 GETTABLEKS                       R4 R0 K19 ["mapsScannedByRobloxModeration"]
      140 FASTCALL1                        TYPEOF R4 ; [+2]
      141 GETIMPORT                        R3 K1 [typeof]
      143 CALL                             R3 1 1
      144 JUMPIFEQKS                       R3 K17 ["boolean"] ; [+19]
      146 LOADK                            R6 K20 ["%*\"mapsScannedByRobloxModeration\" > Expected boolean, got %*"]
      147 MOVE                             R8 R2
      148 GETTABLEKS                       R10 R0 K19 ["mapsScannedByRobloxModeration"]
      150 FASTCALL1                        TYPEOF R10 ; [+2]
      151 GETIMPORT                        R9 K1 [typeof]
      153 CALL                             R9 1 1
      154 NAMECALL                         R6 R6 K4 ["format"]
      156 CALL                             R6 3 1
      157 MOVE                             R5 R6
      158 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      160 MOVE                             R4 R1
      161 GETIMPORT                        R3 K6 [table.insert]
      163 CALL                             R3 2 0
      164 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["finishReason"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["finishReason"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["finishReason"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R6 K10 ["ColorMapArtifactFinishReason"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 DUPCLOSURE                       R6 K12 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 GETIMPORT                        R7 K15 [table.freeze]
       31 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       32 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       34 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       36 CALL                             R7 1 1
       37 RETURN                           R7 1
