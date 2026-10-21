PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["InputContext"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["RocketInputContext"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K2 [Instance.new]
        9 LOADK                            R2 K6 ["InputAction"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K7 ["FireRocket"]
       12 SETTABLEKS                       R2 R1 K5 ["Name"]
       14 GETIMPORT                        R2 K11 [Enum.InputActionType.Bool]
       16 SETTABLEKS                       R2 R1 K12 ["Type"]
       18 SETTABLEKS                       R0 R1 K13 ["Parent"]
       20 GETIMPORT                        R2 K2 [Instance.new]
       22 LOADK                            R3 K14 ["InputBinding"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K17 [Enum.InputBindingType.Automatic]
       26 SETTABLEKS                       R3 R2 K12 ["Type"]
       28 GETIMPORT                        R3 K20 [Enum.KeyCode.MouseLeftButton]
       30 SETTABLEKS                       R3 R2 K18 ["KeyCode"]
       32 SETTABLEKS                       R1 R2 K13 ["Parent"]
       34 GETIMPORT                        R3 K2 [Instance.new]
       36 LOADK                            R4 K6 ["InputAction"]
       37 CALL                             R3 1 1
       38 LOADK                            R4 K21 ["RaycastAction"]
       39 SETTABLEKS                       R4 R3 K5 ["Name"]
       41 GETIMPORT                        R4 K23 [Enum.InputActionType.Direction3D]
       43 SETTABLEKS                       R4 R3 K12 ["Type"]
       45 SETTABLEKS                       R0 R3 K13 ["Parent"]
       47 GETIMPORT                        R4 K2 [Instance.new]
       49 LOADK                            R5 K14 ["InputBinding"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K25 [Enum.InputBindingType.Scriptable]
       53 SETTABLEKS                       R5 R4 K12 ["Type"]
       55 LOADK                            R5 K26 ["RaycastBinding"]
       56 SETTABLEKS                       R5 R4 K5 ["Name"]
       58 SETTABLEKS                       R3 R4 K13 ["Parent"]
       60 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.PredictionMode.On]
        4 NAMECALL                         R0 R0 K4 ["SetPredictionMode"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["FireRocket()"]
        3 GETIMPORT                        R4 K4 [time]
        5 CALL                             R4 0 -1
        6 CALL                             R2 -1 0
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R2 R2 K5 ["Clone"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K6 ["Parent"]
       14 LOADK                            R5 K7 ["age"]
       15 LOADN                            R6 0
       16 NAMECALL                         R3 R2 K8 ["SetAttribute"]
       18 CALL                             R3 3 0
       19 GETTABLEKS                       R3 R2 K9 ["VectorForce"]
       21 LOADN                            R5 0
       22 GETTABLEKS                       R7 R2 K10 ["Mass"]
       24 GETIMPORT                        R8 K12 [workspace]
       26 GETTABLEKS                       R8 R8 K13 ["Gravity"]
       28 MUL                              R6 R7 R8
       29 LOADN                            R7 0
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R4 K16 [Vector3.new]
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K17 ["Force"]
       36 GETIMPORT                        R3 K19 [CFrame.new]
       38 MOVE                             R4 R0
       39 ADD                              R5 R0 R1
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K18 ["CFrame"]
       43 GETTABLEKS                       R6 R1 K21 ["Unit"]
       45 MULK                             R5 R6 K20 [2]
       46 NAMECALL                         R3 R2 K22 ["ApplyImpulse"]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 2
       50 NAMECALL                         R3 R3 K23 ["IsClient"]
       52 CALL                             R3 1 1
       53 JUMPIFNOT                        R3 ; [+6]
       54 GETIMPORT                        R3 K26 [task.defer]
       56 NEWCLOSURE                       R4 P0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R2
       59 CALL                             R3 1 0
       60 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+13]
        3 GETIMPORT                        R0 K1 [require]
        5 GETIMPORT                        R1 K3 [game]
        7 GETTABLEKS                       R1 R1 K4 ["ReplicatedStorage"]
        9 GETTABLEKS                       R1 R1 K5 ["Effects"]
       11 GETTABLEKS                       R1 R1 K6 ["ExplosionEffect"]
       13 CALL                             R0 1 1
       14 SETUPVAL                         R0 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K7 ["explode"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K8 ["Position"]
       21 GETUPVAL                         R2 2
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["ExplodeRocket"]
        3 GETIMPORT                        R3 K4 [time]
        5 CALL                             R3 0 -1
        6 CALL                             R1 -1 0
        7 LOADK                            R4 K6 ["ExplosionRadius"]
        8 NAMECALL                         R2 R0 K7 ["GetAttribute"]
       10 CALL                             R2 2 1
       11 ORK                              R1 R2 K5 [5]
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R2 R2 K8 ["IsClient"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+12]
       17 GETUPVAL                         R2 0
       18 NAMECALL                         R2 R2 K9 ["IsResimulating"]
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+7]
       22 GETIMPORT                        R2 K12 [task.defer]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CALL                             R2 1 0
       29 LOADK                            R5 K14 ["ExplosionForce"]
       30 NAMECALL                         R3 R0 K7 ["GetAttribute"]
       32 CALL                             R3 2 1
       33 ORK                              R2 R3 K13 [20]
       34 GETIMPORT                        R3 K17 [OverlapParams.new]
       36 CALL                             R3 0 1
       37 LOADK                            R4 K18 ["RocketExplosion"]
       38 SETTABLEKS                       R4 R3 K19 ["CollisionGroup"]
       40 GETIMPORT                        R4 K21 [game]
       42 GETTABLEKS                       R4 R4 K22 ["Workspace"]
       44 GETTABLEKS                       R6 R0 K23 ["Position"]
       46 MOVE                             R7 R1
       47 MOVE                             R8 R3
       48 NAMECALL                         R4 R4 K24 ["GetPartBoundsInRadius"]
       50 CALL                             R4 4 1
       51 MOVE                             R5 R4
       52 LOADNIL                          R6
       53 LOADNIL                          R7
       54 FORGPREP                         R5
       55 GETTABLEKS                       R10 R9 K25 ["Name"]
       57 JUMPIFNOTEQKS                    R10 K26 ["Block"] ; [+4]
       59 LOADB                            R10 0
       60 SETTABLEKS                       R10 R9 K27 ["Anchored"]
       62 GETTABLEKS                       R11 R9 K23 ["Position"]
       64 GETTABLEKS                       R12 R0 K23 ["Position"]
       66 SUB                              R10 R11 R12
       67 GETTABLEKS                       R11 R9 K25 ["Name"]
       69 JUMPIFNOTEQKS                    R11 K28 ["Ball"] ; [+9]
       71 GETTABLEKS                       R12 R10 K30 ["Unit"]
       73 MULK                             R11 R12 K29 [2000]
       74 MOVE                             R14 R11
       75 NAMECALL                         R12 R9 K31 ["ApplyImpulse"]
       77 CALL                             R12 2 0
       78 JUMP                             ; [+9]
       79 GETTABLEKS                       R12 R10 K30 ["Unit"]
       81 MUL                              R11 R12 R2
       82 LOADK                            R12 K32 [{0, 10, 0}]
       83 ADD                              R11 R11 R12
       84 MOVE                             R14 R11
       85 NAMECALL                         R12 R9 K31 ["ApplyImpulse"]
       87 CALL                             R12 2 0
       88 FORGLOOP                         R5 2 ; [-34]
       90 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R4 K0 ["age"]
        1 NAMECALL                         R2 R0 K1 ["GetAttribute"]
        3 CALL                             R2 2 1
        4 ADD                              R2 R2 R1
        5 LOADK                            R5 K0 ["age"]
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        9 CALL                             R3 3 0
       10 LOADN                            R3 3
       11 JUMPIFNOTLT                      R3 R2 ; [+7]
       13 GETIMPORT                        R3 K5 [task.defer]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R3 K8 [OverlapParams.new]
       21 CALL                             R3 0 1
       22 LOADK                            R4 K9 ["RocketExplosion"]
       23 SETTABLEKS                       R4 R3 K10 ["CollisionGroup"]
       25 GETIMPORT                        R4 K12 [workspace]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R3
       29 NAMECALL                         R4 R4 K13 ["GetPartsInPart"]
       31 CALL                             R4 3 1
       32 MOVE                             R5 R4
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 FORGPREP                         R5
       36 GETUPVAL                         R10 0
       37 MOVE                             R11 R0
       38 CALL                             R10 1 0
       39 GETIMPORT                        R10 K5 [task.defer]
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          VAL R0
       43 CALL                             R10 1 0
       44 RETURN                           R0 0
       45 FORGLOOP                         R5 2 ; [-10]
       47 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 LOADK                            R7 K1 ["Cooldown"]
        4 NAMECALL                         R5 R2 K2 ["GetAttribute"]
        6 CALL                             R5 2 1
        7 ORK                              R4 R5 K0 [0]
        8 LOADN                            R5 0
        9 JUMPIFNOTLT                      R5 R4 ; [+14]
       11 LOADN                            R6 0
       12 SUB                              R7 R4 R3
       13 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       15 GETIMPORT                        R5 K5 [math.max]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 LOADK                            R7 K1 ["Cooldown"]
       20 MOVE                             R8 R4
       21 NAMECALL                         R5 R2 K6 ["SetAttribute"]
       23 CALL                             R5 3 0
       24 LOADK                            R7 K7 ["FireRocket"]
       25 LOADB                            R8 1
       26 NAMECALL                         R5 R1 K8 ["FindFirstChild"]
       28 CALL                             R5 3 1
       29 LOADK                            R8 K9 ["RotationAction"]
       30 LOADB                            R9 1
       31 NAMECALL                         R6 R1 K8 ["FindFirstChild"]
       33 CALL                             R6 3 1
       34 LOADB                            R7 0
       35 JUMPIFEQKNIL                     R6 ; [+4]
       37 NAMECALL                         R7 R6 K10 ["GetState"]
       39 CALL                             R7 1 1
       40 LOADK                            R10 K11 ["RaycastAction"]
       41 LOADB                            R11 1
       42 NAMECALL                         R8 R1 K8 ["FindFirstChild"]
       44 CALL                             R8 3 1
       45 JUMPIFEQKNIL                     R8 ; [+5]
       47 NAMECALL                         R9 R8 K10 ["GetState"]
       49 CALL                             R9 1 1
       50 JUMP                             ; [+1]
       51 LOADK                            R9 K12 [{0, 0, 0}]
       52 JUMPIFEQKNIL                     R5 ; [+60]
       54 NAMECALL                         R10 R5 K10 ["GetState"]
       56 CALL                             R10 1 1
       57 JUMPIFNOT                        R10 ; [+55]
       58 JUMPIFNOTEQKN                    R4 K0 [0] ; [+54]
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 JUMPIFNOT                        R7 ; [+20]
       63 NAMECALL                         R12 R1 K13 ["GetCameraState"]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R12 R12 K14 ["CFrame"]
       68 GETTABLEKS                       R11 R12 K15 ["LookVector"]
       70 GETTABLEKS                       R15 R12 K16 ["Position"]
       72 GETTABLEKS                       R17 R12 K18 ["RightVector"]
       74 MULK                             R16 R17 K17 [0.800000011920929]
       75 ADD                              R14 R15 R16
       76 LOADK                            R15 K19 [{0, -0.5, 0}]
       77 ADD                              R13 R14 R15
       78 GETTABLEKS                       R15 R12 K15 ["LookVector"]
       80 MULK                             R14 R15 K20 [0.150000005960464]
       81 ADD                              R10 R13 R14
       82 JUMP                             ; [+14]
       83 GETTABLEKS                       R12 R0 K21 ["Handle"]
       85 GETTABLEKS                       R12 R12 K22 ["MissleSpawnLocation"]
       87 GETTABLEKS                       R10 R12 K23 ["WorldPosition"]
       89 NAMECALL                         R13 R1 K13 ["GetCameraState"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R13 R13 K14 ["CFrame"]
       94 SUB                              R14 R9 R10
       95 GETTABLEKS                       R11 R14 K24 ["Unit"]
       97 GETUPVAL                         R12 0
       98 ADD                              R13 R10 R11
       99 MOVE                             R14 R11
      100 CALL                             R12 2 0
      101 LOADK                            R14 K25 ["LastRocket"]
      102 GETIMPORT                        R15 K27 [time]
      104 CALL                             R15 0 -1
      105 NAMECALL                         R12 R2 K6 ["SetAttribute"]
      107 CALL                             R12 -1 0
      108 LOADK                            R14 K1 ["Cooldown"]
      109 LOADK                            R15 K28 [0.5]
      110 NAMECALL                         R12 R2 K6 ["SetAttribute"]
      112 CALL                             R12 3 0
      113 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Players"]
        4 NAMECALL                         R1 R1 K3 ["GetPlayers"]
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K4 ["Character"]
       10 JUMPIFEQKNIL                     R6 ; [+27]
       12 LOADK                            R9 K5 ["HumanoidRootPart"]
       13 NAMECALL                         R7 R6 K6 ["FindFirstChild"]
       15 CALL                             R7 2 1
       16 JUMPIFEQKNIL                     R7 ; [+21]
       18 GETUPVAL                         R8 0
       19 MOVE                             R10 R7
       20 NAMECALL                         R8 R8 K7 ["GetPredictionStatus"]
       22 CALL                             R8 2 1
       23 GETIMPORT                        R9 K11 [Enum.PredictionStatus.None]
       25 JUMPIFEQ                         R8 R9 ; [+12]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K12 ["GetEquippedTool"]
       30 MOVE                             R9 R5
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 2
       33 MOVE                             R10 R8
       34 MOVE                             R11 R5
       35 MOVE                             R12 R7
       36 MOVE                             R13 R0
       37 CALL                             R9 4 0
       38 FORGLOOP                         R1 2 ; [-31]
       40 GETUPVAL                         R1 3
       41 NAMECALL                         R1 R1 K13 ["GetChildren"]
       43 CALL                             R1 1 1
       44 MOVE                             R2 R1
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 FORGPREP                         R2
       48 LOADK                            R9 K14 ["BasePart"]
       49 NAMECALL                         R7 R6 K15 ["IsA"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+4]
       53 GETUPVAL                         R7 4
       54 MOVE                             R8 R6
       55 MOVE                             R9 R0
       56 CALL                             R7 2 0
       57 FORGLOOP                         R2 2 ; [-10]
       59 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Character"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["Character"]
        8 LOADK                            R3 K1 ["Tool"]
        9 NAMECALL                         R1 R1 K2 ["FindFirstChildOfClass"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R2 R1 K3 ["Name"]
       15 JUMPIFNOTEQKS                    R2 K4 ["RocketLauncher"] ; [+2]
       17 RETURN                           R1 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETTABLEKS                       R0 R1 K0 ["Parent"]
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsServer"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETIMPORT                        R0 K2 [game]
        7 GETTABLEKS                       R0 R0 K3 ["Players"]
        9 GETTABLEKS                       R0 R0 K4 ["PlayerAdded"]
       11 DUPCLOSURE                       R2 K5 [PROTO_11]
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R0 R0 K6 ["Connect"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R2 2
       18 GETIMPORT                        R3 K10 [Enum.StepFrequency.Hz60]
       20 NAMECALL                         R0 R0 K11 ["BindToSimulation"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["RunService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 GETTABLEKS                       R2 R2 K4 ["Workspace"]
       13 GETTABLEKS                       R2 R2 K5 ["Rockets"]
       15 LOADNIL                          R3
       16 GETIMPORT                        R4 K1 [game]
       18 GETTABLEKS                       R4 R4 K6 ["ReplicatedStorage"]
       20 GETTABLEKS                       R4 R4 K7 ["Misc"]
       22 GETTABLEKS                       R4 R4 K8 ["RocketTemplate"]
       24 DUPCLOSURE                       R5 K9 [PROTO_0]
       25 DUPCLOSURE                       R6 K10 [PROTO_2]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 NEWCLOSURE                       R7 P2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          REF R3
       32 DUPCLOSURE                       R8 K11 [PROTO_7]
       33 CAPTURE                          VAL R7
       34 DUPCLOSURE                       R9 K12 [PROTO_8]
       35 CAPTURE                          VAL R6
       36 DUPCLOSURE                       R10 K13 [PROTO_9]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R8
       42 DUPCLOSURE                       R11 K14 [PROTO_10]
       43 SETTABLEKS                       R11 R0 K15 ["GetEquippedTool"]
       45 DUPCLOSURE                       R11 K16 [PROTO_12]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R10
       49 SETTABLEKS                       R11 R0 K17 ["Start"]
       51 CLOSEUPVALS                      R3
       52 RETURN                           R0 1
