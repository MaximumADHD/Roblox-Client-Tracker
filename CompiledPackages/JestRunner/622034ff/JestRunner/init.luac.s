PROTO_0:
        0 NEWTABLE                         R3 4 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_globalConfig"]
       10 MOVE                             R3 R1
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K3 ["_context"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K4 ["_loadedModuleFns"]
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["serial"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R4 4
        8 GETUPVAL                         R5 5
        9 GETUPVAL                         R6 6
       10 NAMECALL                         R0 R0 K1 ["_createInBandTestRun"]
       12 CALL                             R0 6 1
       13 NAMECALL                         R0 R0 K2 ["expect"]
       15 CALL                             R0 1 1
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 5
       22 GETUPVAL                         R6 6
       23 NAMECALL                         R0 R0 K3 ["_createParallelTestRun"]
       25 CALL                             R0 6 1
       26 NAMECALL                         R0 R0 K2 ["expect"]
       28 CALL                             R0 1 1
       29 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["resolve"]
        3 CALL                             R7 0 1
        4 NEWCLOSURE                       R9 P0
        5 CAPTURE                          VAL R6
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R5
       12 NAMECALL                         R7 R7 K1 ["andThen"]
       14 CALL                             R7 2 -1
       15 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isInterrupted"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETIMPORT                        R0 K2 [error]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["new"]
       10 CALL                             R1 0 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFEQKNIL                     R0 ; [+7]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 1
       18 NAMECALL                         R0 R0 K4 ["expect"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 4
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K5 ["script"]
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K6 ["_globalConfig"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K7 ["context"]
       31 GETTABLEKS                       R3 R3 K8 ["config"]
       33 LOADNIL                          R4
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K9 ["_context"]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R6 R6 K10 ["_loadedModuleFns"]
       40 CALL                             R0 6 -1
       41 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 NAMECALL                         R0 R0 K1 ["andThen"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["resolve"]
       11 CALL                             R1 0 -1
       12 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["resolve"]
       11 CALL                             R1 0 -1
       12 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 NAMECALL                         R0 R0 K0 ["andThen"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R0 R0 K0 ["andThen"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R0 R0 K1 ["catch"]
       25 CALL                             R0 2 -1
       26 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["resolve"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 MOVE                             R7 R1
       12 MOVE                             R8 R0
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R7
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U9
       24 CALL                             R8 1 1
       25 MOVE                             R1 R8
       26 FORGLOOP                         R2 2 ; [-16]
       28 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R5
       15 NAMECALL                         R6 R6 K1 ["andThen"]
       17 CALL                             R6 2 -1
       18 RETURN                           R6 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["Parallel tests run not implemented yet\nRunning tests in band instead"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R6 5
       10 NAMECALL                         R0 R0 K3 ["_createInBandTestRun"]
       12 CALL                             R0 6 -1
       13 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R5
       11 NAMECALL                         R6 R6 K1 ["andThen"]
       13 CALL                             R6 2 -1
       14 RETURN                           R6 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_loadedModuleFns"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEN                        R6 R5 3
        6 JUMPIFEQKNIL                     R6 ; [+3]
        8 MOVE                             R7 R6
        9 CALL                             R7 0 0
       10 FORGLOOP                         R1 2 ; [-6]
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K2 [setmetatable]
       10 CALL                             R1 2 1
       11 LOADK                            R2 K3 ["CancelRun"]
       12 SETTABLEKS                       R2 R1 K4 ["name"]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Promise"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Throat"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["JestTestResult"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["JestTypes"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K9 ["Error"]
       27 GETIMPORT                        R6 K4 [require]
       29 GETIMPORT                        R7 K1 [script]
       31 GETTABLEKS                       R7 R7 K10 ["runTest"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K4 [require]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K11 ["types"]
       40 CALL                             R7 1 1
       41 LOADNIL                          R8
       42 NEWTABLE                         R9 0 0
       44 SETTABLEKS                       R9 R9 K12 ["__index"]
       46 DUPCLOSURE                       R10 K13 [PROTO_0]
       47 CAPTURE                          VAL R9
       48 SETTABLEKS                       R10 R9 K14 ["new"]
       50 DUPCLOSURE                       R10 K15 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R10 R9 K16 ["runTests"]
       54 NEWCLOSURE                       R10 P2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          REF R8
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R10 R9 K17 ["_createInBandTestRun"]
       61 DUPCLOSURE                       R10 K18 [PROTO_11]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R10 R9 K19 ["_createParallelTestRun"]
       65 DUPCLOSURE                       R10 K20 [PROTO_12]
       66 SETTABLEKS                       R10 R9 K21 ["cleanup"]
       68 NEWTABLE                         R11 0 0
       70 DUPTABLE                         R12 K22 [{"__index"}]
       71 SETTABLEKS                       R5 R12 K12 ["__index"]
       73 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
       75 GETIMPORT                        R10 K24 [setmetatable]
       77 CALL                             R10 2 1
       78 MOVE                             R8 R10
       79 SETTABLEKS                       R8 R8 K12 ["__index"]
       81 NEWCLOSURE                       R10 P5
       82 CAPTURE                          VAL R5
       83 CAPTURE                          REF R8
       84 SETTABLEKS                       R10 R8 K14 ["new"]
       86 CLOSEUPVALS                      R8
       87 RETURN                           R9 1
