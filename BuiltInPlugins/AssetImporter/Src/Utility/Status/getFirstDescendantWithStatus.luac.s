PROTO_0:
        0 NEWTABLE                         R2 0 1
        2 MOVE                             R3 R0
        3 SETLIST                          R2 R3 1 [1]
        5 GETIMPORT                        R3 K1 [next]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 2
        9 JUMPIFNOT                        R3 ; [+29]
       10 NAMECALL                         R5 R4 K2 ["GetStatuses"]
       12 CALL                             R5 1 3
       13 FORGPREP                         R5
       14 GETTABLEKS                       R10 R9 K3 ["Level"]
       16 GETTABLEKS                       R11 R1 K4 ["rawValue"]
       18 CALL                             R11 0 1
       19 JUMPIFNOTEQ                      R10 R11 ; [+2]
       21 RETURN                           R4 1
       22 FORGLOOP                         R5 2 ; [-9]
       24 GETUPVAL                         R5 0
       25 MOVE                             R6 R2
       26 NAMECALL                         R7 R4 K5 ["GetChildren"]
       28 CALL                             R7 1 -1
       29 CALL                             R5 -1 1
       30 MOVE                             R2 R5
       31 GETIMPORT                        R5 K1 [next]
       33 MOVE                             R6 R2
       34 MOVE                             R7 R3
       35 CALL                             R5 2 2
       36 MOVE                             R3 R5
       37 MOVE                             R4 R6
       38 JUMPBACK                         ; [-30]
       39 LOADNIL                          R5
       40 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["append"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
