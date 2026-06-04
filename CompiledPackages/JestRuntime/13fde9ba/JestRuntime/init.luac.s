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
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K6 ["new"]
       17 CALL                             R4 0 1
       18 SETTABLEKS                       R4 R3 K4 ["fakeTimersModern"]
       20 SETTABLEKS                       R3 R2 K7 ["_environment"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["new"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K8 ["_explicitShouldMock"]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K6 ["new"]
       31 CALL                             R3 0 1
       32 SETTABLEKS                       R3 R2 K9 ["_explicitShouldMockModule"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K6 ["new"]
       37 CALL                             R3 0 1
       38 SETTABLEKS                       R3 R2 K10 ["_internalModuleRegistry"]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K6 ["new"]
       43 CALL                             R3 0 1
       44 SETTABLEKS                       R3 R2 K11 ["_mockFactories"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K6 ["new"]
       49 CALL                             R3 0 1
       50 SETTABLEKS                       R3 R2 K12 ["_mockRegistry"]
       52 SETTABLEKS                       R1 R2 K13 ["_loadedModuleFns"]
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K6 ["new"]
       57 MOVE                             R4 R0
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K14 ["_moduleMocker"]
       61 GETTABLEKS                       R3 R2 K14 ["_moduleMocker"]
       63 NEWCLOSURE                       R5 P0
       64 NAMECALL                         R3 R3 K15 ["protectDataModel"]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R3 4
       68 GETTABLEKS                       R3 R3 K6 ["new"]
       70 GETUPVAL                         R4 5
       71 GETTABLEKS                       R4 R4 K16 ["MOCKABLE_GLOBALS"]
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
       93 GETUPVAL                         R3 2
       94 GETTABLEKS                       R3 R3 K6 ["new"]
       96 CALL                             R3 0 1
       97 SETTABLEKS                       R3 R2 K23 ["_moduleRegistry"]
       99 LOADB                            R3 0
      100 SETTABLEKS                       R3 R2 K24 ["_shouldAutoMock"]
      102 GETUPVAL                         R3 2
      103 GETTABLEKS                       R3 R3 K6 ["new"]
      105 CALL                             R3 0 1
      106 SETTABLEKS                       R3 R2 K25 ["_shouldMockModuleCache"]
      108 GETTABLEKS                       R3 R2 K7 ["_environment"]
      110 GETTABLEKS                       R3 R3 K4 ["fakeTimersModern"]
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
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R9 R9 K0 ["toJSBoolean"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["_explicitShouldMock"]
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
        4 GETIMPORT                        R3 K1 [script]
        6 GETTABLEKS                       R3 R3 K2 ["Parent"]
        8 FASTCALL1                        TYPEOF R3 ; [+2]
        9 GETIMPORT                        R2 K4 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K5 ["ModuleScript"] ; [+12]
       14 GETIMPORT                        R2 K1 [script]
       16 GETTABLEKS                       R2 R2 K2 ["Parent"]
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
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K15 ["assign"]
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
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["new"]
       13 LOADK                            R4 K5 ["isolateModules cannot be nested inside another isolateModules."]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["new"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R0 K0 ["_isolatedModuleRegistry"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K4 ["new"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
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
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 SETTABLE                         R3 R1 R2
        5 GETTABLEKS                       R1 R0 K2 ["_moduleMocker"]
        7 GETTABLEKS                       R3 R0 K3 ["_globalMocker"]
        9 NAMECALL                         R1 R1 K4 ["unmockGlobals"]
       11 CALL                             R1 2 0
       12 NAMECALL                         R1 R0 K5 ["restoreAllMocks"]
       14 CALL                             R1 1 0
       15 NAMECALL                         R1 R0 K6 ["resetAllMocks"]
       17 CALL                             R1 1 0
       18 NAMECALL                         R1 R0 K7 ["resetModules"]
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R1 R0 K8 ["_internalModuleRegistry"]
       23 NAMECALL                         R1 R1 K9 ["clear"]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R1 R0 K10 ["_mockFactories"]
       28 NAMECALL                         R1 R1 K9 ["clear"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K11 ["_shouldMockModuleCache"]
       33 NAMECALL                         R1 R1 K9 ["clear"]
       35 CALL                             R1 1 0
       36 GETTABLEKS                       R1 R0 K12 ["_explicitShouldMock"]
       38 NAMECALL                         R1 R1 K9 ["clear"]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R1 R0 K13 ["_explicitShouldMockModule"]
       43 NAMECALL                         R1 R1 K9 ["clear"]
       45 CALL                             R1 1 0
       46 GETIMPORT                        R1 K15 [ipairs]
       48 GETTABLEKS                       R2 R0 K16 ["_cleanupFns"]
       50 CALL                             R1 1 3
       51 FORGPREP_INEXT                   R1
       52 MOVE                             R6 R5
       53 CALL                             R6 0 0
       54 FORGLOOP                         R1 2 [inext] ; [-3]
       56 LOADB                            R1 1
       57 SETTABLEKS                       R1 R0 K17 ["isTornDown"]
       59 RETURN                           R0 0

PROTO_18:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+12]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+5]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 MOVE                             R0 R1
       18 GETUPVAL                         R1 3
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K3 ["requireInternalModule"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_19:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+12]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+5]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 MOVE                             R0 R1
       18 GETUPVAL                         R1 3
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K3 ["requireModuleOrMock"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_20:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_maybeMock"]
        4 JUMPIFNOTEQKNIL                  R0 ; [+9]
        6 GETIMPORT                        R0 K2 [error]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["new"]
       11 LOADK                            R2 K4 ["Code should not be running when globalEnv is uninitialised"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["_maybeMock"]
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
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K13 ["new"]
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
      110 GETTABLEKS                       R16 R0 K26 ["_config"]
      112 GETTABLEKS                       R16 R16 K27 ["mockDataModel"]
      114 JUMPIFNOT                        R16 ; [+11]
      115 GETTABLEKS                       R16 R0 K28 ["_moduleMocker"]
      117 GETTABLEKS                       R16 R16 K29 ["dataModelMocker"]
      119 GETTABLEKS                       R19 R7 K23 ["game"]
      121 NAMECALL                         R17 R16 K30 ["mockInstance"]
      123 CALL                             R17 2 1
      124 GETTABLEKS                       R13 R17 K31 ["spy"]
      126 GETTABLEKS                       R16 R7 K32 ["require"]
      128 JUMPIFNOT                        R16 ; [+5]
      129 GETTABLEKS                       R17 R0 K33 ["_nativeRequire"]
      131 JUMPIF                           R17 ; [+2]
      132 SETTABLEKS                       R16 R0 K33 ["_nativeRequire"]
      134 DUPTABLE                         R18 K36 [{"script", "game", "workspace", "plugin", "Game", "Workspace", "require"}]
      135 SETTABLEKS                       R12 R18 K22 ["script"]
      137 SETTABLEKS                       R13 R18 K23 ["game"]
      139 SETTABLEKS                       R14 R18 K24 ["workspace"]
      141 SETTABLEKS                       R15 R18 K25 ["plugin"]
      143 SETTABLEKS                       R13 R18 K34 ["Game"]
      145 SETTABLEKS                       R14 R18 K35 ["Workspace"]
      147 JUMPIFNOT                        R11 ; [+6]
      148 NEWCLOSURE                       R19 P0
      149 CAPTURE                          UPVAL U2
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R0
      153 JUMP                             ; [+5]
      154 NEWCLOSURE                       R19 P1
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R19 R18 K32 ["require"]
      161 DUPTABLE                         R19 K38 [{"__index"}]
      162 SETTABLEKS                       R7 R19 K37 ["__index"]
      164 FASTCALL2                        SETMETATABLE R18 R19 ; [+3]
      166 GETIMPORT                        R17 K40 [setmetatable]
      168 CALL                             R17 2 1
      169 JUMPIF                           R11 ; [+42]
      170 GETUPVAL                         R18 3
      171 GETTABLEKS                       R18 R18 K41 ["assign"]
      173 MOVE                             R19 R17
      174 DUPTABLE                         R20 K48 [{"delay", "tick", "time", "DateTime", "os", "task"}]
      175 GETTABLEKS                       R21 R0 K49 ["_fakeTimersImplementation"]
      177 GETTABLEKS                       R21 R21 K50 ["delayOverride"]
      179 SETTABLEKS                       R21 R20 K42 ["delay"]
      181 GETTABLEKS                       R21 R0 K49 ["_fakeTimersImplementation"]
      183 GETTABLEKS                       R21 R21 K51 ["tickOverride"]
      185 SETTABLEKS                       R21 R20 K43 ["tick"]
      187 GETTABLEKS                       R21 R0 K49 ["_fakeTimersImplementation"]
      189 GETTABLEKS                       R21 R21 K52 ["timeOverride"]
      191 SETTABLEKS                       R21 R20 K44 ["time"]
      193 GETTABLEKS                       R21 R0 K49 ["_fakeTimersImplementation"]
      195 GETTABLEKS                       R21 R21 K53 ["dateTimeOverride"]
      197 SETTABLEKS                       R21 R20 K45 ["DateTime"]
      199 GETTABLEKS                       R21 R0 K49 ["_fakeTimersImplementation"]
      201 GETTABLEKS                       R21 R21 K54 ["osOverride"]
      203 SETTABLEKS                       R21 R20 K46 ["os"]
      205 GETTABLEKS                       R21 R0 K49 ["_fakeTimersImplementation"]
      207 GETTABLEKS                       R21 R21 K55 ["taskOverride"]
      209 SETTABLEKS                       R21 R20 K47 ["task"]
      211 CALL                             R18 2 0
      212 NEWTABLE                         R19 0 0
      214 DUPTABLE                         R20 K38 [{"__index"}]
      215 SETTABLEKS                       R17 R20 K37 ["__index"]
      217 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      219 GETIMPORT                        R18 K40 [setmetatable]
      221 CALL                             R18 2 1
      222 NEWCLOSURE                       R19 P2
      223 CAPTURE                          UPVAL U1
      224 CAPTURE                          VAL R19
      225 MOVE                             R20 R19
      226 GETTABLEKS                       R21 R0 K56 ["_globalMocker"]
      228 GETTABLEKS                       R21 R21 K57 ["automocks"]
      230 MOVE                             R22 R17
      231 MOVE                             R23 R18
      232 CALL                             R20 3 0
      233 GETIMPORT                        R20 K59 [setfenv]
      235 MOVE                             R21 R6
      236 MOVE                             R22 R18
      237 CALL                             R20 2 0
      238 GETIMPORT                        R20 K61 [table.pack]
      240 MOVE                             R21 R6
      241 CALL                             R21 0 -1
      242 CALL                             R20 -1 1
      243 GETTABLEKS                       R21 R20 K62 ["n"]
      245 JUMPIFEQKN                       R21 K63 [1] ; [+15]
      247 JUMPIFEQKB                       R5 TRUE ; [+13]
      249 GETIMPORT                        R21 K12 [error]
      251 GETIMPORT                        R22 K66 [string.format]
      253 LOADK                            R23 K67 ["[Module Error]: %s did not return a valid result\n\tModuleScripts must return exactly one value"]
      254 FASTCALL1                        TOSTRING R10 ; [+3]
      255 MOVE                             R25 R10
      256 GETIMPORT                        R24 K69 [tostring]
      258 CALL                             R24 1 1
      259 CALL                             R22 2 -1
      260 CALL                             R21 -1 0
      261 GETTABLEN                        R21 R20 1
      262 SETTABLEKS                       R21 R1 K70 ["exports"]
      264 RETURN                           R0 0

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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+25]
        7 GETIMPORT                        R1 K4 [getfenv]
        9 LOADN                            R2 2
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R1 R1 K5 ["script"]
       13 JUMPIF                           R1 ; [+1]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+10]
       21 GETIMPORT                        R3 K7 [error]
       23 LOADK                            R5 K8 ["cannot unmock non-Instance path \"%*\""]
       24 MOVE                             R7 R0
       25 NAMECALL                         R5 R5 K9 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 CALL                             R3 1 0
       30 MOVE                             R0 R2
       31 MOVE                             R1 R0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K10 ["_explicitShouldMock"]
       35 MOVE                             R4 R1
       36 LOADB                            R5 0
       37 NAMECALL                         R2 R2 K11 ["set"]
       39 CALL                             R2 3 0
       40 GETUPVAL                         R2 3
       41 RETURN                           R2 1

PROTO_25:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+25]
        7 GETIMPORT                        R3 K4 [getfenv]
        9 LOADN                            R4 2
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R3 R3 K5 ["script"]
       13 JUMPIF                           R3 ; [+1]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R3
       17 MOVE                             R6 R0
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+10]
       21 GETIMPORT                        R5 K7 [error]
       23 LOADK                            R7 K8 ["cannot mock non-Instance path \"%*\""]
       24 MOVE                             R9 R0
       25 NAMECALL                         R7 R7 K9 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 CALL                             R5 1 0
       30 MOVE                             R0 R4
       31 JUMPIFEQKNIL                     R1 ; [+7]
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R0
       35 MOVE                             R5 R1
       36 MOVE                             R6 R2
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1
       39 MOVE                             R3 R0
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K10 ["_explicitShouldMock"]
       43 MOVE                             R6 R3
       44 LOADB                            R7 1
       45 NAMECALL                         R4 R4 K11 ["set"]
       47 CALL                             R4 3 0
       48 GETUPVAL                         R4 4
       49 RETURN                           R4 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_fakeTimersImplementation"]
        3 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_fakeTimersImplementation"]
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
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_moduleMocker"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["fn"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_36:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_moduleMocker"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["spyOn"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_37:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 SETTABLE                         R0 R1 R2
        4 GETUPVAL                         R1 1
        5 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["advanceTimersByTime"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["advanceTimersToNextTimer"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["getEngineFrameTime"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["setEngineFrameTime"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["clearAllTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["_environment"]
        5 GETTABLEKS                       R1 R1 K1 ["fakeTimersModern"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 NAMECALL                         R1 R0 K2 ["getRealSystemTime"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K4 [error]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K5 ["new"]
       18 LOADK                            R3 K6 ["getRealSystemTime is not available when not using modern timers"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["getTimerCount"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+22]
        7 GETIMPORT                        R1 K4 [getfenv]
        9 LOADN                            R2 2
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R1 R1 K5 ["script"]
       13 JUMPIF                           R1 ; [+1]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+7]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K6 ["_nativeRequire"]
       24 MOVE                             R4 R0
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1
       27 MOVE                             R0 R2
       28 GETUPVAL                         R1 2
       29 GETUPVAL                         R3 0
       30 MOVE                             R4 R0
       31 NAMECALL                         R1 R1 K7 ["requireActual"]
       33 CALL                             R1 3 -1
       34 RETURN                           R1 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runAllTicks"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runAllTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["runOnlyPendingTimers"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["_environment"]
        5 GETTABLEKS                       R2 R2 K1 ["fakeTimersModern"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+6]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R1 K2 ["setSystemTime"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETIMPORT                        R2 K4 [error]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K5 ["new"]
       19 LOADK                            R4 K6 ["setSystemTime is not available when not using modern timers"]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_52:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R3
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R3
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          REF R3
       17 NEWCLOSURE                       R6 P3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R3
       20 NEWCLOSURE                       R7 P4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          REF R3
       23 NEWCLOSURE                       R8 P5
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R3
       26 NEWCLOSURE                       R9 P6
       27 CAPTURE                          VAL R0
       28 NEWCLOSURE                       R10 P7
       29 CAPTURE                          VAL R0
       30 CAPTURE                          REF R3
       31 NEWCLOSURE                       R11 P8
       32 CAPTURE                          VAL R9
       33 CAPTURE                          REF R3
       34 NEWCLOSURE                       R12 P9
       35 CAPTURE                          VAL R0
       36 CAPTURE                          REF R3
       37 NEWCLOSURE                       R13 P10
       38 CAPTURE                          VAL R0
       39 CAPTURE                          REF R3
       40 NEWCLOSURE                       R14 P11
       41 CAPTURE                          VAL R0
       42 NEWCLOSURE                       R15 P12
       43 CAPTURE                          VAL R0
       44 NEWCLOSURE                       R16 P13
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          REF R3
       47 DUPTABLE                         R17 K30 [{"advanceTimersByTime", "advanceTimersToNextTimer", "getEngineFrameTime", "setEngineFrameTime", "clearAllMocks", "clearAllTimers", "doMock", "dontMock", "fn", "getRealSystemTime", "getTimerCount", "globalEnv", "isMockFunction", "isolateModules", "mock", "requireActual", "resetAllMocks", "resetModules", "restoreAllMocks", "retryTimes", "runAllTicks", "runAllTimers", "runOnlyPendingTimers", "jestTimers", "setMock", "setSystemTime", "spyOn", "unmock", "useFakeTimers", "useRealTimers"}]
       48 NEWCLOSURE                       R18 P14
       49 CAPTURE                          VAL R9
       50 SETTABLEKS                       R18 R17 K0 ["advanceTimersByTime"]
       52 NEWCLOSURE                       R18 P15
       53 CAPTURE                          VAL R9
       54 SETTABLEKS                       R18 R17 K1 ["advanceTimersToNextTimer"]
       56 NEWCLOSURE                       R18 P16
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R18 R17 K2 ["getEngineFrameTime"]
       60 NEWCLOSURE                       R18 P17
       61 CAPTURE                          VAL R9
       62 SETTABLEKS                       R18 R17 K3 ["setEngineFrameTime"]
       64 SETTABLEKS                       R6 R17 K4 ["clearAllMocks"]
       66 NEWCLOSURE                       R18 P18
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R18 R17 K5 ["clearAllTimers"]
       70 SETTABLEKS                       R5 R17 K6 ["doMock"]
       72 SETTABLEKS                       R4 R17 K7 ["dontMock"]
       74 SETTABLEKS                       R14 R17 K8 ["fn"]
       76 NEWCLOSURE                       R18 P19
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U2
       80 SETTABLEKS                       R18 R17 K9 ["getRealSystemTime"]
       82 NEWCLOSURE                       R18 P20
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R18 R17 K10 ["getTimerCount"]
       86 GETTABLEKS                       R18 R0 K31 ["_globalMocker"]
       88 GETTABLEKS                       R18 R18 K32 ["envObject"]
       90 SETTABLEKS                       R18 R17 K11 ["globalEnv"]
       92 GETTABLEKS                       R18 R0 K33 ["_moduleMocker"]
       94 GETTABLEKS                       R18 R18 K12 ["isMockFunction"]
       96 SETTABLEKS                       R18 R17 K12 ["isMockFunction"]
       98 SETTABLEKS                       R13 R17 K13 ["isolateModules"]
      100 SETTABLEKS                       R5 R17 K14 ["mock"]
      102 NEWCLOSURE                       R18 P21
      103 CAPTURE                          VAL R1
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R18 R17 K15 ["requireActual"]
      108 SETTABLEKS                       R7 R17 K16 ["resetAllMocks"]
      110 SETTABLEKS                       R12 R17 K17 ["resetModules"]
      112 SETTABLEKS                       R8 R17 K18 ["restoreAllMocks"]
      114 SETTABLEKS                       R16 R17 K19 ["retryTimes"]
      116 NEWCLOSURE                       R18 P22
      117 CAPTURE                          VAL R9
      118 SETTABLEKS                       R18 R17 K20 ["runAllTicks"]
      120 NEWCLOSURE                       R18 P23
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R18 R17 K21 ["runAllTimers"]
      124 NEWCLOSURE                       R18 P24
      125 CAPTURE                          VAL R9
      126 SETTABLEKS                       R18 R17 K22 ["runOnlyPendingTimers"]
      128 MOVE                             R18 R9
      129 CALL                             R18 0 1
      130 SETTABLEKS                       R18 R17 K23 ["jestTimers"]
      132 NEWCLOSURE                       R18 P25
      133 CAPTURE                          REF R2
      134 SETTABLEKS                       R18 R17 K24 ["setMock"]
      136 NEWCLOSURE                       R18 P26
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U2
      140 SETTABLEKS                       R18 R17 K25 ["setSystemTime"]
      142 SETTABLEKS                       R15 R17 K26 ["spyOn"]
      144 SETTABLEKS                       R4 R17 K27 ["unmock"]
      146 SETTABLEKS                       R10 R17 K28 ["useFakeTimers"]
      148 SETTABLEKS                       R11 R17 K29 ["useRealTimers"]
      150 MOVE                             R3 R17
      151 CLOSEUPVALS                      R2
      152 RETURN                           R3 1

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["jestGlobals"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETTABLEKS                       R2 R0 K0 ["jestGlobals"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["JestSnapshot"]
       12 NAMECALL                         R1 R0 K5 ["requireModuleOrMock"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["Expect"]
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

PROTO_54:
        0 SETTABLEKS                       R1 R0 K0 ["jestGlobals"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       12 GETTABLEKS                       R3 R1 K7 ["Error"]
       14 GETTABLEKS                       R4 R1 K8 ["Map"]
       16 GETTABLEKS                       R5 R1 K9 ["Object"]
       18 GETTABLEKS                       R6 R1 K10 ["Symbol"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R0 K11 ["JestTypes"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R0 K12 ["JestMock"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R9 R8 K13 ["ModuleMocker"]
       32 GETIMPORT                        R10 K4 [require]
       34 GETTABLEKS                       R11 R0 K14 ["JestMockGenv"]
       36 CALL                             R10 1 1
       37 GETTABLEKS                       R11 R10 K15 ["GlobalMocker"]
       39 GETIMPORT                        R12 K4 [require]
       41 GETIMPORT                        R13 K1 [script]
       43 GETTABLEKS                       R13 R13 K16 ["types"]
       45 CALL                             R12 1 1
       46 GETIMPORT                        R13 K4 [require]
       48 GETIMPORT                        R14 K1 [script]
       50 GETTABLEKS                       R14 R14 K17 ["_types"]
       52 CALL                             R13 1 1
       53 GETIMPORT                        R14 K4 [require]
       55 GETIMPORT                        R15 K1 [script]
       57 GETTABLEKS                       R15 R15 K18 ["resolveInstancePath"]
       59 CALL                             R14 1 1
       60 GETIMPORT                        R15 K4 [require]
       62 GETTABLEKS                       R16 R0 K19 ["Expect"]
       64 CALL                             R15 1 1
       65 GETIMPORT                        R16 K4 [require]
       67 GETTABLEKS                       R17 R0 K20 ["JestFakeTimers"]
       69 CALL                             R16 1 1
       70 GETIMPORT                        R17 K22 [pcall]
       72 GETIMPORT                        R18 K24 [debug]
       74 GETTABLEKS                       R18 R18 K25 ["loadmodule"]
       76 GETIMPORT                        R19 K28 [Instance.new]
       78 LOADK                            R20 K29 ["ModuleScript"]
       79 CALL                             R19 1 -1
       80 CALL                             R17 -1 1
       81 GETTABLEKS                       R18 R6 K30 ["for_"]
       83 LOADK                            R19 K31 ["RETRY_TIMES"]
       84 CALL                             R18 1 1
       85 NEWTABLE                         R19 0 0
       87 SETTABLEKS                       R19 R19 K32 ["__index"]
       89 NEWCLOSURE                       R20 P0
       90 CAPTURE                          VAL R19
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 SETTABLEKS                       R20 R19 K27 ["new"]
       98 NEWCLOSURE                       R20 P1
       99 SETTABLEKS                       R20 R19 K33 ["requireModule"]
      101 NEWCLOSURE                       R20 P2
      102 SETTABLEKS                       R20 R19 K34 ["requireInternalModule"]
      104 NEWCLOSURE                       R20 P3
      105 SETTABLEKS                       R20 R19 K35 ["requireActual"]
      107 NEWCLOSURE                       R20 P4
      108 SETTABLEKS                       R20 R19 K36 ["requireMock"]
      110 NEWCLOSURE                       R20 P5
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R20 R19 K37 ["_loadModule"]
      114 NEWCLOSURE                       R20 P6
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R20 R19 K38 ["requireModuleOrMock"]
      118 NEWCLOSURE                       R20 P7
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R20 R19 K39 ["isolateModules"]
      123 NEWCLOSURE                       R20 P8
      124 SETTABLEKS                       R20 R19 K40 ["resetModules"]
      126 NEWCLOSURE                       R20 P9
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R20 R19 K41 ["setMock"]
      130 NEWCLOSURE                       R20 P10
      131 SETTABLEKS                       R20 R19 K42 ["restoreAllMocks"]
      133 NEWCLOSURE                       R20 P11
      134 SETTABLEKS                       R20 R19 K43 ["resetAllMocks"]
      136 NEWCLOSURE                       R20 P12
      137 SETTABLEKS                       R20 R19 K44 ["clearAllMocks"]
      139 NEWCLOSURE                       R20 P13
      140 CAPTURE                          VAL R18
      141 SETTABLEKS                       R20 R19 K45 ["teardown"]
      143 NEWCLOSURE                       R20 P14
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R5
      148 SETTABLEKS                       R20 R19 K46 ["_execModule"]
      150 NEWCLOSURE                       R20 P15
      151 SETTABLEKS                       R20 R19 K47 ["_shouldMock"]
      153 NEWCLOSURE                       R20 P16
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R3
      157 SETTABLEKS                       R20 R19 K48 ["_createJestObjectFor"]
      159 NEWCLOSURE                       R20 P17
      160 CAPTURE                          VAL R0
      161 SETTABLEKS                       R20 R19 K49 ["getGlobalsFromEnvironment"]
      163 NEWCLOSURE                       R20 P18
      164 SETTABLEKS                       R20 R19 K50 ["setGlobalsForRuntime"]
      166 RETURN                           R19 1
