PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTLE                      R2 R1 ; [+2]
        3 RETURN                           R0 1
        4 GETIMPORT                        R2 K2 [table.move]
        6 MOVE                             R3 R0
        7 LOADN                            R4 1
        8 MOVE                             R5 R1
        9 LOADN                            R6 1
       10 NEWTABLE                         R7 0 0
       12 CALL                             R2 5 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 DUPTABLE                         R1 K6 [{["memory"], ["cursor"] = 1, ["recordingState"] = "none"}]
        4 NEWTABLE                         R2 0 1
        6 GETUPVAL                         R3 1
        7 SETLIST                          R2 R3 1 [1]
        9 SETTABLEKS                       R2 R1 K1 ["memory"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K0 ["memory"]
        5 GETTABLEKS                       R4 R1 K1 ["cursor"]
        7 GETTABLE                         R2 R3 R4
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R3 ; [+2]
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+9]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R3 R0 K3 ["memory"]
       10 GETTABLEKS                       R4 R0 K4 ["cursor"]
       12 GETTABLE                         R2 R3 R4
       13 CALL                             R1 1 1
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R4 R0 K3 ["memory"]
       19 GETTABLEKS                       R5 R0 K4 ["cursor"]
       21 GETTABLE                         R3 R4 R5
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 1
       26 GETIMPORT                        R2 K7 [table.clone]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 MOVE                             R0 R2
       31 GETTABLEKS                       R2 R0 K8 ["recordingState"]
       33 JUMPIFNOTEQKS                    R2 K9 ["active"] ; [+4]
       35 LOADK                            R2 K10 ["ready"]
       36 SETTABLEKS                       R2 R0 K8 ["recordingState"]
       38 GETIMPORT                        R3 K7 [table.clone]
       40 GETTABLEKS                       R4 R0 K3 ["memory"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R0 K4 ["cursor"]
       45 LENGTH                           R5 R3
       46 JUMPIFNOTLE                      R5 R4 ; [+3]
       48 MOVE                             R2 R3
       49 JUMP                             ; [+10]
       50 GETIMPORT                        R5 K12 [table.move]
       52 MOVE                             R6 R3
       53 LOADN                            R7 1
       54 MOVE                             R8 R4
       55 LOADN                            R9 1
       56 NEWTABLE                         R10 0 0
       58 CALL                             R5 5 1
       59 MOVE                             R2 R5
       60 SETTABLEKS                       R2 R0 K3 ["memory"]
       62 GETTABLEKS                       R3 R0 K3 ["memory"]
       64 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       66 MOVE                             R4 R1
       67 GETIMPORT                        R2 K14 [table.insert]
       69 CALL                             R2 2 0
       70 GETTABLEKS                       R2 R0 K4 ["cursor"]
       72 ADDK                             R2 R2 K15 [1]
       73 SETTABLEKS                       R2 R0 K4 ["cursor"]
       75 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 LOADK                            R1 K3 ["ready"]
        6 SETTABLEKS                       R1 R0 K4 ["recordingState"]
        8 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R3 ; [+2]
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+9]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R3 R0 K3 ["memory"]
       10 GETTABLEKS                       R4 R0 K4 ["cursor"]
       12 GETTABLE                         R2 R3 R4
       13 CALL                             R1 1 1
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R4 R0 K3 ["memory"]
       19 GETTABLEKS                       R5 R0 K4 ["cursor"]
       21 GETTABLE                         R3 R4 R5
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 1
       26 GETIMPORT                        R2 K7 [table.clone]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 MOVE                             R0 R2
       31 GETIMPORT                        R2 K7 [table.clone]
       33 GETTABLEKS                       R3 R0 K3 ["memory"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R0 K3 ["memory"]
       38 GETTABLEKS                       R2 R0 K8 ["recordingState"]
       40 JUMPIFNOTEQKS                    R2 K9 ["active"] ; [+7]
       42 GETTABLEKS                       R2 R0 K3 ["memory"]
       44 GETTABLEKS                       R3 R0 K4 ["cursor"]
       46 SETTABLE                         R1 R2 R3
       47 RETURN                           R0 1
       48 GETTABLEKS                       R3 R0 K3 ["memory"]
       50 GETTABLEKS                       R4 R0 K4 ["cursor"]
       52 LENGTH                           R5 R3
       53 JUMPIFNOTLE                      R5 R4 ; [+3]
       55 MOVE                             R2 R3
       56 JUMP                             ; [+10]
       57 GETIMPORT                        R5 K11 [table.move]
       59 MOVE                             R6 R3
       60 LOADN                            R7 1
       61 MOVE                             R8 R4
       62 LOADN                            R9 1
       63 NEWTABLE                         R10 0 0
       65 CALL                             R5 5 1
       66 MOVE                             R2 R5
       67 SETTABLEKS                       R2 R0 K3 ["memory"]
       69 GETTABLEKS                       R3 R0 K3 ["memory"]
       71 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       73 MOVE                             R4 R1
       74 GETIMPORT                        R2 K13 [table.insert]
       76 CALL                             R2 2 0
       77 GETTABLEKS                       R2 R0 K4 ["cursor"]
       79 ADDK                             R2 R2 K14 [1]
       80 SETTABLEKS                       R2 R0 K4 ["cursor"]
       82 LOADK                            R2 K9 ["active"]
       83 SETTABLEKS                       R2 R0 K8 ["recordingState"]
       85 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Recording already finished"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 LOADK                            R1 K3 ["none"]
        6 SETTABLEKS                       R1 R0 K4 ["recordingState"]
        8 RETURN                           R0 1

PROTO_10:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 DUPCLOSURE                       R1 K0 [PROTO_9]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K0 ["recordingState"]
        5 JUMPIFEQKS                       R2 K1 ["none"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       11 LOADK                            R2 K2 ["Recording already in progress"]
       12 GETIMPORT                        R0 K4 [assert]
       14 CALL                             R0 2 0
       15 LOADB                            R0 0
       16 GETUPVAL                         R1 1
       17 DUPCLOSURE                       R2 K5 [PROTO_6]
       18 CALL                             R1 1 0
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          REF R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 NEWCLOSURE                       R2 P2
       24 CAPTURE                          REF R0
       25 CAPTURE                          UPVAL U1
       26 DUPTABLE                         R3 K8 [{"set", "finish"}]
       27 SETTABLEKS                       R1 R3 K6 ["set"]
       29 SETTABLEKS                       R2 R3 K7 ["finish"]
       31 CLOSEUPVALS                      R0
       32 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["recordingState"]
        2 JUMPIFNOTEQKS                    R1 K1 ["active"] ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R3 R0 K2 ["cursor"]
        7 GETUPVAL                         R4 0
        8 ADD                              R2 R3 R4
        9 LOADN                            R3 1
       10 GETTABLEKS                       R5 R0 K3 ["memory"]
       12 LENGTH                           R4 R5
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R1 K6 [math.clamp]
       16 CALL                             R1 3 1
       17 GETTABLEKS                       R2 R0 K2 ["cursor"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+2]
       21 RETURN                           R0 1
       22 GETIMPORT                        R2 K9 [table.clone]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 MOVE                             R0 R2
       27 SETTABLEKS                       R1 R0 K2 ["cursor"]
       29 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 -1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R2
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U2
       29 NEWCLOSURE                       R6 P3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U2
       33 NEWCLOSURE                       R7 P4
       34 CAPTURE                          VAL R3
       35 NEWCLOSURE                       R8 P5
       36 CAPTURE                          VAL R3
       37 NEWCLOSURE                       R9 P6
       38 CAPTURE                          VAL R3
       39 DUPTABLE                         R10 K7 [{"observeValue", "set", "createRecording", "undo", "redo"}]
       40 SETTABLEKS                       R4 R10 K2 ["observeValue"]
       42 SETTABLEKS                       R5 R10 K3 ["set"]
       44 SETTABLEKS                       R6 R10 K4 ["createRecording"]
       46 SETTABLEKS                       R8 R10 K5 ["undo"]
       48 SETTABLEKS                       R9 R10 K6 ["redo"]
       50 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Libraries"]
       27 GETTABLEKS                       R4 R4 K11 ["shallowEqual"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 DUPCLOSURE                       R5 K13 [PROTO_16]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
