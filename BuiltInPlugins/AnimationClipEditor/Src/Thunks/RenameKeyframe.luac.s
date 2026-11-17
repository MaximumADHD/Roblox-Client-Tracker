PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["setKeyframeName"]
       13 MOVE                             R5 R3
       14 GETUPVAL                         R6 2
       15 GETUPVAL                         R7 3
       16 CALL                             R4 3 0
       17 GETUPVAL                         R6 4
       18 MOVE                             R7 R3
       19 CALL                             R6 1 -1
       20 NAMECALL                         R4 R0 K3 ["dispatch"]
       22 CALL                             R4 -1 0
       23 GETUPVAL                         R4 5
       24 LOADK                            R6 K4 ["onRenameKeyframe"]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R9 R3 K5 ["Metadata"]
       28 JUMPIFNOT                        R9 ; [+5]
       29 GETTABLEKS                       R8 R3 K5 ["Metadata"]
       31 GETTABLEKS                       R8 R8 K6 ["Guid"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R8
       35 NAMECALL                         R4 R4 K7 ["report"]
       37 CALL                             R4 4 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepCopy"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AnimationData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K11 ["UpdateAnimationData"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1
