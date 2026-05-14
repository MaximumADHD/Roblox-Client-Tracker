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
       55 GETTABLEKS                       R3 R0 K10 ["status"]
       57 JUMPIFEQKNIL                     R3 ; [+16]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
       62 GETTABLEKS                       R4 R0 K10 ["status"]
       64 MOVE                             R5 R1
       65 LOADK                            R7 K12 ["%*\"status\" > "]
       66 MOVE                             R9 R2
       67 NAMECALL                         R7 R7 K4 ["format"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 CALL                             R3 3 1
       72 SETTABLEKS                       R3 R0 K10 ["status"]
       74 GETTABLEKS                       R3 R0 K13 ["materials"]
       76 JUMPIFEQKNIL                     R3 ; [+77]
       78 GETTABLEKS                       R4 R0 K13 ["materials"]
       80 FASTCALL1                        TYPEOF R4 ; [+2]
       81 GETIMPORT                        R3 K1 [typeof]
       83 CALL                             R3 1 1
       84 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       86 LOADK                            R6 K14 ["%*\"materials\" > Expected table, got %*"]
       87 MOVE                             R8 R2
       88 GETTABLEKS                       R10 R0 K13 ["materials"]
       90 FASTCALL1                        TYPEOF R10 ; [+2]
       91 GETIMPORT                        R9 K1 [typeof]
       93 CALL                             R9 1 1
       94 NAMECALL                         R6 R6 K4 ["format"]
       96 CALL                             R6 3 1
       97 MOVE                             R5 R6
       98 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      100 MOVE                             R4 R1
      101 GETIMPORT                        R3 K6 [table.insert]
      103 CALL                             R3 2 0
      104 JUMP                             ; [+49]
      105 GETTABLEKS                       R3 R0 K13 ["materials"]
      107 LOADNIL                          R4
      108 LOADNIL                          R5
      109 FORGPREP                         R3
      110 FASTCALL1                        TYPEOF R6 ; [+3]
      111 MOVE                             R9 R6
      112 GETIMPORT                        R8 K1 [typeof]
      114 CALL                             R8 1 1
      115 JUMPIFEQKS                       R8 K15 ["number"] ; [+20]
      117 LOADK                            R11 K16 ["%*\"materials\" > Expected index of type number, got %* as %*"]
      118 MOVE                             R13 R2
      119 MOVE                             R14 R6
      120 FASTCALL1                        TYPEOF R6 ; [+3]
      121 MOVE                             R16 R6
      122 GETIMPORT                        R15 K1 [typeof]
      124 CALL                             R15 1 1
      125 NAMECALL                         R11 R11 K4 ["format"]
      127 CALL                             R11 4 1
      128 MOVE                             R10 R11
      129 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      131 MOVE                             R9 R1
      132 GETIMPORT                        R8 K6 [table.insert]
      134 CALL                             R8 2 0
      135 JUMP                             ; [+16]
      136 GETTABLEKS                       R8 R0 K13 ["materials"]
      138 GETUPVAL                         R9 1
      139 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
      141 MOVE                             R10 R7
      142 MOVE                             R11 R1
      143 LOADK                            R13 K17 ["%*\"materials\" > [%*] > "]
      144 MOVE                             R15 R2
      145 MOVE                             R16 R6
      146 NAMECALL                         R13 R13 K4 ["format"]
      148 CALL                             R13 3 1
      149 MOVE                             R12 R13
      150 CALL                             R9 3 1
      151 SETTABLE                         R9 R8 R6
      152 FORGLOOP                         R3 2 ; [-43]
      154 GETTABLEKS                       R3 R0 K18 ["error"]
      156 JUMPIFEQKNIL                     R3 ; [+16]
      158 GETUPVAL                         R3 2
      159 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
      161 GETTABLEKS                       R4 R0 K18 ["error"]
      163 MOVE                             R5 R1
      164 LOADK                            R7 K19 ["%*\"error\" > "]
      165 MOVE                             R9 R2
      166 NAMECALL                         R7 R7 K4 ["format"]
      168 CALL                             R7 2 1
      169 MOVE                             R6 R7
      170 CALL                             R3 3 1
      171 SETTABLEKS                       R3 R0 K18 ["error"]
      173 RETURN                           R0 1

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
       20 GETTABLEKS                       R5 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R5 K10 ["GeneratedMaterial"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R6 K11 ["OperationStatus"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Models"]
       36 GETTABLEKS                       R7 R7 K12 ["TextToImagePublicError"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K13 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R8 K14 [PROTO_1]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 GETIMPORT                        R9 K17 [table.freeze]
       49 DUPTABLE                         R10 K20 [{"fromResponse", "toRequest"}]
       50 SETTABLEKS                       R7 R10 K18 ["fromResponse"]
       52 SETTABLEKS                       R8 R10 K19 ["toRequest"]
       54 CALL                             R9 1 1
       55 RETURN                           R9 1
