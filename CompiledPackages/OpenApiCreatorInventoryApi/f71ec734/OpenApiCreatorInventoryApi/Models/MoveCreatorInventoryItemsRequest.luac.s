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
       25 GETTABLEKS                       R3 R0 K7 ["originFolderId"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["originFolderId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"originFolderId\" > Expected number, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["originFolderId"]
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
       55 GETTABLEKS                       R3 R0 K10 ["destinationFolderId"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["destinationFolderId"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["number"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"destinationFolderId\" > Expected number, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["destinationFolderId"]
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
       85 GETTABLEKS                       R3 R0 K12 ["items"]
       87 JUMPIFEQKNIL                     R3 ; [+77]
       89 GETTABLEKS                       R4 R0 K12 ["items"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       97 LOADK                            R6 K13 ["%*\"items\" > Expected table, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["items"]
      101 FASTCALL1                        TYPEOF R10 ; [+2]
      102 GETIMPORT                        R9 K1 [typeof]
      104 CALL                             R9 1 1
      105 NAMECALL                         R6 R6 K4 ["format"]
      107 CALL                             R6 3 1
      108 MOVE                             R5 R6
      109 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      111 MOVE                             R4 R1
      112 GETIMPORT                        R3 K6 [table.insert]
      114 CALL                             R3 2 0
      115 JUMP                             ; [+49]
      116 GETTABLEKS                       R3 R0 K12 ["items"]
      118 LOADNIL                          R4
      119 LOADNIL                          R5
      120 FORGPREP                         R3
      121 FASTCALL1                        TYPEOF R6 ; [+3]
      122 MOVE                             R9 R6
      123 GETIMPORT                        R8 K1 [typeof]
      125 CALL                             R8 1 1
      126 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
      128 LOADK                            R11 K14 ["%*\"items\" > Expected index of type number, got %* as %*"]
      129 MOVE                             R13 R2
      130 MOVE                             R14 R6
      131 FASTCALL1                        TYPEOF R6 ; [+3]
      132 MOVE                             R16 R6
      133 GETIMPORT                        R15 K1 [typeof]
      135 CALL                             R15 1 1
      136 NAMECALL                         R11 R11 K4 ["format"]
      138 CALL                             R11 4 1
      139 MOVE                             R10 R11
      140 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      142 MOVE                             R9 R1
      143 GETIMPORT                        R8 K6 [table.insert]
      145 CALL                             R8 2 0
      146 JUMP                             ; [+16]
      147 GETTABLEKS                       R8 R0 K12 ["items"]
      149 GETUPVAL                         R9 0
      150 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      152 MOVE                             R10 R7
      153 MOVE                             R11 R1
      154 LOADK                            R13 K16 ["%*\"items\" > [%*] > "]
      155 MOVE                             R15 R2
      156 MOVE                             R16 R6
      157 NAMECALL                         R13 R13 K4 ["format"]
      159 CALL                             R13 3 1
      160 MOVE                             R12 R13
      161 CALL                             R9 3 1
      162 SETTABLE                         R9 R8 R6
      163 FORGLOOP                         R3 2 ; [-43]
      165 GETTABLEKS                       R3 R0 K17 ["originFolderItem"]
      167 JUMPIFEQKNIL                     R3 ; [+16]
      169 GETUPVAL                         R3 0
      170 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      172 GETTABLEKS                       R4 R0 K17 ["originFolderItem"]
      174 MOVE                             R5 R1
      175 LOADK                            R7 K18 ["%*\"originFolderItem\" > "]
      176 MOVE                             R9 R2
      177 NAMECALL                         R7 R7 K4 ["format"]
      179 CALL                             R7 2 1
      180 MOVE                             R6 R7
      181 CALL                             R3 3 1
      182 SETTABLEKS                       R3 R0 K17 ["originFolderItem"]
      184 GETTABLEKS                       R3 R0 K19 ["destinationFolderItem"]
      186 JUMPIFEQKNIL                     R3 ; [+16]
      188 GETUPVAL                         R3 0
      189 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      191 GETTABLEKS                       R4 R0 K19 ["destinationFolderItem"]
      193 MOVE                             R5 R1
      194 LOADK                            R7 K20 ["%*\"destinationFolderItem\" > "]
      195 MOVE                             R9 R2
      196 NAMECALL                         R7 R7 K4 ["format"]
      198 CALL                             R7 2 1
      199 MOVE                             R6 R7
      200 CALL                             R3 3 1
      201 SETTABLEKS                       R3 R0 K19 ["destinationFolderItem"]
      203 RETURN                           R0 1

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
       30 GETTABLEKS                       R2 R1 K5 ["originFolderItem"]
       32 JUMPIFEQKNIL                     R2 ; [+9]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       37 GETTABLEKS                       R3 R1 K5 ["originFolderItem"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R1 K5 ["originFolderItem"]
       42 GETTABLEKS                       R2 R1 K6 ["destinationFolderItem"]
       44 JUMPIFEQKNIL                     R2 ; [+9]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       49 GETTABLEKS                       R3 R1 K6 ["destinationFolderItem"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R1 K6 ["destinationFolderItem"]
       54 RETURN                           R1 1

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
