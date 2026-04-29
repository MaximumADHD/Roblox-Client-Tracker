PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETTABLEKS                       R4 R1 K3 ["env"]
       14 GETTABLEKS                       R3 R4 K4 ["npm_lifecycle_script"]
       16 SETUPVAL                         R3 2
       17 GETTABLEKS                       R4 R1 K3 ["env"]
       19 GETTABLEKS                       R3 R4 K5 ["npm_lifecycle_event"]
       21 SETUPVAL                         R3 3
       22 GETTABLEKS                       R4 R1 K3 ["env"]
       24 GETTABLEKS                       R3 R4 K6 ["npm_config_user_agent"]
       26 SETUPVAL                         R3 4
       27 SETTABLEKS                       R0 R2 K7 ["_globalConfig"]
       29 LOADN                            R3 0
       30 SETTABLEKS                       R3 R2 K8 ["_estimatedTime"]
       32 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R2 1
        1 GETIMPORT                        R3 K2 [utf8.len]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL1                        ASSERT R5 ; [+2]
       10 GETIMPORT                        R4 K4 [assert]
       12 CALL                             R4 1 0
       13 JUMPIFNOTLT                      R2 R3 ; [+16]
       15 GETTABLEKS                       R5 R0 K5 ["_process"]
       17 GETTABLEKS                       R4 R5 K6 ["stderr"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["charCodeAt"]
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 CALL                             R6 2 -1
       25 NAMECALL                         R4 R4 K8 ["write"]
       27 CALL                             R4 -1 0
       28 ADDK                             R2 R2 K9 [1]
       29 JUMPBACK                         ; [-17]
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["onRunStart"]
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
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["toJSBoolean"]
        9 MOVE                             R7 R3
       10 CALL                             R6 1 1
       11 JUMPIFNOT                        R6 ; [+100]
       12 LENGTH                           R7 R4
       13 GETTABLE                         R6 R4 R7
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K3 ["toJSBoolean"]
       17 GETTABLEKS                       R9 R0 K4 ["_globalConfig"]
       19 GETTABLEKS                       R8 R9 K5 ["verbose"]
       21 CALL                             R7 1 1
       22 JUMPIFNOT                        R7 ; [+24]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K3 ["toJSBoolean"]
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 JUMPIFNOT                        R7 ; [+18]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K3 ["toJSBoolean"]
       32 GETTABLEKS                       R8 R6 K6 ["numFailingTests"]
       34 CALL                             R7 1 1
       35 JUMPIF                           R7 ; [+11]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K3 ["toJSBoolean"]
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
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K3 ["toJSBoolean"]
       63 MOVE                             R8 R3
       64 CALL                             R7 1 1
       65 JUMPIFNOT                        R7 ; [+46]
       66 GETUPVAL                         R7 1
       67 MOVE                             R8 R2
       68 DUPTABLE                         R9 K14 [{"estimatedTime"}]
       69 GETTABLEKS                       R10 R0 K15 ["_estimatedTime"]
       71 SETTABLEKS                       R10 R9 K13 ["estimatedTime"]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R8 R9 K3 ["toJSBoolean"]
       77 GETTABLEKS                       R10 R0 K4 ["_globalConfig"]
       79 GETTABLEKS                       R9 R10 K16 ["silent"]
       81 CALL                             R8 1 1
       82 JUMPIF                           R8 ; [+25]
       83 MOVE                             R8 R7
       84 LOADK                            R9 K17 ["\n"]
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R11 R12 K3 ["toJSBoolean"]
       88 MOVE                             R12 R5
       89 CALL                             R11 1 1
       90 JUMPIFNOT                        R11 ; [+10]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R10 R11 K18 ["bold"]
       94 GETUPVAL                         R12 2
       95 GETTABLEKS                       R11 R12 K19 ["red"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R4 R1 K1 ["added"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+28]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       10 GETTABLEKS                       R4 R1 K2 ["filesRemoved"]
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+21]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       17 GETTABLEKS                       R4 R1 K3 ["unchecked"]
       19 CALL                             R3 1 1
       20 JUMPIF                           R3 ; [+14]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       24 GETTABLEKS                       R4 R1 K4 ["unmatched"]
       26 CALL                             R3 1 1
       27 JUMPIF                           R3 ; [+7]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       31 GETTABLEKS                       R4 R1 K5 ["updated"]
       33 CALL                             R3 1 1
       34 JUMPIFNOT                        R3 ; [+115]
       35 LOADNIL                          R3
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       39 GETUPVAL                         R6 1
       40 CALL                             R5 1 1
       41 JUMPIFNOT                        R5 ; [+2]
       42 GETUPVAL                         R4 1
       43 JUMPIF                           R4 ; [+1]
       44 LOADK                            R4 K6 [""]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K0 ["toJSBoolean"]
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
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R8 R9 K0 ["toJSBoolean"]
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
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R8 R9 K0 ["toJSBoolean"]
       96 GETIMPORT                        R9 K13 [string.match]
       98 GETUPVAL                         R11 4
       99 ORK                              R10 R11 K6 [""]
      100 LOADK                            R11 K16 ["jest"]
      101 CALL                             R9 2 -1
      102 CALL                             R8 -1 1
      103 GETTABLEKS                       R9 R2 K17 ["watch"]
      105 JUMPIF                           R9 ; [+3]
      106 GETTABLEKS                       R9 R2 K18 ["watchAll"]
      108 JUMPIFNOT                        R9 ; [+2]
      109 LOADK                            R3 K19 ["press `u`"]
      110 JUMP                             ; [+23]
      111 GETUPVAL                         R10 0
      112 GETTABLEKS                       R9 R10 K0 ["toJSBoolean"]
      114 MOVE                             R10 R4
      115 CALL                             R9 1 1
      116 JUMPIFNOT                        R9 ; [+16]
      117 JUMPIFNOT                        R8 ; [+15]
      118 LOADK                            R9 K20 ["run `%s -u`"]
      119 MOVE                             R12 R7
      120 LOADK                            R13 K21 [" "]
      121 MOVE                             R14 R5
      122 MOVE                             R15 R4
      123 JUMPIFNOT                        R6 ; [+2]
      124 LOADK                            R16 K6 [""]
      125 JUMP                             ; [+1]
      126 LOADK                            R16 K22 [" --"]
      127 CONCAT                           R11 R12 R16
      128 NAMECALL                         R9 R9 K23 ["format"]
      130 CALL                             R9 2 1
      131 MOVE                             R3 R9
      132 JUMP                             ; [+1]
      133 LOADK                            R3 K24 ["re-run jest with `-u`"]
      134 GETUPVAL                         R9 5
      135 MOVE                             R10 R1
      136 MOVE                             R11 R2
      137 MOVE                             R12 R3
      138 CALL                             R9 3 1
      139 GETUPVAL                         R11 6
      140 GETTABLEKS                       R10 R11 K25 ["forEach"]
      142 MOVE                             R11 R9
      143 NEWCLOSURE                       R12 P0
      144 CAPTURE                          VAL R0
      145 CALL                             R10 2 0
      146 LOADK                            R12 K6 [""]
      147 NAMECALL                         R10 R0 K26 ["log"]
      149 CALL                             R10 2 0
      150 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["failureMessage"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["toJSBoolean"]
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
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K4 ["bold"]
       18 LOADK                            R8 K5 ["Summary of all failing tests"]
       19 CALL                             R7 1 -1
       20 NAMECALL                         R5 R0 K6 ["log"]
       22 CALL                             R5 -1 0
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K7 ["forEach"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["findRelatedTests"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADK                            R0 K2 [" related to files matching "]
        9 JUMP                             ; [+1]
       10 LOADK                            R0 K3 [" matching "]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K4 ["dim"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_9:
        0 LOADK                            R1 K0 ["\"%s\""]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U1
        4 LOADK                            R4 K0 [""]
        5 GETTABLEKS                       R5 R2 K1 ["runTestsByPath"]
        7 JUMPIFNOT                        R5 ; [+7]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K2 ["dim"]
       11 LOADK                            R6 K3 [" within paths"]
       12 CALL                             R5 1 1
       13 MOVE                             R4 R5
       14 JUMP                             ; [+37]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K4 ["toJSBoolean"]
       18 GETTABLEKS                       R6 R2 K5 ["onlyChanged"]
       20 CALL                             R5 1 1
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K2 ["dim"]
       25 LOADK                            R6 K6 [" related to changed files"]
       26 CALL                             R5 1 1
       27 MOVE                             R4 R5
       28 JUMP                             ; [+23]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K4 ["toJSBoolean"]
       32 GETTABLEKS                       R6 R2 K7 ["testPathPattern"]
       34 CALL                             R5 1 1
       35 JUMPIFNOT                        R5 ; [+16]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K4 ["toJSBoolean"]
       39 GETTABLEKS                       R7 R2 K8 ["findRelatedTests"]
       41 CALL                             R6 1 1
       42 JUMPIFNOT                        R6 ; [+2]
       43 LOADK                            R5 K9 [" related to files matching "]
       44 JUMP                             ; [+1]
       45 LOADK                            R5 K10 [" matching "]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K2 ["dim"]
       49 MOVE                             R7 R5
       50 CALL                             R6 1 1
       51 MOVE                             R4 R6
       52 LOADK                            R5 K0 [""]
       53 GETTABLEKS                       R6 R2 K1 ["runTestsByPath"]
       55 JUMPIFNOT                        R6 ; [+15]
       56 LOADK                            R6 K11 [" "]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R7 R8 K12 ["join"]
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R8 R9 K13 ["map"]
       63 GETTABLEKS                       R9 R2 K14 ["nonFlagArgs"]
       65 DUPCLOSURE                       R10 K15 [PROTO_9]
       66 CALL                             R8 2 1
       67 LOADK                            R9 K16 [", "]
       68 CALL                             R7 2 1
       69 CONCAT                           R5 R6 R7
       70 JUMP                             ; [+17]
       71 GETTABLEKS                       R6 R2 K17 ["testNamePattern"]
       73 JUMPIFEQKNIL                     R6 ; [+14]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R8 R9 K2 ["dim"]
       78 LOADK                            R9 K18 [" with tests matching "]
       79 CALL                             R8 1 1
       80 MOVE                             R6 R8
       81 LOADK                            R7 K19 ["\"%s\""]
       82 GETTABLEKS                       R9 R2 K17 ["testNamePattern"]
       84 NAMECALL                         R7 R7 K20 ["format"]
       86 CALL                             R7 2 1
       87 CONCAT                           R5 R6 R7
       88 GETTABLEKS                       R7 R1 K21 ["size"]
       90 LOADN                            R8 1
       91 JUMPIFNOTLT                      R8 R7 ; [+21]
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R10 R11 K2 ["dim"]
       96 LOADK                            R11 K22 [" in "]
       97 CALL                             R10 1 1
       98 MOVE                             R7 R10
       99 GETTABLEKS                       R11 R1 K21 ["size"]
      101 FASTCALL1                        TOSTRING R11 ; [+2]
      102 GETIMPORT                        R10 K24 [tostring]
      104 CALL                             R10 1 1
      105 MOVE                             R8 R10
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R9 R10 K2 ["dim"]
      109 LOADK                            R10 K25 [" projects"]
      110 CALL                             R9 1 1
      111 CONCAT                           R6 R7 R9
      112 JUMP                             ; [+1]
      113 LOADK                            R6 K0 [""]
      114 GETUPVAL                         R14 1
      115 GETTABLEKS                       R13 R14 K2 ["dim"]
      117 LOADK                            R14 K26 ["Ran all test suites"]
      118 CALL                             R13 1 1
      119 MOVE                             R8 R13
      120 MOVE                             R9 R4
      121 MOVE                             R10 R5
      122 MOVE                             R11 R6
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R12 R13 K2 ["dim"]
      126 LOADK                            R13 K27 ["."]
      127 CALL                             R12 1 1
      128 CONCAT                           R7 R8 R12
      129 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["Set"]
       18 GETTABLEKS                       R6 R2 K9 ["String"]
       20 NEWTABLE                         R7 1 0
       22 GETIMPORT                        R8 K4 [require]
       24 GETTABLEKS                       R9 R1 K10 ["ChalkLua"]
       26 CALL                             R8 1 1
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R1 K11 ["JestTestResult"]
       31 CALL                             R9 1 1
       32 GETIMPORT                        R10 K4 [require]
       34 GETTABLEKS                       R11 R1 K12 ["JestTypes"]
       36 CALL                             R10 1 1
       37 GETIMPORT                        R12 K4 [require]
       39 GETTABLEKS                       R13 R0 K13 ["BaseReporter"]
       41 CALL                             R12 1 1
       42 GETTABLEKS                       R11 R12 K14 ["default"]
       44 GETIMPORT                        R13 K4 [require]
       46 GETTABLEKS                       R14 R0 K15 ["getResultHeader"]
       48 CALL                             R13 1 1
       49 GETTABLEKS                       R12 R13 K14 ["default"]
       51 GETIMPORT                        R14 K4 [require]
       53 GETTABLEKS                       R15 R0 K16 ["getSnapshotSummary"]
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R13 R14 K14 ["default"]
       58 GETIMPORT                        R14 K4 [require]
       60 GETTABLEKS                       R15 R0 K17 ["types"]
       62 CALL                             R14 1 1
       63 GETIMPORT                        R16 K4 [require]
       65 GETTABLEKS                       R17 R0 K18 ["utils"]
       67 CALL                             R16 1 1
       68 GETTABLEKS                       R15 R16 K19 ["getSummary"]
       70 GETTABLEKS                       R16 R5 K20 ["new"]
       72 NEWTABLE                         R17 0 24
       74 LOADK                            R18 K21 ["prepublish"]
       75 LOADK                            R19 K22 ["publish"]
       76 LOADK                            R20 K23 ["postpublish"]
       77 LOADK                            R21 K24 ["preinstall"]
       78 LOADK                            R22 K25 ["install"]
       79 LOADK                            R23 K26 ["postinstall"]
       80 LOADK                            R24 K27 ["preuninstall"]
       81 LOADK                            R25 K28 ["uninstall"]
       82 LOADK                            R26 K29 ["postuninstall"]
       83 LOADK                            R27 K30 ["preversion"]
       84 LOADK                            R28 K31 ["version"]
       85 LOADK                            R29 K32 ["postversion"]
       86 LOADK                            R30 K33 ["pretest"]
       87 LOADK                            R31 K34 ["test"]
       88 LOADK                            R32 K35 ["posttest"]
       89 LOADK                            R33 K36 ["prestop"]
       90 SETLIST                          R17 R18 16 [1]
       92 LOADK                            R18 K37 ["stop"]
       93 LOADK                            R19 K38 ["poststop"]
       94 LOADK                            R20 K39 ["prestart"]
       95 LOADK                            R21 K40 ["start"]
       96 LOADK                            R22 K41 ["poststart"]
       97 LOADK                            R23 K42 ["prerestart"]
       98 LOADK                            R24 K43 ["restart"]
       99 LOADK                            R25 K44 ["postrestart"]
      100 SETLIST                          R17 R18 8 [17]
      102 CALL                             R16 1 1
      103 LOADNIL                          R17
      104 LOADNIL                          R18
      105 LOADNIL                          R19
      106 NEWTABLE                         R21 0 0
      108 DUPTABLE                         R22 K46 [{"__index"}]
      109 SETTABLEKS                       R11 R22 K45 ["__index"]
      111 FASTCALL2                        SETMETATABLE R21 R22 ; [+3]
      113 GETIMPORT                        R20 K48 [setmetatable]
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R20 K45 ["__index"]
      118 LOADK                            R21 K49 ["SummaryReporter"]
      119 SETTABLEKS                       R21 R20 K50 ["filename"]
      121 NEWCLOSURE                       R21 P0
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R20
      124 CAPTURE                          REF R19
      125 CAPTURE                          REF R18
      126 CAPTURE                          REF R17
      127 SETTABLEKS                       R21 R20 K20 ["new"]
      129 DUPCLOSURE                       R21 K51 [PROTO_1]
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R21 R20 K52 ["_write"]
      133 DUPCLOSURE                       R21 K53 [PROTO_2]
      134 CAPTURE                          VAL R11
      135 SETTABLEKS                       R21 R20 K54 ["onRunStart"]
      137 DUPCLOSURE                       R21 K55 [PROTO_3]
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R8
      141 SETTABLEKS                       R21 R20 K56 ["onRunComplete"]
      143 NEWCLOSURE                       R21 P4
      144 CAPTURE                          VAL R4
      145 CAPTURE                          REF R18
      146 CAPTURE                          VAL R16
      147 CAPTURE                          REF R17
      148 CAPTURE                          REF R19
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R21 R20 K57 ["_printSnapshotSummary"]
      153 DUPCLOSURE                       R21 K58 [PROTO_7]
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R12
      158 SETTABLEKS                       R21 R20 K59 ["_printSummary"]
      160 DUPCLOSURE                       R21 K60 [PROTO_10]
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R3
      164 SETTABLEKS                       R21 R20 K61 ["_getTestSummary"]
      166 SETTABLEKS                       R20 R7 K14 ["default"]
      168 CLOSEUPVALS                      R17
      169 RETURN                           R7 1
