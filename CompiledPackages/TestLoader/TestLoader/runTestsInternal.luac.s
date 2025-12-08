PROTO_0:
  LOADK R3 K0 ["jest.config"]
  LOADB R4 1
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 3 1
  JUMPIFNOT R1 [+6]
  LOADK R4 K2 ["ModuleScript"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R1 1
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  NAMECALL R1 R0 K0 ["GetDescendants"]
  CALL R1 1 1
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R7 R6 K3 ["Name"]
  LOADK R9 K4 ["%.test"]
  NAMECALL R7 R7 K5 ["match"]
  CALL R7 2 1
  JUMPIF R7 [+9]
  LOADK R9 K6 ["ModuleScript"]
  NAMECALL R7 R6 K7 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+4]
  GETIMPORT R7 K9 [require]
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-17]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["TestDiscoveryMode"]
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R3 R1 K2 ["EnableRoactConfigs"]
  SETTABLEKS R3 R2 K3 ["__DEV__"]
  GETIMPORT R2 K1 [_G]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["__ROACT_17_MOCK_SCHEDULER__"]
  GETIMPORT R2 K1 [_G]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["__ROACT_17_INLINE_ACT__"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["_Index"]
  LOADK R5 K8 ["DeveloperFramework"]
  NAMECALL R3 R3 K9 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Packages"]
  GETTABLEKS R4 R5 K7 ["_Index"]
  GETTABLEKS R3 R4 K8 ["DeveloperFramework"]
  GETTABLEKS R2 R3 K8 ["DeveloperFramework"]
  JUMP [+1]
  LOADNIL R2
  GETTABLEKS R3 R1 K10 ["RunUnitTests"]
  JUMPIFNOT R3 [+155]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dev"]
  LOADK R5 K12 ["Jest"]
  NAMECALL R3 R3 K9 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dev"]
  LOADK R5 K13 ["JestGlobals"]
  NAMECALL R3 R3 K9 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+11]
  GETIMPORT R3 K15 [error]
  LOADK R5 K16 ["Please add both Jest and JestGlobals vers to Dev dependencies of %* to run tests. 
See the guide https://roblox.github.io/jest-roblox-internal/upgrading-to-jest3 if you are migrating from Jest 2"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["Name"]
  NAMECALL R5 R5 K18 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  GETIMPORT R3 K20 [require]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Dev"]
  GETTABLEKS R4 R5 K12 ["Jest"]
  CALL R3 1 1
  GETIMPORT R4 K22 [print]
  LOADK R6 K23 ["----- All %* Tests (Jest 3) ------"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["Name"]
  NAMECALL R6 R6 K18 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  GETUPVAL R5 0
  LOADK R8 K24 ["jest.config"]
  LOADB R9 1
  NAMECALL R6 R5 K9 ["FindFirstChild"]
  CALL R6 3 1
  JUMPIFNOT R6 [+7]
  LOADK R9 K25 ["ModuleScript"]
  NAMECALL R7 R6 K26 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R4 R6
  JUMP [+2]
  LOADNIL R4
  JUMP [0]
  LOADK R8 K27 ["failed to run Jest 3 tests for %* (no jest.config.lua file found)"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K17 ["Name"]
  NAMECALL R8 R8 K18 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  FASTCALL2 ASSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K29 [assert]
  CALL R5 2 0
  GETTABLEKS R5 R4 K30 ["Parent"]
  GETIMPORT R6 K32 [game]
  LOADK R8 K33 ["CLICommandService"]
  NAMECALL R6 R6 K34 ["GetService"]
  CALL R6 2 1
  LOADB R7 0
  GETIMPORT R8 K36 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE VAL R6
  CALL R8 1 2
  GETTABLEKS R10 R3 K37 ["runCLI"]
  MOVE R11 R5
  DUPTABLE R12 K42 [{"verbose", "ci", "testPathPattern", "listTests"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K38 ["verbose"]
  LOADB R13 1
  SETTABLEKS R13 R12 K39 ["ci"]
  GETIMPORT R14 K1 [_G]
  GETTABLEKS R13 R14 K43 ["LEST_TEST_NAME_PATTERN"]
  SETTABLEKS R13 R12 K40 ["testPathPattern"]
  SETTABLEKS R7 R12 K41 ["listTests"]
  NEWTABLE R13 0 1
  MOVE R14 R5
  SETLIST R13 R14 1 [1]
  CALL R10 3 1
  NAMECALL R10 R10 K44 ["awaitStatus"]
  CALL R10 1 2
  JUMPIFNOTEQKS R10 K45 ["Rejected"] [+5]
  GETIMPORT R12 K22 [print]
  MOVE R13 R11
  CALL R12 1 0
  GETIMPORT R12 K22 [print]
  LOADK R13 K46 ["----------------------------------"]
  CALL R12 1 0
  JUMPIFNOTEQKS R10 K47 ["Resolved"] [+15]
  GETTABLEKS R13 R11 K48 ["results"]
  GETTABLEKS R12 R13 K49 ["numFailedTestSuites"]
  LOADN R13 0
  JUMPIFLT R13 R12 [+8]
  GETTABLEKS R13 R11 K48 ["results"]
  GETTABLEKS R12 R13 K50 ["numFailedTests"]
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+5]
  GETIMPORT R12 K15 [error]
  LOADK R13 K51 ["Jest 3 test run failed"]
  CALL R12 1 0
  CLOSEUPVALS R7
  GETTABLEKS R3 R1 K52 ["RunTests"]
  JUMPIF R3 [+6]
  GETTABLEKS R3 R1 K53 ["RunRhodiumTests"]
  JUMPIF R3 [+3]
  GETTABLEKS R3 R1 K54 ["RunDeveloperFrameworkTests"]
  JUMPIFNOT R3 [+184]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dev"]
  LOADK R5 K13 ["JestGlobals"]
  NAMECALL R3 R3 K9 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIF R3 [+11]
  GETIMPORT R3 K15 [error]
  LOADK R5 K55 ["Please add JestGlobals to Dev dependencies of %* to run tests"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K17 ["Name"]
  NAMECALL R5 R5 K18 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  GETIMPORT R3 K20 [require]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Dev"]
  GETTABLEKS R4 R5 K13 ["JestGlobals"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K56 ["TestEZ"]
  JUMPIF R4 [+11]
  GETIMPORT R4 K15 [error]
  LOADK R6 K57 ["Please use JestGlobals versions that has TestEZ (2.4.1) in %* to run tests"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["Name"]
  NAMECALL R6 R6 K18 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  GETTABLEKS R4 R3 K56 ["TestEZ"]
  GETTABLEKS R5 R4 K58 ["TestBootstrap"]
  GETTABLEKS R7 R4 K59 ["Reporters"]
  GETTABLEKS R6 R7 K60 ["TeamCityReporter"]
  GETTABLEKS R8 R4 K59 ["Reporters"]
  GETTABLEKS R7 R8 K61 ["TextReporter"]
  GETTABLEKS R8 R1 K62 ["LogTestsQuiet"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R8 R4 K59 ["Reporters"]
  GETTABLEKS R7 R8 K63 ["TextReporterQuiet"]
  GETIMPORT R9 K1 [_G]
  GETTABLEKS R8 R9 K64 ["TEAMCITY"]
  JUMPIFNOT R8 [+2]
  MOVE R7 R6
  JUMP [0]
  GETTABLEKS R8 R1 K52 ["RunTests"]
  JUMPIFNOT R8 [+27]
  GETUPVAL R8 1
  MOVE R9 R0
  CALL R8 1 0
  GETIMPORT R8 K22 [print]
  LOADK R10 K65 ["----- All %* Tests (Jest 2) ------"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["Name"]
  NAMECALL R10 R10 K18 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  NEWTABLE R10 0 1
  MOVE R11 R0
  SETLIST R10 R11 1 [1]
  MOVE R11 R7
  NAMECALL R8 R5 K66 ["run"]
  CALL R8 3 0
  GETIMPORT R8 K22 [print]
  LOADK R9 K46 ["----------------------------------"]
  CALL R8 1 0
  GETTABLEKS R8 R1 K53 ["RunRhodiumTests"]
  JUMPIFNOT R8 [+26]
  GETIMPORT R8 K22 [print]
  LOADK R10 K67 ["----- All %* Rhodium Tests ------"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["Name"]
  NAMECALL R10 R10 K18 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  NEWTABLE R10 0 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K68 ["RhodiumTests"]
  SETLIST R10 R11 1 [1]
  MOVE R11 R7
  NAMECALL R8 R5 K66 ["run"]
  CALL R8 3 0
  GETIMPORT R8 K22 [print]
  LOADK R9 K46 ["----------------------------------"]
  CALL R8 1 0
  JUMPIFNOT R2 [+53]
  GETTABLEKS R8 R1 K54 ["RunDeveloperFrameworkTests"]
  JUMPIFNOT R8 [+50]
  GETIMPORT R8 K22 [print]
  LOADK R9 K69 ["----- All DeveloperFramework Tests ------"]
  CALL R8 1 0
  NEWTABLE R8 0 0
  GETIMPORT R9 K71 [ipairs]
  NAMECALL R10 R2 K72 ["GetChildren"]
  CALL R10 1 -1
  CALL R9 -1 3
  FORGPREP_INEXT R9
  LOADB R14 1
  GETTABLEKS R15 R13 K73 ["ClassName"]
  JUMPIFEQKS R15 K74 ["Folder"] [+7]
  GETTABLEKS R15 R13 K73 ["ClassName"]
  JUMPIFEQKS R15 K25 ["ModuleScript"] [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFNOT R14 [+14]
  GETTABLEKS R15 R13 K17 ["Name"]
  JUMPIFEQKS R15 K75 ["packages"] [+11]
  GETTABLEKS R15 R13 K17 ["Name"]
  JUMPIFEQKS R15 K6 ["Packages"] [+7]
  FASTCALL2 TABLE_INSERT R8 R13 [+4]
  MOVE R16 R8
  MOVE R17 R13
  GETUPVAL R15 2
  CALL R15 2 0
  FORGLOOP R9 2 [inext] [-27]
  MOVE R11 R8
  MOVE R12 R7
  NAMECALL R9 R5 K66 ["run"]
  CALL R9 3 0
  GETIMPORT R9 K22 [print]
  LOADK R10 K46 ["----------------------------------"]
  CALL R9 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["getPluginParentInternal"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["types"]
  CALL R2 1 1
  GETIMPORT R3 K9 [table.insert]
  DUPCLOSURE R4 K10 [PROTO_0]
  DUPCLOSURE R5 K11 [PROTO_1]
  DUPCLOSURE R6 K12 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  RETURN R6 1
