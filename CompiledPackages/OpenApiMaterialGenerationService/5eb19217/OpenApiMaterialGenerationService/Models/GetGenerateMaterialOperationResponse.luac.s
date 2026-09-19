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
       53 GETTABLEKS                       R3 R0 K10 ["status"]
       55 JUMPIFEQKNIL                     R3 ; [+15]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
       60 GETTABLEKS                       R4 R0 K10 ["status"]
       62 MOVE                             R5 R1
       63 LOADK                            R6 K12 ["%*\"status\" > "]
       64 MOVE                             R8 R2
       65 NAMECALL                         R6 R6 K4 ["format"]
       67 CALL                             R6 2 1
       68 CALL                             R3 3 1
       69 SETTABLEKS                       R3 R0 K10 ["status"]
       71 GETTABLEKS                       R3 R0 K13 ["materials"]
       73 JUMPIFEQKNIL                     R3 ; [+74]
       75 GETTABLEKS                       R4 R0 K13 ["materials"]
       77 FASTCALL1                        TYPEOF R4 ; [+2]
       78 GETIMPORT                        R3 K1 [typeof]
       80 CALL                             R3 1 1
       81 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       83 LOADK                            R5 K14 ["%*\"materials\" > Expected table, got %*"]
       84 MOVE                             R7 R2
       85 GETTABLEKS                       R9 R0 K13 ["materials"]
       87 FASTCALL1                        TYPEOF R9 ; [+2]
       88 GETIMPORT                        R8 K1 [typeof]
       90 CALL                             R8 1 1
       91 NAMECALL                         R5 R5 K4 ["format"]
       93 CALL                             R5 3 1
       94 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       96 MOVE                             R4 R1
       97 GETIMPORT                        R3 K6 [table.insert]
       99 CALL                             R3 2 0
      100 JUMP                             ; [+47]
      101 GETTABLEKS                       R3 R0 K13 ["materials"]
      103 LOADNIL                          R4
      104 LOADNIL                          R5
      105 FORGPREP                         R3
      106 FASTCALL1                        TYPEOF R6 ; [+3]
      107 MOVE                             R9 R6
      108 GETIMPORT                        R8 K1 [typeof]
      110 CALL                             R8 1 1
      111 JUMPIFEQKS                       R8 K15 ["number"] ; [+19]
      113 LOADK                            R10 K16 ["%*\"materials\" > Expected index of type number, got %* as %*"]
      114 MOVE                             R12 R2
      115 MOVE                             R13 R6
      116 FASTCALL1                        TYPEOF R6 ; [+3]
      117 MOVE                             R15 R6
      118 GETIMPORT                        R14 K1 [typeof]
      120 CALL                             R14 1 1
      121 NAMECALL                         R10 R10 K4 ["format"]
      123 CALL                             R10 4 1
      124 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      126 MOVE                             R9 R1
      127 GETIMPORT                        R8 K6 [table.insert]
      129 CALL                             R8 2 0
      130 JUMP                             ; [+15]
      131 GETTABLEKS                       R8 R0 K13 ["materials"]
      133 GETUPVAL                         R9 1
      134 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
      136 MOVE                             R10 R7
      137 MOVE                             R11 R1
      138 LOADK                            R12 K17 ["%*\"materials\" > [%*] > "]
      139 MOVE                             R14 R2
      140 MOVE                             R15 R6
      141 NAMECALL                         R12 R12 K4 ["format"]
      143 CALL                             R12 3 1
      144 CALL                             R9 3 1
      145 SETTABLE                         R9 R8 R6
      146 FORGLOOP                         R3 2 ; [-41]
      148 GETTABLEKS                       R3 R0 K18 ["error"]
      150 JUMPIFEQKNIL                     R3 ; [+15]
      152 GETUPVAL                         R3 2
      153 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
      155 GETTABLEKS                       R4 R0 K18 ["error"]
      157 MOVE                             R5 R1
      158 LOADK                            R6 K19 ["%*\"error\" > "]
      159 MOVE                             R8 R2
      160 NAMECALL                         R6 R6 K4 ["format"]
      162 CALL                             R6 2 1
      163 CALL                             R3 3 1
      164 SETTABLEKS                       R3 R0 K18 ["error"]
      166 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["status"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["status"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["status"]
       16 GETTABLEKS                       R2 R1 K5 ["materials"]
       18 JUMPIFEQKNIL                     R2 ; [+23]
       20 GETIMPORT                        R2 K2 [table.clone]
       22 GETTABLEKS                       R3 R1 K5 ["materials"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K5 ["materials"]
       27 GETTABLEKS                       R2 R1 K5 ["materials"]
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 GETTABLEKS                       R7 R1 K5 ["materials"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 1
       39 SETTABLE                         R8 R7 R5
       40 FORGLOOP                         R2 2 ; [-9]
       42 GETTABLEKS                       R2 R1 K6 ["error"]
       44 JUMPIFEQKNIL                     R2 ; [+9]
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       49 GETTABLEKS                       R3 R1 K6 ["error"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R1 K6 ["error"]
       54 RETURN                           R1 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["GeneratedMaterial"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["OperationStatus"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["TextToImagePublicError"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
