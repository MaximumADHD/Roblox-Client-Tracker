PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 CALL                             R3 3 -1
        5 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 LOADK                            R7 K0 ["only"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 LOADK                            R7 K0 ["skip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 LOADNIL                          R0
        1 NEWTABLE                         R2 0 0
        3 DUPTABLE                         R3 K1 [{"__call"}]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          REF R0
        7 SETTABLEKS                       R4 R3 K0 ["__call"]
        9 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       11 GETIMPORT                        R1 K3 [setmetatable]
       13 CALL                             R1 2 1
       14 MOVE                             R0 R1
       15 LOADNIL                          R1
       16 NEWTABLE                         R3 0 0
       18 DUPTABLE                         R4 K1 [{"__call"}]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          REF R1
       22 SETTABLEKS                       R5 R4 K0 ["__call"]
       24 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       26 GETIMPORT                        R2 K3 [setmetatable]
       28 CALL                             R2 2 1
       29 MOVE                             R1 R2
       30 LOADNIL                          R2
       31 NEWTABLE                         R4 0 0
       33 DUPTABLE                         R5 K1 [{"__call"}]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          REF R2
       37 SETTABLEKS                       R6 R5 K0 ["__call"]
       39 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       41 GETIMPORT                        R3 K3 [setmetatable]
       43 CALL                             R3 2 1
       44 MOVE                             R2 R3
       45 GETUPVAL                         R3 1
       46 MOVE                             R4 R0
       47 LOADB                            R5 0
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R0 K4 ["each"]
       51 GETUPVAL                         R3 1
       52 MOVE                             R4 R1
       53 LOADB                            R5 0
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R1 K4 ["each"]
       57 GETUPVAL                         R3 1
       58 MOVE                             R4 R2
       59 LOADB                            R5 0
       60 CALL                             R3 2 1
       61 SETTABLEKS                       R3 R2 K4 ["each"]
       63 SETTABLEKS                       R1 R0 K5 ["only"]
       65 SETTABLEKS                       R2 R0 K6 ["skip"]
       67 CLOSEUPVALS                      R0
       68 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 0
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["message"]
        3 SETTABLEKS                       R2 R1 K0 ["message"]
        5 GETIMPORT                        R1 K2 [error]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 LOADNIL                          R5
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+8]
        8 LOADK                            R5 K1 ["Missing second argument. It must be a callback function."]
        9 SETTABLEKS                       R5 R4 K2 ["message"]
       11 GETIMPORT                        R5 K4 [error]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K6 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K7 ["function"] ; [+12]
       22 LOADK                            R5 K8 ["Invalid second argument, %s. It must be a callback function."]
       23 MOVE                             R7 R0
       24 NAMECALL                         R5 R5 K9 ["format"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K2 ["message"]
       29 GETIMPORT                        R5 K4 [error]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 0
       33 GETIMPORT                        R5 K11 [xpcall]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          REF R1
       37 CAPTURE                          UPVAL U1
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R4
       40 CALL                             R5 2 3
       41 JUMPIFNOT                        R7 ; [+2]
       42 CLOSEUPVALS                      R1
       43 RETURN                           R6 1
       44 GETUPVAL                         R5 2
       45 DUPTABLE                         R6 K17 [{["asyncError"], ["blockName"], ["mode"], ["name"] = "start_describe_definition"}]
       46 SETTABLEKS                       R4 R6 K12 ["asyncError"]
       48 SETTABLEKS                       R1 R6 K13 ["blockName"]
       50 SETTABLEKS                       R3 R6 K14 ["mode"]
       52 CALL                             R5 1 0
       53 MOVE                             R5 R0
       54 CALL                             R5 0 1
       55 GETUPVAL                         R6 3
       56 MOVE                             R7 R5
       57 CALL                             R6 1 1
       58 JUMPIFNOT                        R6 ; [+10]
       59 GETIMPORT                        R6 K4 [error]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K0 ["new"]
       64 LOADK                            R8 K18 ["Returning a Promise from \"describe\" is not supported. Tests must be defined synchronously."]
       65 MOVE                             R9 R2
       66 CALL                             R7 2 -1
       67 CALL                             R6 -1 0
       68 JUMP                             ; [+11]
       69 JUMPIFEQKNIL                     R5 ; [+10]
       71 GETIMPORT                        R6 K4 [error]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K0 ["new"]
       76 LOADK                            R8 K19 ["A \"describe\" callback must not return a value."]
       77 MOVE                             R9 R2
       78 CALL                             R7 2 -1
       79 CALL                             R6 -1 0
       80 GETUPVAL                         R6 2
       81 DUPTABLE                         R7 K21 [{["blockName"], ["mode"], ["name"] = "finish_describe_definition"}]
       82 SETTABLEKS                       R1 R7 K13 ["blockName"]
       84 SETTABLEKS                       R3 R7 K14 ["mode"]
       86 CALL                             R6 1 0
       87 CLOSEUPVALS                      R1
       88 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 LOADNIL                          R5
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K2 [typeof]
       10 CALL                             R5 1 1
       11 JUMPIFEQKS                       R5 K3 ["function"] ; [+8]
       13 LOADK                            R5 K4 ["Invalid first argument. It must be a callback function."]
       14 SETTABLEKS                       R5 R4 K5 ["message"]
       16 GETIMPORT                        R5 K7 [error]
       18 MOVE                             R6 R4
       19 CALL                             R5 1 0
       20 GETUPVAL                         R5 1
       21 DUPTABLE                         R6 K14 [{["asyncError"], ["fn"], ["hookType"], ["name"] = "add_hook", ["timeout"]}]
       22 SETTABLEKS                       R4 R6 K8 ["asyncError"]
       24 SETTABLEKS                       R0 R6 K9 ["fn"]
       26 SETTABLEKS                       R1 R6 K10 ["hookType"]
       28 SETTABLEKS                       R3 R6 K13 ["timeout"]
       30 CALL                             R5 1 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["beforeEach"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["beforeAll"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["afterEach"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["afterAll"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 LOADNIL                          R6
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 MOVE                             R9 R3
        6 CALL                             R4 5 -1
        7 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 LOADK                            R6 K0 ["skip"]
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 MOVE                             R9 R3
        6 CALL                             R4 5 -1
        7 RETURN                           R4 -1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 LOADK                            R6 K0 ["only"]
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R8 R8 K0 ["only"]
        7 MOVE                             R9 R3
        8 CALL                             R4 5 -1
        9 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 GETUPVAL                         R5 1
        3 MOVE                             R6 R1
        4 GETGLOBAL                        R7 K0 ["failing"]
        6 MOVE                             R8 R2
        7 LOADB                            R9 1
        8 CALL                             R3 6 -1
        9 RETURN                           R3 -1

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 SETGLOBAL                        R1 K0 ["failing"]
        5 GETGLOBAL                        R1 K0 ["failing"]
        7 RETURN                           R1 1

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LENGTH                           R2 R1
        7 LOADN                            R3 0
        8 JUMPIFLT                         R3 R2 ; [+8]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFEQKS                       R2 K2 ["string"] ; [+12]
       17 GETIMPORT                        R2 K4 [error]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["new"]
       22 LOADK                            R4 K6 ["Todo must be called with only a description."]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K7 ["todo"]
       26 CALL                             R3 2 -1
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 2
       29 MOVE                             R3 R0
       30 LOADK                            R4 K7 ["todo"]
       31 DUPCLOSURE                       R5 K8 [PROTO_17]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K7 ["todo"]
       35 CALL                             R2 4 -1
       36 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 0
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["message"]
        3 SETTABLEKS                       R2 R1 K0 ["message"]
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["new"]
        3 LOADNIL                          R9
        4 MOVE                             R10 R3
        5 CALL                             R8 2 1
        6 MOVE                             R6 R8
        7 LOADB                            R7 0
        8 GETIMPORT                        R8 K2 [xpcall]
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R10 P1
       14 CAPTURE                          VAL R6
       15 CAPTURE                          REF R7
       16 CALL                             R8 2 3
       17 JUMPIFNOT                        R10 ; [+2]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R9 1
       20 JUMPIFNOT                        R7 ; [+4]
       21 GETIMPORT                        R8 K4 [error]
       23 MOVE                             R9 R6
       24 CALL                             R8 1 0
       25 JUMPIFNOTEQKNIL                  R2 ; [+8]
       27 LOADK                            R8 K5 ["Missing second argument. It must be a callback function. Perhaps you want to use `test.todo` for a test placeholder."]
       28 SETTABLEKS                       R8 R6 K6 ["message"]
       30 GETIMPORT                        R8 K4 [error]
       32 MOVE                             R9 R6
       33 CALL                             R8 1 0
       34 FASTCALL1                        TYPEOF R2 ; [+3]
       35 MOVE                             R9 R2
       36 GETIMPORT                        R8 K8 [typeof]
       38 CALL                             R8 1 1
       39 JUMPIFEQKS                       R8 K9 ["function"] ; [+16]
       41 LOADK                            R8 K10 ["Invalid second argument, %s. It must be a callback function."]
       42 FASTCALL1                        TOSTRING R2 ; [+3]
       43 MOVE                             R11 R2
       44 GETIMPORT                        R10 K12 [tostring]
       46 CALL                             R10 1 1
       47 NAMECALL                         R8 R8 K13 ["format"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R6 K6 ["message"]
       52 GETIMPORT                        R8 K4 [error]
       54 MOVE                             R9 R6
       55 CALL                             R8 1 0
       56 GETUPVAL                         R8 2
       57 DUPTABLE                         R9 K22 [{["asyncError"], ["fn"], ["failing"], ["mode"], ["name"] = "add_test", ["testName"], ["timeout"]}]
       58 SETTABLEKS                       R6 R9 K14 ["asyncError"]
       60 SETTABLEKS                       R2 R9 K15 ["fn"]
       62 JUMPIFNOTEQKNIL                  R5 ; [+3]
       64 LOADB                            R10 0
       65 JUMP                             ; [+1]
       66 MOVE                             R10 R5
       67 SETTABLEKS                       R10 R9 K16 ["failing"]
       69 SETTABLEKS                       R1 R9 K17 ["mode"]
       71 SETTABLEKS                       R0 R9 K20 ["testName"]
       73 SETTABLEKS                       R4 R9 K21 ["timeout"]
       75 CALL                             R8 1 -1
       76 CLOSEUPVALS                      R0
       77 RETURN                           R8 -1

PROTO_22:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWTABLE                         R3 0 0
        4 DUPTABLE                         R4 K1 [{"__call"}]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R5 R4 K0 ["__call"]
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K3 [setmetatable]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 LOADNIL                          R2
       17 NEWTABLE                         R4 0 0
       19 DUPTABLE                         R5 K1 [{"__call"}]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          REF R0
       22 CAPTURE                          REF R2
       23 SETTABLEKS                       R6 R5 K0 ["__call"]
       25 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       27 GETIMPORT                        R3 K3 [setmetatable]
       29 CALL                             R3 2 1
       30 MOVE                             R2 R3
       31 LOADNIL                          R3
       32 NEWTABLE                         R5 0 0
       34 DUPTABLE                         R6 K1 [{"__call"}]
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          REF R0
       37 CAPTURE                          REF R1
       38 SETTABLEKS                       R7 R6 K0 ["__call"]
       40 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       42 GETIMPORT                        R4 K3 [setmetatable]
       44 CALL                             R4 2 1
       45 MOVE                             R3 R4
       46 NEWCLOSURE                       R4 P3
       47 CAPTURE                          REF R0
       48 SETGLOBAL                        R4 K4 ["bindFailing"]
       50 NEWCLOSURE                       R4 P4
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          REF R1
       53 CAPTURE                          REF R0
       54 SETTABLEKS                       R4 R1 K5 ["todo"]
       56 DUPCLOSURE                       R0 K6 [PROTO_21]
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U2
       60 GETUPVAL                         R4 3
       61 MOVE                             R5 R1
       62 CALL                             R4 1 1
       63 SETTABLEKS                       R4 R1 K7 ["each"]
       65 GETUPVAL                         R4 3
       66 MOVE                             R5 R3
       67 CALL                             R4 1 1
       68 SETTABLEKS                       R4 R3 K7 ["each"]
       70 GETUPVAL                         R4 3
       71 MOVE                             R5 R2
       72 CALL                             R4 1 1
       73 SETTABLEKS                       R4 R2 K7 ["each"]
       75 GETGLOBAL                        R4 K4 ["bindFailing"]
       77 LOADK                            R5 K8 ["only"]
       78 CALL                             R4 1 1
       79 SETTABLEKS                       R4 R3 K9 ["failing"]
       81 GETGLOBAL                        R4 K4 ["bindFailing"]
       83 LOADK                            R5 K10 ["skip"]
       84 CALL                             R4 1 1
       85 SETTABLEKS                       R4 R2 K9 ["failing"]
       87 GETGLOBAL                        R4 K4 ["bindFailing"]
       89 CALL                             R4 0 1
       90 SETTABLEKS                       R4 R1 K9 ["failing"]
       92 SETTABLEKS                       R3 R1 K8 ["only"]
       94 SETTABLEKS                       R2 R1 K10 ["skip"]
       96 CLOSEUPVALS                      R0
       97 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 LOADNIL                          R2
        8 NEWTABLE                         R3 16 0
       10 GETIMPORT                        R4 K4 [require]
       12 GETTABLEKS                       R5 R1 K5 ["JestTypes"]
       14 CALL                             R4 1 1
       15 GETIMPORT                        R5 K4 [require]
       17 GETTABLEKS                       R6 R1 K6 ["JestEach"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R5 R5 K7 ["bind"]
       22 GETIMPORT                        R6 K4 [require]
       24 GETTABLEKS                       R7 R1 K8 ["JestUtil"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R6 K9 ["ErrorWithStack"]
       29 GETTABLEKS                       R8 R6 K10 ["convertDescriptorToString"]
       31 GETTABLEKS                       R9 R6 K11 ["isPromise"]
       33 GETIMPORT                        R10 K4 [require]
       35 GETIMPORT                        R11 K1 [script]
       37 GETTABLEKS                       R11 R11 K12 ["state"]
       39 CALL                             R10 1 1
       40 GETTABLEKS                       R10 R10 K13 ["dispatchSync"]
       42 GETIMPORT                        R11 K4 [require]
       44 GETIMPORT                        R12 K1 [script]
       46 GETTABLEKS                       R12 R12 K12 ["state"]
       48 CALL                             R11 1 1
       49 GETTABLEKS                       R12 R11 K14 ["setState"]
       51 SETTABLEKS                       R12 R3 K14 ["setState"]
       53 GETTABLEKS                       R12 R11 K15 ["getState"]
       55 SETTABLEKS                       R12 R3 K15 ["getState"]
       57 GETTABLEKS                       R12 R11 K16 ["resetState"]
       59 SETTABLEKS                       R12 R3 K16 ["resetState"]
       61 GETIMPORT                        R12 K4 [require]
       63 GETIMPORT                        R13 K1 [script]
       65 GETTABLEKS                       R13 R13 K17 ["run"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R12 R12 K18 ["default"]
       70 SETTABLEKS                       R12 R3 K17 ["run"]
       72 GETIMPORT                        R12 K4 [require]
       74 GETTABLEKS                       R13 R1 K19 ["LuauPolyfill"]
       76 CALL                             R12 1 1
       77 NEWCLOSURE                       R13 P0
       78 CAPTURE                          REF R2
       79 CAPTURE                          VAL R5
       80 CALL                             R13 0 1
       81 DUPCLOSURE                       R2 K20 [PROTO_6]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 DUPCLOSURE                       R14 K21 [PROTO_7]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 LOADNIL                          R15
       90 NEWCLOSURE                       R15 P3
       91 CAPTURE                          VAL R14
       92 CAPTURE                          REF R15
       93 LOADNIL                          R16
       94 NEWCLOSURE                       R16 P4
       95 CAPTURE                          VAL R14
       96 CAPTURE                          REF R16
       97 LOADNIL                          R17
       98 NEWCLOSURE                       R17 P5
       99 CAPTURE                          VAL R14
      100 CAPTURE                          REF R17
      101 LOADNIL                          R18
      102 NEWCLOSURE                       R18 P6
      103 CAPTURE                          VAL R14
      104 CAPTURE                          REF R18
      105 DUPCLOSURE                       R19 K22 [PROTO_22]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R5
      110 CALL                             R19 0 1
      111 SETTABLEKS                       R18 R3 K23 ["afterAll"]
      113 SETTABLEKS                       R17 R3 K24 ["afterEach"]
      115 SETTABLEKS                       R16 R3 K25 ["beforeAll"]
      117 SETTABLEKS                       R15 R3 K26 ["beforeEach"]
      119 SETTABLEKS                       R13 R3 K27 ["describe"]
      121 SETTABLEKS                       R19 R3 K28 ["it"]
      123 SETTABLEKS                       R19 R3 K29 ["test"]
      125 DUPTABLE                         R20 K30 [{"afterAll", "afterEach", "beforeAll", "beforeEach", "describe", "it", "test"}]
      126 SETTABLEKS                       R18 R20 K23 ["afterAll"]
      128 SETTABLEKS                       R17 R20 K24 ["afterEach"]
      130 SETTABLEKS                       R16 R20 K25 ["beforeAll"]
      132 SETTABLEKS                       R15 R20 K26 ["beforeEach"]
      134 SETTABLEKS                       R13 R20 K27 ["describe"]
      136 SETTABLEKS                       R19 R20 K28 ["it"]
      138 SETTABLEKS                       R19 R20 K29 ["test"]
      140 SETTABLEKS                       R20 R3 K18 ["default"]
      142 CLOSEUPVALS                      R2
      143 RETURN                           R3 1
