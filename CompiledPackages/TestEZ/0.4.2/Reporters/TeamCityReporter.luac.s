PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["([]|'[])"]
        4 LOADK                            R4 K4 ["|%1"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["\r"]
       11 LOADK                            R4 K6 ["|r"]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 GETIMPORT                        R1 K2 [string.gsub]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K7 ["\n"]
       18 LOADK                            R4 K8 ["|n"]
       19 CALL                             R1 3 1
       20 MOVE                             R0 R1
       21 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["##teamcity[testSuiteStarted name='%s']"]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R5 K5 [string.gsub]
        6 MOVE                             R6 R4
        7 LOADK                            R7 K6 ["([]|'[])"]
        8 LOADK                            R8 K7 ["|%1"]
        9 CALL                             R5 3 1
       10 MOVE                             R4 R5
       11 GETIMPORT                        R5 K5 [string.gsub]
       13 MOVE                             R6 R4
       14 LOADK                            R7 K8 ["\r"]
       15 LOADK                            R8 K9 ["|r"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 GETIMPORT                        R5 K5 [string.gsub]
       20 MOVE                             R6 R4
       21 LOADK                            R7 K10 ["\n"]
       22 LOADK                            R8 K11 ["|n"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 MOVE                             R3 R4
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["##teamcity[testSuiteFinished name='%s']"]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R5 K5 [string.gsub]
        6 MOVE                             R6 R4
        7 LOADK                            R7 K6 ["([]|'[])"]
        8 LOADK                            R8 K7 ["|%1"]
        9 CALL                             R5 3 1
       10 MOVE                             R4 R5
       11 GETIMPORT                        R5 K5 [string.gsub]
       13 MOVE                             R6 R4
       14 LOADK                            R7 K8 ["\r"]
       15 LOADK                            R8 K9 ["|r"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 GETIMPORT                        R5 K5 [string.gsub]
       20 MOVE                             R6 R4
       21 LOADK                            R7 K10 ["\n"]
       22 LOADK                            R8 K11 ["|n"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 MOVE                             R3 R4
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["##teamcity[testStarted name='%s']"]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R5 K5 [string.gsub]
        6 MOVE                             R6 R4
        7 LOADK                            R7 K6 ["([]|'[])"]
        8 LOADK                            R8 K7 ["|%1"]
        9 CALL                             R5 3 1
       10 MOVE                             R4 R5
       11 GETIMPORT                        R5 K5 [string.gsub]
       13 MOVE                             R6 R4
       14 LOADK                            R7 K8 ["\r"]
       15 LOADK                            R8 K9 ["|r"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 GETIMPORT                        R5 K5 [string.gsub]
       20 MOVE                             R6 R4
       21 LOADK                            R7 K10 ["\n"]
       22 LOADK                            R8 K11 ["|n"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 MOVE                             R3 R4
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["##teamcity[testFinished name='%s']"]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R5 K5 [string.gsub]
        6 MOVE                             R6 R4
        7 LOADK                            R7 K6 ["([]|'[])"]
        8 LOADK                            R8 K7 ["|%1"]
        9 CALL                             R5 3 1
       10 MOVE                             R4 R5
       11 GETIMPORT                        R5 K5 [string.gsub]
       13 MOVE                             R6 R4
       14 LOADK                            R7 K8 ["\r"]
       15 LOADK                            R8 K9 ["|r"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 GETIMPORT                        R5 K5 [string.gsub]
       20 MOVE                             R6 R4
       21 LOADK                            R7 K10 ["\n"]
       22 LOADK                            R8 K11 ["|n"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 MOVE                             R3 R4
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["##teamcity[testFailed name='%s' message='%s']"]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R6 K5 [string.gsub]
        6 MOVE                             R7 R5
        7 LOADK                            R8 K6 ["([]|'[])"]
        8 LOADK                            R9 K7 ["|%1"]
        9 CALL                             R6 3 1
       10 MOVE                             R5 R6
       11 GETIMPORT                        R6 K5 [string.gsub]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K8 ["\r"]
       15 LOADK                            R9 K9 ["|r"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 GETIMPORT                        R6 K5 [string.gsub]
       20 MOVE                             R7 R5
       21 LOADK                            R8 K10 ["\n"]
       22 LOADK                            R9 K11 ["|n"]
       23 CALL                             R6 3 1
       24 MOVE                             R5 R6
       25 MOVE                             R4 R5
       26 MOVE                             R6 R1
       27 GETIMPORT                        R7 K5 [string.gsub]
       29 MOVE                             R8 R6
       30 LOADK                            R9 K6 ["([]|'[])"]
       31 LOADK                            R10 K7 ["|%1"]
       32 CALL                             R7 3 1
       33 MOVE                             R6 R7
       34 GETIMPORT                        R7 K5 [string.gsub]
       36 MOVE                             R8 R6
       37 LOADK                            R9 K8 ["\r"]
       38 LOADK                            R10 K9 ["|r"]
       39 CALL                             R7 3 1
       40 MOVE                             R6 R7
       41 GETIMPORT                        R7 K5 [string.gsub]
       43 MOVE                             R8 R6
       44 LOADK                            R9 K10 ["\n"]
       45 LOADK                            R10 K11 ["|n"]
       46 CALL                             R7 3 1
       47 MOVE                             R6 R7
       48 MOVE                             R5 R6
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

PROTO_6:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R1 R3
        5 ORK                              R2 R2 K0 [0]
        6 GETTABLEKS                       R3 R0 K1 ["status"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K2 ["TestStatus"]
       11 GETTABLEKS                       R4 R5 K3 ["Skipped"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+2]
       15 RETURN                           R1 1
       16 GETTABLEKS                       R4 R0 K4 ["planNode"]
       18 GETTABLEKS                       R3 R4 K5 ["type"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K6 ["NodeType"]
       23 GETTABLEKS                       R4 R5 K7 ["Describe"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+37]
       27 MOVE                             R4 R1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R7 R0 K4 ["planNode"]
       31 GETTABLEKS                       R6 R7 K8 ["phrase"]
       33 CALL                             R5 1 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R3 K11 [table.insert]
       37 CALL                             R3 -1 0
       38 GETIMPORT                        R3 K13 [ipairs]
       40 GETTABLEKS                       R4 R0 K14 ["children"]
       42 CALL                             R3 1 3
       43 FORGPREP_INEXT                   R3
       44 GETUPVAL                         R8 2
       45 MOVE                             R9 R7
       46 MOVE                             R10 R1
       47 ADDK                             R11 R2 K15 [1]
       48 CALL                             R8 3 0
       49 FORGLOOP                         R3 2 [inext] ; [-6]
       51 MOVE                             R4 R1
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R7 R0 K4 ["planNode"]
       55 GETTABLEKS                       R6 R7 K8 ["phrase"]
       57 CALL                             R5 1 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R3 K11 [table.insert]
       61 CALL                             R3 -1 0
       62 RETURN                           R0 0
       63 MOVE                             R4 R1
       64 GETUPVAL                         R5 4
       65 GETTABLEKS                       R7 R0 K4 ["planNode"]
       67 GETTABLEKS                       R6 R7 K8 ["phrase"]
       69 CALL                             R5 1 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R3 K11 [table.insert]
       73 CALL                             R3 -1 0
       74 GETTABLEKS                       R3 R0 K1 ["status"]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R5 R6 K2 ["TestStatus"]
       79 GETTABLEKS                       R4 R5 K16 ["Failure"]
       81 JUMPIFNOTEQ                      R3 R4 ; [+18]
       83 MOVE                             R4 R1
       84 GETUPVAL                         R5 5
       85 GETTABLEKS                       R7 R0 K4 ["planNode"]
       87 GETTABLEKS                       R6 R7 K8 ["phrase"]
       89 GETIMPORT                        R7 K18 [table.concat]
       91 GETTABLEKS                       R8 R0 K19 ["errors"]
       93 LOADK                            R9 K20 ["\n"]
       94 CALL                             R7 2 -1
       95 CALL                             R5 -1 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R3 K11 [table.insert]
       99 CALL                             R3 -1 0
      100 MOVE                             R4 R1
      101 GETUPVAL                         R5 6
      102 GETTABLEKS                       R7 R0 K4 ["planNode"]
      104 GETTABLEKS                       R6 R7 K8 ["phrase"]
      106 CALL                             R5 1 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R3 K11 [table.insert]
      110 CALL                             R3 -1 0
      111 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETTABLEKS                       R3 R0 K2 ["children"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R6
       10 MOVE                             R9 R1
       11 LOADN                            R10 0
       12 CALL                             R7 3 0
       13 FORGLOOP                         R2 2 [inext] ; [-6]
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [table.concat]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K3 ["\n"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_9:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R2 K0 ["Test results:"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 GETIMPORT                        R5 K3 [table.concat]
        8 MOVE                             R6 R4
        9 LOADK                            R7 K4 ["\n"]
       10 CALL                             R5 2 1
       11 MOVE                             R3 R5
       12 LOADK                            R4 K5 ["%d passed, %d failed, %d skipped"]
       13 GETTABLEKS                       R6 R0 K6 ["successCount"]
       15 GETTABLEKS                       R7 R0 K7 ["failureCount"]
       17 GETTABLEKS                       R8 R0 K8 ["skippedCount"]
       19 NAMECALL                         R4 R4 K9 ["format"]
       21 CALL                             R4 4 -1
       22 SETLIST                          R1 R2 -1 [1]
       24 GETIMPORT                        R2 K11 [print]
       26 GETIMPORT                        R3 K3 [table.concat]
       28 MOVE                             R4 R1
       29 LOADK                            R5 K4 ["\n"]
       30 CALL                             R3 2 -1
       31 CALL                             R2 -1 0
       32 GETTABLEKS                       R2 R0 K7 ["failureCount"]
       34 LOADN                            R3 0
       35 JUMPIFNOTLT                      R3 R2 ; [+10]
       37 GETIMPORT                        R2 K11 [print]
       39 LOADK                            R3 K12 ["%d test nodes reported failures."]
       40 GETTABLEKS                       R5 R0 K7 ["failureCount"]
       42 NAMECALL                         R3 R3 K9 ["format"]
       44 CALL                             R3 2 -1
       45 CALL                             R2 -1 0
       46 GETTABLEKS                       R3 R0 K13 ["errors"]
       48 LENGTH                           R2 R3
       49 LOADN                            R3 0
       50 JUMPIFNOTLT                      R3 R2 ; [+26]
       52 GETIMPORT                        R2 K11 [print]
       54 LOADK                            R3 K14 ["Errors reported by tests:"]
       55 CALL                             R2 1 0
       56 GETIMPORT                        R2 K11 [print]
       58 LOADK                            R3 K15 [""]
       59 CALL                             R2 1 0
       60 GETIMPORT                        R2 K17 [ipairs]
       62 GETTABLEKS                       R3 R0 K13 ["errors"]
       64 CALL                             R2 1 3
       65 FORGPREP_INEXT                   R2
       66 GETUPVAL                         R7 1
       67 MOVE                             R9 R6
       68 NAMECALL                         R7 R7 K18 ["Error"]
       70 CALL                             R7 2 0
       71 GETIMPORT                        R7 K11 [print]
       73 LOADK                            R8 K15 [""]
       74 CALL                             R7 1 0
       75 FORGLOOP                         R2 2 [inext] ; [-10]
       77 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TestService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R5 K7 [script]
       11 GETTABLEKS                       R4 R5 K8 ["Parent"]
       13 GETTABLEKS                       R3 R4 K8 ["Parent"]
       15 GETTABLEKS                       R2 R3 K9 ["TestEnum"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 1 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 DUPCLOSURE                       R5 K12 [PROTO_2]
       23 DUPCLOSURE                       R6 K13 [PROTO_3]
       24 DUPCLOSURE                       R7 K14 [PROTO_4]
       25 DUPCLOSURE                       R8 K15 [PROTO_5]
       26 DUPCLOSURE                       R9 K16 [PROTO_6]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R9
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R8
       33 CAPTURE                          VAL R7
       34 DUPCLOSURE                       R10 K17 [PROTO_7]
       35 CAPTURE                          VAL R9
       36 DUPCLOSURE                       R11 K18 [PROTO_8]
       37 CAPTURE                          VAL R10
       38 DUPCLOSURE                       R12 K19 [PROTO_9]
       39 CAPTURE                          VAL R10
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R12 R2 K20 ["report"]
       43 RETURN                           R2 1
