PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetPropertyTransition"]
        5 CALL                             R0 3 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+42]
        2 GETUPVAL                         R3 1
        3 FASTCALL1                        TYPEOF R3 ; [+2]
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R3 R3 K2 ["GetPropertyTransitions"]
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+11]
       12 GETUPVAL                         R6 3
       13 GETTABLE                         R5 R3 R6
       14 JUMPIFEQKNIL                     R5 ; [+8]
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K3 ["TransitionEdited"]
       19 GETTABLEKS                       R4 R4 K4 ["rawValue"]
       21 CALL                             R4 0 1
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K5 ["TransitionCreated"]
       26 GETTABLEKS                       R4 R4 K4 ["rawValue"]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R7 5
       30 GETUPVAL                         R8 6
       31 DUPTABLE                         R9 K9 [{"eventType", "path", "data"}]
       32 SETTABLEKS                       R4 R9 K6 ["eventType"]
       34 SETTABLEKS                       R2 R9 K7 ["path"]
       36 GETUPVAL                         R10 3
       37 SETTABLEKS                       R10 R9 K8 ["data"]
       39 CALL                             R8 1 -1
       40 CALL                             R7 -1 -1
       41 NAMECALL                         R5 R0 K10 ["dispatch"]
       43 CALL                             R5 -1 0
       44 GETTABLEKS                       R2 R1 K11 ["recordChange"]
       46 DUPTABLE                         R3 K15 [{"Name", "DisplayName", "DoChange"}]
       47 LOADK                            R4 K16 ["StyleEditor/SetStyleRulePropertyTransition"]
       48 SETTABLEKS                       R4 R3 K12 ["Name"]
       50 LOADK                            R4 K17 ["StyleEditor - Set StyleRule Property Transition"]
       51 SETTABLEKS                       R4 R3 K13 ["DisplayName"]
       53 NEWCLOSURE                       R4 P0
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U1
       57 SETTABLEKS                       R4 R3 K14 ["DoChange"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R0
        1 JUMPIFNOT                        R4 ; [+4]
        2 LOADK                            R6 K0 ["StyleRule"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["expecting valid StyleRule"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 RETURN                           R3 1

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
       24 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       26 GETTABLEKS                       R3 R3 K9 ["Types"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K10 ["Telemetry"]
       37 GETTABLEKS                       R5 R5 K11 ["SendTelemetryEvent"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R0 K5 ["Src"]
       44 GETTABLEKS                       R6 R6 K12 ["Resources"]
       46 GETTABLEKS                       R6 R6 K10 ["Telemetry"]
       48 GETTABLEKS                       R6 R6 K13 ["ActionClickedEvent"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R7 R0 K5 ["Src"]
       55 GETTABLEKS                       R7 R7 K14 ["Enums"]
       57 GETTABLEKS                       R7 R7 K15 ["ActionClickedEventType"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R8 R0 K5 ["Src"]
       64 GETTABLEKS                       R8 R8 K9 ["Types"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K4 [require]
       69 GETTABLEKS                       R9 R0 K5 ["Src"]
       71 GETTABLEKS                       R9 R9 K16 ["Flags"]
       73 GETTABLEKS                       R9 R9 K17 ["getFFlagStyleEditorTransitionsTelemetry"]
       75 CALL                             R8 1 1
       76 CALL                             R8 0 1
       77 DUPCLOSURE                       R9 K18 [PROTO_2]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 RETURN                           R9 1
