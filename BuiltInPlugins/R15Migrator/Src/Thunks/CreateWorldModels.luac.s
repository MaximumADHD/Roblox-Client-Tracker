PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETIMPORT                        R7 K2 [Instance.new]
       14 LOADK                            R8 K3 ["WorldModel"]
       15 CALL                             R7 1 1
       16 GETUPVAL                         R8 0
       17 SETTABLEKS                       R8 R7 K4 ["Parent"]
       19 SETTABLEKS                       R7 R6 K4 ["Parent"]
       21 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R6
       25 GETIMPORT                        R8 K7 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R2 2 ; [-17]
       30 GETIMPORT                        R2 K10 [task.wait]
       32 CALL                             R2 0 0
       33 MOVE                             R2 R1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 LOADK                            R9 K11 ["HumanoidRootPart"]
       38 NAMECALL                         R7 R6 K12 ["FindFirstChild"]
       40 CALL                             R7 2 1
       41 JUMPIF                           R7 ; [+4]
       42 LOADK                            R9 K13 ["Torso"]
       43 NAMECALL                         R7 R6 K12 ["FindFirstChild"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K14 ["PrimaryPart"]
       48 GETTABLEKS                       R7 R6 K14 ["PrimaryPart"]
       50 JUMPIFNOT                        R7 ; [+10]
       51 GETIMPORT                        R9 K16 [CFrame.new]
       53 LOADN                            R10 0
       54 LOADN                            R11 0
       55 LOADN                            R12 0
       56 CALL                             R9 3 -1
       57 NAMECALL                         R7 R6 K17 ["SetPrimaryPartCFrame"]
       59 CALL                             R7 -1 0
       60 JUMP                             ; [+4]
       61 LOADK                            R9 K18 [{0, 0, 0}]
       62 NAMECALL                         R7 R6 K19 ["MoveTo"]
       64 CALL                             R7 2 0
       65 GETTABLEKS                       R7 R6 K4 ["Parent"]
       67 LOADK                            R10 K18 [{0, 0, 0}]
       68 NAMECALL                         R8 R7 K19 ["MoveTo"]
       70 CALL                             R8 2 0
       71 LOADNIL                          R8
       72 SETTABLEKS                       R8 R7 K4 ["Parent"]
       74 FORGLOOP                         R2 2 ; [-38]
       76 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["ModuleScript"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETTABLEKS                       R6 R5 K3 ["Name"]
       11 JUMPIFNOTEQKS                    R6 K4 ["SetupAdapterParts"] ; [+4]
       13 NAMECALL                         R6 R5 K5 ["ClearAllChildren"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-13]
       18 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["CharacterConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["worldModels"]
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R2 R4
        9 JUMPIFNOT                        R3 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 1
       12 NAMECALL                         R3 R3 K3 ["Clone"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R4 R4 K3 ["Clone"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K4 ["ConvertR6ToR15"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 0
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 NAMECALL                         R5 R3 K3 ["Clone"]
       29 CALL                             R5 1 1
       30 NAMECALL                         R6 R4 K3 ["Clone"]
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 4
       34 MOVE                             R8 R3
       35 MOVE                             R9 R4
       36 MOVE                             R10 R5
       37 MOVE                             R11 R6
       38 CALL                             R7 4 0
       39 GETUPVAL                         R7 5
       40 MOVE                             R8 R5
       41 CALL                             R7 1 0
       42 GETUPVAL                         R7 5
       43 MOVE                             R8 R6
       44 CALL                             R7 1 0
       45 GETUPVAL                         R9 6
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R11 R3 K5 ["Parent"]
       49 GETTABLEKS                       R12 R4 K5 ["Parent"]
       51 GETTABLEKS                       R13 R5 K5 ["Parent"]
       53 GETTABLEKS                       R14 R6 K5 ["Parent"]
       55 CALL                             R9 5 -1
       56 NAMECALL                         R7 R0 K6 ["dispatch"]
       58 CALL                             R7 -1 0
       59 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Modules"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["NpcManager"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationConversion"]
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R3 K11 ["resetCharacter"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R0 K4 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Actions"]
       33 GETTABLEKS                       R6 R6 K13 ["SetWorldModels"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K15 [game]
       38 LOADK                            R8 K16 ["RobloxReplicatedStorage"]
       39 NAMECALL                         R6 R6 K17 ["GetService"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R7 K18 [PROTO_0]
       43 CAPTURE                          VAL R6
       44 DUPCLOSURE                       R8 K19 [PROTO_1]
       45 DUPCLOSURE                       R9 K20 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 RETURN                           R9 1
