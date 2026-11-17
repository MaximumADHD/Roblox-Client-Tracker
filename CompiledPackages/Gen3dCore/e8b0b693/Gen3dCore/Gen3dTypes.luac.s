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
        9 DUPTABLE                         R3 K18 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh", ["Scene"] = "Scene", ["GenerateMesh"] = "GenerateMesh"}]
       10 DUPTABLE                         R4 K28 [{["Texture1"] = "texture1", ["Texture2"] = "texture2", ["Segment"] = "segment", ["Scene"] = "scene", ["Mesh"] = "mesh"}]
       11 DUPTABLE                         R5 K32 [{["Completed"] = "Completed", ["Failed"] = "Failed", ["Canceled"] = "Canceled"}]
       12 DUPTABLE                         R6 K37 [{["Assistant"] = "assistant", ["Gen3dPanel"] = "gen3d_panel"}]
       13 DUPTABLE                         R7 K44 [{["Auto"] = "auto", ["User"] = "user", ["NotApplicable"] = "not_applicable"}]
       14 DUPTABLE                         R8 K47 [{["Assistant"] = "Assistant", ["Mcp"] = "MCP", ["Gen3dPanel"] = "Gen3dPanel"}]
       15 DUPCLOSURE                       R9 K48 [PROTO_0]
       16 CAPTURE                          VAL R0
       17 DUPTABLE                         R10 K51 [{"getUniqueTag", "Enums"}]
       18 SETTABLEKS                       R9 R10 K49 ["getUniqueTag"]
       20 DUPTABLE                         R11 K60 [{"PreviewState", "FailureReason", "GenerationType", "ModelFlow", "PollStatus", "TextureGenSurface", "TextureGenCameraSource", "SceneGenRequestSource"}]
       21 SETTABLEKS                       R1 R11 K52 ["PreviewState"]
       23 SETTABLEKS                       R2 R11 K53 ["FailureReason"]
       25 SETTABLEKS                       R3 R11 K54 ["GenerationType"]
       27 SETTABLEKS                       R4 R11 K55 ["ModelFlow"]
       29 SETTABLEKS                       R5 R11 K56 ["PollStatus"]
       31 SETTABLEKS                       R6 R11 K57 ["TextureGenSurface"]
       33 SETTABLEKS                       R7 R11 K58 ["TextureGenCameraSource"]
       35 SETTABLEKS                       R8 R11 K59 ["SceneGenRequestSource"]
       37 SETTABLEKS                       R11 R10 K50 ["Enums"]
       39 RETURN                           R10 1
