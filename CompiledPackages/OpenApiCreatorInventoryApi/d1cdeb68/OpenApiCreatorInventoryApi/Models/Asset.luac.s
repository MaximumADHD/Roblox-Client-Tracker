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
       24 GETTABLEKS                       R3 R0 K7 ["createTime"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["createTime"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"createTime\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["createTime"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["updateTime"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["updateTime"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"updateTime\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["updateTime"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["assetId"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["assetId"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"assetId\" > Expected number, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["assetId"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K15 ["displayName"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K15 ["displayName"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      123 LOADK                            R5 K16 ["%*\"displayName\" > Expected string, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K15 ["displayName"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K17 ["description"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K17 ["description"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      152 LOADK                            R5 K18 ["%*\"description\" > Expected string, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K17 ["description"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K19 ["assetType"]
      171 JUMPIFEQKNIL                     R3 ; [+15]
      173 GETUPVAL                         R3 0
      174 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      176 GETTABLEKS                       R4 R0 K19 ["assetType"]
      178 MOVE                             R5 R1
      179 LOADK                            R6 K21 ["%*\"assetType\" > "]
      180 MOVE                             R8 R2
      181 NAMECALL                         R6 R6 K4 ["format"]
      183 CALL                             R6 2 1
      184 CALL                             R3 3 1
      185 SETTABLEKS                       R3 R0 K19 ["assetType"]
      187 GETTABLEKS                       R3 R0 K22 ["creationContext"]
      189 JUMPIFEQKNIL                     R3 ; [+15]
      191 GETUPVAL                         R3 1
      192 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      194 GETTABLEKS                       R4 R0 K22 ["creationContext"]
      196 MOVE                             R5 R1
      197 LOADK                            R6 K23 ["%*\"creationContext\" > "]
      198 MOVE                             R8 R2
      199 NAMECALL                         R6 R6 K4 ["format"]
      201 CALL                             R6 2 1
      202 CALL                             R3 3 1
      203 SETTABLEKS                       R3 R0 K22 ["creationContext"]
      205 GETTABLEKS                       R3 R0 K24 ["state"]
      207 JUMPIFEQKNIL                     R3 ; [+15]
      209 GETUPVAL                         R3 2
      210 GETTABLEKS                       R3 R3 K20 ["fromResponse"]
      212 GETTABLEKS                       R4 R0 K24 ["state"]
      214 MOVE                             R5 R1
      215 LOADK                            R6 K25 ["%*\"state\" > "]
      216 MOVE                             R8 R2
      217 NAMECALL                         R6 R6 K4 ["format"]
      219 CALL                             R6 2 1
      220 CALL                             R3 3 1
      221 SETTABLEKS                       R3 R0 K24 ["state"]
      223 GETTABLEKS                       R3 R0 K26 ["assetSubType"]
      225 JUMPIFEQKNIL                     R3 ; [+26]
      227 GETTABLEKS                       R4 R0 K26 ["assetSubType"]
      229 FASTCALL1                        TYPEOF R4 ; [+2]
      230 GETIMPORT                        R3 K1 [typeof]
      232 CALL                             R3 1 1
      233 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      235 LOADK                            R5 K27 ["%*\"assetSubType\" > Expected string, got %*"]
      236 MOVE                             R7 R2
      237 GETTABLEKS                       R9 R0 K26 ["assetSubType"]
      239 FASTCALL1                        TYPEOF R9 ; [+2]
      240 GETIMPORT                        R8 K1 [typeof]
      242 CALL                             R8 1 1
      243 NAMECALL                         R5 R5 K4 ["format"]
      245 CALL                             R5 3 1
      246 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      248 MOVE                             R4 R1
      249 GETIMPORT                        R3 K6 [table.insert]
      251 CALL                             R3 2 0
      252 RETURN                           R0 1

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
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["AssetType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["CreationContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["State"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
