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
       25 GETTABLEKS                       R3 R0 K7 ["items"]
       27 JUMPIFEQKNIL                     R3 ; [+77]
       29 GETTABLEKS                       R4 R0 K7 ["items"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       37 LOADK                            R6 K8 ["%*\"items\" > Expected table, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["items"]
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
       55 JUMP                             ; [+49]
       56 GETTABLEKS                       R3 R0 K7 ["items"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 FASTCALL1                        TYPEOF R6 ; [+3]
       62 MOVE                             R9 R6
       63 GETIMPORT                        R8 K1 [typeof]
       65 CALL                             R8 1 1
       66 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
       68 LOADK                            R11 K10 ["%*\"items\" > Expected index of type number, got %* as %*"]
       69 MOVE                             R13 R2
       70 MOVE                             R14 R6
       71 FASTCALL1                        TYPEOF R6 ; [+3]
       72 MOVE                             R16 R6
       73 GETIMPORT                        R15 K1 [typeof]
       75 CALL                             R15 1 1
       76 NAMECALL                         R11 R11 K4 ["format"]
       78 CALL                             R11 4 1
       79 MOVE                             R10 R11
       80 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       82 MOVE                             R9 R1
       83 GETIMPORT                        R8 K6 [table.insert]
       85 CALL                             R8 2 0
       86 JUMP                             ; [+16]
       87 GETTABLEKS                       R8 R0 K7 ["items"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K11 ["fromResponse"]
       92 MOVE                             R10 R7
       93 MOVE                             R11 R1
       94 LOADK                            R13 K12 ["%*\"items\" > [%*] > "]
       95 MOVE                             R15 R2
       96 MOVE                             R16 R6
       97 NAMECALL                         R13 R13 K4 ["format"]
       99 CALL                             R13 3 1
      100 MOVE                             R12 R13
      101 CALL                             R9 3 1
      102 SETTABLE                         R9 R8 R6
      103 FORGLOOP                         R3 2 ; [-43]
      105 GETTABLEKS                       R3 R0 K13 ["nextPageToken"]
      107 JUMPIFEQKNIL                     R3 ; [+27]
      109 GETTABLEKS                       R4 R0 K13 ["nextPageToken"]
      111 FASTCALL1                        TYPEOF R4 ; [+2]
      112 GETIMPORT                        R3 K1 [typeof]
      114 CALL                             R3 1 1
      115 JUMPIFEQKS                       R3 K14 ["string"] ; [+19]
      117 LOADK                            R6 K15 ["%*\"nextPageToken\" > Expected string, got %*"]
      118 MOVE                             R8 R2
      119 GETTABLEKS                       R10 R0 K13 ["nextPageToken"]
      121 FASTCALL1                        TYPEOF R10 ; [+2]
      122 GETIMPORT                        R9 K1 [typeof]
      124 CALL                             R9 1 1
      125 NAMECALL                         R6 R6 K4 ["format"]
      127 CALL                             R6 3 1
      128 MOVE                             R5 R6
      129 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      131 MOVE                             R4 R1
      132 GETIMPORT                        R3 K6 [table.insert]
      134 CALL                             R3 2 0
      135 GETTABLEKS                       R3 R0 K16 ["inventoryStatus"]
      137 JUMPIFEQKNIL                     R3 ; [+16]
      139 GETUPVAL                         R4 1
      140 GETTABLEKS                       R3 R4 K11 ["fromResponse"]
      142 GETTABLEKS                       R4 R0 K16 ["inventoryStatus"]
      144 MOVE                             R5 R1
      145 LOADK                            R7 K17 ["%*\"inventoryStatus\" > "]
      146 MOVE                             R9 R2
      147 NAMECALL                         R7 R7 K4 ["format"]
      149 CALL                             R7 2 1
      150 MOVE                             R6 R7
      151 CALL                             R3 3 1
      152 SETTABLEKS                       R3 R0 K16 ["inventoryStatus"]
      154 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["items"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["items"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["items"]
       15 GETTABLEKS                       R2 R1 K3 ["items"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["items"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["inventoryStatus"]
       32 JUMPIFEQKNIL                     R2 ; [+9]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K4 ["toRequest"]
       37 GETTABLEKS                       R3 R1 K5 ["inventoryStatus"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K5 ["inventoryStatus"]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorInventoryApi"]
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
       22 GETTABLEKS                       R5 R6 K10 ["CreatorInventoryItem"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R7 K11 ["InventoryStatus"]
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R7 K13 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 GETIMPORT                        R8 K16 [table.freeze]
       40 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       41 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       43 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       45 CALL                             R8 1 1
       46 RETURN                           R8 1
