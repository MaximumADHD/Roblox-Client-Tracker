PROTO_0:
        0 MULK                             R4 R0 K0 [1]
        1 ADDK                             R3 R4 K1 [0.5]
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K4 [math.floor]
        5 CALL                             R2 1 1
        6 DIVK                             R1 R2 K0 [1]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K2 [setmetatable]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R0 R1 K3 ["_globalConfig"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["__clearStatus"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K1 ["__printStatus"]
       11 CALL                             R2 1 0
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["write"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R1 K0 ["write"]
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 JUMPIFNOTEQKS                    R1 K1 ["pending"] ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filter"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_4]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["title"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K1 [ipairs]
        3 GETTABLEKS                       R3 R0 K2 ["ancestorTitles"]
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["find"]
       10 GETTABLEKS                       R8 R1 K4 ["suites"]
       12 NEWCLOSURE                       R9 P0
       13 CAPTURE                          VAL R6
       14 CALL                             R7 2 1
       15 JUMPIFNOTEQKNIL                  R7 ; [+21]
       17 DUPTABLE                         R8 K7 [{"suites", "tests", "title"}]
       18 NEWTABLE                         R9 0 0
       20 SETTABLEKS                       R9 R8 K4 ["suites"]
       22 NEWTABLE                         R9 0 0
       24 SETTABLEKS                       R9 R8 K5 ["tests"]
       26 SETTABLEKS                       R6 R8 K6 ["title"]
       28 MOVE                             R7 R8
       29 GETTABLEKS                       R9 R1 K4 ["suites"]
       31 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K10 [table.insert]
       36 CALL                             R8 2 0
       37 MOVE                             R1 R7
       38 FORGLOOP                         R2 2 [inext] ; [-32]
       40 GETTABLEKS                       R3 R1 K5 ["tests"]
       42 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       44 MOVE                             R4 R0
       45 GETIMPORT                        R2 K10 [table.insert]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K4 [{[1], ["tests"], ["title"] = ""}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["suites"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["tests"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["forEach"]
       12 MOVE                             R3 R0
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U0
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["testFinished"]
        3 MOVE                             R5 R0
        4 GETTABLEKS                       R6 R1 K1 ["context"]
        6 GETTABLEKS                       R6 R6 K2 ["config"]
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 CALL                             R4 4 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["toJSBoolean"]
       14 GETTABLEKS                       R5 R2 K4 ["skipped"]
       16 CALL                             R4 1 1
       17 JUMPIF                           R4 ; [+39]
       18 GETTABLEKS                       R6 R2 K5 ["testFilePath"]
       20 GETTABLEKS                       R7 R1 K1 ["context"]
       22 GETTABLEKS                       R7 R7 K2 ["config"]
       24 MOVE                             R8 R2
       25 NAMECALL                         R4 R0 K6 ["printTestFileHeader"]
       27 CALL                             R4 4 0
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K3 ["toJSBoolean"]
       31 GETTABLEKS                       R5 R2 K7 ["testExecError"]
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+12]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K3 ["toJSBoolean"]
       38 GETTABLEKS                       R5 R2 K4 ["skipped"]
       40 CALL                             R4 1 1
       41 JUMPIF                           R4 ; [+5]
       42 GETTABLEKS                       R6 R2 K8 ["testResults"]
       44 NAMECALL                         R4 R0 K9 ["_logTestResults"]
       46 CALL                             R4 2 0
       47 GETTABLEKS                       R6 R2 K5 ["testFilePath"]
       49 GETTABLEKS                       R7 R1 K1 ["context"]
       51 GETTABLEKS                       R7 R7 K2 ["config"]
       53 MOVE                             R8 R2
       54 NAMECALL                         R4 R0 K10 ["printTestFileFailureMessage"]
       56 CALL                             R4 4 0
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K11 ["forceFlushBufferedOutput"]
       60 MOVE                             R5 R0
       61 CALL                             R4 1 0
       62 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["groupTestsBySuites"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 LOADN                            R5 0
        6 NAMECALL                         R2 R0 K1 ["_logSuite"]
        8 CALL                             R2 3 0
        9 NAMECALL                         R2 R0 K2 ["_logLine"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 ADDK                             R4 R5 K0 [1]
        4 NAMECALL                         R1 R1 K1 ["_logSuite"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R1 K1 ["title"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETTABLEKS                       R5 R1 K1 ["title"]
        9 MOVE                             R6 R2
       10 NAMECALL                         R3 R0 K2 ["_logLine"]
       12 CALL                             R3 3 0
       13 GETTABLEKS                       R5 R1 K3 ["tests"]
       15 ADDK                             R6 R2 K4 [1]
       16 NAMECALL                         R3 R0 K5 ["_logTests"]
       18 CALL                             R3 3 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["forEach"]
       22 GETTABLEKS                       R4 R1 K7 ["suites"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOTEQKS                    R1 K0 ["failed"] ; [+9]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["red"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["failed"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1
       10 JUMPIFNOTEQKS                    R1 K2 ["pending"] ; [+9]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["yellow"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["pending"]
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 JUMPIFNOTEQKS                    R1 K4 ["todo"] ; [+9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K5 ["magenta"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K4 ["todo"]
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K6 ["green"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K7 ["success"]
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R5 R1 K0 ["status"]
        2 NAMECALL                         R3 R0 K1 ["_getIcon"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R5 R1 K2 ["duration"]
        7 JUMPIFEQKNIL                     R5 ; [+21]
        9 LOADK                            R4 K3 [" (%s)"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R9 R1 K2 ["duration"]
       13 MULK                             R12 R9 K4 [1]
       14 ADDK                             R11 R12 K5 [0.5]
       15 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       16 GETIMPORT                        R10 K8 [math.floor]
       18 CALL                             R10 1 1
       19 DIVK                             R8 R10 K4 [1]
       20 CALL                             R7 1 -1
       21 FASTCALL                         TOSTRING ; [+2]
       22 GETIMPORT                        R6 K10 [tostring]
       24 CALL                             R6 -1 1
       25 NAMECALL                         R4 R4 K11 ["format"]
       27 CALL                             R4 2 1
       28 JUMP                             ; [+1]
       29 LOADK                            R4 K12 [""]
       30 MOVE                             R8 R3
       31 LOADK                            R9 K13 [" "]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K14 ["dim"]
       35 GETTABLEKS                       R12 R1 K15 ["title"]
       37 MOVE                             R13 R4
       38 CONCAT                           R11 R12 R13
       39 CALL                             R10 1 1
       40 CONCAT                           R7 R8 R10
       41 MOVE                             R8 R2
       42 NAMECALL                         R5 R0 K16 ["_logLine"]
       44 CALL                             R5 3 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["_logTest"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["status"]
        2 JUMPIFNOTEQKS                    R2 K1 ["pending"] ; [+10]
        4 GETTABLEKS                       R3 R0 K1 ["pending"]
        6 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R2 K4 [table.insert]
       11 CALL                             R2 2 0
       12 RETURN                           R0 1
       13 GETTABLEKS                       R2 R1 K0 ["status"]
       15 JUMPIFNOTEQKS                    R2 K5 ["todo"] ; [+10]
       17 GETTABLEKS                       R3 R0 K5 ["todo"]
       19 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K4 [table.insert]
       24 CALL                             R2 2 0
       25 RETURN                           R0 1
       26 GETUPVAL                         R2 0
       27 MOVE                             R4 R1
       28 GETUPVAL                         R5 1
       29 NAMECALL                         R2 R2 K6 ["_logTest"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R0 K1 ["_globalConfig"]
        5 GETTABLEKS                       R4 R4 K2 ["expand"]
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["forEach"]
       12 MOVE                             R4 R1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CALL                             R3 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K4 ["reduce"]
       21 MOVE                             R4 R1
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 DUPTABLE                         R6 K7 [{"pending", "todo"}]
       26 NEWTABLE                         R7 0 0
       28 SETTABLEKS                       R7 R6 K5 ["pending"]
       30 NEWTABLE                         R7 0 0
       32 SETTABLEKS                       R7 R6 K6 ["todo"]
       34 CALL                             R3 3 1
       35 GETTABLEKS                       R5 R3 K5 ["pending"]
       37 LENGTH                           R4 R5
       38 LOADN                            R5 0
       39 JUMPIFNOTLT                      R5 R4 ; [+11]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K3 ["forEach"]
       44 GETTABLEKS                       R5 R3 K5 ["pending"]
       46 MOVE                             R8 R2
       47 NAMECALL                         R6 R0 K8 ["_logTodoOrPendingTest"]
       49 CALL                             R6 2 -1
       50 CALL                             R4 -1 0
       51 GETTABLEKS                       R5 R3 K6 ["todo"]
       53 LENGTH                           R4 R5
       54 LOADN                            R5 0
       55 JUMPIFNOTLT                      R5 R4 ; [+11]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K3 ["forEach"]
       60 GETTABLEKS                       R5 R3 K6 ["todo"]
       62 MOVE                             R8 R2
       63 NAMECALL                         R6 R0 K8 ["_logTodoOrPendingTest"]
       65 CALL                             R6 2 -1
       66 CALL                             R4 -1 0
       67 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFNOTEQKS                    R2 K1 ["pending"] ; [+3]
        4 LOADK                            R1 K2 ["skipped"]
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["status"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R4 R0 K0 ["status"]
       11 NAMECALL                         R2 R2 K3 ["_getIcon"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["dim"]
       17 LOADK                            R4 K5 ["%s %s"]
       18 MOVE                             R6 R1
       19 GETTABLEKS                       R7 R0 K6 ["title"]
       21 NAMECALL                         R4 R4 K7 ["format"]
       23 CALL                             R4 3 -1
       24 CALL                             R3 -1 1
       25 GETUPVAL                         R4 0
       26 LOADK                            R6 K5 ["%s %s"]
       27 MOVE                             R8 R2
       28 MOVE                             R9 R3
       29 NAMECALL                         R6 R6 K7 ["format"]
       31 CALL                             R6 3 1
       32 GETUPVAL                         R7 2
       33 NAMECALL                         R4 R4 K8 ["_logLine"]
       35 CALL                             R4 3 0
       36 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_20:
        0 LOADK                            R3 K0 ["  "]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K1 ["toJSBoolean"]
        4 MOVE                             R7 R2
        5 CALL                             R6 1 1
        6 JUMPIFNOT                        R6 ; [+2]
        7 MOVE                             R5 R2
        8 JUMPIF                           R5 ; [+1]
        9 LOADN                            R5 0
       10 NAMECALL                         R3 R3 K2 ["rep"]
       12 CALL                             R3 2 1
       13 MOVE                             R7 R3
       14 ORK                              R8 R1 K3 [""]
       15 CONCAT                           R6 R7 R8
       16 NAMECALL                         R4 R0 K4 ["log"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 NEWTABLE                         R5 1 0
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R1 K8 ["ChalkLua"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R1 K9 ["JestTestResult"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R1 K10 ["JestTypes"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K4 [require]
       35 GETTABLEKS                       R10 R1 K11 ["JestUtil"]
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R10 R9 K12 ["formatTime"]
       40 GETTABLEKS                       R11 R9 K13 ["ICONS"]
       42 GETIMPORT                        R12 K4 [require]
       44 GETTABLEKS                       R13 R0 K14 ["DefaultReporter"]
       46 CALL                             R12 1 1
       47 GETTABLEKS                       R13 R12 K15 ["default"]
       49 GETIMPORT                        R14 K4 [require]
       51 GETTABLEKS                       R15 R0 K16 ["types"]
       53 CALL                             R14 1 1
       54 GETIMPORT                        R15 K4 [require]
       56 GETTABLEKS                       R16 R1 K17 ["RobloxShared"]
       58 CALL                             R15 1 1
       59 NEWTABLE                         R17 0 0
       61 DUPTABLE                         R18 K19 [{"__index"}]
       62 SETTABLEKS                       R13 R18 K18 ["__index"]
       64 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
       66 GETIMPORT                        R16 K21 [setmetatable]
       68 CALL                             R16 2 1
       69 SETTABLEKS                       R16 R16 K18 ["__index"]
       71 LOADK                            R17 K22 ["VerboseReporter"]
       72 SETTABLEKS                       R17 R16 K23 ["filename"]
       74 DUPCLOSURE                       R17 K24 [PROTO_0]
       75 DUPCLOSURE                       R18 K25 [PROTO_1]
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R16
       78 SETTABLEKS                       R18 R16 K26 ["new"]
       80 DUPCLOSURE                       R18 K27 [PROTO_3]
       81 SETTABLEKS                       R18 R16 K28 ["__wrapStdio"]
       83 DUPCLOSURE                       R18 K29 [PROTO_5]
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R18 R16 K30 ["filterTestResults"]
       87 DUPCLOSURE                       R18 K31 [PROTO_8]
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R18 R16 K32 ["groupTestsBySuites"]
       91 DUPCLOSURE                       R18 K33 [PROTO_9]
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R18 R16 K34 ["onTestResult"]
       96 DUPCLOSURE                       R18 K35 [PROTO_10]
       97 CAPTURE                          VAL R16
       98 SETTABLEKS                       R18 R16 K36 ["_logTestResults"]
      100 DUPCLOSURE                       R18 K37 [PROTO_12]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R18 R16 K38 ["_logSuite"]
      105 DUPCLOSURE                       R18 K39 [PROTO_13]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R11
      108 SETTABLEKS                       R18 R16 K40 ["_getIcon"]
      110 DUPCLOSURE                       R18 K41 [PROTO_14]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R18 R16 K42 ["_logTest"]
      115 DUPCLOSURE                       R18 K43 [PROTO_17]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R18 R16 K44 ["_logTests"]
      120 DUPCLOSURE                       R18 K45 [PROTO_19]
      121 CAPTURE                          VAL R6
      122 SETTABLEKS                       R18 R16 K46 ["_logTodoOrPendingTest"]
      124 DUPCLOSURE                       R18 K47 [PROTO_20]
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R18 R16 K48 ["_logLine"]
      128 SETTABLEKS                       R16 R5 K15 ["default"]
      130 RETURN                           R5 1
