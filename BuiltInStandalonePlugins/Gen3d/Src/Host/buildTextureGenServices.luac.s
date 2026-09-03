PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        6 RETURN                           R0 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R3 K0 ["cube-generation-gateway"] ; [+2]
        2 GETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 MOVE                             R9 R3
        8 MOVE                             R10 R4
        9 CALL                             R5 5 -1
       10 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["buildRequest"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFStringCubeGenerationGatewayBaseUrlOverride"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKS                       R2 K1 [""] ; [+3]
        6 MOVE                             R1 R2
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+9]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["buildRequest"]
       13 GETUPVAL                         R3 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K2 ["buildRequest"]
       19 GETUPVAL                         R2 2
       20 CALL                             R2 0 2
       21 DUPTABLE                         R4 K9 [{"selection", "instances", "textureGeneration", "meshGen", "preview", "recording"}]
       22 GETUPVAL                         R5 3
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R4 K3 ["selection"]
       26 SETTABLEKS                       R2 R4 K4 ["instances"]
       28 GETUPVAL                         R5 4
       29 CALL                             R5 0 1
       30 SETTABLEKS                       R5 R4 K5 ["textureGeneration"]
       32 GETUPVAL                         R5 5
       33 CALL                             R5 0 1
       34 SETTABLEKS                       R5 R4 K6 ["meshGen"]
       36 GETUPVAL                         R5 6
       37 MOVE                             R6 R0
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K7 ["preview"]
       41 GETUPVAL                         R5 7
       42 CALL                             R5 0 1
       43 SETTABLEKS                       R5 R4 K8 ["recording"]
       45 DUPTABLE                         R5 K12 [{"registerInstance", "destroy"}]
       46 GETTABLEKS                       R6 R3 K13 ["register"]
       48 SETTABLEKS                       R6 R5 K10 ["registerInstance"]
       50 GETTABLEKS                       R6 R3 K11 ["destroy"]
       52 SETTABLEKS                       R6 R5 K11 ["destroy"]
       54 RETURN                           R4 2

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
       49 GETTABLEKS                       R6 R6 K16 ["createInstancesService"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K12 ["Src"]
       56 GETTABLEKS                       R7 R7 K13 ["Host"]
       58 GETTABLEKS                       R7 R7 K14 ["Services"]
       60 GETTABLEKS                       R7 R7 K17 ["createMeshGenService"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K12 ["Src"]
       67 GETTABLEKS                       R8 R8 K13 ["Host"]
       69 GETTABLEKS                       R8 R8 K14 ["Services"]
       71 GETTABLEKS                       R8 R8 K18 ["createRecordingService"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K12 ["Src"]
       78 GETTABLEKS                       R9 R9 K13 ["Host"]
       80 GETTABLEKS                       R9 R9 K14 ["Services"]
       82 GETTABLEKS                       R9 R9 K19 ["createPreviewService"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K12 ["Src"]
       89 GETTABLEKS                       R10 R10 K13 ["Host"]
       91 GETTABLEKS                       R10 R10 K14 ["Services"]
       93 GETTABLEKS                       R10 R10 K20 ["createTextureGenerationService"]
       95 CALL                             R9 1 1
       96 DUPCLOSURE                       R10 K21 [PROTO_0]
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R11 K22 [PROTO_2]
       99 CAPTURE                          VAL R2
      100 DUPCLOSURE                       R12 K23 [PROTO_3]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R7
      109 RETURN                           R12 1
