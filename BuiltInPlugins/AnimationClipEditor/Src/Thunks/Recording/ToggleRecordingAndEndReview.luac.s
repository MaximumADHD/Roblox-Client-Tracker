PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["inReviewState"]
        7 JUMPIFNOT                        R2 ; [+13]
        8 GETUPVAL                         R5 0
        9 LOADB                            R6 0
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R0 K3 ["dispatch"]
       13 CALL                             R3 -1 0
       14 GETUPVAL                         R5 1
       15 LOADB                            R6 0
       16 CALL                             R5 1 -1
       17 NAMECALL                         R3 R0 K3 ["dispatch"]
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 2
       22 LOADK                            R5 K4 ["onFacialAnimationRecordingEnabled"]
       23 NAMECALL                         R3 R3 K5 ["report"]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R5 1
       27 LOADB                            R6 1
       28 CALL                             R5 1 -1
       29 NAMECALL                         R3 R0 K3 ["dispatch"]
       31 CALL                             R3 -1 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Thunks"]
       13 GETTABLEKS                       R2 R2 K8 ["Recording"]
       15 GETTABLEKS                       R2 R2 K9 ["SetFacialRecordingMode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Actions"]
       24 GETTABLEKS                       R3 R3 K11 ["SetInReviewState"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K12 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
