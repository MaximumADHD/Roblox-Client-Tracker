PROTO_0:
        0 LOADK                            R3 K0 ["RBXAI-%*-%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 JUMPIF                           R6 ; [+5]
        4 GETUPVAL                         R6 0
        5 LOADB                            R8 0
        6 NAMECALL                         R6 R6 K1 ["GenerateGUID"]
        8 CALL                             R6 2 1
        9 NAMECALL                         R3 R3 K2 ["format"]
       11 CALL                             R3 3 1
       12 MOVE                             R2 R3
       13 RETURN                           R2 1

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
       11 DUPCLOSURE                       R5 K22 [PROTO_0]
       12 CAPTURE                          VAL R0
       13 DUPTABLE                         R6 K25 [{"getUniqueTag", "Enums"}]
       14 SETTABLEKS                       R5 R6 K23 ["getUniqueTag"]
       16 DUPTABLE                         R7 K30 [{"PreviewState", "FailureReason", "GenerationType", "PollStatus"}]
       17 SETTABLEKS                       R1 R7 K26 ["PreviewState"]
       19 SETTABLEKS                       R2 R7 K27 ["FailureReason"]
       21 SETTABLEKS                       R3 R7 K28 ["GenerationType"]
       23 SETTABLEKS                       R4 R7 K29 ["PollStatus"]
       25 SETTABLEKS                       R7 R6 K24 ["Enums"]
       27 RETURN                           R6 1
