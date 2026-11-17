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
      139 JUMPIFEQKNIL                     R5 ; [+460]
      141 GETTABLEKS                       R5 R3 K30 ["parent"]
      143 SETTABLEKS                       R5 R2 K9 ["currentDescribeBlock"]
      145 RETURN                           R0 0
      146 GETTABLEKS                       R3 R1 K0 ["name"]
      148 JUMPIFNOTEQKS                    R3 K31 ["add_hook"] ; [+72]
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
      204 DUPTABLE                         R12 K42 [{["asyncError"], ["fn"], ["parent"], ["seenDone"] = False, ["timeout"], ["type"]}]
      205 SETTABLEKS                       R6 R12 K33 ["asyncError"]
      207 SETTABLEKS                       R7 R12 K34 ["fn"]
      209 SETTABLEKS                       R3 R12 K30 ["parent"]
      211 SETTABLEKS                       R9 R12 K36 ["timeout"]
      213 SETTABLEKS                       R8 R12 K41 ["type"]
      215 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      217 GETIMPORT                        R10 K17 [table.insert]
      219 CALL                             R10 2 0
      220 RETURN                           R0 0
      221 GETTABLEKS                       R3 R1 K0 ["name"]
      223 JUMPIFNOTEQKS                    R3 K43 ["add_test"] ; [+94]
      225 GETTABLEKS                       R3 R2 K9 ["currentDescribeBlock"]
      227 GETTABLEKS                       R4 R2 K10 ["currentlyRunningTest"]
      229 GETTABLEKS                       R5 R2 K32 ["hasStarted"]
      231 GETTABLEKS                       R6 R1 K33 ["asyncError"]
      233 GETTABLEKS                       R7 R1 K34 ["fn"]
      235 GETTABLEKS                       R8 R1 K8 ["mode"]
      237 GETTABLEKS                       R9 R1 K44 ["testName"]
      239 GETTABLEKS                       R10 R1 K36 ["timeout"]
      241 GETTABLEKS                       R11 R1 K45 ["failing"]
      243 JUMPIFEQKNIL                     R4 ; [+19]
      245 GETTABLEKS                       R13 R4 K11 ["errors"]
      247 GETUPVAL                         R14 0
      248 GETTABLEKS                       R14 R14 K12 ["new"]
      250 LOADK                            R15 K46 ["Tests cannot be nested. Test \"%s\" cannot run because it is nested within \"%s\"."]
      251 MOVE                             R17 R9
      252 GETTABLEKS                       R18 R4 K0 ["name"]
      254 NAMECALL                         R15 R15 K14 ["format"]
      256 CALL                             R15 3 -1
      257 CALL                             R14 -1 -1
      258 FASTCALL                         TABLE_INSERT ; [+2]
      259 GETIMPORT                        R12 K17 [table.insert]
      261 CALL                             R12 -1 0
      262 RETURN                           R0 0
      263 GETUPVAL                         R12 3
      264 GETTABLEKS                       R12 R12 K21 ["toJSBoolean"]
      266 MOVE                             R13 R5
      267 CALL                             R12 1 1
      268 JUMPIFNOT                        R12 ; [+12]
      269 GETTABLEKS                       R13 R2 K38 ["unhandledErrors"]
      271 GETUPVAL                         R14 0
      272 GETTABLEKS                       R14 R14 K12 ["new"]
      274 LOADK                            R15 K47 ["Cannot add a test after tests have started running. Tests must be defined synchronously."]
      275 CALL                             R14 1 -1
      276 FASTCALL                         TABLE_INSERT ; [+2]
      277 GETIMPORT                        R12 K17 [table.insert]
      279 CALL                             R12 -1 0
      280 RETURN                           R0 0
      281 GETUPVAL                         R12 6
      282 MOVE                             R13 R7
      283 MOVE                             R14 R8
      284 MOVE                             R15 R9
      285 MOVE                             R16 R3
      286 MOVE                             R17 R10
      287 MOVE                             R18 R6
      288 MOVE                             R19 R11
      289 CALL                             R12 7 1
      290 GETTABLEKS                       R13 R3 K8 ["mode"]
      292 JUMPIFEQKS                       R13 K28 ["skip"] ; [+8]
      294 GETTABLEKS                       R13 R12 K8 ["mode"]
      296 JUMPIFNOTEQKS                    R13 K24 ["only"] ; [+4]
      298 LOADB                            R13 1
      299 SETTABLEKS                       R13 R2 K27 ["hasFocusedTests"]
      301 GETTABLEKS                       R14 R3 K18 ["children"]
      303 FASTCALL2                        TABLE_INSERT R14 R12 ; [+4]
      305 MOVE                             R15 R12
      306 GETIMPORT                        R13 K17 [table.insert]
      308 CALL                             R13 2 0
      309 GETTABLEKS                       R14 R3 K48 ["tests"]
      311 FASTCALL2                        TABLE_INSERT R14 R12 ; [+4]
      313 MOVE                             R15 R12
      314 GETIMPORT                        R13 K17 [table.insert]
      316 CALL                             R13 2 0
      317 RETURN                           R0 0
      318 GETTABLEKS                       R3 R1 K0 ["name"]
      320 JUMPIFNOTEQKS                    R3 K49 ["hook_failure"] ; [+59]
      322 GETTABLEKS                       R3 R1 K50 ["test"]
      324 GETTABLEKS                       R4 R1 K51 ["describeBlock"]
      326 GETTABLEKS                       R5 R1 K52 ["error"]
      328 GETTABLEKS                       R6 R1 K4 ["hook"]
      330 GETTABLEKS                       R7 R6 K33 ["asyncError"]
      332 GETTABLEKS                       R8 R6 K41 ["type"]
      334 JUMPIFNOTEQKS                    R8 K53 ["beforeAll"] ; [+11]
      336 GETUPVAL                         R9 2
      337 MOVE                             R10 R4
      338 LOADK                            R11 K54 ["always present for `*All` hooks"]
      339 CALL                             R9 2 0
      340 GETUPVAL                         R9 7
      341 MOVE                             R10 R4
      342 MOVE                             R11 R5
      343 MOVE                             R12 R7
      344 CALL                             R9 3 0
      345 RETURN                           R0 0
      346 JUMPIFNOTEQKS                    R8 K55 ["afterAll"] ; [+15]
      348 GETTABLEKS                       R10 R2 K38 ["unhandledErrors"]
      350 NEWTABLE                         R11 0 2
      352 MOVE                             R12 R5
      353 MOVE                             R13 R7
      354 SETLIST                          R11 R12 2 [1]
      356 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      358 GETIMPORT                        R9 K17 [table.insert]
      360 CALL                             R9 2 0
      361 RETURN                           R0 0
      362 GETUPVAL                         R9 2
      363 MOVE                             R10 R3
      364 LOADK                            R11 K56 ["always present for `*Each` hooks"]
      365 CALL                             R9 2 0
      366 GETTABLEKS                       R10 R3 K11 ["errors"]
      368 NEWTABLE                         R11 0 2
      370 MOVE                             R12 R5
      371 MOVE                             R13 R7
      372 SETLIST                          R11 R12 2 [1]
      374 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      376 GETIMPORT                        R9 K17 [table.insert]
      378 CALL                             R9 2 0
      379 RETURN                           R0 0
      380 GETTABLEKS                       R3 R1 K0 ["name"]
      382 JUMPIFNOTEQKS                    R3 K57 ["test_skip"] ; [+7]
      384 GETTABLEKS                       R3 R1 K50 ["test"]
      386 LOADK                            R4 K28 ["skip"]
      387 SETTABLEKS                       R4 R3 K58 ["status"]
      389 RETURN                           R0 0
      390 GETTABLEKS                       R3 R1 K0 ["name"]
      392 JUMPIFNOTEQKS                    R3 K59 ["test_todo"] ; [+7]
      394 GETTABLEKS                       R3 R1 K50 ["test"]
      396 LOADK                            R4 K60 ["todo"]
      397 SETTABLEKS                       R4 R3 K58 ["status"]
      399 RETURN                           R0 0
      400 GETTABLEKS                       R3 R1 K0 ["name"]
      402 JUMPIFNOTEQKS                    R3 K61 ["test_done"] ; [+18]
      404 GETTABLEKS                       R3 R1 K50 ["test"]
      406 GETUPVAL                         R4 8
      407 GETTABLEKS                       R5 R1 K50 ["test"]
      409 CALL                             R4 1 1
      410 SETTABLEKS                       R4 R3 K62 ["duration"]
      412 GETTABLEKS                       R3 R1 K50 ["test"]
      414 LOADK                            R4 K63 ["done"]
      415 SETTABLEKS                       R4 R3 K58 ["status"]
      417 LOADNIL                          R3
      418 SETTABLEKS                       R3 R2 K10 ["currentlyRunningTest"]
      420 RETURN                           R0 0
      421 GETTABLEKS                       R3 R1 K0 ["name"]
      423 JUMPIFNOTEQKS                    R3 K64 ["test_start"] ; [+22]
      425 GETTABLEKS                       R3 R1 K50 ["test"]
      427 SETTABLEKS                       R3 R2 K10 ["currentlyRunningTest"]
      429 GETTABLEKS                       R3 R1 K50 ["test"]
      431 GETIMPORT                        R4 K67 [DateTime.now]
      433 CALL                             R4 0 1
      434 GETTABLEKS                       R4 R4 K68 ["UnixTimestampMillis"]
      436 SETTABLEKS                       R4 R3 K69 ["startedAt"]
      438 GETTABLEKS                       R3 R1 K50 ["test"]
      440 GETTABLEKS                       R4 R3 K70 ["invocations"]
      442 ADDK                             R4 R4 K71 [1]
      443 SETTABLEKS                       R4 R3 K70 ["invocations"]
      445 RETURN                           R0 0
      446 GETTABLEKS                       R3 R1 K0 ["name"]
      448 JUMPIFNOTEQKS                    R3 K72 ["test_fn_start"] ; [+7]
      450 GETTABLEKS                       R3 R1 K50 ["test"]
      452 LOADB                            R4 0
      453 SETTABLEKS                       R4 R3 K5 ["seenDone"]
      455 RETURN                           R0 0
      456 GETTABLEKS                       R3 R1 K0 ["name"]
      458 JUMPIFNOTEQKS                    R3 K73 ["test_fn_failure"] ; [+23]
      460 GETTABLEKS                       R3 R1 K52 ["error"]
      462 GETTABLEKS                       R4 R1 K50 ["test"]
      464 GETTABLEKS                       R4 R4 K33 ["asyncError"]
      466 GETTABLEKS                       R6 R1 K50 ["test"]
      468 GETTABLEKS                       R6 R6 K11 ["errors"]
      470 NEWTABLE                         R7 0 2
      472 MOVE                             R8 R3
      473 MOVE                             R9 R4
      474 SETLIST                          R7 R8 2 [1]
      476 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
      478 GETIMPORT                        R5 K17 [table.insert]
      480 CALL                             R5 2 0
      481 RETURN                           R0 0
      482 GETTABLEKS                       R3 R1 K0 ["name"]
      484 JUMPIFNOTEQKS                    R3 K74 ["test_retry"] ; [+33]
      486 GETIMPORT                        R4 K76 [_G]
      488 GETUPVAL                         R5 9
      489 GETTABLE                         R3 R4 R5
      490 JUMPIFNOT                        R3 ; [+20]
      491 GETIMPORT                        R3 K78 [ipairs]
      493 GETTABLEKS                       R4 R1 K50 ["test"]
      495 GETTABLEKS                       R4 R4 K11 ["errors"]
      497 CALL                             R3 1 3
      498 FORGPREP_INEXT                   R3
      499 GETTABLEKS                       R9 R1 K50 ["test"]
      501 GETTABLEKS                       R9 R9 K79 ["retryReasons"]
      503 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
      505 MOVE                             R10 R7
      506 GETIMPORT                        R8 K17 [table.insert]
      508 CALL                             R8 2 0
      509 FORGLOOP                         R3 2 [inext] ; [-11]
      511 GETTABLEKS                       R3 R1 K50 ["test"]
      513 NEWTABLE                         R4 0 0
      515 SETTABLEKS                       R4 R3 K11 ["errors"]
      517 RETURN                           R0 0
      518 GETTABLEKS                       R3 R1 K0 ["name"]
      520 JUMPIFNOTEQKS                    R3 K80 ["run_start"] ; [+20]
      522 LOADB                            R3 1
      523 SETTABLEKS                       R3 R2 K32 ["hasStarted"]
      525 GETUPVAL                         R3 3
      526 GETTABLEKS                       R3 R3 K21 ["toJSBoolean"]
      528 GETIMPORT                        R5 K76 [_G]
      530 GETUPVAL                         R6 10
      531 GETTABLE                         R4 R5 R6
      532 CALL                             R3 1 1
      533 JUMPIFNOT                        R3 ; [+66]
      534 GETIMPORT                        R4 K76 [_G]
      536 GETUPVAL                         R5 10
      537 GETTABLE                         R3 R4 R5
      538 SETTABLEKS                       R3 R2 K81 ["testTimeout"]
      540 RETURN                           R0 0
      541 GETTABLEKS                       R3 R1 K0 ["name"]
      543 JUMPIFNOTEQKS                    R3 K82 ["run_finish"] ; [+2]
      545 RETURN                           R0 0
      546 GETTABLEKS                       R3 R1 K0 ["name"]
      548 JUMPIFNOTEQKS                    R3 K83 ["setup"] ; [+16]
      550 GETUPVAL                         R3 3
      551 GETTABLEKS                       R3 R3 K21 ["toJSBoolean"]
      553 GETTABLEKS                       R4 R1 K84 ["testNamePattern"]
      555 CALL                             R3 1 1
      556 JUMPIFNOT                        R3 ; [+43]
      557 GETUPVAL                         R3 11
      558 GETTABLEKS                       R4 R1 K84 ["testNamePattern"]
      560 LOADK                            R5 K85 ["i"]
      561 CALL                             R3 2 1
      562 SETTABLEKS                       R3 R2 K84 ["testNamePattern"]
      564 RETURN                           R0 0
      565 GETTABLEKS                       R3 R1 K0 ["name"]
      567 JUMPIFNOTEQKS                    R3 K86 ["teardown"] ; [+2]
      569 RETURN                           R0 0
      570 GETTABLEKS                       R3 R1 K0 ["name"]
      572 JUMPIFNOTEQKS                    R3 K52 ["error"] ; [+27]
      574 GETTABLEKS                       R3 R2 K10 ["currentlyRunningTest"]
      576 JUMPIFEQKNIL                     R3 ; [+13]
      578 GETTABLEKS                       R4 R2 K10 ["currentlyRunningTest"]
      580 GETTABLEKS                       R4 R4 K11 ["errors"]
      582 GETTABLEKS                       R5 R1 K52 ["error"]
      584 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      586 GETIMPORT                        R3 K17 [table.insert]
      588 CALL                             R3 2 0
      589 RETURN                           R0 0
      590 GETTABLEKS                       R4 R2 K38 ["unhandledErrors"]
      592 GETTABLEKS                       R5 R1 K52 ["error"]
      594 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      596 GETIMPORT                        R3 K17 [table.insert]
      598 CALL                             R3 2 0
      599 RETURN                           R0 0
      600 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{[1], ["name"] = "error"}]
        2 SETTABLEKS                       R0 R2 K0 ["error"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
        3 DUPTABLE                         R1 K14 [{[1], ["currentlyRunningTest"] = , ["expand"] = , ["hasFocusedTests"] = False, ["hasStarted"] = False, ["includeTestLocationInResult"] = False, ["parentProcess"] = , ["rootDescribeBlock"], ["testNamePattern"] = , ["testTimeout"] = 5000, ["unhandledErrors"]}]
        4 SETTABLEKS                       R0 R1 K0 ["currentDescribeBlock"]
        6 SETTABLEKS                       R0 R1 K9 ["rootDescribeBlock"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K13 ["unhandledErrors"]
       12 RETURN                           R1 1

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
       45 GETTABLEKS                       R14 R13 K12 ["TEST_TIMEOUT_SYMBOL"]
       47 GETTABLEKS                       R15 R13 K13 ["LOG_ERRORS_BEFORE_RETRY"]
       49 GETIMPORT                        R16 K4 [require]
       51 GETIMPORT                        R17 K1 [script]
       53 GETTABLEKS                       R17 R17 K2 ["Parent"]
       55 GETTABLEKS                       R17 R17 K14 ["utils"]
       57 CALL                             R16 1 1
       58 GETTABLEKS                       R17 R16 K15 ["addErrorToEachTestUnderDescribe"]
       60 GETTABLEKS                       R18 R16 K16 ["describeBlockHasTests"]
       62 GETTABLEKS                       R19 R16 K17 ["getTestDuration"]
       64 GETTABLEKS                       R20 R16 K18 ["invariant"]
       66 GETTABLEKS                       R21 R16 K19 ["makeDescribe"]
       68 GETTABLEKS                       R22 R16 K20 ["makeTest"]
       70 DUPCLOSURE                       R5 K21 [PROTO_4]
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R21
       73 CAPTURE                          VAL R20
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R18
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R22
       78 CAPTURE                          VAL R17
       79 CAPTURE                          VAL R19
       80 CAPTURE                          VAL R15
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R12
       83 SETTABLEKS                       R5 R0 K22 ["eventHandler"]
       85 GETIMPORT                        R8 K4 [require]
       87 GETTABLEKS                       R9 R2 K6 ["LuauPolyfill"]
       89 CALL                             R8 1 1
       90 GETTABLEKS                       R9 R8 K7 ["Array"]
       92 DUPTABLE                         R10 K24 [{"listeners"}]
       93 DUPCLOSURE                       R11 K25 [PROTO_5]
       94 SETTABLEKS                       R11 R10 K23 ["listeners"]
       96 LOADNIL                          R11
       97 NEWCLOSURE                       R11 P2
       98 CAPTURE                          REF R4
       99 NEWCLOSURE                       R6 P3
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          REF R11
      103 SETTABLEKS                       R6 R0 K26 ["injectGlobalErrorHandlers"]
      105 NEWCLOSURE                       R7 P4
      106 CAPTURE                          REF R11
      107 SETTABLEKS                       R7 R0 K27 ["restoreGlobalErrorHandlers"]
      109 CLOSEUPVALS                      R11
      110 GETIMPORT                        R8 K4 [require]
      112 GETTABLEKS                       R9 R2 K6 ["LuauPolyfill"]
      114 CALL                             R8 1 1
      115 GETIMPORT                        R9 K4 [require]
      117 GETTABLEKS                       R10 R2 K28 ["Promise"]
      119 CALL                             R9 1 1
      120 GETIMPORT                        R10 K4 [require]
      122 GETIMPORT                        R11 K1 [script]
      124 GETTABLEKS                       R11 R11 K2 ["Parent"]
      126 GETTABLEKS                       R11 R11 K29 ["formatNodeAssertErrors"]
      128 CALL                             R10 1 1
      129 GETTABLEKS                       R10 R10 K30 ["default"]
      131 GETIMPORT                        R11 K4 [require]
      133 GETIMPORT                        R12 K1 [script]
      135 GETTABLEKS                       R12 R12 K2 ["Parent"]
      137 GETTABLEKS                       R12 R12 K11 ["types"]
      139 CALL                             R11 1 1
      140 GETTABLEKS                       R11 R11 K31 ["STATE_SYM"]
      142 GETIMPORT                        R12 K4 [require]
      144 GETIMPORT                        R13 K1 [script]
      146 GETTABLEKS                       R13 R13 K2 ["Parent"]
      148 GETTABLEKS                       R13 R13 K14 ["utils"]
      150 CALL                             R12 1 1
      151 GETTABLEKS                       R12 R12 K19 ["makeDescribe"]
      153 NEWTABLE                         R13 0 2
      155 MOVE                             R14 R5
      156 MOVE                             R15 R10
      157 SETLIST                          R13 R14 2 [1]
      159 GETIMPORT                        R14 K4 [require]
      161 GETIMPORT                        R15 K1 [script]
      163 GETTABLEKS                       R15 R15 K2 ["Parent"]
      165 GETTABLEKS                       R15 R15 K32 ["state_"]
      167 CALL                             R14 1 1
      168 GETTABLEKS                       R15 R14 K33 ["ROOT_DESCRIBE_BLOCK_NAME"]
      170 SETTABLEKS                       R15 R0 K33 ["ROOT_DESCRIBE_BLOCK_NAME"]
      172 DUPCLOSURE                       R16 K34 [PROTO_9]
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R15
      175 DUPCLOSURE                       R17 K35 [PROTO_10]
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R16
      178 SETTABLEKS                       R17 R0 K36 ["resetState"]
      180 GETIMPORT                        R18 K38 [_G]
      182 MOVE                             R19 R16
      183 CALL                             R19 0 1
      184 SETTABLE                         R19 R18 R11
      185 GETTABLEKS                       R18 R14 K39 ["getState"]
      187 SETTABLEKS                       R18 R0 K39 ["getState"]
      189 DUPCLOSURE                       R19 K40 [PROTO_11]
      190 CAPTURE                          VAL R11
      191 SETTABLEKS                       R19 R0 K41 ["setState"]
      193 DUPCLOSURE                       R20 K42 [PROTO_13]
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R18
      197 SETTABLEKS                       R20 R0 K43 ["dispatch"]
      199 DUPCLOSURE                       R4 K44 [PROTO_14]
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R18
      202 SETTABLEKS                       R4 R0 K45 ["dispatchSync"]
      204 DUPCLOSURE                       R21 K46 [PROTO_15]
      205 CAPTURE                          VAL R13
      206 SETTABLEKS                       R21 R0 K47 ["addEventHandler"]
      208 CLOSEUPVALS                      R4
      209 RETURN                           R0 1
