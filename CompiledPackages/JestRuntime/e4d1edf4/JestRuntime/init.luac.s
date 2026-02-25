PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["isTornDown"]
       11 DUPTABLE                         R2 K4 [{"fakeTimersModern"}]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["new"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K3 ["fakeTimersModern"]
       18 SETTABLEKS                       R2 R1 K6 ["_environment"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K5 ["new"]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K7 ["_explicitShouldMock"]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R2 R3 K5 ["new"]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K8 ["_explicitShouldMockModule"]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R2 R3 K5 ["new"]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R1 K9 ["_internalModuleRegistry"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R2 R3 K5 ["new"]
       41 CALL                             R2 0 1
       42 SETTABLEKS                       R2 R1 K10 ["_mockFactories"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R2 R3 K5 ["new"]
       47 CALL                             R2 0 1
       48 SETTABLEKS                       R2 R1 K11 ["_mockRegistry"]
       50 SETTABLEKS                       R0 R1 K12 ["_loadedModuleFns"]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K5 ["new"]
       55 CALL                             R2 0 1
       56 SETTABLEKS                       R2 R1 K13 ["_moduleMocker"]
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R2 R3 K5 ["new"]
       61 GETUPVAL                         R4 5
       62 GETTABLEKS                       R3 R4 K14 ["MOCKABLE_GLOBALS"]
       64 CALL                             R2 1 1
       65 SETTABLEKS                       R2 R1 K15 ["_globalMocker"]
       67 GETTABLEKS                       R2 R1 K13 ["_moduleMocker"]
       69 GETTABLEKS                       R4 R1 K15 ["_globalMocker"]
       71 GETIMPORT                        R5 K17 [getfenv]
       73 LOADN                            R6 0
       74 CALL                             R5 1 -1
       75 NAMECALL                         R2 R2 K18 ["mockGlobals"]
       77 CALL                             R2 -1 0
       78 LOADNIL                          R2
       79 SETTABLEKS                       R2 R1 K19 ["_isolatedModuleRegistry"]
       81 LOADNIL                          R2
       82 SETTABLEKS                       R2 R1 K20 ["_isolatedMockRegistry"]
       84 GETUPVAL                         R3 2
       85 GETTABLEKS                       R2 R3 K5 ["new"]
       87 CALL                             R2 0 1
       88 SETTABLEKS                       R2 R1 K21 ["_moduleRegistry"]
       90 LOADB                            R2 0
       91 SETTABLEKS                       R2 R1 K22 ["_shouldAutoMock"]
       93 GETUPVAL                         R3 2
       94 GETTABLEKS                       R2 R3 K5 ["new"]
       96 CALL                             R2 0 1
       97 SETTABLEKS                       R2 R1 K23 ["_shouldMockModuleCache"]
       99 GETTABLEKS                       R3 R1 K6 ["_environment"]
      101 GETTABLEKS                       R2 R3 K3 ["fakeTimersModern"]
      103 SETTABLEKS                       R2 R1 K24 ["_fakeTimersImplementation"]
      105 GETIMPORT                        R2 K26 [script]
      107 MOVE                             R5 R2
      108 NAMECALL                         R3 R1 K27 ["_createJestObjectFor"]
      110 CALL                             R3 2 1
      111 SETTABLEKS                       R3 R1 K28 ["_jestObject"]
      113 NEWTABLE                         R3 0 0
      115 SETTABLEKS                       R3 R1 K29 ["_cleanupFns"]
      117 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 GETUPVAL                         R7 6
        7 GETUPVAL                         R8 7
        8 NAMECALL                         R0 R0 K0 ["_loadModule"]
       10 CALL                             R0 8 0
       11 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R2 ; [+3]
        2 MOVE                             R6 R1
        3 JUMP                             ; [+1]
        4 MOVE                             R6 R2
        5 GETIMPORT                        R7 K2 [string.find]
        7 GETTABLEKS                       R8 R6 K3 ["Name"]
        9 LOADK                            R9 K4 [".global$"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETIMPORT                        R7 K6 [require]
       14 MOVE                             R8 R6
       15 CALL                             R7 1 -1
       16 RETURN                           R7 -1
       17 FASTCALL1                        TYPEOF R3 ; [+3]
       18 MOVE                             R9 R3
       19 GETIMPORT                        R8 K8 [typeof]
       21 CALL                             R8 1 1
       22 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+8]
       24 GETTABLEKS                       R8 R3 K10 ["isInternalModule"]
       26 JUMPIFEQKNIL                     R8 ; [+4]
       28 GETTABLEKS                       R7 R3 K10 ["isInternalModule"]
       30 JUMP                             ; [+1]
       31 LOADB                            R7 0
       32 LOADNIL                          R8
       33 JUMPIFNOT                        R7 ; [+3]
       34 GETTABLEKS                       R8 R0 K11 ["_internalModuleRegistry"]
       36 JUMP                             ; [+9]
       37 GETTABLEKS                       R9 R0 K12 ["_isolatedModuleRegistry"]
       39 JUMPIFEQKNIL                     R9 ; [+4]
       41 GETTABLEKS                       R8 R0 K12 ["_isolatedModuleRegistry"]
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R8 R0 K13 ["_moduleRegistry"]
       46 MOVE                             R11 R6
       47 NAMECALL                         R9 R8 K14 ["get"]
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+4]
       51 GETTABLEKS                       R10 R9 K15 ["exports"]
       53 CLOSEUPVALS                      R8
       54 RETURN                           R10 1
       55 DUPTABLE                         R10 K19 [{"exports", "filename", "id", "loaded"}]
       56 NEWTABLE                         R11 0 0
       58 SETTABLEKS                       R11 R10 K15 ["exports"]
       60 SETTABLEKS                       R6 R10 K16 ["filename"]
       62 SETTABLEKS                       R6 R10 K17 ["id"]
       64 LOADB                            R11 0
       65 SETTABLEKS                       R11 R10 K18 ["loaded"]
       67 MOVE                             R13 R6
       68 MOVE                             R14 R10
       69 NAMECALL                         R11 R8 K20 ["set"]
       71 CALL                             R11 3 0
       72 GETIMPORT                        R11 K22 [pcall]
       74 NEWCLOSURE                       R12 P0
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R3
       81 CAPTURE                          REF R8
       82 CAPTURE                          VAL R5
       83 CALL                             R11 1 2
       84 JUMPIF                           R11 ; [+8]
       85 MOVE                             R15 R6
       86 NAMECALL                         R13 R8 K23 ["delete"]
       88 CALL                             R13 2 0
       89 GETIMPORT                        R13 K25 [error]
       91 MOVE                             R14 R12
       92 CALL                             R13 1 0
       93 GETTABLEKS                       R13 R10 K15 ["exports"]
       95 CLOSEUPVALS                      R8
       96 RETURN                           R13 1

PROTO_3:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 DUPTABLE                         R7 K1 [{"isInternalModule"}]
        3 LOADB                            R8 1
        4 SETTABLEKS                       R8 R7 K0 ["isInternalModule"]
        6 NAMECALL                         R3 R0 K2 ["requireModule"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 LOADNIL                          R7
        3 LOADB                            R8 1
        4 NAMECALL                         R3 R0 K0 ["requireModule"]
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_isolatedMockRegistry"]
        2 JUMPIFEQKNIL                     R3 ; [+15]
        4 GETTABLEKS                       R3 R0 K0 ["_isolatedMockRegistry"]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K1 ["has"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+7]
       11 GETTABLEKS                       R3 R0 K0 ["_isolatedMockRegistry"]
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K2 ["get"]
       16 CALL                             R3 2 1
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K3 ["_mockRegistry"]
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R3 K1 ["has"]
       23 CALL                             R3 2 1
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETTABLEKS                       R3 R0 K3 ["_mockRegistry"]
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K2 ["get"]
       30 CALL                             R3 2 1
       31 RETURN                           R3 1
       32 GETTABLEKS                       R3 R0 K0 ["_isolatedMockRegistry"]
       34 JUMPIF                           R3 ; [+2]
       35 GETTABLEKS                       R3 R0 K3 ["_mockRegistry"]
       37 GETTABLEKS                       R4 R0 K4 ["_mockFactories"]
       39 MOVE                             R6 R2
       40 NAMECALL                         R4 R4 K1 ["has"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+13]
       44 GETTABLEKS                       R4 R0 K4 ["_mockFactories"]
       46 MOVE                             R6 R2
       47 NAMECALL                         R4 R4 K2 ["get"]
       49 CALL                             R4 2 1
       50 CALL                             R4 0 1
       51 MOVE                             R7 R2
       52 MOVE                             R8 R4
       53 NAMECALL                         R5 R3 K5 ["set"]
       55 CALL                             R5 3 0
       56 RETURN                           R4 1
       57 GETIMPORT                        R4 K7 [error]
       59 LOADK                            R5 K8 ["manual mocks not implemented yet"]
       60 CALL                             R4 1 0
       61 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R10 0
        1 GETTABLEKS                       R9 R10 K0 ["toJSBoolean"]
        3 MOVE                             R10 R3
        4 CALL                             R9 1 1
        5 JUMPIFNOT                        R9 ; [+2]
        6 MOVE                             R8 R2
        7 JUMP                             ; [+1]
        8 LOADNIL                          R8
        9 MOVE                             R11 R1
       10 MOVE                             R12 R5
       11 MOVE                             R13 R6
       12 MOVE                             R14 R8
       13 MOVE                             R15 R7
       14 NAMECALL                         R9 R0 K1 ["_execModule"]
       16 CALL                             R9 6 0
       17 LOADB                            R8 1
       18 SETTABLEKS                       R8 R1 K2 ["loaded"]
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["_explicitShouldMock"]
        6 DUPTABLE                         R5 K2 [{"conditions"}]
        7 LOADNIL                          R6
        8 SETTABLEKS                       R6 R5 K1 ["conditions"]
       10 NAMECALL                         R0 R0 K3 ["_shouldMock"]
       12 CALL                             R0 5 1
       13 JUMPIFNOT                        R0 ; [+7]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 2
       17 NAMECALL                         R1 R1 K4 ["requireMock"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1
       21 GETUPVAL                         R1 0
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R4 2
       24 NAMECALL                         R1 R1 K5 ["requireModule"]
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R2 K1 [script]
        2 JUMPIFEQ                         R1 R2 ; [+17]
        4 GETIMPORT                        R4 K1 [script]
        6 GETTABLEKS                       R3 R4 K2 ["Parent"]
        8 FASTCALL1                        TYPEOF R3 ; [+2]
        9 GETIMPORT                        R2 K4 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K5 ["ModuleScript"] ; [+12]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R2 R3 K2 ["Parent"]
       18 JUMPIFNOTEQ                      R1 R2 ; [+6]
       20 GETIMPORT                        R2 K7 [require]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1
       25 GETIMPORT                        R2 K10 [string.find]
       27 GETTABLEKS                       R3 R1 K11 ["Name"]
       29 LOADK                            R4 K12 [".global$"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETIMPORT                        R2 K7 [require]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1
       37 GETTABLEKS                       R2 R1 K11 ["Name"]
       39 JUMPIFNOTEQKS                    R2 K13 ["JestGlobals"] ; [+17]
       41 NAMECALL                         R2 R0 K14 ["getGlobalsFromEnvironment"]
       43 CALL                             R2 1 1
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R3 R4 K15 ["assign"]
       47 NEWTABLE                         R4 0 0
       49 MOVE                             R5 R2
       50 DUPTABLE                         R6 K17 [{"jest"}]
       51 GETTABLEKS                       R7 R0 K18 ["_jestObject"]
       53 SETTABLEKS                       R7 R6 K16 ["jest"]
       55 CALL                             R3 3 1
       56 RETURN                           R3 1
       57 GETIMPORT                        R2 K20 [pcall]
       59 NEWCLOSURE                       R3 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R1
       63 CALL                             R2 1 2
       64 JUMPIF                           R2 ; [+4]
       65 GETIMPORT                        R4 K22 [error]
       67 MOVE                             R5 R3
       68 CALL                             R4 1 0
       69 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_isolatedModuleRegistry"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K1 ["_isolatedMockRegistry"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETIMPORT                        R2 K3 [error]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["new"]
       13 LOADK                            R4 K5 ["isolateModules cannot be nested inside another isolateModules."]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K4 ["new"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R0 K0 ["_isolatedModuleRegistry"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K4 ["new"]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R0 K1 ["_isolatedMockRegistry"]
       28 GETIMPORT                        R2 K7 [pcall]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          VAL R1
       32 CALL                             R2 1 2
       33 GETTABLEKS                       R4 R0 K0 ["_isolatedModuleRegistry"]
       35 JUMPIFNOT                        R4 ; [+5]
       36 GETTABLEKS                       R4 R0 K0 ["_isolatedModuleRegistry"]
       38 NAMECALL                         R4 R4 K8 ["clear"]
       40 CALL                             R4 1 0
       41 GETTABLEKS                       R4 R0 K1 ["_isolatedMockRegistry"]
       43 JUMPIFNOT                        R4 ; [+5]
       44 GETTABLEKS                       R4 R0 K1 ["_isolatedMockRegistry"]
       46 NAMECALL                         R4 R4 K8 ["clear"]
       48 CALL                             R4 1 0
       49 LOADNIL                          R4
       50 SETTABLEKS                       R4 R0 K0 ["_isolatedModuleRegistry"]
       52 LOADNIL                          R4
       53 SETTABLEKS                       R4 R0 K1 ["_isolatedMockRegistry"]
       55 JUMPIF                           R2 ; [+4]
       56 GETIMPORT                        R4 K3 [error]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_isolatedModuleRegistry"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_isolatedModuleRegistry"]
        5 NAMECALL                         R1 R1 K1 ["clear"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["_isolatedMockRegistry"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["_isolatedMockRegistry"]
       13 NAMECALL                         R1 R1 K1 ["clear"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K0 ["_isolatedModuleRegistry"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_isolatedMockRegistry"]
       22 GETTABLEKS                       R1 R0 K3 ["_mockRegistry"]
       24 NAMECALL                         R1 R1 K1 ["clear"]
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K4 ["_moduleRegistry"]
       29 NAMECALL                         R1 R1 K1 ["clear"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
        3 FASTCALL1                        TYPEOF R4 ; [+3]
        4 MOVE                             R8 R4
        5 GETIMPORT                        R7 K2 [typeof]
        7 CALL                             R7 1 1
        8 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+4]
       10 GETTABLEKS                       R6 R4 K4 ["virtual"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R6
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+4]
       16 GETIMPORT                        R5 K6 [error]
       18 LOADK                            R6 K7 ["virtual mocks not supported"]
       19 CALL                             R5 1 0
       20 GETTABLEKS                       R5 R0 K8 ["_explicitShouldMock"]
       22 MOVE                             R7 R2
       23 LOADB                            R8 1
       24 NAMECALL                         R5 R5 K9 ["set"]
       26 CALL                             R5 3 0
       27 GETTABLEKS                       R5 R0 K10 ["_mockFactories"]
       29 MOVE                             R7 R2
       30 MOVE                             R8 R3
       31 NAMECALL                         R5 R5 K9 ["set"]
       33 CALL                             R5 3 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 NAMECALL                         R1 R1 K1 ["restoreAllMocks"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 NAMECALL                         R1 R1 K1 ["resetAllMocks"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 NAMECALL                         R1 R1 K1 ["clearAllMocks"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 GETTABLEKS                       R3 R0 K1 ["_globalMocker"]
        4 NAMECALL                         R1 R1 K2 ["unmockGlobals"]
        6 CALL                             R1 2 0
        7 NAMECALL                         R1 R0 K3 ["restoreAllMocks"]
        9 CALL                             R1 1 0
       10 NAMECALL                         R1 R0 K4 ["resetAllMocks"]
       12 CALL                             R1 1 0
       13 NAMECALL                         R1 R0 K5 ["resetModules"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K6 ["_internalModuleRegistry"]
       18 NAMECALL                         R1 R1 K7 ["clear"]
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R1 R0 K8 ["_mockFactories"]
       23 NAMECALL                         R1 R1 K7 ["clear"]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R1 R0 K9 ["_shouldMockModuleCache"]
       28 NAMECALL                         R1 R1 K7 ["clear"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K10 ["_explicitShouldMock"]
       33 NAMECALL                         R1 R1 K7 ["clear"]
       35 CALL                             R1 1 0
       36 GETTABLEKS                       R1 R0 K11 ["_explicitShouldMockModule"]
       38 NAMECALL                         R1 R1 K7 ["clear"]
       40 CALL                             R1 1 0
       41 GETIMPORT                        R1 K13 [ipairs]
       43 GETTABLEKS                       R2 R0 K14 ["_cleanupFns"]
       45 CALL                             R1 1 3
       46 FORGPREP_INEXT                   R1
       47 MOVE                             R6 R5
       48 CALL                             R6 0 0
       49 FORGLOOP                         R1 2 [inext] ; [-3]
       51 LOADB                            R1 1
       52 SETTABLEKS                       R1 R0 K15 ["isTornDown"]
       54 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["requireInternalModule"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["requireModuleOrMock"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_maybeMock"]
        4 JUMPIFNOTEQKNIL                  R0 ; [+9]
        6 GETIMPORT                        R0 K2 [error]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["new"]
       11 LOADK                            R2 K4 ["Code should not be running when globalEnv is uninitialised"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K0 ["_maybeMock"]
       17 GETVARARGS                       R1 -1
       18 CALL                             R0 -1 -1
       19 RETURN                           R0 -1

PROTO_20:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["_isGlobalAutomockFn"]
        6 JUMPIFNOT                        R8 ; [+6]
        7 GETTABLE                         R8 R1 R6
        8 NEWCLOSURE                       R9 P0
        9 CAPTURE                          VAL R7
       10 CAPTURE                          UPVAL U0
       11 SETTABLE                         R9 R2 R6
       12 JUMP                             ; [+17]
       13 GETTABLE                         R8 R1 R6
       14 NEWTABLE                         R10 0 0
       16 DUPTABLE                         R11 K2 [{"__index"}]
       17 SETTABLEKS                       R8 R11 K1 ["__index"]
       19 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
       21 GETIMPORT                        R9 K4 [setmetatable]
       23 CALL                             R9 2 1
       24 SETTABLE                         R9 R2 R6
       25 GETUPVAL                         R10 1
       26 MOVE                             R11 R7
       27 MOVE                             R12 R8
       28 MOVE                             R13 R9
       29 CALL                             R10 3 0
       30 FORGLOOP                         R3 2 ; [-27]
       32 RETURN                           R0 0

PROTO_21:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 LOADNIL                          R9
        4 GETTABLEKS                       R10 R1 K0 ["filename"]
        6 GETIMPORT                        R11 K2 [pcall]
        8 GETIMPORT                        R13 K4 [debug]
       10 GETTABLEKS                       R12 R13 K5 ["loadmodule"]
       12 GETIMPORT                        R13 K8 [Instance.new]
       14 LOADK                            R14 K9 ["ModuleScript"]
       15 CALL                             R13 1 -1
       16 CALL                             R11 -1 1
       17 GETTABLEKS                       R12 R0 K10 ["_loadedModuleFns"]
       19 JUMPIFNOT                        R12 ; [+16]
       20 GETTABLEKS                       R12 R0 K10 ["_loadedModuleFns"]
       22 MOVE                             R14 R10
       23 NAMECALL                         R12 R12 K11 ["has"]
       25 CALL                             R12 2 1
       26 JUMPIFNOT                        R12 ; [+9]
       27 GETTABLEKS                       R12 R0 K10 ["_loadedModuleFns"]
       29 MOVE                             R14 R10
       30 NAMECALL                         R12 R12 K12 ["get"]
       32 CALL                             R12 2 1
       33 GETTABLEN                        R6 R12 1
       34 GETTABLEN                        R7 R12 2
       35 JUMP                             ; [+63]
       36 JUMPIFNOT                        R11 ; [+11]
       37 GETIMPORT                        R13 K4 [debug]
       39 GETTABLEKS                       R12 R13 K5 ["loadmodule"]
       41 MOVE                             R13 R12
       42 MOVE                             R14 R10
       43 CALL                             R13 1 3
       44 MOVE                             R6 R13
       45 MOVE                             R8 R14
       46 MOVE                             R9 R15
       47 JUMP                             ; [+9]
       48 GETIMPORT                        R12 K14 [loadstring]
       50 GETTABLEKS                       R13 R10 K15 ["Source"]
       52 NAMECALL                         R14 R10 K16 ["GetFullName"]
       54 CALL                             R14 1 -1
       55 CALL                             R12 -1 1
       56 MOVE                             R6 R12
       57 JUMPIFNOTEQKNIL                  R6 ; [+9]
       59 GETIMPORT                        R12 K18 [error]
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R13 R14 K7 ["new"]
       64 MOVE                             R14 R8
       65 CALL                             R13 1 -1
       66 CALL                             R12 -1 0
       67 GETIMPORT                        R12 K20 [getfenv]
       69 MOVE                             R13 R6
       70 CALL                             R12 1 1
       71 MOVE                             R7 R12
       72 GETTABLEKS                       R12 R0 K10 ["_loadedModuleFns"]
       74 JUMPIFNOT                        R12 ; [+14]
       75 GETTABLEKS                       R12 R0 K10 ["_loadedModuleFns"]
       77 MOVE                             R14 R10
       78 NEWTABLE                         R15 0 3
       80 MOVE                             R16 R6
       81 MOVE                             R17 R7
       82 MOVE                             R18 R9
       83 SETLIST                          R15 R16 3 [1]
       85 NAMECALL                         R12 R12 K21 ["set"]
       87 CALL                             R12 3 0
       88 JUMP                             ; [+10]
       89 JUMPIFEQKNIL                     R9 ; [+9]
       91 GETTABLEKS                       R13 R0 K22 ["_cleanupFns"]
       93 FASTCALL2                        TABLE_INSERT R13 R9 ; [+4]
       95 MOVE                             R14 R9
       96 GETIMPORT                        R12 K25 [table.insert]
       98 CALL                             R12 2 0
       99 JUMPIFEQKNIL                     R2 ; [+7]
      101 GETTABLEKS                       R13 R2 K26 ["isInternalModule"]
      103 JUMPIFNOT                        R13 ; [+3]
      104 GETTABLEKS                       R12 R2 K26 ["isInternalModule"]
      106 JUMP                             ; [+1]
      107 LOADB                            R12 0
      108 DUPTABLE                         R14 K29 [{"script", "require"}]
      109 JUMPIFNOT                        R11 ; [+3]
      110 GETTABLEKS                       R15 R7 K27 ["script"]
      112 JUMP                             ; [+1]
      113 MOVE                             R15 R10
      114 SETTABLEKS                       R15 R14 K27 ["script"]
      116 JUMPIFNOT                        R12 ; [+3]
      117 NEWCLOSURE                       R15 P0
      118 CAPTURE                          VAL R0
      119 JUMP                             ; [+2]
      120 NEWCLOSURE                       R15 P1
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R15 R14 K28 ["require"]
      124 DUPTABLE                         R15 K31 [{"__index"}]
      125 SETTABLEKS                       R7 R15 K30 ["__index"]
      127 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
      129 GETIMPORT                        R13 K33 [setmetatable]
      131 CALL                             R13 2 1
      132 JUMPIF                           R12 ; [+42]
      133 GETUPVAL                         R15 1
      134 GETTABLEKS                       R14 R15 K34 ["assign"]
      136 MOVE                             R15 R13
      137 DUPTABLE                         R16 K41 [{"delay", "tick", "time", "DateTime", "os", "task"}]
      138 GETTABLEKS                       R18 R0 K42 ["_fakeTimersImplementation"]
      140 GETTABLEKS                       R17 R18 K43 ["delayOverride"]
      142 SETTABLEKS                       R17 R16 K35 ["delay"]
      144 GETTABLEKS                       R18 R0 K42 ["_fakeTimersImplementation"]
      146 GETTABLEKS                       R17 R18 K44 ["tickOverride"]
      148 SETTABLEKS                       R17 R16 K36 ["tick"]
      150 GETTABLEKS                       R18 R0 K42 ["_fakeTimersImplementation"]
      152 GETTABLEKS                       R17 R18 K45 ["timeOverride"]
      154 SETTABLEKS                       R17 R16 K37 ["time"]
      156 GETTABLEKS                       R18 R0 K42 ["_fakeTimersImplementation"]
      158 GETTABLEKS                       R17 R18 K46 ["dateTimeOverride"]
      160 SETTABLEKS                       R17 R16 K38 ["DateTime"]
      162 GETTABLEKS                       R18 R0 K42 ["_fakeTimersImplementation"]
      164 GETTABLEKS                       R17 R18 K47 ["osOverride"]
      166 SETTABLEKS                       R17 R16 K39 ["os"]
      168 GETTABLEKS                       R18 R0 K42 ["_fakeTimersImplementation"]
      170 GETTABLEKS                       R17 R18 K48 ["taskOverride"]
      172 SETTABLEKS                       R17 R16 K40 ["task"]
      174 CALL                             R14 2 0
      175 NEWTABLE                         R15 0 0
      177 DUPTABLE                         R16 K31 [{"__index"}]
      178 SETTABLEKS                       R13 R16 K30 ["__index"]
      180 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
      182 GETIMPORT                        R14 K33 [setmetatable]
      184 CALL                             R14 2 1
      185 NEWCLOSURE                       R15 P2
      186 CAPTURE                          UPVAL U0
      187 CAPTURE                          VAL R15
      188 MOVE                             R16 R15
      189 GETTABLEKS                       R18 R0 K49 ["_globalMocker"]
      191 GETTABLEKS                       R17 R18 K50 ["automocks"]
      193 MOVE                             R18 R13
      194 MOVE                             R19 R14
      195 CALL                             R16 3 0
      196 GETIMPORT                        R16 K52 [setfenv]
      198 MOVE                             R17 R6
      199 MOVE                             R18 R14
      200 CALL                             R16 2 0
      201 GETIMPORT                        R16 K54 [table.pack]
      203 MOVE                             R17 R6
      204 CALL                             R17 0 -1
      205 CALL                             R16 -1 1
      206 GETTABLEKS                       R17 R16 K55 ["n"]
      208 JUMPIFEQKN                       R17 K56 [1] ; [+15]
      210 JUMPIFEQKB                       R5 TRUE ; [+13]
      212 GETIMPORT                        R17 K18 [error]
      214 GETIMPORT                        R18 K59 [string.format]
      216 LOADK                            R19 K60 ["[Module Error]: %s did not return a valid result\n\tModuleScripts must return exactly one value"]
      217 FASTCALL1                        TOSTRING R10 ; [+3]
      218 MOVE                             R21 R10
      219 GETIMPORT                        R20 K62 [tostring]
      221 CALL                             R20 1 1
      222 CALL                             R18 2 -1
      223 CALL                             R17 -1 0
      224 GETTABLEN                        R17 R16 1
      225 SETTABLEKS                       R17 R1 K63 ["exports"]
      227 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R7 R2
        1 NAMECALL                         R5 R3 K0 ["has"]
        3 CALL                             R5 2 1
        4 JUMPIFNOT                        R5 ; [+5]
        5 MOVE                             R7 R2
        6 NAMECALL                         R5 R3 K1 ["get"]
        8 CALL                             R5 2 1
        9 RETURN                           R5 1
       10 GETTABLEKS                       R5 R0 K2 ["_shouldAutoMock"]
       12 JUMPIF                           R5 ; [+2]
       13 LOADB                            R5 0
       14 RETURN                           R5 1
       15 GETTABLEKS                       R5 R0 K3 ["_shouldMockModuleCache"]
       17 MOVE                             R7 R2
       18 NAMECALL                         R5 R5 K0 ["has"]
       20 CALL                             R5 2 1
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETTABLEKS                       R5 R0 K3 ["_shouldMockModuleCache"]
       24 MOVE                             R7 R2
       25 NAMECALL                         R5 R5 K1 ["get"]
       27 CALL                             R5 2 1
       28 RETURN                           R5 1
       29 LOADB                            R5 1
       30 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_explicitShouldMock"]
        3 MOVE                             R3 R0
        4 LOADB                            R4 0
        5 NAMECALL                         R1 R1 K1 ["set"]
        7 CALL                             R1 3 0
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_24:
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K0 ["_explicitShouldMock"]
       11 MOVE                             R5 R0
       12 LOADB                            R6 1
       13 NAMECALL                         R3 R3 K1 ["set"]
       15 CALL                             R3 3 0
       16 GETUPVAL                         R3 2
       17 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R3 R3 K0 ["setMock"]
        7 CALL                             R3 5 0
        8 GETUPVAL                         R3 2
        9 RETURN                           R3 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearAllMocks"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetAllMocks"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["restoreAllMocks"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_fakeTimersImplementation"]
        3 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_fakeTimersImplementation"]
        3 NAMECALL                         R0 R0 K1 ["useFakeTimers"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["useRealTimers"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetModules"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["isolateModules"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1

PROTO_34:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_moduleMocker"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["fn"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_35:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_moduleMocker"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["spyOn"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["advanceTimersByTime"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["advanceTimersToNextTimer"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["getEngineFrameTime"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["setEngineFrameTime"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["clearAllTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["_environment"]
        5 GETTABLEKS                       R1 R2 K1 ["fakeTimersModern"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 NAMECALL                         R1 R0 K2 ["getRealSystemTime"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K4 [error]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K5 ["new"]
       18 LOADK                            R3 K6 ["getRealSystemTime is not available when not using modern timers"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["getTimerCount"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["requireActual"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runAllTicks"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runAllTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runOnlyPendingTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["_environment"]
        5 GETTABLEKS                       R2 R3 K1 ["fakeTimersModern"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+6]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R1 K2 ["setSystemTime"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETIMPORT                        R2 K4 [error]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K5 ["new"]
       19 LOADK                            R4 K6 ["setSystemTime is not available when not using modern timers"]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_50:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R3
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          REF R3
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          REF R3
       13 NEWCLOSURE                       R6 P3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          REF R3
       16 NEWCLOSURE                       R7 P4
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R3
       19 NEWCLOSURE                       R8 P5
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R3
       22 NEWCLOSURE                       R9 P6
       23 CAPTURE                          VAL R0
       24 NEWCLOSURE                       R10 P7
       25 CAPTURE                          VAL R0
       26 CAPTURE                          REF R3
       27 NEWCLOSURE                       R11 P8
       28 CAPTURE                          VAL R9
       29 CAPTURE                          REF R3
       30 NEWCLOSURE                       R12 P9
       31 CAPTURE                          VAL R0
       32 CAPTURE                          REF R3
       33 NEWCLOSURE                       R13 P10
       34 CAPTURE                          VAL R0
       35 CAPTURE                          REF R3
       36 NEWCLOSURE                       R14 P11
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R15 P12
       39 CAPTURE                          VAL R0
       40 DUPTABLE                         R16 K29 [{"advanceTimersByTime", "advanceTimersToNextTimer", "getEngineFrameTime", "setEngineFrameTime", "clearAllMocks", "clearAllTimers", "doMock", "dontMock", "fn", "getRealSystemTime", "getTimerCount", "globalEnv", "isMockFunction", "isolateModules", "mock", "requireActual", "resetAllMocks", "resetModules", "restoreAllMocks", "runAllTicks", "runAllTimers", "runOnlyPendingTimers", "jestTimers", "setMock", "setSystemTime", "spyOn", "unmock", "useFakeTimers", "useRealTimers"}]
       41 NEWCLOSURE                       R17 P13
       42 CAPTURE                          VAL R9
       43 SETTABLEKS                       R17 R16 K0 ["advanceTimersByTime"]
       45 NEWCLOSURE                       R17 P14
       46 CAPTURE                          VAL R9
       47 SETTABLEKS                       R17 R16 K1 ["advanceTimersToNextTimer"]
       49 NEWCLOSURE                       R17 P15
       50 CAPTURE                          VAL R9
       51 SETTABLEKS                       R17 R16 K2 ["getEngineFrameTime"]
       53 NEWCLOSURE                       R17 P16
       54 CAPTURE                          VAL R9
       55 SETTABLEKS                       R17 R16 K3 ["setEngineFrameTime"]
       57 SETTABLEKS                       R6 R16 K4 ["clearAllMocks"]
       59 NEWCLOSURE                       R17 P17
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R17 R16 K5 ["clearAllTimers"]
       63 SETTABLEKS                       R5 R16 K6 ["doMock"]
       65 SETTABLEKS                       R4 R16 K7 ["dontMock"]
       67 SETTABLEKS                       R14 R16 K8 ["fn"]
       69 NEWCLOSURE                       R17 P18
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U0
       73 SETTABLEKS                       R17 R16 K9 ["getRealSystemTime"]
       75 NEWCLOSURE                       R17 P19
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R17 R16 K10 ["getTimerCount"]
       79 GETTABLEKS                       R18 R0 K30 ["_globalMocker"]
       81 GETTABLEKS                       R17 R18 K31 ["envObject"]
       83 SETTABLEKS                       R17 R16 K11 ["globalEnv"]
       85 GETTABLEKS                       R18 R0 K32 ["_moduleMocker"]
       87 GETTABLEKS                       R17 R18 K12 ["isMockFunction"]
       89 SETTABLEKS                       R17 R16 K12 ["isMockFunction"]
       91 SETTABLEKS                       R13 R16 K13 ["isolateModules"]
       93 SETTABLEKS                       R5 R16 K14 ["mock"]
       95 NEWCLOSURE                       R17 P20
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R17 R16 K15 ["requireActual"]
      100 SETTABLEKS                       R7 R16 K16 ["resetAllMocks"]
      102 SETTABLEKS                       R12 R16 K17 ["resetModules"]
      104 SETTABLEKS                       R8 R16 K18 ["restoreAllMocks"]
      106 NEWCLOSURE                       R17 P21
      107 CAPTURE                          VAL R9
      108 SETTABLEKS                       R17 R16 K19 ["runAllTicks"]
      110 NEWCLOSURE                       R17 P22
      111 CAPTURE                          VAL R9
      112 SETTABLEKS                       R17 R16 K20 ["runAllTimers"]
      114 NEWCLOSURE                       R17 P23
      115 CAPTURE                          VAL R9
      116 SETTABLEKS                       R17 R16 K21 ["runOnlyPendingTimers"]
      118 MOVE                             R17 R9
      119 CALL                             R17 0 1
      120 SETTABLEKS                       R17 R16 K22 ["jestTimers"]
      122 NEWCLOSURE                       R17 P24
      123 CAPTURE                          REF R2
      124 SETTABLEKS                       R17 R16 K23 ["setMock"]
      126 NEWCLOSURE                       R17 P25
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U0
      130 SETTABLEKS                       R17 R16 K24 ["setSystemTime"]
      132 SETTABLEKS                       R15 R16 K25 ["spyOn"]
      134 SETTABLEKS                       R4 R16 K26 ["unmock"]
      136 SETTABLEKS                       R10 R16 K27 ["useFakeTimers"]
      138 SETTABLEKS                       R11 R16 K28 ["useRealTimers"]
      140 MOVE                             R3 R16
      141 CLOSEUPVALS                      R2
      142 RETURN                           R3 1

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["jestGlobals"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETTABLEKS                       R2 R0 K0 ["jestGlobals"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["JestSnapshot"]
       12 NAMECALL                         R1 R0 K5 ["requireModuleOrMock"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K6 ["Expect"]
       18 NAMECALL                         R2 R0 K5 ["requireModuleOrMock"]
       20 CALL                             R2 2 1
       21 DUPTABLE                         R3 K10 [{"expect", "expectExtended", "jestSnapshot"}]
       22 SETTABLEKS                       R2 R3 K7 ["expect"]
       24 SETTABLEKS                       R2 R3 K8 ["expectExtended"]
       26 DUPTABLE                         R4 K13 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
       27 GETTABLEKS                       R5 R1 K11 ["toMatchSnapshot"]
       29 SETTABLEKS                       R5 R4 K11 ["toMatchSnapshot"]
       31 GETTABLEKS                       R5 R1 K12 ["toThrowErrorMatchingSnapshot"]
       33 SETTABLEKS                       R5 R4 K12 ["toThrowErrorMatchingSnapshot"]
       35 SETTABLEKS                       R4 R3 K9 ["jestSnapshot"]
       37 RETURN                           R3 1

PROTO_52:
        0 SETTABLEKS                       R1 R0 K0 ["jestGlobals"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       12 GETTABLEKS                       R3 R1 K7 ["Error"]
       14 GETTABLEKS                       R4 R1 K8 ["Map"]
       16 GETTABLEKS                       R5 R1 K9 ["Object"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R0 K10 ["JestMock"]
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R7 R6 K11 ["ModuleMocker"]
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R0 K12 ["JestMockGenv"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R9 R8 K13 ["GlobalMocker"]
       32 GETIMPORT                        R10 K4 [require]
       34 GETIMPORT                        R12 K1 [script]
       36 GETTABLEKS                       R11 R12 K14 ["types"]
       38 CALL                             R10 1 1
       39 GETIMPORT                        R11 K4 [require]
       41 GETIMPORT                        R13 K1 [script]
       43 GETTABLEKS                       R12 R13 K15 ["_types"]
       45 CALL                             R11 1 1
       46 GETIMPORT                        R12 K4 [require]
       48 GETTABLEKS                       R13 R0 K16 ["Expect"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K4 [require]
       53 GETTABLEKS                       R14 R0 K17 ["JestFakeTimers"]
       55 CALL                             R13 1 1
       56 NEWTABLE                         R14 0 0
       58 SETTABLEKS                       R14 R14 K18 ["__index"]
       60 NEWCLOSURE                       R15 P0
       61 CAPTURE                          VAL R14
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R15 R14 K19 ["new"]
       69 NEWCLOSURE                       R15 P1
       70 SETTABLEKS                       R15 R14 K20 ["requireModule"]
       72 NEWCLOSURE                       R15 P2
       73 SETTABLEKS                       R15 R14 K21 ["requireInternalModule"]
       75 NEWCLOSURE                       R15 P3
       76 SETTABLEKS                       R15 R14 K22 ["requireActual"]
       78 NEWCLOSURE                       R15 P4
       79 SETTABLEKS                       R15 R14 K23 ["requireMock"]
       81 NEWCLOSURE                       R15 P5
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R15 R14 K24 ["_loadModule"]
       85 NEWCLOSURE                       R15 P6
       86 CAPTURE                          VAL R5
       87 SETTABLEKS                       R15 R14 K25 ["requireModuleOrMock"]
       89 NEWCLOSURE                       R15 P7
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R15 R14 K26 ["isolateModules"]
       94 NEWCLOSURE                       R15 P8
       95 SETTABLEKS                       R15 R14 K27 ["resetModules"]
       97 NEWCLOSURE                       R15 P9
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R15 R14 K28 ["setMock"]
      101 NEWCLOSURE                       R15 P10
      102 SETTABLEKS                       R15 R14 K29 ["restoreAllMocks"]
      104 NEWCLOSURE                       R15 P11
      105 SETTABLEKS                       R15 R14 K30 ["resetAllMocks"]
      107 NEWCLOSURE                       R15 P12
      108 SETTABLEKS                       R15 R14 K31 ["clearAllMocks"]
      110 NEWCLOSURE                       R15 P13
      111 SETTABLEKS                       R15 R14 K32 ["teardown"]
      113 NEWCLOSURE                       R15 P14
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R15 R14 K33 ["_execModule"]
      118 NEWCLOSURE                       R15 P15
      119 SETTABLEKS                       R15 R14 K34 ["_shouldMock"]
      121 NEWCLOSURE                       R15 P16
      122 CAPTURE                          VAL R3
      123 SETTABLEKS                       R15 R14 K35 ["_createJestObjectFor"]
      125 NEWCLOSURE                       R15 P17
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R15 R14 K36 ["getGlobalsFromEnvironment"]
      129 NEWCLOSURE                       R15 P18
      130 SETTABLEKS                       R15 R14 K37 ["setGlobalsForRuntime"]
      132 RETURN                           R14 1
