PROTO_0:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["IsRunning"]
        3 CALL                             R4 1 1
        4 JUMPIFNOT                        R4 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R0 K1 ["StepAnimations"]
       13 CALL                             R4 2 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R4 R0 K2 ["StepAnimationsInternal"]
       17 JUMPIFNOTEQKNIL                  R4 ; [+6]
       19 MOVE                             R7 R1
       20 NAMECALL                         R5 R0 K1 ["StepAnimations"]
       22 CALL                             R5 2 0
       23 RETURN                           R0 0
       24 MOVE                             R5 R4
       25 MOVE                             R6 R0
       26 MOVE                             R7 R1
       27 DUPTABLE                         R8 K5 [{"retargetingEnabledOverride", "automaticScalingEnabledOverride"}]
       28 SETTABLEKS                       R2 R8 K3 ["retargetingEnabledOverride"]
       30 SETTABLEKS                       R3 R8 K4 ["automaticScalingEnabledOverride"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
