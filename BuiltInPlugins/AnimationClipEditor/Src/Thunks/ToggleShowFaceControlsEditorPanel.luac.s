PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R5 R1 K1 ["Status"]
       11 GETTABLEKS                       R4 R5 K3 ["ShowFaceControlsEditorPanel"]
       13 NOT                              R3 R4
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R3
       16 CALL                             R6 1 -1
       17 NAMECALL                         R4 R0 K4 ["dispatch"]
       19 CALL                             R4 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["SetShowFaceControlsEditorPanel"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
