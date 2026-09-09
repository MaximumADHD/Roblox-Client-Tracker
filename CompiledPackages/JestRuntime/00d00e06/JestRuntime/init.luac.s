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
       55 DUPTABLE                         R10 K20 [{["exports"], ["filename"], ["id"], ["loaded"] = False}]
       56 NEWTABLE                         R11 0 0
       58 SETTABLEKS                       R11 R10 K15 ["exports"]
       60 SETTABLEKS                       R6 R10 K16 ["filename"]
       62 SETTABLEKS                       R6 R10 K17 ["id"]
       64 MOVE                             R13 R6
       65 MOVE                             R14 R10
       66 NAMECALL                         R11 R8 K21 ["set"]
       68 CALL                             R11 3 0
       69 GETIMPORT                        R11 K23 [pcall]
       71 NEWCLOSURE                       R12 P0
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          REF R8
       79 CAPTURE                          VAL R5
       80 CALL                             R11 1 2
       81 JUMPIF                           R11 ; [+8]
       82 MOVE                             R15 R6
       83 NAMECALL                         R13 R8 K24 ["delete"]
       85 CALL                             R13 2 0
       86 GETIMPORT                        R13 K26 [error]
       88 MOVE                             R14 R12
       89 CALL                             R13 1 0
       90 GETTABLEKS                       R13 R10 K15 ["exports"]
       92 CLOSEUPVALS                      R8
       93 RETURN                           R13 1

PROTO_4:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 DUPTABLE                         R7 K2 [{[1] = True}]
        3 NAMECALL                         R3 R0 K3 ["requireModule"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
        6 DUPTABLE                         R5 K3 [{["conditions"] = }]
        7 NAMECALL                         R0 R0 K4 ["_shouldMock"]
        9 CALL                             R0 5 1
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R1 R1 K5 ["requireMock"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 0
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R4 2
       21 NAMECALL                         R1 R1 K6 ["requireModule"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

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
        5 GETIMPORT                        R1 K1 [_G]
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R1 R2
       10 GETIMPORT                        R1 K1 [_G]
       12 GETUPVAL                         R2 2
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R1 R2
       15 GETIMPORT                        R1 K1 [_G]
       17 GETUPVAL                         R2 3
       18 LOADNIL                          R3
       19 SETTABLE                         R3 R1 R2
       20 GETTABLEKS                       R1 R0 K2 ["_moduleMocker"]
       22 GETTABLEKS                       R3 R0 K3 ["_globalMocker"]
       24 NAMECALL                         R1 R1 K4 ["unmockGlobals"]
       26 CALL                             R1 2 0
       27 NAMECALL                         R1 R0 K5 ["restoreAllMocks"]
       29 CALL                             R1 1 0
       30 NAMECALL                         R1 R0 K6 ["resetAllMocks"]
       32 CALL                             R1 1 0
       33 NAMECALL                         R1 R0 K7 ["resetModules"]
       35 CALL                             R1 1 0
       36 GETTABLEKS                       R1 R0 K8 ["_internalModuleRegistry"]
       38 NAMECALL                         R1 R1 K9 ["clear"]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R1 R0 K10 ["_mockFactories"]
       43 NAMECALL                         R1 R1 K9 ["clear"]
       45 CALL                             R1 1 0
       46 GETTABLEKS                       R1 R0 K11 ["_shouldMockModuleCache"]
       48 NAMECALL                         R1 R1 K9 ["clear"]
       50 CALL                             R1 1 0
       51 GETTABLEKS                       R1 R0 K12 ["_explicitShouldMock"]
       53 NAMECALL                         R1 R1 K9 ["clear"]
       55 CALL                             R1 1 0
       56 GETTABLEKS                       R1 R0 K13 ["_explicitShouldMockModule"]
       58 NAMECALL                         R1 R1 K9 ["clear"]
       60 CALL                             R1 1 0
       61 GETIMPORT                        R1 K15 [ipairs]
       63 GETTABLEKS                       R2 R0 K16 ["_cleanupFns"]
       65 CALL                             R1 1 3
       66 FORGPREP_INEXT                   R1
       67 MOVE                             R6 R5
       68 CALL                             R6 0 0
       69 FORGLOOP                         R1 2 [inext] ; [-3]
       71 LOADB                            R1 1
       72 SETTABLEKS                       R1 R0 K17 ["isTornDown"]
       74 RETURN                           R0 0

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
        6 JUMPIFNOT                        R8 ; [+5]
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          VAL R7
        9 CAPTURE                          UPVAL U0
       10 SETTABLE                         R8 R2 R6
       11 JUMP                             ; [+17]
       12 GETTABLE                         R8 R1 R6
       13 NEWTABLE                         R10 0 0
       15 DUPTABLE                         R11 K2 [{"__index"}]
       16 SETTABLEKS                       R8 R11 K1 ["__index"]
       18 FASTCALL2                        SETMETATABLE R10 R11 ; [+3]
       20 GETIMPORT                        R9 K4 [setmetatable]
       22 CALL                             R9 2 1
       23 SETTABLE                         R9 R2 R6
       24 GETUPVAL                         R10 1
       25 MOVE                             R11 R7
       26 MOVE                             R12 R8
       27 MOVE                             R13 R9
       28 CALL                             R10 3 0
       29 FORGLOOP                         R3 2 ; [-26]
       31 RETURN                           R0 0

PROTO_22:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 LOADNIL                          R9
        4 GETTABLEKS                       R10 R1 K0 ["filename"]
        6 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
        8 JUMPIFNOT                        R11 ; [+10]
        9 GETTABLEKS                       R12 R0 K1 ["_loadedModuleFns"]
       11 GETTABLE                         R11 R12 R10
       12 JUMPIFNOT                        R11 ; [+6]
       13 GETTABLEKS                       R12 R0 K1 ["_loadedModuleFns"]
       15 GETTABLE                         R11 R12 R10
       16 GETTABLEN                        R6 R11 1
       17 GETTABLEN                        R7 R11 2
       18 JUMP                             ; [+61]
       19 GETUPVAL                         R11 0
       20 JUMPIFNOT                        R11 ; [+11]
       21 GETIMPORT                        R12 K4 [debug]
       23 GETTABLEKS                       R11 R12 K2 ["loadmodule"]
       25 MOVE                             R12 R11
       26 MOVE                             R13 R10
       27 CALL                             R12 1 3
       28 MOVE                             R6 R12
       29 MOVE                             R8 R13
       30 MOVE                             R9 R14
       31 JUMP                             ; [+9]
       32 GETIMPORT                        R11 K6 [loadstring]
       34 GETTABLEKS                       R12 R10 K7 ["Source"]
       36 NAMECALL                         R13 R10 K8 ["GetFullName"]
       38 CALL                             R13 1 -1
       39 CALL                             R11 -1 1
       40 MOVE                             R6 R11
       41 JUMPIFNOTEQKNIL                  R6 ; [+9]
       43 GETIMPORT                        R11 K10 [error]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K11 ["new"]
       48 MOVE                             R13 R8
       49 CALL                             R12 1 -1
       50 CALL                             R11 -1 0
       51 GETIMPORT                        R11 K13 [getfenv]
       53 MOVE                             R12 R6
       54 CALL                             R11 1 1
       55 MOVE                             R7 R11
       56 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
       58 JUMPIFNOT                        R11 ; [+11]
       59 GETTABLEKS                       R11 R0 K1 ["_loadedModuleFns"]
       61 NEWTABLE                         R12 0 3
       63 MOVE                             R13 R6
       64 MOVE                             R14 R7
       65 MOVE                             R15 R9
       66 SETLIST                          R12 R13 3 [1]
       68 SETTABLE                         R12 R11 R10
       69 JUMP                             ; [+10]
       70 JUMPIFEQKNIL                     R9 ; [+9]
       72 GETTABLEKS                       R12 R0 K14 ["_cleanupFns"]
       74 FASTCALL2                        TABLE_INSERT R12 R9 ; [+4]
       76 MOVE                             R13 R9
       77 GETIMPORT                        R11 K17 [table.insert]
       79 CALL                             R11 2 0
       80 JUMPIFEQKNIL                     R2 ; [+7]
       82 GETTABLEKS                       R12 R2 K18 ["isInternalModule"]
       84 JUMPIFNOT                        R12 ; [+3]
       85 GETTABLEKS                       R11 R2 K18 ["isInternalModule"]
       87 JUMP                             ; [+1]
       88 LOADB                            R11 0
       89 GETUPVAL                         R13 0
       90 JUMPIFNOT                        R13 ; [+3]
       91 GETTABLEKS                       R12 R7 K19 ["script"]
       93 JUMP                             ; [+1]
       94 MOVE                             R12 R10
       95 GETTABLEKS                       R13 R7 K20 ["game"]
       97 GETTABLEKS                       R14 R7 K21 ["workspace"]
       99 GETTABLEKS                       R15 R7 K22 ["plugin"]
      101 GETTABLEKS                       R16 R0 K23 ["_config"]
      103 GETTABLEKS                       R16 R16 K24 ["mockDataModel"]
      105 JUMPIFNOT                        R16 ; [+11]
      106 GETTABLEKS                       R16 R0 K25 ["_moduleMocker"]
      108 GETTABLEKS                       R16 R16 K26 ["dataModelMocker"]
      110 GETTABLEKS                       R19 R7 K20 ["game"]
      112 NAMECALL                         R17 R16 K27 ["mockInstance"]
      114 CALL                             R17 2 1
      115 GETTABLEKS                       R13 R17 K28 ["spy"]
      117 GETTABLEKS                       R16 R7 K29 ["require"]
      119 JUMPIFNOT                        R16 ; [+5]
      120 GETTABLEKS                       R17 R0 K30 ["_nativeRequire"]
      122 JUMPIF                           R17 ; [+2]
      123 SETTABLEKS                       R16 R0 K30 ["_nativeRequire"]
      125 DUPTABLE                         R18 K33 [{"script", "game", "workspace", "plugin", "Game", "Workspace", "require"}]
      126 SETTABLEKS                       R12 R18 K19 ["script"]
      128 SETTABLEKS                       R13 R18 K20 ["game"]
      130 SETTABLEKS                       R14 R18 K21 ["workspace"]
      132 SETTABLEKS                       R15 R18 K22 ["plugin"]
      134 SETTABLEKS                       R13 R18 K31 ["Game"]
      136 SETTABLEKS                       R14 R18 K32 ["Workspace"]
      138 JUMPIFNOT                        R11 ; [+6]
      139 NEWCLOSURE                       R19 P0
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R0
      144 JUMP                             ; [+5]
      145 NEWCLOSURE                       R19 P1
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R19 R18 K29 ["require"]
      152 DUPTABLE                         R19 K35 [{"__index"}]
      153 SETTABLEKS                       R7 R19 K34 ["__index"]
      155 FASTCALL2                        SETMETATABLE R18 R19 ; [+3]
      157 GETIMPORT                        R17 K37 [setmetatable]
      159 CALL                             R17 2 1
      160 JUMPIF                           R11 ; [+42]
      161 GETUPVAL                         R18 3
      162 GETTABLEKS                       R18 R18 K38 ["assign"]
      164 MOVE                             R19 R17
      165 DUPTABLE                         R20 K45 [{"delay", "tick", "time", "DateTime", "os", "task"}]
      166 GETTABLEKS                       R21 R0 K46 ["_fakeTimersImplementation"]
      168 GETTABLEKS                       R21 R21 K47 ["delayOverride"]
      170 SETTABLEKS                       R21 R20 K39 ["delay"]
      172 GETTABLEKS                       R21 R0 K46 ["_fakeTimersImplementation"]
      174 GETTABLEKS                       R21 R21 K48 ["tickOverride"]
      176 SETTABLEKS                       R21 R20 K40 ["tick"]
      178 GETTABLEKS                       R21 R0 K46 ["_fakeTimersImplementation"]
      180 GETTABLEKS                       R21 R21 K49 ["timeOverride"]
      182 SETTABLEKS                       R21 R20 K41 ["time"]
      184 GETTABLEKS                       R21 R0 K46 ["_fakeTimersImplementation"]
      186 GETTABLEKS                       R21 R21 K50 ["dateTimeOverride"]
      188 SETTABLEKS                       R21 R20 K42 ["DateTime"]
      190 GETTABLEKS                       R21 R0 K46 ["_fakeTimersImplementation"]
      192 GETTABLEKS                       R21 R21 K51 ["osOverride"]
      194 SETTABLEKS                       R21 R20 K43 ["os"]
      196 GETTABLEKS                       R21 R0 K46 ["_fakeTimersImplementation"]
      198 GETTABLEKS                       R21 R21 K52 ["taskOverride"]
      200 SETTABLEKS                       R21 R20 K44 ["task"]
      202 CALL                             R18 2 0
      203 NEWTABLE                         R19 0 0
      205 DUPTABLE                         R20 K35 [{"__index"}]
      206 SETTABLEKS                       R17 R20 K34 ["__index"]
      208 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      210 GETIMPORT                        R18 K37 [setmetatable]
      212 CALL                             R18 2 1
      213 NEWCLOSURE                       R19 P2
      214 CAPTURE                          UPVAL U1
      215 CAPTURE                          VAL R19
      216 MOVE                             R20 R19
      217 GETTABLEKS                       R21 R0 K53 ["_globalMocker"]
      219 GETTABLEKS                       R21 R21 K54 ["automocks"]
      221 MOVE                             R22 R17
      222 MOVE                             R23 R18
      223 CALL                             R20 3 0
      224 GETIMPORT                        R20 K56 [setfenv]
      226 MOVE                             R21 R6
      227 MOVE                             R22 R18
      228 CALL                             R20 2 0
      229 GETIMPORT                        R20 K58 [table.pack]
      231 MOVE                             R21 R6
      232 CALL                             R21 0 -1
      233 CALL                             R20 -1 1
      234 GETTABLEKS                       R21 R20 K59 ["n"]
      236 JUMPIFEQKN                       R21 K60 [1] ; [+15]
      238 JUMPIFEQKB                       R5 TRUE ; [+13]
      240 GETIMPORT                        R21 K10 [error]
      242 GETIMPORT                        R22 K63 [string.format]
      244 LOADK                            R23 K64 ["[Module Error]: %s did not return a valid result\n\tModuleScripts must return exactly one value"]
      245 FASTCALL1                        TOSTRING R10 ; [+3]
      246 MOVE                             R25 R10
      247 GETIMPORT                        R24 K66 [tostring]
      249 CALL                             R24 1 1
      250 CALL                             R22 2 -1
      251 CALL                             R21 -1 0
      252 GETTABLEN                        R21 R20 1
      253 SETTABLEKS                       R21 R1 K67 ["exports"]
      255 RETURN                           R0 0

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
        0 GETIMPORT                        R2 K1 [_G]
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 GETIMPORT                        R2 K1 [_G]
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R4 R1 K2 ["logErrorsBeforeRetry"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R4
       12 SETTABLE                         R4 R2 R3
       13 GETIMPORT                        R2 K1 [_G]
       15 GETUPVAL                         R3 2
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETTABLEKS                       R4 R1 K3 ["waitBeforeRetry"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 SETTABLE                         R4 R2 R3
       22 GETIMPORT                        R2 K1 [_G]
       24 GETUPVAL                         R3 3
       25 JUMPIFNOT                        R1 ; [+3]
       26 GETTABLEKS                       R4 R1 K4 ["retryImmediately"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R2 4
       32 RETURN                           R2 1

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

PROTO_51:
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
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          REF R3
       50 DUPTABLE                         R17 K29 [{"advanceTimersByTime", "advanceTimersToNextTimer", "getEngineFrameTime", "setEngineFrameTime", "clearAllMocks", "clearAllTimers", "doMock", "dontMock", "fn", "getRealSystemTime", "getTimerCount", "globalEnv", "isMockFunction", "isolateModules", "mock", "requireActual", "resetAllMocks", "resetModules", "restoreAllMocks", "retryTimes", "runAllTimers", "runOnlyPendingTimers", "jestTimers", "setMock", "setSystemTime", "spyOn", "unmock", "useFakeTimers", "useRealTimers"}]
       51 NEWCLOSURE                       R18 P14
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R18 R17 K0 ["advanceTimersByTime"]
       55 NEWCLOSURE                       R18 P15
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R18 R17 K1 ["advanceTimersToNextTimer"]
       59 NEWCLOSURE                       R18 P16
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R18 R17 K2 ["getEngineFrameTime"]
       63 NEWCLOSURE                       R18 P17
       64 CAPTURE                          VAL R9
       65 SETTABLEKS                       R18 R17 K3 ["setEngineFrameTime"]
       67 SETTABLEKS                       R6 R17 K4 ["clearAllMocks"]
       69 NEWCLOSURE                       R18 P18
       70 CAPTURE                          VAL R9
       71 SETTABLEKS                       R18 R17 K5 ["clearAllTimers"]
       73 SETTABLEKS                       R5 R17 K6 ["doMock"]
       75 SETTABLEKS                       R4 R17 K7 ["dontMock"]
       77 SETTABLEKS                       R14 R17 K8 ["fn"]
       79 NEWCLOSURE                       R18 P19
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U5
       83 SETTABLEKS                       R18 R17 K9 ["getRealSystemTime"]
       85 NEWCLOSURE                       R18 P20
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R18 R17 K10 ["getTimerCount"]
       89 GETTABLEKS                       R18 R0 K30 ["_globalMocker"]
       91 GETTABLEKS                       R18 R18 K31 ["envObject"]
       93 SETTABLEKS                       R18 R17 K11 ["globalEnv"]
       95 GETTABLEKS                       R18 R0 K32 ["_moduleMocker"]
       97 GETTABLEKS                       R18 R18 K12 ["isMockFunction"]
       99 SETTABLEKS                       R18 R17 K12 ["isMockFunction"]
      101 SETTABLEKS                       R13 R17 K13 ["isolateModules"]
      103 SETTABLEKS                       R5 R17 K14 ["mock"]
      105 NEWCLOSURE                       R18 P21
      106 CAPTURE                          VAL R1
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R18 R17 K15 ["requireActual"]
      111 SETTABLEKS                       R7 R17 K16 ["resetAllMocks"]
      113 SETTABLEKS                       R12 R17 K17 ["resetModules"]
      115 SETTABLEKS                       R8 R17 K18 ["restoreAllMocks"]
      117 SETTABLEKS                       R16 R17 K19 ["retryTimes"]
      119 NEWCLOSURE                       R18 P22
      120 CAPTURE                          VAL R9
      121 SETTABLEKS                       R18 R17 K20 ["runAllTimers"]
      123 NEWCLOSURE                       R18 P23
      124 CAPTURE                          VAL R9
      125 SETTABLEKS                       R18 R17 K21 ["runOnlyPendingTimers"]
      127 MOVE                             R18 R9
      128 CALL                             R18 0 1
      129 SETTABLEKS                       R18 R17 K22 ["jestTimers"]
      131 NEWCLOSURE                       R18 P24
      132 CAPTURE                          REF R2
      133 SETTABLEKS                       R18 R17 K23 ["setMock"]
      135 NEWCLOSURE                       R18 P25
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U5
      139 SETTABLEKS                       R18 R17 K24 ["setSystemTime"]
      141 SETTABLEKS                       R15 R17 K25 ["spyOn"]
      143 SETTABLEKS                       R4 R17 K26 ["unmock"]
      145 SETTABLEKS                       R10 R17 K27 ["useFakeTimers"]
      147 SETTABLEKS                       R11 R17 K28 ["useRealTimers"]
      149 MOVE                             R3 R17
      150 CLOSEUPVALS                      R2
      151 RETURN                           R3 1

PROTO_52:
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

PROTO_53:
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
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Symbol"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R0 K11 ["JestTypes"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R0 K12 ["JestMock"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R9 R8 K13 ["ModuleMocker"]
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K14 ["JestMockGenv"]
       39 CALL                             R10 1 1
       40 GETTABLEKS                       R11 R10 K15 ["GlobalMocker"]
       42 GETIMPORT                        R12 K4 [require]
       44 GETIMPORT                        R13 K1 [script]
       46 GETTABLEKS                       R13 R13 K16 ["types"]
       48 CALL                             R12 1 1
       49 GETIMPORT                        R13 K4 [require]
       51 GETIMPORT                        R14 K1 [script]
       53 GETTABLEKS                       R14 R14 K17 ["_types"]
       55 CALL                             R13 1 1
       56 GETIMPORT                        R14 K4 [require]
       58 GETIMPORT                        R15 K1 [script]
       60 GETTABLEKS                       R15 R15 K18 ["resolveInstancePath"]
       62 CALL                             R14 1 1
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R0 K19 ["Expect"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K4 [require]
       70 GETTABLEKS                       R17 R0 K20 ["JestFakeTimers"]
       72 CALL                             R16 1 1
       73 GETIMPORT                        R17 K22 [pcall]
       75 GETIMPORT                        R18 K24 [debug]
       77 GETTABLEKS                       R18 R18 K25 ["loadmodule"]
       79 GETIMPORT                        R19 K28 [Instance.new]
       81 LOADK                            R20 K29 ["ModuleScript"]
       82 CALL                             R19 1 -1
       83 CALL                             R17 -1 1
       84 GETTABLEKS                       R18 R6 K30 ["for_"]
       86 LOADK                            R19 K31 ["RETRY_TIMES"]
       87 CALL                             R18 1 1
       88 GETTABLEKS                       R19 R6 K30 ["for_"]
       90 LOADK                            R20 K32 ["LOG_ERRORS_BEFORE_RETRY"]
       91 CALL                             R19 1 1
       92 GETTABLEKS                       R20 R6 K30 ["for_"]
       94 LOADK                            R21 K33 ["WAIT_BEFORE_RETRY"]
       95 CALL                             R20 1 1
       96 GETTABLEKS                       R21 R6 K30 ["for_"]
       98 LOADK                            R22 K34 ["RETRY_IMMEDIATELY"]
       99 CALL                             R21 1 1
      100 NEWTABLE                         R22 0 0
      102 SETTABLEKS                       R22 R22 K35 ["__index"]
      104 NEWCLOSURE                       R23 P0
      105 CAPTURE                          VAL R22
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R10
      111 SETTABLEKS                       R23 R22 K27 ["new"]
      113 NEWCLOSURE                       R23 P1
      114 SETTABLEKS                       R23 R22 K36 ["requireModule"]
      116 NEWCLOSURE                       R23 P2
      117 SETTABLEKS                       R23 R22 K37 ["requireInternalModule"]
      119 NEWCLOSURE                       R23 P3
      120 SETTABLEKS                       R23 R22 K38 ["requireActual"]
      122 NEWCLOSURE                       R23 P4
      123 SETTABLEKS                       R23 R22 K39 ["requireMock"]
      125 NEWCLOSURE                       R23 P5
      126 CAPTURE                          VAL R2
      127 SETTABLEKS                       R23 R22 K40 ["_loadModule"]
      129 NEWCLOSURE                       R23 P6
      130 CAPTURE                          VAL R5
      131 SETTABLEKS                       R23 R22 K41 ["requireModuleOrMock"]
      133 NEWCLOSURE                       R23 P7
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R23 R22 K42 ["isolateModules"]
      138 NEWCLOSURE                       R23 P8
      139 SETTABLEKS                       R23 R22 K43 ["resetModules"]
      141 NEWCLOSURE                       R23 P9
      142 CAPTURE                          VAL R2
      143 SETTABLEKS                       R23 R22 K44 ["setMock"]
      145 NEWCLOSURE                       R23 P10
      146 SETTABLEKS                       R23 R22 K45 ["restoreAllMocks"]
      148 NEWCLOSURE                       R23 P11
      149 SETTABLEKS                       R23 R22 K46 ["resetAllMocks"]
      151 NEWCLOSURE                       R23 P12
      152 SETTABLEKS                       R23 R22 K47 ["clearAllMocks"]
      154 NEWCLOSURE                       R23 P13
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R21
      159 SETTABLEKS                       R23 R22 K48 ["teardown"]
      161 NEWCLOSURE                       R23 P14
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R5
      166 SETTABLEKS                       R23 R22 K49 ["_execModule"]
      168 NEWCLOSURE                       R23 P15
      169 SETTABLEKS                       R23 R22 K50 ["_shouldMock"]
      171 NEWCLOSURE                       R23 P16
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R3
      178 SETTABLEKS                       R23 R22 K51 ["_createJestObjectFor"]
      180 NEWCLOSURE                       R23 P17
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R23 R22 K52 ["getGlobalsFromEnvironment"]
      184 NEWCLOSURE                       R23 P18
      185 SETTABLEKS                       R23 R22 K53 ["setGlobalsForRuntime"]
      187 RETURN                           R22 1
