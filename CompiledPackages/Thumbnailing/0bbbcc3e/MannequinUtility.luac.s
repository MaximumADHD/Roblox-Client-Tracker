PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R1 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K0 ["LoadLocalAsset"]
        7 CALL                             R2 2 1
        8 LOADK                            R5 K1 ["Humanoid"]
        9 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+5]
       14 MOVE                             R5 R3
       15 LOADK                            R6 K3 ["Assert Humanoid is not nil to silence type checker"]
       16 GETIMPORT                        R4 K5 [assert]
       18 CALL                             R4 2 0
       19 GETIMPORT                        R4 K9 [Enum.HumanoidDisplayDistanceType.None]
       21 SETTABLEKS                       R4 R3 K10 ["DisplayDistanceType"]
       23 JUMPIFNOT                        R1 ; [+4]
       24 GETIMPORT                        R4 K12 [workspace]
       26 SETTABLEKS                       R4 R2 K13 ["Parent"]
       28 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R2 1
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K0 ["rbxasset://models/Thumbnails/Mannequins/R15.rbxm"]
        6 NAMECALL                         R3 R3 K1 ["LoadLocalAsset"]
        8 CALL                             R3 2 1
        9 LOADK                            R6 K2 ["Humanoid"]
       10 NAMECALL                         R4 R3 K3 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 FASTCALL2K                       ASSERT R4 K4 ; [+5]
       15 MOVE                             R6 R4
       16 LOADK                            R7 K4 ["Assert Humanoid is not nil to silence type checker"]
       17 GETIMPORT                        R5 K6 [assert]
       19 CALL                             R5 2 0
       20 GETIMPORT                        R5 K10 [Enum.HumanoidDisplayDistanceType.None]
       22 SETTABLEKS                       R5 R4 K11 ["DisplayDistanceType"]
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETIMPORT                        R5 K13 [workspace]
       27 SETTABLEKS                       R5 R3 K14 ["Parent"]
       29 MOVE                             R1 R3
       30 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R2 1
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K0 ["rbxasset://models/Thumbnails/Mannequins/R6.rbxm"]
        6 NAMECALL                         R3 R3 K1 ["LoadLocalAsset"]
        8 CALL                             R3 2 1
        9 LOADK                            R6 K2 ["Humanoid"]
       10 NAMECALL                         R4 R3 K3 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 FASTCALL2K                       ASSERT R4 K4 ; [+5]
       15 MOVE                             R6 R4
       16 LOADK                            R7 K4 ["Assert Humanoid is not nil to silence type checker"]
       17 GETIMPORT                        R5 K6 [assert]
       19 CALL                             R5 2 0
       20 GETIMPORT                        R5 K10 [Enum.HumanoidDisplayDistanceType.None]
       22 SETTABLEKS                       R5 R4 K11 ["DisplayDistanceType"]
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETIMPORT                        R5 K13 [workspace]
       27 SETTABLEKS                       R5 R3 K14 ["Parent"]
       29 MOVE                             R1 R3
       30 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R2 1
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K0 ["rbxasset://models/Thumbnails/Mannequins/Rthro.rbxm"]
        6 NAMECALL                         R3 R3 K1 ["LoadLocalAsset"]
        8 CALL                             R3 2 1
        9 LOADK                            R6 K2 ["Humanoid"]
       10 NAMECALL                         R4 R3 K3 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 FASTCALL2K                       ASSERT R4 K4 ; [+5]
       15 MOVE                             R6 R4
       16 LOADK                            R7 K4 ["Assert Humanoid is not nil to silence type checker"]
       17 GETIMPORT                        R5 K6 [assert]
       19 CALL                             R5 2 0
       20 GETIMPORT                        R5 K10 [Enum.HumanoidDisplayDistanceType.None]
       22 SETTABLEKS                       R5 R4 K11 ["DisplayDistanceType"]
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETIMPORT                        R5 K13 [workspace]
       27 SETTABLEKS                       R5 R3 K14 ["Parent"]
       29 MOVE                             R1 R3
       30 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["Classic"] ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["LoadR15Mannequin"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["LoadRthroMannequin"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 LOADB                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 LOADK                            R10 K0 ["Folder"]
        6 NAMECALL                         R8 R6 K1 ["IsA"]
        8 CALL                             R8 2 1
        9 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       11 LOADK                            R9 K2 ["object should always be a Folder"]
       12 GETIMPORT                        R7 K4 [assert]
       14 CALL                             R7 2 0
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R9 R6 K5 ["Name"]
       18 GETTABLE                         R7 R8 R9
       19 JUMPIFNOT                        R7 ; [+27]
       20 LOADB                            R1 1
       21 NAMECALL                         R7 R6 K6 ["GetChildren"]
       23 CALL                             R7 1 3
       24 FORGPREP                         R7
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K7 ["CharacterPartNames"]
       28 GETTABLEKS                       R14 R14 K8 ["All"]
       30 GETTABLEKS                       R15 R11 K5 ["Name"]
       32 GETTABLE                         R13 R14 R15
       33 GETIMPORT                        R14 K11 [string.format]
       35 LOADK                            R15 K12 ["Name of %s of Folder %s does not exist in CharacterParts"]
       36 GETTABLEKS                       R16 R11 K5 ["Name"]
       38 GETTABLEKS                       R17 R6 K5 ["Name"]
       40 CALL                             R14 3 -1
       41 FASTCALL                         ASSERT ; [+2]
       42 GETIMPORT                        R12 K4 [assert]
       44 CALL                             R12 -1 0
       45 FORGLOOP                         R7 2 ; [-21]
       47 FORGLOOP                         R2 2 ; [-43]
       49 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       51 MOVE                             R3 R1
       52 LOADK                            R4 K13 ["objects does not have at least one of R15ArtistIntent, R15, and R6 folders"]
       53 GETIMPORT                        R2 K4 [assert]
       55 CALL                             R2 2 0
       56 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 0
        1 LOADB                            R3 0
        2 LOADK                            R4 K0 ["Classic"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["AssertObjectsFormat"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 0
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R10 R9 K2 ["Name"]
       14 JUMPIFEQKS                       R10 K3 ["R15"] ; [+5]
       16 GETTABLEKS                       R10 R9 K2 ["Name"]
       18 JUMPIFNOTEQKS                    R10 K4 ["R15ArtistIntent"] ; [+11]
       20 LOADB                            R2 1
       21 LOADK                            R12 K5 ["AvatarPartScaleType"]
       22 LOADB                            R13 1
       23 NAMECALL                         R10 R9 K6 ["FindFirstChild"]
       25 CALL                             R10 3 1
       26 JUMPIFNOT                        R10 ; [+5]
       27 GETTABLEKS                       R4 R10 K7 ["Value"]
       29 JUMP                             ; [+2]
       30 FORGLOOP                         R5 2 ; [-19]
       32 MOVE                             R5 R0
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 FORGPREP                         R5
       36 GETTABLEKS                       R10 R9 K2 ["Name"]
       38 JUMPIFNOTEQKS                    R10 K4 ["R15ArtistIntent"] ; [+3]
       40 LOADB                            R3 1
       41 JUMP                             ; [+2]
       42 FORGLOOP                         R5 2 ; [-7]
       44 LOADNIL                          R5
       45 JUMPIFNOT                        R2 ; [+8]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K8 ["LoadMannequinForScaleType"]
       49 MOVE                             R7 R4
       50 MOVE                             R8 R1
       51 CALL                             R6 2 1
       52 MOVE                             R5 R6
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K9 ["LoadR6Mannequin"]
       57 MOVE                             R7 R1
       58 CALL                             R6 1 1
       59 MOVE                             R5 R6
       60 LOADK                            R8 K10 ["Humanoid"]
       61 NAMECALL                         R6 R5 K11 ["FindFirstChildOfClass"]
       63 CALL                             R6 2 1
       64 GETIMPORT                        R7 K15 [Enum.HumanoidDisplayDistanceType.None]
       66 SETTABLEKS                       R7 R6 K16 ["DisplayDistanceType"]
       68 LOADK                            R9 K17 ["BodyTypeScale"]
       69 NAMECALL                         R7 R6 K6 ["FindFirstChild"]
       71 CALL                             R7 2 1
       72 JUMPIFNOTEQKNIL                  R7 ; [+14]
       74 GETIMPORT                        R8 K20 [Instance.new]
       76 LOADK                            R9 K21 ["NumberValue"]
       77 CALL                             R8 1 1
       78 MOVE                             R7 R8
       79 LOADK                            R8 K17 ["BodyTypeScale"]
       80 SETTABLEKS                       R8 R7 K2 ["Name"]
       82 LOADN                            R8 0
       83 SETTABLEKS                       R8 R7 K7 ["Value"]
       85 SETTABLEKS                       R6 R7 K22 ["Parent"]
       87 LOADK                            R10 K23 ["BodyProportionScale"]
       88 NAMECALL                         R8 R6 K6 ["FindFirstChild"]
       90 CALL                             R8 2 1
       91 JUMPIFNOTEQKNIL                  R8 ; [+14]
       93 GETIMPORT                        R9 K20 [Instance.new]
       95 LOADK                            R10 K21 ["NumberValue"]
       96 CALL                             R9 1 1
       97 MOVE                             R8 R9
       98 LOADK                            R9 K23 ["BodyProportionScale"]
       99 SETTABLEKS                       R9 R8 K2 ["Name"]
      101 LOADN                            R9 0
      102 SETTABLEKS                       R9 R8 K7 ["Value"]
      104 SETTABLEKS                       R6 R8 K22 ["Parent"]
      106 JUMPIFNOTEQKS                    R4 K24 ["ProportionsNormal"] ; [+8]
      108 LOADN                            R9 1
      109 SETTABLEKS                       R9 R7 K7 ["Value"]
      111 LOADN                            R9 0
      112 SETTABLEKS                       R9 R8 K7 ["Value"]
      114 JUMP                             ; [+8]
      115 JUMPIFNOTEQKS                    R4 K25 ["ProportionsSlender"] ; [+7]
      117 LOADN                            R9 1
      118 SETTABLEKS                       R9 R7 K7 ["Value"]
      120 LOADN                            R9 1
      121 SETTABLEKS                       R9 R8 K7 ["Value"]
      123 MOVE                             R9 R2
      124 MOVE                             R10 R3
      125 MOVE                             R11 R5
      126 RETURN                           R9 3

PROTO_7:
        0 GETIMPORT                        R3 K1 [pairs]
        2 NAMECALL                         R4 R0 K2 ["GetChildren"]
        4 CALL                             R4 1 -1
        5 CALL                             R3 -1 3
        6 FORGPREP_NEXT                    R3
        7 LOADK                            R11 K3 ["BasePart"]
        8 NAMECALL                         R9 R7 K4 ["IsA"]
       10 CALL                             R9 2 1
       11 FASTCALL2K                       ASSERT R9 K5 ; [+4]
       13 LOADK                            R10 K5 ["Only BaseParts should be in Folders"]
       14 GETIMPORT                        R8 K7 [assert]
       16 CALL                             R8 2 0
       17 GETIMPORT                        R8 K10 [string.find]
       19 GETTABLEKS                       R9 R7 K11 ["Name"]
       21 LOADK                            R10 K12 ["Right"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+2]
       24 LOADB                            R8 1
       25 SETUPVAL                         R8 0
       26 GETUPVAL                         R8 1
       27 LOADK                            R10 K13 ["Humanoid"]
       28 NAMECALL                         R8 R8 K14 ["FindFirstChild"]
       30 CALL                             R8 2 1
       31 GETUPVAL                         R12 2
       32 GETTABLEKS                       R12 R12 K15 ["R15PartNameToEnum"]
       34 GETTABLEKS                       R13 R7 K11 ["Name"]
       36 GETTABLE                         R11 R12 R13
       37 MOVE                             R12 R7
       38 NAMECALL                         R9 R8 K16 ["ReplaceBodyPartR15"]
       40 CALL                             R9 3 0
       41 GETTABLEKS                       R11 R7 K11 ["Name"]
       43 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       45 MOVE                             R10 R1
       46 GETIMPORT                        R9 K19 [table.insert]
       48 CALL                             R9 2 0
       49 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       51 MOVE                             R10 R2
       52 MOVE                             R11 R7
       53 GETIMPORT                        R9 K19 [table.insert]
       55 CALL                             R9 2 0
       56 FORGLOOP                         R3 2 ; [-50]
       58 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["AssertObjectsFormat"]
        3 MOVE                             R6 R3
        4 CALL                             R5 1 0
        5 LOADB                            R5 0
        6 JUMPIFNOT                        R4 ; [+9]
        7 GETIMPORT                        R7 K2 [game]
        9 MOVE                             R9 R4
       10 NAMECALL                         R7 R7 K3 ["GetObjects"]
       12 CALL                             R7 2 1
       13 GETTABLEN                        R6 R7 1
       14 SETTABLEKS                       R2 R6 K4 ["Parent"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          REF R5
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U0
       20 LOADK                            R7 K5 ["R15"]
       21 JUMPIFNOT                        R0 ; [+2]
       22 JUMPIFNOT                        R1 ; [+1]
       23 LOADK                            R7 K6 ["R15ArtistIntent"]
       24 NEWTABLE                         R8 0 0
       26 NEWTABLE                         R9 0 0
       28 GETIMPORT                        R10 K8 [pairs]
       30 MOVE                             R11 R3
       31 CALL                             R10 1 3
       32 FORGPREP_NEXT                    R10
       33 JUMPIFNOT                        R0 ; [+4]
       34 GETTABLEKS                       R15 R14 K9 ["Name"]
       36 JUMPIFEQ                         R15 R7 ; [+6]
       38 JUMPIF                           R0 ; [+10]
       39 GETTABLEKS                       R15 R14 K9 ["Name"]
       41 JUMPIFNOTEQKS                    R15 K10 ["R6"] ; [+7]
       43 MOVE                             R15 R6
       44 MOVE                             R16 R14
       45 MOVE                             R17 R9
       46 MOVE                             R18 R8
       47 CALL                             R15 3 0
       48 JUMP                             ; [+9]
       49 GETIMPORT                        R15 K13 [string.find]
       51 GETTABLEKS                       R16 R14 K9 ["Name"]
       53 LOADK                            R17 K5 ["R15"]
       54 CALL                             R15 2 1
       55 JUMPIF                           R15 ; [+2]
       56 SETTABLEKS                       R2 R14 K4 ["Parent"]
       58 FORGLOOP                         R10 2 ; [-26]
       60 JUMPIFNOT                        R0 ; [+29]
       61 LOADK                            R12 K14 ["HumanoidRootPart"]
       62 NAMECALL                         R10 R2 K15 ["FindFirstChild"]
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R2 K16 ["PrimaryPart"]
       67 GETIMPORT                        R12 K19 [CFrame.new]
       69 LOADK                            R13 K20 [{0, 5, 0}]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K22 [CFrame.Angles]
       73 LOADN                            R14 0
       74 LOADK                            R15 K23 [3.14159265358979]
       75 LOADN                            R16 0
       76 CALL                             R13 3 1
       77 MUL                              R11 R12 R13
       78 SETTABLEKS                       R11 R10 K17 ["CFrame"]
       80 LOADB                            R11 1
       81 SETTABLEKS                       R11 R10 K24 ["Anchored"]
       83 LOADK                            R13 K25 ["Humanoid"]
       84 NAMECALL                         R11 R2 K26 ["FindFirstChildOfClass"]
       86 CALL                             R11 2 1
       87 NAMECALL                         R12 R11 K27 ["BuildRigFromAttachments"]
       89 CALL                             R12 1 0
       90 MOVE                             R10 R5
       91 MOVE                             R11 R9
       92 CLOSEUPVALS                      R5
       93 RETURN                           R10 2

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["Head"]
        5 SETTABLEKS                       R2 R0 K5 ["Name"]
        7 SETTABLEKS                       R1 R0 K6 ["Parent"]
        9 GETIMPORT                        R2 K2 [Instance.new]
       11 LOADK                            R3 K7 ["Humanoid"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K11 [Enum.HumanoidRigType.R15]
       15 SETTABLEKS                       R3 R2 K12 ["RigType"]
       17 SETTABLEKS                       R1 R2 K6 ["Parent"]
       19 GETIMPORT                        R3 K15 [Enum.HumanoidDisplayDistanceType.None]
       21 SETTABLEKS                       R3 R2 K16 ["DisplayDistanceType"]
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["InsertService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 DUPTABLE                         R2 K7 [{"R6", "R15", "R15ArtistIntent"}]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K4 ["R6"]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K5 ["R15"]
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K6 ["R15ArtistIntent"]
       19 DUPTABLE                         R3 K8 [{"R6", "R15"}]
       20 NEWTABLE                         R4 8 0
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K9 ["HumanoidRootPart"]
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K10 ["Head"]
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K11 ["Torso"]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K12 ["Left Arm"]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K13 ["Left Leg"]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K14 ["Right Arm"]
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K15 ["Right Leg"]
       43 LOADB                            R5 1
       44 SETTABLEKS                       R5 R4 K16 ["CharacterMesh"]
       46 SETTABLEKS                       R4 R3 K4 ["R6"]
       48 DUPTABLE                         R4 K31 [{"HumanoidRootPart", "Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"}]
       49 LOADB                            R5 1
       50 SETTABLEKS                       R5 R4 K9 ["HumanoidRootPart"]
       52 LOADB                            R5 1
       53 SETTABLEKS                       R5 R4 K10 ["Head"]
       55 LOADB                            R5 1
       56 SETTABLEKS                       R5 R4 K17 ["UpperTorso"]
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R4 K18 ["LowerTorso"]
       61 LOADB                            R5 1
       62 SETTABLEKS                       R5 R4 K19 ["LeftUpperLeg"]
       64 LOADB                            R5 1
       65 SETTABLEKS                       R5 R4 K20 ["LeftLowerLeg"]
       67 LOADB                            R5 1
       68 SETTABLEKS                       R5 R4 K21 ["LeftFoot"]
       70 LOADB                            R5 1
       71 SETTABLEKS                       R5 R4 K22 ["RightUpperLeg"]
       73 LOADB                            R5 1
       74 SETTABLEKS                       R5 R4 K23 ["RightLowerLeg"]
       76 LOADB                            R5 1
       77 SETTABLEKS                       R5 R4 K24 ["RightFoot"]
       79 LOADB                            R5 1
       80 SETTABLEKS                       R5 R4 K25 ["LeftUpperArm"]
       82 LOADB                            R5 1
       83 SETTABLEKS                       R5 R4 K26 ["LeftLowerArm"]
       85 LOADB                            R5 1
       86 SETTABLEKS                       R5 R4 K27 ["LeftHand"]
       88 LOADB                            R5 1
       89 SETTABLEKS                       R5 R4 K28 ["RightUpperArm"]
       91 LOADB                            R5 1
       92 SETTABLEKS                       R5 R4 K29 ["RightLowerArm"]
       94 LOADB                            R5 1
       95 SETTABLEKS                       R5 R4 K30 ["RightHand"]
       97 SETTABLEKS                       R4 R3 K5 ["R15"]
       99 SETTABLEKS                       R3 R0 K32 ["CharacterPartNames"]
      101 DUPTABLE                         R3 K33 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"}]
      102 GETIMPORT                        R4 K36 [Enum.BodyPartR15.Head]
      104 SETTABLEKS                       R4 R3 K10 ["Head"]
      106 GETIMPORT                        R4 K37 [Enum.BodyPartR15.UpperTorso]
      108 SETTABLEKS                       R4 R3 K17 ["UpperTorso"]
      110 GETIMPORT                        R4 K38 [Enum.BodyPartR15.LowerTorso]
      112 SETTABLEKS                       R4 R3 K18 ["LowerTorso"]
      114 GETIMPORT                        R4 K39 [Enum.BodyPartR15.LeftUpperLeg]
      116 SETTABLEKS                       R4 R3 K19 ["LeftUpperLeg"]
      118 GETIMPORT                        R4 K40 [Enum.BodyPartR15.LeftLowerLeg]
      120 SETTABLEKS                       R4 R3 K20 ["LeftLowerLeg"]
      122 GETIMPORT                        R4 K41 [Enum.BodyPartR15.LeftFoot]
      124 SETTABLEKS                       R4 R3 K21 ["LeftFoot"]
      126 GETIMPORT                        R4 K42 [Enum.BodyPartR15.RightUpperLeg]
      128 SETTABLEKS                       R4 R3 K22 ["RightUpperLeg"]
      130 GETIMPORT                        R4 K43 [Enum.BodyPartR15.RightLowerLeg]
      132 SETTABLEKS                       R4 R3 K23 ["RightLowerLeg"]
      134 GETIMPORT                        R4 K44 [Enum.BodyPartR15.RightFoot]
      136 SETTABLEKS                       R4 R3 K24 ["RightFoot"]
      138 GETIMPORT                        R4 K45 [Enum.BodyPartR15.LeftUpperArm]
      140 SETTABLEKS                       R4 R3 K25 ["LeftUpperArm"]
      142 GETIMPORT                        R4 K46 [Enum.BodyPartR15.LeftLowerArm]
      144 SETTABLEKS                       R4 R3 K26 ["LeftLowerArm"]
      146 GETIMPORT                        R4 K47 [Enum.BodyPartR15.LeftHand]
      148 SETTABLEKS                       R4 R3 K27 ["LeftHand"]
      150 GETIMPORT                        R4 K48 [Enum.BodyPartR15.RightUpperArm]
      152 SETTABLEKS                       R4 R3 K28 ["RightUpperArm"]
      154 GETIMPORT                        R4 K49 [Enum.BodyPartR15.RightLowerArm]
      156 SETTABLEKS                       R4 R3 K29 ["RightLowerArm"]
      158 GETIMPORT                        R4 K50 [Enum.BodyPartR15.RightHand]
      160 SETTABLEKS                       R4 R3 K30 ["RightHand"]
      162 SETTABLEKS                       R3 R0 K51 ["R15PartNameToEnum"]
      164 GETTABLEKS                       R3 R0 K32 ["CharacterPartNames"]
      166 NEWTABLE                         R4 0 0
      168 SETTABLEKS                       R4 R3 K52 ["All"]
      170 GETIMPORT                        R3 K54 [pairs]
      172 GETTABLEKS                       R4 R0 K32 ["CharacterPartNames"]
      174 GETTABLEKS                       R4 R4 K4 ["R6"]
      176 CALL                             R3 1 3
      177 FORGPREP_NEXT                    R3
      178 GETTABLEKS                       R8 R0 K32 ["CharacterPartNames"]
      180 GETTABLEKS                       R8 R8 K52 ["All"]
      182 LOADB                            R9 1
      183 SETTABLE                         R9 R8 R6
      184 FORGLOOP                         R3 2 ; [-7]
      186 GETIMPORT                        R3 K54 [pairs]
      188 GETTABLEKS                       R4 R0 K32 ["CharacterPartNames"]
      190 GETTABLEKS                       R4 R4 K5 ["R15"]
      192 CALL                             R3 1 3
      193 FORGPREP_NEXT                    R3
      194 GETTABLEKS                       R8 R0 K32 ["CharacterPartNames"]
      196 GETTABLEKS                       R8 R8 K52 ["All"]
      198 LOADB                            R9 1
      199 SETTABLE                         R9 R8 R6
      200 FORGLOOP                         R3 2 ; [-7]
      202 DUPCLOSURE                       R3 K55 [PROTO_0]
      203 CAPTURE                          VAL R1
      204 DUPCLOSURE                       R4 K56 [PROTO_1]
      205 CAPTURE                          VAL R1
      206 SETTABLEKS                       R4 R0 K57 ["LoadR15Mannequin"]
      208 DUPCLOSURE                       R4 K58 [PROTO_2]
      209 CAPTURE                          VAL R1
      210 SETTABLEKS                       R4 R0 K59 ["LoadR6Mannequin"]
      212 DUPCLOSURE                       R4 K60 [PROTO_3]
      213 CAPTURE                          VAL R1
      214 SETTABLEKS                       R4 R0 K61 ["LoadRthroMannequin"]
      216 DUPCLOSURE                       R4 K62 [PROTO_4]
      217 CAPTURE                          VAL R0
      218 SETTABLEKS                       R4 R0 K63 ["LoadMannequinForScaleType"]
      220 DUPCLOSURE                       R4 K64 [PROTO_5]
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R0
      223 SETTABLEKS                       R4 R0 K65 ["AssertObjectsFormat"]
      225 DUPCLOSURE                       R4 K66 [PROTO_6]
      226 CAPTURE                          VAL R0
      227 SETTABLEKS                       R4 R0 K67 ["CreateBodyPartMannequin"]
      229 DUPCLOSURE                       R4 K68 [PROTO_8]
      230 CAPTURE                          VAL R0
      231 SETTABLEKS                       R4 R0 K69 ["SetupBodyPartMannequin"]
      233 DUPCLOSURE                       R4 K70 [PROTO_9]
      234 SETTABLEKS                       R4 R0 K71 ["CreateHeadModel"]
      236 RETURN                           R0 1
