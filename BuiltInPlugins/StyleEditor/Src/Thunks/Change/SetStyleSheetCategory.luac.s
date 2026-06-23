PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Themes"] ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["setAsThemeForAll"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 CALL                             R0 2 0
        9 JUMP                             ; [+15]
       10 GETUPVAL                         R0 0
       11 JUMPIFNOTEQKS                    R0 K2 ["Tokens"] ; [+8]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K3 ["setAsTokenForAll"]
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 3
       18 CALL                             R0 2 0
       19 JUMP                             ; [+5]
       20 GETIMPORT                        R0 K5 [warn]
       22 LOADK                            R1 K6 ["Unknown StyleSheetCategory:"]
       23 GETUPVAL                         R2 0
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 4
       26 JUMPIF                           R0 ; [+6]
       27 GETUPVAL                         R0 2
       28 LOADK                            R2 K7 ["StyleCategory"]
       29 GETUPVAL                         R3 0
       30 NAMECALL                         R0 R0 K8 ["SetAttribute"]
       32 CALL                             R0 3 0
       33 GETIMPORT                        R0 K12 [Enum.FinishRecordingOperation.Commit]
       35 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Window"]
        5 GETTABLEKS                       R3 R3 K2 ["Source"]
        7 GETTABLEKS                       R4 R1 K3 ["recordChange"]
        9 DUPTABLE                         R5 K7 [{"Name", "DisplayName", "DoChange"}]
       10 LOADK                            R6 K8 ["StyleEditor/SetStyleSheetCategory"]
       11 SETTABLEKS                       R6 R5 K4 ["Name"]
       13 LOADK                            R6 K9 ["StyleEditor - Set StyleSheet Category"]
       14 SETTABLEKS                       R6 R5 K5 ["DisplayName"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R6 R5 K6 ["DoChange"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagStyleEditorFixDerivesOrdering"]
       19 CALL                             R1 1 1
       20 CALL                             R1 0 1
       21 GETIMPORT                        R2 K4 [require]
       23 GETTABLEKS                       R3 R0 K5 ["Src"]
       25 GETTABLEKS                       R3 R3 K8 ["Util"]
       27 GETTABLEKS                       R3 R3 K9 ["DesignHelpers"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K4 [require]
       32 GETTABLEKS                       R4 R0 K5 ["Src"]
       34 GETTABLEKS                       R4 R4 K10 ["Reducers"]
       36 GETTABLEKS                       R4 R4 K11 ["RootReducer"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K4 [require]
       41 GETTABLEKS                       R5 R0 K5 ["Src"]
       43 GETTABLEKS                       R5 R5 K12 ["Thunks"]
       45 GETTABLEKS                       R5 R5 K13 ["Types"]
       47 CALL                             R4 1 1
       48 DUPCLOSURE                       R5 K14 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 RETURN                           R5 1
