PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StyleSheet"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K3 ["StyleSheet"]
        7 SETTABLEKS                       R1 R0 K4 ["Name"]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 2
       12 OR                               R2 R3 R0
       13 SETTABLEKS                       R2 R1 K5 ["Parent"]
       15 GETUPVAL                         R1 0
       16 LOADK                            R3 K6 ["StyleCategory"]
       17 LOADK                            R4 K7 ["Themes"]
       18 NAMECALL                         R1 R1 K8 ["SetAttribute"]
       20 CALL                             R1 3 0
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K9 ["setAsThemeForAll"]
       24 GETUPVAL                         R2 0
       25 GETUPVAL                         R3 1
       26 CALL                             R1 2 0
       27 GETIMPORT                        R1 K13 [Enum.FinishRecordingOperation.Commit]
       29 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Window"]
        5 GETTABLEKS                       R3 R3 K2 ["Source"]
        7 LOADNIL                          R4
        8 GETTABLEKS                       R5 R1 K3 ["recordChange"]
       10 DUPTABLE                         R6 K7 [{"Name", "DisplayName", "DoChange"}]
       11 LOADK                            R7 K8 ["StyleEditor/CreateThemeSheet"]
       12 SETTABLEKS                       R7 R6 K4 ["Name"]
       14 LOADK                            R7 K9 ["StyleEditor - Create Theme Sheet"]
       15 SETTABLEKS                       R7 R6 K5 ["DisplayName"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          REF R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R7 R6 K6 ["DoChange"]
       24 CALL                             R5 1 0
       25 JUMPIFNOT                        R4 ; [+11]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K10 ["createItemId"]
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 GETUPVAL                         R8 3
       32 MOVE                             R9 R5
       33 CALL                             R8 1 -1
       34 NAMECALL                         R6 R0 K11 ["dispatch"]
       36 CALL                             R6 -1 0
       37 CLOSEUPVALS                      R4
       38 RETURN                           R4 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

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
