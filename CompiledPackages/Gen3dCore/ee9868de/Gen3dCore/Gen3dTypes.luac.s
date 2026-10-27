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
        9 DUPTABLE                         R3 K17 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh", ["Layout"] = "Layout"}]
       10 DUPTABLE                         R4 K21 [{["Completed"] = "Completed", ["Failed"] = "Failed", ["Canceled"] = "Canceled"}]
       11 DUPTABLE                         R5 K26 [{["Assistant"] = "assistant", ["Gen3dPanel"] = "gen3d_panel"}]
       12 DUPTABLE                         R6 K33 [{["Auto"] = "auto", ["User"] = "user", ["NotApplicable"] = "not_applicable"}]
       13 DUPCLOSURE                       R7 K34 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 DUPTABLE                         R8 K37 [{"getUniqueTag", "Enums"}]
       16 SETTABLEKS                       R7 R8 K35 ["getUniqueTag"]
       18 DUPTABLE                         R9 K44 [{"PreviewState", "FailureReason", "GenerationType", "PollStatus", "TextureGenSurface", "TextureGenCameraSource"}]
       19 SETTABLEKS                       R1 R9 K38 ["PreviewState"]
       21 SETTABLEKS                       R2 R9 K39 ["FailureReason"]
       23 SETTABLEKS                       R3 R9 K40 ["GenerationType"]
       25 SETTABLEKS                       R4 R9 K41 ["PollStatus"]
       27 SETTABLEKS                       R5 R9 K42 ["TextureGenSurface"]
       29 SETTABLEKS                       R6 R9 K43 ["TextureGenCameraSource"]
       31 SETTABLEKS                       R9 R8 K36 ["Enums"]
       33 RETURN                           R8 1
