PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["parse"]
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K1 ["config"]
        6 CALL                             R0 1 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R3 0
        3 FASTCALL1                        TYPEOF R3 ; [+2]
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+17]
        9 GETUPVAL                         R3 0
       10 FASTCALL1                        TYPEOF R3 ; [+2]
       11 GETIMPORT                        R2 K1 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFEQKS                       R2 K3 ["string"] ; [+10]
       16 GETIMPORT                        R2 K5 [error]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K6 ["new"]
       21 LOADK                            R4 K7 ["Jest: configuration as an object not supported yet"]
       22 CALL                             R3 1 -1
       23 CALL                             R2 -1 0
       24 JUMP                             ; [+79]
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K8 ["config"]
       29 CALL                             R2 1 1
       30 JUMPIFNOT                        R2 ; [+33]
       31 LOADNIL                          R2
       32 GETIMPORT                        R3 K10 [pcall]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          REF R2
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U3
       38 CALL                             R3 1 1
       39 JUMPIF                           R3 ; [+8]
       40 GETIMPORT                        R4 K5 [error]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K6 ["new"]
       45 LOADK                            R6 K11 ["There was an error while parsing the `--config` argument as a JSON string."]
       46 CALL                             R5 1 -1
       47 CALL                             R4 -1 0
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K12 ["toJSBoolean"]
       51 GETTABLEKS                       R6 R2 K13 ["rootDir"]
       53 CALL                             R5 1 1
       54 JUMPIFNOT                        R5 ; [+3]
       55 GETTABLEKS                       R4 R2 K13 ["rootDir"]
       57 JUMPIF                           R4 ; [+1]
       58 GETUPVAL                         R4 0
       59 SETTABLEKS                       R4 R2 K13 ["rootDir"]
       61 MOVE                             R0 R2
       62 CLOSEUPVALS                      R2
       63 JUMP                             ; [+40]
       64 GETUPVAL                         R2 6
       65 JUMPIF                           R2 ; [+25]
       66 GETUPVAL                         R3 3
       67 GETTABLEKS                       R3 R3 K8 ["config"]
       69 FASTCALL1                        TYPEOF R3 ; [+2]
       70 GETIMPORT                        R2 K1 [typeof]
       72 CALL                             R2 1 1
       73 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+17]
       75 GETUPVAL                         R2 7
       76 GETUPVAL                         R3 3
       77 GETTABLEKS                       R3 R3 K8 ["config"]
       79 GETUPVAL                         R4 8
       80 GETUPVAL                         R5 9
       81 CALL                             R2 3 1
       82 MOVE                             R1 R2
       83 GETUPVAL                         R2 10
       84 MOVE                             R3 R1
       85 CALL                             R2 1 1
       86 NAMECALL                         R2 R2 K14 ["expect"]
       88 CALL                             R2 1 1
       89 MOVE                             R0 R2
       90 JUMP                             ; [+13]
       91 GETUPVAL                         R2 7
       92 GETUPVAL                         R3 0
       93 GETUPVAL                         R4 8
       94 GETUPVAL                         R5 9
       95 CALL                             R2 3 1
       96 MOVE                             R1 R2
       97 GETUPVAL                         R2 10
       98 MOVE                             R3 R1
       99 CALL                             R2 1 1
      100 NAMECALL                         R2 R2 K14 ["expect"]
      102 CALL                             R2 1 1
      103 MOVE                             R0 R2
      104 GETUPVAL                         R2 11
      105 MOVE                             R3 R0
      106 GETUPVAL                         R4 3
      107 MOVE                             R5 R1
      108 GETUPVAL                         R6 12
      109 CALL                             R2 4 1
      110 NAMECALL                         R2 R2 K14 ["expect"]
      112 CALL                             R2 1 1
      113 GETTABLEKS                       R3 R2 K15 ["options"]
      115 GETTABLEKS                       R4 R2 K16 ["hasDeprecationWarnings"]
      117 GETUPVAL                         R5 13
      118 MOVE                             R6 R3
      119 CALL                             R5 1 1
      120 GETTABLEKS                       R6 R5 K17 ["globalConfig"]
      122 GETTABLEKS                       R7 R5 K18 ["projectConfig"]
      124 DUPTABLE                         R8 K20 [{"configPath", "globalConfig", "hasDeprecationWarnings", "projectConfig"}]
      125 SETTABLEKS                       R1 R8 K19 ["configPath"]
      127 SETTABLEKS                       R6 R8 K17 ["globalConfig"]
      129 SETTABLEKS                       R4 R8 K16 ["hasDeprecationWarnings"]
      131 SETTABLEKS                       R7 R8 K18 ["projectConfig"]
      133 RETURN                           R8 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R5 ; [+2]
        2 LOADK                            R5 K0 [∞]
        3 JUMPIFNOTEQKNIL                  R6 ; [+2]
        5 LOADB                            R6 0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K1 ["resolve"]
        9 CALL                             R7 0 1
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R0
       20 CAPTURE                          REF R6
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          REF R5
       24 CAPTURE                          UPVAL U8
       25 NAMECALL                         R7 R7 K2 ["andThen"]
       27 CALL                             R7 2 -1
       28 CLOSEUPVALS                      R5
       29 RETURN                           R7 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"globalConfig", "projectConfig"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["freeze"]
        4 DUPTABLE                         R3 K30 [{"bail", "changedSince", "expand", "filter", "json", "listTests", "maxConcurrency", "maxWorkers", "noStackTrace", "nonFlagArgs", "outputFile", "passWithNoTests", "projects", "reporters", "rootDir", "runTestsByPath", "silent", "skipFilter", "snapshotFormat", "stackDepth", "testFailureExitCode", "testNamePattern", "testPathPattern", "testTimeout", "updateSnapshot", "verbose"}]
        5 GETTABLEKS                       R4 R0 K4 ["bail"]
        7 SETTABLEKS                       R4 R3 K4 ["bail"]
        9 GETTABLEKS                       R4 R0 K5 ["changedSince"]
       11 SETTABLEKS                       R4 R3 K5 ["changedSince"]
       13 GETTABLEKS                       R4 R0 K6 ["expand"]
       15 SETTABLEKS                       R4 R3 K6 ["expand"]
       17 GETTABLEKS                       R4 R0 K7 ["filter"]
       19 SETTABLEKS                       R4 R3 K7 ["filter"]
       21 GETTABLEKS                       R4 R0 K8 ["json"]
       23 SETTABLEKS                       R4 R3 K8 ["json"]
       25 GETTABLEKS                       R4 R0 K9 ["listTests"]
       27 SETTABLEKS                       R4 R3 K9 ["listTests"]
       29 GETTABLEKS                       R4 R0 K10 ["maxConcurrency"]
       31 SETTABLEKS                       R4 R3 K10 ["maxConcurrency"]
       33 GETTABLEKS                       R4 R0 K11 ["maxWorkers"]
       35 SETTABLEKS                       R4 R3 K11 ["maxWorkers"]
       37 GETTABLEKS                       R4 R0 K12 ["noStackTrace"]
       39 SETTABLEKS                       R4 R3 K12 ["noStackTrace"]
       41 GETTABLEKS                       R4 R0 K13 ["nonFlagArgs"]
       43 SETTABLEKS                       R4 R3 K13 ["nonFlagArgs"]
       45 GETTABLEKS                       R4 R0 K14 ["outputFile"]
       47 SETTABLEKS                       R4 R3 K14 ["outputFile"]
       49 GETTABLEKS                       R4 R0 K15 ["passWithNoTests"]
       51 SETTABLEKS                       R4 R3 K15 ["passWithNoTests"]
       53 GETTABLEKS                       R4 R0 K16 ["projects"]
       55 SETTABLEKS                       R4 R3 K16 ["projects"]
       57 GETTABLEKS                       R4 R0 K17 ["reporters"]
       59 SETTABLEKS                       R4 R3 K17 ["reporters"]
       61 GETTABLEKS                       R4 R0 K18 ["rootDir"]
       63 SETTABLEKS                       R4 R3 K18 ["rootDir"]
       65 GETTABLEKS                       R4 R0 K19 ["runTestsByPath"]
       67 SETTABLEKS                       R4 R3 K19 ["runTestsByPath"]
       69 GETTABLEKS                       R4 R0 K20 ["silent"]
       71 SETTABLEKS                       R4 R3 K20 ["silent"]
       73 GETTABLEKS                       R4 R0 K21 ["skipFilter"]
       75 SETTABLEKS                       R4 R3 K21 ["skipFilter"]
       77 GETTABLEKS                       R4 R0 K22 ["snapshotFormat"]
       79 SETTABLEKS                       R4 R3 K22 ["snapshotFormat"]
       81 GETTABLEKS                       R4 R0 K23 ["stackDepth"]
       83 SETTABLEKS                       R4 R3 K23 ["stackDepth"]
       85 GETTABLEKS                       R4 R0 K24 ["testFailureExitCode"]
       87 SETTABLEKS                       R4 R3 K24 ["testFailureExitCode"]
       89 GETTABLEKS                       R4 R0 K25 ["testNamePattern"]
       91 SETTABLEKS                       R4 R3 K25 ["testNamePattern"]
       93 GETTABLEKS                       R4 R0 K26 ["testPathPattern"]
       95 SETTABLEKS                       R4 R3 K26 ["testPathPattern"]
       97 GETTABLEKS                       R4 R0 K27 ["testTimeout"]
       99 SETTABLEKS                       R4 R3 K27 ["testTimeout"]
      101 GETTABLEKS                       R4 R0 K28 ["updateSnapshot"]
      103 SETTABLEKS                       R4 R3 K28 ["updateSnapshot"]
      105 GETTABLEKS                       R4 R0 K29 ["verbose"]
      107 SETTABLEKS                       R4 R3 K29 ["verbose"]
      109 CALL                             R2 1 1
      110 SETTABLEKS                       R2 R1 K0 ["globalConfig"]
      112 GETUPVAL                         R2 0
      113 GETTABLEKS                       R2 R2 K3 ["freeze"]
      115 DUPTABLE                         R3 K56 [{"automock", "clearMocks", "displayName", "id", "injectGlobals", "mockDataModel", "oldFunctionSpying", "resetMocks", "resetModules", "restoreMocks", "rootDir", "roots", "runner", "runtime", "sandboxInjectedGlobals", "setupFiles", "setupFilesAfterEnv", "slowTestThreshold", "snapshotFormat", "snapshotSerializers", "testEnvironment", "testEnvironmentOptions", "testLocationInResults", "testMatch", "testPathIgnorePatterns", "testRegex", "timers"}]
      116 GETTABLEKS                       R4 R0 K31 ["automock"]
      118 SETTABLEKS                       R4 R3 K31 ["automock"]
      120 GETTABLEKS                       R4 R0 K32 ["clearMocks"]
      122 SETTABLEKS                       R4 R3 K32 ["clearMocks"]
      124 GETTABLEKS                       R4 R0 K33 ["displayName"]
      126 SETTABLEKS                       R4 R3 K33 ["displayName"]
      128 GETTABLEKS                       R4 R0 K34 ["id"]
      130 SETTABLEKS                       R4 R3 K34 ["id"]
      132 GETTABLEKS                       R4 R0 K35 ["injectGlobals"]
      134 SETTABLEKS                       R4 R3 K35 ["injectGlobals"]
      136 GETTABLEKS                       R4 R0 K36 ["mockDataModel"]
      138 SETTABLEKS                       R4 R3 K36 ["mockDataModel"]
      140 GETTABLEKS                       R4 R0 K37 ["oldFunctionSpying"]
      142 SETTABLEKS                       R4 R3 K37 ["oldFunctionSpying"]
      144 GETTABLEKS                       R4 R0 K38 ["resetMocks"]
      146 SETTABLEKS                       R4 R3 K38 ["resetMocks"]
      148 GETTABLEKS                       R4 R0 K39 ["resetModules"]
      150 SETTABLEKS                       R4 R3 K39 ["resetModules"]
      152 GETTABLEKS                       R4 R0 K40 ["restoreMocks"]
      154 SETTABLEKS                       R4 R3 K40 ["restoreMocks"]
      156 GETTABLEKS                       R4 R0 K18 ["rootDir"]
      158 SETTABLEKS                       R4 R3 K18 ["rootDir"]
      160 GETTABLEKS                       R4 R0 K41 ["roots"]
      162 SETTABLEKS                       R4 R3 K41 ["roots"]
      164 GETTABLEKS                       R4 R0 K42 ["runner"]
      166 SETTABLEKS                       R4 R3 K42 ["runner"]
      168 GETTABLEKS                       R4 R0 K43 ["runtime"]
      170 SETTABLEKS                       R4 R3 K43 ["runtime"]
      172 GETTABLEKS                       R4 R0 K44 ["sandboxInjectedGlobals"]
      174 SETTABLEKS                       R4 R3 K44 ["sandboxInjectedGlobals"]
      176 GETTABLEKS                       R4 R0 K45 ["setupFiles"]
      178 SETTABLEKS                       R4 R3 K45 ["setupFiles"]
      180 GETTABLEKS                       R4 R0 K46 ["setupFilesAfterEnv"]
      182 SETTABLEKS                       R4 R3 K46 ["setupFilesAfterEnv"]
      184 GETTABLEKS                       R4 R0 K47 ["slowTestThreshold"]
      186 SETTABLEKS                       R4 R3 K47 ["slowTestThreshold"]
      188 GETTABLEKS                       R4 R0 K22 ["snapshotFormat"]
      190 SETTABLEKS                       R4 R3 K22 ["snapshotFormat"]
      192 GETTABLEKS                       R4 R0 K48 ["snapshotSerializers"]
      194 SETTABLEKS                       R4 R3 K48 ["snapshotSerializers"]
      196 GETTABLEKS                       R4 R0 K49 ["testEnvironment"]
      198 SETTABLEKS                       R4 R3 K49 ["testEnvironment"]
      200 GETTABLEKS                       R4 R0 K50 ["testEnvironmentOptions"]
      202 SETTABLEKS                       R4 R3 K50 ["testEnvironmentOptions"]
      204 GETTABLEKS                       R4 R0 K51 ["testLocationInResults"]
      206 SETTABLEKS                       R4 R3 K51 ["testLocationInResults"]
      208 GETTABLEKS                       R4 R0 K52 ["testMatch"]
      210 SETTABLEKS                       R4 R3 K52 ["testMatch"]
      212 GETTABLEKS                       R4 R0 K53 ["testPathIgnorePatterns"]
      214 SETTABLEKS                       R4 R3 K53 ["testPathIgnorePatterns"]
      216 GETTABLEKS                       R4 R0 K54 ["testRegex"]
      218 SETTABLEKS                       R4 R3 K54 ["testRegex"]
      220 GETTABLEKS                       R4 R0 K55 ["timers"]
      222 SETTABLEKS                       R4 R3 K55 ["timers"]
      224 CALL                             R2 1 1
      225 SETTABLEKS                       R2 R1 K1 ["projectConfig"]
      227 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R2 R2 K0 ["get"]
        4 CALL                             R2 2 1
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_6:
        0 LENGTH                           R2 R1
        1 LOADN                            R3 1
        2 JUMPIFNOTLE                      R2 R3 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["new"]
        8 CALL                             R2 0 1
        9 MOVE                             R3 R0
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R8 R7 K1 ["configPath"]
       15 MOVE                             R11 R8
       16 NAMECALL                         R9 R2 K2 ["has"]
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R9 ; [+67]
       20 LOADK                            R9 K3 ["Whoops! Two projects resolved to the same config path: %s:\n\n  Project 1: %s\n  Project 2: %s\n\nThis usually means that your %s config includes a directory that doesn't have any configuration recognizable by Jest. Please fix it.\n"]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K4 ["bold"]
       24 FASTCALL1                        TOSTRING R8 ; [+3]
       25 MOVE                             R13 R8
       26 GETIMPORT                        R12 K6 [tostring]
       28 CALL                             R12 1 1
       29 CALL                             R11 1 1
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K4 ["bold"]
       33 GETUPVAL                         R15 2
       34 GETTABLEKS                       R15 R15 K7 ["findIndex"]
       36 MOVE                             R16 R0
       37 NEWCLOSURE                       R17 P0
       38 CAPTURE                          VAL R7
       39 CALL                             R15 2 1
       40 GETTABLE                         R14 R1 R15
       41 FASTCALL1                        TOSTRING R14 ; [+2]
       42 GETIMPORT                        R13 K6 [tostring]
       44 CALL                             R13 1 1
       45 CALL                             R12 1 1
       46 GETUPVAL                         R14 1
       47 GETTABLEKS                       R14 R14 K4 ["bold"]
       49 GETUPVAL                         R17 2
       50 GETTABLEKS                       R17 R17 K7 ["findIndex"]
       52 MOVE                             R18 R0
       53 NEWCLOSURE                       R19 P1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R8
       56 CALL                             R17 2 1
       57 GETTABLE                         R16 R1 R17
       58 FASTCALL1                        TOSTRING R16 ; [+2]
       59 GETIMPORT                        R15 K6 [tostring]
       61 CALL                             R15 1 1
       62 CALL                             R14 1 -1
       63 FASTCALL                         TOSTRING ; [+2]
       64 GETIMPORT                        R13 K6 [tostring]
       66 CALL                             R13 -1 1
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R15 R15 K4 ["bold"]
       70 LOADK                            R16 K8 ["\"projects\""]
       71 CALL                             R15 1 -1
       72 FASTCALL                         TOSTRING ; [+2]
       73 GETIMPORT                        R14 K6 [tostring]
       75 CALL                             R14 -1 1
       76 NAMECALL                         R9 R9 K9 ["format"]
       78 CALL                             R9 5 1
       79 GETIMPORT                        R10 K11 [error]
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R11 R11 K0 ["new"]
       84 MOVE                             R12 R9
       85 CALL                             R11 1 -1
       86 CALL                             R10 -1 0
       87 JUMPIFEQKNIL                     R8 ; [+6]
       89 MOVE                             R11 R8
       90 MOVE                             R12 R7
       91 NAMECALL                         R9 R2 K12 ["set"]
       93 CALL                             R9 3 0
       94 FORGLOOP                         R3 2 ; [-82]
       96 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Instance"] ; [+14]
        7 NAMECALL                         R2 R0 K3 ["GetChildren"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+8]
       13 LOADK                            R3 K5 ["ModuleScript"]
       14 NAMECALL                         R1 R0 K6 ["isA"]
       16 CALL                             R1 2 1
       17 JUMPIF                           R1 ; [+2]
       18 LOADB                            R1 0
       19 RETURN                           R1 1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_8:
        0 LOADB                            R2 0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+7]
        3 GETUPVAL                         R4 0
        4 LENGTH                           R3 R4
        5 JUMPIFEQKN                       R3 K0 [1] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R4 1
       11 JUMP                             ; [+1]
       12 MOVE                             R4 R2
       13 NOT                              R3 R4
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 GETUPVAL                         R6 4
       17 MOVE                             R7 R0
       18 MOVE                             R8 R3
       19 GETUPVAL                         R10 5
       20 JUMPIFEQKNIL                     R10 ; [+5]
       22 GETUPVAL                         R9 5
       23 GETTABLEKS                       R9 R9 K1 ["Parent"]
       25 JUMP                             ; [+1]
       26 GETUPVAL                         R9 6
       27 MOVE                             R10 R1
       28 GETUPVAL                         R11 1
       29 CALL                             R4 7 -1
       30 RETURN                           R4 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["projectConfig"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["hasDeprecationWarnings"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["toJSBoolean"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_11:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 GETUPVAL                         R6 0
        7 LENGTH                           R5 R6
        8 JUMPIFNOTEQKN                    R5 K0 [1] ; [+69]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 2
       12 GETTABLEN                        R8 R3 1
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 JUMPIFNOTEQKNIL                  R9 ; [+2]
       17 LOADK                            R9 K1 [∞]
       18 JUMPIFNOTEQKNIL                  R10 ; [+2]
       20 LOADB                            R10 0
       21 GETUPVAL                         R11 3
       22 GETTABLEKS                       R11 R11 K2 ["resolve"]
       24 CALL                             R11 0 1
       25 LOADNIL                          R14
       26 NEWCLOSURE                       R13 P0
       27 CAPTURE                          VAL R8
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R7
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          VAL R14
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          VAL R6
       36 CAPTURE                          REF R10
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          REF R9
       40 CAPTURE                          UPVAL U11
       41 NAMECALL                         R11 R11 K3 ["andThen"]
       43 CALL                             R11 2 1
       44 MOVE                             R5 R11
       45 CLOSEUPVALS                      R9
       46 NAMECALL                         R5 R5 K4 ["expect"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R4 R5 K5 ["configPath"]
       51 GETTABLEKS                       R1 R5 K6 ["hasDeprecationWarnings"]
       53 GETTABLEKS                       R0 R5 K7 ["globalConfig"]
       55 NEWTABLE                         R6 0 1
       57 GETTABLEKS                       R7 R5 K8 ["projectConfig"]
       59 SETLIST                          R6 R7 1 [1]
       61 MOVE                             R2 R6
       62 GETUPVAL                         R6 7
       63 GETTABLEKS                       R6 R6 K9 ["toJSBoolean"]
       65 GETTABLEKS                       R8 R0 K10 ["projects"]
       67 JUMPIFEQKNIL                     R8 ; [+5]
       69 GETTABLEKS                       R8 R0 K10 ["projects"]
       71 LENGTH                           R7 R8
       72 JUMP                             ; [+1]
       73 LOADNIL                          R7
       74 CALL                             R6 1 1
       75 JUMPIFNOT                        R6 ; [+2]
       76 GETTABLEKS                       R3 R0 K10 ["projects"]
       78 LENGTH                           R5 R3
       79 LOADN                            R6 0
       80 JUMPIFNOTLT                      R6 R5 ; [+61]
       82 GETUPVAL                         R5 1
       83 GETTABLEN                        R7 R3 1
       84 JUMPIFEQ                         R7 R5 ; [+2]
       86 LOADB                            R6 0 +1
       87 LOADB                            R6 1
       88 GETUPVAL                         R7 3
       89 GETTABLEKS                       R7 R7 K11 ["all"]
       91 GETUPVAL                         R8 12
       92 GETTABLEKS                       R8 R8 K12 ["map"]
       94 GETUPVAL                         R9 12
       95 GETTABLEKS                       R9 R9 K13 ["filter"]
       97 MOVE                             R10 R3
       98 DUPCLOSURE                       R11 K14 [PROTO_7]
       99 CALL                             R9 2 1
      100 NEWCLOSURE                       R10 P2
      101 CAPTURE                          REF R3
      102 CAPTURE                          VAL R6
      103 CAPTURE                          UPVAL U13
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          REF R4
      107 CAPTURE                          VAL R5
      108 CALL                             R8 2 -1
      109 CALL                             R7 -1 1
      110 NAMECALL                         R7 R7 K4 ["expect"]
      112 CALL                             R7 1 1
      113 GETUPVAL                         R8 14
      114 MOVE                             R9 R7
      115 MOVE                             R10 R3
      116 CALL                             R8 2 0
      117 GETUPVAL                         R8 12
      118 GETTABLEKS                       R8 R8 K12 ["map"]
      120 MOVE                             R9 R7
      121 DUPCLOSURE                       R10 K15 [PROTO_9]
      122 CALL                             R8 2 1
      123 MOVE                             R2 R8
      124 JUMPIF                           R1 ; [+8]
      125 GETUPVAL                         R8 12
      126 GETTABLEKS                       R8 R8 K16 ["some"]
      128 MOVE                             R9 R7
      129 DUPCLOSURE                       R10 K17 [PROTO_10]
      130 CAPTURE                          UPVAL U7
      131 CALL                             R8 2 1
      132 MOVE                             R1 R8
      133 GETUPVAL                         R8 7
      134 GETTABLEKS                       R8 R8 K9 ["toJSBoolean"]
      136 MOVE                             R9 R0
      137 CALL                             R8 1 1
      138 JUMPIF                           R8 ; [+3]
      139 GETTABLEN                        R8 R7 1
      140 GETTABLEKS                       R0 R8 K7 ["globalConfig"]
      142 GETUPVAL                         R5 7
      143 GETTABLEKS                       R5 R5 K9 ["toJSBoolean"]
      145 MOVE                             R6 R0
      146 CALL                             R5 1 1
      147 JUMPIFNOT                        R5 ; [+6]
      148 GETUPVAL                         R5 7
      149 GETTABLEKS                       R5 R5 K9 ["toJSBoolean"]
      151 LENGTH                           R6 R2
      152 CALL                             R5 1 1
      153 JUMPIF                           R5 ; [+8]
      154 GETIMPORT                        R5 K19 [error]
      156 GETUPVAL                         R6 4
      157 GETTABLEKS                       R6 R6 K20 ["new"]
      159 LOADK                            R7 K21 ["jest: No configuration found for any project."]
      160 CALL                             R6 1 -1
      161 CALL                             R5 -1 0
      162 DUPTABLE                         R5 K23 [{"configs", "globalConfig", "hasDeprecationWarnings"}]
      163 SETTABLEKS                       R2 R5 K22 ["configs"]
      165 SETTABLEKS                       R0 R5 K7 ["globalConfig"]
      167 GETUPVAL                         R6 7
      168 GETTABLEKS                       R6 R6 K9 ["toJSBoolean"]
      170 MOVE                             R7 R1
      171 CALL                             R6 1 1
      172 SETTABLEKS                       R6 R5 K6 ["hasDeprecationWarnings"]
      174 CLOSEUPVALS                      R3
      175 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 NAMECALL                         R3 R3 K1 ["andThen"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Array"]
       12 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       14 GETTABLEKS                       R4 R1 K8 ["Error"]
       16 GETTABLEKS                       R5 R1 K9 ["Map"]
       18 GETTABLEKS                       R6 R1 K10 ["Object"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R0 K11 ["Promise"]
       24 CALL                             R7 1 1
       25 NEWTABLE                         R8 8 0
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R0 K12 ["ChalkLua"]
       31 CALL                             R9 1 1
       32 GETIMPORT                        R10 K4 [require]
       34 GETTABLEKS                       R11 R0 K13 ["JestTypes"]
       36 CALL                             R10 1 1
       37 GETIMPORT                        R11 K4 [require]
       39 GETIMPORT                        R12 K1 [script]
       41 GETTABLEKS                       R12 R12 K14 ["constants"]
       43 CALL                             R11 1 1
       44 GETIMPORT                        R12 K4 [require]
       46 GETIMPORT                        R13 K1 [script]
       48 GETTABLEKS                       R13 R13 K15 ["normalize"]
       50 CALL                             R12 1 1
       51 GETTABLEKS                       R12 R12 K16 ["default"]
       53 GETIMPORT                        R13 K4 [require]
       55 GETIMPORT                        R14 K1 [script]
       57 GETTABLEKS                       R14 R14 K17 ["readConfigFileAndSetRootDir"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R13 R13 K16 ["default"]
       62 GETIMPORT                        R14 K4 [require]
       64 GETIMPORT                        R15 K1 [script]
       66 GETTABLEKS                       R15 R15 K18 ["resolveConfigPath"]
       68 CALL                             R14 1 1
       69 GETTABLEKS                       R14 R14 K16 ["default"]
       71 GETIMPORT                        R15 K4 [require]
       73 GETIMPORT                        R16 K1 [script]
       75 GETTABLEKS                       R16 R16 K19 ["utils"]
       77 CALL                             R15 1 1
       78 GETTABLEKS                       R16 R15 K20 ["isJSONString"]
       80 GETIMPORT                        R17 K4 [require]
       82 GETIMPORT                        R18 K1 [script]
       84 GETTABLEKS                       R18 R18 K19 ["utils"]
       86 CALL                             R17 1 1
       87 GETTABLEKS                       R17 R17 K20 ["isJSONString"]
       89 SETTABLEKS                       R17 R8 K20 ["isJSONString"]
       91 GETIMPORT                        R17 K4 [require]
       93 GETIMPORT                        R18 K1 [script]
       95 GETTABLEKS                       R18 R18 K15 ["normalize"]
       97 CALL                             R17 1 1
       98 GETTABLEKS                       R17 R17 K16 ["default"]
      100 SETTABLEKS                       R17 R8 K15 ["normalize"]
      102 GETIMPORT                        R17 K4 [require]
      104 GETIMPORT                        R18 K1 [script]
      106 GETTABLEKS                       R18 R18 K21 ["Defaults"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R17 R17 K16 ["default"]
      111 SETTABLEKS                       R17 R8 K22 ["defaults"]
      113 SETTABLEKS                       R11 R8 K14 ["constants"]
      115 GETIMPORT                        R17 K4 [require]
      117 GETTABLEKS                       R18 R0 K23 ["RobloxShared"]
      119 CALL                             R17 1 1
      120 GETTABLEKS                       R18 R17 K24 ["nodeUtils"]
      122 GETTABLEKS                       R19 R18 K25 ["JSON"]
      124 LOADNIL                          R20
      125 LOADNIL                          R21
      126 NEWCLOSURE                       R22 P0
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R12
      135 CAPTURE                          REF R20
      136 SETTABLEKS                       R22 R8 K26 ["readConfig"]
      138 DUPCLOSURE                       R20 K27 [PROTO_3]
      139 CAPTURE                          VAL R6
      140 DUPCLOSURE                       R21 K28 [PROTO_6]
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R4
      145 NEWCLOSURE                       R23 P3
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R12
      154 CAPTURE                          REF R20
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R22
      157 CAPTURE                          REF R21
      158 SETTABLEKS                       R23 R8 K29 ["readConfigs"]
      160 MOVE                             R24 R20
      161 GETTABLEKS                       R25 R8 K22 ["defaults"]
      163 CALL                             R24 1 1
      164 GETTABLEKS                       R25 R24 K30 ["globalConfig"]
      166 SETTABLEKS                       R25 R8 K31 ["globalDefaults"]
      168 GETTABLEKS                       R25 R24 K32 ["projectConfig"]
      170 SETTABLEKS                       R25 R8 K33 ["projectDefaults"]
      172 CLOSEUPVALS                      R20
      173 RETURN                           R8 1
