PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AmrUpdatedItemsCache5"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AmrUpdatedItemsCache5"]
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
       23 DUPCLOSURE                       R2 K13 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1
