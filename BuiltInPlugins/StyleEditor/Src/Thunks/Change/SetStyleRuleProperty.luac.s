PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetProperty"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 2
        7 FASTCALL1                        TYPEOF R1 ; [+2]
        8 GETIMPORT                        R0 K2 [typeof]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 DUPTABLE                         R5 K7 [{["eventType"], ["path"] = "Thunks/SetStyleRuleProperty", ["data"]}]
       15 GETUPVAL                         R6 6
       16 GETTABLEKS                       R6 R6 K8 ["PropertyEdited"]
       18 GETTABLEKS                       R6 R6 K9 ["rawValue"]
       20 CALL                             R6 0 1
       21 SETTABLEKS                       R6 R5 K3 ["eventType"]
       23 SETTABLEKS                       R0 R5 K6 ["data"]
       25 CALL                             R4 1 -1
       26 CALL                             R3 -1 -1
       27 NAMECALL                         R1 R1 K10 ["dispatch"]
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R2 7
       31 JUMPIFNOT                        R2 ; [+2]
       32 GETUPVAL                         R1 8
       33 JUMP                             ; [+7]
       34 LOADB                            R1 1
       35 JUMPIFEQKS                       R0 K11 ["Color3"] ; [+5]
       37 JUMPIFEQKS                       R0 K12 ["ColorSequence"] ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 JUMPIFNOT                        R1 ; [+3]
       42 GETIMPORT                        R2 K16 [Enum.FinishRecordingOperation.Append]
       44 RETURN                           R2 1
       45 GETIMPORT                        R2 K18 [Enum.FinishRecordingOperation.Commit]
       47 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K6 [{["Name"] = "StyleEditor/SetStyleRuleProperty", ["DisplayName"] = "StyleEditor - Set StyleRule Property", ["DoChange"]}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 SETTABLEKS                       R4 R3 K5 ["DoChange"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R0
        1 JUMPIFNOT                        R5 ; [+4]
        2 LOADK                            R7 K0 ["StyleRule"]
        3 NAMECALL                         R5 R0 K1 ["IsA"]
        5 CALL                             R5 2 1
        6 FASTCALL2K                       ASSERT R5 K2 ; [+4]
        8 LOADK                            R6 K2 ["expecting valid StyleRule"]
        9 GETIMPORT                        R4 K4 [assert]
       11 CALL                             R4 2 0
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Resources"]
       26 GETTABLEKS                       R3 R3 K9 ["Telemetry"]
       28 GETTABLEKS                       R3 R3 K10 ["ActionClickedEvent"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K11 ["Enums"]
       37 GETTABLEKS                       R4 R4 K12 ["ActionClickedEventType"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R5 R0 K5 ["Src"]
       44 GETTABLEKS                       R5 R5 K13 ["Thunks"]
       46 GETTABLEKS                       R5 R5 K9 ["Telemetry"]
       48 GETTABLEKS                       R5 R5 K14 ["SendTelemetryEvent"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R6 R0 K5 ["Src"]
       55 GETTABLEKS                       R6 R6 K15 ["Flags"]
       57 GETTABLEKS                       R6 R6 K16 ["getFFlagStyleEditorNumberSequenceUpdate"]
       59 CALL                             R5 1 1
       60 CALL                             R5 0 1
       61 GETIMPORT                        R6 K4 [require]
       63 GETTABLEKS                       R7 R0 K5 ["Src"]
       65 GETTABLEKS                       R7 R7 K13 ["Thunks"]
       67 GETTABLEKS                       R7 R7 K17 ["Types"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K4 [require]
       72 GETTABLEKS                       R8 R0 K5 ["Src"]
       74 GETTABLEKS                       R8 R8 K17 ["Types"]
       76 CALL                             R7 1 1
       77 DUPCLOSURE                       R8 K18 [PROTO_2]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 RETURN                           R8 1
