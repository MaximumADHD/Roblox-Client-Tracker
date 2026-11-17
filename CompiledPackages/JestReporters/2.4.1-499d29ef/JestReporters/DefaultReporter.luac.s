PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["write"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["_process"]
        4 GETTABLEKS                       R3 R3 K1 ["stdout"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["_process"]
        4 GETTABLEKS                       R3 R3 K1 ["stderr"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["__clearStatus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["__printStatus"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["isInteractive"]
       14 SETTABLEKS                       R3 R2 K4 ["_isInteractive"]
       16 JUMPIFEQKNIL                     R1 ; [+13]
       18 GETTABLEKS                       R3 R1 K5 ["env"]
       20 GETTABLEKS                       R3 R3 K6 ["IS_INTERACTIVE"]
       22 JUMPIFEQKNIL                     R3 ; [+7]
       24 GETTABLEKS                       R3 R1 K5 ["env"]
       26 GETTABLEKS                       R3 R3 K6 ["IS_INTERACTIVE"]
       28 SETTABLEKS                       R3 R2 K4 ["_isInteractive"]
       30 DUPCLOSURE                       R3 K7 [PROTO_1]
       31 CAPTURE                          UPVAL U3
       32 JUMPIFNOT                        R1 ; [+8]
       33 GETTABLEKS                       R5 R1 K8 ["stdout"]
       35 JUMPIFNOT                        R5 ; [+5]
       36 GETTABLEKS                       R4 R1 K8 ["stdout"]
       38 GETTABLEKS                       R4 R4 K9 ["write"]
       40 JUMP                             ; [+6]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K0 ["new"]
       44 CALL                             R5 0 1
       45 NEWCLOSURE                       R4 P1
       46 CAPTURE                          VAL R5
       47 JUMPIFNOT                        R1 ; [+8]
       48 GETTABLEKS                       R6 R1 K10 ["stderr"]
       50 JUMPIFNOT                        R6 ; [+5]
       51 GETTABLEKS                       R5 R1 K10 ["stderr"]
       53 GETTABLEKS                       R5 R5 K9 ["write"]
       55 JUMP                             ; [+6]
       56 GETUPVAL                         R6 3
       57 GETTABLEKS                       R6 R6 K0 ["new"]
       59 CALL                             R6 0 1
       60 NEWCLOSURE                       R5 P1
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R0 R2 K11 ["_globalConfig"]
       64 LOADK                            R6 K12 [""]
       65 SETTABLEKS                       R6 R2 K13 ["_clear"]
       67 NEWCLOSURE                       R6 P2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R6 R2 K14 ["_out"]
       72 NEWCLOSURE                       R6 P3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R6 R2 K15 ["_err"]
       77 GETUPVAL                         R6 4
       78 GETTABLEKS                       R6 R6 K0 ["new"]
       80 CALL                             R6 0 1
       81 SETTABLEKS                       R6 R2 K16 ["_status"]
       83 GETUPVAL                         R6 5
       84 GETTABLEKS                       R6 R6 K0 ["new"]
       86 CALL                             R6 0 1
       87 SETTABLEKS                       R6 R2 K17 ["_bufferedOutput"]
       89 GETTABLEKS                       R8 R2 K18 ["_process"]
       91 GETTABLEKS                       R8 R8 K8 ["stdout"]
       93 NAMECALL                         R6 R2 K19 ["__wrapStdio"]
       95 CALL                             R6 2 0
       96 GETTABLEKS                       R8 R2 K18 ["_process"]
       98 GETTABLEKS                       R8 R8 K10 ["stderr"]
      100 NAMECALL                         R6 R2 K19 ["__wrapStdio"]
      102 CALL                             R6 2 0
      103 GETTABLEKS                       R6 R2 K16 ["_status"]
      105 NEWCLOSURE                       R8 P4
      106 CAPTURE                          VAL R2
      107 NAMECALL                         R6 R6 K20 ["onChange"]
      109 CALL                             R6 2 0
      110 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 [""]
        5 CALL                             R0 2 1
        6 NEWTABLE                         R1 0 0
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K2 ["__clearStatus"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K3 ["toJSBoolean"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 4
       20 GETUPVAL                         R2 5
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 2
       24 NAMECALL                         R1 R1 K4 ["__printStatus"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K5 ["_bufferedOutput"]
       30 GETUPVAL                         R3 6
       31 NAMECALL                         R1 R1 K6 ["delete"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["_process"]
        4 GETTABLEKS                       R1 R1 K1 ["stderr"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+4]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["toJSBoolean"]
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 1
       16 JUMPIF                           R0 ; [+7]
       17 GETUPVAL                         R0 5
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U4
       21 LOADN                            R2 100
       22 CALL                             R0 2 1
       23 SETUPVAL                         R0 4
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 0
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["write"]
        2 NEWTABLE                         R3 0 0
        4 LOADNIL                          R4
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          REF R3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R5
       13 GETTABLEKS                       R6 R0 K1 ["_bufferedOutput"]
       15 MOVE                             R8 R5
       16 NAMECALL                         R6 R6 K2 ["add"]
       18 CALL                             R6 2 0
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          REF R4
       25 CAPTURE                          UPVAL U2
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          REF R3
       28 CAPTURE                          VAL R6
       29 SETTABLEKS                       R7 R1 K0 ["write"]
       31 CLOSEUPVALS                      R3
       32 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["forEach"]
        3 GETTABLEKS                       R2 R0 K1 ["_bufferedOutput"]
        5 DUPCLOSURE                       R3 K2 [PROTO_11]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_isInteractive"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K1 ["_globalConfig"]
        5 GETTABLEKS                       R1 R1 K2 ["useStderr"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R3 R0 K3 ["_clear"]
       10 NAMECALL                         R1 R0 K4 ["_err"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K3 ["_clear"]
       16 NAMECALL                         R1 R0 K5 ["_out"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K2 ["content"]
        7 GETTABLEKS                       R3 R1 K3 ["clear"]
        9 SETTABLEKS                       R3 R0 K4 ["_clear"]
       11 GETTABLEKS                       R4 R0 K5 ["_isInteractive"]
       13 JUMPIFNOT                        R4 ; [+14]
       14 GETTABLEKS                       R4 R0 K6 ["_globalConfig"]
       16 GETTABLEKS                       R4 R4 K7 ["useStderr"]
       18 JUMPIFNOT                        R4 ; [+5]
       19 MOVE                             R6 R2
       20 NAMECALL                         R4 R0 K8 ["_err"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0
       24 MOVE                             R6 R2
       25 NAMECALL                         R4 R0 K9 ["_out"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_status"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["runStarted"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_status"]
        2 GETTABLEKS                       R4 R1 K1 ["path"]
        4 GETTABLEKS                       R5 R1 K2 ["context"]
        6 GETTABLEKS                       R5 R5 K3 ["config"]
        8 NAMECALL                         R2 R2 K4 ["testStarted"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_status"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["addTestCaseResult"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["forceFlushBufferedOutput"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_status"]
        5 NAMECALL                         R1 R1 K2 ["runFinished"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K3 ["_process"]
       10 GETTABLEKS                       R1 R1 K4 ["stdout"]
       12 GETTABLEKS                       R2 R0 K5 ["_out"]
       14 SETTABLEKS                       R2 R1 K6 ["write"]
       16 GETTABLEKS                       R1 R0 K3 ["_process"]
       18 GETTABLEKS                       R1 R1 K7 ["stderr"]
       20 GETTABLEKS                       R2 R0 K8 ["_err"]
       22 SETTABLEKS                       R2 R1 K6 ["write"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R2 R0 K3 ["_process"]
       27 GETTABLEKS                       R2 R2 K7 ["stderr"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R6 R1 K0 ["context"]
        2 GETTABLEKS                       R6 R6 K1 ["config"]
        4 MOVE                             R7 R2
        5 MOVE                             R8 R3
        6 NAMECALL                         R4 R0 K2 ["testFinished"]
        8 CALL                             R4 4 0
        9 GETTABLEKS                       R4 R2 K3 ["skipped"]
       11 JUMPIF                           R4 ; [+20]
       12 GETTABLEKS                       R6 R2 K4 ["testFilePath"]
       14 GETTABLEKS                       R7 R1 K0 ["context"]
       16 GETTABLEKS                       R7 R7 K1 ["config"]
       18 MOVE                             R8 R2
       19 NAMECALL                         R4 R0 K5 ["printTestFileHeader"]
       21 CALL                             R4 4 0
       22 GETTABLEKS                       R6 R2 K4 ["testFilePath"]
       24 GETTABLEKS                       R7 R1 K0 ["context"]
       26 GETTABLEKS                       R7 R7 K1 ["config"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R4 R0 K6 ["printTestFileFailureMessage"]
       31 CALL                             R4 4 0
       32 NAMECALL                         R4 R0 K7 ["forceFlushBufferedOutput"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["_status"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R4 K1 ["testFinished"]
        7 CALL                             R4 4 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R3
        2 GETTABLEKS                       R8 R0 K0 ["_globalConfig"]
        4 MOVE                             R9 R2
        5 CALL                             R6 3 -1
        6 NAMECALL                         R4 R0 K1 ["log"]
        8 CALL                             R4 -1 0
        9 GETTABLEKS                       R4 R3 K2 ["console"]
       11 JUMPIFEQKNIL                     R4 ; [+15]
       13 LOADK                            R7 K3 ["  "]
       14 GETUPVAL                         R8 1
       15 LOADK                            R9 K4 ["Console\n\n"]
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R11 R3 K2 ["console"]
       19 MOVE                             R12 R2
       20 GETTABLEKS                       R13 R0 K0 ["_globalConfig"]
       22 CALL                             R10 3 1
       23 CONCAT                           R6 R7 R10
       24 NAMECALL                         R4 R0 K1 ["log"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R5 R3 K1 ["failureMessage"]
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETTABLEKS                       R6 R3 K1 ["failureMessage"]
        9 NAMECALL                         R4 R0 K2 ["log"]
       11 CALL                             R4 2 0
       12 GETTABLEKS                       R5 R0 K3 ["_globalConfig"]
       14 GETTABLEKS                       R5 R5 K4 ["updateSnapshot"]
       16 JUMPIFEQKS                       R5 K5 ["all"] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R6 R3 K6 ["snapshot"]
       23 MOVE                             R7 R4
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["forEach"]
       28 MOVE                             R7 R5
       29 GETTABLEKS                       R8 R0 K2 ["log"]
       31 MOVE                             R9 R0
       32 CALL                             R6 3 0
       33 RETURN                           R0 0

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
       16 GETTABLEKS                       R5 R2 K8 ["Set"]
       18 GETTABLEKS                       R6 R2 K9 ["setTimeout"]
       20 NEWTABLE                         R7 1 0
       22 GETIMPORT                        R8 K4 [require]
       24 GETTABLEKS                       R9 R1 K10 ["ChalkLua"]
       26 CALL                             R8 1 1
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R1 K11 ["JestConsole"]
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R9 R9 K12 ["getConsoleOutput"]
       34 GETIMPORT                        R10 K4 [require]
       36 GETTABLEKS                       R11 R1 K13 ["JestTestResult"]
       38 CALL                             R10 1 1
       39 GETIMPORT                        R11 K4 [require]
       41 GETTABLEKS                       R12 R1 K14 ["JestTypes"]
       43 CALL                             R11 1 1
       44 GETIMPORT                        R12 K4 [require]
       46 GETTABLEKS                       R13 R1 K15 ["JestUtil"]
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R13 R12 K16 ["clearLine"]
       51 GETIMPORT                        R14 K4 [require]
       53 GETTABLEKS                       R15 R0 K17 ["BaseReporter"]
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R14 R14 K18 ["default"]
       58 GETIMPORT                        R15 K4 [require]
       60 GETTABLEKS                       R16 R0 K19 ["Status"]
       62 CALL                             R15 1 1
       63 GETTABLEKS                       R16 R15 K18 ["default"]
       65 GETIMPORT                        R17 K4 [require]
       67 GETTABLEKS                       R18 R0 K20 ["getResultHeader"]
       69 CALL                             R17 1 1
       70 GETTABLEKS                       R17 R17 K18 ["default"]
       72 GETIMPORT                        R18 K4 [require]
       74 GETTABLEKS                       R19 R0 K21 ["getSnapshotStatus"]
       76 CALL                             R18 1 1
       77 GETTABLEKS                       R18 R18 K18 ["default"]
       79 GETIMPORT                        R19 K4 [require]
       81 GETTABLEKS                       R20 R0 K22 ["types"]
       83 CALL                             R19 1 1
       84 GETIMPORT                        R20 K4 [require]
       86 GETTABLEKS                       R21 R1 K23 ["RobloxShared"]
       88 CALL                             R20 1 1
       89 GETTABLEKS                       R21 R20 K24 ["Writeable"]
       91 GETTABLEKS                       R22 R8 K25 ["bold"]
       93 LOADK                            R23 K26 ["● "]
       94 CALL                             R22 1 1
       95 NEWTABLE                         R24 0 0
       97 DUPTABLE                         R25 K28 [{"__index"}]
       98 SETTABLEKS                       R14 R25 K27 ["__index"]
      100 FASTCALL2                        SETMETATABLE R24 R25 ; [+3]
      102 GETIMPORT                        R23 K30 [setmetatable]
      104 CALL                             R23 2 1
      105 SETTABLEKS                       R23 R23 K27 ["__index"]
      107 LOADK                            R24 K31 ["DefaultReporter"]
      108 SETTABLEKS                       R24 R23 K32 ["filename"]
      110 DUPCLOSURE                       R24 K33 [PROTO_5]
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R23
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R24 R23 K34 ["new"]
      119 DUPCLOSURE                       R24 K35 [PROTO_10]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R24 R23 K36 ["__wrapStdio"]
      125 DUPCLOSURE                       R24 K37 [PROTO_12]
      126 CAPTURE                          VAL R5
      127 SETTABLEKS                       R24 R23 K38 ["forceFlushBufferedOutput"]
      129 DUPCLOSURE                       R24 K39 [PROTO_13]
      130 SETTABLEKS                       R24 R23 K40 ["__clearStatus"]
      132 DUPCLOSURE                       R24 K41 [PROTO_14]
      133 SETTABLEKS                       R24 R23 K42 ["__printStatus"]
      135 DUPCLOSURE                       R24 K43 [PROTO_15]
      136 SETTABLEKS                       R24 R23 K44 ["onRunStart"]
      138 DUPCLOSURE                       R24 K45 [PROTO_16]
      139 SETTABLEKS                       R24 R23 K46 ["onTestStart"]
      141 DUPCLOSURE                       R24 K47 [PROTO_17]
      142 SETTABLEKS                       R24 R23 K48 ["onTestCaseResult"]
      144 DUPCLOSURE                       R24 K49 [PROTO_18]
      145 CAPTURE                          VAL R13
      146 SETTABLEKS                       R24 R23 K50 ["onRunComplete"]
      148 DUPCLOSURE                       R24 K51 [PROTO_19]
      149 SETTABLEKS                       R24 R23 K52 ["onTestResult"]
      151 DUPCLOSURE                       R24 K53 [PROTO_20]
      152 SETTABLEKS                       R24 R23 K54 ["testFinished"]
      154 DUPCLOSURE                       R24 K55 [PROTO_21]
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R22
      157 CAPTURE                          VAL R9
      158 SETTABLEKS                       R24 R23 K56 ["printTestFileHeader"]
      160 DUPCLOSURE                       R24 K57 [PROTO_22]
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R3
      164 SETTABLEKS                       R24 R23 K58 ["printTestFileFailureMessage"]
      166 SETTABLEKS                       R23 R7 K18 ["default"]
      168 RETURN                           R7 1
