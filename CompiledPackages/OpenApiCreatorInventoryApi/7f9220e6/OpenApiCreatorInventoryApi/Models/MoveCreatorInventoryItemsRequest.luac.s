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
       85 GETTABLEKS                       R4 R0 K12 ["items"]
       87 FASTCALL1                        TYPEOF R4 ; [+2]
       88 GETIMPORT                        R3 K1 [typeof]
       90 CALL                             R3 1 1
       91 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       93 LOADK                            R6 K13 ["%*\"items\" > Expected table, got %*"]
       94 MOVE                             R8 R2
       95 GETTABLEKS                       R10 R0 K12 ["items"]
       97 FASTCALL1                        TYPEOF R10 ; [+2]
       98 GETIMPORT                        R9 K1 [typeof]
      100 CALL                             R9 1 1
      101 NAMECALL                         R6 R6 K4 ["format"]
      103 CALL                             R6 3 1
      104 MOVE                             R5 R6
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 JUMP                             ; [+49]
      112 GETTABLEKS                       R3 R0 K12 ["items"]
      114 LOADNIL                          R4
      115 LOADNIL                          R5
      116 FORGPREP                         R3
      117 FASTCALL1                        TYPEOF R6 ; [+3]
      118 MOVE                             R9 R6
      119 GETIMPORT                        R8 K1 [typeof]
      121 CALL                             R8 1 1
      122 JUMPIFEQKS                       R8 K8 ["number"] ; [+20]
      124 LOADK                            R11 K14 ["%*\"items\" > Expected index of type number, got %* as %*"]
      125 MOVE                             R13 R2
      126 MOVE                             R14 R6
      127 FASTCALL1                        TYPEOF R6 ; [+3]
      128 MOVE                             R16 R6
      129 GETIMPORT                        R15 K1 [typeof]
      131 CALL                             R15 1 1
      132 NAMECALL                         R11 R11 K4 ["format"]
      134 CALL                             R11 4 1
      135 MOVE                             R10 R11
      136 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      138 MOVE                             R9 R1
      139 GETIMPORT                        R8 K6 [table.insert]
      141 CALL                             R8 2 0
      142 JUMP                             ; [+16]
      143 GETTABLEKS                       R8 R0 K12 ["items"]
      145 GETUPVAL                         R9 0
      146 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      148 MOVE                             R10 R7
      149 MOVE                             R11 R1
      150 LOADK                            R13 K16 ["%*\"items\" > [%*] > "]
      151 MOVE                             R15 R2
      152 MOVE                             R16 R6
      153 NAMECALL                         R13 R13 K4 ["format"]
      155 CALL                             R13 3 1
      156 MOVE                             R12 R13
      157 CALL                             R9 3 1
      158 SETTABLE                         R9 R8 R6
      159 FORGLOOP                         R3 2 ; [-43]
      161 GETTABLEKS                       R3 R0 K17 ["originFolderItem"]
      163 JUMPIFEQKNIL                     R3 ; [+16]
      165 GETUPVAL                         R3 0
      166 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      168 GETTABLEKS                       R4 R0 K17 ["originFolderItem"]
      170 MOVE                             R5 R1
      171 LOADK                            R7 K18 ["%*\"originFolderItem\" > "]
      172 MOVE                             R9 R2
      173 NAMECALL                         R7 R7 K4 ["format"]
      175 CALL                             R7 2 1
      176 MOVE                             R6 R7
      177 CALL                             R3 3 1
      178 SETTABLEKS                       R3 R0 K17 ["originFolderItem"]
      180 GETTABLEKS                       R3 R0 K19 ["destinationFolderItem"]
      182 JUMPIFEQKNIL                     R3 ; [+16]
      184 GETUPVAL                         R3 0
      185 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      187 GETTABLEKS                       R4 R0 K19 ["destinationFolderItem"]
      189 MOVE                             R5 R1
      190 LOADK                            R7 K20 ["%*\"destinationFolderItem\" > "]
      191 MOVE                             R9 R2
      192 NAMECALL                         R7 R7 K4 ["format"]
      194 CALL                             R7 2 1
      195 MOVE                             R6 R7
      196 CALL                             R3 3 1
      197 SETTABLEKS                       R3 R0 K19 ["destinationFolderItem"]
      199 RETURN                           R0 1

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
