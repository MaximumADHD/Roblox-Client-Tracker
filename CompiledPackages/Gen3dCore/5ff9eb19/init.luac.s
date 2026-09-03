MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Constants"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Gen3dTypes"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["GenerationSessions"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["GenerationUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["HostSurface"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["LayoutGenOps"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["PreviewCarousel"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["SegmentMesh"]
       56 GETTABLEKS                       R8 R8 K12 ["SegmentMeshOps"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K1 [require]
       61 GETIMPORT                        R9 K3 [script]
       63 GETTABLEKS                       R9 R9 K13 ["Selection"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K1 [require]
       68 GETIMPORT                        R10 K3 [script]
       70 GETTABLEKS                       R10 R10 K14 ["TextureGen"]
       72 GETTABLEKS                       R10 R10 K15 ["TextureGenOps"]
       74 CALL                             R9 1 1
       75 DUPTABLE                         R10 K17 [{"Constants", "PreviewCarousel", "Gen3dTypes", "createGenerationSessions", "GenerationUtils", "SegmentMeshOps", "TextureGenOps", "LayoutGenOps", "Selection", "HostSurface"}]
       76 SETTABLEKS                       R0 R10 K4 ["Constants"]
       78 SETTABLEKS                       R6 R10 K10 ["PreviewCarousel"]
       80 SETTABLEKS                       R1 R10 K5 ["Gen3dTypes"]
       82 SETTABLEKS                       R2 R10 K16 ["createGenerationSessions"]
       84 SETTABLEKS                       R3 R10 K7 ["GenerationUtils"]
       86 SETTABLEKS                       R7 R10 K12 ["SegmentMeshOps"]
       88 SETTABLEKS                       R9 R10 K15 ["TextureGenOps"]
       90 SETTABLEKS                       R5 R10 K9 ["LayoutGenOps"]
       92 SETTABLEKS                       R8 R10 K13 ["Selection"]
       94 SETTABLEKS                       R4 R10 K8 ["HostSurface"]
       96 RETURN                           R10 1
