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
       40 GETTABLEKS                       R6 R6 K9 ["ImageSelection"]
       42 GETTABLEKS                       R6 R6 K10 ["ImageSelectionOps"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K1 [require]
       47 GETIMPORT                        R7 K3 [script]
       49 GETTABLEKS                       R7 R7 K11 ["LayoutGenOps"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K1 [require]
       54 GETIMPORT                        R8 K3 [script]
       56 GETTABLEKS                       R8 R8 K12 ["MeshReapply"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K1 [require]
       61 GETIMPORT                        R9 K3 [script]
       63 GETTABLEKS                       R9 R9 K13 ["PreviewCarousel"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K1 [require]
       68 GETIMPORT                        R10 K3 [script]
       70 GETTABLEKS                       R10 R10 K14 ["SegmentMesh"]
       72 GETTABLEKS                       R10 R10 K15 ["SegmentMeshOps"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K1 [require]
       77 GETIMPORT                        R11 K3 [script]
       79 GETTABLEKS                       R11 R11 K16 ["Selection"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K1 [require]
       84 GETIMPORT                        R12 K3 [script]
       86 GETTABLEKS                       R12 R12 K17 ["TextureGen"]
       88 GETTABLEKS                       R12 R12 K18 ["TextureGenOps"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K1 [require]
       93 GETIMPORT                        R13 K3 [script]
       95 GETTABLEKS                       R13 R13 K19 ["Flags"]
       97 GETTABLEKS                       R13 R13 K20 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
       99 CALL                             R12 1 1
      100 DUPTABLE                         R13 K22 [{"Constants", "PreviewCarousel", "Gen3dTypes", "createGenerationSessions", "GenerationUtils", "MeshReapply", "SegmentMeshOps", "TextureGenOps", "ImageSelectionOps", "LayoutGenOps", "Selection", "HostSurface", "getFFlagGen3dTextureGenReapplyMeshInPlace"}]
      101 SETTABLEKS                       R0 R13 K4 ["Constants"]
      103 SETTABLEKS                       R8 R13 K13 ["PreviewCarousel"]
      105 SETTABLEKS                       R1 R13 K5 ["Gen3dTypes"]
      107 SETTABLEKS                       R2 R13 K21 ["createGenerationSessions"]
      109 SETTABLEKS                       R3 R13 K7 ["GenerationUtils"]
      111 SETTABLEKS                       R7 R13 K12 ["MeshReapply"]
      113 SETTABLEKS                       R9 R13 K15 ["SegmentMeshOps"]
      115 SETTABLEKS                       R11 R13 K18 ["TextureGenOps"]
      117 SETTABLEKS                       R5 R13 K10 ["ImageSelectionOps"]
      119 SETTABLEKS                       R6 R13 K11 ["LayoutGenOps"]
      121 SETTABLEKS                       R10 R13 K16 ["Selection"]
      123 SETTABLEKS                       R4 R13 K8 ["HostSurface"]
      125 SETTABLEKS                       R12 R13 K20 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
      127 RETURN                           R13 1
