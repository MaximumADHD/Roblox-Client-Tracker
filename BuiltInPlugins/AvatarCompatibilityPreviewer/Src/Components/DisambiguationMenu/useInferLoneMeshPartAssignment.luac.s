PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loneMeshParts"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R4
        8 CALL                             R5 1 1
        9 JUMPIFEQKNIL                     R5 ; [+6]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["addLoneMeshPartAssignment"]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 0
       16 FORGLOOP                         R0 2 ; [-11]
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 2
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       25 NEWCLOSURE                       R5 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 3
       30 GETTABLEKS                       R7 R0 K4 ["loneMeshParts"]
       32 GETTABLEKS                       R8 R0 K5 ["addLoneMeshPartAssignment"]
       34 MOVE                             R9 R3
       35 SETLIST                          R6 R7 3 [1]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["DisambiguationMenu"]
       29 GETTABLEKS                       R4 R4 K12 ["getChoosableAssetTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["DisambiguationMenuContext"]
       40 GETTABLEKS                       R5 R5 K14 ["inferLoneMeshPartAssignment"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K15 [PROTO_3]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 RETURN                           R5 1
