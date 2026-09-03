PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R1 R1 K1 ["ExportInstanceToGlbAsync"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ExportMeshToGlbAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadModelFromUrlAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync"}]
        1 DUPCLOSURE                       R1 K4 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["exportInstanceToGlbAsync"]
        6 DUPCLOSURE                       R1 K5 [PROTO_1]
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["exportMeshToGlbAsync"]
       10 DUPCLOSURE                       R1 K6 [PROTO_2]
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K2 ["loadModelFromUrlAsync"]
       14 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GenerationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_3]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
