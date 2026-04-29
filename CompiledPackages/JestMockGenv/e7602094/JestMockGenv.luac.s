PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NAMECALL                         R1 R0 K2 ["_createGlobalAutomocks"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K3 ["automocks"]
       13 GETTABLEKS                       R3 R0 K3 ["automocks"]
       15 NAMECALL                         R1 R0 K4 ["_createGlobalEnv"]
       17 CALL                             R1 2 1
       18 SETTABLEKS                       R1 R0 K5 ["envObject"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K6 ["currentlyMocked"]
       23 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R3 R1 K3 ["_isMockGlobalLibrary"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 FASTCALL1                        TYPEOF R6 ; [+3]
        5 MOVE                             R8 R6
        6 GETIMPORT                        R7 K1 [typeof]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKS                    R7 K2 ["function"] ; [+13]
       11 DUPTABLE                         R7 K6 [{"_isGlobalAutomockFn", "_maybeMock", "_maybeUnmocked"}]
       12 LOADB                            R8 1
       13 SETTABLEKS                       R8 R7 K3 ["_isGlobalAutomockFn"]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["_maybeMock"]
       18 LOADNIL                          R8
       19 SETTABLEKS                       R8 R7 K5 ["_maybeUnmocked"]
       21 SETTABLE                         R7 R1 R5
       22 JUMP                             ; [+19]
       23 FASTCALL1                        TYPEOF R6 ; [+3]
       24 MOVE                             R8 R6
       25 GETIMPORT                        R7 K1 [typeof]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKS                    R7 K7 ["table"] ; [+9]
       30 NEWTABLE                         R7 0 0
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R6
       34 MOVE                             R10 R7
       35 CALL                             R8 2 0
       36 SETTABLE                         R7 R1 R5
       37 JUMP                             ; [+4]
       38 GETIMPORT                        R7 K9 [error]
       40 LOADK                            R8 K10 ["Unexpected mockable global type - this is an internal bug"]
       41 CALL                             R7 1 0
       42 FORGLOOP                         R2 2 ; [-39]
       44 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          VAL R1
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R1
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+10]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R4 K5 ["Cannot index globalEnv with %* (expected string)"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K6 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 LOADN                            R4 1
       17 LOADN                            R5 2
       18 FASTCALL3                        STRING_SUB R1 R4 R5
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K8 [string.sub]
       23 CALL                             R2 3 1
       24 JUMPIFNOTEQKS                    R2 K9 ["$$"] ; [+3]
       26 LOADNIL                          R2
       27 RETURN                           R2 1
       28 GETUPVAL                         R3 0
       29 GETTABLE                         R2 R3 R1
       30 FASTCALL1                        TYPEOF R2 ; [+3]
       31 MOVE                             R4 R2
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFNOTEQKS                    R3 K10 ["table"] ; [+12]
       37 GETTABLEKS                       R3 R2 K11 ["_isGlobalAutomockFn"]
       39 JUMPIFNOT                        R3 ; [+8]
       40 GETTABLEKS                       R3 R2 K12 ["_maybeUnmocked"]
       42 JUMPIF                           R3 ; [+4]
       43 GETIMPORT                        R3 K4 [error]
       45 LOADK                            R4 K13 ["globalEnv has not been initialised by Jest here"]
       46 CALL                             R3 1 1
       47 RETURN                           R3 1
       48 LOADK                            R3 K14 [""]
       49 GETUPVAL                         R4 1
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 MOVE                             R9 R3
       54 MOVE                             R10 R8
       55 LOADK                            R11 K15 ["."]
       56 CONCAT                           R3 R9 R11
       57 FORGLOOP                         R4 2 ; [-5]
       59 MOVE                             R4 R3
       60 MOVE                             R5 R1
       61 CONCAT                           R3 R4 R5
       62 GETIMPORT                        R4 K4 [error]
       64 LOADK                            R6 K16 ["Jest does not yet support mocking the %* global."]
       65 MOVE                             R8 R3
       66 NAMECALL                         R6 R6 K6 ["format"]
       68 CALL                             R6 2 1
       69 MOVE                             R5 R6
       70 CALL                             R4 1 0
       71 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"_isMockGlobalLibrary", "_automocksRef"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["_isMockGlobalLibrary"]
        4 SETTABLEKS                       R0 R2 K1 ["_automocksRef"]
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 FASTCALL1                        TYPEOF R7 ; [+3]
       11 MOVE                             R9 R7
       12 GETIMPORT                        R8 K4 [typeof]
       14 CALL                             R8 1 1
       15 JUMPIFNOTEQKS                    R8 K5 ["table"] ; [+20]
       17 GETTABLEKS                       R8 R7 K6 ["_isGlobalAutomockFn"]
       19 JUMPIF                           R8 ; [+16]
       20 GETIMPORT                        R8 K8 [table.clone]
       22 MOVE                             R9 R1
       23 CALL                             R8 1 1
       24 FASTCALL2                        TABLE_INSERT R8 R6 ; [+5]
       26 MOVE                             R10 R8
       27 MOVE                             R11 R6
       28 GETIMPORT                        R9 K10 [table.insert]
       30 CALL                             R9 2 0
       31 GETUPVAL                         R9 0
       32 MOVE                             R10 R7
       33 MOVE                             R11 R8
       34 CALL                             R9 2 1
       35 SETTABLE                         R9 R2 R6
       36 FORGLOOP                         R3 2 ; [-27]
       38 DUPTABLE                         R5 K12 [{"__index"}]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R5 K11 ["__index"]
       44 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       46 MOVE                             R4 R2
       47 GETIMPORT                        R3 K14 [setmetatable]
       49 CALL                             R3 2 0
       50 GETIMPORT                        R3 K16 [table.freeze]
       52 MOVE                             R4 R2
       53 CALL                             R3 1 -1
       54 RETURN                           R3 -1

PROTO_6:
        0 DUPCLOSURE                       R2 K0 [PROTO_5]
        1 CAPTURE                          VAL R2
        2 MOVE                             R3 R2
        3 MOVE                             R4 R1
        4 NEWTABLE                         R5 0 0
        6 CALL                             R3 2 1
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 2 0
       12 NEWTABLE                         R4 8 0
       14 DUPTABLE                         R5 K9 [{"print", "warn", "math"}]
       15 GETIMPORT                        R6 K10 [print]
       17 SETTABLEKS                       R6 R5 K6 ["print"]
       19 GETIMPORT                        R6 K11 [warn]
       21 SETTABLEKS                       R6 R5 K7 ["warn"]
       23 DUPTABLE                         R6 K13 [{"random"}]
       24 GETIMPORT                        R7 K14 [math.random]
       26 SETTABLEKS                       R7 R6 K12 ["random"]
       28 SETTABLEKS                       R6 R5 K8 ["math"]
       30 SETTABLEKS                       R4 R4 K15 ["__index"]
       32 DUPCLOSURE                       R6 K16 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R6 R4 K17 ["new"]
       36 DUPCLOSURE                       R6 K18 [PROTO_1]
       37 SETTABLEKS                       R6 R4 K19 ["isMockGlobalLibrary"]
       39 DUPCLOSURE                       R6 K20 [PROTO_3]
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R6 R4 K21 ["_createGlobalAutomocks"]
       43 DUPCLOSURE                       R6 K22 [PROTO_6]
       44 SETTABLEKS                       R6 R4 K23 ["_createGlobalEnv"]
       46 SETTABLEKS                       R4 R3 K24 ["GlobalMocker"]
       48 SETTABLEKS                       R5 R3 K25 ["MOCKABLE_GLOBALS"]
       50 RETURN                           R3 1
