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
       14 DUPTABLE                         R5 K6 [{"eventType", "path", "data"}]
       15 GETUPVAL                         R8 6
       16 GETTABLEKS                       R7 R8 K7 ["PropertyEdited"]
       18 GETTABLEKS                       R6 R7 K8 ["rawValue"]
       20 CALL                             R6 0 1
       21 SETTABLEKS                       R6 R5 K3 ["eventType"]
       23 LOADK                            R6 K9 ["Thunks/SetStyleRuleProperty"]
       24 SETTABLEKS                       R6 R5 K4 ["path"]
       26 SETTABLEKS                       R0 R5 K5 ["data"]
       28 CALL                             R4 1 -1
       29 CALL                             R3 -1 -1
       30 NAMECALL                         R1 R1 K10 ["dispatch"]
       32 CALL                             R1 -1 0
       33 GETUPVAL                         R2 7
       34 JUMPIFNOT                        R2 ; [+2]
       35 GETUPVAL                         R1 8
       36 JUMP                             ; [+7]
       37 LOADB                            R1 1
       38 JUMPIFEQKS                       R0 K11 ["Color3"] ; [+5]
       40 JUMPIFEQKS                       R0 K12 ["ColorSequence"] ; [+2]
       42 LOADB                            R1 0 +1
       43 LOADB                            R1 1
       44 JUMPIFNOT                        R1 ; [+3]
       45 GETIMPORT                        R2 K16 [Enum.FinishRecordingOperation.Append]
       47 RETURN                           R2 1
       48 GETIMPORT                        R2 K18 [Enum.FinishRecordingOperation.Commit]
       50 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K4 [{"Name", "DisplayName", "DoChange"}]
        3 LOADK                            R4 K5 ["StyleEditor/SetStyleRuleProperty"]
        4 SETTABLEKS                       R4 R3 K1 ["Name"]
        6 LOADK                            R4 K6 ["StyleEditor - Set StyleRule Property"]
        7 SETTABLEKS                       R4 R3 K2 ["DisplayName"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 SETTABLEKS                       R4 R3 K3 ["DoChange"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Resources"]
       26 GETTABLEKS                       R4 R5 K9 ["Telemetry"]
       28 GETTABLEKS                       R3 R4 K10 ["ActionClickedEvent"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R6 K11 ["Enums"]
       37 GETTABLEKS                       R4 R5 K12 ["ActionClickedEventType"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Src"]
       44 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       46 GETTABLEKS                       R6 R7 K9 ["Telemetry"]
       48 GETTABLEKS                       R5 R6 K14 ["SendTelemetryEvent"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["Src"]
       55 GETTABLEKS                       R7 R8 K15 ["Flags"]
       57 GETTABLEKS                       R6 R7 K16 ["getFFlagStyleEditorNumberSequenceUpdate"]
       59 CALL                             R5 1 1
       60 CALL                             R5 0 1
       61 GETIMPORT                        R6 K4 [require]
       63 GETTABLEKS                       R9 R0 K5 ["Src"]
       65 GETTABLEKS                       R8 R9 K13 ["Thunks"]
       67 GETTABLEKS                       R7 R8 K17 ["Types"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K4 [require]
       72 GETTABLEKS                       R9 R0 K5 ["Src"]
       74 GETTABLEKS                       R8 R9 K17 ["Types"]
       76 CALL                             R7 1 1
       77 DUPCLOSURE                       R8 K18 [PROTO_2]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 RETURN                           R8 1
