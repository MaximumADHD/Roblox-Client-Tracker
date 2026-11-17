PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["patchCubeGenerationGatewayHost"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
        7 CALL                             R3 0 -1
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 2
       11 GETUPVAL                         R3 4
       12 CALL                             R3 0 1
       13 DUPTABLE                         R4 K3 [{"debugLog"}]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["getFFlagTextureGenDebugLog"]
       17 CALL                             R5 0 1
       18 SETTABLEKS                       R5 R4 K2 ["debugLog"]
       20 SETTABLEKS                       R4 R3 K5 ["capabilities"]
       22 DUPTABLE                         R4 K13 [{"selection", "instances", "textureGeneration", "meshGen", "preview", "recording", "eventLogger"}]
       23 GETUPVAL                         R5 5
       24 CALL                             R5 0 1
       25 SETTABLEKS                       R5 R4 K6 ["selection"]
       27 SETTABLEKS                       R1 R4 K7 ["instances"]
       29 SETTABLEKS                       R3 R4 K8 ["textureGeneration"]
       31 GETUPVAL                         R5 6
       32 CALL                             R5 0 1
       33 SETTABLEKS                       R5 R4 K9 ["meshGen"]
       35 GETUPVAL                         R5 7
       36 MOVE                             R6 R0
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K10 ["preview"]
       40 GETUPVAL                         R5 8
       41 CALL                             R5 0 1
       42 SETTABLEKS                       R5 R4 K11 ["recording"]
       44 GETUPVAL                         R5 9
       45 CALL                             R5 0 1
       46 SETTABLEKS                       R5 R4 K12 ["eventLogger"]
       48 DUPTABLE                         R5 K16 [{"registerInstance", "destroy"}]
       49 GETTABLEKS                       R6 R2 K17 ["register"]
       51 SETTABLEKS                       R6 R5 K14 ["registerInstance"]
       53 GETTABLEKS                       R6 R2 K15 ["destroy"]
       55 SETTABLEKS                       R6 R5 K15 ["destroy"]
       57 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["HttpWrapper"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Bin"]
       25 GETTABLEKS                       R4 R4 K10 ["Common"]
       27 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Host"]
       36 GETTABLEKS                       R5 R5 K14 ["Services"]
       38 GETTABLEKS                       R5 R5 K15 ["createSelectionService"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Host"]
       47 GETTABLEKS                       R6 R6 K14 ["Services"]
       49 GETTABLEKS                       R6 R6 K16 ["createEventLogger"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K12 ["Src"]
       56 GETTABLEKS                       R7 R7 K13 ["Host"]
       58 GETTABLEKS                       R7 R7 K14 ["Services"]
       60 GETTABLEKS                       R7 R7 K17 ["createInstancesService"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K12 ["Src"]
       67 GETTABLEKS                       R8 R8 K13 ["Host"]
       69 GETTABLEKS                       R8 R8 K14 ["Services"]
       71 GETTABLEKS                       R8 R8 K18 ["createMeshGenService"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K12 ["Src"]
       78 GETTABLEKS                       R9 R9 K13 ["Host"]
       80 GETTABLEKS                       R9 R9 K14 ["Services"]
       82 GETTABLEKS                       R9 R9 K19 ["createRecordingService"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K12 ["Src"]
       89 GETTABLEKS                       R10 R10 K13 ["Host"]
       91 GETTABLEKS                       R10 R10 K14 ["Services"]
       93 GETTABLEKS                       R10 R10 K20 ["createPreviewService"]
       95 CALL                             R9 1 1
       96 GETIMPORT                        R10 K5 [require]
       98 GETTABLEKS                       R11 R0 K12 ["Src"]
      100 GETTABLEKS                       R11 R11 K13 ["Host"]
      102 GETTABLEKS                       R11 R11 K14 ["Services"]
      104 GETTABLEKS                       R11 R11 K21 ["createTextureGenerationService"]
      106 CALL                             R10 1 1
      107 DUPCLOSURE                       R11 K22 [PROTO_0]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R5
      118 RETURN                           R11 1
