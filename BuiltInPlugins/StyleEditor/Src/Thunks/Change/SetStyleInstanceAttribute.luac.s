PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetAttribute"]
        5 CALL                             R0 3 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K4 [{"Name", "DisplayName", "DoChange"}]
        3 LOADK                            R4 K5 ["StyleEditor/SetStyleInstanceAttribute"]
        4 SETTABLEKS                       R4 R3 K1 ["Name"]
        6 LOADK                            R4 K6 ["StyleEditor - Set StyleInstance Token"]
        7 SETTABLEKS                       R4 R3 K2 ["DisplayName"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R4 R3 K3 ["DoChange"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       26 GETTABLEKS                       R3 R3 K9 ["Types"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K9 ["Types"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K10 [PROTO_2]
       37 RETURN                           R4 1
