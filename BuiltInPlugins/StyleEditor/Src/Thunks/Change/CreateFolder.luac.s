PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K3 ["Folder"]
        7 SETTABLEKS                       R1 R0 K4 ["Name"]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K5 ["Parent"]
       13 GETIMPORT                        R0 K9 [Enum.FinishRecordingOperation.Commit]
       15 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["recordChange"]
        3 DUPTABLE                         R4 K6 [{["Name"] = "StyleEditor/CreateFolder", ["DisplayName"] = "StyleEditor - Create Folder", ["DoChange"]}]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R5 R4 K5 ["DoChange"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+12]
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K7 ["createItemId"]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 GETUPVAL                         R6 3
       19 MOVE                             R7 R3
       20 CALL                             R6 1 -1
       21 NAMECALL                         R4 R0 K8 ["dispatch"]
       23 CALL                             R4 -1 0
       24 CLOSEUPVALS                      R2
       25 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
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
