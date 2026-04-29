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
        3 DUPTABLE                         R4 K4 [{"Name", "DisplayName", "DoChange"}]
        4 LOADK                            R5 K5 ["StyleEditor/CreateFolder"]
        5 SETTABLEKS                       R5 R4 K1 ["Name"]
        7 LOADK                            R5 K6 ["StyleEditor - Create Folder"]
        8 SETTABLEKS                       R5 R4 K2 ["DisplayName"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R5 R4 K3 ["DoChange"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 1
       17 JUMPIFNOT                        R3 ; [+12]
       18 JUMPIFNOT                        R2 ; [+11]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K7 ["createItemId"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R3
       26 CALL                             R6 1 -1
       27 NAMECALL                         R4 R0 K8 ["dispatch"]
       29 CALL                             R4 -1 0
       30 CLOSEUPVALS                      R2
       31 RETURN                           R2 1

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
       35 GETTABLEKS                       R6 R7 K11 ["Thunks"]
       37 GETTABLEKS                       R5 R6 K12 ["Types"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K13 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 RETURN                           R5 1
