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
        2 DUPTABLE                         R6 K2 [{"eventType", "path"}]
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R7 R7 K3 ["ButtonPressed"]
        6 GETTABLEKS                       R7 R7 K4 ["rawValue"]
        8 CALL                             R7 0 1
        9 SETTABLEKS                       R7 R6 K0 ["eventType"]
       11 LOADK                            R7 K5 ["ThemesView/ToggleTheme"]
       12 SETTABLEKS                       R7 R6 K1 ["path"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 -1
       16 NAMECALL                         R2 R0 K6 ["dispatch"]
       18 CALL                             R2 -1 0
       19 NAMECALL                         R2 R0 K7 ["getState"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K8 ["Window"]
       24 GETTABLEKS                       R3 R3 K9 ["Source"]
       26 GETTABLEKS                       R4 R1 K10 ["recordChange"]
       28 DUPTABLE                         R5 K14 [{"Name", "DisplayName", "DoChange"}]
       29 LOADK                            R6 K15 ["StyleEditor.SetDerives"]
       30 SETTABLEKS                       R6 R5 K11 ["Name"]
       32 LOADK                            R6 K16 ["Style Editor - Set Derives"]
       33 SETTABLEKS                       R6 R5 K12 ["DisplayName"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 SETTABLEKS                       R6 R5 K13 ["DoChange"]
       42 CALL                             R4 1 0
       43 RETURN                           R0 0

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
