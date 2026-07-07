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
       25 GETTABLEKS                       R3 R0 K7 ["createTime"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["createTime"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"createTime\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["createTime"]
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
       55 GETTABLEKS                       R3 R0 K10 ["updateTime"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["updateTime"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"updateTime\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["updateTime"]
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
       85 GETTABLEKS                       R3 R0 K12 ["assetId"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K12 ["assetId"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K13 ["number"] ; [+19]
       97 LOADK                            R6 K14 ["%*\"assetId\" > Expected number, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["assetId"]
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
      115 GETTABLEKS                       R3 R0 K15 ["displayName"]
      117 JUMPIFEQKNIL                     R3 ; [+27]
      119 GETTABLEKS                       R4 R0 K15 ["displayName"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      127 LOADK                            R6 K16 ["%*\"displayName\" > Expected string, got %*"]
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R10 R0 K15 ["displayName"]
      131 FASTCALL1                        TYPEOF R10 ; [+2]
      132 GETIMPORT                        R9 K1 [typeof]
      134 CALL                             R9 1 1
      135 NAMECALL                         R6 R6 K4 ["format"]
      137 CALL                             R6 3 1
      138 MOVE                             R5 R6
      139 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      141 MOVE                             R4 R1
      142 GETIMPORT                        R3 K6 [table.insert]
      144 CALL                             R3 2 0
      145 GETTABLEKS                       R3 R0 K17 ["description"]
      147 JUMPIFEQKNIL                     R3 ; [+27]
      149 GETTABLEKS                       R4 R0 K17 ["description"]
      151 FASTCALL1                        TYPEOF R4 ; [+2]
      152 GETIMPORT                        R3 K1 [typeof]
      154 CALL                             R3 1 1
      155 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      157 LOADK                            R6 K18 ["%*\"description\" > Expected string, got %*"]
      158 MOVE                             R8 R2
      159 GETTABLEKS                       R10 R0 K17 ["description"]
      161 FASTCALL1                        TYPEOF R10 ; [+2]
      162 GETIMPORT                        R9 K1 [typeof]
      164 CALL                             R9 1 1
      165 NAMECALL                         R6 R6 K4 ["format"]
      167 CALL                             R6 3 1
      168 MOVE                             R5 R6
      169 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      171 MOVE                             R4 R1
      172 GETIMPORT                        R3 K6 [table.insert]
      174 CALL                             R3 2 0
      175 GETTABLEKS                       R3 R0 K19 ["assetType"]
      177 JUMPIFEQKNIL                     R3 ; [+16]
      179 GETUPVAL                         R3 0
      180 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      182 GETTABLEKS                       R4 R0 K19 ["assetType"]
      184 MOVE                             R5 R1
      185 LOADK                            R7 K21 ["%*\"assetType\" > "]
      186 MOVE                             R9 R2
      187 NAMECALL                         R7 R7 K4 ["format"]
      189 CALL                             R7 2 1
      190 MOVE                             R6 R7
      191 CALL                             R3 3 1
      192 SETTABLEKS                       R3 R0 K19 ["assetType"]
      194 GETTABLEKS                       R3 R0 K22 ["creationContext"]
      196 JUMPIFEQKNIL                     R3 ; [+16]
      198 GETUPVAL                         R3 1
      199 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      201 GETTABLEKS                       R4 R0 K22 ["creationContext"]
      203 MOVE                             R5 R1
      204 LOADK                            R7 K23 ["%*\"creationContext\" > "]
      205 MOVE                             R9 R2
      206 NAMECALL                         R7 R7 K4 ["format"]
      208 CALL                             R7 2 1
      209 MOVE                             R6 R7
      210 CALL                             R3 3 1
      211 SETTABLEKS                       R3 R0 K22 ["creationContext"]
      213 GETTABLEKS                       R3 R0 K24 ["state"]
      215 JUMPIFEQKNIL                     R3 ; [+16]
      217 GETUPVAL                         R3 2
      218 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      220 GETTABLEKS                       R4 R0 K24 ["state"]
      222 MOVE                             R5 R1
      223 LOADK                            R7 K25 ["%*\"state\" > "]
      224 MOVE                             R9 R2
      225 NAMECALL                         R7 R7 K4 ["format"]
      227 CALL                             R7 2 1
      228 MOVE                             R6 R7
      229 CALL                             R3 3 1
      230 SETTABLEKS                       R3 R0 K24 ["state"]
      232 GETTABLEKS                       R3 R0 K26 ["assetSubType"]
      234 JUMPIFEQKNIL                     R3 ; [+27]
      236 GETTABLEKS                       R4 R0 K26 ["assetSubType"]
      238 FASTCALL1                        TYPEOF R4 ; [+2]
      239 GETIMPORT                        R3 K1 [typeof]
      241 CALL                             R3 1 1
      242 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      244 LOADK                            R6 K27 ["%*\"assetSubType\" > Expected string, got %*"]
      245 MOVE                             R8 R2
      246 GETTABLEKS                       R10 R0 K26 ["assetSubType"]
      248 FASTCALL1                        TYPEOF R10 ; [+2]
      249 GETIMPORT                        R9 K1 [typeof]
      251 CALL                             R9 1 1
      252 NAMECALL                         R6 R6 K4 ["format"]
      254 CALL                             R6 3 1
      255 MOVE                             R5 R6
      256 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      258 MOVE                             R4 R1
      259 GETIMPORT                        R3 K6 [table.insert]
      261 CALL                             R3 2 0
      262 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["assetType"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["assetType"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["assetType"]
       16 GETTABLEKS                       R2 R1 K5 ["creationContext"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["creationContext"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["creationContext"]
       28 GETTABLEKS                       R2 R1 K6 ["state"]
       30 JUMPIFEQKNIL                     R2 ; [+9]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       35 GETTABLEKS                       R3 R1 K6 ["state"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K6 ["state"]
       40 RETURN                           R1 1

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
       20 GETTABLEKS                       R5 R0 K9 ["Models"]
       22 GETTABLEKS                       R5 R5 K10 ["AssetType"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R0 K9 ["Models"]
       29 GETTABLEKS                       R6 R6 K11 ["CreationContext"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Models"]
       36 GETTABLEKS                       R7 R7 K12 ["State"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K13 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R8 K14 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 GETIMPORT                        R9 K17 [table.freeze]
       49 DUPTABLE                         R10 K20 [{"fromResponse", "toRequest"}]
       50 SETTABLEKS                       R7 R10 K18 ["fromResponse"]
       52 SETTABLEKS                       R8 R10 K19 ["toRequest"]
       54 CALL                             R9 1 1
       55 RETURN                           R9 1
