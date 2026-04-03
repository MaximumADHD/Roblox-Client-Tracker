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
       25 GETTABLEKS                       R3 R0 K7 ["textPrompt"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["textPrompt"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"textPrompt\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["textPrompt"]
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
       55 GETTABLEKS                       R3 R0 K10 ["modelId"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["modelId"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"modelId\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["modelId"]
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
       85 GETTABLEKS                       R3 R0 K12 ["initialImage"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K12 ["initialImage"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       97 LOADK                            R6 K13 ["%*\"initialImage\" > Expected string, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["initialImage"]
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
      115 GETTABLEKS                       R3 R0 K14 ["imageStrength"]
      117 JUMPIFEQKNIL                     R3 ; [+27]
      119 GETTABLEKS                       R4 R0 K14 ["imageStrength"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      127 LOADK                            R6 K16 ["%*\"imageStrength\" > Expected number, got %*"]
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R10 R0 K14 ["imageStrength"]
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
      145 GETTABLEKS                       R3 R0 K17 ["samples"]
      147 JUMPIFEQKNIL                     R3 ; [+27]
      149 GETTABLEKS                       R4 R0 K17 ["samples"]
      151 FASTCALL1                        TYPEOF R4 ; [+2]
      152 GETIMPORT                        R3 K1 [typeof]
      154 CALL                             R3 1 1
      155 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      157 LOADK                            R6 K18 ["%*\"samples\" > Expected number, got %*"]
      158 MOVE                             R8 R2
      159 GETTABLEKS                       R10 R0 K17 ["samples"]
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
      175 GETTABLEKS                       R3 R0 K19 ["height"]
      177 JUMPIFEQKNIL                     R3 ; [+27]
      179 GETTABLEKS                       R4 R0 K19 ["height"]
      181 FASTCALL1                        TYPEOF R4 ; [+2]
      182 GETIMPORT                        R3 K1 [typeof]
      184 CALL                             R3 1 1
      185 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      187 LOADK                            R6 K20 ["%*\"height\" > Expected number, got %*"]
      188 MOVE                             R8 R2
      189 GETTABLEKS                       R10 R0 K19 ["height"]
      191 FASTCALL1                        TYPEOF R10 ; [+2]
      192 GETIMPORT                        R9 K1 [typeof]
      194 CALL                             R9 1 1
      195 NAMECALL                         R6 R6 K4 ["format"]
      197 CALL                             R6 3 1
      198 MOVE                             R5 R6
      199 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      201 MOVE                             R4 R1
      202 GETIMPORT                        R3 K6 [table.insert]
      204 CALL                             R3 2 0
      205 GETTABLEKS                       R3 R0 K21 ["width"]
      207 JUMPIFEQKNIL                     R3 ; [+27]
      209 GETTABLEKS                       R4 R0 K21 ["width"]
      211 FASTCALL1                        TYPEOF R4 ; [+2]
      212 GETIMPORT                        R3 K1 [typeof]
      214 CALL                             R3 1 1
      215 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      217 LOADK                            R6 K22 ["%*\"width\" > Expected number, got %*"]
      218 MOVE                             R8 R2
      219 GETTABLEKS                       R10 R0 K21 ["width"]
      221 FASTCALL1                        TYPEOF R10 ; [+2]
      222 GETIMPORT                        R9 K1 [typeof]
      224 CALL                             R9 1 1
      225 NAMECALL                         R6 R6 K4 ["format"]
      227 CALL                             R6 3 1
      228 MOVE                             R5 R6
      229 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      231 MOVE                             R4 R1
      232 GETIMPORT                        R3 K6 [table.insert]
      234 CALL                             R3 2 0
      235 GETTABLEKS                       R3 R0 K23 ["seed"]
      237 JUMPIFEQKNIL                     R3 ; [+27]
      239 GETTABLEKS                       R4 R0 K23 ["seed"]
      241 FASTCALL1                        TYPEOF R4 ; [+2]
      242 GETIMPORT                        R3 K1 [typeof]
      244 CALL                             R3 1 1
      245 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      247 LOADK                            R6 K24 ["%*\"seed\" > Expected number, got %*"]
      248 MOVE                             R8 R2
      249 GETTABLEKS                       R10 R0 K23 ["seed"]
      251 FASTCALL1                        TYPEOF R10 ; [+2]
      252 GETIMPORT                        R9 K1 [typeof]
      254 CALL                             R9 1 1
      255 NAMECALL                         R6 R6 K4 ["format"]
      257 CALL                             R6 3 1
      258 MOVE                             R5 R6
      259 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      261 MOVE                             R4 R1
      262 GETIMPORT                        R3 K6 [table.insert]
      264 CALL                             R3 2 0
      265 GETTABLEKS                       R3 R0 K25 ["steps"]
      267 JUMPIFEQKNIL                     R3 ; [+27]
      269 GETTABLEKS                       R4 R0 K25 ["steps"]
      271 FASTCALL1                        TYPEOF R4 ; [+2]
      272 GETIMPORT                        R3 K1 [typeof]
      274 CALL                             R3 1 1
      275 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      277 LOADK                            R6 K26 ["%*\"steps\" > Expected number, got %*"]
      278 MOVE                             R8 R2
      279 GETTABLEKS                       R10 R0 K25 ["steps"]
      281 FASTCALL1                        TYPEOF R10 ; [+2]
      282 GETIMPORT                        R9 K1 [typeof]
      284 CALL                             R9 1 1
      285 NAMECALL                         R6 R6 K4 ["format"]
      287 CALL                             R6 3 1
      288 MOVE                             R5 R6
      289 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      291 MOVE                             R4 R1
      292 GETIMPORT                        R3 K6 [table.insert]
      294 CALL                             R3 2 0
      295 GETTABLEKS                       R3 R0 K27 ["cfgScale"]
      297 JUMPIFEQKNIL                     R3 ; [+27]
      299 GETTABLEKS                       R4 R0 K27 ["cfgScale"]
      301 FASTCALL1                        TYPEOF R4 ; [+2]
      302 GETIMPORT                        R3 K1 [typeof]
      304 CALL                             R3 1 1
      305 JUMPIFEQKS                       R3 K15 ["number"] ; [+19]
      307 LOADK                            R6 K28 ["%*\"cfgScale\" > Expected number, got %*"]
      308 MOVE                             R8 R2
      309 GETTABLEKS                       R10 R0 K27 ["cfgScale"]
      311 FASTCALL1                        TYPEOF R10 ; [+2]
      312 GETIMPORT                        R9 K1 [typeof]
      314 CALL                             R9 1 1
      315 NAMECALL                         R6 R6 K4 ["format"]
      317 CALL                             R6 3 1
      318 MOVE                             R5 R6
      319 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      321 MOVE                             R4 R1
      322 GETIMPORT                        R3 K6 [table.insert]
      324 CALL                             R3 2 0
      325 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerationService"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 DUPCLOSURE                       R5 K10 [PROTO_1]
       20 GETIMPORT                        R6 K13 [table.freeze]
       22 DUPTABLE                         R7 K16 [{"fromResponse", "toRequest"}]
       23 SETTABLEKS                       R4 R7 K14 ["fromResponse"]
       25 SETTABLEKS                       R5 R7 K15 ["toRequest"]
       27 CALL                             R6 1 1
       28 RETURN                           R6 1
