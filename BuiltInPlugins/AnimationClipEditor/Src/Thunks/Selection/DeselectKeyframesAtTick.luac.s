PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 JUMPIF                           R3 ; [+7]
        9 GETUPVAL                         R5 1
       10 NEWTABLE                         R6 0 0
       12 CALL                             R5 1 -1
       13 NAMECALL                         R3 R0 K2 ["dispatch"]
       15 CALL                             R3 -1 0
       16 GETIMPORT                        R3 K4 [pairs]
       18 GETTABLEKS                       R4 R2 K5 ["Instances"]
       20 CALL                             R3 1 3
       21 FORGPREP_NEXT                    R3
       22 GETIMPORT                        R8 K4 [pairs]
       24 GETTABLEKS                       R9 R7 K6 ["Tracks"]
       26 CALL                             R8 1 3
       27 FORGPREP_NEXT                    R8
       28 GETUPVAL                         R15 2
       29 MOVE                             R16 R6
       30 NEWTABLE                         R17 0 1
       32 MOVE                             R18 R11
       33 SETLIST                          R17 R18 1 [1]
       35 GETUPVAL                         R18 3
       36 CALL                             R15 3 -1
       37 NAMECALL                         R13 R0 K2 ["dispatch"]
       39 CALL                             R13 -1 0
       40 FORGLOOP                         R8 2 ; [-13]
       42 FORGLOOP                         R3 2 ; [-21]
       44 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Thunks"]
       13 GETTABLEKS                       R2 R2 K8 ["Selection"]
       15 GETTABLEKS                       R2 R2 K9 ["DeselectKeyframe"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Actions"]
       24 GETTABLEKS                       R3 R3 K11 ["SetSelectedKeyframes"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K12 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
