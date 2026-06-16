PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["asyncError"]
        2 LOADK                            R2 K1 ["Invalid: %s() may not be used in a describe block containing no tests."]
        3 GETTABLEKS                       R4 R0 K2 ["type"]
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K4 ["message"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["unhandledErrors"]
       13 GETTABLEKS                       R3 R0 K0 ["asyncError"]
       15 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       17 GETIMPORT                        R1 K8 [table.insert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 JUMPIFNOTEQKS                    R2 K1 ["test"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["mode"]
        7 JUMPIFEQKS                       R2 K3 ["only"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["test"] ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["toJSBoolean"]
        7 GETTABLEKS                       R2 R0 K3 ["mode"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+5]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["mode"]
       14 SETTABLEKS                       R1 R0 K3 ["mode"]
       16 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 JUMPIFNOTEQKS                    R2 K1 ["test"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["mode"]
        7 JUMPIFEQKS                       R2 K3 ["only"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 JUMPIFNOTEQKS                    R3 K1 ["include_test_location_in_result"] ; [+5]
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K2 ["includeTestLocationInResult"]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R1 K0 ["name"]
       10 JUMPIFNOTEQKS                    R3 K3 ["hook_start"] ; [+7]
       12 GETTABLEKS                       R3 R1 K4 ["hook"]
       14 LOADB                            R4 0
       15 SETTABLEKS                       R4 R3 K5 ["seenDone"]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R1 K0 ["name"]
       20 JUMPIFNOTEQKS                    R3 K6 ["start_describe_definition"] ; [+45]
       22 GETTABLEKS                       R3 R1 K7 ["blockName"]
       24 GETTABLEKS                       R4 R1 K8 ["mode"]
       26 GETTABLEKS                       R5 R2 K9 ["currentDescribeBlock"]
       28 GETTABLEKS                       R6 R2 K10 ["currentlyRunningTest"]
       30 JUMPIFEQKNIL                     R6 ; [+19]
       32 GETTABLEKS                       R8 R6 K11 ["errors"]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K12 ["new"]
       37 LOADK                            R10 K13 ["Cannot nest a describe inside a test. Describe block \"%s\" cannot run because it is nested within \"%s\"."]
       38 MOVE                             R12 R3
       39 GETTABLEKS                       R13 R6 K0 ["name"]
       41 NAMECALL                         R10 R10 K14 ["format"]
       43 CALL                             R10 3 -1
       44 CALL                             R9 -1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R7 K17 [table.insert]
       48 CALL                             R7 -1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R7 1
       51 MOVE                             R8 R3
       52 MOVE                             R9 R5
       53 MOVE                             R10 R4
       54 CALL                             R7 3 1
       55 GETTABLEKS                       R9 R5 K18 ["children"]
       57 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       59 MOVE                             R10 R7
       60 GETIMPORT                        R8 K17 [table.insert]
       62 CALL                             R8 2 0
       63 SETTABLEKS                       R7 R2 K9 ["currentDescribeBlock"]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R3 R1 K0 ["name"]
       68 JUMPIFNOTEQKS                    R3 K19 ["finish_describe_definition"] ; [+77]
       70 GETTABLEKS                       R3 R2 K9 ["currentDescribeBlock"]
       72 GETUPVAL                         R4 2
       73 MOVE                             R5 R3
       74 LOADK                            R6 K20 ["currentDescribeBlock must be there"]
       75 CALL                             R4 2 0
       76 GETUPVAL                         R4 3
       77 GETTABLEKS                       R4 R4 K21 ["toJSBoolean"]
       79 GETUPVAL                         R5 4
       80 MOVE                             R6 R3
       81 CALL                             R5 1 -1
       82 CALL                             R4 -1 1
       83 JUMPIF                           R4 ; [+8]
       84 GETUPVAL                         R4 5
       85 GETTABLEKS                       R4 R4 K22 ["forEach"]
       87 GETTABLEKS                       R5 R3 K23 ["hooks"]
       89 NEWCLOSURE                       R6 P0
       90 CAPTURE                          VAL R2
       91 CALL                             R4 2 0
       92 LOADB                            R5 0
       93 GETTABLEKS                       R6 R3 K8 ["mode"]
       95 JUMPIFNOTEQKS                    R6 K24 ["only"] ; [+8]
       97 GETUPVAL                         R5 5
       98 GETTABLEKS                       R5 R5 K25 ["some"]
      100 GETTABLEKS                       R6 R3 K18 ["children"]
      102 DUPCLOSURE                       R7 K26 [PROTO_1]
      103 CALL                             R5 2 1
      104 NOT                              R4 R5
      105 JUMPIFNOT                        R4 ; [+9]
      106 GETUPVAL                         R5 5
      107 GETTABLEKS                       R5 R5 K22 ["forEach"]
      109 GETTABLEKS                       R6 R3 K18 ["children"]
      111 NEWCLOSURE                       R7 P2
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          VAL R3
      114 CALL                             R5 2 0
      115 GETUPVAL                         R5 3
      116 GETTABLEKS                       R5 R5 K21 ["toJSBoolean"]
      118 GETTABLEKS                       R6 R2 K27 ["hasFocusedTests"]
      120 CALL                             R5 1 1
      121 JUMPIF                           R5 ; [+15]
      122 GETTABLEKS                       R5 R3 K8 ["mode"]
      124 JUMPIFEQKS                       R5 K28 ["skip"] ; [+12]
      126 GETUPVAL                         R5 5
      127 GETTABLEKS                       R5 R5 K25 ["some"]
      129 GETTABLEKS                       R6 R3 K18 ["children"]
      131 DUPCLOSURE                       R7 K29 [PROTO_3]
      132 CALL                             R5 2 1
      133 JUMPIFNOT                        R5 ; [+3]
      134 LOADB                            R5 1
      135 SETTABLEKS                       R5 R2 K27 ["hasFocusedTests"]
      137 GETTABLEKS                       R5 R3 K30 ["parent"]
      139 JUMPIFEQKNIL                     R5 ; [+438]
      141 GETTABLEKS                       R5 R3 K30 ["parent"]
      143 SETTABLEKS                       R5 R2 K9 ["currentDescribeBlock"]
      145 RETURN                           R0 0
      146 GETTABLEKS                       R3 R1 K0 ["name"]
      148 JUMPIFNOTEQKS                    R3 K31 ["add_hook"] ; [+75]
      150 GETTABLEKS                       R3 R2 K9 ["currentDescribeBlock"]
      152 GETTABLEKS                       R4 R2 K10 ["currentlyRunningTest"]
      154 GETTABLEKS                       R5 R2 K32 ["hasStarted"]
      156 GETTABLEKS                       R6 R1 K33 ["asyncError"]
      158 GETTABLEKS                       R7 R1 K34 ["fn"]
      160 GETTABLEKS                       R8 R1 K35 ["hookType"]
      162 GETTABLEKS                       R9 R1 K36 ["timeout"]
      164 JUMPIFEQKNIL                     R4 ; [+19]
      166 GETTABLEKS                       R11 R4 K11 ["errors"]
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R12 R12 K12 ["new"]
      171 LOADK                            R13 K37 ["Hooks cannot be defined inside tests. Hook of type \"%s\" is nested within \"%s\"."]
      172 MOVE                             R15 R8
      173 GETTABLEKS                       R16 R4 K0 ["name"]
      175 NAMECALL                         R13 R13 K14 ["format"]
      177 CALL                             R13 3 -1
      178 CALL                             R12 -1 -1
      179 FASTCALL                         TABLE_INSERT ; [+2]
      180 GETIMPORT                        R10 K17 [table.insert]
      182 CALL                             R10 -1 0
      183 RETURN                           R0 0
      184 GETUPVAL                         R10 3
      185 GETTABLEKS                       R10 R10 K21 ["toJSBoolean"]
      187 MOVE                             R11 R5
      188 CALL                             R10 1 1
      189 JUMPIFNOT                        R10 ; [+12]
      190 GETTABLEKS                       R11 R2 K38 ["unhandledErrors"]
      192 GETUPVAL                         R12 0
      193 GETTABLEKS                       R12 R12 K12 ["new"]
      195 LOADK                            R13 K39 ["Cannot add a hook after tests have started running. Hooks must be defined synchronously."]
      196 CALL                             R12 1 -1
      197 FASTCALL                         TABLE_INSERT ; [+2]
      198 GETIMPORT                        R10 K17 [table.insert]
      200 CALL                             R10 -1 0
      201 RETURN                           R0 0
      202 GETTABLEKS                       R11 R3 K23 ["hooks"]
      204 DUPTABLE                         R12 K41 [{"asyncError", "fn", "parent", "seenDone", "timeout", "type"}]
      205 SETTABLEKS                       R6 R12 K33 ["asyncError"]
      207 SETTABLEKS                       R7 R12 K34 ["fn"]
      209 SETTABLEKS                       R3 R12 K30 ["parent"]
      211 LOADB                            R13 0
      212 SETTABLEKS                       R13 R12 K5 ["seenDone"]
      214 SETTABLEKS                       R9 R12 K36 ["timeout"]
      216 SETTABLEKS                       R8 R12 K40 ["type"]
      218 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      220 GETIMPORT                        R10 K17 [table.insert]
      222 CALL                             R10 2 0
      223 RETURN                           R0 0
      224 GETTABLEKS                       R3 R1 K0 ["name"]
      226 JUMPIFNOTEQKS                    R3 K42 ["add_test"] ; [+94]
      228 GETTABLEKS                       R3 R2 K9 ["currentDescribeBlock"]
      230 GETTABLEKS                       R4 R2 K10 ["currentlyRunningTest"]
      232 GETTABLEKS                       R5 R2 K32 ["hasStarted"]
      234 GETTABLEKS                       R6 R1 K33 ["asyncError"]
      236 GETTABLEKS                       R7 R1 K34 ["fn"]
      238 GETTABLEKS                       R8 R1 K8 ["mode"]
      240 GETTABLEKS                       R9 R1 K43 ["testName"]
      242 GETTABLEKS                       R10 R1 K36 ["timeout"]
      244 GETTABLEKS                       R11 R1 K44 ["failing"]
      246 JUMPIFEQKNIL                     R4 ; [+19]
      248 GETTABLEKS                       R13 R4 K11 ["errors"]
      250 GETUPVAL                         R14 0
      251 GETTABLEKS                       R14 R14 K12 ["new"]
      253 LOADK                            R15 K45 ["Tests cannot be nested. Test \"%s\" cannot run because it is nested within \"%s\"."]
      254 MOVE                             R17 R9
      255 GETTABLEKS                       R18 R4 K0 ["name"]
      257 NAMECALL                         R15 R15 K14 ["format"]
      259 CALL                             R15 3 -1
      260 CALL                             R14 -1 -1
      261 FASTCALL                         TABLE_INSERT ; [+2]
      262 GETIMPORT                        R12 K17 [table.insert]
      264 CALL                             R12 -1 0
      265 RETURN                           R0 0
      266 GETUPVAL                         R12 3
      267 GETTABLEKS                       R12 R12 K21 ["toJSBoolean"]
      269 MOVE                             R13 R5
      270 CALL                             R12 1 1
      271 JUMPIFNOT                        R12 ; [+12]
      272 GETTABLEKS                       R13 R2 K38 ["unhandledErrors"]
      274 GETUPVAL                         R14 0
      275 GETTABLEKS                       R14 R14 K12 ["new"]
      277 LOADK                            R15 K46 ["Cannot add a test after tests have started running. Tests must be defined synchronously."]
      278 CALL                             R14 1 -1
      279 FASTCALL                         TABLE_INSERT ; [+2]
      280 GETIMPORT                        R12 K17 [table.insert]
      282 CALL                             R12 -1 0
      283 RETURN                           R0 0
      284 GETUPVAL                         R12 6
      285 MOVE                             R13 R7
      286 MOVE                             R14 R8
      287 MOVE                             R15 R9
      288 MOVE                             R16 R3
      289 MOVE                             R17 R10
      290 MOVE                             R18 R6
      291 MOVE                             R19 R11
      292 CALL                             R12 7 1
      293 GETTABLEKS                       R13 R3 K8 ["mode"]
      295 JUMPIFEQKS                       R13 K28 ["skip"] ; [+8]
      297 GETTABLEKS                       R13 R12 K8 ["mode"]
      299 JUMPIFNOTEQKS                    R13 K24 ["only"] ; [+4]
      301 LOADB                            R13 1
      302 SETTABLEKS                       R13 R2 K27 ["hasFocusedTests"]
      304 GETTABLEKS                       R14 R3 K18 ["children"]
      306 FASTCALL2                        TABLE_INSERT R14 R12 ; [+4]
      308 MOVE                             R15 R12
      309 GETIMPORT                        R13 K17 [table.insert]
      311 CALL                             R13 2 0
      312 GETTABLEKS                       R14 R3 K47 ["tests"]
      314 FASTCALL2                        TABLE_INSERT R14 R12 ; [+4]
      316 MOVE                             R15 R12
      317 GETIMPORT                        R13 K17 [table.insert]
      319 CALL                             R13 2 0
      320 RETURN                           R0 0
      321 GETTABLEKS                       R3 R1 K0 ["name"]
      323 JUMPIFNOTEQKS                    R3 K48 ["hook_failure"] ; [+59]
      325 GETTABLEKS                       R3 R1 K49 ["test"]
      327 GETTABLEKS                       R4 R1 K50 ["describeBlock"]
      329 GETTABLEKS                       R5 R1 K51 ["error"]
      331 GETTABLEKS                       R6 R1 K4 ["hook"]
      333 GETTABLEKS                       R7 R6 K33 ["asyncError"]
      335 GETTABLEKS                       R8 R6 K40 ["type"]
      337 JUMPIFNOTEQKS                    R8 K52 ["beforeAll"] ; [+11]
      339 GETUPVAL                         R9 2
      340 MOVE                             R10 R4
      341 LOADK                            R11 K53 ["always present for `*All` hooks"]
      342 CALL                             R9 2 0
      343 GETUPVAL                         R9 7
      344 MOVE                             R10 R4
      345 MOVE                             R11 R5
      346 MOVE                             R12 R7
      347 CALL                             R9 3 0
      348 RETURN                           R0 0
      349 JUMPIFNOTEQKS                    R8 K54 ["afterAll"] ; [+15]
      351 GETTABLEKS                       R10 R2 K38 ["unhandledErrors"]
      353 NEWTABLE                         R11 0 2
      355 MOVE                             R12 R5
      356 MOVE                             R13 R7
      357 SETLIST                          R11 R12 2 [1]
      359 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      361 GETIMPORT                        R9 K17 [table.insert]
      363 CALL                             R9 2 0
      364 RETURN                           R0 0
      365 GETUPVAL                         R9 2
      366 MOVE                             R10 R3
      367 LOADK                            R11 K55 ["always present for `*Each` hooks"]
      368 CALL                             R9 2 0
      369 GETTABLEKS                       R10 R3 K11 ["errors"]
      371 NEWTABLE                         R11 0 2
      373 MOVE                             R12 R5
      374 MOVE                             R13 R7
      375 SETLIST                          R11 R12 2 [1]
      377 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      379 GETIMPORT                        R9 K17 [table.insert]
      381 CALL                             R9 2 0
      382 RETURN                           R0 0
      383 GETTABLEKS                       R3 R1 K0 ["name"]
      385 JUMPIFNOTEQKS                    R3 K56 ["test_skip"] ; [+7]
      387 GETTABLEKS                       R3 R1 K49 ["test"]
      389 LOADK                            R4 K28 ["skip"]
      390 SETTABLEKS                       R4 R3 K57 ["status"]
      392 RETURN                           R0 0
      393 GETTABLEKS                       R3 R1 K0 ["name"]
      395 JUMPIFNOTEQKS                    R3 K58 ["test_todo"] ; [+7]
      397 GETTABLEKS                       R3 R1 K49 ["test"]
      399 LOADK                            R4 K59 ["todo"]
      400 SETTABLEKS                       R4 R3 K57 ["status"]
      402 RETURN                           R0 0
      403 GETTABLEKS                       R3 R1 K0 ["name"]
      405 JUMPIFNOTEQKS                    R3 K60 ["test_done"] ; [+18]
      407 GETTABLEKS                       R3 R1 K49 ["test"]
      409 GETUPVAL                         R4 8
      410 GETTABLEKS                       R5 R1 K49 ["test"]
      412 CALL                             R4 1 1
      413 SETTABLEKS                       R4 R3 K61 ["duration"]
      415 GETTABLEKS                       R3 R1 K49 ["test"]
      417 LOADK                            R4 K62 ["done"]
      418 SETTABLEKS                       R4 R3 K57 ["status"]
      420 LOADNIL                          R3
      421 SETTABLEKS                       R3 R2 K10 ["currentlyRunningTest"]
      423 RETURN                           R0 0
      424 GETTABLEKS                       R3 R1 K0 ["name"]
      426 JUMPIFNOTEQKS                    R3 K63 ["test_start"] ; [+22]
      428 GETTABLEKS                       R3 R1 K49 ["test"]
      430 SETTABLEKS                       R3 R2 K10 ["currentlyRunningTest"]
      432 GETTABLEKS                       R3 R1 K49 ["test"]
      434 GETIMPORT                        R4 K66 [DateTime.now]
      436 CALL                             R4 0 1
      437 GETTABLEKS                       R4 R4 K67 ["UnixTimestampMillis"]
      439 SETTABLEKS                       R4 R3 K68 ["startedAt"]
      441 GETTABLEKS                       R3 R1 K49 ["test"]
      443 GETTABLEKS                       R4 R3 K69 ["invocations"]
      445 ADDK                             R4 R4 K70 [1]
      446 SETTABLEKS                       R4 R3 K69 ["invocations"]
      448 RETURN                           R0 0
      449 GETTABLEKS                       R3 R1 K0 ["name"]
      451 JUMPIFNOTEQKS                    R3 K71 ["test_fn_start"] ; [+7]
      453 GETTABLEKS                       R3 R1 K49 ["test"]
      455 LOADB                            R4 0
      456 SETTABLEKS                       R4 R3 K5 ["seenDone"]
      458 RETURN                           R0 0
      459 GETTABLEKS                       R3 R1 K0 ["name"]
      461 JUMPIFNOTEQKS                    R3 K72 ["test_fn_failure"] ; [+23]
      463 GETTABLEKS                       R3 R1 K51 ["error"]
      465 GETTABLEKS                       R4 R1 K49 ["test"]
      467 GETTABLEKS                       R4 R4 K33 ["asyncError"]
      469 GETTABLEKS                       R6 R1 K49 ["test"]
      471 GETTABLEKS                       R6 R6 K11 ["errors"]
      473 NEWTABLE                         R7 0 2
      475 MOVE                             R8 R3
      476 MOVE                             R9 R4
      477 SETLIST                          R7 R8 2 [1]
      479 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
      481 GETIMPORT                        R5 K17 [table.insert]
      483 CALL                             R5 2 0
      484 RETURN                           R0 0
      485 GETTABLEKS                       R3 R1 K0 ["name"]
      487 JUMPIFNOTEQKS                    R3 K73 ["test_retry"] ; [+8]
      489 GETTABLEKS                       R3 R1 K49 ["test"]
      491 NEWTABLE                         R4 0 0
      493 SETTABLEKS                       R4 R3 K11 ["errors"]
      495 RETURN                           R0 0
      496 GETTABLEKS                       R3 R1 K0 ["name"]
      498 JUMPIFNOTEQKS                    R3 K74 ["run_start"] ; [+20]
      500 LOADB                            R3 1
      501 SETTABLEKS                       R3 R2 K32 ["hasStarted"]
      503 GETUPVAL                         R3 3
      504 GETTABLEKS                       R3 R3 K21 ["toJSBoolean"]
      506 GETIMPORT                        R5 K76 [_G]
      508 GETUPVAL                         R6 9
      509 GETTABLE                         R4 R5 R6
      510 CALL                             R3 1 1
      511 JUMPIFNOT                        R3 ; [+66]
      512 GETIMPORT                        R4 K76 [_G]
      514 GETUPVAL                         R5 9
      515 GETTABLE                         R3 R4 R5
      516 SETTABLEKS                       R3 R2 K77 ["testTimeout"]
      518 RETURN                           R0 0
      519 GETTABLEKS                       R3 R1 K0 ["name"]
      521 JUMPIFNOTEQKS                    R3 K78 ["run_finish"] ; [+2]
      523 RETURN                           R0 0
      524 GETTABLEKS                       R3 R1 K0 ["name"]
      526 JUMPIFNOTEQKS                    R3 K79 ["setup"] ; [+16]
      528 GETUPVAL                         R3 3
      529 GETTABLEKS                       R3 R3 K21 ["toJSBoolean"]
      531 GETTABLEKS                       R4 R1 K80 ["testNamePattern"]
      533 CALL                             R3 1 1
      534 JUMPIFNOT                        R3 ; [+43]
      535 GETUPVAL                         R3 10
      536 GETTABLEKS                       R4 R1 K80 ["testNamePattern"]
      538 LOADK                            R5 K81 ["i"]
      539 CALL                             R3 2 1
      540 SETTABLEKS                       R3 R2 K80 ["testNamePattern"]
      542 RETURN                           R0 0
      543 GETTABLEKS                       R3 R1 K0 ["name"]
      545 JUMPIFNOTEQKS                    R3 K82 ["teardown"] ; [+2]
      547 RETURN                           R0 0
      548 GETTABLEKS                       R3 R1 K0 ["name"]
      550 JUMPIFNOTEQKS                    R3 K51 ["error"] ; [+27]
      552 GETTABLEKS                       R3 R2 K10 ["currentlyRunningTest"]
      554 JUMPIFEQKNIL                     R3 ; [+13]
      556 GETTABLEKS                       R4 R2 K10 ["currentlyRunningTest"]
      558 GETTABLEKS                       R4 R4 K11 ["errors"]
      560 GETTABLEKS                       R5 R1 K51 ["error"]
      562 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      564 GETIMPORT                        R3 K17 [table.insert]
      566 CALL                             R3 2 0
      567 RETURN                           R0 0
      568 GETTABLEKS                       R4 R2 K38 ["unhandledErrors"]
      570 GETTABLEKS                       R5 R1 K51 ["error"]
      572 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      574 GETIMPORT                        R3 K17 [table.insert]
      576 CALL                             R3 2 0
      577 RETURN                           R0 0
      578 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"error", "name"}]
        2 SETTABLEKS                       R0 R2 K0 ["error"]
        4 LOADK                            R3 K0 ["error"]
        5 SETTABLEKS                       R3 R2 K1 ["name"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["slice"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["uncaughtException"]
        5 NAMECALL                         R2 R2 K2 ["listeners"]
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["slice"]
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K3 ["unhandledRejection"]
       14 NAMECALL                         R3 R3 K2 ["listeners"]
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 1
       18 LOADK                            R5 K1 ["uncaughtException"]
       19 NAMECALL                         R3 R0 K4 ["removeAllListeners"]
       21 CALL                             R3 2 0
       22 LOADK                            R5 K3 ["unhandledRejection"]
       23 NAMECALL                         R3 R0 K4 ["removeAllListeners"]
       25 CALL                             R3 2 0
       26 LOADK                            R5 K1 ["uncaughtException"]
       27 GETUPVAL                         R6 2
       28 NAMECALL                         R3 R0 K5 ["on"]
       30 CALL                             R3 3 0
       31 LOADK                            R5 K3 ["unhandledRejection"]
       32 GETUPVAL                         R6 2
       33 NAMECALL                         R3 R0 K5 ["on"]
       35 CALL                             R3 3 0
       36 DUPTABLE                         R3 K6 [{"uncaughtException", "unhandledRejection"}]
       37 SETTABLEKS                       R1 R3 K1 ["uncaughtException"]
       39 SETTABLEKS                       R2 R3 K3 ["unhandledRejection"]
       41 RETURN                           R3 1

PROTO_8:
        0 LOADK                            R4 K0 ["uncaughtException"]
        1 GETUPVAL                         R5 0
        2 NAMECALL                         R2 R0 K1 ["removeListener"]
        4 CALL                             R2 3 0
        5 LOADK                            R4 K2 ["unhandledRejection"]
        6 GETUPVAL                         R5 0
        7 NAMECALL                         R2 R0 K1 ["removeListener"]
        9 CALL                             R2 3 0
       10 GETIMPORT                        R2 K4 [ipairs]
       12 GETTABLEKS                       R3 R1 K0 ["uncaughtException"]
       14 CALL                             R2 1 3
       15 FORGPREP_INEXT                   R2
       16 LOADK                            R9 K0 ["uncaughtException"]
       17 MOVE                             R10 R6
       18 NAMECALL                         R7 R0 K5 ["on"]
       20 CALL                             R7 3 0
       21 FORGLOOP                         R2 2 [inext] ; [-6]
       23 GETIMPORT                        R2 K4 [ipairs]
       25 GETTABLEKS                       R3 R1 K2 ["unhandledRejection"]
       27 CALL                             R2 1 3
       28 FORGPREP_INEXT                   R2
       29 LOADK                            R9 K2 ["unhandledRejection"]
       30 MOVE                             R10 R6
       31 NAMECALL                         R7 R0 K5 ["on"]
       33 CALL                             R7 3 0
       34 FORGLOOP                         R2 2 [inext] ; [-6]
       36 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 DUPTABLE                         R1 K11 [{"currentDescribeBlock", "currentlyRunningTest", "expand", "hasFocusedTests", "hasStarted", "includeTestLocationInResult", "parentProcess", "rootDescribeBlock", "testNamePattern", "testTimeout", "unhandledErrors"}]
        4 SETTABLEKS                       R0 R1 K0 ["currentDescribeBlock"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K1 ["currentlyRunningTest"]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K2 ["expand"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K3 ["hasFocusedTests"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K4 ["hasStarted"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K5 ["includeTestLocationInResult"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K6 ["parentProcess"]
       24 SETTABLEKS                       R0 R1 K7 ["rootDescribeBlock"]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K8 ["testNamePattern"]
       29 LOADN                            R2 136
       30 SETTABLEKS                       R2 R1 K9 ["testTimeout"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K10 ["unhandledErrors"]
       36 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 SETTABLE                         R0 R1 R2
        4 GETIMPORT                        R2 K1 [_G]
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R1 R2 R3
        8 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 MOVE                             R5 R4
        6 LOADNIL                          R6
        7 GETUPVAL                         R7 1
        8 GETUPVAL                         R8 2
        9 CALL                             R8 0 -1
       10 CALL                             R5 -1 1
       11 JUMPIFEQKNIL                     R5 ; [+4]
       13 NAMECALL                         R6 R5 K2 ["expect"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R0 2 [inext] ; [-12]
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K1 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_14:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 MOVE                             R6 R5
        6 LOADNIL                          R7
        7 MOVE                             R8 R0
        8 GETUPVAL                         R9 1
        9 CALL                             R9 0 -1
       10 CALL                             R6 -1 0
       11 FORGLOOP                         R1 2 [inext] ; [-7]
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R2 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R4 R2 K5 ["JestTypes"]
       15 CALL                             R3 1 1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 GETIMPORT                        R8 K4 [require]
       22 GETTABLEKS                       R9 R2 K6 ["LuauPolyfill"]
       24 CALL                             R8 1 1
       25 GETTABLEKS                       R9 R8 K7 ["Array"]
       27 GETTABLEKS                       R10 R8 K8 ["Boolean"]
       29 GETTABLEKS                       R11 R8 K9 ["Error"]
       31 GETIMPORT                        R12 K4 [require]
       33 GETTABLEKS                       R13 R2 K10 ["RegExp"]
       35 CALL                             R12 1 1
       36 GETIMPORT                        R13 K4 [require]
       38 GETIMPORT                        R14 K1 [script]
       40 GETTABLEKS                       R14 R14 K2 ["Parent"]
       42 GETTABLEKS                       R14 R14 K11 ["types"]
       44 CALL                             R13 1 1
       45 GETTABLEKS                       R13 R13 K12 ["TEST_TIMEOUT_SYMBOL"]
       47 GETIMPORT                        R14 K4 [require]
       49 GETIMPORT                        R15 K1 [script]
       51 GETTABLEKS                       R15 R15 K2 ["Parent"]
       53 GETTABLEKS                       R15 R15 K13 ["utils"]
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R15 R14 K14 ["addErrorToEachTestUnderDescribe"]
       58 GETTABLEKS                       R16 R14 K15 ["describeBlockHasTests"]
       60 GETTABLEKS                       R17 R14 K16 ["getTestDuration"]
       62 GETTABLEKS                       R18 R14 K17 ["invariant"]
       64 GETTABLEKS                       R19 R14 K18 ["makeDescribe"]
       66 GETTABLEKS                       R20 R14 K19 ["makeTest"]
       68 DUPCLOSURE                       R5 K20 [PROTO_4]
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R19
       71 CAPTURE                          VAL R18
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R16
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R20
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R17
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R12
       80 SETTABLEKS                       R5 R0 K21 ["eventHandler"]
       82 GETIMPORT                        R8 K4 [require]
       84 GETTABLEKS                       R9 R2 K6 ["LuauPolyfill"]
       86 CALL                             R8 1 1
       87 GETTABLEKS                       R9 R8 K7 ["Array"]
       89 DUPTABLE                         R10 K23 [{"listeners"}]
       90 DUPCLOSURE                       R11 K24 [PROTO_5]
       91 SETTABLEKS                       R11 R10 K22 ["listeners"]
       93 LOADNIL                          R11
       94 NEWCLOSURE                       R11 P2
       95 CAPTURE                          REF R4
       96 NEWCLOSURE                       R6 P3
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          REF R11
      100 SETTABLEKS                       R6 R0 K25 ["injectGlobalErrorHandlers"]
      102 NEWCLOSURE                       R7 P4
      103 CAPTURE                          REF R11
      104 SETTABLEKS                       R7 R0 K26 ["restoreGlobalErrorHandlers"]
      106 CLOSEUPVALS                      R11
      107 GETIMPORT                        R8 K4 [require]
      109 GETTABLEKS                       R9 R2 K6 ["LuauPolyfill"]
      111 CALL                             R8 1 1
      112 GETIMPORT                        R9 K4 [require]
      114 GETTABLEKS                       R10 R2 K27 ["Promise"]
      116 CALL                             R9 1 1
      117 GETIMPORT                        R10 K4 [require]
      119 GETIMPORT                        R11 K1 [script]
      121 GETTABLEKS                       R11 R11 K2 ["Parent"]
      123 GETTABLEKS                       R11 R11 K28 ["formatNodeAssertErrors"]
      125 CALL                             R10 1 1
      126 GETTABLEKS                       R10 R10 K29 ["default"]
      128 GETIMPORT                        R11 K4 [require]
      130 GETIMPORT                        R12 K1 [script]
      132 GETTABLEKS                       R12 R12 K2 ["Parent"]
      134 GETTABLEKS                       R12 R12 K11 ["types"]
      136 CALL                             R11 1 1
      137 GETTABLEKS                       R11 R11 K30 ["STATE_SYM"]
      139 GETIMPORT                        R12 K4 [require]
      141 GETIMPORT                        R13 K1 [script]
      143 GETTABLEKS                       R13 R13 K2 ["Parent"]
      145 GETTABLEKS                       R13 R13 K13 ["utils"]
      147 CALL                             R12 1 1
      148 GETTABLEKS                       R12 R12 K18 ["makeDescribe"]
      150 NEWTABLE                         R13 0 2
      152 MOVE                             R14 R5
      153 MOVE                             R15 R10
      154 SETLIST                          R13 R14 2 [1]
      156 GETIMPORT                        R14 K4 [require]
      158 GETIMPORT                        R15 K1 [script]
      160 GETTABLEKS                       R15 R15 K2 ["Parent"]
      162 GETTABLEKS                       R15 R15 K31 ["state_"]
      164 CALL                             R14 1 1
      165 GETTABLEKS                       R15 R14 K32 ["ROOT_DESCRIBE_BLOCK_NAME"]
      167 SETTABLEKS                       R15 R0 K32 ["ROOT_DESCRIBE_BLOCK_NAME"]
      169 DUPCLOSURE                       R16 K33 [PROTO_9]
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R15
      172 DUPCLOSURE                       R17 K34 [PROTO_10]
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R16
      175 SETTABLEKS                       R17 R0 K35 ["resetState"]
      177 GETIMPORT                        R18 K37 [_G]
      179 MOVE                             R19 R16
      180 CALL                             R19 0 1
      181 SETTABLE                         R19 R18 R11
      182 GETTABLEKS                       R18 R14 K38 ["getState"]
      184 SETTABLEKS                       R18 R0 K38 ["getState"]
      186 DUPCLOSURE                       R19 K39 [PROTO_11]
      187 CAPTURE                          VAL R11
      188 SETTABLEKS                       R19 R0 K40 ["setState"]
      190 DUPCLOSURE                       R20 K41 [PROTO_13]
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R18
      194 SETTABLEKS                       R20 R0 K42 ["dispatch"]
      196 DUPCLOSURE                       R4 K43 [PROTO_14]
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R18
      199 SETTABLEKS                       R4 R0 K44 ["dispatchSync"]
      201 DUPCLOSURE                       R21 K45 [PROTO_15]
      202 CAPTURE                          VAL R13
      203 SETTABLEKS                       R21 R0 K46 ["addEventHandler"]
      205 CLOSEUPVALS                      R4
      206 RETURN                           R0 1
