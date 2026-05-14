PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["HeadColor"]
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R1 R0 K1 ["LeftArmColor"]
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R1 R0 K2 ["LeftLegColor"]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K3 ["RightArmColor"]
       12 GETUPVAL                         R1 0
       13 SETTABLEKS                       R1 R0 K4 ["RightLegColor"]
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R1 R0 K5 ["TorsoColor"]
       18 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+13]
        3 GETIMPORT                        R2 K3 [Instance.new]
        5 LOADK                            R3 K4 ["HumanoidDescription"]
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K5 ["BodyTypeScale"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R1 K6 ["ProportionScale"]
       14 JUMP                             ; [+6]
       15 GETUPVAL                         R2 0
       16 MOVE                             R4 R0
       17 NAMECALL                         R2 R2 K7 ["GetHumanoidDescriptionFromOutfitId"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 1
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 MOVE                             R2 R1
       25 GETUPVAL                         R3 2
       26 SETTABLEKS                       R3 R2 K8 ["HeadColor"]
       28 GETUPVAL                         R3 2
       29 SETTABLEKS                       R3 R2 K9 ["LeftArmColor"]
       31 GETUPVAL                         R3 2
       32 SETTABLEKS                       R3 R2 K10 ["LeftLegColor"]
       34 GETUPVAL                         R3 2
       35 SETTABLEKS                       R3 R2 K11 ["RightArmColor"]
       37 GETUPVAL                         R3 2
       38 SETTABLEKS                       R3 R2 K12 ["RightLegColor"]
       40 GETUPVAL                         R3 2
       41 SETTABLEKS                       R3 R2 K13 ["TorsoColor"]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["clearPrebakedDescriptionAnimations"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K12 [Color3.new]
       18 LOADK                            R3 K13 [0.5]
       19 LOADK                            R4 K13 [0.5]
       20 LOADK                            R5 K13 [0.5]
       21 CALL                             R2 3 1
       22 DUPCLOSURE                       R3 K14 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R4 K15 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
