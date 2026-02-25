PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["Clone"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K1 ["Parent"]
        9 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Commit]
       11 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["recordChange"]
        3 DUPTABLE                         R4 K4 [{"Name", "DisplayName", "DoChange"}]
        4 LOADK                            R5 K5 ["StyleEditor/DuplicateInstance"]
        5 SETTABLEKS                       R5 R4 K1 ["Name"]
        7 LOADK                            R5 K6 ["StyleEditor - Duplicate Instance"]
        8 SETTABLEKS                       R5 R4 K2 ["DisplayName"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R5 R4 K3 ["DoChange"]
       16 CALL                             R3 1 0
       17 JUMPIFNOT                        R2 ; [+11]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K7 ["createItemId"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R3
       25 CALL                             R6 1 -1
       26 NAMECALL                         R4 R0 K8 ["dispatch"]
       28 CALL                             R4 -1 0
       29 CLOSEUPVALS                      R2
       30 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["TreeTableHelpers"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R3 K8 ["Actions"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R2 K9 ["Window"]
       28 GETTABLEKS                       R4 R5 K10 ["SelectItem"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R7 R0 K5 ["Src"]
       35 GETTABLEKS                       R6 R7 K11 ["Reducers"]
       37 GETTABLEKS                       R5 R6 K12 ["RootReducer"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Src"]
       44 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       46 GETTABLEKS                       R6 R7 K14 ["Types"]
       48 CALL                             R5 1 1
       49 DUPCLOSURE                       R6 K15 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 RETURN                           R6 1
