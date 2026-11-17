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
       24 GETTABLEKS                       R3 R0 K7 ["created"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["created"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"created\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["created"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["enrichment"]
       55 JUMPIFEQKNIL                     R3 ; [+59]
       57 GETTABLEKS                       R4 R0 K10 ["enrichment"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       65 LOADK                            R5 K11 ["%*\"enrichment\" > Expected table, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["enrichment"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 JUMP                             ; [+32]
       83 GETTABLEKS                       R3 R0 K10 ["enrichment"]
       85 LOADNIL                          R4
       86 LOADNIL                          R5
       87 FORGPREP                         R3
       88 FASTCALL1                        TYPEOF R6 ; [+3]
       89 MOVE                             R9 R6
       90 GETIMPORT                        R8 K1 [typeof]
       92 CALL                             R8 1 1
       93 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
       95 LOADK                            R10 K13 ["%*\"enrichment\" > Expected index of type number, got %* as %*"]
       96 MOVE                             R12 R2
       97 MOVE                             R13 R6
       98 FASTCALL1                        TYPEOF R6 ; [+3]
       99 MOVE                             R15 R6
      100 GETIMPORT                        R14 K1 [typeof]
      102 CALL                             R14 1 1
      103 NAMECALL                         R10 R10 K4 ["format"]
      105 CALL                             R10 4 1
      106 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      108 MOVE                             R9 R1
      109 GETIMPORT                        R8 K6 [table.insert]
      111 CALL                             R8 2 0
      112 JUMP                             ; [0]
      113 FORGLOOP                         R3 2 ; [-26]
      115 GETTABLEKS                       R3 R0 K14 ["moderationDecisionVerdict"]
      117 JUMPIFEQKNIL                     R3 ; [+15]
      119 GETUPVAL                         R3 0
      120 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      122 GETTABLEKS                       R4 R0 K14 ["moderationDecisionVerdict"]
      124 MOVE                             R5 R1
      125 LOADK                            R6 K16 ["%*\"moderationDecisionVerdict\" > "]
      126 MOVE                             R8 R2
      127 NAMECALL                         R6 R6 K4 ["format"]
      129 CALL                             R6 2 1
      130 CALL                             R3 3 1
      131 SETTABLEKS                       R3 R0 K14 ["moderationDecisionVerdict"]
      133 GETTABLEKS                       R3 R0 K17 ["moderationDecisions"]
      135 JUMPIFEQKNIL                     R3 ; [+74]
      137 GETTABLEKS                       R4 R0 K17 ["moderationDecisions"]
      139 FASTCALL1                        TYPEOF R4 ; [+2]
      140 GETIMPORT                        R3 K1 [typeof]
      142 CALL                             R3 1 1
      143 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      145 LOADK                            R5 K18 ["%*\"moderationDecisions\" > Expected table, got %*"]
      146 MOVE                             R7 R2
      147 GETTABLEKS                       R9 R0 K17 ["moderationDecisions"]
      149 FASTCALL1                        TYPEOF R9 ; [+2]
      150 GETIMPORT                        R8 K1 [typeof]
      152 CALL                             R8 1 1
      153 NAMECALL                         R5 R5 K4 ["format"]
      155 CALL                             R5 3 1
      156 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      158 MOVE                             R4 R1
      159 GETIMPORT                        R3 K6 [table.insert]
      161 CALL                             R3 2 0
      162 JUMP                             ; [+47]
      163 GETTABLEKS                       R3 R0 K17 ["moderationDecisions"]
      165 LOADNIL                          R4
      166 LOADNIL                          R5
      167 FORGPREP                         R3
      168 FASTCALL1                        TYPEOF R6 ; [+3]
      169 MOVE                             R9 R6
      170 GETIMPORT                        R8 K1 [typeof]
      172 CALL                             R8 1 1
      173 JUMPIFEQKS                       R8 K12 ["number"] ; [+19]
      175 LOADK                            R10 K19 ["%*\"moderationDecisions\" > Expected index of type number, got %* as %*"]
      176 MOVE                             R12 R2
      177 MOVE                             R13 R6
      178 FASTCALL1                        TYPEOF R6 ; [+3]
      179 MOVE                             R15 R6
      180 GETIMPORT                        R14 K1 [typeof]
      182 CALL                             R14 1 1
      183 NAMECALL                         R10 R10 K4 ["format"]
      185 CALL                             R10 4 1
      186 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      188 MOVE                             R9 R1
      189 GETIMPORT                        R8 K6 [table.insert]
      191 CALL                             R8 2 0
      192 JUMP                             ; [+15]
      193 GETTABLEKS                       R8 R0 K17 ["moderationDecisions"]
      195 GETUPVAL                         R9 0
      196 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      198 MOVE                             R10 R7
      199 MOVE                             R11 R1
      200 LOADK                            R12 K20 ["%*\"moderationDecisions\" > [%*] > "]
      201 MOVE                             R14 R2
      202 MOVE                             R15 R6
      203 NAMECALL                         R12 R12 K4 ["format"]
      205 CALL                             R12 3 1
      206 CALL                             R9 3 1
      207 SETTABLE                         R9 R8 R6
      208 FORGLOOP                         R3 2 ; [-41]
      210 GETTABLEKS                       R4 R0 K21 ["reportId"]
      212 FASTCALL1                        TYPEOF R4 ; [+2]
      213 GETIMPORT                        R3 K1 [typeof]
      215 CALL                             R3 1 1
      216 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      218 LOADK                            R5 K22 ["%*\"reportId\" > Expected string, got %*"]
      219 MOVE                             R7 R2
      220 GETTABLEKS                       R9 R0 K21 ["reportId"]
      222 FASTCALL1                        TYPEOF R9 ; [+2]
      223 GETIMPORT                        R8 K1 [typeof]
      225 CALL                             R8 1 1
      226 NAMECALL                         R5 R5 K4 ["format"]
      228 CALL                             R5 3 1
      229 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      231 MOVE                             R4 R1
      232 GETIMPORT                        R3 K6 [table.insert]
      234 CALL                             R3 2 0
      235 GETTABLEKS                       R4 R0 K23 ["submitterId"]
      237 FASTCALL1                        TYPEOF R4 ; [+2]
      238 GETIMPORT                        R3 K1 [typeof]
      240 CALL                             R3 1 1
      241 JUMPIFEQKS                       R3 K12 ["number"] ; [+18]
      243 LOADK                            R5 K24 ["%*\"submitterId\" > Expected number, got %*"]
      244 MOVE                             R7 R2
      245 GETTABLEKS                       R9 R0 K23 ["submitterId"]
      247 FASTCALL1                        TYPEOF R9 ; [+2]
      248 GETIMPORT                        R8 K1 [typeof]
      250 CALL                             R8 1 1
      251 NAMECALL                         R5 R5 K4 ["format"]
      253 CALL                             R5 3 1
      254 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      256 MOVE                             R4 R1
      257 GETIMPORT                        R3 K6 [table.insert]
      259 CALL                             R3 2 0
      260 GETTABLEKS                       R4 R0 K25 ["submitterType"]
      262 FASTCALL1                        TYPEOF R4 ; [+2]
      263 GETIMPORT                        R3 K1 [typeof]
      265 CALL                             R3 1 1
      266 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      268 LOADK                            R5 K26 ["%*\"submitterType\" > Expected string, got %*"]
      269 MOVE                             R7 R2
      270 GETTABLEKS                       R9 R0 K25 ["submitterType"]
      272 FASTCALL1                        TYPEOF R9 ; [+2]
      273 GETIMPORT                        R8 K1 [typeof]
      275 CALL                             R8 1 1
      276 NAMECALL                         R5 R5 K4 ["format"]
      278 CALL                             R5 3 1
      279 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      281 MOVE                             R4 R1
      282 GETIMPORT                        R3 K6 [table.insert]
      284 CALL                             R3 2 0
      285 GETTABLEKS                       R3 R0 K27 ["tags"]
      287 JUMPIFEQKNIL                     R3 ; [+74]
      289 GETTABLEKS                       R4 R0 K27 ["tags"]
      291 FASTCALL1                        TYPEOF R4 ; [+2]
      292 GETIMPORT                        R3 K1 [typeof]
      294 CALL                             R3 1 1
      295 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      297 LOADK                            R5 K28 ["%*\"tags\" > Expected table, got %*"]
      298 MOVE                             R7 R2
      299 GETTABLEKS                       R9 R0 K27 ["tags"]
      301 FASTCALL1                        TYPEOF R9 ; [+2]
      302 GETIMPORT                        R8 K1 [typeof]
      304 CALL                             R8 1 1
      305 NAMECALL                         R5 R5 K4 ["format"]
      307 CALL                             R5 3 1
      308 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      310 MOVE                             R4 R1
      311 GETIMPORT                        R3 K6 [table.insert]
      313 CALL                             R3 2 0
      314 JUMP                             ; [+47]
      315 GETTABLEKS                       R3 R0 K27 ["tags"]
      317 LOADNIL                          R4
      318 LOADNIL                          R5
      319 FORGPREP                         R3
      320 FASTCALL1                        TYPEOF R6 ; [+3]
      321 MOVE                             R9 R6
      322 GETIMPORT                        R8 K1 [typeof]
      324 CALL                             R8 1 1
      325 JUMPIFEQKS                       R8 K8 ["string"] ; [+19]
      327 LOADK                            R10 K29 ["%*\"tags\" > Expected key of type string, got %* as %*"]
      328 MOVE                             R12 R2
      329 MOVE                             R13 R6
      330 FASTCALL1                        TYPEOF R6 ; [+3]
      331 MOVE                             R15 R6
      332 GETIMPORT                        R14 K1 [typeof]
      334 CALL                             R14 1 1
      335 NAMECALL                         R10 R10 K4 ["format"]
      337 CALL                             R10 4 1
      338 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      340 MOVE                             R9 R1
      341 GETIMPORT                        R8 K6 [table.insert]
      343 CALL                             R8 2 0
      344 JUMP                             ; [+15]
      345 GETTABLEKS                       R8 R0 K27 ["tags"]
      347 GETUPVAL                         R9 1
      348 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      350 MOVE                             R10 R7
      351 MOVE                             R11 R1
      352 LOADK                            R12 K30 ["%*\"tags\" > [\"%*\"] > "]
      353 MOVE                             R14 R2
      354 MOVE                             R15 R6
      355 NAMECALL                         R12 R12 K4 ["format"]
      357 CALL                             R12 3 1
      358 CALL                             R9 3 1
      359 SETTABLE                         R9 R8 R6
      360 FORGLOOP                         R3 2 ; [-41]
      362 GETTABLEKS                       R4 R0 K31 ["targetId"]
      364 FASTCALL1                        TYPEOF R4 ; [+2]
      365 GETIMPORT                        R3 K1 [typeof]
      367 CALL                             R3 1 1
      368 JUMPIFEQKS                       R3 K12 ["number"] ; [+18]
      370 LOADK                            R5 K32 ["%*\"targetId\" > Expected number, got %*"]
      371 MOVE                             R7 R2
      372 GETTABLEKS                       R9 R0 K31 ["targetId"]
      374 FASTCALL1                        TYPEOF R9 ; [+2]
      375 GETIMPORT                        R8 K1 [typeof]
      377 CALL                             R8 1 1
      378 NAMECALL                         R5 R5 K4 ["format"]
      380 CALL                             R5 3 1
      381 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      383 MOVE                             R4 R1
      384 GETIMPORT                        R3 K6 [table.insert]
      386 CALL                             R3 2 0
      387 GETTABLEKS                       R4 R0 K33 ["targetType"]
      389 FASTCALL1                        TYPEOF R4 ; [+2]
      390 GETIMPORT                        R3 K1 [typeof]
      392 CALL                             R3 1 1
      393 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      395 LOADK                            R5 K34 ["%*\"targetType\" > Expected string, got %*"]
      396 MOVE                             R7 R2
      397 GETTABLEKS                       R9 R0 K33 ["targetType"]
      399 FASTCALL1                        TYPEOF R9 ; [+2]
      400 GETIMPORT                        R8 K1 [typeof]
      402 CALL                             R8 1 1
      403 NAMECALL                         R5 R5 K4 ["format"]
      405 CALL                             R5 3 1
      406 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      408 MOVE                             R4 R1
      409 GETIMPORT                        R3 K6 [table.insert]
      411 CALL                             R3 2 0
      412 GETTABLEKS                       R4 R0 K35 ["version"]
      414 FASTCALL1                        TYPEOF R4 ; [+2]
      415 GETIMPORT                        R3 K1 [typeof]
      417 CALL                             R3 1 1
      418 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      420 LOADK                            R5 K36 ["%*\"version\" > Expected string, got %*"]
      421 MOVE                             R7 R2
      422 GETTABLEKS                       R9 R0 K35 ["version"]
      424 FASTCALL1                        TYPEOF R9 ; [+2]
      425 GETIMPORT                        R8 K1 [typeof]
      427 CALL                             R8 1 1
      428 NAMECALL                         R5 R5 K4 ["format"]
      430 CALL                             R5 3 1
      431 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      433 MOVE                             R4 R1
      434 GETIMPORT                        R3 K6 [table.insert]
      436 CALL                             R3 2 0
      437 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["moderationDecisionVerdict"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["moderationDecisionVerdict"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["moderationDecisionVerdict"]
       16 GETTABLEKS                       R2 R1 K5 ["moderationDecisions"]
       18 JUMPIFEQKNIL                     R2 ; [+23]
       20 GETIMPORT                        R2 K2 [table.clone]
       22 GETTABLEKS                       R3 R1 K5 ["moderationDecisions"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K5 ["moderationDecisions"]
       27 GETTABLEKS                       R2 R1 K5 ["moderationDecisions"]
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 GETTABLEKS                       R7 R1 K5 ["moderationDecisions"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 1
       39 SETTABLE                         R8 R7 R5
       40 FORGLOOP                         R2 2 ; [-9]
       42 GETTABLEKS                       R2 R1 K6 ["tags"]
       44 JUMPIFEQKNIL                     R2 ; [+23]
       46 GETIMPORT                        R2 K2 [table.clone]
       48 GETTABLEKS                       R3 R1 K6 ["tags"]
       50 CALL                             R2 1 1
       51 SETTABLEKS                       R2 R1 K6 ["tags"]
       53 GETTABLEKS                       R2 R1 K6 ["tags"]
       55 LOADNIL                          R3
       56 LOADNIL                          R4
       57 FORGPREP                         R2
       58 GETTABLEKS                       R7 R1 K6 ["tags"]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       63 MOVE                             R9 R6
       64 CALL                             R8 1 1
       65 SETTABLE                         R8 R7 R5
       66 FORGLOOP                         R2 2 ; [-9]
       68 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiAbuseReporting"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["ModerationDecision"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["TagValueList"]
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
