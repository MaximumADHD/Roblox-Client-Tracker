PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["ReplicatedStorage"]
        4 GETTABLEKS                       R1 R1 K3 ["Misc"]
        6 GETTABLEKS                       R1 R1 K4 ["JetpackInputContext"]
        8 NAMECALL                         R2 R1 K5 ["Clone"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R0 R2 K6 ["Parent"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["IsServer"]
        6 CALL                             R0 1 1
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETIMPORT                        R0 K1 [game]
       10 GETTABLEKS                       R0 R0 K4 ["Players"]
       12 GETTABLEKS                       R0 R0 K5 ["PlayerAdded"]
       14 DUPCLOSURE                       R2 K6 [PROTO_0]
       15 NAMECALL                         R0 R0 K7 ["Connect"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K8 ["SimulateJetpacks"]
       22 NAMECALL                         R0 R0 K9 ["BindToSimulation"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R5 K0 ["JumpAction"]
        1 LOADB                            R6 1
        2 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        4 CALL                             R3 3 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R7 K3 ["JetpackFuel"]
        9 NAMECALL                         R5 R1 K4 ["GetAttribute"]
       11 CALL                             R5 2 1
       12 ORK                              R4 R5 K2 [100]
       13 NAMECALL                         R5 R3 K5 ["GetState"]
       15 CALL                             R5 1 1
       16 JUMPIFNOT                        R5 ; [+24]
       17 LOADN                            R5 0
       18 JUMPIFNOTLT                      R5 R4 ; [+12]
       20 GETTABLEKS                       R5 R1 K6 ["AssemblyLinearVelocity"]
       22 GETTABLEKS                       R5 R5 K7 ["Y"]
       24 LOADN                            R6 5
       25 JUMPIFNOTLT                      R5 R6 ; [+5]
       27 LOADK                            R7 K8 [{0, 67, 0}]
       28 NAMECALL                         R5 R1 K9 ["ApplyImpulse"]
       30 CALL                             R5 2 0
       31 LOADN                            R6 0
       32 MULK                             R8 R2 K10 [33]
       33 SUB                              R7 R4 R8
       34 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       36 GETIMPORT                        R5 K13 [math.max]
       38 CALL                             R5 2 1
       39 MOVE                             R4 R5
       40 JUMP                             ; [+9]
       41 LOADN                            R6 100
       42 MULK                             R8 R2 K10 [33]
       43 ADD                              R7 R4 R8
       44 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       46 GETIMPORT                        R5 K15 [math.min]
       48 CALL                             R5 2 1
       49 MOVE                             R4 R5
       50 LOADK                            R7 K3 ["JetpackFuel"]
       51 MOVE                             R8 R4
       52 NAMECALL                         R5 R1 K16 ["SetAttribute"]
       54 CALL                             R5 3 0
       55 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Players"]
        4 NAMECALL                         R1 R1 K3 ["GetPlayers"]
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K4 ["Character"]
       10 JUMPIFEQKNIL                     R6 ; [+25]
       12 GETTABLEKS                       R6 R5 K4 ["Character"]
       14 LOADK                            R8 K5 ["HumanoidRootPart"]
       15 NAMECALL                         R6 R6 K6 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 JUMPIFEQKNIL                     R6 ; [+17]
       20 GETUPVAL                         R7 0
       21 MOVE                             R9 R6
       22 NAMECALL                         R7 R7 K7 ["GetPredictionStatus"]
       24 CALL                             R7 2 1
       25 GETIMPORT                        R8 K11 [Enum.PredictionStatus.None]
       27 JUMPIFEQ                         R7 R8 ; [+8]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K12 ["SimulateJetpack"]
       32 MOVE                             R8 R5
       33 MOVE                             R9 R6
       34 MOVE                             R10 R0
       35 CALL                             R7 3 0
       36 FORGLOOP                         R1 2 ; [-29]
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 DUPCLOSURE                       R2 K4 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R2 R1 K5 ["Start"]
       14 DUPCLOSURE                       R2 K6 [PROTO_2]
       15 SETTABLEKS                       R2 R1 K7 ["SimulateJetpack"]
       17 DUPCLOSURE                       R2 K8 [PROTO_3]
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R1 K9 ["SimulateJetpacks"]
       22 RETURN                           R1 1
