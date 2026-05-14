PROTO_0:
        0 DUPTABLE                         R4 K4 [{"model", "initDist", "insertContextOffset", "workspacePreview"}]
        1 LOADNIL                          R5
        2 SETTABLEKS                       R5 R4 K0 ["model"]
        4 LOADN                            R5 0
        5 SETTABLEKS                       R5 R4 K1 ["initDist"]
        7 FASTCALL                         VECTOR ; [+2]
        8 GETIMPORT                        R5 K7 [Vector3.new]
       10 CALL                             R5 0 1
       11 SETTABLEKS                       R5 R4 K2 ["insertContextOffset"]
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K3 ["workspacePreview"]
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K0 ["model"]
       21 GETTABLEKS                       R5 R4 K0 ["model"]
       23 NAMECALL                         R5 R5 K8 ["GetExtentsSize"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R5 R5 K9 ["Magnitude"]
       28 SETTABLEKS                       R5 R4 K1 ["initDist"]
       30 JUMPIFNOT                        R3 ; [+13]
       31 GETTABLEKS                       R5 R1 K10 ["InsertInWorkspace"]
       33 JUMPIFNOT                        R5 ; [+10]
       34 JUMPIFNOT                        R2 ; [+9]
       35 GETUPVAL                         R5 1
       36 MOVE                             R6 R1
       37 GETTABLEKS                       R7 R4 K0 ["model"]
       39 CALL                             R5 2 2
       40 SETTABLEKS                       R5 R4 K3 ["workspacePreview"]
       42 SETTABLEKS                       R6 R4 K2 ["insertContextOffset"]
       44 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["getInsertContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Utility"]
       22 GETTABLEKS                       R3 R3 K9 ["getAssetRenderModel"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
