PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K3 ["Folder"]
        7 SETTABLEKS                       R1 R0 K4 ["Name"]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["Parent"]
       16 JUMP                             ; [+1]
       17 MOVE                             R2 R0
       18 SETTABLEKS                       R2 R1 K5 ["Parent"]
       20 GETUPVAL                         R1 0
       21 LOADK                            R3 K6 ["StyleCategory"]
       22 LOADK                            R4 K7 ["Themes"]
       23 NAMECALL                         R1 R1 K8 ["SetAttribute"]
       25 CALL                             R1 3 0
       26 GETIMPORT                        R1 K12 [Enum.FinishRecordingOperation.Commit]
       28 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Window"]
        5 GETTABLEKS                       R3 R3 K2 ["Source"]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["getAUserDesignSheet"]
       11 MOVE                             R6 R3
       12 CALL                             R5 1 1
       13 GETTABLEKS                       R6 R1 K4 ["recordChange"]
       15 DUPTABLE                         R7 K8 [{"Name", "DisplayName", "DoChange"}]
       16 LOADK                            R8 K9 ["StyleEditor/CreateThemeCategory"]
       17 SETTABLEKS                       R8 R7 K5 ["Name"]
       19 LOADK                            R8 K10 ["StyleEditor - Create Theme Category"]
       20 SETTABLEKS                       R8 R7 K6 ["DisplayName"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          REF R4
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R8 R7 K7 ["DoChange"]
       28 CALL                             R6 1 0
       29 JUMPIFNOT                        R4 ; [+11]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K11 ["createItemId"]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 GETUPVAL                         R9 2
       36 MOVE                             R10 R6
       37 CALL                             R9 1 -1
       38 NAMECALL                         R7 R0 K12 ["dispatch"]
       40 CALL                             R7 -1 0
       41 CLOSEUPVALS                      R4
       42 RETURN                           R4 1

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
       17 GETTABLEKS                       R2 R2 K7 ["TreeTableHelpers"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Actions"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["Window"]
       28 GETTABLEKS                       R4 R4 K10 ["SelectItem"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R5 K6 ["Util"]
       37 GETTABLEKS                       R5 R5 K11 ["DesignHelpers"]
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
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 RETURN                           R7 1
