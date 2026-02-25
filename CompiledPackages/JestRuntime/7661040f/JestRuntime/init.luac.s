PROTO_0:
        0 LOADK                            R4 K0 ["DataModel"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 JUMPIFNOTEQKS                    R1 K2 ["GetService"] ; [+3]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["isTornDown"]
       11 SETTABLEKS                       R0 R2 K3 ["_config"]
       13 DUPTABLE                         R3 K5 [{"fakeTimersModern"}]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K6 ["new"]
       17 CALL                             R4 0 1
       18 SETTABLEKS                       R4 R3 K4 ["fakeTimersModern"]
       20 SETTABLEKS                       R3 R2 K7 ["_environment"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K6 ["new"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K8 ["_explicitShouldMock"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K6 ["new"]
       31 CALL                             R3 0 1
       32 SETTABLEKS                       R3 R2 K9 ["_explicitShouldMockModule"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K6 ["new"]
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K10 ["_internalModuleRegistry"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R3 R4 K6 ["new"]
       43 CALL                             R3 0 1
       44 SETTABLEKS                       R3 R2 K11 ["_mockFactories"]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K6 ["new"]
       49 CALL                             R3 0 1
       50 SETTABLEKS                       R3 R2 K12 ["_mockRegistry"]
       52 SETTABLEKS                       R1 R2 K13 ["_loadedModuleFns"]
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R3 R4 K6 ["new"]
       57 MOVE                             R4 R0
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K14 ["_moduleMocker"]
       61 GETTABLEKS                       R3 R2 K14 ["_moduleMocker"]
       63 NEWCLOSURE                       R5 P0
       64 NAMECALL                         R3 R3 K15 ["protectDataModel"]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R4 4
       68 GETTABLEKS                       R3 R4 K6 ["new"]
       70 GETUPVAL                         R5 5
       71 GETTABLEKS                       R4 R5 K16 ["MOCKABLE_GLOBALS"]
       73 CALL                             R3 1 1
       74 SETTABLEKS                       R3 R2 K17 ["_globalMocker"]
       76 GETTABLEKS                       R3 R2 K14 ["_moduleMocker"]
       78 GETTABLEKS                       R5 R2 K17 ["_globalMocker"]
       80 GETIMPORT                        R6 K19 [getfenv]
       82 LOADN                            R7 0
       83 CALL                             R6 1 -1
       84 NAMECALL                         R3 R3 K20 ["mockGlobals"]
       86 CALL                             R3 -1 0
       87 LOADNIL                          R3
       88 SETTABLEKS                       R3 R2 K21 ["_isolatedModuleRegistry"]
       90 LOADNIL                          R3
       91 SETTABLEKS                       R3 R2 K22 ["_isolatedMockRegistry"]
       93 GETUPVAL                         R4 2
       94 GETTABLEKS                       R3 R4 K6 ["new"]
       96 CALL                             R3 0 1
       97 SETTABLEKS                       R3 R2 K23 ["_moduleRegistry"]
       99 LOADB                            R3 0
      100 SETTABLEKS                       R3 R2 K24 ["_shouldAutoMock"]
      102 GETUPVAL                         R4 2
      103 GETTABLEKS                       R3 R4 K6 ["new"]
      105 CALL                             R3 0 1
      106 SETTABLEKS                       R3 R2 K25 ["_shouldMockModuleCache"]
      108 GETTABLEKS                       R4 R2 K7 ["_environment"]
      110 GETTABLEKS                       R3 R4 K4 ["fakeTimersModern"]
      112 SETTABLEKS                       R3 R2 K26 ["_fakeTimersImplementation"]
      114 GETIMPORT                        R3 K28 [script]
      116 MOVE                             R6 R3
      117 NAMECALL                         R4 R2 K29 ["_createJestObjectFor"]
      119 CALL                             R4 2 1
      120 SETTABLEKS                       R4 R2 K30 ["_jestObject"]
      122 NEWTABLE                         R4 0 0
      124 SETTABLEKS                       R4 R2 K31 ["_cleanupFns"]
      126 RETURN                           R2 1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 DUPTABLE                         R7 K1 [{"isInternalModule"}]
        3 LOADB                            R8 1
        4 SETTABLEKS                       R8 R7 K0 ["isInternalModule"]
        6 NAMECALL                         R3 R0 K2 ["requireModule"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 LOADNIL                          R7
        3 LOADB                            R8 1
        4 NAMECALL                         R3 R0 K0 ["requireModule"]
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 NAMECALL                         R1 R1 K1 ["restoreAllMocks"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 GETTABLEKS                       R3 R0 K1 ["_globalMocker"]
        4 NAMECALL                         R1 R1 K2 ["unmockGlobals"]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        9 NAMECALL                         R1 R1 K3 ["resetAllMocks"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
       14 GETTABLEKS                       R3 R0 K1 ["_globalMocker"]
       16 GETIMPORT                        R4 K5 [getfenv]
       18 LOADN                            R5 0
       19 CALL                             R4 1 -1
       20 NAMECALL                         R1 R1 K6 ["mockGlobals"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_moduleMocker"]
        2 NAMECALL                         R1 R1 K1 ["clearAllMocks"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+5]
        7 GETIMPORT                        R1 K4 [error]
        9 LOADK                            R2 K5 ["Require-by-string is not enabled for use inside Jest at this time."]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K6 ["requireInternalModule"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_19:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+5]
        7 GETIMPORT                        R1 K4 [error]
        9 LOADK                            R2 K5 ["Require-by-string is not enabled for use inside Jest at this time."]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K6 ["requireModuleOrMock"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 LOADNIL                          R9
        4 GETTABLEKS                       R10 R1 K0 ["filename"]
        6 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
        8 JUMPIFNOT                        R11 ; [+16]
        9 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
       11 MOVE                             R13 R10
       12 NAMECALL                         R11 R11 K2 ["has"]
       14 CALL                             R11 2 1
       15 JUMPIFNOT                        R11 ; [+9]
       16 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
       18 MOVE                             R13 R10
       19 NAMECALL                         R11 R11 K3 ["get"]
       21 CALL                             R11 2 1
       22 GETTABLEN                        R6 R11 1
       23 GETTABLEN                        R7 R11 2
       24 JUMP                             ; [+64]
       25 GETUPVAL                         R11 0
       26 JUMPIFNOT                        R11 ; [+11]
       27 GETIMPORT                        R12 K6 [debug]
       29 GETTABLEKS                       R11 R12 K4 ["loadmodule"]
       31 MOVE                             R12 R11
       32 MOVE                             R13 R10
       33 CALL                             R12 1 3
       34 MOVE                             R6 R12
       35 MOVE                             R8 R13
       36 MOVE                             R9 R14
       37 JUMP                             ; [+9]
       38 GETIMPORT                        R11 K8 [loadstring]
       40 GETTABLEKS                       R12 R10 K9 ["Source"]
       42 NAMECALL                         R13 R10 K10 ["GetFullName"]
       44 CALL                             R13 1 -1
       45 CALL                             R11 -1 1
       46 MOVE                             R6 R11
       47 JUMPIFNOTEQKNIL                  R6 ; [+9]
       49 GETIMPORT                        R11 K12 [error]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R12 R13 K13 ["new"]
       54 MOVE                             R13 R8
       55 CALL                             R12 1 -1
       56 CALL                             R11 -1 0
       57 GETIMPORT                        R11 K15 [getfenv]
       59 MOVE                             R12 R6
       60 CALL                             R11 1 1
       61 MOVE                             R7 R11
       62 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
       64 JUMPIFNOT                        R11 ; [+14]
       65 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
       67 MOVE                             R13 R10
       68 NEWTABLE                         R14 0 3
       70 MOVE                             R15 R6
       71 MOVE                             R16 R7
       72 MOVE                             R17 R9
       73 SETLIST                          R14 R15 3 [1]
       75 NAMECALL                         R11 R11 K16 ["set"]
       77 CALL                             R11 3 0
       78 JUMP                             ; [+10]
       79 JUMPIFEQKNIL                     R9 ; [+9]
       81 GETTABLEKS                       R12 R0 K17 ["_cleanupFns"]
       83 FASTCALL2                        TABLE_INSERT R12 R9 ; [+4]
       85 MOVE                             R13 R9
       86 GETIMPORT                        R11 K20 [table.insert]
       88 CALL                             R11 2 0
       89 JUMPIFEQKNIL                     R2 ; [+7]
       91 GETTABLEKS                       R12 R2 K21 ["isInternalModule"]
       93 JUMPIFNOT                        R12 ; [+3]
       94 GETTABLEKS                       R11 R2 K21 ["isInternalModule"]
       96 JUMP                             ; [+1]
       97 LOADB                            R11 0
       98 GETUPVAL                         R13 0
       99 JUMPIFNOT                        R13 ; [+3]
      100 GETTABLEKS                       R12 R7 K22 ["script"]
      102 JUMP                             ; [+1]
      103 MOVE                             R12 R10
      104 GETTABLEKS                       R13 R7 K23 ["game"]
      106 GETTABLEKS                       R14 R7 K24 ["workspace"]
      108 GETTABLEKS                       R15 R7 K25 ["plugin"]
      110 GETTABLEKS                       R17 R0 K26 ["_config"]
      112 GETTABLEKS                       R16 R17 K27 ["mockDataModel"]
      114 JUMPIFNOT                        R16 ; [+11]
      115 GETTABLEKS                       R17 R0 K28 ["_moduleMocker"]
      117 GETTABLEKS                       R16 R17 K29 ["dataModelMocker"]
      119 GETTABLEKS                       R19 R7 K23 ["game"]
      121 NAMECALL                         R17 R16 K30 ["mockInstance"]
      123 CALL                             R17 2 1
      124 GETTABLEKS                       R13 R17 K31 ["spy"]
      126 DUPTABLE                         R17 K35 [{"script", "game", "workspace", "plugin", "Game", "Workspace", "require"}]
      127 SETTABLEKS                       R12 R17 K22 ["script"]
      129 SETTABLEKS                       R13 R17 K23 ["game"]
      131 SETTABLEKS                       R14 R17 K24 ["workspace"]
      133 SETTABLEKS                       R15 R17 K25 ["plugin"]
      135 SETTABLEKS                       R13 R17 K32 ["Game"]
      137 SETTABLEKS                       R14 R17 K33 ["Workspace"]
      139 JUMPIFNOT                        R11 ; [+3]
      140 NEWCLOSURE                       R18 P0
      141 CAPTURE                          VAL R0
      142 JUMP                             ; [+2]
      143 NEWCLOSURE                       R18 P1
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R18 R17 K34 ["require"]
      147 DUPTABLE                         R18 K37 [{"__index"}]
      148 SETTABLEKS                       R7 R18 K36 ["__index"]
      150 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
      152 GETIMPORT                        R16 K39 [setmetatable]
      154 CALL                             R16 2 1
      155 JUMPIF                           R11 ; [+42]
      156 GETUPVAL                         R18 2
      157 GETTABLEKS                       R17 R18 K40 ["assign"]
      159 MOVE                             R18 R16
      160 DUPTABLE                         R19 K47 [{"delay", "tick", "time", "DateTime", "os", "task"}]
      161 GETTABLEKS                       R21 R0 K48 ["_fakeTimersImplementation"]
      163 GETTABLEKS                       R20 R21 K49 ["delayOverride"]
      165 SETTABLEKS                       R20 R19 K41 ["delay"]
      167 GETTABLEKS                       R21 R0 K48 ["_fakeTimersImplementation"]
      169 GETTABLEKS                       R20 R21 K50 ["tickOverride"]
      171 SETTABLEKS                       R20 R19 K42 ["tick"]
      173 GETTABLEKS                       R21 R0 K48 ["_fakeTimersImplementation"]
      175 GETTABLEKS                       R20 R21 K51 ["timeOverride"]
      177 SETTABLEKS                       R20 R19 K43 ["time"]
      179 GETTABLEKS                       R21 R0 K48 ["_fakeTimersImplementation"]
      181 GETTABLEKS                       R20 R21 K52 ["dateTimeOverride"]
      183 SETTABLEKS                       R20 R19 K44 ["DateTime"]
      185 GETTABLEKS                       R21 R0 K48 ["_fakeTimersImplementation"]
      187 GETTABLEKS                       R20 R21 K53 ["osOverride"]
      189 SETTABLEKS                       R20 R19 K45 ["os"]
      191 GETTABLEKS                       R21 R0 K48 ["_fakeTimersImplementation"]
      193 GETTABLEKS                       R20 R21 K54 ["taskOverride"]
      195 SETTABLEKS                       R20 R19 K46 ["task"]
      197 CALL                             R17 2 0
      198 NEWTABLE                         R18 0 0
      200 DUPTABLE                         R19 K37 [{"__index"}]
      201 SETTABLEKS                       R16 R19 K36 ["__index"]
      203 FASTCALL2                        SETMETATABLE R18 R19 ; [+3]
      205 GETIMPORT                        R17 K39 [setmetatable]
      207 CALL                             R17 2 1
      208 NEWCLOSURE                       R18 P2
      209 CAPTURE                          UPVAL U1
      210 CAPTURE                          VAL R18
      211 MOVE                             R19 R18
      212 GETTABLEKS                       R21 R0 K55 ["_globalMocker"]
      214 GETTABLEKS                       R20 R21 K56 ["automocks"]
      216 MOVE                             R21 R16
      217 MOVE                             R22 R17
      218 CALL                             R19 3 0
      219 GETIMPORT                        R19 K58 [setfenv]
      221 MOVE                             R20 R6
      222 MOVE                             R21 R17
      223 CALL                             R19 2 0
      224 GETIMPORT                        R19 K60 [table.pack]
      226 MOVE                             R20 R6
      227 CALL                             R20 0 -1
      228 CALL                             R19 -1 1
      229 GETTABLEKS                       R20 R19 K61 ["n"]
      231 JUMPIFEQKN                       R20 K62 [1] ; [+15]
      233 JUMPIFEQKB                       R5 TRUE ; [+13]
      235 GETIMPORT                        R20 K12 [error]
      237 GETIMPORT                        R21 K65 [string.format]
      239 LOADK                            R22 K66 ["[Module Error]: %s did not return a valid result\n\tModuleScripts must return exactly one value"]
      240 FASTCALL1                        TOSTRING R10 ; [+3]
      241 MOVE                             R24 R10
      242 GETIMPORT                        R23 K68 [tostring]
      244 CALL                             R23 1 1
      245 CALL                             R21 2 -1
      246 CALL                             R20 -1 0
      247 GETTABLEN                        R20 R19 1
      248 SETTABLEKS                       R20 R1 K69 ["exports"]
      250 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_explicitShouldMock"]
        3 MOVE                             R3 R0
        4 LOADB                            R4 0
        5 NAMECALL                         R1 R1 K1 ["set"]
        7 CALL                             R1 3 0
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R3 R3 K0 ["setMock"]
        7 CALL                             R3 5 0
        8 GETUPVAL                         R3 2
        9 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearAllMocks"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetAllMocks"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["restoreAllMocks"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_fakeTimersImplementation"]
        3 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_fakeTimersImplementation"]
        3 NAMECALL                         R0 R0 K1 ["useFakeTimers"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["useRealTimers"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetModules"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["isolateModules"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1

PROTO_35:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_moduleMocker"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["fn"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_36:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_moduleMocker"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["spyOn"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["advanceTimersByTime"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["advanceTimersToNextTimer"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["getEngineFrameTime"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["setEngineFrameTime"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["clearAllTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["getTimerCount"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_44:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+5]
        7 GETIMPORT                        R1 K4 [error]
        9 LOADK                            R2 K5 ["Require-by-string is not enabled for use inside Jest at this time."]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K6 ["requireActual"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runAllTicks"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runAllTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runOnlyPendingTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_49:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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
       20 GETTABLEKS                       R7 R0 K10 ["JestTypes"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R0 K11 ["JestMock"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R7 K12 ["ModuleMocker"]
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R0 K13 ["JestMockGenv"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R9 K14 ["GlobalMocker"]
       37 GETIMPORT                        R11 K4 [require]
       39 GETIMPORT                        R13 K1 [script]
       41 GETTABLEKS                       R12 R13 K15 ["types"]
       43 CALL                             R11 1 1
       44 GETIMPORT                        R12 K4 [require]
       46 GETIMPORT                        R14 K1 [script]
       48 GETTABLEKS                       R13 R14 K16 ["_types"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K4 [require]
       53 GETTABLEKS                       R14 R0 K17 ["Expect"]
       55 CALL                             R13 1 1
       56 GETIMPORT                        R14 K4 [require]
       58 GETTABLEKS                       R15 R0 K18 ["JestFakeTimers"]
       60 CALL                             R14 1 1
       61 GETIMPORT                        R15 K20 [pcall]
       63 GETIMPORT                        R17 K22 [debug]
       65 GETTABLEKS                       R16 R17 K23 ["loadmodule"]
       67 GETIMPORT                        R17 K26 [Instance.new]
       69 LOADK                            R18 K27 ["ModuleScript"]
       70 CALL                             R17 1 -1
       71 CALL                             R15 -1 1
       72 NEWTABLE                         R16 0 0
       74 SETTABLEKS                       R16 R16 K28 ["__index"]
       76 NEWCLOSURE                       R17 P0
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R9
       83 SETTABLEKS                       R17 R16 K25 ["new"]
       85 NEWCLOSURE                       R17 P1
       86 SETTABLEKS                       R17 R16 K29 ["requireModule"]
       88 NEWCLOSURE                       R17 P2
       89 SETTABLEKS                       R17 R16 K30 ["requireInternalModule"]
       91 NEWCLOSURE                       R17 P3
       92 SETTABLEKS                       R17 R16 K31 ["requireActual"]
       94 NEWCLOSURE                       R17 P4
       95 SETTABLEKS                       R17 R16 K32 ["requireMock"]
       97 NEWCLOSURE                       R17 P5
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R17 R16 K33 ["_loadModule"]
      101 NEWCLOSURE                       R17 P6
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R17 R16 K34 ["requireModuleOrMock"]
      105 NEWCLOSURE                       R17 P7
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R17 R16 K35 ["isolateModules"]
      110 NEWCLOSURE                       R17 P8
      111 SETTABLEKS                       R17 R16 K36 ["resetModules"]
      113 NEWCLOSURE                       R17 P9
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R17 R16 K37 ["setMock"]
      117 NEWCLOSURE                       R17 P10
      118 SETTABLEKS                       R17 R16 K38 ["restoreAllMocks"]
      120 NEWCLOSURE                       R17 P11
      121 SETTABLEKS                       R17 R16 K39 ["resetAllMocks"]
      123 NEWCLOSURE                       R17 P12
      124 SETTABLEKS                       R17 R16 K40 ["clearAllMocks"]
      126 NEWCLOSURE                       R17 P13
      127 SETTABLEKS                       R17 R16 K41 ["teardown"]
      129 NEWCLOSURE                       R17 P14
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R5
      133 SETTABLEKS                       R17 R16 K42 ["_execModule"]
      135 NEWCLOSURE                       R17 P15
      136 SETTABLEKS                       R17 R16 K43 ["_shouldMock"]
      138 NEWCLOSURE                       R17 P16
      139 CAPTURE                          VAL R3
      140 SETTABLEKS                       R17 R16 K44 ["_createJestObjectFor"]
      142 NEWCLOSURE                       R17 P17
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R17 R16 K45 ["getGlobalsFromEnvironment"]
      146 NEWCLOSURE                       R17 P18
      147 SETTABLEKS                       R17 R16 K46 ["setGlobalsForRuntime"]
      149 RETURN                           R16 1
