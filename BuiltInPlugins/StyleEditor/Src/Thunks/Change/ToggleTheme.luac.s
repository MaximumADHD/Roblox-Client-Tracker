PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserDesignSheets"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 3
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["replaceDerive"]
        9 MOVE                             R6 R4
       10 GETUPVAL                         R7 2
       11 GETUPVAL                         R8 3
       12 CALL                             R5 3 0
       13 FORGLOOP                         R0 2 ; [-8]
       15 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Commit]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 DUPTABLE                         R6 K3 [{[1], ["path"] = "ThemesView/ToggleTheme"}]
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R7 R7 K4 ["ButtonPressed"]
        6 GETTABLEKS                       R7 R7 K5 ["rawValue"]
        8 CALL                             R7 0 1
        9 SETTABLEKS                       R7 R6 K0 ["eventType"]
       11 CALL                             R5 1 -1
       12 CALL                             R4 -1 -1
       13 NAMECALL                         R2 R0 K6 ["dispatch"]
       15 CALL                             R2 -1 0
       16 NAMECALL                         R2 R0 K7 ["getState"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["Window"]
       21 GETTABLEKS                       R3 R3 K9 ["Source"]
       23 GETTABLEKS                       R4 R1 K10 ["recordChange"]
       25 DUPTABLE                         R5 K16 [{["Name"] = "StyleEditor.SetDerives", ["DisplayName"] = "Style Editor - Set Derives", ["DoChange"]}]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 SETTABLEKS                       R6 R5 K15 ["DoChange"]
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

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
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["DesignHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K10 ["Resources"]
       35 GETTABLEKS                       R4 R4 K11 ["Telemetry"]
       37 GETTABLEKS                       R4 R4 K12 ["ActionClickedEvent"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R5 R0 K5 ["Src"]
       44 GETTABLEKS                       R5 R5 K13 ["Enums"]
       46 GETTABLEKS                       R5 R5 K14 ["ActionClickedEventType"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K4 [require]
       51 GETTABLEKS                       R6 R0 K5 ["Src"]
       53 GETTABLEKS                       R6 R6 K15 ["Thunks"]
       55 GETTABLEKS                       R6 R6 K11 ["Telemetry"]
       57 GETTABLEKS                       R6 R6 K16 ["SendTelemetryEvent"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K4 [require]
       62 GETTABLEKS                       R7 R0 K5 ["Src"]
       64 GETTABLEKS                       R7 R7 K15 ["Thunks"]
       66 GETTABLEKS                       R7 R7 K17 ["Types"]
       68 CALL                             R6 1 1
       69 DUPCLOSURE                       R7 K18 [PROTO_2]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 RETURN                           R7 1
