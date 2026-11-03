PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R10 K0 ["MeshPart"]
        7 NAMECALL                         R8 R7 K1 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+28]
       11 MOVE                             R8 R1
       12 JUMPIF                           R8 ; [+10]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K2 ["parseDependencyContentIdToAssetIdString"]
       16 GETTABLEKS                       R10 R7 K3 ["MeshId"]
       18 CALL                             R9 1 -1
       19 FASTCALL                         TONUMBER ; [+2]
       20 GETIMPORT                        R8 K5 [tonumber]
       22 CALL                             R8 -1 1
       23 MOVE                             R1 R8
       24 MOVE                             R8 R2
       25 JUMPIF                           R8 ; [+10]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K2 ["parseDependencyContentIdToAssetIdString"]
       29 GETTABLEKS                       R10 R7 K6 ["TextureID"]
       31 CALL                             R9 1 -1
       32 FASTCALL                         TONUMBER ; [+2]
       33 GETIMPORT                        R8 K5 [tonumber]
       35 CALL                             R8 -1 1
       36 MOVE                             R2 R8
       37 JUMPIFNOT                        R1 ; [+1]
       38 JUMPIF                           R2 ; [+2]
       39 FORGLOOP                         R3 2 ; [-34]
       41 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["AssetUtil"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
