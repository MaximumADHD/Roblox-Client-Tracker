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
       25 GETTABLEKS                       R3 R0 K7 ["asset"]
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K8 ["fromResponse"]
       32 GETTABLEKS                       R4 R0 K7 ["asset"]
       34 MOVE                             R5 R1
       35 LOADK                            R7 K9 ["%*\"asset\" > "]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R0 K7 ["asset"]
       44 GETTABLEKS                       R3 R0 K10 ["sources"]
       46 JUMPIFEQKNIL                     R3 ; [+77]
       48 GETTABLEKS                       R4 R0 K10 ["sources"]
       50 FASTCALL1                        TYPEOF R4 ; [+2]
       51 GETIMPORT                        R3 K1 [typeof]
       53 CALL                             R3 1 1
       54 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       56 LOADK                            R6 K11 ["%*\"sources\" > Expected table, got %*"]
       57 MOVE                             R8 R2
       58 GETTABLEKS                       R10 R0 K10 ["sources"]
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
       74 JUMP                             ; [+49]
       75 GETTABLEKS                       R3 R0 K10 ["sources"]
       77 LOADNIL                          R4
       78 LOADNIL                          R5
       79 FORGPREP                         R3
       80 FASTCALL1                        TYPEOF R6 ; [+3]
       81 MOVE                             R9 R6
       82 GETIMPORT                        R8 K1 [typeof]
       84 CALL                             R8 1 1
       85 JUMPIFEQKS                       R8 K12 ["number"] ; [+20]
       87 LOADK                            R11 K13 ["%*\"sources\" > Expected index of type number, got %* as %*"]
       88 MOVE                             R13 R2
       89 MOVE                             R14 R6
       90 FASTCALL1                        TYPEOF R6 ; [+3]
       91 MOVE                             R16 R6
       92 GETIMPORT                        R15 K1 [typeof]
       94 CALL                             R15 1 1
       95 NAMECALL                         R11 R11 K4 ["format"]
       97 CALL                             R11 4 1
       98 MOVE                             R10 R11
       99 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      101 MOVE                             R9 R1
      102 GETIMPORT                        R8 K6 [table.insert]
      104 CALL                             R8 2 0
      105 JUMP                             ; [+16]
      106 GETTABLEKS                       R8 R0 K10 ["sources"]
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R9 R9 K8 ["fromResponse"]
      111 MOVE                             R10 R7
      112 MOVE                             R11 R1
      113 LOADK                            R13 K14 ["%*\"sources\" > [%*] > "]
      114 MOVE                             R15 R2
      115 MOVE                             R16 R6
      116 NAMECALL                         R13 R13 K4 ["format"]
      118 CALL                             R13 3 1
      119 MOVE                             R12 R13
      120 CALL                             R9 3 1
      121 SETTABLE                         R9 R8 R6
      122 FORGLOOP                         R3 2 ; [-43]
      124 GETTABLEKS                       R3 R0 K15 ["isPackage"]
      126 JUMPIFEQKNIL                     R3 ; [+27]
      128 GETTABLEKS                       R4 R0 K15 ["isPackage"]
      130 FASTCALL1                        TYPEOF R4 ; [+2]
      131 GETIMPORT                        R3 K1 [typeof]
      133 CALL                             R3 1 1
      134 JUMPIFEQKS                       R3 K16 ["boolean"] ; [+19]
      136 LOADK                            R6 K17 ["%*\"isPackage\" > Expected boolean, got %*"]
      137 MOVE                             R8 R2
      138 GETTABLEKS                       R10 R0 K15 ["isPackage"]
      140 FASTCALL1                        TYPEOF R10 ; [+2]
      141 GETIMPORT                        R9 K1 [typeof]
      143 CALL                             R9 1 1
      144 NAMECALL                         R6 R6 K4 ["format"]
      146 CALL                             R6 3 1
      147 MOVE                             R5 R6
      148 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      150 MOVE                             R4 R1
      151 GETIMPORT                        R3 K6 [table.insert]
      153 CALL                             R3 2 0
      154 RETURN                           R0 1

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
