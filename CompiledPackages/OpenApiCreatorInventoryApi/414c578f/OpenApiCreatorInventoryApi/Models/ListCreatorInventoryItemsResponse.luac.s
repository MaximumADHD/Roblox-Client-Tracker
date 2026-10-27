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
       24 GETTABLEKS                       R3 R0 K7 ["items"]
       26 JUMPIFEQKNIL                     R3 ; [+74]
       28 GETTABLEKS                       R4 R0 K7 ["items"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"items\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["items"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+47]
       54 GETTABLEKS                       R3 R0 K7 ["items"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"items\" > Expected index of type number, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [+15]
       84 GETTABLEKS                       R8 R0 K7 ["items"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       89 MOVE                             R10 R7
       90 MOVE                             R11 R1
       91 LOADK                            R12 K12 ["%*\"items\" > [%*] > "]
       92 MOVE                             R14 R2
       93 MOVE                             R15 R6
       94 NAMECALL                         R12 R12 K4 ["format"]
       96 CALL                             R12 3 1
       97 CALL                             R9 3 1
       98 SETTABLE                         R9 R8 R6
       99 FORGLOOP                         R3 2 ; [-41]
      101 GETTABLEKS                       R3 R0 K13 ["nextPageToken"]
      103 JUMPIFEQKNIL                     R3 ; [+26]
      105 GETTABLEKS                       R4 R0 K13 ["nextPageToken"]
      107 FASTCALL1                        TYPEOF R4 ; [+2]
      108 GETIMPORT                        R3 K1 [typeof]
      110 CALL                             R3 1 1
      111 JUMPIFEQKS                       R3 K14 ["string"] ; [+18]
      113 LOADK                            R5 K15 ["%*\"nextPageToken\" > Expected string, got %*"]
      114 MOVE                             R7 R2
      115 GETTABLEKS                       R9 R0 K13 ["nextPageToken"]
      117 FASTCALL1                        TYPEOF R9 ; [+2]
      118 GETIMPORT                        R8 K1 [typeof]
      120 CALL                             R8 1 1
      121 NAMECALL                         R5 R5 K4 ["format"]
      123 CALL                             R5 3 1
      124 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      126 MOVE                             R4 R1
      127 GETIMPORT                        R3 K6 [table.insert]
      129 CALL                             R3 2 0
      130 GETTABLEKS                       R3 R0 K16 ["inventoryStatus"]
      132 JUMPIFEQKNIL                     R3 ; [+15]
      134 GETUPVAL                         R3 1
      135 GETTABLEKS                       R3 R3 K11 ["fromResponse"]
      137 GETTABLEKS                       R4 R0 K16 ["inventoryStatus"]
      139 MOVE                             R5 R1
      140 LOADK                            R6 K17 ["%*\"inventoryStatus\" > "]
      141 MOVE                             R8 R2
      142 NAMECALL                         R6 R6 K4 ["format"]
      144 CALL                             R6 2 1
      145 CALL                             R3 3 1
      146 SETTABLEKS                       R3 R0 K16 ["inventoryStatus"]
      148 RETURN                           R0 1

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
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["inventoryStatus"]
       32 JUMPIFEQKNIL                     R2 ; [+9]
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       37 GETTABLEKS                       R3 R1 K5 ["inventoryStatus"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K5 ["inventoryStatus"]
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
       18 GETTABLEKS                       R4 R4 K9 ["CreatorInventoryItem"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["InventoryStatus"]
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
