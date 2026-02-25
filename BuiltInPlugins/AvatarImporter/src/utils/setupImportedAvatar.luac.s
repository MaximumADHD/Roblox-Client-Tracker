PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Camera"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+24]
        6 GETIMPORT                        R2 K4 [Ray.new]
        8 GETTABLEKS                       R4 R1 K5 ["CFrame"]
       10 GETTABLEKS                       R3 R4 K6 ["p"]
       12 GETTABLEKS                       R6 R1 K5 ["CFrame"]
       14 GETTABLEKS                       R5 R6 K7 ["lookVector"]
       16 MUL                              R4 R5 R0
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K8 ["FindPartOnRay"]
       22 CALL                             R3 2 2
       23 GETIMPORT                        R5 K9 [CFrame.new]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R1 K10 ["Focus"]
       29 RETURN                           R4 1
       30 LOADK                            R2 K11 [{0, 5.2, 0}]
       31 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCALE_VALUES_DEFAULTS"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R0 K1 ["AutomaticScalingEnabled"]
        9 GETIMPORT                        R3 K3 [pairs]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 MOVE                             R10 R6
       15 NAMECALL                         R8 R0 K4 ["FindFirstChild"]
       17 CALL                             R8 2 1
       18 JUMPIF                           R8 ; [+11]
       19 GETIMPORT                        R9 K7 [Instance.new]
       21 LOADK                            R10 K8 ["NumberValue"]
       22 CALL                             R9 1 1
       23 MOVE                             R8 R9
       24 SETTABLEKS                       R6 R8 K9 ["Name"]
       26 SETTABLEKS                       R7 R8 K10 ["Value"]
       28 SETTABLEKS                       R0 R8 K11 ["Parent"]
       30 FORGLOOP                         R3 2 ; [-17]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R0 K1 ["AutomaticScalingEnabled"]
       35 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+22]
        5 GETTABLEKS                       R2 R1 K2 ["TextureID"]
        7 JUMPIFNOTEQKS                    R2 K3 [""] ; [+19]
        9 LOADK                            R4 K4 ["FaceControls"]
       10 NAMECALL                         R2 R1 K5 ["FindFirstChildWhichIsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+13]
       15 GETIMPORT                        R2 K8 [Instance.new]
       17 LOADK                            R3 K9 ["Decal"]
       18 CALL                             R2 1 1
       19 LOADK                            R3 K10 ["face"]
       20 SETTABLEKS                       R3 R2 K11 ["Name"]
       22 LOADK                            R3 K12 ["rbxasset://textures/face.png"]
       23 SETTABLEKS                       R3 R2 K13 ["Texture"]
       25 SETTABLEKS                       R1 R2 K14 ["Parent"]
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["TYPE_TO_SCALE"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+25]
        5 GETIMPORT                        R3 K2 [pairs]
        7 NAMECALL                         R4 R0 K3 ["GetChildren"]
        9 CALL                             R4 1 -1
       10 CALL                             R3 -1 3
       11 FORGPREP_NEXT                    R3
       12 LOADK                            R10 K4 ["MeshPart"]
       13 NAMECALL                         R8 R7 K5 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+11]
       17 GETIMPORT                        R8 K8 [Instance.new]
       19 LOADK                            R9 K9 ["StringValue"]
       20 CALL                             R8 1 1
       21 LOADK                            R9 K10 ["AvatarPartScaleType"]
       22 SETTABLEKS                       R9 R8 K11 ["Name"]
       24 SETTABLEKS                       R2 R8 K12 ["Value"]
       26 SETTABLEKS                       R7 R8 K13 ["Parent"]
       28 FORGLOOP                         R3 2 ; [-17]
       30 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+7]
        5 GETUPVAL                         R5 0
        6 LOADN                            R6 10
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R0 K2 ["MoveTo"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0
       12 LOADK                            R4 K3 ["Imported"]
       13 MOVE                             R5 R1
       14 LOADK                            R6 K4 ["Rig"]
       15 CONCAT                           R3 R4 R6
       16 SETTABLEKS                       R3 R0 K5 ["Name"]
       18 LOADK                            R5 K6 ["Head"]
       19 NAMECALL                         R3 R0 K7 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+22]
       23 GETTABLEKS                       R4 R3 K8 ["TextureID"]
       25 JUMPIFNOTEQKS                    R4 K9 [""] ; [+19]
       27 LOADK                            R6 K10 ["FaceControls"]
       28 NAMECALL                         R4 R3 K11 ["FindFirstChildWhichIsA"]
       30 CALL                             R4 2 1
       31 JUMPIFNOTEQKNIL                  R4 ; [+13]
       33 GETIMPORT                        R4 K14 [Instance.new]
       35 LOADK                            R5 K15 ["Decal"]
       36 CALL                             R4 1 1
       37 LOADK                            R5 K16 ["face"]
       38 SETTABLEKS                       R5 R4 K5 ["Name"]
       40 LOADK                            R5 K17 ["rbxasset://textures/face.png"]
       41 SETTABLEKS                       R5 R4 K18 ["Texture"]
       43 SETTABLEKS                       R3 R4 K19 ["Parent"]
       45 GETUPVAL                         R3 1
       46 MOVE                             R4 R0
       47 MOVE                             R5 R1
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 2
       50 MOVE                             R4 R2
       51 MOVE                             R5 R1
       52 CALL                             R3 2 0
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R4 R5 K20 ["AVATAR_TYPE"]
       56 GETTABLEKS                       R3 R4 K21 ["CUSTOM"]
       58 JUMPIFNOTEQ                      R1 R3 ; [+4]
       60 LOADN                            R3 2
       61 SETTABLEKS                       R3 R2 K22 ["HipHeight"]
       63 GETUPVAL                         R5 0
       64 LOADN                            R6 10
       65 CALL                             R5 1 1
       66 NAMECALL                         R3 R0 K2 ["MoveTo"]
       68 CALL                             R3 2 0
       69 GETUPVAL                         R3 4
       70 NEWTABLE                         R5 0 1
       72 MOVE                             R6 R0
       73 SETLIST                          R5 R6 1 [1]
       75 NAMECALL                         R3 R3 K23 ["Set"]
       77 CALL                             R3 2 0
       78 GETUPVAL                         R3 5
       79 JUMPIFNOT                        R3 ; [+5]
       80 GETUPVAL                         R3 5
       81 MOVE                             R5 R0
       82 NAMECALL                         R3 R3 K24 ["ConfigureImportedAvatar"]
       84 CALL                             R3 2 0
       85 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["src"]
       13 GETTABLEKS                       R2 R3 K6 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["src"]
       20 GETTABLEKS                       R3 R4 K7 ["Globals"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 GETIMPORT                        R4 K9 [game]
       26 LOADK                            R6 K10 ["CoreGui"]
       27 NAMECALL                         R4 R4 K11 ["GetService"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K14 [Instance.new]
       32 LOADK                            R6 K15 ["ScreenGui"]
       33 CALL                             R5 1 1
       34 LOADK                            R6 K16 ["AvatarImporterConfigurer"]
       35 SETTABLEKS                       R6 R5 K17 ["Name"]
       37 SETTABLEKS                       R4 R5 K2 ["Parent"]
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R9 R0 K5 ["src"]
       43 GETTABLEKS                       R8 R9 K18 ["configurer"]
       45 GETTABLEKS                       R7 R8 K19 ["Configurer"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K13 ["new"]
       50 MOVE                             R8 R5
       51 CALL                             R7 1 1
       52 MOVE                             R3 R7
       53 GETTABLEKS                       R9 R2 K20 ["plugin"]
       55 GETTABLEKS                       R10 R2 K21 ["toolbar"]
       57 NAMECALL                         R7 R3 K22 ["createButtons"]
       59 CALL                             R7 3 0
       60 GETIMPORT                        R7 K9 [game]
       62 LOADK                            R9 K23 ["Workspace"]
       63 NAMECALL                         R7 R7 K11 ["GetService"]
       65 CALL                             R7 2 1
       66 GETIMPORT                        R8 K9 [game]
       68 LOADK                            R10 K24 ["Selection"]
       69 NAMECALL                         R8 R8 K11 ["GetService"]
       71 CALL                             R8 2 1
       72 DUPCLOSURE                       R9 K25 [PROTO_0]
       73 CAPTURE                          VAL R7
       74 DUPCLOSURE                       R10 K26 [PROTO_1]
       75 CAPTURE                          VAL R1
       76 DUPCLOSURE                       R11 K27 [PROTO_2]
       77 DUPCLOSURE                       R12 K28 [PROTO_3]
       78 CAPTURE                          VAL R1
       79 NEWCLOSURE                       R13 P4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R8
       85 CAPTURE                          REF R3
       86 CLOSEUPVALS                      R3
       87 RETURN                           R13 1
