PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 1
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 JUMPIFNOTEQKS                    R1 K3 ["p"] ; [+14]
       10 FASTCALL2K                       STRING_SUB R0 K5 ; [+5]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K5 [2]
       14 GETIMPORT                        R3 K2 [string.sub]
       16 CALL                             R3 2 1
       17 FASTCALL1                        TONUMBER R3 ; [+2]
       18 GETIMPORT                        R2 K7 [tonumber]
       20 CALL                             R2 1 1
       21 ORK                              R1 R2 K4 [-100]
       22 RETURN                           R1 1
       23 FASTCALL1                        TONUMBER R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K7 [tonumber]
       27 CALL                             R2 1 1
       28 ORK                              R1 R2 K8 [0]
       29 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R4 1
        1 LOADN                            R5 1
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFNOTEQKS                    R2 K3 ["p"] ; [+14]
       10 FASTCALL2K                       STRING_SUB R0 K5 ; [+5]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K5 [2]
       14 GETIMPORT                        R3 K2 [string.sub]
       16 CALL                             R3 2 1
       17 FASTCALL1                        TONUMBER R3 ; [+2]
       18 GETIMPORT                        R2 K7 [tonumber]
       20 CALL                             R2 1 1
       21 ORK                              R1 R2 K4 [-100]
       22 JUMP                             ; [+6]
       23 FASTCALL1                        TONUMBER R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K7 [tonumber]
       27 CALL                             R2 1 1
       28 ORK                              R1 R2 K8 [0]
       29 NEWTABLE                         R2 0 0
       31 LOADN                            R5 1
       32 LOADN                            R3 100
       33 LOADN                            R4 1
       34 FORNPREP                         R3
       35 ADD                              R6 R1 R5
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K9 ["Util"]
       39 GETTABLEKS                       R7 R7 K10 ["deepCopy"]
       41 GETUPVAL                         R9 1
       42 GETUPVAL                         R12 2
       43 MOD                              R11 R6 R12
       44 ADDK                             R10 R11 K11 [1]
       45 GETTABLE                         R8 R9 R10
       46 CALL                             R7 1 1
       47 GETUPVAL                         R9 3
       48 MULK                             R10 R6 K12 [10800000]
       49 SUB                              R8 R9 R10
       50 SETTABLEKS                       R8 R7 K13 ["createdUnixTimeMs"]
       52 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       54 MOVE                             R9 R2
       55 MOVE                             R10 R7
       56 GETIMPORT                        R8 K16 [table.insert]
       58 CALL                             R8 2 0
       59 FORNLOOP                         R3
       60 MOVE                             R3 R2
       61 ADDK                             R5 R1 K17 [100]
       62 FASTCALL1                        TOSTRING R5 ; [+2]
       63 GETIMPORT                        R4 K19 [tostring]
       65 CALL                             R4 1 1
       66 LOADK                            R6 K3 ["p"]
       67 FASTCALL1                        TOSTRING R1 ; [+3]
       68 MOVE                             R8 R1
       69 GETIMPORT                        R7 K19 [tostring]
       71 CALL                             R7 1 1
       72 CONCAT                           R5 R6 R7
       73 RETURN                           R3 3

PROTO_2:
        0 GETUPVAL                         R4 0
        1 SUB                              R3 R4 R0
        2 DIVK                             R2 R3 K0 [10800000]
        3 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        4 GETIMPORT                        R1 K3 [math.floor]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K5 [tostring]
       12 CALL                             R3 1 1
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 DUPCLOSURE                       R0 K0 [PROTO_3]
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R9 0
        5 MOVE                             R10 R2
        6 CALL                             R9 1 3
        7 MOVE                             R6 R9
        8 MOVE                             R7 R10
        9 MOVE                             R8 R11
       10 JUMP                             ; [+29]
       11 JUMPIFNOT                        R3 ; [+22]
       12 GETUPVAL                         R15 1
       13 SUB                              R14 R15 R3
       14 DIVK                             R13 R14 K0 [10800000]
       15 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       16 GETIMPORT                        R12 K3 [math.floor]
       18 CALL                             R12 1 1
       19 GETUPVAL                         R13 0
       20 FASTCALL1                        TOSTRING R12 ; [+3]
       21 MOVE                             R17 R12
       22 GETIMPORT                        R16 K5 [tostring]
       24 CALL                             R16 1 1
       25 MOVE                             R14 R16
       26 CALL                             R13 1 3
       27 MOVE                             R9 R13
       28 MOVE                             R10 R14
       29 MOVE                             R11 R15
       30 MOVE                             R6 R9
       31 MOVE                             R7 R10
       32 MOVE                             R8 R11
       33 JUMP                             ; [+6]
       34 GETUPVAL                         R9 0
       35 LOADK                            R10 K6 ["0"]
       36 CALL                             R9 1 3
       37 MOVE                             R6 R9
       38 MOVE                             R7 R10
       39 MOVE                             R8 R11
       40 DUPTABLE                         R9 K10 [{["responseCode"] = 200, ["responseBody"]}]
       41 DUPTABLE                         R10 K15 [{["events"], ["nextCursor"], ["hasMore"] = }]
       42 SETTABLEKS                       R6 R10 K11 ["events"]
       44 SETTABLEKS                       R7 R10 K12 ["nextCursor"]
       46 SETTABLEKS                       R10 R9 K9 ["responseBody"]
       48 GETIMPORT                        R10 K17 [spawn]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R9
       53 CALL                             R10 1 0
       54 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R6 0
        1 FASTCALL1                        TOSTRING R6 ; [+2]
        2 GETIMPORT                        R5 K1 [tostring]
        4 CALL                             R5 1 1
        5 MOVE                             R3 R5
        6 LOADK                            R4 K2 ["mockusername"]
        7 CONCAT                           R2 R3 R4
        8 MOVE                             R3 R0
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+4]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 ADDK                             R1 R2 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTEQ                      R1 R2 ; [+4]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 0
        3 GETIMPORT                        R4 K1 [pairs]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 ADDK                             R3 R3 K2 [1]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K3 ["new"]
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R8
       14 CALL                             R9 1 1
       15 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       17 MOVE                             R11 R2
       18 MOVE                             R12 R9
       19 GETIMPORT                        R10 K6 [table.insert]
       21 CALL                             R10 2 0
       22 FORGLOOP                         R4 2 ; [-15]
       24 NEWTABLE                         R4 0 0
       26 LOADN                            R5 0
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          REF R5
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 GETIMPORT                        R7 K1 [pairs]
       34 MOVE                             R8 R2
       35 CALL                             R7 1 3
       36 FORGPREP_NEXT                    R7
       37 NEWCLOSURE                       R14 P2
       38 CAPTURE                          REF R5
       39 CAPTURE                          VAL R4
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R1
       42 NAMECALL                         R12 R11 K7 ["andThen"]
       44 CALL                             R12 2 1
       45 NEWCLOSURE                       R14 P3
       46 CAPTURE                          REF R5
       47 CAPTURE                          REF R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 NAMECALL                         R12 R12 K8 ["catch"]
       52 CALL                             R12 2 0
       53 FORGLOOP                         R7 2 ; [-17]
       55 CLOSEUPVALS                      R3
       56 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["MockActivityHistoryEvents"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K8 ["MockActivityHistoryEvents"]
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K9 ["Packages"]
       33 GETTABLEKS                       R4 R4 K10 ["Framework"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K6 ["Util"]
       38 GETTABLEKS                       R4 R4 K11 ["Promise"]
       40 GETIMPORT                        R5 K14 [DateTime.now]
       42 CALL                             R5 0 1
       43 GETTABLEKS                       R5 R5 K15 ["UnixTimestampMillis"]
       45 LENGTH                           R6 R2
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 DUPCLOSURE                       R8 K17 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 DUPCLOSURE                       R9 K18 [PROTO_2]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R8
       55 DUPCLOSURE                       R10 K19 [PROTO_4]
       56 DUPCLOSURE                       R11 K20 [PROTO_6]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 DUPCLOSURE                       R12 K21 [PROTO_11]
       60 CAPTURE                          VAL R4
       61 DUPTABLE                         R13 K25 [{"activityFeedRTEEffect", "fetchActivityHistory", "fetchUsernames"}]
       62 SETTABLEKS                       R10 R13 K22 ["activityFeedRTEEffect"]
       64 SETTABLEKS                       R11 R13 K23 ["fetchActivityHistory"]
       66 SETTABLEKS                       R12 R13 K24 ["fetchUsernames"]
       68 RETURN                           R13 1
