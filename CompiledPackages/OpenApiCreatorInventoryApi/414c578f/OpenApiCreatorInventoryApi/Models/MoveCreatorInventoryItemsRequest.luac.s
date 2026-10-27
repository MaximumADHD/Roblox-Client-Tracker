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
       24 GETTABLEKS                       R3 R0 K7 ["originFolderId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["originFolderId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"originFolderId\" > Expected number, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["originFolderId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["destinationFolderId"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["destinationFolderId"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["number"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"destinationFolderId\" > Expected number, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["destinationFolderId"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R4 R0 K12 ["items"]
       84 FASTCALL1                        TYPEOF R4 ; [+2]
       85 GETIMPORT                        R3 K1 [typeof]
       87 CALL                             R3 1 1
       88 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       90 LOADK                            R5 K13 ["%*\"items\" > Expected table, got %*"]
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R9 R0 K12 ["items"]
       94 FASTCALL1                        TYPEOF R9 ; [+2]
       95 GETIMPORT                        R8 K1 [typeof]
       97 CALL                             R8 1 1
       98 NAMECALL                         R5 R5 K4 ["format"]
      100 CALL                             R5 3 1
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 JUMP                             ; [+47]
      108 GETTABLEKS                       R3 R0 K12 ["items"]
      110 LOADNIL                          R4
      111 LOADNIL                          R5
      112 FORGPREP                         R3
      113 FASTCALL1                        TYPEOF R6 ; [+3]
      114 MOVE                             R9 R6
      115 GETIMPORT                        R8 K1 [typeof]
      117 CALL                             R8 1 1
      118 JUMPIFEQKS                       R8 K8 ["number"] ; [+19]
      120 LOADK                            R10 K14 ["%*\"items\" > Expected index of type number, got %* as %*"]
      121 MOVE                             R12 R2
      122 MOVE                             R13 R6
      123 FASTCALL1                        TYPEOF R6 ; [+3]
      124 MOVE                             R15 R6
      125 GETIMPORT                        R14 K1 [typeof]
      127 CALL                             R14 1 1
      128 NAMECALL                         R10 R10 K4 ["format"]
      130 CALL                             R10 4 1
      131 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      133 MOVE                             R9 R1
      134 GETIMPORT                        R8 K6 [table.insert]
      136 CALL                             R8 2 0
      137 JUMP                             ; [+15]
      138 GETTABLEKS                       R8 R0 K12 ["items"]
      140 GETUPVAL                         R9 0
      141 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      143 MOVE                             R10 R7
      144 MOVE                             R11 R1
      145 LOADK                            R12 K16 ["%*\"items\" > [%*] > "]
      146 MOVE                             R14 R2
      147 MOVE                             R15 R6
      148 NAMECALL                         R12 R12 K4 ["format"]
      150 CALL                             R12 3 1
      151 CALL                             R9 3 1
      152 SETTABLE                         R9 R8 R6
      153 FORGLOOP                         R3 2 ; [-41]
      155 GETTABLEKS                       R3 R0 K17 ["originFolderItem"]
      157 JUMPIFEQKNIL                     R3 ; [+15]
      159 GETUPVAL                         R3 0
      160 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      162 GETTABLEKS                       R4 R0 K17 ["originFolderItem"]
      164 MOVE                             R5 R1
      165 LOADK                            R6 K18 ["%*\"originFolderItem\" > "]
      166 MOVE                             R8 R2
      167 NAMECALL                         R6 R6 K4 ["format"]
      169 CALL                             R6 2 1
      170 CALL                             R3 3 1
      171 SETTABLEKS                       R3 R0 K17 ["originFolderItem"]
      173 GETTABLEKS                       R3 R0 K19 ["destinationFolderItem"]
      175 JUMPIFEQKNIL                     R3 ; [+15]
      177 GETUPVAL                         R3 0
      178 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      180 GETTABLEKS                       R4 R0 K19 ["destinationFolderItem"]
      182 MOVE                             R5 R1
      183 LOADK                            R6 K20 ["%*\"destinationFolderItem\" > "]
      184 MOVE                             R8 R2
      185 NAMECALL                         R6 R6 K4 ["format"]
      187 CALL                             R6 2 1
      188 CALL                             R3 3 1
      189 SETTABLEKS                       R3 R0 K19 ["destinationFolderItem"]
      191 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["items"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["items"]
       11 GETTABLEKS                       R2 R1 K3 ["items"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R1 K3 ["items"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 SETTABLE                         R8 R7 R5
       24 FORGLOOP                         R2 2 ; [-9]
       26 GETTABLEKS                       R2 R1 K5 ["originFolderItem"]
       28 JUMPIFEQKNIL                     R2 ; [+9]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       33 GETTABLEKS                       R3 R1 K5 ["originFolderItem"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K5 ["originFolderItem"]
       38 GETTABLEKS                       R2 R1 K6 ["destinationFolderItem"]
       40 JUMPIFEQKNIL                     R2 ; [+9]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       45 GETTABLEKS                       R3 R1 K6 ["destinationFolderItem"]
       47 CALL                             R2 1 1
       48 SETTABLEKS                       R2 R1 K6 ["destinationFolderItem"]
       50 RETURN                           R1 1

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
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
