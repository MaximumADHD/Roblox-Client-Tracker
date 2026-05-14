PROTO_0:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 NAMECALL                         R1 R0 K1 ["getState"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["Status"]
       11 GETTABLEKS                       R2 R2 K3 ["AnimationFromVideoErroredOut"]
       13 JUMPIF                           R2 ; [+16]
       14 GETTABLEKS                       R3 R1 K2 ["Status"]
       16 GETTABLEKS                       R3 R3 K4 ["AnimationFromVideoUploadStartTime"]
       18 MOVE                             R4 R3
       19 JUMPIFNOT                        R4 ; [+4]
       20 GETIMPORT                        R5 K7 [os.clock]
       22 CALL                             R5 0 1
       23 SUB                              R4 R5 R3
       24 GETUPVAL                         R5 1
       25 LOADK                            R7 K8 ["onAnimationEditorImportVideoUploadCancel"]
       26 MOVE                             R8 R4
       27 NAMECALL                         R5 R5 K9 ["report"]
       29 CALL                             R5 3 0
       30 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetCreatingAnimationFromVideo"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
