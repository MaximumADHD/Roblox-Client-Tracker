PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getGravity"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["workspaceGravity"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getUseJumpPower"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["workspaceUseJumpPower"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getJumpPower"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["workspaceJumpPower"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getJumpHeight"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["workspaceJumpHeight"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getWalkspeed"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["workspaceWalkSpeed"]
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getMaxSlopeAngle"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["workspaceMaxSlopeAngle"]
        7 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["game"]
        7 GETTABLEKS                       R4 R1 K3 ["worldRootPhysicsController"]
        9 NEWTABLE                         R5 0 6
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 NEWCLOSURE                       R7 P1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R3
       17 NEWCLOSURE                       R8 P2
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 NEWCLOSURE                       R9 P3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 NEWCLOSURE                       R10 P4
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 NEWCLOSURE                       R11 P5
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 SETLIST                          R5 R6 6 [1]
       31 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["workspaceUseJumpPower"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setUseJumpPower"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R3 2
       17 NAMECALL                         R1 R1 K4 ["getUseJumpPower"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+16]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["Settings"]
       24 GETTABLEKS                       R2 R3 K1 ["Changed"]
       26 GETTABLEKS                       R1 R2 K5 ["workspaceJumpPower"]
       28 JUMPIFEQKNIL                     R1 ; [+23]
       30 GETUPVAL                         R2 1
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R1
       33 NAMECALL                         R2 R2 K6 ["setJumpPower"]
       35 CALL                             R2 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K0 ["Settings"]
       40 GETTABLEKS                       R2 R3 K1 ["Changed"]
       42 GETTABLEKS                       R1 R2 K7 ["workspaceJumpHeight"]
       44 JUMPIFEQKNIL                     R1 ; [+7]
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R4 2
       48 MOVE                             R5 R1
       49 NAMECALL                         R2 R2 K8 ["setJumpHeight"]
       51 CALL                             R2 3 0
       52 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["workspaceGravity"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setGravity"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["workspaceWalkSpeed"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setWalkspeed"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["workspaceMaxSlopeAngle"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setMaxSlopeAngle"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["game"]
        7 GETTABLEKS                       R4 R1 K3 ["worldRootPhysicsController"]
        9 NEWTABLE                         R5 0 4
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R3
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 NEWCLOSURE                       R8 P2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 NEWCLOSURE                       R9 P3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 SETLIST                          R5 R6 4 [1]
       29 RETURN                           R5 1

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R3 K1 ["Errors"]
        4 DUPTABLE                         R3 K11 [{"WorkspaceUseJumpPower", "WorkspaceJumpPower", "WorkspaceJumpHeight", "WorkspaceGravity", "WorkspaceGravityError", "WorkspaceWalkSpeed", "WorkspaceWalkSpeedError", "WorkspaceMaxSlopeAngle", "WorkspaceMaxSlopeAngleError"}]
        5 MOVE                             R4 R0
        6 LOADK                            R5 K12 ["workspaceUseJumpPower"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K2 ["WorkspaceUseJumpPower"]
       10 MOVE                             R4 R0
       11 LOADK                            R5 K13 ["workspaceJumpPower"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K3 ["WorkspaceJumpPower"]
       15 MOVE                             R4 R0
       16 LOADK                            R5 K14 ["workspaceJumpHeight"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K4 ["WorkspaceJumpHeight"]
       20 MOVE                             R4 R0
       21 LOADK                            R5 K15 ["workspaceGravity"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K5 ["WorkspaceGravity"]
       25 GETTABLEKS                       R4 R2 K16 ["gravity"]
       27 SETTABLEKS                       R4 R3 K6 ["WorkspaceGravityError"]
       29 MOVE                             R4 R0
       30 LOADK                            R5 K17 ["workspaceWalkSpeed"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K7 ["WorkspaceWalkSpeed"]
       34 GETTABLEKS                       R4 R2 K18 ["walkSpeed"]
       36 SETTABLEKS                       R4 R3 K8 ["WorkspaceWalkSpeedError"]
       38 MOVE                             R4 R0
       39 LOADK                            R5 K19 ["workspaceMaxSlopeAngle"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K9 ["WorkspaceMaxSlopeAngle"]
       43 GETTABLEKS                       R4 R2 K20 ["maxSlopeAngle"]
       45 SETTABLEKS                       R4 R3 K10 ["WorkspaceMaxSlopeAngleError"]
       47 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["gravity"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K1 ["workspaceGravity"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K1 [{"gravity"}]
        3 SETTABLEKS                       R0 R4 K0 ["gravity"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["walkSpeed"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K1 ["workspaceWalkSpeed"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K1 [{"walkSpeed"}]
        3 SETTABLEKS                       R0 R4 K0 ["walkSpeed"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["maxSlopeAngle"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 LOADK                            R3 K1 ["workspaceMaxSlopeAngle"]
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K1 [{"maxSlopeAngle"}]
        3 SETTABLEKS                       R0 R4 K0 ["maxSlopeAngle"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R2 K9 [{"WorkspaceUseJumpPowerChanged", "WorkspaceJumpPowerChanged", "WorkspaceJumpHeightChanged", "WorkspaceGravityChanged", "WorkspaceRaiseGravityError", "WorkspaceWalkSpeedChanged", "WorkspaceRaiseWalkSpeedError", "WorkspaceMaxSlopeAngleChanged", "WorkspaceRaiseMaxSlopeAngleError"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K10 ["workspaceUseJumpPower"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["WorkspaceUseJumpPowerChanged"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K11 ["workspaceJumpPower"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["WorkspaceJumpPowerChanged"]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K12 ["workspaceJumpHeight"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["WorkspaceJumpHeightChanged"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R3 R2 K3 ["WorkspaceGravityChanged"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 SETTABLEKS                       R3 R2 K4 ["WorkspaceRaiseGravityError"]
       27 NEWCLOSURE                       R3 P2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 SETTABLEKS                       R3 R2 K5 ["WorkspaceWalkSpeedChanged"]
       33 NEWCLOSURE                       R3 P3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U2
       36 SETTABLEKS                       R3 R2 K6 ["WorkspaceRaiseWalkSpeedError"]
       38 NEWCLOSURE                       R3 P4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U1
       42 SETTABLEKS                       R3 R2 K7 ["WorkspaceMaxSlopeAngleChanged"]
       44 NEWCLOSURE                       R3 P5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R3 R2 K8 ["WorkspaceRaiseMaxSlopeAngleError"]
       49 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["Gravity"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["JumpPower"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K2 ["Walkspeed"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R4 R0 K3 ["MaxSlopeAngle"]
       14 JUMPIF                           R4 ; [+1]
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R5 4
       17 MOVE                             R6 R1
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 5
       20 LOADB                            R6 1
       21 CALL                             R5 1 0
       22 GETUPVAL                         R5 6
       23 MOVE                             R6 R2
       24 CALL                             R5 1 0
       25 GETUPVAL                         R5 7
       26 GETUPVAL                         R7 8
       27 GETTABLEKS                       R6 R7 K4 ["calculateJumpHeight"]
       29 MOVE                             R7 R1
       30 MOVE                             R8 R2
       31 CALL                             R6 2 -1
       32 CALL                             R5 -1 0
       33 GETUPVAL                         R5 9
       34 MOVE                             R6 R3
       35 CALL                             R5 1 0
       36 GETUPVAL                         R5 10
       37 MOVE                             R6 R4
       38 CALL                             R5 1 0
       39 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R2 R3 K0 ["calculateJumpHeight"]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 4
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 5
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K1 ["calculateJumpPower"]
       18 MOVE                             R3 R0
       19 GETUPVAL                         R4 6
       20 CALL                             R2 2 -1
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["General"]
        2 LOADK                            R4 K1 ["UnitsMetersPerSecondSquared1"]
        3 NEWTABLE                         R5 0 1
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R0
        7 CALL                             R6 1 -1
        8 SETLIST                          R5 R6 -1 [1]
       10 NAMECALL                         R1 R1 K2 ["getText"]
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["calculateJumpHeight"]
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["calculateJumpPower"]
        7 GETUPVAL                         R3 3
        8 MOVE                             R4 R0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["General"]
        2 LOADK                            R4 K1 ["UnitsMetersPerSecond1"]
        3 NEWTABLE                         R5 0 1
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R0
        7 CALL                             R6 1 -1
        8 SETLIST                          R5 R6 -1 [1]
       10 NAMECALL                         R1 R1 K2 ["getText"]
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["WorldRootPhysics"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R4 R0 K5 ["WorkspaceGravity"]
       12 ORK                              R3 R4 K4 [0]
       13 GETTABLEKS                       R4 R0 K6 ["WorkspaceGravityChanged"]
       15 GETTABLEKS                       R5 R0 K7 ["WorkspaceUseJumpPower"]
       17 GETTABLEKS                       R6 R0 K8 ["WorkspaceUseJumpPowerChanged"]
       19 GETTABLEKS                       R8 R0 K9 ["WorkspaceWalkSpeed"]
       21 ORK                              R7 R8 K4 [0]
       22 GETTABLEKS                       R8 R0 K10 ["WorkspaceWalkSpeedChanged"]
       24 GETTABLEKS                       R10 R0 K11 ["WorkspaceMaxSlopeAngle"]
       26 ORK                              R9 R10 K4 [0]
       27 GETTABLEKS                       R10 R0 K12 ["WorkspaceMaxSlopeAngleChanged"]
       29 LOADNIL                          R11
       30 LOADNIL                          R12
       31 GETTABLEKS                       R13 R0 K13 ["WorkspaceJumpPowerChanged"]
       33 GETTABLEKS                       R14 R0 K14 ["WorkspaceJumpHeightChanged"]
       35 JUMPIFNOT                        R5 ; [+10]
       36 GETTABLEKS                       R15 R0 K15 ["WorkspaceJumpPower"]
       38 ORK                              R12 R15 K4 [0]
       39 GETTABLEKS                       R15 R2 K16 ["calculateJumpHeight"]
       41 MOVE                             R16 R3
       42 MOVE                             R17 R12
       43 CALL                             R15 2 1
       44 MOVE                             R11 R15
       45 JUMP                             ; [+9]
       46 GETTABLEKS                       R15 R0 K17 ["WorkspaceJumpHeight"]
       48 ORK                              R11 R15 K4 [0]
       49 GETTABLEKS                       R15 R2 K18 ["calculateJumpPower"]
       51 MOVE                             R16 R3
       52 MOVE                             R17 R11
       53 CALL                             R15 2 1
       54 MOVE                             R12 R15
       55 GETTABLEKS                       R15 R0 K19 ["WorkspaceRaiseGravityError"]
       57 GETTABLEKS                       R16 R0 K20 ["WorkspaceRaiseWalkSpeedError"]
       59 GETTABLEKS                       R17 R0 K21 ["WorkspaceRaiseMaxSlopeAngleError"]
       61 DUPTABLE                         R18 K30 [{"Presets", "Separator1", "Gravity", "Separator2", "JumpSelect", "WalkSpeed", "JumpDistance", "MaxSlopeAngle"}]
       62 GETUPVAL                         R20 1
       63 GETTABLEKS                       R19 R20 K31 ["createElement"]
       65 GETUPVAL                         R20 2
       66 DUPTABLE                         R21 K34 [{"LayoutOrder", "ApplyPreset"}]
       67 LOADN                            R22 1
       68 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
       70 NEWCLOSURE                       R22 P0
       71 CAPTURE                          VAL R3
       72 CAPTURE                          REF R12
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R22 R21 K33 ["ApplyPreset"]
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K22 ["Presets"]
       87 GETUPVAL                         R20 1
       88 GETTABLEKS                       R19 R20 K31 ["createElement"]
       90 GETUPVAL                         R20 3
       91 DUPTABLE                         R21 K35 [{"LayoutOrder"}]
       92 LOADN                            R22 2
       93 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
       95 CALL                             R19 2 1
       96 SETTABLEKS                       R19 R18 K23 ["Separator1"]
       98 GETUPVAL                         R20 1
       99 GETTABLEKS                       R19 R20 K31 ["createElement"]
      101 GETUPVAL                         R20 4
      102 DUPTABLE                         R21 K44 [{"LayoutOrder", "Title", "Label", "Value", "MinValue", "MaxValue", "OnUpdate", "OnError", "UnitsFormatFunction"}]
      103 LOADN                            R22 3
      104 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      106 LOADK                            R24 K45 ["General"]
      107 LOADK                            R25 K46 ["TitleGravity"]
      108 NAMECALL                         R22 R1 K47 ["getText"]
      110 CALL                             R22 3 1
      111 SETTABLEKS                       R22 R21 K36 ["Title"]
      113 LOADK                            R24 K45 ["General"]
      114 LOADK                            R25 K48 ["GravityWorkspaceGravity"]
      115 NAMECALL                         R22 R1 K47 ["getText"]
      117 CALL                             R22 3 1
      118 SETTABLEKS                       R22 R21 K37 ["Label"]
      120 SETTABLEKS                       R3 R21 K38 ["Value"]
      122 LOADN                            R22 0
      123 SETTABLEKS                       R22 R21 K39 ["MinValue"]
      125 LOADN                            R22 232
      126 SETTABLEKS                       R22 R21 K40 ["MaxValue"]
      128 NEWCLOSURE                       R22 P1
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R2
      133 CAPTURE                          REF R12
      134 CAPTURE                          VAL R13
      135 CAPTURE                          REF R11
      136 SETTABLEKS                       R22 R21 K41 ["OnUpdate"]
      138 SETTABLEKS                       R15 R21 K42 ["OnError"]
      140 NEWCLOSURE                       R22 P2
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U5
      143 SETTABLEKS                       R22 R21 K43 ["UnitsFormatFunction"]
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K24 ["Gravity"]
      148 GETUPVAL                         R20 1
      149 GETTABLEKS                       R19 R20 K31 ["createElement"]
      151 GETUPVAL                         R20 3
      152 DUPTABLE                         R21 K35 [{"LayoutOrder"}]
      153 LOADN                            R22 4
      154 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K25 ["Separator2"]
      159 GETUPVAL                         R20 1
      160 GETTABLEKS                       R19 R20 K31 ["createElement"]
      162 GETUPVAL                         R20 6
      163 DUPTABLE                         R21 K55 [{"LayoutOrder", "UseJumpPower", "JumpPower", "JumpHeight", "SetUseJumpPower", "SetJumpPower", "SetJumpHeight"}]
      164 LOADN                            R22 5
      165 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      167 SETTABLEKS                       R5 R21 K49 ["UseJumpPower"]
      169 SETTABLEKS                       R12 R21 K50 ["JumpPower"]
      171 SETTABLEKS                       R11 R21 K51 ["JumpHeight"]
      173 SETTABLEKS                       R6 R21 K52 ["SetUseJumpPower"]
      175 NEWCLOSURE                       R22 P3
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R3
      180 SETTABLEKS                       R22 R21 K53 ["SetJumpPower"]
      182 NEWCLOSURE                       R22 P4
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R3
      187 SETTABLEKS                       R22 R21 K54 ["SetJumpHeight"]
      189 CALL                             R19 2 1
      190 SETTABLEKS                       R19 R18 K26 ["JumpSelect"]
      192 GETUPVAL                         R20 1
      193 GETTABLEKS                       R19 R20 K31 ["createElement"]
      195 GETUPVAL                         R20 4
      196 DUPTABLE                         R21 K56 [{"LayoutOrder", "Title", "Label", "Value", "MinValue", "OnUpdate", "OnError", "UnitsFormatFunction"}]
      197 LOADN                            R22 6
      198 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      200 LOADK                            R24 K45 ["General"]
      201 LOADK                            R25 K57 ["TitleWalk"]
      202 NAMECALL                         R22 R1 K47 ["getText"]
      204 CALL                             R22 3 1
      205 SETTABLEKS                       R22 R21 K36 ["Title"]
      207 LOADK                            R24 K45 ["General"]
      208 LOADK                            R25 K27 ["WalkSpeed"]
      209 NAMECALL                         R22 R1 K47 ["getText"]
      211 CALL                             R22 3 1
      212 SETTABLEKS                       R22 R21 K37 ["Label"]
      214 SETTABLEKS                       R7 R21 K38 ["Value"]
      216 LOADN                            R22 0
      217 SETTABLEKS                       R22 R21 K39 ["MinValue"]
      219 SETTABLEKS                       R8 R21 K41 ["OnUpdate"]
      221 SETTABLEKS                       R16 R21 K42 ["OnError"]
      223 NEWCLOSURE                       R22 P5
      224 CAPTURE                          VAL R1
      225 CAPTURE                          UPVAL U5
      226 SETTABLEKS                       R22 R21 K43 ["UnitsFormatFunction"]
      228 CALL                             R19 2 1
      229 SETTABLEKS                       R19 R18 K27 ["WalkSpeed"]
      231 GETUPVAL                         R20 1
      232 GETTABLEKS                       R19 R20 K31 ["createElement"]
      234 GETUPVAL                         R20 7
      235 DUPTABLE                         R21 K58 [{"LayoutOrder", "Title"}]
      236 LOADN                            R22 7
      237 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      239 LOADK                            R22 K59 [""]
      240 SETTABLEKS                       R22 R21 K36 ["Title"]
      242 DUPTABLE                         R22 K63 [{"JumpDistanceLabel", "JumpDistanceValue", "JumpDistanceMetricValue"}]
      243 GETUPVAL                         R24 1
      244 GETTABLEKS                       R23 R24 K31 ["createElement"]
      246 GETUPVAL                         R24 8
      247 DUPTABLE                         R25 K67 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      248 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      250 SETTABLEKS                       R26 R25 K64 ["AutomaticSize"]
      252 LOADN                            R26 1
      253 SETTABLEKS                       R26 R25 K32 ["LayoutOrder"]
      255 LOADK                            R26 K71 ["Normal"]
      256 SETTABLEKS                       R26 R25 K65 ["Style"]
      258 LOADK                            R28 K45 ["General"]
      259 LOADK                            R29 K28 ["JumpDistance"]
      260 NAMECALL                         R26 R1 K47 ["getText"]
      262 CALL                             R26 3 1
      263 SETTABLEKS                       R26 R25 K66 ["Text"]
      265 CALL                             R23 2 1
      266 SETTABLEKS                       R23 R22 K60 ["JumpDistanceLabel"]
      268 GETUPVAL                         R24 1
      269 GETTABLEKS                       R23 R24 K31 ["createElement"]
      271 GETUPVAL                         R24 8
      272 DUPTABLE                         R25 K67 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      273 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      275 SETTABLEKS                       R26 R25 K64 ["AutomaticSize"]
      277 LOADN                            R26 2
      278 SETTABLEKS                       R26 R25 K32 ["LayoutOrder"]
      280 LOADK                            R26 K72 ["SubText"]
      281 SETTABLEKS                       R26 R25 K65 ["Style"]
      283 GETUPVAL                         R26 5
      284 GETTABLEKS                       R27 R2 K73 ["calculateJumpDistance"]
      286 MOVE                             R28 R3
      287 MOVE                             R29 R12
      288 MOVE                             R30 R7
      289 CALL                             R27 3 -1
      290 CALL                             R26 -1 1
      291 SETTABLEKS                       R26 R25 K66 ["Text"]
      293 CALL                             R23 2 1
      294 SETTABLEKS                       R23 R22 K61 ["JumpDistanceValue"]
      296 GETUPVAL                         R24 1
      297 GETTABLEKS                       R23 R24 K31 ["createElement"]
      299 GETUPVAL                         R24 8
      300 DUPTABLE                         R25 K67 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      301 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      303 SETTABLEKS                       R26 R25 K64 ["AutomaticSize"]
      305 LOADN                            R26 3
      306 SETTABLEKS                       R26 R25 K32 ["LayoutOrder"]
      308 LOADK                            R26 K72 ["SubText"]
      309 SETTABLEKS                       R26 R25 K65 ["Style"]
      311 LOADK                            R28 K45 ["General"]
      312 LOADK                            R29 K74 ["UnitsMeters1"]
      313 NEWTABLE                         R30 0 1
      315 GETUPVAL                         R31 5
      316 GETTABLEKS                       R32 R2 K75 ["convertStudsToMeters"]
      318 GETTABLEKS                       R33 R2 K73 ["calculateJumpDistance"]
      320 MOVE                             R34 R3
      321 MOVE                             R35 R12
      322 MOVE                             R36 R7
      323 CALL                             R33 3 -1
      324 CALL                             R32 -1 -1
      325 CALL                             R31 -1 -1
      326 SETLIST                          R30 R31 -1 [1]
      328 NAMECALL                         R26 R1 K47 ["getText"]
      330 CALL                             R26 4 1
      331 SETTABLEKS                       R26 R25 K66 ["Text"]
      333 CALL                             R23 2 1
      334 SETTABLEKS                       R23 R22 K62 ["JumpDistanceMetricValue"]
      336 CALL                             R19 3 1
      337 SETTABLEKS                       R19 R18 K28 ["JumpDistance"]
      339 GETUPVAL                         R20 1
      340 GETTABLEKS                       R19 R20 K31 ["createElement"]
      342 GETUPVAL                         R20 4
      343 DUPTABLE                         R21 K44 [{"LayoutOrder", "Title", "Label", "Value", "MinValue", "MaxValue", "OnUpdate", "OnError", "UnitsFormatFunction"}]
      344 LOADN                            R22 8
      345 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      347 LOADK                            R24 K45 ["General"]
      348 LOADK                            R25 K76 ["TitleSlope"]
      349 NAMECALL                         R22 R1 K47 ["getText"]
      351 CALL                             R22 3 1
      352 SETTABLEKS                       R22 R21 K36 ["Title"]
      354 LOADK                            R24 K45 ["General"]
      355 LOADK                            R25 K77 ["SlopeAngle"]
      356 NAMECALL                         R22 R1 K47 ["getText"]
      358 CALL                             R22 3 1
      359 SETTABLEKS                       R22 R21 K37 ["Label"]
      361 SETTABLEKS                       R9 R21 K38 ["Value"]
      363 LOADN                            R22 0
      364 SETTABLEKS                       R22 R21 K39 ["MinValue"]
      366 LOADN                            R22 89
      367 SETTABLEKS                       R22 R21 K40 ["MaxValue"]
      369 SETTABLEKS                       R10 R21 K41 ["OnUpdate"]
      371 SETTABLEKS                       R17 R21 K42 ["OnError"]
      373 LOADNIL                          R22
      374 SETTABLEKS                       R22 R21 K43 ["UnitsFormatFunction"]
      376 CALL                             R19 2 1
      377 SETTABLEKS                       R19 R18 K29 ["MaxSlopeAngle"]
      379 CLOSEUPVALS                      R11
      380 RETURN                           R18 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K2 ["createElement"]
       17 GETUPVAL                         R5 8
       18 DUPTABLE                         R6 K8 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
       19 GETUPVAL                         R7 9
       20 SETTABLEKS                       R7 R6 K3 ["SettingsLoadJobs"]
       22 GETUPVAL                         R7 10
       23 SETTABLEKS                       R7 R6 K4 ["SettingsSaveJobs"]
       25 LOADK                            R9 K9 ["General"]
       26 LOADK                            R11 K10 ["Category"]
       27 GETUPVAL                         R12 11
       28 CONCAT                           R10 R11 R12
       29 NAMECALL                         R7 R2 K11 ["getText"]
       31 CALL                             R7 3 1
       32 SETTABLEKS                       R7 R6 K5 ["Title"]
       34 GETUPVAL                         R7 11
       35 SETTABLEKS                       R7 R6 K6 ["PageId"]
       37 SETTABLEKS                       R3 R6 K7 ["CreateChildren"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_29:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_31:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_32:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R4 K1 [script]
        7 GETTABLEKS                       R3 R4 K2 ["Parent"]
        9 GETTABLEKS                       R2 R3 K2 ["Parent"]
       11 GETTABLEKS                       R1 R2 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R4 R1 K5 ["Packages"]
       17 GETTABLEKS                       R3 R4 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R5 R1 K5 ["Packages"]
       24 GETTABLEKS                       R4 R5 K7 ["RoactRodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R6 R1 K5 ["Packages"]
       31 GETTABLEKS                       R5 R6 K8 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K10 ["withContext"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R9 R0 K9 ["ContextServices"]
       42 GETTABLEKS                       R8 R9 K11 ["WorldRootPhysics"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R11 R1 K12 ["Src"]
       49 GETTABLEKS                       R10 R11 K13 ["Actions"]
       51 GETTABLEKS                       R9 R10 K14 ["AddChange"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R12 R1 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K13 ["Actions"]
       60 GETTABLEKS                       R10 R11 K15 ["AddErrors"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K4 [require]
       65 GETTABLEKS                       R13 R1 K12 ["Src"]
       67 GETTABLEKS                       R12 R13 K13 ["Actions"]
       69 GETTABLEKS                       R11 R12 K16 ["DiscardError"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K4 [require]
       74 GETTABLEKS                       R13 R0 K17 ["Util"]
       76 GETTABLEKS                       R12 R13 K18 ["formatNumberForDisplay"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K4 [require]
       81 GETTABLEKS                       R16 R1 K12 ["Src"]
       83 GETTABLEKS                       R15 R16 K19 ["Components"]
       85 GETTABLEKS                       R14 R15 K20 ["SettingsPages"]
       87 GETTABLEKS                       R13 R14 K21 ["SettingsPage"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K4 [require]
       92 GETTABLEKS                       R15 R0 K19 ["Components"]
       94 GETTABLEKS                       R14 R15 K22 ["PresetsBar"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K4 [require]
       99 GETTABLEKS                       R16 R0 K19 ["Components"]
      101 GETTABLEKS                       R15 R16 K23 ["JumpSelect"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K4 [require]
      106 GETTABLEKS                       R17 R0 K19 ["Components"]
      108 GETTABLEKS                       R16 R17 K24 ["NumberInputRow"]
      110 CALL                             R15 1 1
      111 GETTABLEKS                       R16 R4 K25 ["UI"]
      113 GETTABLEKS                       R17 R16 K26 ["TextLabel"]
      115 GETTABLEKS                       R18 R16 K27 ["TitledFrame"]
      117 GETTABLEKS                       R19 R16 K28 ["Separator"]
      119 GETIMPORT                        R21 K1 [script]
      121 GETTABLEKS                       R20 R21 K29 ["Name"]
      123 DUPCLOSURE                       R21 K30 [PROTO_6]
      124 DUPCLOSURE                       R22 K31 [PROTO_11]
      125 DUPCLOSURE                       R23 K32 [PROTO_12]
      126 DUPCLOSURE                       R24 K33 [PROTO_19]
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R9
      130 GETTABLEKS                       R25 R2 K34 ["PureComponent"]
      132 LOADK                            R27 K35 ["World"]
      133 NAMECALL                         R25 R25 K36 ["extend"]
      135 CALL                             R25 2 1
      136 DUPCLOSURE                       R26 K37 [PROTO_27]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R20
      149 SETTABLEKS                       R26 R25 K38 ["render"]
      151 MOVE                             R26 R6
      152 DUPTABLE                         R27 K40 [{"Localization", "WorldRootPhysics"}]
      153 GETTABLEKS                       R28 R5 K39 ["Localization"]
      155 SETTABLEKS                       R28 R27 K39 ["Localization"]
      157 SETTABLEKS                       R7 R27 K11 ["WorldRootPhysics"]
      159 CALL                             R26 1 1
      160 MOVE                             R27 R25
      161 CALL                             R26 1 1
      162 MOVE                             R25 R26
      163 GETIMPORT                        R26 K4 [require]
      165 GETTABLEKS                       R29 R1 K12 ["Src"]
      167 GETTABLEKS                       R28 R29 K41 ["Networking"]
      169 GETTABLEKS                       R27 R28 K42 ["settingFromState"]
      171 CALL                             R26 1 1
      172 GETTABLEKS                       R27 R3 K43 ["connect"]
      174 DUPCLOSURE                       R28 K44 [PROTO_29]
      175 CAPTURE                          VAL R26
      176 CAPTURE                          VAL R23
      177 DUPCLOSURE                       R29 K45 [PROTO_32]
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R24
      180 CALL                             R27 2 1
      181 MOVE                             R28 R25
      182 CALL                             R27 1 1
      183 MOVE                             R25 R27
      184 SETTABLEKS                       R20 R25 K46 ["LocalizationId"]
      186 RETURN                           R25 1
