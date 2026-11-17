PROTO_0:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["addNewItemAndEquip"]
        8 MOVE                             R8 R6
        9 GETTABLEKS                       R9 R6 K1 ["palette"]
       11 CALL                             R7 2 0
       12 GETTABLEKS                       R7 R6 K1 ["palette"]
       14 GETTABLEKS                       R1 R7 K2 ["Key"]
       16 FORGLOOP                         R2 2 ; [-12]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["openPalette"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 LOADK                            R4 K4 ["marketplaceItemsAddedToPlugin"]
       26 NAMECALL                         R2 R2 K5 ["report"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["Context"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 3
       13 NAMECALL                         R2 R2 K2 ["use"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 3
       25 MOVE                             R6 R0
       26 MOVE                             R7 R1
       27 MOVE                             R8 R2
       28 SETLIST                          R5 R6 3 [1]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["AvatarScreenContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["MarketplaceCatalogContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K14 ["ContextServices"]
       48 GETTABLEKS                       R6 R6 K15 ["Analytics"]
       50 DUPCLOSURE                       R7 K16 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
