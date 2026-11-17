PROTO_0:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 JUMPIFNOT                        R4 ; [+7]
        8 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R0
       12 GETIMPORT                        R4 K2 [table.insert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R0 K3 ["children"]
       17 JUMPIFNOT                        R4 ; [+12]
       18 GETTABLEKS                       R4 R0 K3 ["children"]
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETUPVAL                         R9 0
       24 MOVE                             R10 R8
       25 MOVE                             R11 R1
       26 MOVE                             R12 R3
       27 CALL                             R9 3 0
       28 FORGLOOP                         R4 2 ; [-6]
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R2 1
