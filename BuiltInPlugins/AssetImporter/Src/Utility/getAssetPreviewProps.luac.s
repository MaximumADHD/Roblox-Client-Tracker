PROTO_0:
        0 DUPTABLE                         R4 K6 [{[1] = , ["initDist"] = 0, ["insertContextOffset"], ["workspacePreview"] = }]
        1 FASTCALL                         VECTOR ; [+2]
        2 GETIMPORT                        R5 K9 [Vector3.new]
        4 CALL                             R5 0 1
        5 SETTABLEKS                       R5 R4 K4 ["insertContextOffset"]
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K0 ["model"]
       12 GETTABLEKS                       R5 R4 K0 ["model"]
       14 NAMECALL                         R5 R5 K10 ["GetExtentsSize"]
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R5 R5 K11 ["Magnitude"]
       19 SETTABLEKS                       R5 R4 K2 ["initDist"]
       21 JUMPIFNOT                        R3 ; [+13]
       22 GETTABLEKS                       R5 R1 K12 ["InsertInWorkspace"]
       24 JUMPIFNOT                        R5 ; [+10]
       25 JUMPIFNOT                        R2 ; [+9]
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R1
       28 GETTABLEKS                       R7 R4 K0 ["model"]
       30 CALL                             R5 2 2
       31 SETTABLEKS                       R5 R4 K5 ["workspacePreview"]
       33 SETTABLEKS                       R6 R4 K4 ["insertContextOffset"]
       35 RETURN                           R4 1

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
