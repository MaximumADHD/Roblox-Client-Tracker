PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        5 CALL                             R2 1 1
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        8 MOVE                             R4 R2
        9 MOVE                             R5 R0
       10 GETIMPORT                        R3 K3 [table.insert]
       12 CALL                             R3 2 0
       13 MOVE                             R3 R2
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 LOADK                            R10 K4 ["MeshPart"]
       18 NAMECALL                         R8 R7 K5 ["IsA"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+19]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R9 R7 K6 ["TextureID"]
       25 CALL                             R8 1 1
       26 JUMPIFEQKNIL                     R8 ; [+14]
       28 GETIMPORT                        R9 K8 [table.find]
       30 MOVE                             R10 R1
       31 MOVE                             R11 R8
       32 CALL                             R9 2 1
       33 JUMPIF                           R9 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       36 MOVE                             R10 R1
       37 MOVE                             R11 R8
       38 GETIMPORT                        R9 K3 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R3 2 ; [-25]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["assetUriToId"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["findUnderlyingMeshAssetIds"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
