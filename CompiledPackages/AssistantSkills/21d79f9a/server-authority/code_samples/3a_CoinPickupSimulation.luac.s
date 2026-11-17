PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Players"]
        4 GETTABLEKS                       R0 R0 K3 ["PlayerAdded"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["PlayerAdded"]
        9 NAMECALL                         R0 R0 K4 ["Connect"]
       11 CALL                             R0 2 0
       12 GETIMPORT                        R0 K1 [game]
       14 GETTABLEKS                       R0 R0 K2 ["Players"]
       16 NAMECALL                         R0 R0 K5 ["GetPlayers"]
       18 CALL                             R0 1 3
       19 FORGPREP                         R0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K3 ["PlayerAdded"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 0
       25 FORGLOOP                         R0 2 ; [-6]
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerTouchedPart"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R2 R1 K1 ["WaitForChild"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K2 ["Touched"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R3 K3 ["Connect"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CharacterAdded"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Character"]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["CharacterAdded"]
        7 MOVE                             R2 R0
        8 GETTABLEKS                       R3 R0 K0 ["Character"]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K1 ["CharacterAdded"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R1 R1 K2 ["Connect"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetPredictionStatus"]
        4 CALL                             R2 2 1
        5 GETIMPORT                        R3 K4 [Enum.PredictionStatus.None]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K0 ["GetPredictionStatus"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K4 [Enum.PredictionStatus.None]
       17 JUMPIFNOTEQ                      R2 R3 ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K5 ["Name"]
       22 JUMPIFNOTEQKS                    R2 K6 ["Coin"] ; [+22]
       24 LOADK                            R4 K7 ["IsPickedUp"]
       25 NAMECALL                         R2 R1 K8 ["GetAttribute"]
       27 CALL                             R2 2 1
       28 JUMPIF                           R2 ; [+16]
       29 LOADK                            R5 K7 ["IsPickedUp"]
       30 LOADB                            R6 1
       31 NAMECALL                         R3 R1 K9 ["SetAttribute"]
       33 CALL                             R3 3 0
       34 LOADK                            R6 K11 ["JetpackFuel"]
       35 NAMECALL                         R4 R0 K8 ["GetAttribute"]
       37 CALL                             R4 2 1
       38 ORK                              R3 R4 K10 [0]
       39 ADDK                             R3 R3 K12 [50]
       40 LOADK                            R6 K11 ["JetpackFuel"]
       41 MOVE                             R7 R3
       42 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       44 CALL                             R4 3 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R1 K5 ["Start"]
       13 DUPCLOSURE                       R2 K6 [PROTO_2]
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R1 K7 ["CharacterAdded"]
       17 DUPCLOSURE                       R2 K8 [PROTO_4]
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R2 R1 K9 ["PlayerAdded"]
       21 DUPCLOSURE                       R2 K10 [PROTO_5]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R1 K11 ["PlayerTouchedPart"]
       25 RETURN                           R1 1
