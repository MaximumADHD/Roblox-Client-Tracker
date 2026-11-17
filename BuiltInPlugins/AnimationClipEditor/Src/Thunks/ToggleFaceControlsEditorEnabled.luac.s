PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R1 K1 ["Status"]
       11 GETTABLEKS                       R4 R4 K3 ["FaceControlsEditorEnabled"]
       13 NOT                              R3 R4
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R3
       16 CALL                             R6 1 -1
       17 NAMECALL                         R4 R0 K4 ["dispatch"]
       19 CALL                             R4 -1 0
       20 JUMPIFNOT                        R3 ; [+14]
       21 GETUPVAL                         R4 1
       22 LOADK                            R6 K5 ["onFaceControlsEditorEnabled"]
       23 NAMECALL                         R4 R4 K6 ["report"]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R6 2
       27 GETIMPORT                        R7 K9 [os.time]
       29 CALL                             R7 0 -1
       30 CALL                             R6 -1 -1
       31 NAMECALL                         R4 R0 K4 ["dispatch"]
       33 CALL                             R4 -1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 1
       36 LOADK                            R6 K10 ["onFaceControlsEditorDisabled"]
       37 GETIMPORT                        R8 K9 [os.time]
       39 CALL                             R8 0 1
       40 GETTABLEKS                       R9 R1 K1 ["Status"]
       42 GETTABLEKS                       R9 R9 K11 ["FaceControlsEditorOpenedTimestamp"]
       44 SUB                              R7 R8 R9
       45 NAMECALL                         R4 R4 K6 ["report"]
       47 CALL                             R4 3 0
       48 GETTABLEKS                       R4 R1 K1 ["Status"]
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R4 K11 ["FaceControlsEditorOpenedTimestamp"]
       53 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetFaceControlsEditorEnabled"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetFaceControlsEditorOpenedTimestamp"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
