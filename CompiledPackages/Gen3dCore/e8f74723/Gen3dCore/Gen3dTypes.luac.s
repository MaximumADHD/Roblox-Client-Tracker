PROTO_0:
        0 LOADK                            R2 K0 ["RBXAI-%*-%*"]
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 JUMPIF                           R5 ; [+5]
        4 GETUPVAL                         R5 0
        5 LOADB                            R7 0
        6 NAMECALL                         R5 R5 K1 ["GenerateGUID"]
        8 CALL                             R5 2 1
        9 NAMECALL                         R2 R2 K2 ["format"]
       11 CALL                             R2 3 1
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K10 [{["Generating"] = "Generating", ["GenerationFailed"] = "GenerationFailed", ["Generated"] = "Generated", ["Materializing"] = "Materializing", ["MaterializeFailed"] = "MaterializeFailed", ["Materialized"] = "Materialized"}]
        8 DUPTABLE                         R2 K13 [{["GenerationFailed"] = "GenerationFailed", ["GenerationModerated"] = "GenerationModerated", ["GenerationCanceled"] = "GenerationCanceled", ["MaterializeFailed"] = "MaterializeFailed"}]
        9 DUPTABLE                         R3 K17 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh", ["Scene"] = "Scene"}]
       10 DUPTABLE                         R4 K25 [{["Texture1"] = "texture1", ["Texture2"] = "texture2", ["Segment"] = "segment", ["Scene"] = "scene"}]
       11 DUPTABLE                         R5 K29 [{["Completed"] = "Completed", ["Failed"] = "Failed", ["Canceled"] = "Canceled"}]
       12 DUPTABLE                         R6 K34 [{["Assistant"] = "assistant", ["Gen3dPanel"] = "gen3d_panel"}]
       13 DUPTABLE                         R7 K41 [{["Auto"] = "auto", ["User"] = "user", ["NotApplicable"] = "not_applicable"}]
       14 DUPCLOSURE                       R8 K42 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 DUPTABLE                         R9 K45 [{"getUniqueTag", "Enums"}]
       17 SETTABLEKS                       R8 R9 K43 ["getUniqueTag"]
       19 DUPTABLE                         R10 K53 [{"PreviewState", "FailureReason", "GenerationType", "ModelFlow", "PollStatus", "TextureGenSurface", "TextureGenCameraSource"}]
       20 SETTABLEKS                       R1 R10 K46 ["PreviewState"]
       22 SETTABLEKS                       R2 R10 K47 ["FailureReason"]
       24 SETTABLEKS                       R3 R10 K48 ["GenerationType"]
       26 SETTABLEKS                       R4 R10 K49 ["ModelFlow"]
       28 SETTABLEKS                       R5 R10 K50 ["PollStatus"]
       30 SETTABLEKS                       R6 R10 K51 ["TextureGenSurface"]
       32 SETTABLEKS                       R7 R10 K52 ["TextureGenCameraSource"]
       34 SETTABLEKS                       R10 R9 K44 ["Enums"]
       36 RETURN                           R9 1
