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
        9 JUMPIFNOTEQKS                    R7 K2 ["function"] ; [+4]
       11 DUPTABLE                         R7 K8 [{["_isGlobalAutomockFn"] = True, ["_maybeMock"] = , ["_maybeUnmocked"] = }]
       12 SETTABLE                         R7 R1 R5
       13 JUMP                             ; [+19]
       14 FASTCALL1                        TYPEOF R6 ; [+3]
       15 MOVE                             R8 R6
       16 GETIMPORT                        R7 K1 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+9]
       21 NEWTABLE                         R7 0 0
       23 GETUPVAL                         R8 0
       24 MOVE                             R9 R6
       25 MOVE                             R10 R7
       26 CALL                             R8 2 0
       27 SETTABLE                         R7 R1 R5
       28 JUMP                             ; [+4]
       29 GETIMPORT                        R7 K11 [error]
       31 LOADK                            R8 K12 ["Unexpected mockable global type - this is an internal bug"]
       32 CALL                             R7 1 0
       33 FORGLOOP                         R2 2 ; [-30]
       35 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K3 [{[1] = True, ["_automocksRef"]}]
        1 SETTABLEKS                       R0 R2 K2 ["_automocksRef"]
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 FASTCALL1                        TYPEOF R7 ; [+3]
        8 MOVE                             R9 R7
        9 GETIMPORT                        R8 K5 [typeof]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K6 ["table"] ; [+20]
       14 GETTABLEKS                       R8 R7 K7 ["_isGlobalAutomockFn"]
       16 JUMPIF                           R8 ; [+16]
       17 GETIMPORT                        R8 K9 [table.clone]
       19 MOVE                             R9 R1
       20 CALL                             R8 1 1
       21 FASTCALL2                        TABLE_INSERT R8 R6 ; [+5]
       23 MOVE                             R10 R8
       24 MOVE                             R11 R6
       25 GETIMPORT                        R9 K11 [table.insert]
       27 CALL                             R9 2 0
       28 GETUPVAL                         R9 0
       29 MOVE                             R10 R7
       30 MOVE                             R11 R8
       31 CALL                             R9 2 1
       32 SETTABLE                         R9 R2 R6
       33 FORGLOOP                         R3 2 ; [-27]
       35 DUPTABLE                         R5 K13 [{"__index"}]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R6 R5 K12 ["__index"]
       41 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R3 K15 [setmetatable]
       46 CALL                             R3 2 0
       47 GETIMPORT                        R3 K17 [table.freeze]
       49 MOVE                             R4 R2
       50 CALL                             R3 1 -1
       51 RETURN                           R3 -1

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
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K3 [{"print", "warn", "math"}]
        4 GETIMPORT                        R2 K4 [print]
        6 SETTABLEKS                       R2 R1 K0 ["print"]
        8 GETIMPORT                        R2 K5 [warn]
       10 SETTABLEKS                       R2 R1 K1 ["warn"]
       12 DUPTABLE                         R2 K7 [{"random"}]
       13 GETIMPORT                        R3 K8 [math.random]
       15 SETTABLEKS                       R3 R2 K6 ["random"]
       17 SETTABLEKS                       R2 R1 K2 ["math"]
       19 SETTABLEKS                       R0 R0 K9 ["__index"]
       21 DUPCLOSURE                       R2 K10 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K11 ["new"]
       25 DUPCLOSURE                       R2 K12 [PROTO_1]
       26 SETTABLEKS                       R2 R0 K13 ["isMockGlobalLibrary"]
       28 DUPCLOSURE                       R2 K14 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R2 R0 K15 ["_createGlobalAutomocks"]
       32 DUPCLOSURE                       R2 K16 [PROTO_6]
       33 SETTABLEKS                       R2 R0 K17 ["_createGlobalEnv"]
       35 DUPTABLE                         R2 K20 [{"GlobalMocker", "MOCKABLE_GLOBALS"}]
       36 SETTABLEKS                       R0 R2 K18 ["GlobalMocker"]
       38 SETTABLEKS                       R1 R2 K19 ["MOCKABLE_GLOBALS"]
       40 RETURN                           R2 1
