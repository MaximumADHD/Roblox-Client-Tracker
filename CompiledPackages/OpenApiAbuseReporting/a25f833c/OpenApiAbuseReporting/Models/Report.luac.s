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
       25 GETTABLEKS                       R3 R0 K7 ["created"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["created"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"created\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["created"]
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
       55 GETTABLEKS                       R3 R0 K10 ["enrichment"]
       57 JUMPIFEQKNIL                     R3 ; [+61]
       59 GETTABLEKS                       R4 R0 K10 ["enrichment"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       67 LOADK                            R6 K11 ["%*\"enrichment\" > Expected table, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["enrichment"]
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
       85 JUMP                             ; [+33]
       86 GETTABLEKS                       R3 R0 K10 ["enrichment"]
       88 LOADNIL                          R4
       89 LOADNIL                          R5
       90 FORGPREP                         R3
       91 FASTCALL1                        TYPEOF R6 ; [+3]
       92 MOVE                             R9 R6
       93 GETIMPORT                        R8 K1 [typeof]
       95 CALL                             R8 1 1
       96 JUMPIFEQKS                       R8 K12 ["number"] ; [+20]
       98 LOADK                            R11 K13 ["%*\"enrichment\" > Expected index of type number, got %* as %*"]
       99 MOVE                             R13 R2
      100 MOVE                             R14 R6
      101 FASTCALL1                        TYPEOF R6 ; [+3]
      102 MOVE                             R16 R6
      103 GETIMPORT                        R15 K1 [typeof]
      105 CALL                             R15 1 1
      106 NAMECALL                         R11 R11 K4 ["format"]
      108 CALL                             R11 4 1
      109 MOVE                             R10 R11
      110 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      112 MOVE                             R9 R1
      113 GETIMPORT                        R8 K6 [table.insert]
      115 CALL                             R8 2 0
      116 JUMP                             ; [0]
      117 FORGLOOP                         R3 2 ; [-27]
      119 GETTABLEKS                       R3 R0 K14 ["moderationDecisionVerdict"]
      121 JUMPIFEQKNIL                     R3 ; [+16]
      123 GETUPVAL                         R3 0
      124 GETTABLEKS                       R3 R3 K15 ["fromResponse"]
      126 GETTABLEKS                       R4 R0 K14 ["moderationDecisionVerdict"]
      128 MOVE                             R5 R1
      129 LOADK                            R7 K16 ["%*\"moderationDecisionVerdict\" > "]
      130 MOVE                             R9 R2
      131 NAMECALL                         R7 R7 K4 ["format"]
      133 CALL                             R7 2 1
      134 MOVE                             R6 R7
      135 CALL                             R3 3 1
      136 SETTABLEKS                       R3 R0 K14 ["moderationDecisionVerdict"]
      138 GETTABLEKS                       R3 R0 K17 ["moderationDecisions"]
      140 JUMPIFEQKNIL                     R3 ; [+77]
      142 GETTABLEKS                       R4 R0 K17 ["moderationDecisions"]
      144 FASTCALL1                        TYPEOF R4 ; [+2]
      145 GETIMPORT                        R3 K1 [typeof]
      147 CALL                             R3 1 1
      148 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      150 LOADK                            R6 K18 ["%*\"moderationDecisions\" > Expected table, got %*"]
      151 MOVE                             R8 R2
      152 GETTABLEKS                       R10 R0 K17 ["moderationDecisions"]
      154 FASTCALL1                        TYPEOF R10 ; [+2]
      155 GETIMPORT                        R9 K1 [typeof]
      157 CALL                             R9 1 1
      158 NAMECALL                         R6 R6 K4 ["format"]
      160 CALL                             R6 3 1
      161 MOVE                             R5 R6
      162 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      164 MOVE                             R4 R1
      165 GETIMPORT                        R3 K6 [table.insert]
      167 CALL                             R3 2 0
      168 JUMP                             ; [+49]
      169 GETTABLEKS                       R3 R0 K17 ["moderationDecisions"]
      171 LOADNIL                          R4
      172 LOADNIL                          R5
      173 FORGPREP                         R3
      174 FASTCALL1                        TYPEOF R6 ; [+3]
      175 MOVE                             R9 R6
      176 GETIMPORT                        R8 K1 [typeof]
      178 CALL                             R8 1 1
      179 JUMPIFEQKS                       R8 K12 ["number"] ; [+20]
      181 LOADK                            R11 K19 ["%*\"moderationDecisions\" > Expected index of type number, got %* as %*"]
      182 MOVE                             R13 R2
      183 MOVE                             R14 R6
      184 FASTCALL1                        TYPEOF R6 ; [+3]
      185 MOVE                             R16 R6
      186 GETIMPORT                        R15 K1 [typeof]
      188 CALL                             R15 1 1
      189 NAMECALL                         R11 R11 K4 ["format"]
      191 CALL                             R11 4 1
      192 MOVE                             R10 R11
      193 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      195 MOVE                             R9 R1
      196 GETIMPORT                        R8 K6 [table.insert]
      198 CALL                             R8 2 0
      199 JUMP                             ; [+16]
      200 GETTABLEKS                       R8 R0 K17 ["moderationDecisions"]
      202 GETUPVAL                         R9 0
      203 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      205 MOVE                             R10 R7
      206 MOVE                             R11 R1
      207 LOADK                            R13 K20 ["%*\"moderationDecisions\" > [%*] > "]
      208 MOVE                             R15 R2
      209 MOVE                             R16 R6
      210 NAMECALL                         R13 R13 K4 ["format"]
      212 CALL                             R13 3 1
      213 MOVE                             R12 R13
      214 CALL                             R9 3 1
      215 SETTABLE                         R9 R8 R6
      216 FORGLOOP                         R3 2 ; [-43]
      218 GETTABLEKS                       R4 R0 K21 ["reportId"]
      220 FASTCALL1                        TYPEOF R4 ; [+2]
      221 GETIMPORT                        R3 K1 [typeof]
      223 CALL                             R3 1 1
      224 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      226 LOADK                            R6 K22 ["%*\"reportId\" > Expected string, got %*"]
      227 MOVE                             R8 R2
      228 GETTABLEKS                       R10 R0 K21 ["reportId"]
      230 FASTCALL1                        TYPEOF R10 ; [+2]
      231 GETIMPORT                        R9 K1 [typeof]
      233 CALL                             R9 1 1
      234 NAMECALL                         R6 R6 K4 ["format"]
      236 CALL                             R6 3 1
      237 MOVE                             R5 R6
      238 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      240 MOVE                             R4 R1
      241 GETIMPORT                        R3 K6 [table.insert]
      243 CALL                             R3 2 0
      244 GETTABLEKS                       R4 R0 K23 ["submitterId"]
      246 FASTCALL1                        TYPEOF R4 ; [+2]
      247 GETIMPORT                        R3 K1 [typeof]
      249 CALL                             R3 1 1
      250 JUMPIFEQKS                       R3 K12 ["number"] ; [+19]
      252 LOADK                            R6 K24 ["%*\"submitterId\" > Expected number, got %*"]
      253 MOVE                             R8 R2
      254 GETTABLEKS                       R10 R0 K23 ["submitterId"]
      256 FASTCALL1                        TYPEOF R10 ; [+2]
      257 GETIMPORT                        R9 K1 [typeof]
      259 CALL                             R9 1 1
      260 NAMECALL                         R6 R6 K4 ["format"]
      262 CALL                             R6 3 1
      263 MOVE                             R5 R6
      264 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      266 MOVE                             R4 R1
      267 GETIMPORT                        R3 K6 [table.insert]
      269 CALL                             R3 2 0
      270 GETTABLEKS                       R4 R0 K25 ["submitterType"]
      272 FASTCALL1                        TYPEOF R4 ; [+2]
      273 GETIMPORT                        R3 K1 [typeof]
      275 CALL                             R3 1 1
      276 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      278 LOADK                            R6 K26 ["%*\"submitterType\" > Expected string, got %*"]
      279 MOVE                             R8 R2
      280 GETTABLEKS                       R10 R0 K25 ["submitterType"]
      282 FASTCALL1                        TYPEOF R10 ; [+2]
      283 GETIMPORT                        R9 K1 [typeof]
      285 CALL                             R9 1 1
      286 NAMECALL                         R6 R6 K4 ["format"]
      288 CALL                             R6 3 1
      289 MOVE                             R5 R6
      290 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      292 MOVE                             R4 R1
      293 GETIMPORT                        R3 K6 [table.insert]
      295 CALL                             R3 2 0
      296 GETTABLEKS                       R3 R0 K27 ["tags"]
      298 JUMPIFEQKNIL                     R3 ; [+77]
      300 GETTABLEKS                       R4 R0 K27 ["tags"]
      302 FASTCALL1                        TYPEOF R4 ; [+2]
      303 GETIMPORT                        R3 K1 [typeof]
      305 CALL                             R3 1 1
      306 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      308 LOADK                            R6 K28 ["%*\"tags\" > Expected table, got %*"]
      309 MOVE                             R8 R2
      310 GETTABLEKS                       R10 R0 K27 ["tags"]
      312 FASTCALL1                        TYPEOF R10 ; [+2]
      313 GETIMPORT                        R9 K1 [typeof]
      315 CALL                             R9 1 1
      316 NAMECALL                         R6 R6 K4 ["format"]
      318 CALL                             R6 3 1
      319 MOVE                             R5 R6
      320 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      322 MOVE                             R4 R1
      323 GETIMPORT                        R3 K6 [table.insert]
      325 CALL                             R3 2 0
      326 JUMP                             ; [+49]
      327 GETTABLEKS                       R3 R0 K27 ["tags"]
      329 LOADNIL                          R4
      330 LOADNIL                          R5
      331 FORGPREP                         R3
      332 FASTCALL1                        TYPEOF R6 ; [+3]
      333 MOVE                             R9 R6
      334 GETIMPORT                        R8 K1 [typeof]
      336 CALL                             R8 1 1
      337 JUMPIFEQKS                       R8 K8 ["string"] ; [+20]
      339 LOADK                            R11 K29 ["%*\"tags\" > Expected key of type string, got %* as %*"]
      340 MOVE                             R13 R2
      341 MOVE                             R14 R6
      342 FASTCALL1                        TYPEOF R6 ; [+3]
      343 MOVE                             R16 R6
      344 GETIMPORT                        R15 K1 [typeof]
      346 CALL                             R15 1 1
      347 NAMECALL                         R11 R11 K4 ["format"]
      349 CALL                             R11 4 1
      350 MOVE                             R10 R11
      351 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      353 MOVE                             R9 R1
      354 GETIMPORT                        R8 K6 [table.insert]
      356 CALL                             R8 2 0
      357 JUMP                             ; [+16]
      358 GETTABLEKS                       R8 R0 K27 ["tags"]
      360 GETUPVAL                         R9 1
      361 GETTABLEKS                       R9 R9 K15 ["fromResponse"]
      363 MOVE                             R10 R7
      364 MOVE                             R11 R1
      365 LOADK                            R13 K30 ["%*\"tags\" > [\"%*\"] > "]
      366 MOVE                             R15 R2
      367 MOVE                             R16 R6
      368 NAMECALL                         R13 R13 K4 ["format"]
      370 CALL                             R13 3 1
      371 MOVE                             R12 R13
      372 CALL                             R9 3 1
      373 SETTABLE                         R9 R8 R6
      374 FORGLOOP                         R3 2 ; [-43]
      376 GETTABLEKS                       R4 R0 K31 ["targetId"]
      378 FASTCALL1                        TYPEOF R4 ; [+2]
      379 GETIMPORT                        R3 K1 [typeof]
      381 CALL                             R3 1 1
      382 JUMPIFEQKS                       R3 K12 ["number"] ; [+19]
      384 LOADK                            R6 K32 ["%*\"targetId\" > Expected number, got %*"]
      385 MOVE                             R8 R2
      386 GETTABLEKS                       R10 R0 K31 ["targetId"]
      388 FASTCALL1                        TYPEOF R10 ; [+2]
      389 GETIMPORT                        R9 K1 [typeof]
      391 CALL                             R9 1 1
      392 NAMECALL                         R6 R6 K4 ["format"]
      394 CALL                             R6 3 1
      395 MOVE                             R5 R6
      396 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      398 MOVE                             R4 R1
      399 GETIMPORT                        R3 K6 [table.insert]
      401 CALL                             R3 2 0
      402 GETTABLEKS                       R4 R0 K33 ["targetType"]
      404 FASTCALL1                        TYPEOF R4 ; [+2]
      405 GETIMPORT                        R3 K1 [typeof]
      407 CALL                             R3 1 1
      408 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      410 LOADK                            R6 K34 ["%*\"targetType\" > Expected string, got %*"]
      411 MOVE                             R8 R2
      412 GETTABLEKS                       R10 R0 K33 ["targetType"]
      414 FASTCALL1                        TYPEOF R10 ; [+2]
      415 GETIMPORT                        R9 K1 [typeof]
      417 CALL                             R9 1 1
      418 NAMECALL                         R6 R6 K4 ["format"]
      420 CALL                             R6 3 1
      421 MOVE                             R5 R6
      422 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      424 MOVE                             R4 R1
      425 GETIMPORT                        R3 K6 [table.insert]
      427 CALL                             R3 2 0
      428 GETTABLEKS                       R4 R0 K35 ["version"]
      430 FASTCALL1                        TYPEOF R4 ; [+2]
      431 GETIMPORT                        R3 K1 [typeof]
      433 CALL                             R3 1 1
      434 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      436 LOADK                            R6 K36 ["%*\"version\" > Expected string, got %*"]
      437 MOVE                             R8 R2
      438 GETTABLEKS                       R10 R0 K35 ["version"]
      440 FASTCALL1                        TYPEOF R10 ; [+2]
      441 GETIMPORT                        R9 K1 [typeof]
      443 CALL                             R9 1 1
      444 NAMECALL                         R6 R6 K4 ["format"]
      446 CALL                             R6 3 1
      447 MOVE                             R5 R6
      448 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      450 MOVE                             R4 R1
      451 GETIMPORT                        R3 K6 [table.insert]
      453 CALL                             R3 2 0
      454 RETURN                           R0 1

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
