PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Metadata", "Events", "Instances"}]
        1 DUPTABLE                         R1 K12 [{"Name", "StartTick", "EndTick", "Looping", "Priority", "FrameRate", "Guid", "IkTargets"}]
        2 LOADK                            R2 K13 [""]
        3 SETTABLEKS                       R2 R1 K4 ["Name"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K5 ["StartTick"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K6 ["EndTick"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K7 ["Looping"]
       14 GETIMPORT                        R2 K17 [Enum.AnimationPriority.Core]
       16 SETTABLEKS                       R2 R1 K8 ["Priority"]
       18 LOADN                            R2 30
       19 SETTABLEKS                       R2 R1 K9 ["FrameRate"]
       21 GETUPVAL                         R2 0
       22 NAMECALL                         R2 R2 K18 ["GenerateGUID"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K10 ["Guid"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K11 ["IkTargets"]
       31 SETTABLEKS                       R1 R0 K0 ["Metadata"]
       33 DUPTABLE                         R1 K22 [{"NamedKeyframes", "Keyframes", "Data"}]
       34 NEWTABLE                         R2 0 0
       36 SETTABLEKS                       R2 R1 K19 ["NamedKeyframes"]
       38 NEWTABLE                         R2 0 0
       40 SETTABLEKS                       R2 R1 K20 ["Keyframes"]
       42 NEWTABLE                         R2 0 0
       44 SETTABLEKS                       R2 R1 K21 ["Data"]
       46 SETTABLEKS                       R1 R0 K1 ["Events"]
       48 DUPTABLE                         R1 K24 [{"Root"}]
       49 DUPTABLE                         R2 K26 [{"Tracks"}]
       50 NEWTABLE                         R3 0 0
       52 SETTABLEKS                       R3 R2 K25 ["Tracks"]
       54 SETTABLEKS                       R2 R1 K23 ["Root"]
       56 SETTABLEKS                       R1 R0 K2 ["Instances"]
       58 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Type", "Tracks"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["Type"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["Tracks"]
        8 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Type", "IsCurveTrack"}]
        1 SETTABLEKS                       R0 R1 K0 ["Type"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["IsCurveTrack"]
        6 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"Name", "Instance", "Depth", "Expanded", "Selected", "Type"}]
        1 LOADK                            R2 K7 [""]
        2 SETTABLEKS                       R2 R1 K0 ["Name"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["Instance"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["Depth"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["Expanded"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["Selected"]
       16 SETTABLEKS                       R0 R1 K5 ["Type"]
       18 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R0 K6 [{"Value", "EasingStyle", "EasingDirection", "InterpolationMode", "LeftSlope", "RightSlope"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["Value"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["EasingStyle"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["EasingDirection"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K3 ["InterpolationMode"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K4 ["LeftSlope"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K5 ["RightSlope"]
       19 RETURN                           R0 1

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
