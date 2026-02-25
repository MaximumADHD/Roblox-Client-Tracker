PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAndInsertStudioDefaultStyleSheet"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 JUMPIFNOT                        R3 ; [+2]
        6 GETUPVAL                         R2 3
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 CALL                             R0 2 0
       10 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
       12 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R3 R1 K0 ["Plugin"]
        6 LOADK                            R5 K1 ["CustomizedDefaultInstances"]
        7 NAMECALL                         R3 R3 K2 ["GetPluginComponent"]
        9 CALL                             R3 2 1
       10 NAMECALL                         R4 R3 K3 ["GetCustomizedStylablePropertiesAsync"]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 LOADNIL                          R3
       15 GETUPVAL                         R4 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 NAMECALL                         R4 R0 K4 ["getState"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K5 ["Window"]
       22 GETTABLEKS                       R3 R5 K6 ["Source"]
       24 GETTABLEKS                       R4 R1 K7 ["recordChange"]
       26 DUPTABLE                         R5 K11 [{"Name", "DisplayName", "DoChange"}]
       27 LOADK                            R6 K12 ["StyleEditor/CreateStudioDefaultStyleSheet"]
       28 SETTABLEKS                       R6 R5 K8 ["Name"]
       30 LOADK                            R6 K13 ["StyleEditor - Create Studio Default StyleSheet"]
       31 SETTABLEKS                       R6 R5 K9 ["DisplayName"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          REF R2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          REF R3
       38 SETTABLEKS                       R6 R5 K10 ["DoChange"]
       40 CALL                             R4 1 0
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R4 R5 K14 ["StudioDefaultStyleSheet"]
       44 JUMPIFNOT                        R4 ; [+13]
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R4 R5 K15 ["createItemId"]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R5 R6 K14 ["StudioDefaultStyleSheet"]
       51 CALL                             R4 1 1
       52 GETUPVAL                         R7 5
       53 MOVE                             R8 R4
       54 CALL                             R7 1 -1
       55 NAMECALL                         R5 R0 K16 ["dispatch"]
       57 CALL                             R5 -1 0
       58 CLOSEUPVALS                      R2
       59 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Util"]
       23 GETTABLEKS                       R3 R4 K11 ["DesignHelpers"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R6 R1 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
       32 GETTABLEKS                       R4 R5 K12 ["TreeTableHelpers"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R5 R1 K9 ["Src"]
       37 GETTABLEKS                       R4 R5 K13 ["Actions"]
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R7 R4 K14 ["Window"]
       43 GETTABLEKS                       R6 R7 K15 ["SelectItem"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K8 [require]
       48 GETTABLEKS                       R9 R1 K9 ["Src"]
       50 GETTABLEKS                       R8 R9 K16 ["Reducers"]
       52 GETTABLEKS                       R7 R8 K17 ["RootReducer"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K8 [require]
       57 GETTABLEKS                       R10 R1 K9 ["Src"]
       59 GETTABLEKS                       R9 R10 K18 ["Thunks"]
       61 GETTABLEKS                       R8 R9 K19 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K8 [require]
       66 GETTABLEKS                       R11 R1 K9 ["Src"]
       68 GETTABLEKS                       R10 R11 K20 ["Flags"]
       70 GETTABLEKS                       R9 R10 K21 ["getEngineFeatureCustomizedDefaultInstances"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K8 [require]
       75 GETTABLEKS                       R12 R1 K9 ["Src"]
       77 GETTABLEKS                       R11 R12 K20 ["Flags"]
       79 GETTABLEKS                       R10 R11 K22 ["getFFlagStyleEditorPluginStyleSheets"]
       81 CALL                             R9 1 1
       82 CALL                             R9 0 1
       83 DUPCLOSURE                       R10 K23 [PROTO_2]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 RETURN                           R10 1
