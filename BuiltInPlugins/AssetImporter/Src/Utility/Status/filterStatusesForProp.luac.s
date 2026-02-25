PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 MOVE                             R9 R6
        8 MOVE                             R10 R0
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R7
       15 GETIMPORT                        R8 K2 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 ; [-13]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Utility"]
       20 GETTABLEKS                       R4 R5 K9 ["Status"]
       22 GETTABLEKS                       R3 R4 K10 ["StatusIsRelevant"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
