PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AmrRecents2"]
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AmrRecents2"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K5 [script]
       10 LOADK                            R2 K6 ["AssetManager"]
       11 NAMECALL                         R0 R0 K7 ["FindFirstAncestor"]
       13 CALL                             R0 2 1
       14 GETIMPORT                        R1 K9 [require]
       16 GETTABLEKS                       R4 R0 K10 ["Bin"]
       18 GETTABLEKS                       R3 R4 K11 ["Common"]
       20 GETTABLEKS                       R2 R3 K12 ["safeGetFastFlag"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K9 [require]
       25 GETTABLEKS                       R5 R0 K13 ["Src"]
       27 GETTABLEKS                       R4 R5 K14 ["Flags"]
       29 GETTABLEKS                       R3 R4 K15 ["getFFlagAmrUpdatedItemsCache"]
       31 CALL                             R2 1 1
       32 DUPCLOSURE                       R3 K16 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R3 1
