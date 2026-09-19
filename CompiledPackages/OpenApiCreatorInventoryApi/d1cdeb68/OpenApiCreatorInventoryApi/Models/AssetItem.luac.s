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
       24 GETTABLEKS                       R3 R0 K7 ["asset"]
       26 JUMPIFEQKNIL                     R3 ; [+15]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       31 GETTABLEKS                       R4 R0 K7 ["asset"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K9 ["%*\"asset\" > "]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["format"]
       38 CALL                             R6 2 1
       39 CALL                             R3 3 1
       40 SETTABLEKS                       R3 R0 K7 ["asset"]
       42 GETTABLEKS                       R3 R0 K10 ["sources"]
       44 JUMPIFEQKNIL                     R3 ; [+74]
       46 GETTABLEKS                       R4 R0 K10 ["sources"]
       48 FASTCALL1                        TYPEOF R4 ; [+2]
       49 GETIMPORT                        R3 K1 [typeof]
       51 CALL                             R3 1 1
       52 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       54 LOADK                            R5 K11 ["%*\"sources\" > Expected table, got %*"]
       55 MOVE                             R7 R2
       56 GETTABLEKS                       R9 R0 K10 ["sources"]
       58 FASTCALL1                        TYPEOF R9 ; [+2]
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 NAMECALL                         R5 R5 K4 ["format"]
       64 CALL                             R5 3 1
       65 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       67 MOVE                             R4 R1
       68 GETIMPORT                        R3 K6 [table.insert]
       70 CALL                             R3 2 0
       71 JUMP                             ; [+47]
       72 GETTABLEKS                       R3 R0 K10 ["sources"]
       74 LOADNIL                          R4
       75 LOADNIL                          R5
       76 FORGPREP                         R3
       77 FASTCALL1                        TYPEOF R6 ; [+3]
       78 MOVE                             R9 R6
       79 GETIMPORT                        R8 K1 [typeof]
       81 CALL                             R8 1 1
       82 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
       84 LOADK                            R10 K13 ["%*\"sources\" > Expected index of type number, got %* as %*"]
       85 MOVE                             R12 R2
       86 MOVE                             R13 R6
       87 FASTCALL1                        TYPEOF R6 ; [+3]
       88 MOVE                             R15 R6
       89 GETIMPORT                        R14 K1 [typeof]
       91 CALL                             R14 1 1
       92 NAMECALL                         R10 R10 K4 ["format"]
       94 CALL                             R10 4 1
       95 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       97 MOVE                             R9 R1
       98 GETIMPORT                        R8 K6 [table.insert]
      100 CALL                             R8 2 0
      101 JUMP                             ; [+15]
      102 GETTABLEKS                       R8 R0 K10 ["sources"]
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R9 R9 K8 ["fromResponse"]
      107 MOVE                             R10 R7
      108 MOVE                             R11 R1
      109 LOADK                            R12 K14 ["%*\"sources\" > [%*] > "]
      110 MOVE                             R14 R2
      111 MOVE                             R15 R6
      112 NAMECALL                         R12 R12 K4 ["format"]
      114 CALL                             R12 3 1
      115 CALL                             R9 3 1
      116 SETTABLE                         R9 R8 R6
      117 FORGLOOP                         R3 2 ; [-41]
      119 GETTABLEKS                       R3 R0 K15 ["isPackage"]
      121 JUMPIFEQKNIL                     R3 ; [+26]
      123 GETTABLEKS                       R4 R0 K15 ["isPackage"]
      125 FASTCALL1                        TYPEOF R4 ; [+2]
      126 GETIMPORT                        R3 K1 [typeof]
      128 CALL                             R3 1 1
      129 JUMPIFEQKS                       R3 K16 ["boolean"] ; [+18]
      131 LOADK                            R5 K17 ["%*\"isPackage\" > Expected boolean, got %*"]
      132 MOVE                             R7 R2
      133 GETTABLEKS                       R9 R0 K15 ["isPackage"]
      135 FASTCALL1                        TYPEOF R9 ; [+2]
      136 GETIMPORT                        R8 K1 [typeof]
      138 CALL                             R8 1 1
      139 NAMECALL                         R5 R5 K4 ["format"]
      141 CALL                             R5 3 1
      142 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      144 MOVE                             R4 R1
      145 GETIMPORT                        R3 K6 [table.insert]
      147 CALL                             R3 2 0
      148 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["asset"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["asset"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["asset"]
       16 GETTABLEKS                       R2 R1 K5 ["sources"]
       18 JUMPIFEQKNIL                     R2 ; [+23]
       20 GETIMPORT                        R2 K2 [table.clone]
       22 GETTABLEKS                       R3 R1 K5 ["sources"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K5 ["sources"]
       27 GETTABLEKS                       R2 R1 K5 ["sources"]
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 GETTABLEKS                       R7 R1 K5 ["sources"]
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
       18 GETTABLEKS                       R4 R4 K9 ["Asset"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["Source"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
