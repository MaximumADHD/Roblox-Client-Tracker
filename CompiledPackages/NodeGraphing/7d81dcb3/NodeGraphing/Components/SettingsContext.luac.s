PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["timeFormat"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Frames"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+5]
        7 GETTABLEKS                       R3 R1 K2 ["frameRate"]
        9 MUL                              R2 R0 R3
       10 RETURN                           R2 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["timeFormat"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Frames"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+5]
        7 GETTABLEKS                       R3 R1 K2 ["frameRate"]
        9 DIV                              R2 R0 R3
       10 RETURN                           R2 1
       11 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["timeFormat"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Frames"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+7]
        7 FASTCALL1                        MATH_ROUND R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K4 [math.round]
       11 CALL                             R2 1 1
       12 RETURN                           R2 1
       13 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["timeFormat"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Frames"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["NUMBER_STEP"]
       10 GETTABLEKS                       R1 R1 K3 ["TimestampFrames"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["NUMBER_STEP"]
       16 GETTABLEKS                       R1 R1 K4 ["Timestamp"]
       18 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["timeFormat"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Frames"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["NUMBER_PRECISION"]
       10 GETTABLEKS                       R1 R1 K3 ["TimestampFrames"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["NUMBER_PRECISION"]
       16 GETTABLEKS                       R1 R1 K4 ["Timestamp"]
       18 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R3 K2 [string.format]
        2 LOADK                            R5 K3 ["%."]
        3 GETTABLEKS                       R8 R1 K4 ["timeFormat"]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K5 ["Frames"]
        8 JUMPIFNOTEQ                      R8 R9 ; [+7]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K6 ["NUMBER_PRECISION"]
       13 GETTABLEKS                       R6 R6 K7 ["TimestampFrames"]
       15 JUMP                             ; [+5]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K6 ["NUMBER_PRECISION"]
       19 GETTABLEKS                       R6 R6 K8 ["Timestamp"]
       21 LOADK                            R7 K9 ["f"]
       22 CONCAT                           R4 R5 R7
       23 MOVE                             R5 R0
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R1 K4 ["timeFormat"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["Frames"]
       30 JUMPIFNOTEQ                      R4 R5 ; [+10]
       32 LOADK                            R6 K10 ["%.?0+$"]
       33 LOADK                            R7 K11 [""]
       34 NAMECALL                         R4 R3 K12 ["gsub"]
       36 CALL                             R4 3 1
       37 MOVE                             R3 R4
       38 JUMPIFNOTEQKS                    R3 K13 ["-0"] ; [+2]
       40 LOADK                            R3 K14 ["0"]
       41 JUMPIFEQKB                       R2 FALSE ; [+11]
       43 GETTABLEKS                       R4 R1 K4 ["timeFormat"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K15 ["Seconds"]
       48 JUMPIFNOTEQ                      R4 R5 ; [+4]
       50 MOVE                             R4 R3
       51 LOADK                            R5 K16 [" sec"]
       52 CONCAT                           R3 R4 R5
       53 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R1 K0 ["timeFormat"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["Frames"]
        6 JUMPIFNOTEQ                      R5 R6 ; [+5]
        8 GETTABLEKS                       R5 R1 K2 ["frameRate"]
       10 MUL                              R4 R0 R5
       11 JUMP                             ; [+1]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 1
       16 RETURN                           R3 1

PROTO_7:
        0 LOADN                            R1 0
        1 JUMPIFNOTLT                      R1 R0 ; [+4]
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K4 [{"timeFormat", "frameRate", "setTimeFormat", "setFrameRate"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["timeFormat"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["frameRate"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["setTimeFormat"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setFrameRate"]
       13 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["initialTimeFormat"]
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["timeFormat"]
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useState"]
       13 GETTABLEKS                       R4 R0 K3 ["initialFrameRate"]
       15 JUMPIF                           R4 ; [+3]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["frameRate"]
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R8 0 4
       38 MOVE                             R9 R1
       39 MOVE                             R10 R3
       40 MOVE                             R11 R2
       41 MOVE                             R12 R5
       42 SETLIST                          R8 R9 4 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K7 ["createElement"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K8 ["Provider"]
       51 DUPTABLE                         R9 K10 [{"value"}]
       52 SETTABLEKS                       R6 R9 K9 ["value"]
       54 GETTABLEKS                       R10 R0 K11 ["children"]
       56 CALL                             R7 3 -1
       57 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K12 [table.freeze]
       28 DUPTABLE                         R5 K15 [{["Seconds"] = "Seconds", ["Frames"] = "Frames"}]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K21 [{["timeFormat"], ["frameRate"] = 24, ["setTimeFormat"], ["setFrameRate"]}]
       31 GETTABLEKS                       R6 R4 K13 ["Seconds"]
       33 SETTABLEKS                       R6 R5 K16 ["timeFormat"]
       35 GETTABLEKS                       R6 R3 K22 ["createUnimplemented"]
       37 LOADK                            R7 K19 ["setTimeFormat"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K19 ["setTimeFormat"]
       41 GETTABLEKS                       R6 R3 K22 ["createUnimplemented"]
       43 LOADK                            R7 K20 ["setFrameRate"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R5 K20 ["setFrameRate"]
       47 GETTABLEKS                       R6 R2 K23 ["createContext"]
       49 MOVE                             R7 R5
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K24 [PROTO_0]
       52 CAPTURE                          VAL R4
       53 DUPCLOSURE                       R8 K25 [PROTO_1]
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R9 K26 [PROTO_2]
       56 CAPTURE                          VAL R4
       57 DUPCLOSURE                       R10 K27 [PROTO_3]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R11 K28 [PROTO_4]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 DUPCLOSURE                       R12 K29 [PROTO_5]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 DUPCLOSURE                       R13 K30 [PROTO_6]
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R14 K31 [PROTO_9]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 DUPTABLE                         R15 K43 [{["Context"], ["Provider"], ["TimeFormat"], ["DEFAULT_FRAME_RATE"] = 24, ["secondsToDisplay"], ["displayToSeconds"], ["snapDisplayValue"], ["getDisplayStep"], ["getDisplayPrecision"], ["formatDisplayValue"], ["formatSeconds"]}]
       74 SETTABLEKS                       R6 R15 K32 ["Context"]
       76 SETTABLEKS                       R14 R15 K33 ["Provider"]
       78 SETTABLEKS                       R4 R15 K34 ["TimeFormat"]
       80 SETTABLEKS                       R7 R15 K36 ["secondsToDisplay"]
       82 SETTABLEKS                       R8 R15 K37 ["displayToSeconds"]
       84 SETTABLEKS                       R9 R15 K38 ["snapDisplayValue"]
       86 SETTABLEKS                       R10 R15 K39 ["getDisplayStep"]
       88 SETTABLEKS                       R11 R15 K40 ["getDisplayPrecision"]
       90 SETTABLEKS                       R12 R15 K41 ["formatDisplayValue"]
       92 SETTABLEKS                       R13 R15 K42 ["formatSeconds"]
       94 RETURN                           R15 1
