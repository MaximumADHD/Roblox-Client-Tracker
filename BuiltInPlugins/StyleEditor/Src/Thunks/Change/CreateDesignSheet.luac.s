PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["createDesign"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Window"]
        5 GETTABLEKS                       R3 R3 K2 ["Source"]
        7 LOADNIL                          R4
        8 GETTABLEKS                       R5 R1 K3 ["recordChange"]
       10 DUPTABLE                         R6 K9 [{["Name"] = "StyleEditor/CreateDesignSheet", ["DisplayName"] = "StyleEditor - Create Design Sheet", ["DoChange"]}]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          REF R4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R3
       15 SETTABLEKS                       R7 R6 K8 ["DoChange"]
       17 CALL                             R5 1 0
       18 JUMPIFNOT                        R4 ; [+11]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K10 ["createItemId"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R8 2
       25 MOVE                             R9 R5
       26 CALL                             R8 1 -1
       27 NAMECALL                         R6 R0 K11 ["dispatch"]
       29 CALL                             R6 -1 0
       30 CLOSEUPVALS                      R4
       31 RETURN                           R4 1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

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
       17 GETTABLEKS                       R2 R2 K7 ["DesignHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["TreeTableHelpers"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R3 K9 ["Actions"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K10 ["Window"]
       37 GETTABLEKS                       R5 R5 K11 ["SelectItem"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R0 K5 ["Src"]
       44 GETTABLEKS                       R6 R6 K12 ["Reducers"]
       46 GETTABLEKS                       R6 R6 K13 ["RootReducer"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R7 K14 ["Thunks"]
       55 GETTABLEKS                       R7 R7 K15 ["Types"]
       57 CALL                             R6 1 1
       58 DUPCLOSURE                       R7 K16 [PROTO_2]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 RETURN                           R7 1
