PROTO_0:
        0 JUMPIF                           R0 ; [+8]
        1 DUPTABLE                         R1 K2 [{"message", "stack"}]
        2 LOADK                            R2 K3 [""]
        3 SETTABLEKS                       R2 R1 K0 ["message"]
        5 LOADK                            R2 K3 [""]
        6 SETTABLEKS                       R2 R1 K1 ["stack"]
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 LOADK                            R2 K3 [""]
       11 GETUPVAL                         R3 0
       12 LOADK                            R4 K4 ["^(\\s*LoadedCode.*:\\d+)?(: )?(.*)$"]
       13 CALL                             R3 1 1
       14 MOVE                             R6 R0
       15 NAMECALL                         R4 R3 K5 ["exec"]
       17 CALL                             R4 2 1
       18 JUMPIFNOT                        R4 ; [+2]
       19 GETTABLEN                        R1 R4 4
       20 GETTABLEN                        R2 R4 2
       21 DUPTABLE                         R5 K2 [{"message", "stack"}]
       22 SETTABLEKS                       R1 R5 K0 ["message"]
       24 SETTABLEKS                       R2 R5 K1 ["stack"]
       26 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [debug.info]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["a"]
        4 CALL                             R2 2 1
        5 LOADN                            R3 1
        6 JUMPIFLT                         R3 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R3 R2
        1 JUMPIFEQKNIL                     R1 ; [+9]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        6 MOVE                             R5 R2
        7 CALL                             R4 1 1
        8 JUMPIF                           R4 ; [+2]
        9 GETTABLEKS                       R3 R1 K1 ["mode"]
       11 DUPTABLE                         R4 K8 [{"type", "children", "hooks", "mode", "name", "parent", "tests"}]
       12 LOADK                            R5 K9 ["describeBlock"]
       13 SETTABLEKS                       R5 R4 K2 ["type"]
       15 NEWTABLE                         R5 0 0
       17 SETTABLEKS                       R5 R4 K3 ["children"]
       19 NEWTABLE                         R5 0 0
       21 SETTABLEKS                       R5 R4 K4 ["hooks"]
       23 SETTABLEKS                       R3 R4 K1 ["mode"]
       25 GETUPVAL                         R5 1
       26 MOVE                             R6 R0
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K5 ["name"]
       30 SETTABLEKS                       R1 R4 K6 ["parent"]
       32 NEWTABLE                         R5 0 0
       34 SETTABLEKS                       R5 R4 K7 ["tests"]
       36 RETURN                           R4 1

PROTO_4:
        0 DUPTABLE                         R7 K15 [{"type", "asyncError", "duration", "errors", "failing", "fn", "invocations", "mode", "name", "parent", "retryReasons", "seenDone", "startedAt", "status", "timeout"}]
        1 LOADK                            R8 K16 ["test"]
        2 SETTABLEKS                       R8 R7 K0 ["type"]
        4 SETTABLEKS                       R5 R7 K1 ["asyncError"]
        6 LOADNIL                          R8
        7 SETTABLEKS                       R8 R7 K2 ["duration"]
        9 NEWTABLE                         R8 0 0
       11 SETTABLEKS                       R8 R7 K3 ["errors"]
       13 SETTABLEKS                       R6 R7 K4 ["failing"]
       15 SETTABLEKS                       R0 R7 K5 ["fn"]
       17 LOADN                            R8 0
       18 SETTABLEKS                       R8 R7 K6 ["invocations"]
       20 SETTABLEKS                       R1 R7 K7 ["mode"]
       22 GETUPVAL                         R8 0
       23 MOVE                             R9 R2
       24 CALL                             R8 1 1
       25 SETTABLEKS                       R8 R7 K8 ["name"]
       27 SETTABLEKS                       R3 R7 K9 ["parent"]
       29 NEWTABLE                         R8 0 0
       31 SETTABLEKS                       R8 R7 K10 ["retryReasons"]
       33 LOADB                            R8 0
       34 SETTABLEKS                       R8 R7 K11 ["seenDone"]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K12 ["startedAt"]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K13 ["status"]
       42 SETTABLEKS                       R4 R7 K14 ["timeout"]
       44 RETURN                           R7 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["describeBlock"] ; [+5]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 LOADB                            R2 1
        9 GETTABLEKS                       R3 R0 K2 ["mode"]
       11 JUMPIFEQKS                       R3 K3 ["skip"] ; [+18]
       13 GETUPVAL                         R3 1
       14 JUMPIFNOT                        R3 ; [+5]
       15 LOADB                            R2 1
       16 GETTABLEKS                       R3 R0 K2 ["mode"]
       18 JUMPIFNOTEQKS                    R3 K4 ["only"] ; [+11]
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+8]
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R0
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R3 K5 ["test"]
       28 CALL                             R3 -1 1
       29 NOT                              R2 R3
       30 NOT                              R1 R2
       31 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["hasFocusedTests"]
        4 GETTABLEKS                       R3 R1 K1 ["testNamePattern"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["some"]
        9 GETTABLEKS                       R5 R0 K3 ["children"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"afterAll", "beforeAll"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["afterAll"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["beforeAll"]
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R4 R3 K3 ["hasFocusedTests"]
       13 GETTABLEKS                       R5 R3 K4 ["testNamePattern"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["some"]
       18 GETTABLEKS                       R7 R0 K6 ["children"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R5
       24 CAPTURE                          UPVAL U3
       25 CALL                             R6 2 1
       26 MOVE                             R2 R6
       27 JUMPIFNOT                        R2 ; [+33]
       28 GETIMPORT                        R2 K8 [ipairs]
       30 GETTABLEKS                       R3 R0 K9 ["hooks"]
       32 CALL                             R2 1 3
       33 FORGPREP_INEXT                   R2
       34 GETTABLEKS                       R7 R6 K10 ["type"]
       36 JUMPIFNOTEQKS                    R7 K1 ["beforeAll"] ; [+10]
       38 GETTABLEKS                       R8 R1 K1 ["beforeAll"]
       40 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       42 MOVE                             R9 R6
       43 GETIMPORT                        R7 K13 [table.insert]
       45 CALL                             R7 2 0
       46 JUMP                             ; [+12]
       47 GETTABLEKS                       R7 R6 K10 ["type"]
       49 JUMPIFNOTEQKS                    R7 K0 ["afterAll"] ; [+9]
       51 GETTABLEKS                       R8 R1 K0 ["afterAll"]
       53 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       55 MOVE                             R9 R6
       56 GETIMPORT                        R7 K13 [table.insert]
       58 CALL                             R7 2 0
       59 FORGLOOP                         R2 2 [inext] ; [-26]
       61 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"afterEach", "beforeEach"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["afterEach"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["beforeEach"]
        9 GETTABLEKS                       R2 R0 K3 ["parent"]
       11 NEWTABLE                         R3 0 0
       13 LOADNIL                          R4
       14 GETIMPORT                        R5 K5 [ipairs]
       16 GETTABLEKS                       R6 R2 K6 ["hooks"]
       18 CALL                             R5 1 3
       19 FORGPREP_INEXT                   R5
       20 MOVE                             R4 R9
       21 GETTABLEKS                       R10 R4 K7 ["type"]
       23 JUMPIFNOTEQKS                    R10 K1 ["beforeEach"] ; [+9]
       25 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       27 MOVE                             R11 R3
       28 MOVE                             R12 R4
       29 GETIMPORT                        R10 K10 [table.insert]
       31 CALL                             R10 2 0
       32 JUMP                             ; [+12]
       33 GETTABLEKS                       R10 R4 K7 ["type"]
       35 JUMPIFNOTEQKS                    R10 K0 ["afterEach"] ; [+9]
       37 GETTABLEKS                       R11 R1 K0 ["afterEach"]
       39 FASTCALL2                        TABLE_INSERT R11 R4 ; [+4]
       41 MOVE                             R12 R4
       42 GETIMPORT                        R10 K10 [table.insert]
       44 CALL                             R10 2 0
       45 FORGLOOP                         R5 2 [inext] ; [-26]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K11 ["concat"]
       50 NEWTABLE                         R6 0 0
       52 MOVE                             R7 R3
       53 GETTABLEKS                       R8 R1 K1 ["beforeEach"]
       55 CALL                             R5 3 1
       56 SETTABLEKS                       R5 R1 K1 ["beforeEach"]
       58 GETTABLEKS                       R2 R2 K3 ["parent"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K12 ["toJSBoolean"]
       63 MOVE                             R6 R2
       64 CALL                             R5 1 1
       65 JUMPIFNOT                        R5 ; [+1]
       66 JUMPBACK                         ; [-56]
       67 RETURN                           R1 1

PROTO_9:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 JUMPIFEQKS                       R2 K1 ["test"] ; [+4]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["some"]
        3 GETTABLEKS                       R2 R0 K1 ["children"]
        5 DUPCLOSURE                       R3 K2 [PROTO_9]
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 LOADK                            R2 K0 ["Exceeded timeout of %s for a %s.\nUse jest.setTimeout(newTimeout) to increase the timeout value, if this is a long-running test."]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R5 K1 ["hook"]
        6 JUMP                             ; [+1]
        7 LOADK                            R5 K2 ["test"]
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        9 GETTABLEKS                       R2 R0 K1 ["message"]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       16 GETTABLEKS                       R2 R0 K2 ["stack"]
       18 CALL                             R1 1 1
       19 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+21]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 LOADK                            R2 K0 ["\n      Test functions cannot both take a 'done' callback and return something. Either use a 'done' callback, or return a promise.\n      Returned value: %s\n      "]
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 0
        8 DUPTABLE                         R6 K2 [{"maxDepth"}]
        9 LOADN                            R7 3
       10 SETTABLEKS                       R7 R6 K1 ["maxDepth"]
       12 CALL                             R4 2 -1
       13 NAMECALL                         R2 R2 K3 ["format"]
       15 CALL                             R2 -1 -1
       16 CALL                             R1 -1 1
       17 SETTABLEKS                       R1 R0 K4 ["message"]
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R1 1
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1
       23 LOADNIL                          R0
       24 GETUPVAL                         R2 5
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R3 R3 K5 ["toJSBoolean"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 MOVE                             R1 R3
       31 JUMPIFNOT                        R1 ; [+15]
       32 GETUPVAL                         R3 6
       33 GETTABLEKS                       R3 R3 K5 ["toJSBoolean"]
       35 GETTABLEKS                       R4 R2 K4 ["message"]
       37 CALL                             R3 1 1
       38 MOVE                             R1 R3
       39 JUMPIFNOT                        R1 ; [+7]
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R3 R3 K5 ["toJSBoolean"]
       43 GETTABLEKS                       R4 R2 K6 ["stack"]
       45 CALL                             R3 1 1
       46 MOVE                             R1 R3
       47 JUMPIFNOT                        R1 ; [+2]
       48 GETUPVAL                         R0 5
       49 JUMP                             ; [+15]
       50 GETUPVAL                         R0 7
       51 GETUPVAL                         R1 7
       52 LOADK                            R2 K7 ["Failed: %s"]
       53 GETUPVAL                         R4 3
       54 GETUPVAL                         R5 5
       55 DUPTABLE                         R6 K2 [{"maxDepth"}]
       56 LOADN                            R7 3
       57 SETTABLEKS                       R7 R6 K1 ["maxDepth"]
       59 CALL                             R4 2 -1
       60 NAMECALL                         R2 R2 K3 ["format"]
       62 CALL                             R2 -1 1
       63 SETTABLEKS                       R2 R1 K4 ["message"]
       65 GETUPVAL                         R1 8
       66 JUMPIFNOT                        R1 ; [+16]
       67 GETUPVAL                         R1 6
       68 GETTABLEKS                       R1 R1 K5 ["toJSBoolean"]
       70 GETUPVAL                         R2 5
       71 CALL                             R1 1 1
       72 JUMPIFNOT                        R1 ; [+10]
       73 LOADK                            R2 K8 ["Caught error after test environment was torn down\n\n"]
       74 GETTABLEKS                       R3 R0 K4 ["message"]
       76 CONCAT                           R1 R2 R3
       77 SETTABLEKS                       R1 R0 K4 ["message"]
       79 GETIMPORT                        R1 K10 [error]
       81 MOVE                             R2 R0
       82 CALL                             R1 1 0
       83 GETUPVAL                         R2 6
       84 GETTABLEKS                       R2 R2 K5 ["toJSBoolean"]
       86 GETUPVAL                         R3 5
       87 CALL                             R2 1 1
       88 JUMPIFNOT                        R2 ; [+4]
       89 GETUPVAL                         R1 4
       90 MOVE                             R2 R0
       91 CALL                             R1 1 1
       92 RETURN                           R1 1
       93 GETUPVAL                         R1 9
       94 CALL                             R1 0 1
       95 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADNIL                          R2
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 JUMPIF                           R2 ; [+34]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["seenDone"]
       11 JUMPIFNOT                        R2 ; [+30]
       12 LOADK                            R2 K2 ["Expected done to be called once, but it was called multiple times."]
       13 SETTABLEKS                       R2 R1 K3 ["message"]
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K4 ["toJSBoolean"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+13]
       21 GETTABLEKS                       R3 R1 K3 ["message"]
       23 LOADK                            R4 K5 [" Reason: "]
       24 GETUPVAL                         R5 5
       25 MOVE                             R6 R0
       26 DUPTABLE                         R7 K7 [{"maxDepth"}]
       27 LOADN                            R8 3
       28 SETTABLEKS                       R8 R7 K6 ["maxDepth"]
       30 CALL                             R5 2 1
       31 CONCAT                           R2 R3 R5
       32 SETTABLEKS                       R2 R1 K3 ["message"]
       34 GETUPVAL                         R2 6
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 GETIMPORT                        R2 K9 [error]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 JUMP                             ; [+4]
       42 GETUPVAL                         R2 3
       43 LOADB                            R3 1
       44 SETTABLEKS                       R3 R2 K1 ["seenDone"]
       46 GETUPVAL                         R2 7
       47 GETTABLEKS                       R2 R2 K10 ["delay"]
       49 LOADN                            R3 0
       50 CALL                             R2 1 1
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U11
       62 NAMECALL                         R2 R2 K11 ["andThen"]
       64 CALL                             R2 2 0
       65 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R2 1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R4 3
        7 CALL                             R2 2 1
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R3 5
       10 GETIMPORT                        R4 K2 [debug.info]
       12 MOVE                             R5 R3
       13 LOADK                            R6 K3 ["a"]
       14 CALL                             R4 2 1
       15 LOADN                            R5 1
       16 JUMPIFLT                         R5 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 JUMPIFNOT                        R2 ; [+22]
       21 LOADNIL                          R2
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          REF R2
       32 CAPTURE                          UPVAL U12
       33 CAPTURE                          UPVAL U13
       34 CAPTURE                          VAL R0
       35 GETUPVAL                         R4 5
       36 GETUPVAL                         R5 14
       37 MOVE                             R6 R3
       38 CALL                             R4 2 1
       39 MOVE                             R2 R4
       40 CLOSEUPVALS                      R2
       41 RETURN                           R0 0
       42 CLOSEUPVALS                      R2
       43 LOADNIL                          R2
       44 GETUPVAL                         R4 5
       45 LOADB                            R3 0
       46 JUMPIFNOT                        R3 ; [+5]
       47 GETIMPORT                        R3 K5 [error]
       49 LOADK                            R4 K6 ["Generator functions are not supported in Lua"]
       50 CALL                             R3 1 0
       51 JUMP                             ; [+11]
       52 GETIMPORT                        R3 K8 [pcall]
       54 GETUPVAL                         R4 5
       55 GETUPVAL                         R5 14
       56 CALL                             R3 2 2
       57 JUMPIF                           R3 ; [+4]
       58 MOVE                             R5 R1
       59 MOVE                             R6 R4
       60 CALL                             R5 1 0
       61 RETURN                           R0 0
       62 MOVE                             R2 R4
       63 FASTCALL1                        TYPEOF R2 ; [+3]
       64 MOVE                             R4 R2
       65 GETIMPORT                        R3 K10 [typeof]
       67 CALL                             R3 1 1
       68 JUMPIFNOTEQKS                    R3 K11 ["table"] ; [+18]
       70 JUMPIFEQKNIL                     R2 ; [+16]
       72 GETTABLEKS                       R4 R2 K12 ["andThen"]
       74 FASTCALL1                        TYPEOF R4 ; [+2]
       75 GETIMPORT                        R3 K10 [typeof]
       77 CALL                             R3 1 1
       78 JUMPIFNOTEQKS                    R3 K13 ["function"] ; [+8]
       80 NEWCLOSURE                       R5 P2
       81 CAPTURE                          VAL R0
       82 MOVE                             R6 R1
       83 NAMECALL                         R3 R2 K12 ["andThen"]
       85 CALL                             R3 3 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R3 4
       88 JUMPIF                           R3 ; [+18]
       89 JUMPIFEQKNIL                     R2 ; [+17]
       91 MOVE                             R3 R1
       92 GETUPVAL                         R4 13
       93 LOADK                            R5 K14 ["\ntest functions can only return Promise or undefined.\n      Returned value: %s\n      "]
       94 GETUPVAL                         R7 10
       95 MOVE                             R8 R2
       96 DUPTABLE                         R9 K16 [{"maxDepth"}]
       97 LOADN                            R10 3
       98 SETTABLEKS                       R10 R9 K15 ["maxDepth"]
      100 CALL                             R7 2 -1
      101 NAMECALL                         R5 R5 K17 ["format"]
      103 CALL                             R5 -1 -1
      104 CALL                             R4 -1 1
      105 CALL                             R3 1 0
      106 RETURN                           R0 0
      107 MOVE                             R3 R0
      108 CALL                             R3 0 0
      109 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 CALL                             R1 1 0
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K1 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+23]
       12 GETUPVAL                         R1 3
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K3 ["new"]
       18 GETTABLEKS                       R3 R1 K4 ["message"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K5 ["stack"]
       23 SETTABLEKS                       R3 R2 K6 ["__stack"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K7 ["__recalculateStacktrace"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 GETIMPORT                        R3 K9 [error]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETIMPORT                        R1 K9 [error]
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R2 K0 ["isHook"]
        2 GETTABLEKS                       R4 R2 K1 ["timeout"]
        4 LOADNIL                          R5
        5 LOADB                            R6 0
        6 GETTABLEKS                       R7 R0 K2 ["fn"]
        8 GETTABLEKS                       R8 R0 K3 ["asyncError"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K4 ["new"]
       13 NEWCLOSURE                       R10 P0
       14 CAPTURE                          REF R5
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R7
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          REF R6
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R1
       29 CALL                             R9 1 1
       30 NEWCLOSURE                       R11 P1
       31 CAPTURE                          REF R6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          REF R5
       34 NAMECALL                         R9 R9 K5 ["andThen"]
       36 CALL                             R9 2 1
       37 NEWCLOSURE                       R11 P2
       38 CAPTURE                          REF R6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          REF R5
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 NAMECALL                         R9 R9 K6 ["catch"]
       45 CALL                             R9 2 -1
       46 CLOSEUPVALS                      R5
       47 RETURN                           R9 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["startedAt"]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["number"] ; [+8]
        9 GETIMPORT                        R3 K6 [DateTime.now]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R3 R3 K7 ["UnixTimestampMillis"]
       14 SUB                              R2 R3 R1
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_22:
        0 DUPTABLE                         R2 K2 [{"testResults", "unhandledErrors"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["testResults"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K3 ["map"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["map"]
       12 MOVE                             R5 R1
       13 GETUPVAL                         R6 2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 3
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K1 ["unhandledErrors"]
       19 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["includeTestLocationInResult"]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 GETTABLEKS                       R4 R0 K1 ["status"]
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R4
       11 LOADK                            R7 K2 ["Status should be present after tests are run."]
       12 CALL                             R5 2 0
       13 LOADN                            R7 1
       14 GETTABLEKS                       R8 R3 K3 ["name"]
       16 FASTCALL3                        TABLE_INSERT R2 R7 R8
       18 MOVE                             R6 R2
       19 GETIMPORT                        R5 K6 [table.insert]
       21 CALL                             R5 3 0
       22 GETTABLEKS                       R3 R3 K7 ["parent"]
       24 JUMPIFEQKNIL                     R3 ; [+2]
       26 JUMPBACK                         ; [-14]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K8 ["map"]
       30 GETTABLEKS                       R6 R0 K9 ["errors"]
       32 GETUPVAL                         R7 3
       33 CALL                             R5 2 1
       34 DUPTABLE                         R6 K16 [{"duration", "errors", "errorsDetailed", "invocations", "location", "retryReasons", "status", "testPath"}]
       35 GETTABLEKS                       R7 R0 K10 ["duration"]
       37 SETTABLEKS                       R7 R6 K10 ["duration"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K8 ["map"]
       42 MOVE                             R8 R5
       43 GETUPVAL                         R9 4
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K9 ["errors"]
       47 SETTABLEKS                       R5 R6 K11 ["errorsDetailed"]
       49 GETTABLEKS                       R7 R0 K12 ["invocations"]
       51 SETTABLEKS                       R7 R6 K12 ["invocations"]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K13 ["location"]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K8 ["map"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K8 ["map"]
       62 GETTABLEKS                       R9 R0 K14 ["retryReasons"]
       64 GETUPVAL                         R10 3
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 4
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K14 ["retryReasons"]
       70 SETTABLEKS                       R4 R6 K1 ["status"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K17 ["from"]
       75 MOVE                             R8 R2
       76 CALL                             R7 1 1
       77 SETTABLEKS                       R7 R6 K15 ["testPath"]
       79 RETURN                           R6 1

PROTO_24:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETTABLEKS                       R3 R0 K2 ["children"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 GETTABLEKS                       R7 R6 K3 ["type"]
       10 JUMPIFNOTEQKS                    R7 K4 ["describeBlock"] ; [+11]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K5 ["concat"]
       15 MOVE                             R8 R1
       16 GETUPVAL                         R9 1
       17 MOVE                             R10 R6
       18 CALL                             R9 1 -1
       19 CALL                             R7 -1 1
       20 MOVE                             R1 R7
       21 JUMP                             ; [+13]
       22 GETTABLEKS                       R7 R6 K3 ["type"]
       24 JUMPIFNOTEQKS                    R7 K6 ["test"] ; [+10]
       26 GETUPVAL                         R9 2
       27 MOVE                             R10 R6
       28 CALL                             R9 1 1
       29 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       31 MOVE                             R8 R1
       32 GETIMPORT                        R7 K9 [table.insert]
       34 CALL                             R7 2 0
       35 FORGLOOP                         R2 2 [inext] ; [-28]
       37 RETURN                           R1 1

PROTO_25:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADN                            R5 1
        4 GETTABLEKS                       R6 R2 K0 ["name"]
        6 FASTCALL3                        TABLE_INSERT R1 R5 R6
        8 MOVE                             R4 R1
        9 GETIMPORT                        R3 K3 [table.insert]
       11 CALL                             R3 3 0
       12 GETTABLEKS                       R2 R2 K4 ["parent"]
       14 JUMPIFEQKNIL                     R2 ; [+2]
       16 JUMPBACK                         ; [-14]
       17 GETIMPORT                        R3 K6 [table.remove]
       19 MOVE                             R4 R1
       20 LOADN                            R5 1
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K7 ["join"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K8 [" "]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

PROTO_26:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["isArray"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEN                        R1 R0 1
        9 GETTABLEN                        R2 R0 2
       10 JUMP                             ; [+6]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["new"]
       15 CALL                             R3 0 1
       16 MOVE                             R2 R3
       17 JUMPIFEQKNIL                     R1 ; [+17]
       19 GETTABLEKS                       R4 R1 K2 ["stack"]
       21 FASTCALL1                        TYPEOF R4 ; [+2]
       22 GETIMPORT                        R3 K4 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFEQKS                       R3 K5 ["string"] ; [+8]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K6 ["toJSBoolean"]
       30 GETTABLEKS                       R4 R1 K7 ["message"]
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R3 ; [+1]
       34 RETURN                           R1 1
       35 LOADK                            R3 K8 ["thrown: %s"]
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R1
       38 DUPTABLE                         R7 K10 [{"maxDepth"}]
       39 LOADN                            R8 3
       40 SETTABLEKS                       R8 R7 K9 ["maxDepth"]
       42 CALL                             R5 2 -1
       43 NAMECALL                         R3 R3 K11 ["format"]
       45 CALL                             R3 -1 1
       46 SETTABLEKS                       R3 R2 K7 ["message"]
       48 RETURN                           R2 1

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["stack"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+21]
        8 GETIMPORT                        R1 K5 [string.find]
       10 GETTABLEKS                       R2 R0 K0 ["stack"]
       12 GETTABLEKS                       R3 R0 K6 ["message"]
       14 LOADNIL                          R4
       15 LOADB                            R5 1
       16 CALL                             R1 4 1
       17 JUMPIFNOT                        R1 ; [+3]
       18 GETTABLEKS                       R1 R0 K0 ["stack"]
       20 RETURN                           R1 1
       21 GETTABLEKS                       R2 R0 K6 ["message"]
       23 LOADK                            R3 K7 ["\n"]
       24 GETTABLEKS                       R4 R0 K0 ["stack"]
       26 CONCAT                           R1 R2 R4
       27 RETURN                           R1 1
       28 GETTABLEKS                       R1 R0 K6 ["message"]
       30 RETURN                           R1 1

PROTO_28:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 GETTABLEKS                       R4 R0 K2 ["children"]
        4 CALL                             R3 1 3
        5 FORGPREP_INEXT                   R3
        6 GETTABLEKS                       R8 R7 K3 ["type"]
        8 JUMPIFNOTEQKS                    R8 K4 ["describeBlock"] ; [+7]
       10 GETUPVAL                         R8 0
       11 MOVE                             R9 R7
       12 MOVE                             R10 R1
       13 MOVE                             R11 R2
       14 CALL                             R8 3 0
       15 JUMP                             ; [+17]
       16 GETTABLEKS                       R8 R7 K3 ["type"]
       18 JUMPIFNOTEQKS                    R8 K5 ["test"] ; [+14]
       20 GETTABLEKS                       R9 R7 K6 ["errors"]
       22 NEWTABLE                         R10 0 2
       24 MOVE                             R11 R1
       25 MOVE                             R12 R2
       26 SETLIST                          R10 R11 2 [1]
       28 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       30 GETIMPORT                        R8 K9 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 2 [inext] ; [-28]
       35 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["new"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_31:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["status"]
        3 JUMPIFNOTEQKS                    R2 K1 ["skip"] ; [+3]
        5 LOADK                            R1 K2 ["pending"]
        6 JUMP                             ; [+15]
        7 GETTABLEKS                       R2 R0 K0 ["status"]
        9 JUMPIFNOTEQKS                    R2 K3 ["todo"] ; [+3]
       11 LOADK                            R1 K3 ["todo"]
       12 JUMP                             ; [+9]
       13 GETTABLEKS                       R3 R0 K4 ["errors"]
       15 LENGTH                           R2 R3
       16 LOADN                            R3 0
       17 JUMPIFNOTLT                      R3 R2 ; [+3]
       19 LOADK                            R1 K5 ["failed"]
       20 JUMP                             ; [+1]
       21 LOADK                            R1 K6 ["passed"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["filter"]
       25 GETTABLEKS                       R3 R0 K8 ["testPath"]
       27 DUPCLOSURE                       R4 K9 [PROTO_30]
       28 CAPTURE                          UPVAL U1
       29 CALL                             R2 2 1
       30 GETIMPORT                        R3 K12 [table.remove]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K23 [{"ancestorTitles", "duration", "failureDetails", "failureMessages", "fullName", "invocations", "location", "numPassingAsserts", "retryReasons", "status", "title"}]
       35 SETTABLEKS                       R2 R4 K13 ["ancestorTitles"]
       37 GETTABLEKS                       R5 R0 K14 ["duration"]
       39 SETTABLEKS                       R5 R4 K14 ["duration"]
       41 GETTABLEKS                       R5 R0 K24 ["errorsDetailed"]
       43 SETTABLEKS                       R5 R4 K15 ["failureDetails"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K25 ["from"]
       48 GETTABLEKS                       R6 R0 K4 ["errors"]
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R4 K16 ["failureMessages"]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K26 ["toJSBoolean"]
       56 MOVE                             R7 R3
       57 CALL                             R6 1 1
       58 JUMPIFNOT                        R6 ; [+12]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K27 ["join"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K28 ["concat"]
       65 MOVE                             R7 R2
       66 MOVE                             R8 R3
       67 CALL                             R6 2 1
       68 LOADK                            R7 K29 [" "]
       69 CALL                             R5 2 1
       70 JUMP                             ; [+6]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K27 ["join"]
       74 MOVE                             R6 R2
       75 LOADK                            R7 K29 [" "]
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K17 ["fullName"]
       79 GETTABLEKS                       R5 R0 K18 ["invocations"]
       81 SETTABLEKS                       R5 R4 K18 ["invocations"]
       83 GETTABLEKS                       R5 R0 K19 ["location"]
       85 SETTABLEKS                       R5 R4 K19 ["location"]
       87 LOADN                            R5 0
       88 SETTABLEKS                       R5 R4 K20 ["numPassingAsserts"]
       90 GETUPVAL                         R5 0
       91 GETTABLEKS                       R5 R5 K25 ["from"]
       93 GETTABLEKS                       R6 R0 K21 ["retryReasons"]
       95 CALL                             R5 1 1
       96 SETTABLEKS                       R5 R4 K21 ["retryReasons"]
       98 SETTABLEKS                       R1 R4 K0 ["status"]
      100 GETTABLEKS                       R6 R0 K8 ["testPath"]
      102 GETTABLEKS                       R8 R0 K8 ["testPath"]
      104 LENGTH                           R7 R8
      105 GETTABLE                         R5 R6 R7
      106 SETTABLEKS                       R5 R4 K22 ["title"]
      108 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       18 GETTABLEKS                       R5 R2 K8 ["Error"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R1 K9 ["Promise"]
       24 CALL                             R6 1 1
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 LOADNIL                          R11
       30 GETIMPORT                        R12 K4 [require]
       32 GETTABLEKS                       R13 R1 K10 ["RegExp"]
       34 CALL                             R12 1 1
       35 DUPCLOSURE                       R13 K11 [PROTO_0]
       36 CAPTURE                          VAL R12
       37 NEWTABLE                         R14 16 0
       39 GETIMPORT                        R15 K4 [require]
       41 GETTABLEKS                       R16 R1 K12 ["RobloxShared"]
       43 CALL                             R15 1 1
       44 GETTABLEKS                       R15 R15 K13 ["dedent"]
       46 GETIMPORT                        R16 K4 [require]
       48 GETTABLEKS                       R17 R1 K14 ["JestTestResult"]
       50 CALL                             R16 1 1
       51 GETIMPORT                        R17 K4 [require]
       53 GETTABLEKS                       R18 R1 K15 ["JestTypes"]
       55 CALL                             R17 1 1
       56 GETIMPORT                        R18 K4 [require]
       58 GETTABLEKS                       R19 R1 K16 ["JestUtil"]
       60 CALL                             R18 1 1
       61 GETTABLEKS                       R19 R18 K17 ["ErrorWithStack"]
       63 GETTABLEKS                       R20 R18 K18 ["convertDescriptorToString"]
       65 GETTABLEKS                       R21 R18 K19 ["formatTime"]
       67 GETIMPORT                        R22 K4 [require]
       69 GETTABLEKS                       R23 R1 K20 ["PrettyFormat"]
       71 CALL                             R22 1 1
       72 GETTABLEKS                       R22 R22 K21 ["format"]
       74 GETIMPORT                        R23 K4 [require]
       76 GETIMPORT                        R24 K1 [script]
       78 GETTABLEKS                       R24 R24 K2 ["Parent"]
       80 GETTABLEKS                       R24 R24 K22 ["state_"]
       82 CALL                             R23 1 1
       83 GETTABLEKS                       R24 R23 K23 ["ROOT_DESCRIBE_BLOCK_NAME"]
       85 GETTABLEKS                       R25 R23 K24 ["getState"]
       87 DUPCLOSURE                       R26 K25 [PROTO_1]
       88 DUPCLOSURE                       R27 K26 [PROTO_2]
       89 DUPCLOSURE                       R28 K27 [PROTO_3]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R20
       92 SETTABLEKS                       R28 R14 K28 ["makeDescribe"]
       94 DUPCLOSURE                       R29 K29 [PROTO_4]
       95 CAPTURE                          VAL R20
       96 SETTABLEKS                       R29 R14 K30 ["makeTest"]
       98 NEWCLOSURE                       R30 P5
       99 CAPTURE                          VAL R25
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R30
      102 CAPTURE                          REF R8
      103 NEWCLOSURE                       R31 P6
      104 CAPTURE                          VAL R25
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R30
      107 CAPTURE                          REF R8
      108 SETTABLEKS                       R31 R14 K31 ["getAllHooksForDescribe"]
      110 DUPCLOSURE                       R32 K32 [PROTO_8]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R32 R14 K33 ["getEachHooksForTest"]
      115 DUPCLOSURE                       R33 K34 [PROTO_10]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R33
      118 SETTABLEKS                       R33 R14 K35 ["describeBlockHasTests"]
      120 DUPCLOSURE                       R34 K36 [PROTO_11]
      121 CAPTURE                          VAL R21
      122 GETTABLEKS                       R35 R2 K37 ["setTimeout"]
      124 GETTABLEKS                       R36 R2 K38 ["clearTimeout"]
      126 DUPCLOSURE                       R37 K39 [PROTO_12]
      127 CAPTURE                          VAL R4
      128 DUPCLOSURE                       R38 K40 [PROTO_20]
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R35
      131 CAPTURE                          VAL R34
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R36
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R5
      139 SETTABLEKS                       R38 R14 K41 ["callAsyncCircusFn"]
      141 DUPCLOSURE                       R39 K42 [PROTO_21]
      142 SETTABLEKS                       R39 R14 K43 ["getTestDuration"]
      144 NEWCLOSURE                       R40 P13
      145 CAPTURE                          REF R7
      146 CAPTURE                          VAL R3
      147 CAPTURE                          REF R9
      148 CAPTURE                          REF R10
      149 SETTABLEKS                       R40 R14 K44 ["makeRunResult"]
      151 NEWCLOSURE                       R41 P14
      152 CAPTURE                          VAL R25
      153 CAPTURE                          REF R11
      154 CAPTURE                          VAL R3
      155 CAPTURE                          REF R9
      156 CAPTURE                          REF R10
      157 SETTABLEKS                       R41 R14 K45 ["makeSingleTestResult"]
      159 NEWCLOSURE                       R7 P15
      160 CAPTURE                          VAL R3
      161 CAPTURE                          REF R7
      162 CAPTURE                          VAL R41
      163 DUPCLOSURE                       R8 K46 [PROTO_25]
      164 CAPTURE                          VAL R3
      165 SETTABLEKS                       R8 R14 K47 ["getTestID"]
      167 DUPCLOSURE                       R9 K48 [PROTO_26]
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R22
      172 DUPCLOSURE                       R10 K49 [PROTO_27]
      173 DUPCLOSURE                       R42 K50 [PROTO_28]
      174 CAPTURE                          VAL R42
      175 SETTABLEKS                       R42 R14 K51 ["addErrorToEachTestUnderDescribe"]
      177 DUPCLOSURE                       R11 K52 [PROTO_29]
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R5
      180 SETTABLEKS                       R11 R14 K53 ["invariant"]
      182 DUPCLOSURE                       R43 K54 [PROTO_31]
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R4
      186 SETTABLEKS                       R43 R14 K55 ["parseSingleTestResult"]
      188 CLOSEUPVALS                      R7
      189 RETURN                           R14 1
