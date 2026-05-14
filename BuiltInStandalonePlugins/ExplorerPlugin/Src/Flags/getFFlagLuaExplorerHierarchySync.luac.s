PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["createGetSafeFFlag"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 ["LuaExplorerFileSync"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R1
       20 LOADK                            R4 K10 ["Collab6803"]
       21 CALL                             R3 1 1
       22 MOVE                             R4 R1
       23 LOADK                            R5 K11 ["Collab6803LuaExplorer"]
       24 CALL                             R4 1 1
       25 MOVE                             R5 R1
       26 LOADK                            R6 K12 ["Collab7848"]
       27 CALL                             R5 1 1
       28 DUPCLOSURE                       R6 K13 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 RETURN                           R6 1
