PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateHumanoidModelFromDescriptionAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RegisterKeyframeSequence"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["LoadAnimation"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["KeyframeSequenceProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 NEWTABLE                         R3 4 0
       21 DUPCLOSURE                       R4 K6 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K7 ["createCharacter"]
       25 DUPCLOSURE                       R4 K8 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K9 ["registerClip"]
       29 DUPCLOSURE                       R4 K10 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K11 ["loadAnimation"]
       32 DUPCLOSURE                       R4 K12 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R4 R3 K13 ["waitForFrame"]
       36 RETURN                           R3 1
