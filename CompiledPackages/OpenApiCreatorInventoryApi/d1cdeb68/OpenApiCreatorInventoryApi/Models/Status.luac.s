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
       24 GETTABLEKS                       R3 R0 K7 ["code"]
       26 JUMPIFEQKNIL                     R3 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       31 GETTABLEKS                       R4 R0 K7 ["code"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K9 ["%*\"code\" > "]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R0 K7 ["code"]
       42 GETTABLEKS                       R3 R0 K10 ["message"]
       44 JUMPIFEQKNIL                     R3 ; [+26]
       46 GETTABLEKS                       R4 R0 K10 ["message"]
       48 FASTCALL1                        TYPEOF R4 ; [+2]
       49 GETIMPORT                        R3 K1 [typeof]
       51 CALL                             R3 1 1
       52 JUMPIFEQKS                       R3 K11 ["string"] ; [+18]
       54 LOADK                            R5 K12 ["%*\"message\" > Expected string, got %*"]
       55 MOVE                             R7 R2
       56 GETTABLEKS                       R9 R0 K10 ["message"]
       58 FASTCALL1                        TYPEOF R9 ; [+2]
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 NAMECALL                         R5 R5 K4 ["format"]
       64 CALL                             R5 3 1
       65 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       67 MOVE                             R4 R1
       68 GETIMPORT                        R3 K6 [table.insert]
       70 CALL                             R3 2 0
       71 GETTABLEKS                       R3 R0 K13 ["details"]
       73 JUMPIFEQKNIL                     R3 ; [+74]
       75 GETTABLEKS                       R4 R0 K13 ["details"]
       77 FASTCALL1                        TYPEOF R4 ; [+2]
       78 GETIMPORT                        R3 K1 [typeof]
       80 CALL                             R3 1 1
       81 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       83 LOADK                            R5 K14 ["%*\"details\" > Expected table, got %*"]
       84 MOVE                             R7 R2
       85 GETTABLEKS                       R9 R0 K13 ["details"]
       87 FASTCALL1                        TYPEOF R9 ; [+2]
       88 GETIMPORT                        R8 K1 [typeof]
       90 CALL                             R8 1 1
       91 NAMECALL                         R5 R5 K4 ["format"]
       93 CALL                             R5 3 1
       94 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       96 MOVE                             R4 R1
       97 GETIMPORT                        R3 K6 [table.insert]
       99 CALL                             R3 2 0
      100 RETURN                           R0 1
      101 GETTABLEKS                       R3 R0 K13 ["details"]
      103 LOADNIL                          R4
      104 LOADNIL                          R5
      105 FORGPREP                         R3
      106 FASTCALL1                        TYPEOF R6 ; [+3]
      107 MOVE                             R9 R6
      108 GETIMPORT                        R8 K1 [typeof]
      110 CALL                             R8 1 1
      111 JUMPIFEQKS                       R8 K15 ["number"] ; [+19]
      113 LOADK                            R10 K16 ["%*\"details\" > Expected index of type number, got %* as %*"]
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
      131 GETTABLEKS                       R8 R0 K13 ["details"]
      133 GETUPVAL                         R9 1
      134 GETTABLEKS                       R9 R9 K8 ["fromResponse"]
      136 MOVE                             R10 R7
      137 MOVE                             R11 R1
      138 LOADK                            R12 K17 ["%*\"details\" > [%*] > "]
      139 MOVE                             R14 R2
      140 MOVE                             R15 R6
      141 NAMECALL                         R12 R12 K4 ["format"]
      143 CALL                             R12 3 1
      144 CALL                             R9 3 1
      145 SETTABLE                         R9 R8 R6
      146 FORGLOOP                         R3 2 ; [-41]
      148 RETURN                           R0 1

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
