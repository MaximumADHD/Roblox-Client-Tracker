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
       25 GETUPVAL                         R0 2
       26 LOADK                            R2 K7 ["StyleCategory"]
       27 GETUPVAL                         R3 0
       28 NAMECALL                         R0 R0 K8 ["SetAttribute"]
       30 CALL                             R0 3 0
       31 GETIMPORT                        R0 K12 [Enum.FinishRecordingOperation.Commit]
       33 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+7]
        3 NAMECALL                         R3 R0 K0 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K1 ["Window"]
        8 GETTABLEKS                       R2 R4 K2 ["Source"]
       10 GETTABLEKS                       R3 R1 K3 ["recordChange"]
       12 DUPTABLE                         R4 K7 [{"Name", "DisplayName", "DoChange"}]
       13 LOADK                            R5 K8 ["StyleEditor/SetStyleSheetCategory"]
       14 SETTABLEKS                       R5 R4 K4 ["Name"]
       16 LOADK                            R5 K9 ["StyleEditor - Set StyleSheet Category"]
       17 SETTABLEKS                       R5 R4 K5 ["DisplayName"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          REF R2
       24 SETTABLEKS                       R5 R4 K6 ["DoChange"]
       26 CALL                             R3 1 0
       27 CLOSEUPVALS                      R2
       28 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
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
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagStyleEditorPluginStyleSheets"]
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
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 RETURN                           R5 1
