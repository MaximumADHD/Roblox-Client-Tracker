PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerFastSearch"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["createGetSafeFFlag"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K8 ["ExplorerFilterHasIncrementalSearch"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K10 [game]
       19 LOADK                            R5 K11 ["ExplorerFastSearch"]
       20 LOADB                            R6 0
       21 NAMECALL                         R3 R3 K12 ["DefineFastFlag"]
       23 CALL                             R3 3 0
       24 DUPCLOSURE                       R3 K13 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
