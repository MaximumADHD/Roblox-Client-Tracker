PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAndInsertStudioDefaultStyleSheet"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

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
       14 NAMECALL                         R3 R0 K4 ["getState"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K5 ["Window"]
       19 GETTABLEKS                       R4 R4 K6 ["Source"]
       21 GETTABLEKS                       R5 R1 K7 ["recordChange"]
       23 DUPTABLE                         R6 K13 [{["Name"] = "StyleEditor/CreateStudioDefaultStyleSheet", ["DisplayName"] = "StyleEditor - Create Studio Default StyleSheet", ["DoChange"]}]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          REF R2
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R7 R6 K12 ["DoChange"]
       30 CALL                             R5 1 0
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K14 ["StudioDefaultStyleSheet"]
       34 JUMPIFNOT                        R5 ; [+13]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K15 ["createItemId"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K14 ["StudioDefaultStyleSheet"]
       41 CALL                             R5 1 1
       42 GETUPVAL                         R8 4
       43 MOVE                             R9 R5
       44 CALL                             R8 1 -1
       45 NAMECALL                         R6 R0 K16 ["dispatch"]
       47 CALL                             R6 -1 0
       48 CLOSEUPVALS                      R2
       49 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["DesignHelpers"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Util"]
       32 GETTABLEKS                       R4 R4 K12 ["TreeTableHelpers"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R1 K9 ["Src"]
       37 GETTABLEKS                       R4 R4 K13 ["Actions"]
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R6 R4 K14 ["Window"]
       43 GETTABLEKS                       R6 R6 K15 ["SelectItem"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K8 [require]
       48 GETTABLEKS                       R7 R1 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K16 ["Reducers"]
       52 GETTABLEKS                       R7 R7 K17 ["RootReducer"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K8 [require]
       57 GETTABLEKS                       R8 R1 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K18 ["Thunks"]
       61 GETTABLEKS                       R8 R8 K19 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K8 [require]
       66 GETTABLEKS                       R9 R1 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K20 ["Flags"]
       70 GETTABLEKS                       R9 R9 K21 ["getEngineFeatureCustomizedDefaultInstances"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K22 [PROTO_2]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R5
       79 RETURN                           R9 1
