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
       24 GETTABLEKS                       R3 R0 K7 ["threadId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["threadId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"threadId\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["threadId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["messageId"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["messageId"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"messageId\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["messageId"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["createdUtc"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["createdUtc"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"createdUtc\" > Expected number, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["createdUtc"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K15 ["updatedUtc"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K15 ["updatedUtc"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
      123 LOADK                            R5 K16 ["%*\"updatedUtc\" > Expected number, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K15 ["updatedUtc"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K17 ["isDeleted"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K17 ["isDeleted"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      152 LOADK                            R5 K19 ["%*\"isDeleted\" > Expected boolean, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K17 ["isDeleted"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K20 ["role"]
      171 JUMPIFEQKNIL                     R3 ; [+26]
      173 GETTABLEKS                       R4 R0 K20 ["role"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      181 LOADK                            R5 K21 ["%*\"role\" > Expected string, got %*"]
      182 MOVE                             R7 R2
      183 GETTABLEKS                       R9 R0 K20 ["role"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K1 [typeof]
      188 CALL                             R8 1 1
      189 NAMECALL                         R5 R5 K4 ["format"]
      191 CALL                             R5 3 1
      192 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      194 MOVE                             R4 R1
      195 GETIMPORT                        R3 K6 [table.insert]
      197 CALL                             R3 2 0
      198 GETTABLEKS                       R3 R0 K22 ["metadata"]
      200 JUMPIFEQKNIL                     R3 ; [+26]
      202 GETTABLEKS                       R4 R0 K22 ["metadata"]
      204 FASTCALL1                        TYPEOF R4 ; [+2]
      205 GETIMPORT                        R3 K1 [typeof]
      207 CALL                             R3 1 1
      208 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      210 LOADK                            R5 K23 ["%*\"metadata\" > Expected string, got %*"]
      211 MOVE                             R7 R2
      212 GETTABLEKS                       R9 R0 K22 ["metadata"]
      214 FASTCALL1                        TYPEOF R9 ; [+2]
      215 GETIMPORT                        R8 K1 [typeof]
      217 CALL                             R8 1 1
      218 NAMECALL                         R5 R5 K4 ["format"]
      220 CALL                             R5 3 1
      221 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      223 MOVE                             R4 R1
      224 GETIMPORT                        R3 K6 [table.insert]
      226 CALL                             R3 2 0
      227 GETTABLEKS                       R3 R0 K24 ["contents"]
      229 JUMPIFEQKNIL                     R3 ; [+74]
      231 GETTABLEKS                       R4 R0 K24 ["contents"]
      233 FASTCALL1                        TYPEOF R4 ; [+2]
      234 GETIMPORT                        R3 K1 [typeof]
      236 CALL                             R3 1 1
      237 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      239 LOADK                            R5 K25 ["%*\"contents\" > Expected table, got %*"]
      240 MOVE                             R7 R2
      241 GETTABLEKS                       R9 R0 K24 ["contents"]
      243 FASTCALL1                        TYPEOF R9 ; [+2]
      244 GETIMPORT                        R8 K1 [typeof]
      246 CALL                             R8 1 1
      247 NAMECALL                         R5 R5 K4 ["format"]
      249 CALL                             R5 3 1
      250 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      252 MOVE                             R4 R1
      253 GETIMPORT                        R3 K6 [table.insert]
      255 CALL                             R3 2 0
      256 RETURN                           R0 1
      257 GETTABLEKS                       R3 R0 K24 ["contents"]
      259 LOADNIL                          R4
      260 LOADNIL                          R5
      261 FORGPREP                         R3
      262 FASTCALL1                        TYPEOF R6 ; [+3]
      263 MOVE                             R9 R6
      264 GETIMPORT                        R8 K1 [typeof]
      266 CALL                             R8 1 1
      267 JUMPIFEQKS                       R8 K13 ["number"] ; [+19]
      269 LOADK                            R10 K26 ["%*\"contents\" > Expected index of type number, got %* as %*"]
      270 MOVE                             R12 R2
      271 MOVE                             R13 R6
      272 FASTCALL1                        TYPEOF R6 ; [+3]
      273 MOVE                             R15 R6
      274 GETIMPORT                        R14 K1 [typeof]
      276 CALL                             R14 1 1
      277 NAMECALL                         R10 R10 K4 ["format"]
      279 CALL                             R10 4 1
      280 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      282 MOVE                             R9 R1
      283 GETIMPORT                        R8 K6 [table.insert]
      285 CALL                             R8 2 0
      286 JUMP                             ; [+15]
      287 GETTABLEKS                       R8 R0 K24 ["contents"]
      289 GETUPVAL                         R9 0
      290 GETTABLEKS                       R9 R9 K27 ["fromResponse"]
      292 MOVE                             R10 R7
      293 MOVE                             R11 R1
      294 LOADK                            R12 K28 ["%*\"contents\" > [%*] > "]
      295 MOVE                             R14 R2
      296 MOVE                             R15 R6
      297 NAMECALL                         R12 R12 K4 ["format"]
      299 CALL                             R12 3 1
      300 CALL                             R9 3 1
      301 SETTABLE                         R9 R8 R6
      302 FORGLOOP                         R3 2 ; [-41]
      304 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["contents"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["contents"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["contents"]
       15 GETTABLEKS                       R2 R1 K3 ["contents"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["contents"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantStorageApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["ContentBody"]
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
