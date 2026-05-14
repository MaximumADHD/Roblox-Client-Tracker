PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R6 R0 K1 ["Dummy"]
       13 GETTABLEKS                       R7 R0 K2 ["AnimationId"]
       15 MOVE                             R8 R2
       16 MOVE                             R9 R3
       17 CALL                             R5 4 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R8 0 1
       25 MOVE                             R9 R5
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 0
       29 JUMPIFNOTEQKNIL                  R5 ; [+3]
       31 LOADNIL                          R6
       32 RETURN                           R6 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K4 ["createElement"]
       36 GETUPVAL                         R7 2
       37 DUPTABLE                         R8 K9 [{"AnimationPositionAlpha", "Length", "ForcedPositionAlpha", "SetForcedPositionAlpha"}]
       38 SETTABLEKS                       R1 R8 K5 ["AnimationPositionAlpha"]
       40 GETTABLEKS                       R9 R5 K6 ["Length"]
       42 SETTABLEKS                       R9 R8 K6 ["Length"]
       44 SETTABLEKS                       R3 R8 K7 ["ForcedPositionAlpha"]
       46 SETTABLEKS                       R4 R8 K8 ["SetForcedPositionAlpha"]
       48 CALL                             R6 2 -1
       49 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationControllerDisplay"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useAnimationOnAnimateTarget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Types"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 RETURN                           R5 1
