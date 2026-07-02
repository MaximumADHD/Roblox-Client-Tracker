PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAnimationNodeTypes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 GETIMPORT                        R1 K3 [Enum.KeyInterpolationMode.Cubic]
        4 SETLIST                          R0 R1 1 [1]
        6 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K6 [{[1] = "ClipNode", ["Group"] = "Content", ["Inputs"], ["Properties"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K4 ["Inputs"]
        5 NEWTABLE                         R2 0 4
        7 DUPTABLE                         R3 K10 [{[1] = "speed", ["Value"] = 1}]
        8 DUPTABLE                         R4 K13 [{[1] = "looping", ["Value"] = True}]
        9 DUPTABLE                         R5 K16 [{[1] = "animationId", ["Value"] = ""}]
       10 DUPTABLE                         R6 K19 [{[1] = "externalTime", ["Value"] = -1}]
       11 SETLIST                          R2 R3 4 [1]
       13 SETTABLEKS                       R2 R1 K5 ["Properties"]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 1
       14 NEWTABLE                         R3 2 0
       16 DUPCLOSURE                       R4 K7 [PROTO_1]
       17 SETTABLEKS                       R4 R3 K8 ["GetAnimationNodeTypes"]
       19 DUPCLOSURE                       R4 K9 [PROTO_2]
       20 SETTABLEKS                       R4 R3 K10 ["GetAnimationNodeDefinition"]
       22 RETURN                           R3 1
