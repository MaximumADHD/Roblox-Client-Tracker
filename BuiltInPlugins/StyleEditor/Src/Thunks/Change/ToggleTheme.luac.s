PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserDesignSheets"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 3
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["replaceDerive"]
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
        3 GETUPVAL                         R9 2
        4 GETTABLEKS                       R8 R9 K3 ["ButtonPressed"]
        6 GETTABLEKS                       R7 R8 K4 ["rawValue"]
        8 CALL                             R7 0 1
        9 SETTABLEKS                       R7 R6 K0 ["eventType"]
       11 LOADK                            R7 K5 ["ThemesView/ToggleTheme"]
       12 SETTABLEKS                       R7 R6 K1 ["path"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 -1
       16 NAMECALL                         R2 R0 K6 ["dispatch"]
       18 CALL                             R2 -1 0
       19 LOADNIL                          R2
       20 GETUPVAL                         R3 3
       21 JUMPIFNOT                        R3 ; [+7]
       22 NAMECALL                         R3 R0 K7 ["getState"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["Window"]
       27 GETTABLEKS                       R2 R4 K9 ["Source"]
       29 GETTABLEKS                       R3 R1 K10 ["recordChange"]
       31 DUPTABLE                         R4 K14 [{"Name", "DisplayName", "DoChange"}]
       32 LOADK                            R5 K15 ["StyleEditor.SetDerives"]
       33 SETTABLEKS                       R5 R4 K11 ["Name"]
       35 LOADK                            R5 K16 ["Style Editor - Set Derives"]
       36 SETTABLEKS                       R5 R4 K12 ["DisplayName"]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          REF R2
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 SETTABLEKS                       R5 R4 K13 ["DoChange"]
       45 CALL                             R3 1 0
       46 CLOSEUPVALS                      R2
       47 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Flags"]
       17 GETTABLEKS                       R2 R3 K7 ["getFFlagStyleEditorPluginStyleSheets"]
       19 CALL                             R1 1 1
       20 CALL                             R1 0 1
       21 GETIMPORT                        R2 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["Src"]
       25 GETTABLEKS                       R4 R5 K8 ["Reducers"]
       27 GETTABLEKS                       R3 R4 K9 ["RootReducer"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Src"]
       34 GETTABLEKS                       R5 R6 K10 ["Util"]
       36 GETTABLEKS                       R4 R5 K11 ["DesignHelpers"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K4 [require]
       41 GETTABLEKS                       R8 R0 K5 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Resources"]
       45 GETTABLEKS                       R6 R7 K13 ["Telemetry"]
       47 GETTABLEKS                       R5 R6 K14 ["ActionClickedEvent"]
       49 CALL                             R4 1 1
       50 GETIMPORT                        R5 K4 [require]
       52 GETTABLEKS                       R8 R0 K5 ["Src"]
       54 GETTABLEKS                       R7 R8 K15 ["Enums"]
       56 GETTABLEKS                       R6 R7 K16 ["ActionClickedEventType"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K4 [require]
       61 GETTABLEKS                       R10 R0 K5 ["Src"]
       63 GETTABLEKS                       R9 R10 K17 ["Thunks"]
       65 GETTABLEKS                       R8 R9 K13 ["Telemetry"]
       67 GETTABLEKS                       R7 R8 K18 ["SendTelemetryEvent"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K4 [require]
       72 GETTABLEKS                       R10 R0 K5 ["Src"]
       74 GETTABLEKS                       R9 R10 K17 ["Thunks"]
       76 GETTABLEKS                       R8 R9 K19 ["Types"]
       78 CALL                             R7 1 1
       79 DUPCLOSURE                       R8 K20 [PROTO_2]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 RETURN                           R8 1
