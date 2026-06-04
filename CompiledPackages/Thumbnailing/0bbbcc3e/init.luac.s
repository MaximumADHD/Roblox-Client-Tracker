MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["EmoteUtility"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["CameraUtility"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["LightUtility"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K14 [{"CameraPresetsUtility", "CameraUtility", "CFrameUtility", "ColorUtility", "EmoteUtility", "LightUtility", "VectorUtility", "CharacterUtility", "ParticleUtility", "MannequinUtility"}]
       23 GETIMPORT                        R4 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R5 R5 K7 ["CameraPresetsUtility"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K7 ["CameraPresetsUtility"]
       32 SETTABLEKS                       R1 R3 K5 ["CameraUtility"]
       34 GETIMPORT                        R4 K1 [require]
       36 GETIMPORT                        R5 K3 [script]
       38 GETTABLEKS                       R5 R5 K8 ["CFrameUtility"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K8 ["CFrameUtility"]
       43 GETIMPORT                        R4 K1 [require]
       45 GETIMPORT                        R5 K3 [script]
       47 GETTABLEKS                       R5 R5 K9 ["ColorUtility"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K9 ["ColorUtility"]
       52 SETTABLEKS                       R0 R3 K4 ["EmoteUtility"]
       54 SETTABLEKS                       R2 R3 K6 ["LightUtility"]
       56 GETIMPORT                        R4 K1 [require]
       58 GETIMPORT                        R5 K3 [script]
       60 GETTABLEKS                       R5 R5 K10 ["VectorUtility"]
       62 CALL                             R4 1 1
       63 SETTABLEKS                       R4 R3 K10 ["VectorUtility"]
       65 GETIMPORT                        R4 K1 [require]
       67 GETIMPORT                        R5 K3 [script]
       69 GETTABLEKS                       R5 R5 K11 ["CharacterUtility"]
       71 CALL                             R4 1 1
       72 SETTABLEKS                       R4 R3 K11 ["CharacterUtility"]
       74 GETIMPORT                        R4 K1 [require]
       76 GETIMPORT                        R5 K3 [script]
       78 GETTABLEKS                       R5 R5 K12 ["ParticleUtility"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K12 ["ParticleUtility"]
       83 GETIMPORT                        R4 K1 [require]
       85 GETIMPORT                        R5 K3 [script]
       87 GETTABLEKS                       R5 R5 K13 ["MannequinUtility"]
       89 CALL                             R4 1 1
       90 SETTABLEKS                       R4 R3 K13 ["MannequinUtility"]
       92 RETURN                           R3 1
