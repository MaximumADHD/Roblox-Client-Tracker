PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["allAvatarPartScaleTypeValueObjects"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["Avatar"]
        8 GETTABLEKS                       R2 R4 K2 ["WorldModel"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R8 R5 K3 ["Value"]
       14 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K6 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K7 ["computeAvatarPartScaleType"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R5 R0 K1 ["Avatar"]
       10 GETTABLEKS                       R4 R5 K2 ["WorldModel"]
       12 GETTABLEKS                       R6 R0 K1 ["Avatar"]
       14 GETTABLEKS                       R5 R6 K3 ["LatestWorldModelHash"]
       16 SETLIST                          R3 R4 2 [1]
       18 CALL                             R1 2 1
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["AvatarScalingTypes"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
