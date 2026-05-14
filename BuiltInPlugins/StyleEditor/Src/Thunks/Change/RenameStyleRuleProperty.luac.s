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
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["findFirstClassSelector"]
        8 GETUPVAL                         R3 3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K1 ["getPropertySchema"]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 5
       19 JUMPIF                           R4 ; [+2]
       20 GETUPVAL                         R4 6
       21 JUMPIFNOT                        R4 ; [+25]
       22 GETUPVAL                         R4 0
       23 JUMPIFNOTEQKS                    R4 K2 [""] ; [+23]
       25 GETUPVAL                         R6 7
       26 GETUPVAL                         R7 8
       27 DUPTABLE                         R8 K6 [{"eventType", "path", "data"}]
       28 GETUPVAL                         R9 9
       29 GETTABLEKS                       R9 R9 K7 ["PropertyCreated"]
       31 GETTABLEKS                       R9 R9 K8 ["rawValue"]
       33 CALL                             R9 0 1
       34 SETTABLEKS                       R9 R8 K3 ["eventType"]
       36 LOADK                            R9 K2 [""]
       37 SETTABLEKS                       R9 R8 K4 ["path"]
       39 GETUPVAL                         R9 1
       40 SETTABLEKS                       R9 R8 K5 ["data"]
       42 CALL                             R7 1 -1
       43 CALL                             R6 -1 -1
       44 NAMECALL                         R4 R0 K9 ["dispatch"]
       46 CALL                             R4 -1 0
       47 GETTABLEKS                       R4 R3 K10 ["GetDefaultValue"]
       49 CALL                             R4 0 1
       50 GETUPVAL                         R5 3
       51 GETUPVAL                         R7 0
       52 NAMECALL                         R5 R5 K11 ["GetPropertyResolved"]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 3
       56 GETUPVAL                         R8 0
       57 NAMECALL                         R6 R6 K12 ["GetProperty"]
       59 CALL                             R6 2 1
       60 FASTCALL1                        TYPEOF R4 ; [+3]
       61 MOVE                             R9 R4
       62 GETIMPORT                        R8 K14 [typeof]
       64 CALL                             R8 1 1
       65 FASTCALL1                        TYPEOF R5 ; [+3]
       66 MOVE                             R10 R5
       67 GETIMPORT                        R9 K14 [typeof]
       69 CALL                             R9 1 1
       70 JUMPIFNOTEQ                      R8 R9 ; [+3]
       72 MOVE                             R7 R6
       73 JUMP                             ; [+1]
       74 MOVE                             R7 R4
       75 GETTABLEKS                       R8 R1 K15 ["recordChange"]
       77 DUPTABLE                         R9 K19 [{"Name", "DisplayName", "DoChange"}]
       78 LOADK                            R10 K20 ["StyleEditor/RenameStyleRuleProperty"]
       79 SETTABLEKS                       R10 R9 K16 ["Name"]
       81 LOADK                            R10 K21 ["StyleEditor - Rename StyleRule Property"]
       82 SETTABLEKS                       R10 R9 K17 ["DisplayName"]
       84 NEWCLOSURE                       R10 P0
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R10 R9 K18 ["DoChange"]
       91 CALL                             R8 1 0
       92 RETURN                           R0 0

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
       22 CAPTURE                          UPVAL U6
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["SelectorHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["StyleSchema"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K9 ["Reducers"]
       35 GETTABLEKS                       R4 R4 K10 ["RootReducer"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Resources"]
       44 GETTABLEKS                       R5 R5 K12 ["Telemetry"]
       46 GETTABLEKS                       R5 R5 K13 ["ActionClickedEvent"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K4 [require]
       51 GETTABLEKS                       R6 R0 K5 ["Src"]
       53 GETTABLEKS                       R6 R6 K14 ["Enums"]
       55 GETTABLEKS                       R6 R6 K15 ["ActionClickedEventType"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K4 [require]
       60 GETTABLEKS                       R7 R0 K5 ["Src"]
       62 GETTABLEKS                       R7 R7 K16 ["Thunks"]
       64 GETTABLEKS                       R7 R7 K12 ["Telemetry"]
       66 GETTABLEKS                       R7 R7 K17 ["SendTelemetryEvent"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K4 [require]
       71 GETTABLEKS                       R8 R0 K5 ["Src"]
       73 GETTABLEKS                       R8 R8 K18 ["Flags"]
       75 GETTABLEKS                       R8 R8 K19 ["getFFlagStyleQuery"]
       77 CALL                             R7 1 1
       78 CALL                             R7 0 1
       79 GETIMPORT                        R8 K4 [require]
       81 GETTABLEKS                       R9 R0 K5 ["Src"]
       83 GETTABLEKS                       R9 R9 K18 ["Flags"]
       85 GETTABLEKS                       R9 R9 K20 ["getFFlagStyleEditorPropertyCreatedTelemetry"]
       87 CALL                             R8 1 1
       88 CALL                             R8 0 1
       89 GETIMPORT                        R9 K4 [require]
       91 GETTABLEKS                       R10 R0 K5 ["Src"]
       93 GETTABLEKS                       R10 R10 K16 ["Thunks"]
       95 GETTABLEKS                       R10 R10 K21 ["Types"]
       97 CALL                             R9 1 1
       98 DUPCLOSURE                       R10 K22 [PROTO_2]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 RETURN                           R10 1
