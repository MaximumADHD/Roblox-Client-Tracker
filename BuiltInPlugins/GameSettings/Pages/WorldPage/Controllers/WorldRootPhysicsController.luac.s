PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 MULK                             R1 R0 K0 [0.28]
        1 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R3 K1 [workspace]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R3 K2 ["CalculateJumpDistance"]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [workspace]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["CalculateJumpHeight"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R2 K1 [workspace]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["CalculateJumpPower"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_5:
        0 LOADK                            R4 K0 ["Workspace"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["Gravity"]
        6 RETURN                           R3 1

PROTO_6:
        0 LOADK                            R5 K0 ["Workspace"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["Gravity"]
        6 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["CharacterUseJumpPower"]
        6 RETURN                           R3 1

PROTO_8:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["CharacterUseJumpPower"]
        6 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["Workspace"]
        5 NAMECALL                         R3 R1 K1 ["GetService"]
        7 CALL                             R3 2 1
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R0 K3 ["getUseJumpPower"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+12]
       13 MOVE                             R8 R1
       14 NAMECALL                         R6 R0 K4 ["getGravity"]
       16 CALL                             R6 2 1
       17 MOVE                             R9 R1
       18 NAMECALL                         R7 R0 K5 ["getJumpPower"]
       20 CALL                             R7 2 -1
       21 NAMECALL                         R4 R3 K6 ["CalculateJumpHeight"]
       23 CALL                             R4 -1 -1
       24 RETURN                           R4 -1
       25 GETTABLEKS                       R4 R2 K7 ["CharacterJumpHeight"]
       27 RETURN                           R4 1

PROTO_10:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 LOADK                            R6 K2 ["Workspace"]
        5 NAMECALL                         R4 R1 K1 ["GetService"]
        7 CALL                             R4 2 1
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R0 K3 ["getGravity"]
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R2 R3 K4 ["CharacterJumpHeight"]
       14 MOVE                             R8 R5
       15 MOVE                             R9 R2
       16 NAMECALL                         R6 R4 K5 ["CalculateJumpPower"]
       18 CALL                             R6 3 1
       19 SETTABLEKS                       R6 R3 K6 ["CharacterJumpPower"]
       21 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R0 K2 ["getGravity"]
        7 CALL                             R3 2 1
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R0 K3 ["getUseJumpPower"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R4 R2 K4 ["CharacterJumpPower"]
       15 RETURN                           R4 1
       16 GETIMPORT                        R4 K6 [workspace]
       18 MOVE                             R6 R3
       19 MOVE                             R9 R1
       20 NAMECALL                         R7 R0 K7 ["getJumpHeight"]
       22 CALL                             R7 2 -1
       23 NAMECALL                         R4 R4 K8 ["CalculateJumpPower"]
       25 CALL                             R4 -1 -1
       26 RETURN                           R4 -1

PROTO_12:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["CharacterJumpPower"]
        6 GETIMPORT                        R4 K4 [workspace]
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R0 K5 ["getGravity"]
       11 CALL                             R6 2 1
       12 MOVE                             R7 R2
       13 NAMECALL                         R4 R4 K6 ["CalculateJumpHeight"]
       15 CALL                             R4 3 1
       16 SETTABLEKS                       R4 R3 K7 ["CharacterJumpHeight"]
       18 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["CharacterWalkSpeed"]
        6 RETURN                           R3 1

PROTO_14:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["CharacterWalkSpeed"]
        6 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R4 K0 ["StarterPlayer"]
        1 NAMECALL                         R2 R1 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["CharacterMaxSlopeAngle"]
        6 RETURN                           R3 1

PROTO_16:
        0 LOADK                            R5 K0 ["StarterPlayer"]
        1 NAMECALL                         R3 R1 K1 ["GetService"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K2 ["CharacterMaxSlopeAngle"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["convertStudsToMeters"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["calculateJumpDistance"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["calculateJumpHeight"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["calculateJumpPower"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["getGravity"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["setGravity"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["getUseJumpPower"]
       30 DUPCLOSURE                       R1 K17 [PROTO_8]
       31 SETTABLEKS                       R1 R0 K18 ["setUseJumpPower"]
       33 DUPCLOSURE                       R1 K19 [PROTO_9]
       34 SETTABLEKS                       R1 R0 K20 ["getJumpHeight"]
       36 DUPCLOSURE                       R1 K21 [PROTO_10]
       37 SETTABLEKS                       R1 R0 K22 ["setJumpHeight"]
       39 DUPCLOSURE                       R1 K23 [PROTO_11]
       40 SETTABLEKS                       R1 R0 K24 ["getJumpPower"]
       42 DUPCLOSURE                       R1 K25 [PROTO_12]
       43 SETTABLEKS                       R1 R0 K26 ["setJumpPower"]
       45 DUPCLOSURE                       R1 K27 [PROTO_13]
       46 SETTABLEKS                       R1 R0 K28 ["getWalkspeed"]
       48 DUPCLOSURE                       R1 K29 [PROTO_14]
       49 SETTABLEKS                       R1 R0 K30 ["setWalkspeed"]
       51 DUPCLOSURE                       R1 K31 [PROTO_15]
       52 SETTABLEKS                       R1 R0 K32 ["getMaxSlopeAngle"]
       54 DUPCLOSURE                       R1 K33 [PROTO_16]
       55 SETTABLEKS                       R1 R0 K34 ["setMaxSlopeAngle"]
       57 RETURN                           R0 1
