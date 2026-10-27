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
       82 GETTABLEKS                       R3 R0 K12 ["revisionId"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["revisionId"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       94 LOADK                            R5 K13 ["%*\"revisionId\" > Expected string, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["revisionId"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K14 ["assetId"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K14 ["assetId"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K15 ["number"] ; [+18]
      123 LOADK                            R5 K16 ["%*\"assetId\" > Expected number, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K14 ["assetId"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K17 ["displayName"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K17 ["displayName"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      152 LOADK                            R5 K18 ["%*\"displayName\" > Expected string, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K17 ["displayName"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K19 ["description"]
      171 JUMPIFEQKNIL                     R3 ; [+26]
      173 GETTABLEKS                       R4 R0 K19 ["description"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      181 LOADK                            R5 K20 ["%*\"description\" > Expected string, got %*"]
      182 MOVE                             R7 R2
      183 GETTABLEKS                       R9 R0 K19 ["description"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K1 [typeof]
      188 CALL                             R8 1 1
      189 NAMECALL                         R5 R5 K4 ["format"]
      191 CALL                             R5 3 1
      192 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      194 MOVE                             R4 R1
      195 GETIMPORT                        R3 K6 [table.insert]
      197 CALL                             R3 2 0
      198 GETTABLEKS                       R3 R0 K21 ["assetType"]
      200 JUMPIFEQKNIL                     R3 ; [+15]
      202 GETUPVAL                         R3 0
      203 GETTABLEKS                       R3 R3 K22 ["fromResponse"]
      205 GETTABLEKS                       R4 R0 K21 ["assetType"]
      207 MOVE                             R5 R1
      208 LOADK                            R6 K23 ["%*\"assetType\" > "]
      209 MOVE                             R8 R2
      210 NAMECALL                         R6 R6 K4 ["format"]
      212 CALL                             R6 2 1
      213 CALL                             R3 3 1
      214 SETTABLEKS                       R3 R0 K21 ["assetType"]
      216 GETTABLEKS                       R3 R0 K24 ["creationContext"]
      218 JUMPIFEQKNIL                     R3 ; [+15]
      220 GETUPVAL                         R3 1
      221 GETTABLEKS                       R3 R3 K22 ["fromResponse"]
      223 GETTABLEKS                       R4 R0 K24 ["creationContext"]
      225 MOVE                             R5 R1
      226 LOADK                            R6 K25 ["%*\"creationContext\" > "]
      227 MOVE                             R8 R2
      228 NAMECALL                         R6 R6 K4 ["format"]
      230 CALL                             R6 2 1
      231 CALL                             R3 3 1
      232 SETTABLEKS                       R3 R0 K24 ["creationContext"]
      234 GETTABLEKS                       R3 R0 K26 ["moderationResult"]
      236 JUMPIFEQKNIL                     R3 ; [+15]
      238 GETUPVAL                         R3 2
      239 GETTABLEKS                       R3 R3 K22 ["fromResponse"]
      241 GETTABLEKS                       R4 R0 K26 ["moderationResult"]
      243 MOVE                             R5 R1
      244 LOADK                            R6 K27 ["%*\"moderationResult\" > "]
      245 MOVE                             R8 R2
      246 NAMECALL                         R6 R6 K4 ["format"]
      248 CALL                             R6 2 1
      249 CALL                             R3 3 1
      250 SETTABLEKS                       R3 R0 K26 ["moderationResult"]
      252 GETTABLEKS                       R3 R0 K28 ["versionStatus"]
      254 JUMPIFEQKNIL                     R3 ; [+15]
      256 GETUPVAL                         R3 3
      257 GETTABLEKS                       R3 R3 K22 ["fromResponse"]
      259 GETTABLEKS                       R4 R0 K28 ["versionStatus"]
      261 MOVE                             R5 R1
      262 LOADK                            R6 K29 ["%*\"versionStatus\" > "]
      263 MOVE                             R8 R2
      264 NAMECALL                         R6 R6 K4 ["format"]
      266 CALL                             R6 2 1
      267 CALL                             R3 3 1
      268 SETTABLEKS                       R3 R0 K28 ["versionStatus"]
      270 GETTABLEKS                       R3 R0 K30 ["state"]
      272 JUMPIFEQKNIL                     R3 ; [+15]
      274 GETUPVAL                         R3 4
      275 GETTABLEKS                       R3 R3 K22 ["fromResponse"]
      277 GETTABLEKS                       R4 R0 K30 ["state"]
      279 MOVE                             R5 R1
      280 LOADK                            R6 K31 ["%*\"state\" > "]
      281 MOVE                             R8 R2
      282 NAMECALL                         R6 R6 K4 ["format"]
      284 CALL                             R6 2 1
      285 CALL                             R3 3 1
      286 SETTABLEKS                       R3 R0 K30 ["state"]
      288 GETTABLEKS                       R3 R0 K32 ["assetSubType"]
      290 JUMPIFEQKNIL                     R3 ; [+26]
      292 GETTABLEKS                       R4 R0 K32 ["assetSubType"]
      294 FASTCALL1                        TYPEOF R4 ; [+2]
      295 GETIMPORT                        R3 K1 [typeof]
      297 CALL                             R3 1 1
      298 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      300 LOADK                            R5 K33 ["%*\"assetSubType\" > Expected string, got %*"]
      301 MOVE                             R7 R2
      302 GETTABLEKS                       R9 R0 K32 ["assetSubType"]
      304 FASTCALL1                        TYPEOF R9 ; [+2]
      305 GETIMPORT                        R8 K1 [typeof]
      307 CALL                             R8 1 1
      308 NAMECALL                         R5 R5 K4 ["format"]
      310 CALL                             R5 3 1
      311 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      313 MOVE                             R4 R1
      314 GETIMPORT                        R3 K6 [table.insert]
      316 CALL                             R3 2 0
      317 RETURN                           R0 1

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
       28 GETTABLEKS                       R2 R1 K6 ["moderationResult"]
       30 JUMPIFEQKNIL                     R2 ; [+9]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       35 GETTABLEKS                       R3 R1 K6 ["moderationResult"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K6 ["moderationResult"]
       40 GETTABLEKS                       R2 R1 K7 ["versionStatus"]
       42 JUMPIFEQKNIL                     R2 ; [+9]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       47 GETTABLEKS                       R3 R1 K7 ["versionStatus"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R1 K7 ["versionStatus"]
       52 GETTABLEKS                       R2 R1 K8 ["state"]
       54 JUMPIFEQKNIL                     R2 ; [+9]
       56 GETUPVAL                         R2 4
       57 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       59 GETTABLEKS                       R3 R1 K8 ["state"]
       61 CALL                             R2 1 1
       62 SETTABLEKS                       R2 R1 K8 ["state"]
       64 RETURN                           R1 1

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
       25 GETTABLEKS                       R5 R5 K10 ["AssetVersionStatus"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["CreationContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Models"]
       39 GETTABLEKS                       R7 R7 K12 ["ModerationResult"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Models"]
       46 GETTABLEKS                       R8 R8 K13 ["State"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K14 [PROTO_0]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K15 [PROTO_1]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 GETIMPORT                        R10 K18 [table.freeze]
       63 DUPTABLE                         R11 K21 [{"fromResponse", "toRequest"}]
       64 SETTABLEKS                       R8 R11 K19 ["fromResponse"]
       66 SETTABLEKS                       R9 R11 K20 ["toRequest"]
       68 CALL                             R10 1 1
       69 RETURN                           R10 1
