PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AmrRefactorEditNameInput"]
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AmrRefactorEditNameInput"]
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
       29 GETTABLEKS                       R3 R4 K15 ["getFFlagAmrContextMenuRefactor"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K9 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Src"]
       36 GETTABLEKS                       R5 R6 K14 ["Flags"]
       38 GETTABLEKS                       R4 R5 K16 ["getFFlagAmrFoundationifyBrowser"]
       40 CALL                             R3 1 1
       41 DUPCLOSURE                       R4 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 RETURN                           R4 1
