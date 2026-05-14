PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R1
        7 GETUPVAL                         R6 3
        8 CALL                             R4 2 -1
        9 NAMECALL                         R2 R0 K1 ["dispatch"]
       11 CALL                             R2 -1 0
       12 GETUPVAL                         R4 4
       13 LOADB                            R5 0
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R0 K1 ["dispatch"]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R4 5
       19 LOADB                            R5 0
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R0 K1 ["dispatch"]
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 3
       25 LOADK                            R4 K2 ["onCreateNewAnimation"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R7 R1 K3 ["Metadata"]
       29 JUMPIFNOT                        R7 ; [+5]
       30 GETTABLEKS                       R6 R1 K3 ["Metadata"]
       32 GETTABLEKS                       R6 R6 K4 ["Guid"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 NAMECALL                         R2 R2 K5 ["report"]
       38 CALL                             R2 4 0
       39 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetIsDirty"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetIsLegacyAnimSaves"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K4 ["Src"]
       23 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R4 K11 ["LoadAnimationData"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R0 K4 ["Src"]
       32 GETTABLEKS                       R6 R6 K12 ["Util"]
       34 GETIMPORT                        R7 K7 [require]
       36 GETTABLEKS                       R8 R6 K13 ["AnimationData"]
       38 CALL                             R7 1 1
       39 DUPCLOSURE                       R8 K14 [PROTO_1]
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R8 1
