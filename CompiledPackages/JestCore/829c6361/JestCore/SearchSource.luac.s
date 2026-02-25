PROTO_0:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["isA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"path", "script"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K3 ["config"]
        6 GETTABLEKS                       R4 R5 K4 ["rootDir"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K0 ["path"]
       11 SETTABLEKS                       R0 R1 K1 ["script"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["config"]
        2 GETTABLEKS                       R1 R2 K1 ["rootDir"]
        4 NAMECALL                         R1 R1 K2 ["GetDescendants"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["map"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["filter"]
       13 MOVE                             R4 R1
       14 DUPCLOSURE                       R5 K5 [PROTO_0]
       15 CALL                             R3 2 1
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["test"]
        3 CALL                             R1 2 1
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R0 K1 ["lastIndex"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["some"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_3]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_7:
        0 DUPTABLE                         R1 K4 [{"context", "duration", "path", "script"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["context"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["duration"]
        7 GETTABLEKS                       R2 R0 K2 ["path"]
        9 SETTABLEKS                       R2 R1 K2 ["path"]
       11 GETTABLEKS                       R2 R0 K3 ["script"]
       13 SETTABLEKS                       R2 R1 K3 ["script"]
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["map"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["test"]
        4 CALL                             R2 2 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["_testPathCases"]
       12 GETTABLEKS                       R2 R0 K3 ["config"]
       14 SETTABLEKS                       R0 R1 K4 ["_context"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R1 K5 ["_dependencyResolver"]
       19 GETTABLEKS                       R4 R2 K6 ["testMatch"]
       21 LENGTH                           R3 R4
       22 LOADN                            R4 0
       23 JUMPIFNOTLT                      R4 R3 ; [+18]
       25 GETTABLEKS                       R4 R1 K2 ["_testPathCases"]
       27 DUPTABLE                         R5 K9 [{"isMatch", "stat"}]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R7 R2 K6 ["testMatch"]
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K7 ["isMatch"]
       34 LOADK                            R6 K6 ["testMatch"]
       35 SETTABLEKS                       R6 R5 K8 ["stat"]
       37 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       39 GETIMPORT                        R3 K12 [table.insert]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R4 R2 K13 ["testPathIgnorePatterns"]
       44 LENGTH                           R3 R4
       45 LOADN                            R4 0
       46 JUMPIFNOTLT                      R4 R3 ; [+25]
       48 GETUPVAL                         R3 2
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R4 R5 K14 ["join"]
       52 GETTABLEKS                       R5 R2 K13 ["testPathIgnorePatterns"]
       54 LOADK                            R6 K15 ["|"]
       55 CALL                             R4 2 -1
       56 CALL                             R3 -1 1
       57 GETTABLEKS                       R5 R1 K2 ["_testPathCases"]
       59 DUPTABLE                         R6 K9 [{"isMatch", "stat"}]
       60 NEWCLOSURE                       R7 P0
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R7 R6 K7 ["isMatch"]
       64 LOADK                            R7 K13 ["testPathIgnorePatterns"]
       65 SETTABLEKS                       R7 R6 K8 ["stat"]
       67 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       69 GETIMPORT                        R4 K12 [table.insert]
       71 CALL                             R4 2 0
       72 GETTABLEKS                       R4 R2 K16 ["testRegex"]
       74 LENGTH                           R3 R4
       75 LOADN                            R4 0
       76 JUMPIFNOTLT                      R4 R3 ; [+26]
       78 GETTABLEKS                       R4 R1 K2 ["_testPathCases"]
       80 DUPTABLE                         R5 K9 [{"isMatch", "stat"}]
       81 GETTABLEKS                       R7 R2 K16 ["testRegex"]
       83 GETUPVAL                         R9 3
       84 GETTABLEKS                       R8 R9 K17 ["map"]
       86 MOVE                             R9 R7
       87 DUPCLOSURE                       R10 K18 [PROTO_3]
       88 CAPTURE                          UPVAL U2
       89 CALL                             R8 2 1
       90 NEWCLOSURE                       R6 P2
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R6 R5 K7 ["isMatch"]
       95 LOADK                            R6 K16 ["testRegex"]
       96 SETTABLEKS                       R6 R5 K8 ["stat"]
       98 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      100 GETIMPORT                        R3 K12 [table.insert]
      102 CALL                             R3 2 0
      103 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["test"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["isMatch"]
        7 GETTABLEKS                       R8 R6 K1 ["stat"]
        9 MOVE                             R9 R7
       10 GETTABLEKS                       R10 R0 K2 ["path"]
       12 CALL                             R9 1 1
       13 JUMPIFNOT                        R9 ; [+16]
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K3 ["stats"]
       17 GETUPVAL                         R13 1
       18 GETTABLEKS                       R12 R13 K3 ["stats"]
       20 GETTABLE                         R11 R12 R8
       21 ORK                              R10 R11 K4 [0]
       22 SETTABLE                         R10 R9 R8
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K3 ["stats"]
       26 GETTABLE                         R10 R9 R8
       27 ADDK                             R10 R10 K5 [1]
       28 SETTABLE                         R10 R9 R8
       29 JUMP                             ; [+1]
       30 LOADB                            R1 0
       31 FORGLOOP                         R2 2 ; [-27]
       33 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R3 K3 [{"stats", "tests", "total"}]
        1 DUPTABLE                         R4 K8 [{"roots", "testMatch", "testPathIgnorePatterns", "testRegex"}]
        2 LOADN                            R5 0
        3 SETTABLEKS                       R5 R4 K4 ["roots"]
        5 LOADN                            R5 0
        6 SETTABLEKS                       R5 R4 K5 ["testMatch"]
        8 LOADN                            R5 0
        9 SETTABLEKS                       R5 R4 K6 ["testPathIgnorePatterns"]
       11 LOADN                            R5 0
       12 SETTABLEKS                       R5 R4 K7 ["testRegex"]
       14 SETTABLEKS                       R4 R3 K0 ["stats"]
       16 NEWTABLE                         R4 0 0
       18 SETTABLEKS                       R4 R3 K1 ["tests"]
       20 LENGTH                           R4 R1
       21 SETTABLEKS                       R4 R3 K2 ["total"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K9 ["from"]
       26 GETTABLEKS                       R5 R0 K10 ["_testPathCases"]
       28 CALL                             R4 1 1
       29 JUMPIFEQKNIL                     R2 ; [+29]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K11 ["toJSBoolean"]
       34 MOVE                             R6 R2
       35 CALL                             R5 1 1
       36 JUMPIFNOT                        R5 ; [+22]
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R2
       39 CALL                             R5 1 1
       40 DUPTABLE                         R8 K14 [{"isMatch", "stat"}]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R9 R8 K12 ["isMatch"]
       45 LOADK                            R9 K15 ["testPathPattern"]
       46 SETTABLEKS                       R9 R8 K13 ["stat"]
       48 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       50 MOVE                             R7 R4
       51 GETIMPORT                        R6 K18 [table.insert]
       53 CALL                             R6 2 0
       54 GETTABLEKS                       R6 R3 K0 ["stats"]
       56 LOADN                            R7 0
       57 SETTABLEKS                       R7 R6 K15 ["testPathPattern"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K19 ["filter"]
       62 MOVE                             R6 R1
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R3 K1 ["tests"]
       69 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R5 R0 K0 ["_context"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R7 R0 K0 ["_context"]
        5 CALL                             R6 1 1
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K1 ["map"]
        9 MOVE                             R8 R6
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          VAL R5
       12 CALL                             R7 2 1
       13 MOVE                             R4 R7
       14 MOVE                             R5 R1
       15 NAMECALL                         R2 R0 K2 ["_filterTestPathsWithStats"]
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["isMatch"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["every"]
        3 GETTABLEKS                       R3 R0 K1 ["_testPathCases"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_17:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getAllTestPaths"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["testPathPattern"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["testPathPattern"]
        9 NAMECALL                         R0 R0 K1 ["findMatchingTests"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1
       13 DUPTABLE                         R0 K3 [{"tests"}]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K2 ["tests"]
       18 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K1 ["andThen"]
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["_getTestPaths"]
        5 CALL                             R0 3 1
        6 NAMECALL                         R0 R0 K1 ["expect"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["resolve"]
        3 CALL                             R4 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R4 R4 K1 ["andThen"]
       10 CALL                             R4 2 -1
       11 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Promise"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K9 ["RegExp"]
       25 CALL                             R5 1 1
       26 NEWTABLE                         R6 1 0
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K10 ["JestTestResult"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R0 K11 ["JestTypes"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K4 [require]
       40 GETTABLEKS                       R10 R0 K12 ["JestRuntime"]
       42 CALL                             R9 1 1
       43 GETIMPORT                        R10 K4 [require]
       45 GETTABLEKS                       R11 R0 K13 ["JestUtil"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R10 K14 ["globsToMatcher"]
       50 GETTABLEKS                       R12 R10 K15 ["testPathPatternToRegExp"]
       52 GETIMPORT                        R13 K4 [require]
       54 GETIMPORT                        R16 K1 [script]
       56 GETTABLEKS                       R15 R16 K2 ["Parent"]
       58 GETTABLEKS                       R14 R15 K16 ["types"]
       60 CALL                             R13 1 1
       61 GETIMPORT                        R14 K4 [require]
       63 GETTABLEKS                       R15 R0 K11 ["JestTypes"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R16 K4 [require]
       68 GETTABLEKS                       R17 R0 K17 ["RobloxShared"]
       70 CALL                             R16 1 1
       71 GETTABLEKS                       R15 R16 K18 ["getRelativePath"]
       73 DUPCLOSURE                       R16 K19 [PROTO_2]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R15
       76 DUPCLOSURE                       R17 K20 [PROTO_6]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R18 K21 [PROTO_8]
       80 CAPTURE                          VAL R2
       81 NEWTABLE                         R19 0 0
       83 SETTABLEKS                       R19 R19 K22 ["__index"]
       85 DUPCLOSURE                       R20 K23 [PROTO_10]
       86 CAPTURE                          VAL R19
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R20 R19 K24 ["new"]
       92 DUPCLOSURE                       R20 K25 [PROTO_13]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R12
       96 SETTABLEKS                       R20 R19 K26 ["_filterTestPathsWithStats"]
       98 DUPCLOSURE                       R20 K27 [PROTO_14]
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R20 R19 K28 ["_getAllTestPaths"]
      103 DUPCLOSURE                       R20 K29 [PROTO_16]
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R20 R19 K30 ["isTestFilePath"]
      107 DUPCLOSURE                       R20 K31 [PROTO_17]
      108 SETTABLEKS                       R20 R19 K32 ["findMatchingTests"]
      110 DUPCLOSURE                       R20 K33 [PROTO_19]
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R20 R19 K34 ["_getTestPaths"]
      114 DUPCLOSURE                       R20 K35 [PROTO_21]
      115 CAPTURE                          VAL R4
      116 SETTABLEKS                       R20 R19 K36 ["getTestPaths"]
      118 SETTABLEKS                       R19 R6 K37 ["default"]
      120 RETURN                           R6 1
