PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 GETUPVAL                         R8 1
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+10]
        9 GETIMPORT                        R6 K2 [table.clone]
       11 MOVE                             R7 R0
       12 CALL                             R6 1 1
       13 GETIMPORT                        R7 K4 [table.remove]
       15 MOVE                             R8 R6
       16 MOVE                             R9 R4
       17 CALL                             R7 2 0
       18 RETURN                           R6 1
       19 FORGLOOP                         R1 2 ; [-16]
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["equippedItemDataEquals"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
