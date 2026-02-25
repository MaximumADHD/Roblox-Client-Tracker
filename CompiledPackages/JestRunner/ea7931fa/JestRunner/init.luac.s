PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["eventEmitter"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["__PRIVATE_UNSTABLE_API_supportsEventEmitters__"]
       17 SETTABLEKS                       R0 R2 K5 ["_globalConfig"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K6 ["toJSBoolean"]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+2]
       25 MOVE                             R3 R1
       26 JUMPIF                           R3 ; [+2]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K7 ["_context"]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R3 R4 K2 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K8 ["_loadedModuleFns"]
       37 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["serial"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 GETUPVAL                         R4 5
       12 GETUPVAL                         R5 6
       13 GETUPVAL                         R6 7
       14 NAMECALL                         R0 R0 K2 ["_createInBandTestRun"]
       16 CALL                             R0 6 1
       17 NAMECALL                         R0 R0 K3 ["expect"]
       19 CALL                             R0 1 1
       20 RETURN                           R0 1
       21 GETUPVAL                         R0 2
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 5
       25 GETUPVAL                         R5 6
       26 GETUPVAL                         R6 7
       27 NAMECALL                         R0 R0 K4 ["_createParallelTestRun"]
       29 CALL                             R0 6 1
       30 NAMECALL                         R0 R0 K3 ["expect"]
       32 CALL                             R0 1 1
       33 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K0 ["resolve"]
        3 CALL                             R7 0 1
        4 NEWCLOSURE                       R9 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R6
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R5
       13 NAMECALL                         R7 R7 K1 ["andThen"]
       15 CALL                             R7 2 -1
       16 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["eventEmitter"]
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 DUPTABLE                         R7 K2 [{"keepPrototype"}]
        7 LOADB                            R8 0
        8 SETTABLEKS                       R8 R7 K1 ["keepPrototype"]
       10 CALL                             R5 2 -1
       11 NAMECALL                         R2 R2 K3 ["emit"]
       13 CALL                             R2 -1 -1
       14 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isInterrupted"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETIMPORT                        R0 K2 [error]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["new"]
       10 CALL                             R1 0 -1
       11 CALL                             R0 -1 0
       12 LOADNIL                          R0
       13 GETUPVAL                         R1 2
       14 JUMPIFEQKNIL                     R1 ; [+29]
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 NAMECALL                         R1 R1 K4 ["expect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 4
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R2 R3 K5 ["script"]
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R3 R4 K6 ["_globalConfig"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K7 ["context"]
       32 GETTABLEKS                       R4 R5 K8 ["config"]
       34 LOADNIL                          R5
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R6 R7 K9 ["_context"]
       38 LOADNIL                          R7
       39 GETUPVAL                         R9 5
       40 GETTABLEKS                       R8 R9 K10 ["_loadedModuleFns"]
       42 CALL                             R1 7 -1
       43 RETURN                           R1 -1
       44 NEWCLOSURE                       R0 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 GETUPVAL                         R2 5
       48 GETTABLEKS                       R1 R2 K11 ["eventEmitter"]
       50 LOADK                            R3 K12 ["test-file-start"]
       51 NEWTABLE                         R4 0 1
       53 GETUPVAL                         R5 3
       54 SETLIST                          R4 R5 1 [1]
       56 NAMECALL                         R1 R1 K13 ["emit"]
       58 CALL                             R1 3 1
       59 NAMECALL                         R1 R1 K4 ["expect"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 4
       63 GETUPVAL                         R3 3
       64 GETTABLEKS                       R2 R3 K5 ["script"]
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R3 R4 K6 ["_globalConfig"]
       69 GETUPVAL                         R6 3
       70 GETTABLEKS                       R5 R6 K7 ["context"]
       72 GETTABLEKS                       R4 R5 K8 ["config"]
       74 LOADNIL                          R5
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R6 R7 K9 ["_context"]
       78 MOVE                             R7 R0
       79 GETUPVAL                         R9 5
       80 GETTABLEKS                       R8 R9 K10 ["_loadedModuleFns"]
       82 CALL                             R1 7 -1
       83 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 NAMECALL                         R0 R0 K1 ["andThen"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["eventEmitter"]
       11 LOADK                            R3 K1 ["test-file-success"]
       12 NEWTABLE                         R4 0 2
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R0
       16 SETLIST                          R4 R5 2 [1]
       18 NAMECALL                         R1 R1 K2 ["emit"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["eventEmitter"]
       11 LOADK                            R3 K1 ["test-file-failure"]
       12 NEWTABLE                         R4 0 2
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R0
       16 SETLIST                          R4 R5 2 [1]
       18 NAMECALL                         R1 R1 K2 ["emit"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 NAMECALL                         R0 R0 K0 ["andThen"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U7
       17 NAMECALL                         R0 R0 K0 ["andThen"]
       19 CALL                             R0 2 1
       20 NEWCLOSURE                       R2 P2
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U7
       24 NAMECALL                         R0 R0 K1 ["catch"]
       26 CALL                             R0 2 1
       27 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R4 R1 K0 ["script"]
        5 NAMECALL                         R2 R2 K1 ["GetScriptFilePath"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K2 ["path"]
       10 GETUPVAL                         R2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["reduce"]
        6 GETUPVAL                         R2 2
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U11
       18 CAPTURE                          UPVAL U12
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R4 R5 K1 ["resolve"]
       22 CALL                             R4 0 -1
       23 CALL                             R1 -1 -1
       24 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R5
       18 NAMECALL                         R6 R6 K1 ["andThen"]
       20 CALL                             R6 2 -1
       21 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["warn"]
        3 LOADK                            R1 K1 ["Parallel tests run not implemented yet\nRunning tests in band instead"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 GETUPVAL                         R5 5
       10 GETUPVAL                         R6 6
       11 NAMECALL                         R0 R0 K2 ["_createInBandTestRun"]
       13 CALL                             R0 6 -1
       14 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R5
       12 NAMECALL                         R6 R6 K1 ["andThen"]
       14 CALL                             R6 2 -1
       15 RETURN                           R6 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["eventEmitter"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["on"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_15:
        0 GETTABLEN                        R1 R0 3
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_loadedModuleFns"]
        2 DUPCLOSURE                       R3 K1 [PROTO_15]
        3 NAMECALL                         R1 R1 K2 ["forEach"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Array"]
       12 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       14 GETTABLEKS                       R4 R1 K8 ["Error"]
       16 GETTABLEKS                       R5 R1 K9 ["Map"]
       18 GETTABLEKS                       R6 R1 K10 ["console"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R0 K11 ["Promise"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R9 K4 [require]
       27 GETTABLEKS                       R10 R0 K12 ["RobloxShared"]
       29 CALL                             R9 1 1
       30 GETTABLEKS                       R8 R9 K13 ["getDataModelService"]
       32 MOVE                             R9 R8
       33 LOADK                            R10 K14 ["CoreScriptSyncService"]
       34 CALL                             R9 1 1
       35 NEWTABLE                         R10 1 0
       37 GETIMPORT                        R11 K4 [require]
       39 GETTABLEKS                       R12 R0 K15 ["Emittery"]
       41 CALL                             R11 1 1
       42 GETTABLEKS                       R12 R11 K16 ["default"]
       44 GETIMPORT                        R13 K4 [require]
       46 GETTABLEKS                       R14 R0 K17 ["Throat"]
       48 CALL                             R13 1 1
       49 GETTABLEKS                       R14 R13 K16 ["default"]
       51 GETIMPORT                        R15 K4 [require]
       53 GETTABLEKS                       R16 R0 K18 ["JestTestResult"]
       55 CALL                             R15 1 1
       56 GETIMPORT                        R16 K4 [require]
       58 GETTABLEKS                       R17 R0 K19 ["JestTypes"]
       60 CALL                             R16 1 1
       61 GETIMPORT                        R18 K4 [require]
       63 GETTABLEKS                       R19 R0 K20 ["JestUtil"]
       65 CALL                             R18 1 1
       66 GETTABLEKS                       R17 R18 K21 ["deepCyclicCopy"]
       68 GETIMPORT                        R19 K4 [require]
       70 GETIMPORT                        R21 K1 [script]
       72 GETTABLEKS                       R20 R21 K22 ["runTest"]
       74 CALL                             R19 1 1
       75 GETTABLEKS                       R18 R19 K16 ["default"]
       77 GETIMPORT                        R19 K4 [require]
       79 GETIMPORT                        R21 K1 [script]
       81 GETTABLEKS                       R20 R21 K23 ["types"]
       83 CALL                             R19 1 1
       84 LOADNIL                          R20
       85 NEWTABLE                         R21 0 0
       87 SETTABLEKS                       R21 R21 K24 ["__index"]
       89 DUPCLOSURE                       R22 K25 [PROTO_0]
       90 CAPTURE                          VAL R21
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R22 R21 K26 ["new"]
       96 DUPCLOSURE                       R22 K27 [PROTO_2]
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R22 R21 K28 ["runTests"]
      101 NEWCLOSURE                       R22 P2
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R9
      106 CAPTURE                          REF R20
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R17
      109 SETTABLEKS                       R22 R21 K29 ["_createInBandTestRun"]
      111 DUPCLOSURE                       R22 K30 [PROTO_13]
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R22 R21 K31 ["_createParallelTestRun"]
      116 DUPCLOSURE                       R22 K32 [PROTO_14]
      117 SETTABLEKS                       R22 R21 K33 ["on"]
      119 DUPCLOSURE                       R22 K34 [PROTO_16]
      120 SETTABLEKS                       R22 R21 K35 ["cleanup"]
      122 SETTABLEKS                       R21 R10 K16 ["default"]
      124 NEWTABLE                         R23 0 0
      126 DUPTABLE                         R24 K36 [{"__index"}]
      127 SETTABLEKS                       R4 R24 K24 ["__index"]
      129 FASTCALL2                        SETMETATABLE R23 R24 ; [+3]
      131 GETIMPORT                        R22 K38 [setmetatable]
      133 CALL                             R22 2 1
      134 MOVE                             R20 R22
      135 SETTABLEKS                       R20 R20 K24 ["__index"]
      137 NEWCLOSURE                       R22 P6
      138 CAPTURE                          VAL R4
      139 CAPTURE                          REF R20
      140 SETTABLEKS                       R22 R20 K26 ["new"]
      142 CLOSEUPVALS                      R20
      143 RETURN                           R10 1
