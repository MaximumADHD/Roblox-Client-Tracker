PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AnimationData"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K2 ["Metadata"]
       12 GETTABLEKS                       R3 R3 K3 ["Looping"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["setLooping"]
       17 MOVE                             R5 R2
       18 NOT                              R6 R3
       19 CALL                             R4 2 0
       20 GETUPVAL                         R6 2
       21 MOVE                             R7 R2
       22 CALL                             R6 1 -1
       23 NAMECALL                         R4 R0 K5 ["dispatch"]
       25 CALL                             R4 -1 0
       26 GETUPVAL                         R4 3
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+6]
       29 GETUPVAL                         R6 4
       30 MOVE                             R7 R2
       31 CALL                             R6 1 -1
       32 NAMECALL                         R4 R0 K5 ["dispatch"]
       34 CALL                             R4 -1 0
       35 GETUPVAL                         R4 5
       36 LOADK                            R6 K6 ["onControlPressed"]
       37 LOADK                            R7 K7 ["ToggleLooping"]
       38 NAMECALL                         R4 R4 K8 ["report"]
       40 CALL                             R4 3 0
       41 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1

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
       29 GETTABLEKS                       R4 R4 K10 ["Actions"]
       31 GETTABLEKS                       R4 R4 K11 ["SetAnimationData"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Thunks"]
       40 GETTABLEKS                       R5 R5 K13 ["UpdateEngineAnimationTrack"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K14 ["LuaFlags"]
       47 GETTABLEKS                       R6 R6 K15 ["GetFFlagEngineAnimator"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K16 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 RETURN                           R6 1
