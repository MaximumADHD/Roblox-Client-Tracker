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
       40 GETTABLEKS                       R6 R6 K9 ["PreviewCarousel"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["SegmentMesh"]
       49 GETTABLEKS                       R7 R7 K11 ["SegmentMeshOps"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K1 [require]
       54 GETIMPORT                        R8 K3 [script]
       56 GETTABLEKS                       R8 R8 K12 ["Selection"]
       58 CALL                             R7 1 1
       59 DUPTABLE                         R8 K14 [{"Constants", "PreviewCarousel", "Gen3dTypes", "createGenerationSessions", "GenerationUtils", "SegmentMeshOps", "Selection", "HostSurface"}]
       60 SETTABLEKS                       R0 R8 K4 ["Constants"]
       62 SETTABLEKS                       R5 R8 K9 ["PreviewCarousel"]
       64 SETTABLEKS                       R1 R8 K5 ["Gen3dTypes"]
       66 SETTABLEKS                       R2 R8 K13 ["createGenerationSessions"]
       68 SETTABLEKS                       R3 R8 K7 ["GenerationUtils"]
       70 SETTABLEKS                       R6 R8 K11 ["SegmentMeshOps"]
       72 SETTABLEKS                       R7 R8 K12 ["Selection"]
       74 SETTABLEKS                       R4 R8 K8 ["HostSurface"]
       76 RETURN                           R8 1
