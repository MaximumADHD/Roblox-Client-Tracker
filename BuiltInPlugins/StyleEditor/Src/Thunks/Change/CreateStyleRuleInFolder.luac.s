PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StyleRule"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K4 ["Name"]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K5 ["Selector"]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R3 2
       15 NAMECALL                         R3 R3 K7 ["GetChildren"]
       17 CALL                             R3 1 1
       18 LENGTH                           R2 R3
       19 ADDK                             R1 R2 K6 [1]
       20 SETTABLEKS                       R1 R0 K8 ["Priority"]
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 2
       24 SETTABLEKS                       R1 R0 K9 ["Parent"]
       26 GETIMPORT                        R0 K13 [Enum.FinishRecordingOperation.Commit]
       28 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["recordChange"]
        3 DUPTABLE                         R4 K6 [{["Name"] = "StyleEditor/CreateStyleRuleInFolder", ["DisplayName"] = "StyleEditor - Create StyleRule in Folder", ["DoChange"]}]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R5 R4 K5 ["DoChange"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+12]
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K7 ["createItemId"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 GETUPVAL                         R6 4
       20 MOVE                             R7 R3
       21 CALL                             R6 1 -1
       22 NAMECALL                         R4 R0 K8 ["dispatch"]
       24 CALL                             R4 -1 0
       25 CLOSEUPVALS                      R2
       26 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

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
       35 GETTABLEKS                       R5 R5 K11 ["Thunks"]
       37 GETTABLEKS                       R5 R5 K12 ["Types"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K13 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 RETURN                           R5 1
