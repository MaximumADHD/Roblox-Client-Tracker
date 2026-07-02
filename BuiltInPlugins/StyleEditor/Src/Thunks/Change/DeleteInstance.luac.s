PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+34]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["Folder"]
        4 NAMECALL                         R0 R0 K1 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+28]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K2 ["GetChildren"]
       11 CALL                             R0 1 3
       12 FORGPREP                         R0
       13 LOADK                            R7 K3 ["StyleCategory"]
       14 NAMECALL                         R5 R4 K4 ["GetAttribute"]
       16 CALL                             R5 2 1
       17 MOVE                             R6 R5
       18 JUMPIFNOT                        R6 ; [+4]
       19 JUMPIFEQKS                       R5 K5 ["Themes"] ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 JUMPIFNOT                        R6 ; [+5]
       24 LOADK                            R9 K6 ["StyleSheet"]
       25 NAMECALL                         R7 R4 K1 ["IsA"]
       27 CALL                             R7 2 1
       28 JUMPIF                           R7 ; [+5]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K7 ["Parent"]
       32 SETTABLEKS                       R7 R4 K7 ["Parent"]
       34 FORGLOOP                         R0 2 ; [-22]
       36 GETUPVAL                         R0 1
       37 NAMECALL                         R0 R0 K8 ["Remove"]
       39 CALL                             R0 1 0
       40 GETIMPORT                        R0 K12 [Enum.FinishRecordingOperation.Commit]
       42 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        5 DUPTABLE                         R3 K6 [{["Name"] = "StyleEditor/DeleteInstance", ["DisplayName"] = "StyleEditor - Delete Instance", ["DoChange"]}]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R4 R3 K5 ["DoChange"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

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
       33 GETTABLEKS                       R4 R4 K10 ["Flags"]
       35 GETTABLEKS                       R4 R4 K11 ["getFFlagStyleQuery"]
       37 CALL                             R3 1 1
       38 CALL                             R3 0 1
       39 DUPCLOSURE                       R4 K12 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 RETURN                           R4 1
