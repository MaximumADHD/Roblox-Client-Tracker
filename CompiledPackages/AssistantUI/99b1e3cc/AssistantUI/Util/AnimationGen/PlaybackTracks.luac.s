PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.AnimationPriority.Action4]
        3 SETTABLEKS                       R1 R0 K4 ["Priority"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K5 ["Looped"]
        9 GETUPVAL                         R0 0
       10 LOADN                            R2 0
       11 LOADN                            R3 1
       12 LOADN                            R4 0
       13 NAMECALL                         R0 R0 K6 ["Play"]
       15 CALL                             R0 4 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["TimePosition"]
        3 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["Stop"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K7 [{[1], ["needsWarmUpStep"] = False, ["play"], ["seek"], ["setR6BlendWeights"], ["destroy"]}]
        1 SETTABLEKS                       R0 R1 K0 ["primaryTrack"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K3 ["play"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K4 ["seek"]
       11 DUPCLOSURE                       R2 K8 [PROTO_2]
       12 SETTABLEKS                       R2 R1 K5 ["setR6BlendWeights"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R1 K6 ["destroy"]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_4]
        4 SETTABLEKS                       R1 R0 K1 ["single"]
        6 RETURN                           R0 1
