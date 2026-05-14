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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["useInferLoneMeshPartAssignment should only be used when FFlagFixLayeredClothingAssignment is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       11 DUPCLOSURE                       R2 K4 [PROTO_0]
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R3 0 0
       15 CALL                             R1 2 2
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 2
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 SETLIST                          R5 R6 2 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R6 0 3
       38 GETTABLEKS                       R7 R0 K7 ["loneMeshParts"]
       40 GETTABLEKS                       R8 R0 K8 ["addLoneMeshPartAssignment"]
       42 MOVE                             R9 R3
       43 SETLIST                          R6 R7 3 [1]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0

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
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagFixLayeredClothingAssignment"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Components"]
       47 GETTABLEKS                       R6 R6 K15 ["DisambiguationMenuContext"]
       49 GETTABLEKS                       R6 R6 K16 ["inferLoneMeshPartAssignment"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K17 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 RETURN                           R6 1
