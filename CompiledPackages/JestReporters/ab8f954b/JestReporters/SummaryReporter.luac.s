PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETTABLEKS                       R3 R1 K3 ["env"]
       14 GETTABLEKS                       R3 R3 K4 ["npm_lifecycle_script"]
       16 SETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R1 K3 ["env"]
       19 GETTABLEKS                       R3 R3 K5 ["npm_lifecycle_event"]
       21 SETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R1 K3 ["env"]
       24 GETTABLEKS                       R3 R3 K6 ["npm_config_user_agent"]
       26 SETUPVAL                         R3 4
       27 SETTABLEKS                       R0 R2 K7 ["_globalConfig"]
       29 LOADN                            R3 0
       30 SETTABLEKS                       R3 R2 K8 ["_estimatedTime"]
       32 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_process"]
        2 GETTABLEKS                       R2 R2 K1 ["stderr"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["write"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["onRunStart"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R2 K1 ["estimatedTime"]
        9 SETTABLEKS                       R3 R0 K2 ["_estimatedTime"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["numTotalTestSuites"]
        2 GETTABLEKS                       R4 R2 K1 ["testResults"]
        4 GETTABLEKS                       R5 R2 K2 ["wasInterrupted"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["toJSBoolean"]
        9 MOVE                             R7 R3
       10 CALL                             R6 1 1
       11 JUMPIFNOT                        R6 ; [+100]
       12 LENGTH                           R7 R4
       13 GETTABLE                         R6 R4 R7
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       17 GETTABLEKS                       R8 R0 K4 ["_globalConfig"]
       19 GETTABLEKS                       R8 R8 K5 ["verbose"]
       21 CALL                             R7 1 1
       22 JUMPIFNOT                        R7 ; [+24]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 JUMPIFNOT                        R7 ; [+18]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       32 GETTABLEKS                       R8 R6 K6 ["numFailingTests"]
       34 CALL                             R7 1 1
       35 JUMPIF                           R7 ; [+11]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       39 GETTABLEKS                       R8 R6 K7 ["testExecError"]
       41 CALL                             R7 1 1
       42 JUMPIF                           R7 ; [+4]
       43 LOADK                            R9 K8 [""]
       44 NAMECALL                         R7 R0 K9 ["log"]
       46 CALL                             R7 2 0
       47 MOVE                             R9 R2
       48 GETTABLEKS                       R10 R0 K4 ["_globalConfig"]
       50 NAMECALL                         R7 R0 K10 ["_printSummary"]
       52 CALL                             R7 3 0
       53 GETTABLEKS                       R9 R2 K11 ["snapshot"]
       55 GETTABLEKS                       R10 R0 K4 ["_globalConfig"]
       57 NAMECALL                         R7 R0 K12 ["_printSnapshotSummary"]
       59 CALL                             R7 3 0
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       63 MOVE                             R8 R3
       64 CALL                             R7 1 1
       65 JUMPIFNOT                        R7 ; [+46]
       66 GETUPVAL                         R7 1
       67 MOVE                             R8 R2
       68 DUPTABLE                         R9 K14 [{"estimatedTime"}]
       69 GETTABLEKS                       R10 R0 K15 ["_estimatedTime"]
       71 SETTABLEKS                       R10 R9 K13 ["estimatedTime"]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K3 ["toJSBoolean"]
       77 GETTABLEKS                       R9 R0 K4 ["_globalConfig"]
       79 GETTABLEKS                       R9 R9 K16 ["silent"]
       81 CALL                             R8 1 1
       82 JUMPIF                           R8 ; [+25]
       83 MOVE                             R8 R7
       84 LOADK                            R9 K17 ["\n"]
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K3 ["toJSBoolean"]
       88 MOVE                             R12 R5
       89 CALL                             R11 1 1
       90 JUMPIFNOT                        R11 ; [+10]
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K18 ["bold"]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R11 R11 K19 ["red"]
       97 LOADK                            R12 K20 ["Test run was interrupted."]
       98 CALL                             R11 1 -1
       99 CALL                             R10 -1 1
      100 JUMP                             ; [+6]
      101 MOVE                             R12 R1
      102 GETTABLEKS                       R13 R0 K4 ["_globalConfig"]
      104 NAMECALL                         R10 R0 K21 ["_getTestSummary"]
      106 CALL                             R10 3 1
      107 CONCAT                           R7 R8 R10
      108 MOVE                             R10 R7
      109 NAMECALL                         R8 R0 K9 ["log"]
      111 CALL                             R8 2 0
      112 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["log"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R1 K1 ["added"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+28]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       10 GETTABLEKS                       R4 R1 K2 ["filesRemoved"]
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+21]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       17 GETTABLEKS                       R4 R1 K3 ["unchecked"]
       19 CALL                             R3 1 1
       20 JUMPIF                           R3 ; [+14]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       24 GETTABLEKS                       R4 R1 K4 ["unmatched"]
       26 CALL                             R3 1 1
       27 JUMPIF                           R3 ; [+7]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       31 GETTABLEKS                       R4 R1 K5 ["updated"]
       33 CALL                             R3 1 1
       34 JUMPIFNOT                        R3 ; [+107]
       35 LOADNIL                          R3
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
       39 GETUPVAL                         R6 1
       40 CALL                             R5 1 1
       41 JUMPIFNOT                        R5 ; [+2]
       42 GETUPVAL                         R4 1
       43 JUMPIF                           R4 ; [+1]
       44 LOADK                            R4 K6 [""]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K0 ["toJSBoolean"]
       48 GETUPVAL                         R7 2
       49 MOVE                             R9 R4
       50 NAMECALL                         R7 R7 K7 ["has"]
       52 CALL                             R7 2 -1
       53 CALL                             R6 -1 1
       54 JUMPIFNOT                        R6 ; [+2]
       55 LOADK                            R5 K6 [""]
       56 JUMP                             ; [+1]
       57 LOADK                            R5 K8 ["run "]
       58 LOADB                            R6 0
       59 GETUPVAL                         R8 3
       60 FASTCALL1                        TYPEOF R8 ; [+2]
       61 GETIMPORT                        R7 K10 [typeof]
       63 CALL                             R7 1 1
       64 JUMPIFNOTEQKS                    R7 K11 ["string"] ; [+11]
       66 GETIMPORT                        R7 K13 [string.match]
       68 GETUPVAL                         R9 3
       69 ORK                              R8 R9 K6 [""]
       70 LOADK                            R9 K14 ["yarn"]
       71 CALL                             R7 2 1
       72 JUMPIFNOTEQKNIL                  R7 ; [+2]
       74 LOADB                            R6 0 +1
       75 LOADB                            R6 1
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K0 ["toJSBoolean"]
       79 MOVE                             R9 R6
       80 CALL                             R8 1 1
       81 JUMPIFNOT                        R8 ; [+2]
       82 LOADK                            R7 K14 ["yarn"]
       83 JUMP                             ; [+1]
       84 LOADK                            R7 K15 ["npm"]
       85 LOADB                            R8 0
       86 GETUPVAL                         R10 4
       87 FASTCALL1                        TYPEOF R10 ; [+2]
       88 GETIMPORT                        R9 K10 [typeof]
       90 CALL                             R9 1 1
       91 JUMPIFNOTEQKS                    R9 K11 ["string"] ; [+11]
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R8 R8 K0 ["toJSBoolean"]
       96 GETIMPORT                        R9 K13 [string.match]
       98 GETUPVAL                         R11 4
       99 ORK                              R10 R11 K6 [""]
      100 LOADK                            R11 K16 ["jest"]
      101 CALL                             R9 2 -1
      102 CALL                             R8 -1 1
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K0 ["toJSBoolean"]
      106 MOVE                             R10 R4
      107 CALL                             R9 1 1
      108 JUMPIFNOT                        R9 ; [+16]
      109 JUMPIFNOT                        R8 ; [+15]
      110 LOADK                            R9 K17 ["run `%s -u`"]
      111 MOVE                             R12 R7
      112 LOADK                            R13 K18 [" "]
      113 MOVE                             R14 R5
      114 MOVE                             R15 R4
      115 JUMPIFNOT                        R6 ; [+2]
      116 LOADK                            R16 K6 [""]
      117 JUMP                             ; [+1]
      118 LOADK                            R16 K19 [" --"]
      119 CONCAT                           R11 R12 R16
      120 NAMECALL                         R9 R9 K20 ["format"]
      122 CALL                             R9 2 1
      123 MOVE                             R3 R9
      124 JUMP                             ; [+1]
      125 LOADK                            R3 K21 ["re-run jest with `-u`"]
      126 GETUPVAL                         R9 5
      127 MOVE                             R10 R1
      128 MOVE                             R11 R2
      129 MOVE                             R12 R3
      130 CALL                             R9 3 1
      131 GETUPVAL                         R10 6
      132 GETTABLEKS                       R10 R10 K22 ["forEach"]
      134 MOVE                             R11 R9
      135 NEWCLOSURE                       R12 P0
      136 CAPTURE                          VAL R0
      137 CALL                             R10 2 0
      138 LOADK                            R12 K6 [""]
      139 NAMECALL                         R10 R0 K23 ["log"]
      141 CALL                             R10 2 0
      142 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["failureMessage"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["toJSBoolean"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+13]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R9 2
       10 MOVE                             R10 R0
       11 GETUPVAL                         R11 3
       12 CALL                             R9 2 1
       13 MOVE                             R5 R9
       14 LOADK                            R6 K2 ["\n"]
       15 MOVE                             R7 R1
       16 LOADK                            R8 K2 ["\n"]
       17 CONCAT                           R4 R5 R8
       18 NAMECALL                         R2 R2 K3 ["_write"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R1 K1 ["numFailedTests"]
        2 ORK                              R3 R4 K0 [0]
        3 GETTABLEKS                       R5 R1 K2 ["numRuntimeErrorTestSuites"]
        5 ORK                              R4 R5 K0 [0]
        6 ADD                              R5 R3 R4
        7 LOADN                            R6 0
        8 JUMPIFNOTLT                      R6 R5 ; [+29]
       10 GETTABLEKS                       R5 R1 K3 ["numTotalTestSuites"]
       12 LOADN                            R6 20
       13 JUMPIFNOTLT                      R6 R5 ; [+24]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K4 ["bold"]
       18 LOADK                            R8 K5 ["Summary of all failing tests"]
       19 CALL                             R7 1 -1
       20 NAMECALL                         R5 R0 K6 ["log"]
       22 CALL                             R5 -1 0
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K7 ["forEach"]
       26 GETTABLEKS                       R6 R1 K8 ["testResults"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R2
       33 CALL                             R5 2 0
       34 LOADK                            R7 K9 [""]
       35 NAMECALL                         R5 R0 K6 ["log"]
       37 CALL                             R5 2 0
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dim"]
        3 LOADK                            R1 K1 [" matching"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 LOADK                            R1 K0 ["\"%s\""]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 DUPCLOSURE                       R3 K0 [PROTO_8]
        1 CAPTURE                          UPVAL U0
        2 LOADK                            R4 K1 [""]
        3 GETTABLEKS                       R5 R2 K2 ["runTestsByPath"]
        5 JUMPIFNOT                        R5 ; [+7]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["dim"]
        9 LOADK                            R6 K4 [" within paths"]
       10 CALL                             R5 1 1
       11 MOVE                             R4 R5
       12 JUMP                             ; [+12]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K5 ["toJSBoolean"]
       16 GETTABLEKS                       R6 R2 K6 ["testPathPattern"]
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R5 ; [+5]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K3 ["dim"]
       23 LOADK                            R5 K7 [" matching"]
       24 CALL                             R4 1 1
       25 LOADK                            R5 K1 [""]
       26 GETTABLEKS                       R6 R2 K2 ["runTestsByPath"]
       28 JUMPIFNOT                        R6 ; [+15]
       29 LOADK                            R6 K8 [" "]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K9 ["join"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K10 ["map"]
       36 GETTABLEKS                       R9 R2 K11 ["nonFlagArgs"]
       38 DUPCLOSURE                       R10 K12 [PROTO_9]
       39 CALL                             R8 2 1
       40 LOADK                            R9 K13 [", "]
       41 CALL                             R7 2 1
       42 CONCAT                           R5 R6 R7
       43 JUMP                             ; [+17]
       44 GETTABLEKS                       R6 R2 K14 ["testNamePattern"]
       46 JUMPIFEQKNIL                     R6 ; [+14]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K3 ["dim"]
       51 LOADK                            R9 K15 [" with tests matching "]
       52 CALL                             R8 1 1
       53 MOVE                             R6 R8
       54 LOADK                            R7 K16 ["\"%s\""]
       55 GETTABLEKS                       R9 R2 K14 ["testNamePattern"]
       57 NAMECALL                         R7 R7 K17 ["format"]
       59 CALL                             R7 2 1
       60 CONCAT                           R5 R6 R7
       61 GETTABLEKS                       R7 R1 K18 ["size"]
       63 LOADN                            R8 1
       64 JUMPIFNOTLT                      R8 R7 ; [+21]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K3 ["dim"]
       69 LOADK                            R11 K19 [" in "]
       70 CALL                             R10 1 1
       71 MOVE                             R7 R10
       72 GETTABLEKS                       R11 R1 K18 ["size"]
       74 FASTCALL1                        TOSTRING R11 ; [+2]
       75 GETIMPORT                        R10 K21 [tostring]
       77 CALL                             R10 1 1
       78 MOVE                             R8 R10
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R9 R9 K3 ["dim"]
       82 LOADK                            R10 K22 [" projects"]
       83 CALL                             R9 1 1
       84 CONCAT                           R6 R7 R9
       85 JUMP                             ; [+1]
       86 LOADK                            R6 K1 [""]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K3 ["dim"]
       90 LOADK                            R14 K23 ["Ran all test suites"]
       91 CALL                             R13 1 1
       92 MOVE                             R8 R13
       93 MOVE                             R9 R4
       94 MOVE                             R10 R5
       95 MOVE                             R11 R6
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K3 ["dim"]
       99 LOADK                            R13 K24 ["."]
      100 CALL                             R12 1 1
      101 CONCAT                           R7 R8 R12
      102 RETURN                           R7 1

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
       18 NEWTABLE                         R6 1 0
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K9 ["ChalkLua"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R1 K10 ["JestTestResult"]
       29 CALL                             R8 1 1
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R1 K11 ["JestTypes"]
       34 CALL                             R9 1 1
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K12 ["BaseReporter"]
       39 CALL                             R10 1 1
       40 GETTABLEKS                       R10 R10 K13 ["default"]
       42 GETIMPORT                        R11 K4 [require]
       44 GETTABLEKS                       R12 R0 K14 ["getResultHeader"]
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R11 R11 K13 ["default"]
       49 GETIMPORT                        R12 K4 [require]
       51 GETTABLEKS                       R13 R0 K15 ["getSnapshotSummary"]
       53 CALL                             R12 1 1
       54 GETTABLEKS                       R12 R12 K13 ["default"]
       56 GETIMPORT                        R13 K4 [require]
       58 GETTABLEKS                       R14 R0 K16 ["types"]
       60 CALL                             R13 1 1
       61 GETIMPORT                        R14 K4 [require]
       63 GETTABLEKS                       R15 R0 K17 ["utils"]
       65 CALL                             R14 1 1
       66 GETTABLEKS                       R14 R14 K18 ["getSummary"]
       68 GETTABLEKS                       R15 R5 K19 ["new"]
       70 NEWTABLE                         R16 0 24
       72 LOADK                            R17 K20 ["prepublish"]
       73 LOADK                            R18 K21 ["publish"]
       74 LOADK                            R19 K22 ["postpublish"]
       75 LOADK                            R20 K23 ["preinstall"]
       76 LOADK                            R21 K24 ["install"]
       77 LOADK                            R22 K25 ["postinstall"]
       78 LOADK                            R23 K26 ["preuninstall"]
       79 LOADK                            R24 K27 ["uninstall"]
       80 LOADK                            R25 K28 ["postuninstall"]
       81 LOADK                            R26 K29 ["preversion"]
       82 LOADK                            R27 K30 ["version"]
       83 LOADK                            R28 K31 ["postversion"]
       84 LOADK                            R29 K32 ["pretest"]
       85 LOADK                            R30 K33 ["test"]
       86 LOADK                            R31 K34 ["posttest"]
       87 LOADK                            R32 K35 ["prestop"]
       88 SETLIST                          R16 R17 16 [1]
       90 LOADK                            R17 K36 ["stop"]
       91 LOADK                            R18 K37 ["poststop"]
       92 LOADK                            R19 K38 ["prestart"]
       93 LOADK                            R20 K39 ["start"]
       94 LOADK                            R21 K40 ["poststart"]
       95 LOADK                            R22 K41 ["prerestart"]
       96 LOADK                            R23 K42 ["restart"]
       97 LOADK                            R24 K43 ["postrestart"]
       98 SETLIST                          R16 R17 8 [17]
      100 CALL                             R15 1 1
      101 LOADNIL                          R16
      102 LOADNIL                          R17
      103 LOADNIL                          R18
      104 NEWTABLE                         R20 0 0
      106 DUPTABLE                         R21 K45 [{"__index"}]
      107 SETTABLEKS                       R10 R21 K44 ["__index"]
      109 FASTCALL2                        SETMETATABLE R20 R21 ; [+3]
      111 GETIMPORT                        R19 K47 [setmetatable]
      113 CALL                             R19 2 1
      114 SETTABLEKS                       R19 R19 K44 ["__index"]
      116 LOADK                            R20 K48 ["SummaryReporter"]
      117 SETTABLEKS                       R20 R19 K49 ["filename"]
      119 NEWCLOSURE                       R20 P0
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R19
      122 CAPTURE                          REF R18
      123 CAPTURE                          REF R17
      124 CAPTURE                          REF R16
      125 SETTABLEKS                       R20 R19 K19 ["new"]
      127 DUPCLOSURE                       R20 K50 [PROTO_1]
      128 SETTABLEKS                       R20 R19 K51 ["_write"]
      130 DUPCLOSURE                       R20 K52 [PROTO_2]
      131 CAPTURE                          VAL R10
      132 SETTABLEKS                       R20 R19 K53 ["onRunStart"]
      134 DUPCLOSURE                       R20 K54 [PROTO_3]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R20 R19 K55 ["onRunComplete"]
      140 NEWCLOSURE                       R20 P4
      141 CAPTURE                          VAL R4
      142 CAPTURE                          REF R17
      143 CAPTURE                          VAL R15
      144 CAPTURE                          REF R16
      145 CAPTURE                          REF R18
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R3
      148 SETTABLEKS                       R20 R19 K56 ["_printSnapshotSummary"]
      150 DUPCLOSURE                       R20 K57 [PROTO_7]
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R11
      155 SETTABLEKS                       R20 R19 K58 ["_printSummary"]
      157 DUPCLOSURE                       R20 K59 [PROTO_10]
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R3
      161 SETTABLEKS                       R20 R19 K60 ["_getTestSummary"]
      163 SETTABLEKS                       R19 R6 K13 ["default"]
      165 CLOSEUPVALS                      R16
      166 RETURN                           R6 1
