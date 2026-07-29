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
       25 GETTABLEKS                       R3 R0 K7 ["code"]
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       32 GETTABLEKS                       R4 R0 K7 ["code"]
       34 MOVE                             R5 R1
       35 LOADK                            R7 K9 ["%*\"code\" > "]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K7 ["code"]
       44 GETTABLEKS                       R3 R0 K10 ["message"]
       46 JUMPIFEQKNIL                     R3 ; [+27]
       48 GETTABLEKS                       R4 R0 K10 ["message"]
       50 FASTCALL1                        TYPEOF R4 ; [+2]
       51 GETIMPORT                        R3 K1 [typeof]
       53 CALL                             R3 1 1
       54 JUMPIFEQKS                       R3 K11 ["string"] ; [+19]
       56 LOADK                            R6 K12 ["%*\"message\" > Expected string, got %*"]
       57 MOVE                             R8 R2
       58 GETTABLEKS                       R10 R0 K10 ["message"]
       60 FASTCALL1                        TYPEOF R10 ; [+2]
       61 GETIMPORT                        R9 K1 [typeof]
       63 CALL                             R9 1 1
       64 NAMECALL                         R6 R6 K4 ["format"]
       66 CALL                             R6 3 1
       67 MOVE                             R5 R6
       68 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       70 MOVE                             R4 R1
       71 GETIMPORT                        R3 K6 [table.insert]
       73 CALL                             R3 2 0
       74 GETTABLEKS                       R3 R0 K13 ["details"]
       76 JUMPIFEQKNIL                     R3 ; [+77]
       78 GETTABLEKS                       R4 R0 K13 ["details"]
       80 FASTCALL1                        TYPEOF R4 ; [+2]
       81 GETIMPORT                        R3 K1 [typeof]
       83 CALL                             R3 1 1
       84 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       86 LOADK                            R6 K14 ["%*\"details\" > Expected table, got %*"]
       87 MOVE                             R8 R2
       88 GETTABLEKS                       R10 R0 K13 ["details"]
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
      104 RETURN                           R0 1
      105 GETTABLEKS                       R3 R0 K13 ["details"]
      107 LOADNIL                          R4
      108 LOADNIL                          R5
      109 FORGPREP                         R3
      110 FASTCALL1                        TYPEOF R6 ; [+3]
      111 MOVE                             R9 R6
      112 GETIMPORT                        R8 K1 [typeof]
      114 CALL                             R8 1 1
      115 JUMPIFEQKS                       R8 K15 ["number"] ; [+20]
      117 LOADK                            R11 K16 ["%*\"details\" > Expected index of type number, got %* as %*"]
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
      136 GETTABLEKS                       R8 R0 K13 ["details"]
      138 GETUPVAL                         R9 1
      139 GETTABLEKS                       R9 R9 K8 ["fromResponse"]
      141 MOVE                             R10 R7
      142 MOVE                             R11 R1
      143 LOADK                            R13 K17 ["%*\"details\" > [%*] > "]
      144 MOVE                             R15 R2
      145 MOVE                             R16 R6
      146 NAMECALL                         R13 R13 K4 ["format"]
      148 CALL                             R13 3 1
      149 MOVE                             R12 R13
      150 CALL                             R9 3 1
      151 SETTABLE                         R9 R8 R6
      152 FORGLOOP                         R3 2 ; [-43]
      154 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["code"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["code"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["code"]
       16 GETTABLEKS                       R2 R1 K5 ["details"]
       18 JUMPIFEQKNIL                     R2 ; [+23]
       20 GETIMPORT                        R2 K2 [table.clone]
       22 GETTABLEKS                       R3 R1 K5 ["details"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K5 ["details"]
       27 GETTABLEKS                       R2 R1 K5 ["details"]
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 GETTABLEKS                       R7 R1 K5 ["details"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 1
       39 SETTABLE                         R8 R7 R5
       40 FORGLOOP                         R2 2 ; [-9]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["ErrorInfo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["StatusCode"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
