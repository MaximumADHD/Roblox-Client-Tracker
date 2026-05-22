PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 1
       11 NOT                              R0 R1
       12 RETURN                           R0 1

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
       15 LOADK                            R3 K8 ["LuaExplorerFileSync"]
       16 CALL                             R2 1 1
       17 MOVE                             R3 R1
       18 LOADK                            R4 K9 ["Collab6803"]
       19 CALL                             R3 1 1
       20 MOVE                             R4 R1
       21 LOADK                            R5 K10 ["Collab6803LuaExplorer"]
       22 CALL                             R4 1 1
       23 MOVE                             R5 R1
       24 LOADK                            R6 K11 ["Collab7848"]
       25 CALL                             R5 1 1
       26 DUPCLOSURE                       R6 K12 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 RETURN                           R6 1
