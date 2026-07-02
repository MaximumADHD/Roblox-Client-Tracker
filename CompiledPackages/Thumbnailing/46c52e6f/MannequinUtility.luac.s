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
        9 DUPTABLE                         R2 K8 [{["R6"] = True, ["R15"] = True, ["R15ArtistIntent"] = True}]
       10 DUPTABLE                         R3 K9 [{"R6", "R15"}]
       11 NEWTABLE                         R4 8 0
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R4 K10 ["HumanoidRootPart"]
       16 LOADB                            R5 1
       17 SETTABLEKS                       R5 R4 K11 ["Head"]
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K12 ["Torso"]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K13 ["Left Arm"]
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K14 ["Left Leg"]
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K15 ["Right Arm"]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K16 ["Right Leg"]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K17 ["CharacterMesh"]
       37 SETTABLEKS                       R4 R3 K4 ["R6"]
       39 DUPTABLE                         R4 K32 [{["HumanoidRootPart"] = True, ["Head"] = True, ["UpperTorso"] = True, ["LowerTorso"] = True, ["LeftUpperLeg"] = True, ["LeftLowerLeg"] = True, ["LeftFoot"] = True, ["RightUpperLeg"] = True, ["RightLowerLeg"] = True, ["RightFoot"] = True, ["LeftUpperArm"] = True, ["LeftLowerArm"] = True, ["LeftHand"] = True, ["RightUpperArm"] = True, ["RightLowerArm"] = True, ["RightHand"] = True}]
       40 SETTABLEKS                       R4 R3 K6 ["R15"]
       42 SETTABLEKS                       R3 R0 K33 ["CharacterPartNames"]
       44 DUPTABLE                         R3 K34 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"}]
       45 GETIMPORT                        R4 K37 [Enum.BodyPartR15.Head]
       47 SETTABLEKS                       R4 R3 K11 ["Head"]
       49 GETIMPORT                        R4 K38 [Enum.BodyPartR15.UpperTorso]
       51 SETTABLEKS                       R4 R3 K18 ["UpperTorso"]
       53 GETIMPORT                        R4 K39 [Enum.BodyPartR15.LowerTorso]
       55 SETTABLEKS                       R4 R3 K19 ["LowerTorso"]
       57 GETIMPORT                        R4 K40 [Enum.BodyPartR15.LeftUpperLeg]
       59 SETTABLEKS                       R4 R3 K20 ["LeftUpperLeg"]
       61 GETIMPORT                        R4 K41 [Enum.BodyPartR15.LeftLowerLeg]
       63 SETTABLEKS                       R4 R3 K21 ["LeftLowerLeg"]
       65 GETIMPORT                        R4 K42 [Enum.BodyPartR15.LeftFoot]
       67 SETTABLEKS                       R4 R3 K22 ["LeftFoot"]
       69 GETIMPORT                        R4 K43 [Enum.BodyPartR15.RightUpperLeg]
       71 SETTABLEKS                       R4 R3 K23 ["RightUpperLeg"]
       73 GETIMPORT                        R4 K44 [Enum.BodyPartR15.RightLowerLeg]
       75 SETTABLEKS                       R4 R3 K24 ["RightLowerLeg"]
       77 GETIMPORT                        R4 K45 [Enum.BodyPartR15.RightFoot]
       79 SETTABLEKS                       R4 R3 K25 ["RightFoot"]
       81 GETIMPORT                        R4 K46 [Enum.BodyPartR15.LeftUpperArm]
       83 SETTABLEKS                       R4 R3 K26 ["LeftUpperArm"]
       85 GETIMPORT                        R4 K47 [Enum.BodyPartR15.LeftLowerArm]
       87 SETTABLEKS                       R4 R3 K27 ["LeftLowerArm"]
       89 GETIMPORT                        R4 K48 [Enum.BodyPartR15.LeftHand]
       91 SETTABLEKS                       R4 R3 K28 ["LeftHand"]
       93 GETIMPORT                        R4 K49 [Enum.BodyPartR15.RightUpperArm]
       95 SETTABLEKS                       R4 R3 K29 ["RightUpperArm"]
       97 GETIMPORT                        R4 K50 [Enum.BodyPartR15.RightLowerArm]
       99 SETTABLEKS                       R4 R3 K30 ["RightLowerArm"]
      101 GETIMPORT                        R4 K51 [Enum.BodyPartR15.RightHand]
      103 SETTABLEKS                       R4 R3 K31 ["RightHand"]
      105 SETTABLEKS                       R3 R0 K52 ["R15PartNameToEnum"]
      107 GETTABLEKS                       R3 R0 K33 ["CharacterPartNames"]
      109 NEWTABLE                         R4 0 0
      111 SETTABLEKS                       R4 R3 K53 ["All"]
      113 GETIMPORT                        R3 K55 [pairs]
      115 GETTABLEKS                       R4 R0 K33 ["CharacterPartNames"]
      117 GETTABLEKS                       R4 R4 K4 ["R6"]
      119 CALL                             R3 1 3
      120 FORGPREP_NEXT                    R3
      121 GETTABLEKS                       R8 R0 K33 ["CharacterPartNames"]
      123 GETTABLEKS                       R8 R8 K53 ["All"]
      125 LOADB                            R9 1
      126 SETTABLE                         R9 R8 R6
      127 FORGLOOP                         R3 2 ; [-7]
      129 GETIMPORT                        R3 K55 [pairs]
      131 GETTABLEKS                       R4 R0 K33 ["CharacterPartNames"]
      133 GETTABLEKS                       R4 R4 K6 ["R15"]
      135 CALL                             R3 1 3
      136 FORGPREP_NEXT                    R3
      137 GETTABLEKS                       R8 R0 K33 ["CharacterPartNames"]
      139 GETTABLEKS                       R8 R8 K53 ["All"]
      141 LOADB                            R9 1
      142 SETTABLE                         R9 R8 R6
      143 FORGLOOP                         R3 2 ; [-7]
      145 DUPCLOSURE                       R3 K56 [PROTO_0]
      146 CAPTURE                          VAL R1
      147 DUPCLOSURE                       R4 K57 [PROTO_1]
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R4 R0 K58 ["LoadR15Mannequin"]
      151 DUPCLOSURE                       R4 K59 [PROTO_2]
      152 CAPTURE                          VAL R1
      153 SETTABLEKS                       R4 R0 K60 ["LoadR6Mannequin"]
      155 DUPCLOSURE                       R4 K61 [PROTO_3]
      156 CAPTURE                          VAL R1
      157 SETTABLEKS                       R4 R0 K62 ["LoadRthroMannequin"]
      159 DUPCLOSURE                       R4 K63 [PROTO_4]
      160 CAPTURE                          VAL R0
      161 SETTABLEKS                       R4 R0 K64 ["LoadMannequinForScaleType"]
      163 DUPCLOSURE                       R4 K65 [PROTO_5]
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R4 R0 K66 ["AssertObjectsFormat"]
      168 DUPCLOSURE                       R4 K67 [PROTO_6]
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R4 R0 K68 ["CreateBodyPartMannequin"]
      172 DUPCLOSURE                       R4 K69 [PROTO_8]
      173 CAPTURE                          VAL R0
      174 SETTABLEKS                       R4 R0 K70 ["SetupBodyPartMannequin"]
      176 DUPCLOSURE                       R4 K71 [PROTO_9]
      177 SETTABLEKS                       R4 R0 K72 ["CreateHeadModel"]
      179 RETURN                           R0 1
