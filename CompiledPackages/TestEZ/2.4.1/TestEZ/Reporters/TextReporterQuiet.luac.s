PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["JestMatcherUtils"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
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
       16 LOADNIL                          R3
       17 GETTABLEKS                       R4 R0 K1 ["status"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K2 ["TestStatus"]
       22 GETTABLEKS                       R5 R6 K4 ["Success"]
       24 JUMPIFEQ                         R4 R5 ; [+21]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R7 R0 K1 ["status"]
       29 GETTABLE                         R5 R6 R7
       30 ORK                              R4 R5 K5 ["?"]
       31 LOADK                            R5 K6 ["%s[%s] %s"]
       32 GETUPVAL                         R7 2
       33 MOVE                             R9 R2
       34 NAMECALL                         R7 R7 K7 ["rep"]
       36 CALL                             R7 2 1
       37 MOVE                             R8 R4
       38 GETTABLEKS                       R10 R0 K8 ["planNode"]
       40 GETTABLEKS                       R9 R10 K9 ["phrase"]
       42 NAMECALL                         R5 R5 K10 ["format"]
       44 CALL                             R5 4 1
       45 MOVE                             R3 R5
       46 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       48 MOVE                             R5 R1
       49 MOVE                             R6 R3
       50 GETIMPORT                        R4 K13 [table.insert]
       52 CALL                             R4 2 0
       53 GETIMPORT                        R4 K15 [ipairs]
       55 GETTABLEKS                       R5 R0 K16 ["children"]
       57 CALL                             R4 1 3
       58 FORGPREP_INEXT                   R4
       59 GETUPVAL                         R9 3
       60 MOVE                             R10 R8
       61 MOVE                             R11 R1
       62 ADDK                             R12 R2 K17 [1]
       63 CALL                             R9 3 0
       64 FORGLOOP                         R4 2 [inext] ; [-6]
       66 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [table.concat]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K3 ["\n"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_8:
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
       50 JUMPIFNOTLT                      R3 R2 ; [+42]
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
       66 GETIMPORT                        R7 K11 [print]
       68 GETUPVAL                         R8 1
       69 GETUPVAL                         R9 2
       70 LOADK                            R11 K18 ["• "]
       71 GETTABLEKS                       R12 R6 K19 ["phrase"]
       73 CONCAT                           R10 R11 R12
       74 CALL                             R9 1 -1
       75 CALL                             R8 -1 -1
       76 CALL                             R7 -1 0
       77 GETIMPORT                        R7 K11 [print]
       79 LOADK                            R8 K15 [""]
       80 CALL                             R7 1 0
       81 GETUPVAL                         R7 3
       82 GETTABLEKS                       R9 R6 K20 ["message"]
       84 NAMECALL                         R7 R7 K21 ["Error"]
       86 CALL                             R7 2 0
       87 GETIMPORT                        R7 K11 [print]
       89 LOADK                            R8 K15 [""]
       90 CALL                             R7 1 0
       91 FORGLOOP                         R2 2 [inext] ; [-26]
       93 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TestService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETTABLEKS                       R3 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [pcall]
       17 DUPCLOSURE                       R4 K9 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 2
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETTABLEKS                       R5 R4 K10 ["EXPECTED_COLOR"]
       23 JUMPIF                           R5 ; [+1]
       24 DUPCLOSURE                       R5 K11 [PROTO_1]
       25 JUMPIFNOT                        R3 ; [+3]
       26 GETTABLEKS                       R6 R4 K12 ["RECEIVED_COLOR"]
       28 JUMPIF                           R6 ; [+1]
       29 DUPCLOSURE                       R6 K13 [PROTO_2]
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETTABLEKS                       R7 R4 K14 ["BOLD_WEIGHT"]
       33 JUMPIF                           R7 ; [+1]
       34 DUPCLOSURE                       R7 K15 [PROTO_3]
       35 JUMPIFNOT                        R3 ; [+3]
       36 GETTABLEKS                       R8 R4 K16 ["DIM_COLOR"]
       38 JUMPIF                           R8 ; [+1]
       39 DUPCLOSURE                       R8 K17 [PROTO_4]
       40 GETIMPORT                        R9 K19 [require]
       42 GETIMPORT                        R13 K5 [script]
       44 GETTABLEKS                       R12 R13 K6 ["Parent"]
       46 GETTABLEKS                       R11 R12 K6 ["Parent"]
       48 GETTABLEKS                       R10 R11 K20 ["TestEnum"]
       50 CALL                             R9 1 1
       51 LOADK                            R10 K21 [" "]
       52 LOADN                            R12 3
       53 NAMECALL                         R10 R10 K22 ["rep"]
       55 CALL                             R10 2 1
       56 NEWTABLE                         R11 4 0
       58 GETTABLEKS                       R13 R9 K23 ["TestStatus"]
       60 GETTABLEKS                       R12 R13 K24 ["Success"]
       62 MOVE                             R13 R5
       63 LOADK                            R14 K25 ["+"]
       64 CALL                             R13 1 1
       65 SETTABLE                         R13 R11 R12
       66 GETTABLEKS                       R13 R9 K23 ["TestStatus"]
       68 GETTABLEKS                       R12 R13 K26 ["Failure"]
       70 MOVE                             R13 R6
       71 LOADK                            R14 K27 ["-"]
       72 CALL                             R13 1 1
       73 SETTABLE                         R13 R11 R12
       74 GETTABLEKS                       R13 R9 K23 ["TestStatus"]
       76 GETTABLEKS                       R12 R13 K28 ["Skipped"]
       78 MOVE                             R13 R8
       79 LOADK                            R14 K29 ["~"]
       80 CALL                             R13 1 1
       81 SETTABLE                         R13 R11 R12
       82 NEWTABLE                         R12 1 0
       84 DUPCLOSURE                       R13 K30 [PROTO_5]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R13
       89 DUPCLOSURE                       R14 K31 [PROTO_6]
       90 CAPTURE                          VAL R13
       91 DUPCLOSURE                       R15 K32 [PROTO_7]
       92 CAPTURE                          VAL R14
       93 DUPCLOSURE                       R16 K33 [PROTO_8]
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R16 R12 K34 ["report"]
      100 RETURN                           R12 1
