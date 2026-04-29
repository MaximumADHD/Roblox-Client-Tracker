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
        0 DUPTABLE                         R1 K4 [{"Name", "Group", "Inputs", "Properties"}]
        1 LOADK                            R2 K5 ["ClipNode"]
        2 SETTABLEKS                       R2 R1 K0 ["Name"]
        4 LOADK                            R2 K6 ["Content"]
        5 SETTABLEKS                       R2 R1 K1 ["Group"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["Inputs"]
       11 NEWTABLE                         R2 0 4
       13 DUPTABLE                         R3 K8 [{"Name", "Value"}]
       14 LOADK                            R4 K9 ["speed"]
       15 SETTABLEKS                       R4 R3 K0 ["Name"]
       17 LOADN                            R4 1
       18 SETTABLEKS                       R4 R3 K7 ["Value"]
       20 DUPTABLE                         R4 K8 [{"Name", "Value"}]
       21 LOADK                            R5 K10 ["looping"]
       22 SETTABLEKS                       R5 R4 K0 ["Name"]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K7 ["Value"]
       27 DUPTABLE                         R5 K8 [{"Name", "Value"}]
       28 LOADK                            R6 K11 ["animationId"]
       29 SETTABLEKS                       R6 R5 K0 ["Name"]
       31 LOADK                            R6 K12 [""]
       32 SETTABLEKS                       R6 R5 K7 ["Value"]
       34 DUPTABLE                         R6 K8 [{"Name", "Value"}]
       35 LOADK                            R7 K13 ["externalTime"]
       36 SETTABLEKS                       R7 R6 K0 ["Name"]
       38 LOADN                            R7 255
       39 SETTABLEKS                       R7 R6 K7 ["Value"]
       41 SETLIST                          R2 R3 4 [1]
       43 SETTABLEKS                       R2 R1 K3 ["Properties"]
       45 RETURN                           R1 1

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
