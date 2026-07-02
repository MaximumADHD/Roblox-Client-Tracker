PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Metadata", "Events", "Instances"}]
        1 DUPTABLE                         R1 K16 [{["Name"] = "", ["StartTick"] = 0, ["EndTick"] = 0, ["Looping"] = False, ["Priority"], ["FrameRate"] = 30, ["Guid"], ["IkTargets"]}]
        2 GETIMPORT                        R2 K20 [Enum.AnimationPriority.Core]
        4 SETTABLEKS                       R2 R1 K11 ["Priority"]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K21 ["GenerateGUID"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K14 ["Guid"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K15 ["IkTargets"]
       16 SETTABLEKS                       R1 R0 K0 ["Metadata"]
       18 DUPTABLE                         R1 K25 [{"NamedKeyframes", "Keyframes", "Data"}]
       19 NEWTABLE                         R2 0 0
       21 SETTABLEKS                       R2 R1 K22 ["NamedKeyframes"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K23 ["Keyframes"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K24 ["Data"]
       31 SETTABLEKS                       R1 R0 K1 ["Events"]
       33 DUPTABLE                         R1 K27 [{"Root"}]
       34 DUPTABLE                         R2 K29 [{"Tracks"}]
       35 NEWTABLE                         R3 0 0
       37 SETTABLEKS                       R3 R2 K28 ["Tracks"]
       39 SETTABLEKS                       R2 R1 K26 ["Root"]
       41 SETTABLEKS                       R1 R0 K2 ["Instances"]
       43 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{[1] = , ["Tracks"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["Tracks"]
        5 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{[1], ["IsCurveTrack"] = False}]
        1 SETTABLEKS                       R0 R1 K0 ["Type"]
        3 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K10 [{[1] = "", ["Instance"] = , ["Depth"] = 0, ["Expanded"] = False, ["Selected"] = False, ["Type"]}]
        1 SETTABLEKS                       R0 R1 K9 ["Type"]
        3 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R0 K7 [{[1] = , ["EasingStyle"] = , ["EasingDirection"] = , ["InterpolationMode"] = , ["LeftSlope"] = , ["RightSlope"] = }]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 8 0
       22 DUPCLOSURE                       R4 K12 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R4 R3 K13 ["animationData"]
       26 DUPCLOSURE                       R4 K14 [PROTO_1]
       27 SETTABLEKS                       R4 R3 K15 ["instance"]
       29 DUPCLOSURE                       R4 K16 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K17 ["track"]
       32 DUPCLOSURE                       R4 K18 [PROTO_3]
       33 SETTABLEKS                       R4 R3 K19 ["trackListEntry"]
       35 DUPCLOSURE                       R4 K20 [PROTO_4]
       36 SETTABLEKS                       R4 R3 K21 ["keyframe"]
       38 RETURN                           R3 1
