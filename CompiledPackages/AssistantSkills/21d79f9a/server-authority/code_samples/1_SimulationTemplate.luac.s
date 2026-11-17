PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MyInputContext"]
        3 NAMECALL                         R2 R1 K1 ["Clone"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R0 R2 K2 ["Parent"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsServer"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["PlayerAdded"]
        8 DUPCLOSURE                       R2 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R0 R0 K3 ["Connect"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K4 ["Simulate"]
       17 NAMECALL                         R0 R0 K5 ["BindToSimulation"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_2:
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
       30 GETTABLEKS                       R7 R7 K12 ["SimulatePlayer"]
       32 MOVE                             R8 R5
       33 MOVE                             R9 R6
       34 MOVE                             R10 R0
       35 CALL                             R7 3 0
       36 FORGLOOP                         R1 2 ; [-29]
       38 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 NEWTABLE                         R3 4 0
       21 DUPCLOSURE                       R4 K6 [PROTO_1]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K7 ["Start"]
       28 DUPCLOSURE                       R4 K8 [PROTO_2]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R4 R3 K9 ["Simulate"]
       33 DUPCLOSURE                       R4 K10 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K11 ["SimulatePlayer"]
       36 RETURN                           R3 1
