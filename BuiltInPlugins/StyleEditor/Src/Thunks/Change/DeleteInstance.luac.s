PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Folder"]
        2 NAMECALL                         R0 R0 K1 ["IsA"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+28]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K2 ["GetChildren"]
        9 CALL                             R0 1 3
       10 FORGPREP                         R0
       11 LOADK                            R7 K3 ["StyleCategory"]
       12 NAMECALL                         R5 R4 K4 ["GetAttribute"]
       14 CALL                             R5 2 1
       15 MOVE                             R6 R5
       16 JUMPIFNOT                        R6 ; [+4]
       17 JUMPIFEQKS                       R5 K5 ["Themes"] ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 JUMPIFNOT                        R6 ; [+5]
       22 LOADK                            R9 K6 ["StyleSheet"]
       23 NAMECALL                         R7 R4 K1 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIF                           R7 ; [+5]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K7 ["Parent"]
       30 SETTABLEKS                       R7 R4 K7 ["Parent"]
       32 FORGLOOP                         R0 2 ; [-22]
       34 GETUPVAL                         R0 0
       35 NAMECALL                         R0 R0 K8 ["Remove"]
       37 CALL                             R0 1 0
       38 GETIMPORT                        R0 K12 [Enum.FinishRecordingOperation.Commit]
       40 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        5 DUPTABLE                         R3 K4 [{"Name", "DisplayName", "DoChange"}]
        6 LOADK                            R4 K5 ["StyleEditor/DeleteInstance"]
        7 SETTABLEKS                       R4 R3 K1 ["Name"]
        9 LOADK                            R4 K6 ["StyleEditor - Delete Instance"]
       10 SETTABLEKS                       R4 R3 K2 ["DisplayName"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R4 R3 K3 ["DoChange"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Thunks"]
       26 GETTABLEKS                       R3 R4 K9 ["Types"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K10 [PROTO_2]
       30 RETURN                           R3 1
