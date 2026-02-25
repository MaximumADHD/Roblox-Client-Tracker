PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 NAMECALL                         R1 R0 K1 ["_setupReporters"]
        8 CALL                             R1 1 1
        9 NAMECALL                         R1 R1 K2 ["expect"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R2 K1 ["andThen"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R3 4 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["_context"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["new"]
       13 CALL                             R3 0 1
       14 SETTABLEKS                       R3 R2 K4 ["_dispatcher"]
       16 SETTABLEKS                       R0 R2 K5 ["_globalConfig"]
       18 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_dispatcher"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["register"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_dispatcher"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["unregister"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_dispatcher"]
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K1 ["onTestFileStart"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["context"]
        3 NAMECALL                         R1 R1 K1 ["add"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R2 R0 K3 ["duration"]
        8 ORK                              R1 R2 K2 [0]
        9 LOADN                            R2 0
       10 JUMPIFNOTLT                      R2 R1 ; [+8]
       12 GETUPVAL                         R3 1
       13 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R2 K6 [table.insert]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isInterrupted"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["resolve"]
        8 CALL                             R0 0 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["testResults"]
       13 LENGTH                           R0 R1
       14 JUMPIFNOTEQKN                    R0 K3 [0] ; [+18]
       16 GETUPVAL                         R0 3
       17 GETUPVAL                         R1 4
       18 DUPTABLE                         R2 K6 [{"message", "stack"}]
       19 LOADK                            R3 K7 ["Your test suite must contain at least one test."]
       20 SETTABLEKS                       R3 R2 K4 ["message"]
       22 GETUPVAL                         R5 5
       23 GETTABLEKS                       R4 R5 K8 ["new"]
       25 LOADK                            R5 K7 ["Your test suite must contain at least one test."]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R3 R4 K5 ["stack"]
       29 SETTABLEKS                       R3 R2 K5 ["stack"]
       31 CALL                             R0 2 -1
       32 RETURN                           R0 -1
       33 GETUPVAL                         R1 6
       34 GETTABLEKS                       R0 R1 K9 ["toJSBoolean"]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R1 R2 K10 ["leaks"]
       39 CALL                             R0 1 1
       40 JUMPIFNOT                        R0 ; [+38]
       41 LOADK                            R7 K11 ["%sYour test suite is leaking memory. Please ensure all references are cleaned.\n"]
       42 GETUPVAL                         R11 7
       43 GETTABLEKS                       R10 R11 K12 ["red"]
       45 LOADK                            R12 K13 ["EXPERIMENTAL FEATURE!\n"]
       46 NAMECALL                         R10 R10 K14 ["bold"]
       48 CALL                             R10 2 -1
       49 FASTCALL                         TOSTRING ; [+2]
       50 GETIMPORT                        R9 K16 [tostring]
       52 CALL                             R9 -1 1
       53 NAMECALL                         R7 R7 K17 ["format"]
       55 CALL                             R7 2 1
       56 MOVE                             R1 R7
       57 LOADK                            R2 K18 ["\n"]
       58 LOADK                            R3 K19 ["There is a number of things that can leak memory:\n"]
       59 LOADK                            R4 K20 ["  - Async operations that have not finished (e.g. fs.readFile).\n"]
       60 LOADK                            R5 K21 ["  - Timers not properly mocked (e.g. setInterval, setTimeout).\n"]
       61 LOADK                            R6 K22 ["  - Keeping references to the global scope."]
       62 CONCAT                           R0 R1 R6
       63 GETUPVAL                         R1 3
       64 GETUPVAL                         R2 4
       65 DUPTABLE                         R3 K6 [{"message", "stack"}]
       66 SETTABLEKS                       R0 R3 K4 ["message"]
       68 GETUPVAL                         R6 5
       69 GETTABLEKS                       R5 R6 K8 ["new"]
       71 MOVE                             R6 R0
       72 CALL                             R5 1 1
       73 GETTABLEKS                       R4 R5 K5 ["stack"]
       75 SETTABLEKS                       R4 R3 K5 ["stack"]
       77 CALL                             R1 2 -1
       78 RETURN                           R1 -1
       79 GETUPVAL                         R0 8
       80 GETUPVAL                         R1 9
       81 GETUPVAL                         R2 2
       82 CALL                             R0 2 0
       83 GETUPVAL                         R1 10
       84 GETTABLEKS                       R0 R1 K23 ["_dispatcher"]
       86 GETUPVAL                         R2 4
       87 GETUPVAL                         R3 2
       88 GETUPVAL                         R4 9
       89 NAMECALL                         R0 R0 K24 ["onTestFileResult"]
       91 CALL                             R0 4 1
       92 NAMECALL                         R0 R0 K25 ["expect"]
       94 CALL                             R0 1 0
       95 GETUPVAL                         R0 10
       96 GETUPVAL                         R2 11
       97 GETUPVAL                         R3 9
       98 GETUPVAL                         R4 0
       99 NAMECALL                         R0 R0 K26 ["_bailIfNeeded"]
      101 CALL                             R0 4 -1
      102 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 NAMECALL                         R2 R2 K1 ["andThen"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isInterrupted"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["path"]
       10 GETUPVAL                         R2 3
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R2 R0 K2 ["testExecError"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K3 ["context"]
       18 GETTABLEKS                       R3 R4 K4 ["config"]
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R4 R5 K5 ["_globalConfig"]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K1 ["path"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K6 ["failureMessage"]
       29 GETUPVAL                         R1 6
       30 GETUPVAL                         R2 7
       31 MOVE                             R3 R0
       32 CALL                             R1 2 0
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R1 R2 K7 ["_dispatcher"]
       36 GETUPVAL                         R3 2
       37 MOVE                             R4 R0
       38 GETUPVAL                         R5 7
       39 NAMECALL                         R1 R1 K8 ["onTestFileResult"]
       41 CALL                             R1 4 1
       42 NAMECALL                         R1 R1 K9 ["expect"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 NAMECALL                         R2 R2 K1 ["andThen"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_11:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K1 ["andThen"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"filesRemoved", "filesRemovedList"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["filesRemoved"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["filesRemovedList"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["snapshot"]
       11 GETTABLEKS                       R3 R2 K0 ["filesRemoved"]
       13 GETTABLEKS                       R4 R1 K0 ["filesRemoved"]
       15 ADD                              R3 R3 R4
       16 SETTABLEKS                       R3 R2 K0 ["filesRemoved"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K3 ["snapshot"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K4 ["concat"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K3 ["snapshot"]
       27 GETTABLEKS                       R5 R6 K1 ["filesRemovedList"]
       29 JUMPIFEQKNIL                     R5 ; [+7]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K3 ["snapshot"]
       34 GETTABLEKS                       R4 R5 K1 ["filesRemovedList"]
       36 JUMP                             ; [+2]
       37 NEWTABLE                         R4 0 0
       39 GETTABLEKS                       R5 R1 K1 ["filesRemovedList"]
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K1 ["filesRemovedList"]
       44 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["all"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["map"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["from"]
        9 GETUPVAL                         R3 2
       10 CALL                             R2 1 1
       11 DUPCLOSURE                       R3 K3 [PROTO_12]
       12 CAPTURE                          UPVAL U0
       13 CALL                             R1 2 -1
       14 CALL                             R0 -1 1
       15 NAMECALL                         R0 R0 K4 ["expect"]
       17 CALL                             R0 1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["forEach"]
       21 MOVE                             R2 R0
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U1
       25 CALL                             R1 2 0
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R3 R4 K6 ["_globalConfig"]
       29 GETTABLEKS                       R2 R3 K7 ["updateSnapshot"]
       31 JUMPIFEQKS                       R2 K0 ["all"] ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K8 ["snapshot"]
       38 SETTABLEKS                       R1 R2 K9 ["didUpdate"]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R2 R3 K8 ["snapshot"]
       43 NOT                              R3 R1
       44 JUMPIFNOT                        R3 ; [+28]
       45 LOADB                            R3 1
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R5 R6 K8 ["snapshot"]
       49 GETTABLEKS                       R4 R5 K10 ["unchecked"]
       51 LOADN                            R5 0
       52 JUMPIFLT                         R5 R4 ; [+20]
       54 LOADB                            R3 1
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R5 R6 K8 ["snapshot"]
       58 GETTABLEKS                       R4 R5 K11 ["unmatched"]
       60 LOADN                            R5 0
       61 JUMPIFLT                         R5 R4 ; [+11]
       63 GETUPVAL                         R6 3
       64 GETTABLEKS                       R5 R6 K8 ["snapshot"]
       66 GETTABLEKS                       R4 R5 K12 ["filesRemoved"]
       68 LOADN                            R5 0
       69 JUMPIFLT                         R5 R4 ; [+2]
       71 LOADB                            R3 0 +1
       72 LOADB                            R3 1
       73 SETTABLEKS                       R3 R2 K13 ["failure"]
       75 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NAMECALL                         R0 R0 K1 ["andThen"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["config"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["toJSBoolean"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R4 R0 K2 ["runner"]
        9 GETTABLE                         R2 R3 R4
       10 CALL                             R1 1 1
       11 JUMPIF                           R1 ; [+39]
       12 GETIMPORT                        R2 K4 [require]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K5 ["JestRunner"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R1 R2 K6 ["default"]
       20 GETTABLEKS                       R2 R1 K7 ["new"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R3 R4 K8 ["_globalConfig"]
       25 DUPTABLE                         R4 K11 [{"changedFiles", "sourcesRelatedToTestsInChangedFiles"}]
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R6 R7 K12 ["_context"]
       29 GETTABLEKS                       R5 R6 K9 ["changedFiles"]
       31 SETTABLEKS                       R5 R4 K9 ["changedFiles"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R6 R7 K12 ["_context"]
       36 GETTABLEKS                       R5 R6 K10 ["sourcesRelatedToTestsInChangedFiles"]
       38 SETTABLEKS                       R5 R4 K10 ["sourcesRelatedToTestsInChangedFiles"]
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R4 R0 K2 ["runner"]
       44 SETTABLE                         R2 R3 R4
       45 GETUPVAL                         R3 5
       46 MOVE                             R5 R2
       47 GETUPVAL                         R6 0
       48 NAMECALL                         R3 R3 K13 ["set"]
       50 CALL                             R3 3 0
       51 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 NAMECALL                         R1 R1 K1 ["andThen"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_18:
        0 GETTABLEN                        R1 R0 1
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_19:
        0 LOADN                            R3 1
        1 LOADN                            R4 2
        2 FASTCALL3                        TABLE_UNPACK R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [table.unpack]
        7 CALL                             R1 3 2
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_20:
        0 LOADN                            R3 1
        1 LOADN                            R4 2
        2 FASTCALL3                        TABLE_UNPACK R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [table.unpack]
        7 CALL                             R1 3 2
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_21:
        0 LOADN                            R3 1
        1 LOADN                            R4 2
        2 FASTCALL3                        TABLE_UNPACK R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [table.unpack]
        7 CALL                             R1 3 2
        8 DUPTABLE                         R3 K6 [{"context", "path", "script"}]
        9 GETUPVAL                         R4 0
       10 SETTABLEKS                       R4 R3 K3 ["context"]
       12 GETTABLEKS                       R4 R1 K7 ["Name"]
       14 SETTABLEKS                       R4 R3 K4 ["path"]
       16 SETTABLEKS                       R1 R3 K5 ["script"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K8 ["_dispatcher"]
       21 MOVE                             R6 R3
       22 MOVE                             R7 R2
       23 NAMECALL                         R4 R4 K9 ["onTestCaseResult"]
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["keys"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 3
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 1
        7 GETTABLE                         R5 R6 R4
        8 GETUPVAL                         R6 2
        9 MOVE                             R8 R5
       10 NAMECALL                         R6 R6 K1 ["get"]
       12 CALL                             R6 2 1
       13 GETUPVAL                         R7 3
       14 MOVE                             R8 R6
       15 CALL                             R7 1 0
       16 GETUPVAL                         R8 4
       17 GETTABLE                         R7 R8 R4
       18 DUPTABLE                         R8 K3 [{"serial"}]
       19 GETUPVAL                         R9 5
       20 JUMPIF                           R9 ; [+6]
       21 GETUPVAL                         R10 6
       22 GETTABLEKS                       R9 R10 K4 ["toJSBoolean"]
       24 GETTABLEKS                       R10 R5 K5 ["isSerial"]
       26 CALL                             R9 1 1
       27 SETTABLEKS                       R9 R8 K2 ["serial"]
       29 GETTABLEKS                       R9 R5 K6 ["__PRIVATE_UNSTABLE_API_supportsEventEmitters__"]
       31 JUMPIFNOT                        R9 ; [+48]
       32 NEWTABLE                         R9 0 4
       34 LOADK                            R12 K7 ["test-file-start"]
       35 NEWCLOSURE                       R13 P0
       36 CAPTURE                          UPVAL U7
       37 NAMECALL                         R10 R5 K8 ["on"]
       39 CALL                             R10 3 1
       40 LOADK                            R13 K9 ["test-file-success"]
       41 NEWCLOSURE                       R14 P1
       42 CAPTURE                          UPVAL U8
       43 NAMECALL                         R11 R5 K8 ["on"]
       45 CALL                             R11 3 1
       46 LOADK                            R14 K10 ["test-file-failure"]
       47 NEWCLOSURE                       R15 P2
       48 CAPTURE                          UPVAL U9
       49 NAMECALL                         R12 R5 K8 ["on"]
       51 CALL                             R12 3 1
       52 LOADK                            R15 K11 ["test-case-result"]
       53 NEWCLOSURE                       R16 P3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          UPVAL U10
       56 NAMECALL                         R13 R5 K8 ["on"]
       58 CALL                             R13 3 -1
       59 SETLIST                          R9 R10 -1 [1]
       61 MOVE                             R12 R7
       62 GETUPVAL                         R13 11
       63 LOADNIL                          R14
       64 LOADNIL                          R15
       65 LOADNIL                          R16
       66 MOVE                             R17 R8
       67 NAMECALL                         R10 R5 K12 ["runTests"]
       69 CALL                             R10 7 1
       70 NAMECALL                         R10 R10 K13 ["expect"]
       72 CALL                             R10 1 0
       73 GETUPVAL                         R11 12
       74 GETTABLEKS                       R10 R11 K14 ["forEach"]
       76 MOVE                             R11 R9
       77 DUPCLOSURE                       R12 K15 [PROTO_22]
       78 CALL                             R10 2 0
       79 JUMP                             ; [+12]
       80 MOVE                             R11 R7
       81 GETUPVAL                         R12 11
       82 GETUPVAL                         R13 7
       83 GETUPVAL                         R14 8
       84 GETUPVAL                         R15 9
       85 MOVE                             R16 R8
       86 NAMECALL                         R9 R5 K12 ["runTests"]
       88 CALL                             R9 7 1
       89 NAMECALL                         R9 R9 K13 ["expect"]
       91 CALL                             R9 1 0
       92 NAMECALL                         R9 R5 K16 ["cleanup"]
       94 CALL                             R9 1 0
       95 FORGLOOP                         R0 2 ; [-90]
       97 RETURN                           R0 0

PROTO_24:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 NEWTABLE                         R4 0 0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K0 ["new"]
       10 CALL                             R5 0 1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K1 ["forEach"]
       14 GETUPVAL                         R7 3
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R4
       18 CALL                             R6 2 0
       19 GETUPVAL                         R6 4
       20 GETUPVAL                         R8 3
       21 LENGTH                           R7 R8
       22 CALL                             R6 1 1
       23 GETUPVAL                         R9 5
       24 MOVE                             R10 R4
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R12 R13 K3 ["_globalConfig"]
       28 GETTABLEKS                       R11 R12 K4 ["maxWorkers"]
       30 CALL                             R9 2 1
       31 DIVK                             R8 R9 K2 [1000]
       32 FASTCALL1                        MATH_CEIL R8 ; [+2]
       33 GETIMPORT                        R7 K7 [math.ceil]
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 6
       37 GETUPVAL                         R9 3
       38 MOVE                             R10 R4
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R11 R12 K3 ["_globalConfig"]
       42 CALL                             R8 3 1
       43 NEWCLOSURE                       R0 P2
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          REF R1
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U12
       51 CAPTURE                          VAL R6
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R5
       54 NEWCLOSURE                       R1 P3
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          UPVAL U14
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U12
       61 CAPTURE                          VAL R6
       62 NEWCLOSURE                       R2 P4
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          UPVAL U0
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R9 R10 K8 ["_dispatcher"]
       71 MOVE                             R11 R6
       72 DUPTABLE                         R12 K11 [{"estimatedTime", "showStatus"}]
       73 SETTABLEKS                       R7 R12 K9 ["estimatedTime"]
       75 GETUPVAL                         R15 10
       76 GETTABLEKS                       R14 R15 K12 ["toJSBoolean"]
       78 MOVE                             R15 R8
       79 CALL                             R14 1 1
       80 NOT                              R13 R14
       81 SETTABLEKS                       R13 R12 K10 ["showStatus"]
       83 NAMECALL                         R9 R9 K13 ["onRunStart"]
       85 CALL                             R9 3 1
       86 NAMECALL                         R9 R9 K14 ["expect"]
       88 CALL                             R9 1 0
       89 NEWTABLE                         R9 0 0
       91 GETUPVAL                         R11 15
       92 GETTABLEKS                       R10 R11 K0 ["new"]
       94 CALL                             R10 0 1
       95 GETUPVAL                         R12 7
       96 GETTABLEKS                       R11 R12 K15 ["all"]
       98 GETUPVAL                         R13 2
       99 GETTABLEKS                       R12 R13 K16 ["map"]
      101 GETUPVAL                         R14 2
      102 GETTABLEKS                       R13 R14 K17 ["from"]
      104 MOVE                             R14 R5
      105 CALL                             R13 1 1
      106 NEWCLOSURE                       R14 P5
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          VAL R9
      110 CAPTURE                          UPVAL U16
      111 CAPTURE                          UPVAL U0
      112 CAPTURE                          VAL R10
      113 CALL                             R12 2 -1
      114 CALL                             R11 -1 1
      115 NAMECALL                         R11 R11 K14 ["expect"]
      117 CALL                             R11 1 0
      118 GETUPVAL                         R11 0
      119 MOVE                             R13 R9
      120 GETUPVAL                         R14 3
      121 NAMECALL                         R11 R11 K18 ["_partitionTests"]
      123 CALL                             R11 3 1
      124 JUMPIFEQKNIL                     R11 ; [+28]
      126 GETIMPORT                        R12 K20 [pcall]
      128 NEWCLOSURE                       R13 P6
      129 CAPTURE                          UPVAL U17
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          UPVAL U18
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R8
      135 CAPTURE                          UPVAL U10
      136 CAPTURE                          VAL R3
      137 CAPTURE                          REF R0
      138 CAPTURE                          REF R1
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          UPVAL U2
      142 CALL                             R12 1 2
      143 JUMPIF                           R12 ; [+9]
      144 GETUPVAL                         R14 8
      145 NAMECALL                         R14 R14 K21 ["isInterrupted"]
      147 CALL                             R14 1 1
      148 JUMPIF                           R14 ; [+4]
      149 GETIMPORT                        R14 K23 [error]
      151 MOVE                             R15 R13
      152 CALL                             R14 1 0
      153 MOVE                             R12 R2
      154 CALL                             R12 0 1
      155 NAMECALL                         R12 R12 K14 ["expect"]
      157 CALL                             R12 1 0
      158 GETUPVAL                         R12 8
      159 NAMECALL                         R12 R12 K21 ["isInterrupted"]
      161 CALL                             R12 1 1
      162 SETTABLEKS                       R12 R6 K24 ["wasInterrupted"]
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R12 R13 K8 ["_dispatcher"]
      167 MOVE                             R14 R5
      168 MOVE                             R15 R6
      169 NAMECALL                         R12 R12 K25 ["onRunComplete"]
      171 CALL                             R12 3 1
      172 NAMECALL                         R12 R12 K14 ["expect"]
      174 CALL                             R12 1 0
      175 LOADB                            R13 0
      176 GETTABLEKS                       R14 R6 K26 ["numFailedTests"]
      178 JUMPIFNOTEQKN                    R14 K27 [0] ; [+7]
      180 GETTABLEKS                       R14 R6 K28 ["numRuntimeErrorTestSuites"]
      182 JUMPIFEQKN                       R14 K27 [0] ; [+2]
      184 LOADB                            R13 0 +1
      185 LOADB                            R13 1
      186 NOT                              R12 R13
      187 GETUPVAL                         R14 0
      188 GETTABLEKS                       R13 R14 K8 ["_dispatcher"]
      190 NAMECALL                         R13 R13 K29 ["hasErrors"]
      192 CALL                             R13 1 1
      193 MOVE                             R14 R12
      194 JUMPIF                           R14 ; [+6]
      195 GETTABLEKS                       R15 R6 K30 ["snapshot"]
      197 GETTABLEKS                       R14 R15 K31 ["failure"]
      199 JUMPIF                           R14 ; [+1]
      200 MOVE                             R14 R13
      201 SETTABLEKS                       R14 R6 K32 ["success"]
      203 CLOSEUPVALS                      R0
      204 RETURN                           R6 1

PROTO_25:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 NAMECALL                         R3 R3 K1 ["andThen"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

PROTO_26:
        0 GETTABLEKS                       R4 R1 K0 ["context"]
        2 GETTABLEKS                       R3 R4 K1 ["config"]
        4 GETTABLEKS                       R2 R3 K2 ["runner"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["toJSBoolean"]
        9 GETTABLE                         R4 R0 R2
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+3]
       12 NEWTABLE                         R3 0 0
       14 SETTABLE                         R3 R0 R2
       15 GETTABLE                         R4 R0 R2
       16 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R3 K6 [table.insert]
       21 CALL                             R3 2 0
       22 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["keys"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 LENGTH                           R3 R4
        6 LOADN                            R4 1
        7 JUMPIFNOTLT                      R4 R3 ; [+11]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K1 ["reduce"]
       12 MOVE                             R4 R2
       13 DUPCLOSURE                       R5 K2 [PROTO_26]
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R6 0 0
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1
       19 LENGTH                           R3 R2
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R3 ; [+21]
       23 GETTABLEN                        R3 R2 1
       24 JUMPIFEQKNIL                     R3 ; [+18]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K3 ["assign"]
       29 NEWTABLE                         R4 0 0
       31 NEWTABLE                         R5 1 0
       33 GETTABLEN                        R9 R2 1
       34 GETTABLEKS                       R8 R9 K4 ["context"]
       36 GETTABLEKS                       R7 R8 K5 ["config"]
       38 GETTABLEKS                       R6 R7 K6 ["runner"]
       40 SETTABLE                         R2 R5 R6
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1
       43 LOADNIL                          R3
       44 RETURN                           R3 1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["_getReporterProps"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R2 R3 K1 ["path"]
        7 JUMPIFEQKS                       R2 K2 ["default"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_29:
        0 LOADB                            R2 1
        1 JUMPIFEQKNIL                     R1 ; [+12]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["find"]
        9 MOVE                             R4 R1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R3 2 -1
       13 CALL                             R2 -1 1
       14 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["_shouldAddDefaultReporters"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 0
        7 LOADB                            R3 0
        8 NAMECALL                         R1 R1 K1 ["_setupDefaultReporters"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K1 ["andThen"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_32:
        0 GETTABLEKS                       R6 R0 K0 ["_globalConfig"]
        2 GETTABLEKS                       R5 R6 K1 ["verbose"]
        4 JUMPIFNOT                        R5 ; [+7]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["new"]
        8 GETTABLEKS                       R5 R0 K0 ["_globalConfig"]
       10 CALL                             R4 1 1
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K2 ["new"]
       15 GETTABLEKS                       R5 R0 K0 ["_globalConfig"]
       17 CALL                             R4 1 1
       18 NAMECALL                         R2 R0 K3 ["addReporter"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K2 ["new"]
       24 GETTABLEKS                       R5 R0 K0 ["_globalConfig"]
       26 CALL                             R4 1 -1
       27 NAMECALL                         R2 R0 K3 ["addReporter"]
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_33:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+9]
        7 DUPTABLE                         R2 K5 [{"options", "path"}]
        8 GETTABLEKS                       R3 R0 K6 ["_options"]
       10 SETTABLEKS                       R3 R2 K3 ["options"]
       12 SETTABLEKS                       R1 R2 K4 ["path"]
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K7 ["isArray"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETTABLEN                        R2 R1 1
       22 GETTABLEN                        R3 R1 2
       23 DUPTABLE                         R4 K5 [{"options", "path"}]
       24 SETTABLEKS                       R3 R4 K3 ["options"]
       26 SETTABLEKS                       R2 R4 K4 ["path"]
       28 RETURN                           R4 1
       29 GETIMPORT                        R2 K9 [error]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K10 ["new"]
       34 LOADK                            R4 K11 ["Reporter should be either a string or an array"]
       35 CALL                             R3 1 -1
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_dispatcher"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["onRunComplete"]
        7 CALL                             R0 3 1
        8 NAMECALL                         R0 R0 K2 ["expect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_globalConfig"]
        3 GETTABLEKS                       R0 R1 K1 ["bail"]
        5 JUMPIFEQKN                       R0 K2 [0] ; [+48]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["numFailedTests"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["_globalConfig"]
       13 GETTABLEKS                       R1 R2 K1 ["bail"]
       15 JUMPIFNOTLE                      R1 R0 ; [+38]
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K4 ["isWatchMode"]
       20 CALL                             R0 1 1
       21 JUMPIFNOT                        R0 ; [+12]
       22 GETUPVAL                         R0 2
       23 DUPTABLE                         R2 K6 [{"interrupted"}]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K5 ["interrupted"]
       27 NAMECALL                         R0 R0 K7 ["setState"]
       29 CALL                             R0 2 1
       30 NAMECALL                         R0 R0 K8 ["expect"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R0 K10 [pcall]
       36 NEWCLOSURE                       R1 P0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U1
       40 CALL                             R0 1 2
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K0 ["_globalConfig"]
       44 GETTABLEKS                       R2 R3 K11 ["testFailureExitCode"]
       46 GETUPVAL                         R3 4
       47 MOVE                             R4 R2
       48 CALL                             R3 1 0
       49 JUMPIF                           R0 ; [+4]
       50 GETIMPORT                        R3 K13 [error]
       52 MOVE                             R4 R1
       53 CALL                             R3 1 0
       54 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["resolve"]
        3 CALL                             R4 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R4 R4 K1 ["andThen"]
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["new"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETTABLEKS                       R0 R1 K0 ["numTotalTestSuites"]
        4 GETIMPORT                        R3 K3 [DateTime.now]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R2 R3 K4 ["UnixTimestampMillis"]
        9 SETTABLEKS                       R2 R1 K5 ["startTime"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K6 ["success"]
       14 RETURN                           R1 1

PROTO_39:
        0 ADD                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_40:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADN                            R2 0
        4 RETURN                           R2 1
        5 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K3 [table.unpack]
        9 CALL                             R3 1 -1
       10 FASTCALL                         MATH_MAX ; [+2]
       11 GETIMPORT                        R2 K6 [math.max]
       13 CALL                             R2 -1 1
       14 LENGTH                           R4 R0
       15 JUMPIFNOTLE                      R4 R1 ; [+3]
       17 MOVE                             R3 R2
       18 RETURN                           R3 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K7 ["reduce"]
       22 MOVE                             R6 R0
       23 DUPCLOSURE                       R7 K8 [PROTO_39]
       24 CALL                             R5 2 1
       25 DIV                              R4 R5 R1
       26 FASTCALL2                        MATH_MAX R4 R2 ; [+4]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R3 K6 [math.max]
       31 CALL                             R3 2 1
       32 RETURN                           R3 1

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
       16 GETTABLEKS                       R4 R1 K8 ["Error"]
       18 GETTABLEKS                       R5 R1 K9 ["Object"]
       20 GETTABLEKS                       R6 R1 K10 ["Set"]
       22 GETTABLEKS                       R7 R1 K11 ["WeakMap"]
       24 GETIMPORT                        R8 K4 [require]
       26 GETTABLEKS                       R9 R0 K12 ["Promise"]
       28 CALL                             R8 1 1
       29 NEWTABLE                         R9 1 0
       31 GETIMPORT                        R10 K4 [require]
       33 GETTABLEKS                       R11 R0 K13 ["ChalkLua"]
       35 CALL                             R10 1 1
       36 GETIMPORT                        R13 K4 [require]
       38 GETTABLEKS                       R14 R0 K14 ["RobloxShared"]
       40 CALL                             R13 1 1
       41 GETTABLEKS                       R12 R13 K15 ["nodeUtils"]
       43 GETTABLEKS                       R11 R12 K16 ["exit"]
       45 GETIMPORT                        R12 K4 [require]
       47 GETTABLEKS                       R13 R0 K17 ["JestReporters"]
       49 CALL                             R12 1 1
       50 GETTABLEKS                       R13 R12 K18 ["DefaultReporter"]
       52 GETTABLEKS                       R14 R12 K19 ["SummaryReporter"]
       54 GETTABLEKS                       R15 R12 K20 ["VerboseReporter"]
       56 GETIMPORT                        R16 K4 [require]
       58 GETTABLEKS                       R17 R0 K21 ["JestTestResult"]
       60 CALL                             R16 1 1
       61 GETTABLEKS                       R17 R16 K22 ["addResult"]
       63 GETTABLEKS                       R18 R16 K23 ["buildFailureTestResult"]
       65 GETTABLEKS                       R19 R16 K24 ["makeEmptyAggregatedTestResult"]
       67 GETIMPORT                        R20 K4 [require]
       69 GETTABLEKS                       R21 R0 K25 ["JestTypes"]
       71 CALL                             R20 1 1
       72 GETIMPORT                        R22 K4 [require]
       74 GETTABLEKS                       R23 R0 K26 ["JestMessageUtil"]
       76 CALL                             R22 1 1
       77 GETTABLEKS                       R21 R22 K27 ["formatExecError"]
       79 GETIMPORT                        R22 K4 [require]
       81 GETTABLEKS                       R23 R0 K28 ["JestRunner"]
       83 CALL                             R22 1 1
       84 GETIMPORT                        R23 K4 [require]
       86 GETTABLEKS                       R24 R0 K29 ["JestRuntime"]
       88 CALL                             R23 1 1
       89 GETIMPORT                        R24 K4 [require]
       91 GETIMPORT                        R27 K1 [script]
       93 GETTABLEKS                       R26 R27 K2 ["Parent"]
       95 GETTABLEKS                       R25 R26 K30 ["ReporterDispatcher"]
       97 CALL                             R24 1 1
       98 GETTABLEKS                       R25 R24 K31 ["default"]
      100 GETIMPORT                        R26 K4 [require]
      102 GETIMPORT                        R29 K1 [script]
      104 GETTABLEKS                       R28 R29 K2 ["Parent"]
      106 GETTABLEKS                       R27 R28 K32 ["TestWatcher"]
      108 CALL                             R26 1 1
      109 GETIMPORT                        R28 K4 [require]
      111 GETIMPORT                        R31 K1 [script]
      113 GETTABLEKS                       R30 R31 K2 ["Parent"]
      115 GETTABLEKS                       R29 R30 K33 ["testSchedulerHelper"]
      117 CALL                             R28 1 1
      118 GETTABLEKS                       R27 R28 K34 ["shouldRunInBand"]
      120 GETIMPORT                        R28 K4 [require]
      122 GETIMPORT                        R31 K1 [script]
      124 GETTABLEKS                       R30 R31 K2 ["Parent"]
      126 GETTABLEKS                       R29 R30 K35 ["types"]
      128 CALL                             R28 1 1
      129 LOADNIL                          R29
      130 LOADNIL                          R30
      131 LOADNIL                          R31
      132 LOADNIL                          R32
      133 NEWCLOSURE                       R33 P0
      134 CAPTURE                          VAL R8
      135 CAPTURE                          REF R29
      136 SETTABLEKS                       R33 R9 K36 ["createTestScheduler"]
      138 NEWTABLE                         R29 0 0
      140 SETTABLEKS                       R29 R29 K37 ["__index"]
      142 NEWCLOSURE                       R34 P1
      143 CAPTURE                          REF R29
      144 CAPTURE                          VAL R25
      145 SETTABLEKS                       R34 R29 K38 ["new"]
      147 DUPCLOSURE                       R34 K39 [PROTO_3]
      148 SETTABLEKS                       R34 R29 K40 ["addReporter"]
      150 DUPCLOSURE                       R34 K41 [PROTO_4]
      151 SETTABLEKS                       R34 R29 K42 ["removeReporter"]
      153 NEWCLOSURE                       R34 P4
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R2
      157 CAPTURE                          REF R31
      158 CAPTURE                          REF R32
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R5
      169 CAPTURE                          REF R30
      170 SETTABLEKS                       R34 R29 K43 ["scheduleTests"]
      172 DUPCLOSURE                       R34 K44 [PROTO_27]
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R3
      176 SETTABLEKS                       R34 R29 K45 ["_partitionTests"]
      178 DUPCLOSURE                       R34 K46 [PROTO_29]
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R2
      181 SETTABLEKS                       R34 R29 K47 ["_shouldAddDefaultReporters"]
      183 DUPCLOSURE                       R34 K48 [PROTO_31]
      184 CAPTURE                          VAL R8
      185 SETTABLEKS                       R34 R29 K49 ["_setupReporters"]
      187 DUPCLOSURE                       R34 K50 [PROTO_32]
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 SETTABLEKS                       R34 R29 K51 ["_setupDefaultReporters"]
      193 DUPCLOSURE                       R34 K52 [PROTO_33]
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R4
      196 SETTABLEKS                       R34 R29 K53 ["_getReporterProps"]
      198 DUPCLOSURE                       R34 K54 [PROTO_36]
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R11
      201 SETTABLEKS                       R34 R29 K55 ["_bailIfNeeded"]
      203 DUPCLOSURE                       R30 K56 [PROTO_37]
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R4
      206 DUPCLOSURE                       R31 K57 [PROTO_38]
      207 CAPTURE                          VAL R19
      208 DUPCLOSURE                       R32 K58 [PROTO_40]
      209 CAPTURE                          VAL R2
      210 CLOSEUPVALS                      R29
      211 RETURN                           R9 1
