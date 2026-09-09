PROTO_0:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["isA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K0 ["GetScriptFilePath"]
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K2 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFEQKS                       R2 K3 ["string"] ; [+10]
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["config"]
       21 GETTABLEKS                       R4 R4 K5 ["rootDir"]
       23 CALL                             R2 2 1
       24 MOVE                             R1 R2
       25 DUPTABLE                         R2 K8 [{"path", "script"}]
       26 SETTABLEKS                       R1 R2 K6 ["path"]
       28 SETTABLEKS                       R0 R2 K7 ["script"]
       30 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["config"]
        2 GETTABLEKS                       R1 R1 K1 ["rootDir"]
        4 NAMECALL                         R1 R1 K2 ["GetDescendants"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["map"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["filter"]
       13 MOVE                             R4 R1
       14 DUPCLOSURE                       R5 K5 [PROTO_0]
       15 CALL                             R3 2 1
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["some"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_3]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_7:
        0 DUPTABLE                         R1 K5 [{[1], ["duration"] = , ["path"], ["script"]}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["context"]
        4 GETTABLEKS                       R2 R0 K3 ["path"]
        6 SETTABLEKS                       R2 R1 K3 ["path"]
        8 GETTABLEKS                       R2 R0 K4 ["script"]
       10 SETTABLEKS                       R2 R1 K4 ["script"]
       12 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["map"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["testPathIgnorePatterns"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 MOVE                             R8 R0
       10 NAMECALL                         R6 R6 K1 ["test"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+2]
       14 LOADB                            R6 0
       15 RETURN                           R6 1
       16 FORGLOOP                         R1 2 ; [-11]
       18 LOADB                            R1 1
       19 RETURN                           R1 1

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
       23 JUMPIFNOTLT                      R4 R3 ; [+28]
       25 GETTABLEKS                       R3 R2 K6 ["testMatch"]
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 FORGPREP                         R3
       30 GETTABLEKS                       R8 R2 K6 ["testMatch"]
       32 MOVE                             R10 R7
       33 LOADK                            R11 K7 ["?(.lua|.luau)"]
       34 CONCAT                           R9 R10 R11
       35 SETTABLE                         R9 R8 R6
       36 FORGLOOP                         R3 2 ; [-7]
       38 GETTABLEKS                       R4 R1 K2 ["_testPathCases"]
       40 DUPTABLE                         R5 K10 [{["isMatch"], ["stat"] = "testMatch"}]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R7 R2 K6 ["testMatch"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R5 K8 ["isMatch"]
       47 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       49 GETIMPORT                        R3 K13 [table.insert]
       51 CALL                             R3 2 0
       52 GETTABLEKS                       R4 R2 K14 ["testPathIgnorePatterns"]
       54 LENGTH                           R3 R4
       55 LOADN                            R4 0
       56 JUMPIFNOTLT                      R4 R3 ; [+14]
       58 GETTABLEKS                       R4 R1 K2 ["_testPathCases"]
       60 DUPTABLE                         R5 K15 [{["isMatch"], ["stat"] = "testPathIgnorePatterns"}]
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U2
       64 SETTABLEKS                       R6 R5 K8 ["isMatch"]
       66 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       68 GETIMPORT                        R3 K13 [table.insert]
       70 CALL                             R3 2 0
       71 GETTABLEKS                       R4 R2 K16 ["testRegex"]
       73 LENGTH                           R3 R4
       74 LOADN                            R4 0
       75 JUMPIFNOTLT                      R4 R3 ; [+23]
       77 GETTABLEKS                       R4 R1 K2 ["_testPathCases"]
       79 DUPTABLE                         R5 K17 [{["isMatch"], ["stat"] = "testRegex"}]
       80 GETTABLEKS                       R7 R2 K16 ["testRegex"]
       82 GETUPVAL                         R8 3
       83 GETTABLEKS                       R8 R8 K18 ["map"]
       85 MOVE                             R9 R7
       86 DUPCLOSURE                       R10 K19 [PROTO_3]
       87 CAPTURE                          UPVAL U2
       88 CALL                             R8 2 1
       89 NEWCLOSURE                       R6 P2
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R6 R5 K8 ["isMatch"]
       94 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       96 GETIMPORT                        R3 K13 [table.insert]
       98 CALL                             R3 2 0
       99 RETURN                           R1 1

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
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K3 ["stats"]
       17 GETUPVAL                         R12 1
       18 GETTABLEKS                       R12 R12 K3 ["stats"]
       20 GETTABLE                         R11 R12 R8
       21 ORK                              R10 R11 K4 [0]
       22 SETTABLE                         R10 R9 R8
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K3 ["stats"]
       26 GETTABLE                         R10 R9 R8
       27 ADDK                             R10 R10 K5 [1]
       28 SETTABLE                         R10 R9 R8
       29 JUMP                             ; [+1]
       30 LOADB                            R1 0
       31 FORGLOOP                         R2 2 ; [-27]
       33 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R3 K3 [{"stats", "tests", "total"}]
        1 DUPTABLE                         R4 K9 [{["roots"] = 0, ["testMatch"] = 0, ["testPathIgnorePatterns"] = 0, ["testRegex"] = 0}]
        2 SETTABLEKS                       R4 R3 K0 ["stats"]
        4 NEWTABLE                         R4 0 0
        6 SETTABLEKS                       R4 R3 K1 ["tests"]
        8 LENGTH                           R4 R1
        9 SETTABLEKS                       R4 R3 K2 ["total"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K10 ["from"]
       14 GETTABLEKS                       R5 R0 K11 ["_testPathCases"]
       16 CALL                             R4 1 1
       17 JUMPIFEQKNIL                     R2 ; [+26]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K12 ["toJSBoolean"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 1
       24 JUMPIFNOT                        R5 ; [+19]
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R2
       27 CALL                             R5 1 1
       28 DUPTABLE                         R8 K16 [{["isMatch"], ["stat"] = "testPathPattern"}]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R5
       31 SETTABLEKS                       R9 R8 K13 ["isMatch"]
       33 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       35 MOVE                             R7 R4
       36 GETIMPORT                        R6 K19 [table.insert]
       38 CALL                             R6 2 0
       39 GETTABLEKS                       R6 R3 K0 ["stats"]
       41 LOADN                            R7 0
       42 SETTABLEKS                       R7 R6 K15 ["testPathPattern"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K20 ["filter"]
       47 MOVE                             R6 R1
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R3 K1 ["tests"]
       54 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R5 R0 K0 ["_context"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R7 R0 K0 ["_context"]
        5 CALL                             R6 1 1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K1 ["map"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["every"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testPathPattern"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["testPathPattern"]
        9 NAMECALL                         R0 R0 K1 ["findMatchingTests"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1
       13 DUPTABLE                         R0 K3 [{"tests"}]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K2 ["tests"]
       18 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["resolve"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       54 GETIMPORT                        R14 K1 [script]
       56 GETTABLEKS                       R14 R14 K2 ["Parent"]
       58 GETTABLEKS                       R14 R14 K16 ["types"]
       60 CALL                             R13 1 1
       61 GETIMPORT                        R14 K4 [require]
       63 GETTABLEKS                       R15 R0 K11 ["JestTypes"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K17 ["RobloxShared"]
       70 CALL                             R15 1 1
       71 GETTABLEKS                       R15 R15 K18 ["getRelativePath"]
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R17 R0 K17 ["RobloxShared"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R16 R16 K19 ["getDataModelService"]
       80 MOVE                             R17 R16
       81 LOADK                            R18 K20 ["CoreScriptSyncService"]
       82 CALL                             R17 1 1
       83 DUPCLOSURE                       R18 K21 [PROTO_2]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R15
       87 DUPCLOSURE                       R19 K22 [PROTO_6]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R5
       90 DUPCLOSURE                       R20 K23 [PROTO_8]
       91 CAPTURE                          VAL R2
       92 NEWTABLE                         R21 0 0
       94 SETTABLEKS                       R21 R21 K24 ["__index"]
       96 DUPCLOSURE                       R22 K25 [PROTO_10]
       97 CAPTURE                          VAL R21
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R22 R21 K26 ["new"]
      103 DUPCLOSURE                       R22 K27 [PROTO_13]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R22 R21 K28 ["_filterTestPathsWithStats"]
      109 DUPCLOSURE                       R22 K29 [PROTO_14]
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R22 R21 K30 ["_getAllTestPaths"]
      114 DUPCLOSURE                       R22 K31 [PROTO_16]
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R22 R21 K32 ["isTestFilePath"]
      118 DUPCLOSURE                       R22 K33 [PROTO_17]
      119 SETTABLEKS                       R22 R21 K34 ["findMatchingTests"]
      121 DUPCLOSURE                       R22 K35 [PROTO_19]
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R22 R21 K36 ["_getTestPaths"]
      125 DUPCLOSURE                       R22 K37 [PROTO_21]
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R22 R21 K38 ["getTestPaths"]
      129 SETTABLEKS                       R21 R6 K39 ["default"]
      131 RETURN                           R6 1
