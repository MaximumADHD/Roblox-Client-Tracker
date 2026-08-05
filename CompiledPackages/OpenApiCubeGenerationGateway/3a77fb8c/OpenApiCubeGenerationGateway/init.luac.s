MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["HttpWrapper"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["Api"]
       16 GETTABLEKS                       R2 R2 K7 ["AssetUpload"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K6 ["Api"]
       25 GETTABLEKS                       R3 R3 K8 ["GenerateMesh"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K6 ["Api"]
       34 GETTABLEKS                       R4 R4 K9 ["GenerateModel"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K6 ["Api"]
       43 GETTABLEKS                       R5 R5 K10 ["GeneratePrimitive"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K6 ["Api"]
       52 GETTABLEKS                       R6 R6 K11 ["ImageGeneration"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K1 [require]
       57 GETIMPORT                        R7 K3 [script]
       59 GETTABLEKS                       R7 R7 K6 ["Api"]
       61 GETTABLEKS                       R7 R7 K12 ["LayoutGeneration"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K1 [require]
       66 GETIMPORT                        R8 K3 [script]
       68 GETTABLEKS                       R8 R8 K6 ["Api"]
       70 GETTABLEKS                       R8 R8 K13 ["SceneGeneration"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K1 [require]
       75 GETIMPORT                        R9 K3 [script]
       77 GETTABLEKS                       R9 R9 K6 ["Api"]
       79 GETTABLEKS                       R9 R9 K14 ["SegmentMesh"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K1 [require]
       84 GETIMPORT                        R10 K3 [script]
       86 GETTABLEKS                       R10 R10 K6 ["Api"]
       88 GETTABLEKS                       R10 R10 K15 ["TextureGeneration"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K18 [table.freeze]
       93 DUPTABLE                         R11 K19 [{"AssetUpload", "GenerateMesh", "GenerateModel", "GeneratePrimitive", "ImageGeneration", "LayoutGeneration", "SceneGeneration", "SegmentMesh", "TextureGeneration"}]
       94 SETTABLEKS                       R1 R11 K7 ["AssetUpload"]
       96 SETTABLEKS                       R2 R11 K8 ["GenerateMesh"]
       98 SETTABLEKS                       R3 R11 K9 ["GenerateModel"]
      100 SETTABLEKS                       R4 R11 K10 ["GeneratePrimitive"]
      102 SETTABLEKS                       R5 R11 K11 ["ImageGeneration"]
      104 SETTABLEKS                       R6 R11 K12 ["LayoutGeneration"]
      106 SETTABLEKS                       R7 R11 K13 ["SceneGeneration"]
      108 SETTABLEKS                       R8 R11 K14 ["SegmentMesh"]
      110 SETTABLEKS                       R9 R11 K15 ["TextureGeneration"]
      112 CALL                             R10 1 -1
      113 RETURN                           R10 -1
