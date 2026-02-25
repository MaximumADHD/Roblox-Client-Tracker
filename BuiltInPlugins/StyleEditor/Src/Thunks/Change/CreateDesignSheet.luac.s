PROTO_0:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["createDesign"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+7]
        3 NAMECALL                         R3 R0 K0 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K1 ["Window"]
        8 GETTABLEKS                       R2 R4 K2 ["Source"]
       10 LOADNIL                          R3
       11 GETTABLEKS                       R4 R1 K3 ["recordChange"]
       13 DUPTABLE                         R5 K7 [{"Name", "DisplayName", "DoChange"}]
       14 LOADK                            R6 K8 ["StyleEditor/CreateDesignSheet"]
       15 SETTABLEKS                       R6 R5 K4 ["Name"]
       17 LOADK                            R6 K9 ["StyleEditor - Create Design Sheet"]
       18 SETTABLEKS                       R6 R5 K5 ["DisplayName"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          REF R3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          REF R2
       24 SETTABLEKS                       R6 R5 K6 ["DoChange"]
       26 CALL                             R4 1 0
       27 JUMPIFNOT                        R3 ; [+11]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K10 ["createItemId"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETUPVAL                         R7 3
       34 MOVE                             R8 R4
       35 CALL                             R7 1 -1
       36 NAMECALL                         R5 R0 K11 ["dispatch"]
       38 CALL                             R5 -1 0
       39 CLOSEUPVALS                      R2
       40 RETURN                           R3 1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 RETURN                           R0 1

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
       25 GETTABLEKS                       R4 R5 K8 ["Util"]
       27 GETTABLEKS                       R3 R4 K9 ["DesignHelpers"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Src"]
       34 GETTABLEKS                       R5 R6 K8 ["Util"]
       36 GETTABLEKS                       R4 R5 K10 ["TreeTableHelpers"]
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R5 R0 K5 ["Src"]
       41 GETTABLEKS                       R4 R5 K11 ["Actions"]
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R7 R4 K12 ["Window"]
       47 GETTABLEKS                       R6 R7 K13 ["SelectItem"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R9 R0 K5 ["Src"]
       54 GETTABLEKS                       R8 R9 K14 ["Reducers"]
       56 GETTABLEKS                       R7 R8 K15 ["RootReducer"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R10 R0 K5 ["Src"]
       63 GETTABLEKS                       R9 R10 K16 ["Thunks"]
       65 GETTABLEKS                       R8 R9 K17 ["Types"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K18 [PROTO_2]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 RETURN                           R8 1
