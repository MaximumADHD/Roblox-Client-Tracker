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
       16 JUMPIFEQKNIL                     R1 ; [+17]
       18 GETTABLEKS                       R3 R1 K5 ["env"]
       20 GETTABLEKS                       R3 R3 K6 ["IS_INTERACTIVE"]
       22 JUMPIFEQKNIL                     R3 ; [+11]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K7 ["toJSBoolean"]
       27 GETTABLEKS                       R4 R1 K5 ["env"]
       29 GETTABLEKS                       R4 R4 K6 ["IS_INTERACTIVE"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K4 ["_isInteractive"]
       34 DUPCLOSURE                       R3 K8 [PROTO_1]
       35 CAPTURE                          UPVAL U4
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETTABLEKS                       R5 R1 K9 ["stdout"]
       39 JUMPIFNOT                        R5 ; [+5]
       40 GETTABLEKS                       R4 R1 K9 ["stdout"]
       42 GETTABLEKS                       R4 R4 K10 ["write"]
       44 JUMP                             ; [+6]
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R5 R5 K0 ["new"]
       48 CALL                             R5 0 1
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          VAL R5
       51 JUMPIFNOT                        R1 ; [+8]
       52 GETTABLEKS                       R6 R1 K11 ["stderr"]
       54 JUMPIFNOT                        R6 ; [+5]
       55 GETTABLEKS                       R5 R1 K11 ["stderr"]
       57 GETTABLEKS                       R5 R5 K10 ["write"]
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R6 4
       61 GETTABLEKS                       R6 R6 K0 ["new"]
       63 CALL                             R6 0 1
       64 NEWCLOSURE                       R5 P1
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R0 R2 K12 ["_globalConfig"]
       68 LOADK                            R6 K13 [""]
       69 SETTABLEKS                       R6 R2 K14 ["_clear"]
       71 NEWCLOSURE                       R6 P2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R6 R2 K15 ["_out"]
       76 NEWCLOSURE                       R6 P3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R6 R2 K16 ["_err"]
       81 GETUPVAL                         R6 5
       82 GETTABLEKS                       R6 R6 K0 ["new"]
       84 CALL                             R6 0 1
       85 SETTABLEKS                       R6 R2 K17 ["_status"]
       87 GETUPVAL                         R6 6
       88 GETTABLEKS                       R6 R6 K0 ["new"]
       90 CALL                             R6 0 1
       91 SETTABLEKS                       R6 R2 K18 ["_bufferedOutput"]
       93 GETTABLEKS                       R8 R2 K19 ["_process"]
       95 GETTABLEKS                       R8 R8 K9 ["stdout"]
       97 NAMECALL                         R6 R2 K20 ["__wrapStdio"]
       99 CALL                             R6 2 0
      100 GETTABLEKS                       R8 R2 K19 ["_process"]
      102 GETTABLEKS                       R8 R8 K11 ["stderr"]
      104 NAMECALL                         R6 R2 K20 ["__wrapStdio"]
      106 CALL                             R6 2 0
      107 GETTABLEKS                       R6 R2 K17 ["_status"]
      109 NEWCLOSURE                       R8 P4
      110 CAPTURE                          VAL R2
      111 NAMECALL                         R6 R6 K21 ["onChange"]
      113 CALL                             R6 2 0
      114 RETURN                           R2 1

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
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R2 R4 K0 ["message"]
        7 GETTABLEKS                       R3 R4 K1 ["stack"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["toJSBoolean"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["_globalConfig"]
       15 GETTABLEKS                       R5 R5 K4 ["noStackTrace"]
       17 CALL                             R4 1 1
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADK                            R3 K5 [""]
       20 JUMP                             ; [+13]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K6 ["dim"]
       24 GETUPVAL                         R5 4
       25 MOVE                             R6 R3
       26 GETUPVAL                         R7 5
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K3 ["_globalConfig"]
       30 GETUPVAL                         R9 6
       31 CALL                             R5 4 -1
       32 CALL                             R4 -1 1
       33 MOVE                             R3 R4
       34 GETUPVAL                         R4 7
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 MOVE                             R2 R4
       38 GETUPVAL                         R4 2
       39 LOADK                            R6 K7 ["%s\n"]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K8 ["reset"]
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R9 R9 K9 ["inverse"]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K10 ["bold"]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R11 R11 K11 ["blueBright"]
       52 LOADK                            R12 K12 [" RETRY %s "]
       53 FASTCALL1                        TOSTRING R1 ; [+3]
       54 MOVE                             R15 R1
       55 GETIMPORT                        R14 K14 [tostring]
       57 CALL                             R14 1 1
       58 NAMECALL                         R12 R12 K15 ["format"]
       60 CALL                             R12 2 -1
       61 CALL                             R11 -1 -1
       62 CALL                             R10 -1 -1
       63 CALL                             R9 -1 -1
       64 CALL                             R8 -1 -1
       65 NAMECALL                         R6 R6 K15 ["format"]
       67 CALL                             R6 -1 -1
       68 NAMECALL                         R4 R4 K16 ["log"]
       70 CALL                             R4 -1 0
       71 GETUPVAL                         R4 2
       72 LOADK                            R6 K17 ["%s\n%s\n"]
       73 FASTCALL1                        TOSTRING R2 ; [+3]
       74 MOVE                             R9 R2
       75 GETIMPORT                        R8 K14 [tostring]
       77 CALL                             R8 1 1
       78 FASTCALL1                        TOSTRING R3 ; [+3]
       79 MOVE                             R10 R3
       80 GETIMPORT                        R9 K14 [tostring]
       82 CALL                             R9 1 1
       83 NAMECALL                         R6 R6 K15 ["format"]
       85 CALL                             R6 3 -1
       86 NAMECALL                         R4 R4 K16 ["log"]
       88 CALL                             R4 -1 0
       89 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["retryReasons"]
        2 JUMPIFNOT                        R1 ; [+49]
        3 LENGTH                           R2 R1
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+46]
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K1 ["%s %s"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["reset"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K3 ["inverse"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K4 ["bold"]
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R9 R9 K5 ["yellow"]
       21 LOADK                            R10 K6 [" LOGGING RETRY ERRORS "]
       22 CALL                             R9 1 -1
       23 CALL                             R8 -1 -1
       24 CALL                             R7 -1 -1
       25 CALL                             R6 -1 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K4 ["bold"]
       29 GETTABLEKS                       R8 R0 K7 ["fullName"]
       31 CALL                             R7 1 -1
       32 NAMECALL                         R4 R4 K8 ["format"]
       34 CALL                             R4 -1 -1
       35 NAMECALL                         R2 R2 K9 ["log"]
       37 CALL                             R2 -1 0
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K10 ["forEach"]
       41 MOVE                             R3 R1
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["forEach"]
        3 GETTABLEKS                       R5 R3 K1 ["testResults"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U5
       15 CALL                             R4 2 0
       16 GETUPVAL                         R6 6
       17 MOVE                             R7 R3
       18 GETTABLEKS                       R8 R0 K2 ["_globalConfig"]
       20 MOVE                             R9 R2
       21 CALL                             R6 3 -1
       22 NAMECALL                         R4 R0 K3 ["log"]
       24 CALL                             R4 -1 0
       25 GETTABLEKS                       R4 R3 K4 ["console"]
       27 JUMPIFEQKNIL                     R4 ; [+15]
       29 LOADK                            R7 K5 ["  "]
       30 GETUPVAL                         R8 7
       31 LOADK                            R9 K6 ["Console\n\n"]
       32 GETUPVAL                         R10 8
       33 GETTABLEKS                       R11 R3 K4 ["console"]
       35 MOVE                             R12 R2
       36 GETTABLEKS                       R13 R0 K2 ["_globalConfig"]
       38 CALL                             R10 3 1
       39 CONCAT                           R6 R7 R10
       40 NAMECALL                         R4 R0 K3 ["log"]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_24:
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
       46 GETTABLEKS                       R13 R1 K15 ["JestMessageUtil"]
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R13 R12 K16 ["formatStackTrace"]
       51 GETTABLEKS                       R14 R12 K17 ["indentAllLines"]
       53 GETTABLEKS                       R15 R12 K18 ["separateMessageFromStack"]
       55 GETIMPORT                        R16 K4 [require]
       57 GETTABLEKS                       R17 R1 K19 ["JestUtil"]
       59 CALL                             R16 1 1
       60 GETTABLEKS                       R17 R16 K20 ["clearLine"]
       62 GETIMPORT                        R18 K4 [require]
       64 GETTABLEKS                       R19 R0 K21 ["BaseReporter"]
       66 CALL                             R18 1 1
       67 GETTABLEKS                       R18 R18 K22 ["default"]
       69 GETIMPORT                        R19 K4 [require]
       71 GETTABLEKS                       R20 R0 K23 ["Status"]
       73 CALL                             R19 1 1
       74 GETTABLEKS                       R20 R19 K22 ["default"]
       76 GETIMPORT                        R21 K4 [require]
       78 GETTABLEKS                       R22 R0 K24 ["getResultHeader"]
       80 CALL                             R21 1 1
       81 GETTABLEKS                       R21 R21 K22 ["default"]
       83 GETIMPORT                        R22 K4 [require]
       85 GETTABLEKS                       R23 R0 K25 ["getSnapshotStatus"]
       87 CALL                             R22 1 1
       88 GETTABLEKS                       R22 R22 K22 ["default"]
       90 GETIMPORT                        R23 K4 [require]
       92 GETTABLEKS                       R24 R0 K26 ["types"]
       94 CALL                             R23 1 1
       95 GETIMPORT                        R24 K4 [require]
       97 GETTABLEKS                       R25 R1 K27 ["RobloxShared"]
       99 CALL                             R24 1 1
      100 GETTABLEKS                       R25 R24 K28 ["Writeable"]
      102 GETTABLEKS                       R26 R8 K29 ["bold"]
      104 LOADK                            R27 K30 ["● "]
      105 CALL                             R26 1 1
      106 NEWTABLE                         R28 0 0
      108 DUPTABLE                         R29 K32 [{"__index"}]
      109 SETTABLEKS                       R18 R29 K31 ["__index"]
      111 FASTCALL2                        SETMETATABLE R28 R29 ; [+3]
      113 GETIMPORT                        R27 K34 [setmetatable]
      115 CALL                             R27 2 1
      116 SETTABLEKS                       R27 R27 K31 ["__index"]
      118 LOADK                            R28 K35 ["DefaultReporter"]
      119 SETTABLEKS                       R28 R27 K36 ["filename"]
      121 DUPCLOSURE                       R28 K37 [PROTO_5]
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R27
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R25
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R28 R27 K38 ["new"]
      131 DUPCLOSURE                       R28 K39 [PROTO_10]
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R28 R27 K40 ["__wrapStdio"]
      137 DUPCLOSURE                       R28 K41 [PROTO_12]
      138 CAPTURE                          VAL R5
      139 SETTABLEKS                       R28 R27 K42 ["forceFlushBufferedOutput"]
      141 DUPCLOSURE                       R28 K43 [PROTO_13]
      142 SETTABLEKS                       R28 R27 K44 ["__clearStatus"]
      144 DUPCLOSURE                       R28 K45 [PROTO_14]
      145 SETTABLEKS                       R28 R27 K46 ["__printStatus"]
      147 DUPCLOSURE                       R28 K47 [PROTO_15]
      148 SETTABLEKS                       R28 R27 K48 ["onRunStart"]
      150 DUPCLOSURE                       R28 K49 [PROTO_16]
      151 SETTABLEKS                       R28 R27 K50 ["onTestStart"]
      153 DUPCLOSURE                       R28 K51 [PROTO_17]
      154 SETTABLEKS                       R28 R27 K52 ["onTestCaseResult"]
      156 DUPCLOSURE                       R28 K53 [PROTO_18]
      157 CAPTURE                          VAL R17
      158 SETTABLEKS                       R28 R27 K54 ["onRunComplete"]
      160 DUPCLOSURE                       R28 K55 [PROTO_19]
      161 SETTABLEKS                       R28 R27 K56 ["onTestResult"]
      163 DUPCLOSURE                       R28 K57 [PROTO_20]
      164 SETTABLEKS                       R28 R27 K58 ["testFinished"]
      166 DUPCLOSURE                       R28 K59 [PROTO_23]
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R26
      175 CAPTURE                          VAL R9
      176 SETTABLEKS                       R28 R27 K60 ["printTestFileHeader"]
      178 DUPCLOSURE                       R28 K61 [PROTO_24]
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R3
      182 SETTABLEKS                       R28 R27 K62 ["printTestFileFailureMessage"]
      184 SETTABLEKS                       R27 R7 K22 ["default"]
      186 RETURN                           R7 1
