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
       24 GETTABLEKS                       R3 R0 K7 ["accessCode"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["accessCode"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"accessCode\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["accessCode"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["gameJoinAttemptId"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["gameJoinAttemptId"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"gameJoinAttemptId\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["gameJoinAttemptId"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["placeId"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["placeId"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"placeId\" > Expected number, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["placeId"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K15 ["gamerTag"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K15 ["gamerTag"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      123 LOADK                            R5 K16 ["%*\"gamerTag\" > Expected string, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K15 ["gamerTag"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K17 ["isPlayTogetherGame"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K17 ["isPlayTogetherGame"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      152 LOADK                            R5 K19 ["%*\"isPlayTogetherGame\" > Expected boolean, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K17 ["isPlayTogetherGame"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K20 ["browserTrackerId"]
      171 JUMPIFEQKNIL                     R3 ; [+26]
      173 GETTABLEKS                       R4 R0 K20 ["browserTrackerId"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K13 ["number"] ; [+18]
      181 LOADK                            R5 K21 ["%*\"browserTrackerId\" > Expected number, got %*"]
      182 MOVE                             R7 R2
      183 GETTABLEKS                       R9 R0 K20 ["browserTrackerId"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K1 [typeof]
      188 CALL                             R8 1 1
      189 NAMECALL                         R5 R5 K4 ["format"]
      191 CALL                             R5 3 1
      192 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      194 MOVE                             R4 R1
      195 GETIMPORT                        R3 K6 [table.insert]
      197 CALL                             R3 2 0
      198 GETTABLEKS                       R3 R0 K22 ["isTeleport"]
      200 JUMPIFEQKNIL                     R3 ; [+26]
      202 GETTABLEKS                       R4 R0 K22 ["isTeleport"]
      204 FASTCALL1                        TYPEOF R4 ; [+2]
      205 GETIMPORT                        R3 K1 [typeof]
      207 CALL                             R3 1 1
      208 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      210 LOADK                            R5 K23 ["%*\"isTeleport\" > Expected boolean, got %*"]
      211 MOVE                             R7 R2
      212 GETTABLEKS                       R9 R0 K22 ["isTeleport"]
      214 FASTCALL1                        TYPEOF R9 ; [+2]
      215 GETIMPORT                        R8 K1 [typeof]
      217 CALL                             R8 1 1
      218 NAMECALL                         R5 R5 K4 ["format"]
      220 CALL                             R5 3 1
      221 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      223 MOVE                             R4 R1
      224 GETIMPORT                        R3 K6 [table.insert]
      226 CALL                             R3 2 0
      227 GETTABLEKS                       R3 R0 K24 ["teleportToken"]
      229 JUMPIFEQKNIL                     R3 ; [+26]
      231 GETTABLEKS                       R4 R0 K24 ["teleportToken"]
      233 FASTCALL1                        TYPEOF R4 ; [+2]
      234 GETIMPORT                        R3 K1 [typeof]
      236 CALL                             R3 1 1
      237 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      239 LOADK                            R5 K25 ["%*\"teleportToken\" > Expected string, got %*"]
      240 MOVE                             R7 R2
      241 GETTABLEKS                       R9 R0 K24 ["teleportToken"]
      243 FASTCALL1                        TYPEOF R9 ; [+2]
      244 GETIMPORT                        R8 K1 [typeof]
      246 CALL                             R8 1 1
      247 NAMECALL                         R5 R5 K4 ["format"]
      249 CALL                             R5 3 1
      250 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      252 MOVE                             R4 R1
      253 GETIMPORT                        R3 K6 [table.insert]
      255 CALL                             R3 2 0
      256 GETTABLEKS                       R3 R0 K26 ["isQueueAllowedOverride"]
      258 JUMPIFEQKNIL                     R3 ; [+26]
      260 GETTABLEKS                       R4 R0 K26 ["isQueueAllowedOverride"]
      262 FASTCALL1                        TYPEOF R4 ; [+2]
      263 GETIMPORT                        R3 K1 [typeof]
      265 CALL                             R3 1 1
      266 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      268 LOADK                            R5 K27 ["%*\"isQueueAllowedOverride\" > Expected boolean, got %*"]
      269 MOVE                             R7 R2
      270 GETTABLEKS                       R9 R0 K26 ["isQueueAllowedOverride"]
      272 FASTCALL1                        TYPEOF R9 ; [+2]
      273 GETIMPORT                        R8 K1 [typeof]
      275 CALL                             R8 1 1
      276 NAMECALL                         R5 R5 K4 ["format"]
      278 CALL                             R5 3 1
      279 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      281 MOVE                             R4 R1
      282 GETIMPORT                        R3 K6 [table.insert]
      284 CALL                             R3 2 0
      285 GETTABLEKS                       R3 R0 K28 ["isImmersiveAdsTeleport"]
      287 JUMPIFEQKNIL                     R3 ; [+26]
      289 GETTABLEKS                       R4 R0 K28 ["isImmersiveAdsTeleport"]
      291 FASTCALL1                        TYPEOF R4 ; [+2]
      292 GETIMPORT                        R3 K1 [typeof]
      294 CALL                             R3 1 1
      295 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      297 LOADK                            R5 K29 ["%*\"isImmersiveAdsTeleport\" > Expected boolean, got %*"]
      298 MOVE                             R7 R2
      299 GETTABLEKS                       R9 R0 K28 ["isImmersiveAdsTeleport"]
      301 FASTCALL1                        TYPEOF R9 ; [+2]
      302 GETIMPORT                        R8 K1 [typeof]
      304 CALL                             R8 1 1
      305 NAMECALL                         R5 R5 K4 ["format"]
      307 CALL                             R5 3 1
      308 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      310 MOVE                             R4 R1
      311 GETIMPORT                        R3 K6 [table.insert]
      313 CALL                             R3 2 0
      314 GETTABLEKS                       R3 R0 K30 ["channelName"]
      316 JUMPIFEQKNIL                     R3 ; [+26]
      318 GETTABLEKS                       R4 R0 K30 ["channelName"]
      320 FASTCALL1                        TYPEOF R4 ; [+2]
      321 GETIMPORT                        R3 K1 [typeof]
      323 CALL                             R3 1 1
      324 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      326 LOADK                            R5 K31 ["%*\"channelName\" > Expected string, got %*"]
      327 MOVE                             R7 R2
      328 GETTABLEKS                       R9 R0 K30 ["channelName"]
      330 FASTCALL1                        TYPEOF R9 ; [+2]
      331 GETIMPORT                        R8 K1 [typeof]
      333 CALL                             R8 1 1
      334 NAMECALL                         R5 R5 K4 ["format"]
      336 CALL                             R5 3 1
      337 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      339 MOVE                             R4 R1
      340 GETIMPORT                        R3 K6 [table.insert]
      342 CALL                             R3 2 0
      343 GETTABLEKS                       R3 R0 K32 ["joinOrigin"]
      345 JUMPIFEQKNIL                     R3 ; [+26]
      347 GETTABLEKS                       R4 R0 K32 ["joinOrigin"]
      349 FASTCALL1                        TYPEOF R4 ; [+2]
      350 GETIMPORT                        R3 K1 [typeof]
      352 CALL                             R3 1 1
      353 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      355 LOADK                            R5 K33 ["%*\"joinOrigin\" > Expected string, got %*"]
      356 MOVE                             R7 R2
      357 GETTABLEKS                       R9 R0 K32 ["joinOrigin"]
      359 FASTCALL1                        TYPEOF R9 ; [+2]
      360 GETIMPORT                        R8 K1 [typeof]
      362 CALL                             R8 1 1
      363 NAMECALL                         R5 R5 K4 ["format"]
      365 CALL                             R5 3 1
      366 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      368 MOVE                             R4 R1
      369 GETIMPORT                        R3 K6 [table.insert]
      371 CALL                             R3 2 0
      372 GETTABLEKS                       R3 R0 K34 ["partyId"]
      374 JUMPIFEQKNIL                     R3 ; [+26]
      376 GETTABLEKS                       R4 R0 K34 ["partyId"]
      378 FASTCALL1                        TYPEOF R4 ; [+2]
      379 GETIMPORT                        R3 K1 [typeof]
      381 CALL                             R3 1 1
      382 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      384 LOADK                            R5 K35 ["%*\"partyId\" > Expected string, got %*"]
      385 MOVE                             R7 R2
      386 GETTABLEKS                       R9 R0 K34 ["partyId"]
      388 FASTCALL1                        TYPEOF R9 ; [+2]
      389 GETIMPORT                        R8 K1 [typeof]
      391 CALL                             R8 1 1
      392 NAMECALL                         R5 R5 K4 ["format"]
      394 CALL                             R5 3 1
      395 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      397 MOVE                             R4 R1
      398 GETIMPORT                        R3 K6 [table.insert]
      400 CALL                             R3 2 0
      401 GETTABLEKS                       R3 R0 K36 ["popUdpProbeReport"]
      403 JUMPIFEQKNIL                     R3 ; [+15]
      405 GETUPVAL                         R3 0
      406 GETTABLEKS                       R3 R3 K37 ["fromResponse"]
      408 GETTABLEKS                       R4 R0 K36 ["popUdpProbeReport"]
      410 MOVE                             R5 R1
      411 LOADK                            R6 K38 ["%*\"popUdpProbeReport\" > "]
      412 MOVE                             R8 R2
      413 NAMECALL                         R6 R6 K4 ["format"]
      415 CALL                             R6 2 1
      416 CALL                             R3 3 1
      417 SETTABLEKS                       R3 R0 K36 ["popUdpProbeReport"]
      419 GETTABLEKS                       R3 R0 K39 ["dataModelRecording"]
      421 JUMPIFEQKNIL                     R3 ; [+26]
      423 GETTABLEKS                       R4 R0 K39 ["dataModelRecording"]
      425 FASTCALL1                        TYPEOF R4 ; [+2]
      426 GETIMPORT                        R3 K1 [typeof]
      428 CALL                             R3 1 1
      429 JUMPIFEQKS                       R3 K18 ["boolean"] ; [+18]
      431 LOADK                            R5 K40 ["%*\"dataModelRecording\" > Expected boolean, got %*"]
      432 MOVE                             R7 R2
      433 GETTABLEKS                       R9 R0 K39 ["dataModelRecording"]
      435 FASTCALL1                        TYPEOF R9 ; [+2]
      436 GETIMPORT                        R8 K1 [typeof]
      438 CALL                             R8 1 1
      439 NAMECALL                         R5 R5 K4 ["format"]
      441 CALL                             R5 3 1
      442 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      444 MOVE                             R4 R1
      445 GETIMPORT                        R3 K6 [table.insert]
      447 CALL                             R3 2 0
      448 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["popUdpProbeReport"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["popUdpProbeReport"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["popUdpProbeReport"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["PopUdpProbeReport"]
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
