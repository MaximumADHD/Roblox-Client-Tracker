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
       40 GETTABLEKS                       R6 R6 K9 ["ImageAttachment"]
       42 GETTABLEKS                       R6 R6 K10 ["ImageAttachmentOps"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K1 [require]
       47 GETIMPORT                        R7 K3 [script]
       49 GETTABLEKS                       R7 R7 K11 ["ImageGeneration"]
       51 GETTABLEKS                       R7 R7 K12 ["ImageGenerationResponseOps"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K1 [require]
       56 GETIMPORT                        R8 K3 [script]
       58 GETTABLEKS                       R8 R8 K13 ["ImageSelection"]
       60 GETTABLEKS                       R8 R8 K14 ["ImageSelectionOps"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K1 [require]
       65 GETIMPORT                        R9 K3 [script]
       67 GETTABLEKS                       R9 R9 K15 ["LayoutGenOps"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K1 [require]
       72 GETIMPORT                        R10 K3 [script]
       74 GETTABLEKS                       R10 R10 K16 ["MeshReapply"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K1 [require]
       79 GETIMPORT                        R11 K3 [script]
       81 GETTABLEKS                       R11 R11 K17 ["Preview"]
       83 GETTABLEKS                       R11 R11 K18 ["PreviewCaptureOps"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K1 [require]
       88 GETIMPORT                        R12 K3 [script]
       90 GETTABLEKS                       R12 R12 K19 ["PreviewCarousel"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K1 [require]
       95 GETIMPORT                        R13 K3 [script]
       97 GETTABLEKS                       R13 R13 K20 ["SegmentMesh"]
       99 GETTABLEKS                       R13 R13 K21 ["SegmentMeshOps"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K1 [require]
      104 GETIMPORT                        R14 K3 [script]
      106 GETTABLEKS                       R14 R14 K22 ["Selection"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K1 [require]
      111 GETIMPORT                        R15 K3 [script]
      113 GETTABLEKS                       R15 R15 K23 ["TextureGen"]
      115 GETTABLEKS                       R15 R15 K24 ["TextureGenOps"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K1 [require]
      120 GETIMPORT                        R16 K3 [script]
      122 GETTABLEKS                       R16 R16 K25 ["Flags"]
      124 GETTABLEKS                       R16 R16 K26 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
      126 CALL                             R15 1 1
      127 DUPTABLE                         R16 K28 [{"Constants", "PreviewCarousel", "Gen3dTypes", "createGenerationSessions", "GenerationUtils", "MeshReapply", "SegmentMeshOps", "TextureGenOps", "ImageAttachmentOps", "ImageGenerationResponseOps", "ImageSelectionOps", "LayoutGenOps", "PreviewCaptureOps", "Selection", "HostSurface", "getFFlagGen3dTextureGenReapplyMeshInPlace"}]
      128 SETTABLEKS                       R0 R16 K4 ["Constants"]
      130 SETTABLEKS                       R11 R16 K19 ["PreviewCarousel"]
      132 SETTABLEKS                       R1 R16 K5 ["Gen3dTypes"]
      134 SETTABLEKS                       R2 R16 K27 ["createGenerationSessions"]
      136 SETTABLEKS                       R3 R16 K7 ["GenerationUtils"]
      138 SETTABLEKS                       R9 R16 K16 ["MeshReapply"]
      140 SETTABLEKS                       R12 R16 K21 ["SegmentMeshOps"]
      142 SETTABLEKS                       R14 R16 K24 ["TextureGenOps"]
      144 SETTABLEKS                       R5 R16 K10 ["ImageAttachmentOps"]
      146 SETTABLEKS                       R6 R16 K12 ["ImageGenerationResponseOps"]
      148 SETTABLEKS                       R7 R16 K14 ["ImageSelectionOps"]
      150 SETTABLEKS                       R8 R16 K15 ["LayoutGenOps"]
      152 SETTABLEKS                       R10 R16 K18 ["PreviewCaptureOps"]
      154 SETTABLEKS                       R13 R16 K22 ["Selection"]
      156 SETTABLEKS                       R4 R16 K8 ["HostSurface"]
      158 SETTABLEKS                       R15 R16 K26 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
      160 RETURN                           R16 1
