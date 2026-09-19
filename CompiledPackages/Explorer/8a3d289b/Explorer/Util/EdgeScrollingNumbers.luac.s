PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerEdgeScrollingGradualStartTime"]
        3 LOADK                            R3 K3 [0.3]
        4 NAMECALL                         R0 R0 K4 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerEdgeScrollingTimeToPeak"]
        3 LOADN                            R3 2
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerEdgeScrollingBoundaryHeight"]
        3 LOADN                            R3 32
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerEdgeScrollingSpeedMinimum"]
        3 LOADN                            R3 32
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerEdgeScrollingSpeedMaximum"]
        3 LOADN                            R3 150
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerEdgeScrollingTimeToSpeedFactor"]
        3 LOADN                            R3 3
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getGradualStartTime"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["getTimeToPeak"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["getBoundaryHeight"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["getSpeedMinimum"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["getSpeedMaximum"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["getTimeToSpeedFactor"]
       21 RETURN                           R0 1
