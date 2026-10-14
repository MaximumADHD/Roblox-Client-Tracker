PROTO_0:
        0 DUPTABLE                         R1 K10 [{"generateAssets", "cancelGeneration", "publishAssets", "removeSelectedBounds", "insertAssets", "getSelectedBoundingBox", "createViewportBoundingBox", "destroyViewportBoundingBox", "capturePreviewImages", "isGenerationCached"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K11 ["invoke"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K12 ["MeshGen.generateAssets"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["generateAssets"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K11 ["invoke"]
       12 MOVE                             R3 R0
       13 LOADK                            R4 K13 ["MeshGen.cancelGeneration"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["cancelGeneration"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K11 ["invoke"]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K14 ["MeshGen.publishAssets"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["publishAssets"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K11 ["invoke"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K15 ["MeshGen.removeSelectedBounds"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["removeSelectedBounds"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K11 ["invoke"]
       36 MOVE                             R3 R0
       37 LOADK                            R4 K16 ["MeshGen.insertAssets"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K4 ["insertAssets"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K11 ["invoke"]
       44 MOVE                             R3 R0
       45 LOADK                            R4 K17 ["MeshGen.getSelectedBoundingBox"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K5 ["getSelectedBoundingBox"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K11 ["invoke"]
       52 MOVE                             R3 R0
       53 LOADK                            R4 K18 ["MeshGen.createViewportBoundingBox"]
       54 CALL                             R2 2 1
       55 SETTABLEKS                       R2 R1 K6 ["createViewportBoundingBox"]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K11 ["invoke"]
       60 MOVE                             R3 R0
       61 LOADK                            R4 K19 ["MeshGen.destroyViewportBoundingBox"]
       62 CALL                             R2 2 1
       63 SETTABLEKS                       R2 R1 K7 ["destroyViewportBoundingBox"]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K11 ["invoke"]
       68 MOVE                             R3 R0
       69 LOADK                            R4 K20 ["MeshGen.capturePreviewImages"]
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R1 K8 ["capturePreviewImages"]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K11 ["invoke"]
       76 MOVE                             R3 R0
       77 LOADK                            R4 K21 ["MeshGen.isGenerationCached"]
       78 CALL                             R2 2 1
       79 SETTABLEKS                       R2 R1 K9 ["isGenerationCached"]
       81 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["MeshGen"]
       20 GETTABLEKS                       R4 R4 K10 ["MeshGenTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["Remote"]
       30 NEWTABLE                         R6 1 0
       32 DUPCLOSURE                       R7 K13 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R7 R6 K14 ["new"]
       36 RETURN                           R6 1
