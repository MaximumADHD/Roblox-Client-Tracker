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
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["game"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["workspaceUseJumpPower"]
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
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["Settings"]
       24 GETTABLEKS                       R1 R1 K1 ["Changed"]
       26 GETTABLEKS                       R1 R1 K5 ["workspaceJumpPower"]
       28 JUMPIFEQKNIL                     R1 ; [+23]
       30 GETUPVAL                         R2 1
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R1
       33 NAMECALL                         R2 R2 K6 ["setJumpPower"]
       35 CALL                             R2 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K0 ["Settings"]
       40 GETTABLEKS                       R1 R1 K1 ["Changed"]
       42 GETTABLEKS                       R1 R1 K7 ["workspaceJumpHeight"]
       44 JUMPIFEQKNIL                     R1 ; [+7]
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R4 2
       48 MOVE                             R5 R1
       49 NAMECALL                         R2 R2 K8 ["setJumpHeight"]
       51 CALL                             R2 3 0
       52 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["workspaceGravity"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setGravity"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["workspaceWalkSpeed"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setWalkspeed"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["workspaceMaxSlopeAngle"]
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
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["game"]
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
        0 GETTABLEKS                       R2 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R2 K1 ["Errors"]
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
       26 GETUPVAL                         R6 8
       27 GETTABLEKS                       R6 R6 K4 ["calculateJumpHeight"]
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
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["calculateJumpHeight"]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 4
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 5
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["calculateJumpPower"]
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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["calculateJumpHeight"]
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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["calculateJumpPower"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
       62 GETUPVAL                         R19 1
       63 GETTABLEKS                       R19 R19 K31 ["createElement"]
       65 GETUPVAL                         R20 2
       66 DUPTABLE                         R21 K35 [{["LayoutOrder"] = 1, ["ApplyPreset"]}]
       67 NEWCLOSURE                       R22 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          REF R12
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R10
       79 SETTABLEKS                       R22 R21 K34 ["ApplyPreset"]
       81 CALL                             R19 2 1
       82 SETTABLEKS                       R19 R18 K22 ["Presets"]
       84 GETUPVAL                         R19 1
       85 GETTABLEKS                       R19 R19 K31 ["createElement"]
       87 GETUPVAL                         R20 3
       88 DUPTABLE                         R21 K37 [{["LayoutOrder"] = 2}]
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K23 ["Separator1"]
       92 GETUPVAL                         R19 1
       93 GETTABLEKS                       R19 R19 K31 ["createElement"]
       95 GETUPVAL                         R20 4
       96 DUPTABLE                         R21 K48 [{["LayoutOrder"] = 3, ["Title"], ["Label"], ["Value"], ["MinValue"] = 0, ["MaxValue"] = 1000, ["OnUpdate"], ["OnError"], ["UnitsFormatFunction"]}]
       97 LOADK                            R24 K49 ["General"]
       98 LOADK                            R25 K50 ["TitleGravity"]
       99 NAMECALL                         R22 R1 K51 ["getText"]
      101 CALL                             R22 3 1
      102 SETTABLEKS                       R22 R21 K39 ["Title"]
      104 LOADK                            R24 K49 ["General"]
      105 LOADK                            R25 K52 ["GravityWorkspaceGravity"]
      106 NAMECALL                         R22 R1 K51 ["getText"]
      108 CALL                             R22 3 1
      109 SETTABLEKS                       R22 R21 K40 ["Label"]
      111 SETTABLEKS                       R3 R21 K41 ["Value"]
      113 NEWCLOSURE                       R22 P1
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R2
      118 CAPTURE                          REF R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          REF R11
      121 SETTABLEKS                       R22 R21 K45 ["OnUpdate"]
      123 SETTABLEKS                       R15 R21 K46 ["OnError"]
      125 NEWCLOSURE                       R22 P2
      126 CAPTURE                          VAL R1
      127 CAPTURE                          UPVAL U5
      128 SETTABLEKS                       R22 R21 K47 ["UnitsFormatFunction"]
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K24 ["Gravity"]
      133 GETUPVAL                         R19 1
      134 GETTABLEKS                       R19 R19 K31 ["createElement"]
      136 GETUPVAL                         R20 3
      137 DUPTABLE                         R21 K54 [{["LayoutOrder"] = 4}]
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K25 ["Separator2"]
      141 GETUPVAL                         R19 1
      142 GETTABLEKS                       R19 R19 K31 ["createElement"]
      144 GETUPVAL                         R20 6
      145 DUPTABLE                         R21 K62 [{["LayoutOrder"] = 5, ["UseJumpPower"], ["JumpPower"], ["JumpHeight"], ["SetUseJumpPower"], ["SetJumpPower"], ["SetJumpHeight"]}]
      146 SETTABLEKS                       R5 R21 K56 ["UseJumpPower"]
      148 SETTABLEKS                       R12 R21 K57 ["JumpPower"]
      150 SETTABLEKS                       R11 R21 K58 ["JumpHeight"]
      152 SETTABLEKS                       R6 R21 K59 ["SetUseJumpPower"]
      154 NEWCLOSURE                       R22 P3
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R22 R21 K60 ["SetJumpPower"]
      161 NEWCLOSURE                       R22 P4
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R22 R21 K61 ["SetJumpHeight"]
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K26 ["JumpSelect"]
      171 GETUPVAL                         R19 1
      172 GETTABLEKS                       R19 R19 K31 ["createElement"]
      174 GETUPVAL                         R20 4
      175 DUPTABLE                         R21 K64 [{["LayoutOrder"] = 6, ["Title"], ["Label"], ["Value"], ["MinValue"] = 0, ["OnUpdate"], ["OnError"], ["UnitsFormatFunction"]}]
      176 LOADK                            R24 K49 ["General"]
      177 LOADK                            R25 K65 ["TitleWalk"]
      178 NAMECALL                         R22 R1 K51 ["getText"]
      180 CALL                             R22 3 1
      181 SETTABLEKS                       R22 R21 K39 ["Title"]
      183 LOADK                            R24 K49 ["General"]
      184 LOADK                            R25 K27 ["WalkSpeed"]
      185 NAMECALL                         R22 R1 K51 ["getText"]
      187 CALL                             R22 3 1
      188 SETTABLEKS                       R22 R21 K40 ["Label"]
      190 SETTABLEKS                       R7 R21 K41 ["Value"]
      192 SETTABLEKS                       R8 R21 K45 ["OnUpdate"]
      194 SETTABLEKS                       R16 R21 K46 ["OnError"]
      196 NEWCLOSURE                       R22 P5
      197 CAPTURE                          VAL R1
      198 CAPTURE                          UPVAL U5
      199 SETTABLEKS                       R22 R21 K47 ["UnitsFormatFunction"]
      201 CALL                             R19 2 1
      202 SETTABLEKS                       R19 R18 K27 ["WalkSpeed"]
      204 GETUPVAL                         R19 1
      205 GETTABLEKS                       R19 R19 K31 ["createElement"]
      207 GETUPVAL                         R20 7
      208 DUPTABLE                         R21 K68 [{["LayoutOrder"] = 7, ["Title"] = ""}]
      209 DUPTABLE                         R22 K72 [{"JumpDistanceLabel", "JumpDistanceValue", "JumpDistanceMetricValue"}]
      210 GETUPVAL                         R23 1
      211 GETTABLEKS                       R23 R23 K31 ["createElement"]
      213 GETUPVAL                         R24 8
      214 DUPTABLE                         R25 K77 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Style"] = "Normal", ["Text"]}]
      215 GETIMPORT                        R26 K80 [Enum.AutomaticSize.XY]
      217 SETTABLEKS                       R26 R25 K73 ["AutomaticSize"]
      219 LOADK                            R28 K49 ["General"]
      220 LOADK                            R29 K28 ["JumpDistance"]
      221 NAMECALL                         R26 R1 K51 ["getText"]
      223 CALL                             R26 3 1
      224 SETTABLEKS                       R26 R25 K76 ["Text"]
      226 CALL                             R23 2 1
      227 SETTABLEKS                       R23 R22 K69 ["JumpDistanceLabel"]
      229 GETUPVAL                         R23 1
      230 GETTABLEKS                       R23 R23 K31 ["createElement"]
      232 GETUPVAL                         R24 8
      233 DUPTABLE                         R25 K82 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Style"] = "SubText", ["Text"]}]
      234 GETIMPORT                        R26 K80 [Enum.AutomaticSize.XY]
      236 SETTABLEKS                       R26 R25 K73 ["AutomaticSize"]
      238 GETUPVAL                         R26 5
      239 GETTABLEKS                       R27 R2 K83 ["calculateJumpDistance"]
      241 MOVE                             R28 R3
      242 MOVE                             R29 R12
      243 MOVE                             R30 R7
      244 CALL                             R27 3 -1
      245 CALL                             R26 -1 1
      246 SETTABLEKS                       R26 R25 K76 ["Text"]
      248 CALL                             R23 2 1
      249 SETTABLEKS                       R23 R22 K70 ["JumpDistanceValue"]
      251 GETUPVAL                         R23 1
      252 GETTABLEKS                       R23 R23 K31 ["createElement"]
      254 GETUPVAL                         R24 8
      255 DUPTABLE                         R25 K84 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Style"] = "SubText", ["Text"]}]
      256 GETIMPORT                        R26 K80 [Enum.AutomaticSize.XY]
      258 SETTABLEKS                       R26 R25 K73 ["AutomaticSize"]
      260 LOADK                            R28 K49 ["General"]
      261 LOADK                            R29 K85 ["UnitsMeters1"]
      262 NEWTABLE                         R30 0 1
      264 GETUPVAL                         R31 5
      265 GETTABLEKS                       R32 R2 K86 ["convertStudsToMeters"]
      267 GETTABLEKS                       R33 R2 K83 ["calculateJumpDistance"]
      269 MOVE                             R34 R3
      270 MOVE                             R35 R12
      271 MOVE                             R36 R7
      272 CALL                             R33 3 -1
      273 CALL                             R32 -1 -1
      274 CALL                             R31 -1 -1
      275 SETLIST                          R30 R31 -1 [1]
      277 NAMECALL                         R26 R1 K51 ["getText"]
      279 CALL                             R26 4 1
      280 SETTABLEKS                       R26 R25 K76 ["Text"]
      282 CALL                             R23 2 1
      283 SETTABLEKS                       R23 R22 K71 ["JumpDistanceMetricValue"]
      285 CALL                             R19 3 1
      286 SETTABLEKS                       R19 R18 K28 ["JumpDistance"]
      288 GETUPVAL                         R19 1
      289 GETTABLEKS                       R19 R19 K31 ["createElement"]
      291 GETUPVAL                         R20 4
      292 DUPTABLE                         R21 K90 [{["LayoutOrder"] = 8, ["Title"], ["Label"], ["Value"], ["MinValue"] = 0, ["MaxValue"] = 89, ["OnUpdate"], ["OnError"], ["UnitsFormatFunction"] = }]
      293 LOADK                            R24 K49 ["General"]
      294 LOADK                            R25 K91 ["TitleSlope"]
      295 NAMECALL                         R22 R1 K51 ["getText"]
      297 CALL                             R22 3 1
      298 SETTABLEKS                       R22 R21 K39 ["Title"]
      300 LOADK                            R24 K49 ["General"]
      301 LOADK                            R25 K92 ["SlopeAngle"]
      302 NAMECALL                         R22 R1 K51 ["getText"]
      304 CALL                             R22 3 1
      305 SETTABLEKS                       R22 R21 K40 ["Label"]
      307 SETTABLEKS                       R9 R21 K41 ["Value"]
      309 SETTABLEKS                       R10 R21 K45 ["OnUpdate"]
      311 SETTABLEKS                       R17 R21 K46 ["OnError"]
      313 CALL                             R19 2 1
      314 SETTABLEKS                       R19 R18 K29 ["MaxSlopeAngle"]
      316 CLOSEUPVALS                      R11
      317 RETURN                           R18 1

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
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["createElement"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R3 R1 K5 ["Packages"]
       17 GETTABLEKS                       R3 R3 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K7 ["RoactRodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R1 K5 ["Packages"]
       31 GETTABLEKS                       R5 R5 K8 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K10 ["withContext"]
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R0 K9 ["ContextServices"]
       42 GETTABLEKS                       R8 R8 K11 ["WorldRootPhysics"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R1 K12 ["Src"]
       49 GETTABLEKS                       R9 R9 K13 ["Actions"]
       51 GETTABLEKS                       R9 R9 K14 ["AddChange"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R1 K12 ["Src"]
       58 GETTABLEKS                       R10 R10 K13 ["Actions"]
       60 GETTABLEKS                       R10 R10 K15 ["AddErrors"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K4 [require]
       65 GETTABLEKS                       R11 R1 K12 ["Src"]
       67 GETTABLEKS                       R11 R11 K13 ["Actions"]
       69 GETTABLEKS                       R11 R11 K16 ["DiscardError"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K4 [require]
       74 GETTABLEKS                       R12 R0 K17 ["Util"]
       76 GETTABLEKS                       R12 R12 K18 ["formatNumberForDisplay"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K4 [require]
       81 GETTABLEKS                       R13 R1 K12 ["Src"]
       83 GETTABLEKS                       R13 R13 K19 ["Components"]
       85 GETTABLEKS                       R13 R13 K20 ["SettingsPages"]
       87 GETTABLEKS                       R13 R13 K21 ["SettingsPage"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K4 [require]
       92 GETTABLEKS                       R14 R0 K19 ["Components"]
       94 GETTABLEKS                       R14 R14 K22 ["PresetsBar"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K4 [require]
       99 GETTABLEKS                       R15 R0 K19 ["Components"]
      101 GETTABLEKS                       R15 R15 K23 ["JumpSelect"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K4 [require]
      106 GETTABLEKS                       R16 R0 K19 ["Components"]
      108 GETTABLEKS                       R16 R16 K24 ["NumberInputRow"]
      110 CALL                             R15 1 1
      111 GETTABLEKS                       R16 R4 K25 ["UI"]
      113 GETTABLEKS                       R17 R16 K26 ["TextLabel"]
      115 GETTABLEKS                       R18 R16 K27 ["TitledFrame"]
      117 GETTABLEKS                       R19 R16 K28 ["Separator"]
      119 GETIMPORT                        R20 K1 [script]
      121 GETTABLEKS                       R20 R20 K29 ["Name"]
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
      165 GETTABLEKS                       R27 R1 K12 ["Src"]
      167 GETTABLEKS                       R27 R27 K41 ["Networking"]
      169 GETTABLEKS                       R27 R27 K42 ["settingFromState"]
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
