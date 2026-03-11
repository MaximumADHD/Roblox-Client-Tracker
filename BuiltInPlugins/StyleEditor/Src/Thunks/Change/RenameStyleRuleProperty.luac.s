PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["SetProperty"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K0 ["SetProperty"]
       11 CALL                             R0 3 0
       12 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOTEQ                      R2 R3 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["findFirstClassSelector"]
        8 GETUPVAL                         R3 3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R3 R4 K1 ["getPropertySchema"]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 5
       19 JUMPIFNOT                        R4 ; [+25]
       20 GETUPVAL                         R4 0
       21 JUMPIFNOTEQKS                    R4 K2 [""] ; [+23]
       23 GETUPVAL                         R6 6
       24 GETUPVAL                         R7 7
       25 DUPTABLE                         R8 K6 [{"eventType", "path", "data"}]
       26 GETUPVAL                         R11 8
       27 GETTABLEKS                       R10 R11 K7 ["PropertyCreated"]
       29 GETTABLEKS                       R9 R10 K8 ["rawValue"]
       31 CALL                             R9 0 1
       32 SETTABLEKS                       R9 R8 K3 ["eventType"]
       34 LOADK                            R9 K2 [""]
       35 SETTABLEKS                       R9 R8 K4 ["path"]
       37 GETUPVAL                         R9 1
       38 SETTABLEKS                       R9 R8 K5 ["data"]
       40 CALL                             R7 1 -1
       41 CALL                             R6 -1 -1
       42 NAMECALL                         R4 R0 K9 ["dispatch"]
       44 CALL                             R4 -1 0
       45 GETTABLEKS                       R4 R3 K10 ["GetDefaultValue"]
       47 CALL                             R4 0 1
       48 GETUPVAL                         R5 3
       49 GETUPVAL                         R7 0
       50 NAMECALL                         R5 R5 K11 ["GetPropertyResolved"]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R6 3
       54 GETUPVAL                         R8 0
       55 NAMECALL                         R6 R6 K12 ["GetProperty"]
       57 CALL                             R6 2 1
       58 FASTCALL1                        TYPEOF R4 ; [+3]
       59 MOVE                             R9 R4
       60 GETIMPORT                        R8 K14 [typeof]
       62 CALL                             R8 1 1
       63 FASTCALL1                        TYPEOF R5 ; [+3]
       64 MOVE                             R10 R5
       65 GETIMPORT                        R9 K14 [typeof]
       67 CALL                             R9 1 1
       68 JUMPIFNOTEQ                      R8 R9 ; [+3]
       70 MOVE                             R7 R6
       71 JUMP                             ; [+1]
       72 MOVE                             R7 R4
       73 GETTABLEKS                       R8 R1 K15 ["recordChange"]
       75 DUPTABLE                         R9 K19 [{"Name", "DisplayName", "DoChange"}]
       76 LOADK                            R10 K20 ["StyleEditor/RenameStyleRuleProperty"]
       77 SETTABLEKS                       R10 R9 K16 ["Name"]
       79 LOADK                            R10 K21 ["StyleEditor - Rename StyleRule Property"]
       80 SETTABLEKS                       R10 R9 K17 ["DisplayName"]
       82 NEWCLOSURE                       R10 P0
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R10 R9 K18 ["DoChange"]
       89 CALL                             R8 1 0
       90 RETURN                           R0 0

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
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["SelectorHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["StyleSchema"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K9 ["Reducers"]
       35 GETTABLEKS                       R4 R5 K10 ["RootReducer"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["Src"]
       42 GETTABLEKS                       R7 R8 K11 ["Resources"]
       44 GETTABLEKS                       R6 R7 K12 ["Telemetry"]
       46 GETTABLEKS                       R5 R6 K13 ["ActionClickedEvent"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K4 [require]
       51 GETTABLEKS                       R8 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R8 K14 ["Enums"]
       55 GETTABLEKS                       R6 R7 K15 ["ActionClickedEventType"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K4 [require]
       60 GETTABLEKS                       R10 R0 K5 ["Src"]
       62 GETTABLEKS                       R9 R10 K16 ["Thunks"]
       64 GETTABLEKS                       R8 R9 K12 ["Telemetry"]
       66 GETTABLEKS                       R7 R8 K17 ["SendTelemetryEvent"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K4 [require]
       71 GETTABLEKS                       R10 R0 K5 ["Src"]
       73 GETTABLEKS                       R9 R10 K18 ["Flags"]
       75 GETTABLEKS                       R8 R9 K19 ["getFFlagStyleQuery"]
       77 CALL                             R7 1 1
       78 CALL                             R7 0 1
       79 GETIMPORT                        R8 K4 [require]
       81 GETTABLEKS                       R11 R0 K5 ["Src"]
       83 GETTABLEKS                       R10 R11 K16 ["Thunks"]
       85 GETTABLEKS                       R9 R10 K20 ["Types"]
       87 CALL                             R8 1 1
       88 DUPCLOSURE                       R9 K21 [PROTO_2]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 RETURN                           R9 1
