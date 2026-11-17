PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R5 0
        5 LENGTH                           R4 R5
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R1 K1 ["AnimationData"]
       10 NEWTABLE                         R5 0 2
       12 LOADK                            R6 K2 ["Metadata"]
       13 LOADK                            R7 K3 ["IkTargets"]
       14 SETLIST                          R5 R6 2 [1]
       16 CALL                             R3 2 1
       17 GETTABLEKS                       R4 R3 K2 ["Metadata"]
       19 GETTABLEKS                       R4 R4 K3 ["IkTargets"]
       21 GETUPVAL                         R5 2
       22 SETTABLE                         R5 R4 R2
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R3
       25 CALL                             R6 1 -1
       26 NAMECALL                         R4 R0 K4 ["dispatch"]
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetAnimationData"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["duplicateHierarchy"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R3 K11 ["PathUtils"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 RETURN                           R6 1
