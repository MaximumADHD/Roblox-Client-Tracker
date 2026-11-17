PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["planNode"]
        2 GETTABLEKS                       R3 R3 K1 ["phrase"]
        4 NAMECALL                         R3 R3 K2 ["lower"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R1 K0 ["planNode"]
        9 GETTABLEKS                       R4 R4 K1 ["phrase"]
       11 NAMECALL                         R4 R4 K2 ["lower"]
       13 CALL                             R4 1 1
       14 JUMPIFLT                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R1 R3
        5 ORK                              R2 R2 K0 [0]
        6 GETTABLEKS                       R3 R0 K1 ["status"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["TestStatus"]
       11 GETTABLEKS                       R4 R4 K3 ["Skipped"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+2]
       15 RETURN                           R1 1
       16 LOADNIL                          R3
       17 GETTABLEKS                       R4 R0 K1 ["status"]
       19 JUMPIFNOT                        R4 ; [+21]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R7 R0 K1 ["status"]
       23 GETTABLE                         R5 R6 R7
       24 ORK                              R4 R5 K4 ["?"]
       25 LOADK                            R5 K5 ["%s[%s] %s"]
       26 GETUPVAL                         R7 2
       27 MOVE                             R9 R2
       28 NAMECALL                         R7 R7 K6 ["rep"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R4
       32 GETTABLEKS                       R9 R0 K7 ["planNode"]
       34 GETTABLEKS                       R9 R9 K8 ["phrase"]
       36 NAMECALL                         R5 R5 K9 ["format"]
       38 CALL                             R5 4 1
       39 MOVE                             R3 R5
       40 JUMP                             ; [+14]
       41 LOADK                            R4 K10 ["%s%s"]
       42 GETUPVAL                         R6 2
       43 MOVE                             R8 R2
       44 NAMECALL                         R6 R6 K6 ["rep"]
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R7 R0 K7 ["planNode"]
       49 GETTABLEKS                       R7 R7 K8 ["phrase"]
       51 NAMECALL                         R4 R4 K9 ["format"]
       53 CALL                             R4 3 1
       54 MOVE                             R3 R4
       55 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       57 MOVE                             R5 R1
       58 MOVE                             R6 R3
       59 GETIMPORT                        R4 K13 [table.insert]
       61 CALL                             R4 2 0
       62 GETIMPORT                        R4 K15 [table.sort]
       64 GETTABLEKS                       R5 R0 K16 ["children"]
       66 GETUPVAL                         R6 3
       67 CALL                             R4 2 0
       68 GETIMPORT                        R4 K18 [ipairs]
       70 GETTABLEKS                       R5 R0 K16 ["children"]
       72 CALL                             R4 1 3
       73 FORGPREP_INEXT                   R4
       74 GETUPVAL                         R9 4
       75 MOVE                             R10 R8
       76 MOVE                             R11 R1
       77 ADDK                             R12 R2 K19 [1]
       78 CALL                             R9 3 0
       79 FORGLOOP                         R4 2 [inext] ; [-6]
       81 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [table.sort]
        4 GETTABLEKS                       R3 R0 K3 ["children"]
        6 GETUPVAL                         R4 0
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K5 [ipairs]
       10 GETTABLEKS                       R3 R0 K3 ["children"]
       12 CALL                             R2 1 3
       13 FORGPREP_INEXT                   R2
       14 GETUPVAL                         R7 1
       15 MOVE                             R8 R6
       16 MOVE                             R9 R1
       17 LOADN                            R10 0
       18 CALL                             R7 3 0
       19 FORGLOOP                         R2 2 [inext] ; [-6]
       21 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [table.concat]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K3 ["\n"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
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
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 GETTABLEKS                       R2 R2 K9 ["TestEnum"]
       17 CALL                             R1 1 1
       18 LOADK                            R2 K10 [" "]
       19 LOADN                            R4 3
       20 NAMECALL                         R2 R2 K11 ["rep"]
       22 CALL                             R2 2 1
       23 NEWTABLE                         R3 4 0
       25 GETTABLEKS                       R4 R1 K12 ["TestStatus"]
       27 GETTABLEKS                       R4 R4 K13 ["Success"]
       29 LOADK                            R5 K14 ["+"]
       30 SETTABLE                         R5 R3 R4
       31 GETTABLEKS                       R4 R1 K12 ["TestStatus"]
       33 GETTABLEKS                       R4 R4 K15 ["Failure"]
       35 LOADK                            R5 K16 ["-"]
       36 SETTABLE                         R5 R3 R4
       37 GETTABLEKS                       R4 R1 K12 ["TestStatus"]
       39 GETTABLEKS                       R4 R4 K17 ["Skipped"]
       41 LOADK                            R5 K18 ["~"]
       42 SETTABLE                         R5 R3 R4
       43 NEWTABLE                         R4 1 0
       45 DUPCLOSURE                       R5 K19 [PROTO_0]
       46 DUPCLOSURE                       R6 K20 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R7 K21 [PROTO_2]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R8 K22 [PROTO_3]
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R9 K23 [PROTO_4]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R9 R4 K24 ["report"]
       62 RETURN                           R4 1
