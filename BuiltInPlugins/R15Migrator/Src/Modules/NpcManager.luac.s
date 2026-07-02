PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K0 ["Name"]
        5 GETTABLE                         R1 R2 R3
        6 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R4 R2 K2 ["RigType"]
        7 JUMPIFEQ                         R4 R1 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1
       12 LOADB                            R3 0
       13 RETURN                           R3 1

PROTO_4:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETIMPORT                        R2 K5 [Enum.HumanoidRigType.R6]
        7 LOADK                            R5 K6 ["Humanoid"]
        8 NAMECALL                         R3 R0 K7 ["FindFirstChildOfClass"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETTABLEKS                       R4 R3 K8 ["RigType"]
       14 JUMPIFEQ                         R4 R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_5:
        0 DUPCLOSURE                       R0 K0 [PROTO_4]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETIMPORT                        R2 K5 [Enum.HumanoidRigType.R15]
        7 LOADK                            R5 K6 ["Humanoid"]
        8 NAMECALL                         R3 R0 K7 ["FindFirstChildOfClass"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETTABLEKS                       R4 R3 K8 ["RigType"]
       14 JUMPIFEQ                         R4 R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 JUMP                             ; [+1]
       19 LOADB                            R1 0
       20 JUMPIF                           R1 ; [+2]
       21 LOADB                            R1 0
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K9 ["hasConvertedFrom"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1

PROTO_7:
        0 DUPCLOSURE                       R0 K0 [PROTO_6]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETIMPORT                        R2 K5 [Enum.HumanoidRigType.R15]
        7 LOADK                            R5 K6 ["Humanoid"]
        8 NAMECALL                         R3 R0 K7 ["FindFirstChildOfClass"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETTABLEKS                       R4 R3 K8 ["RigType"]
       14 JUMPIFEQ                         R4 R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 JUMP                             ; [+1]
       19 LOADB                            R1 0
       20 JUMPIF                           R1 ; [+2]
       21 LOADB                            R1 0
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 0
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 MOVE                             R6 R5
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 MOVE                             R13 R10
       32 NAMECALL                         R11 R0 K9 ["FindFirstChild"]
       34 CALL                             R11 2 1
       35 JUMPIF                           R11 ; [+2]
       36 LOADB                            R11 0
       37 RETURN                           R11 1
       38 FORGLOOP                         R6 2 ; [-8]
       40 FORGLOOP                         R1 2 ; [-14]
       42 LOADB                            R1 1
       43 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 LOADK                            R3 K2 ["Humanoid"]
        6 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_10:
        0 DUPCLOSURE                       R0 K0 [PROTO_9]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 NAMECALL                         R7 R6 K1 ["GetDescendants"]
       10 CALL                             R7 1 3
       11 FORGPREP                         R7
       12 LOADK                            R14 K2 ["LuaSourceContainer"]
       13 NAMECALL                         R12 R11 K3 ["IsA"]
       15 CALL                             R12 2 1
       16 JUMPIFNOT                        R12 ; [+7]
       17 GETTABLEKS                       R12 R11 K4 ["Name"]
       19 JUMPIFNOTEQKS                    R12 K5 ["UnificationServerScript"] ; [+4]
       21 NAMECALL                         R12 R11 K6 ["Destroy"]
       23 CALL                             R12 1 0
       24 FORGLOOP                         R7 2 ; [-13]
       26 FORGLOOP                         R2 2 ; [-19]
       28 GETUPVAL                         R2 1
       29 LOADK                            R4 K7 ["AvatarUnification"]
       30 NAMECALL                         R2 R2 K8 ["FindFirstChild"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+3]
       34 NAMECALL                         R3 R2 K6 ["Destroy"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 2
       38 LOADK                            R5 K9 ["LocalEffects"]
       39 NAMECALL                         R3 R3 K8 ["FindFirstChild"]
       41 CALL                             R3 2 1
       42 JUMPIFNOT                        R3 ; [+3]
       43 NAMECALL                         R4 R3 K6 ["Destroy"]
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["CharacterMesh"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+9]
       11 GETTABLEKS                       R7 R6 K3 ["BodyPart"]
       13 GETTABLEKS                       R9 R6 K4 ["MeshId"]
       15 FASTCALL1                        TOSTRING R9 ; [+2]
       16 GETIMPORT                        R8 K6 [tostring]
       18 CALL                             R8 1 1
       19 SETTABLE                         R8 R1 R7
       20 FORGLOOP                         R2 2 ; [-15]
       22 NAMECALL                         R2 R0 K0 ["GetChildren"]
       24 CALL                             R2 1 3
       25 FORGPREP                         R2
       26 LOADK                            R9 K7 ["Part"]
       27 NAMECALL                         R7 R6 K2 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+33]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R9 R6 K8 ["Name"]
       34 GETTABLE                         R7 R8 R9
       35 JUMPIFNOT                        R7 ; [+28]
       36 LOADK                            R9 K9 ["SpecialMesh"]
       37 NAMECALL                         R7 R6 K10 ["FindFirstChildOfClass"]
       39 CALL                             R7 2 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R10 R6 K8 ["Name"]
       43 GETTABLE                         R8 R9 R10
       44 JUMPIFNOT                        R7 ; [+19]
       45 GETTABLEKS                       R9 R7 K4 ["MeshId"]
       47 JUMPIFEQKS                       R9 K11 [""] ; [+16]
       49 GETTABLE                         R9 R1 R8
       50 JUMPIF                           R9 ; [+13]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R10 R7 K4 ["MeshId"]
       54 CALL                             R9 1 1
       55 JUMPIF                           R9 ; [+2]
       56 GETTABLEKS                       R9 R7 K4 ["MeshId"]
       58 FASTCALL1                        TOSTRING R9 ; [+3]
       59 MOVE                             R11 R9
       60 GETIMPORT                        R10 K6 [tostring]
       62 CALL                             R10 1 1
       63 SETTABLE                         R10 R1 R8
       64 FORGLOOP                         R2 2 ; [-39]
       66 RETURN                           R1 1

PROTO_12:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K2 [Instance.new]
        4 LOADK                            R2 K3 ["Decal"]
        5 CALL                             R1 1 1
        6 LOADK                            R2 K4 ["face"]
        7 SETTABLEKS                       R2 R1 K5 ["Name"]
        9 GETTABLEKS                       R2 R0 K6 ["Color3"]
       11 SETTABLEKS                       R2 R1 K6 ["Color3"]
       13 GETTABLEKS                       R2 R0 K7 ["Texture"]
       15 SETTABLEKS                       R2 R1 K7 ["Texture"]
       17 GETTABLEKS                       R2 R0 K8 ["Transparency"]
       19 SETTABLEKS                       R2 R1 K8 ["Transparency"]
       21 GETTABLEKS                       R2 R0 K9 ["ZIndex"]
       23 SETTABLEKS                       R2 R1 K9 ["ZIndex"]
       25 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIF                           R4 ; [+1]
        3 RETURN                           R0 0
        4 MOVE                             R5 R4
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETUPVAL                         R10 1
        9 MOVE                             R12 R9
       10 NAMECALL                         R10 R10 K0 ["FindFirstChild"]
       12 CALL                             R10 2 1
       13 JUMPIFNOT                        R10 ; [+61]
       14 MOVE                             R13 R9
       15 NAMECALL                         R11 R1 K0 ["FindFirstChild"]
       17 CALL                             R11 2 1
       18 JUMPIFNOT                        R11 ; [+3]
       19 NAMECALL                         R12 R11 K1 ["Destroy"]
       21 CALL                             R12 1 0
       22 NAMECALL                         R12 R10 K2 ["Clone"]
       24 CALL                             R12 1 1
       25 SETTABLEKS                       R2 R12 K3 ["Color"]
       27 GETIMPORT                        R13 K7 [Enum.BodyPart.Head]
       29 JUMPIFNOTEQ                      R0 R13 ; [+43]
       31 LOADK                            R15 K8 ["Decal"]
       32 NAMECALL                         R13 R12 K9 ["FindFirstChildOfClass"]
       34 CALL                             R13 2 1
       35 JUMPIFNOT                        R13 ; [+7]
       36 GETTABLEKS                       R14 R13 K10 ["Name"]
       38 JUMPIFNOTEQKS                    R14 K11 ["face"] ; [+4]
       40 NAMECALL                         R14 R13 K1 ["Destroy"]
       42 CALL                             R14 1 0
       43 JUMPIF                           R3 ; [+2]
       44 LOADNIL                          R14
       45 JUMP                             ; [+24]
       46 GETIMPORT                        R15 K14 [Instance.new]
       48 LOADK                            R16 K8 ["Decal"]
       49 CALL                             R15 1 1
       50 LOADK                            R16 K11 ["face"]
       51 SETTABLEKS                       R16 R15 K10 ["Name"]
       53 GETTABLEKS                       R16 R3 K15 ["Color3"]
       55 SETTABLEKS                       R16 R15 K15 ["Color3"]
       57 GETTABLEKS                       R16 R3 K16 ["Texture"]
       59 SETTABLEKS                       R16 R15 K16 ["Texture"]
       61 GETTABLEKS                       R16 R3 K17 ["Transparency"]
       63 SETTABLEKS                       R16 R15 K17 ["Transparency"]
       65 GETTABLEKS                       R16 R3 K18 ["ZIndex"]
       67 SETTABLEKS                       R16 R15 K18 ["ZIndex"]
       69 MOVE                             R14 R15
       70 JUMPIFNOT                        R14 ; [+2]
       71 SETTABLEKS                       R12 R14 K19 ["Parent"]
       73 SETTABLEKS                       R1 R12 K19 ["Parent"]
       75 FORGLOOP                         R5 2 ; [-68]
       77 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R2
        2 GETIMPORT                        R7 K1 [pcall]
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R6
        7 CALL                             R7 1 2
        8 JUMPIF                           R7 ; [+18]
        9 GETIMPORT                        R9 K3 [warn]
       11 LOADK                            R11 K4 ["Failed to load R15 part for "]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R16 R0
       14 GETIMPORT                        R15 K6 [tostring]
       16 CALL                             R15 1 1
       17 MOVE                             R12 R15
       18 LOADK                            R13 K7 [" with meshId "]
       19 MOVE                             R14 R2
       20 CONCAT                           R10 R11 R14
       21 CALL                             R9 1 0
       22 GETUPVAL                         R9 2
       23 MOVE                             R10 R0
       24 MOVE                             R11 R1
       25 CALL                             R9 2 0
       26 RETURN                           R0 0
       27 LOADNIL                          R9
       28 GETUPVAL                         R10 3
       29 LOADNIL                          R11
       30 LOADNIL                          R12
       31 FORGPREP                         R10
       32 MOVE                             R17 R14
       33 NAMECALL                         R15 R8 K8 ["FindFirstChild"]
       35 CALL                             R15 2 1
       36 MOVE                             R9 R15
       37 JUMPIF                           R9 ; [+2]
       38 FORGLOOP                         R10 2 ; [-7]
       40 JUMPIF                           R9 ; [+18]
       41 GETIMPORT                        R10 K3 [warn]
       43 LOADK                            R12 K9 ["Failed to find R15 folder for "]
       44 FASTCALL1                        TOSTRING R0 ; [+3]
       45 MOVE                             R17 R0
       46 GETIMPORT                        R16 K6 [tostring]
       48 CALL                             R16 1 1
       49 MOVE                             R13 R16
       50 LOADK                            R14 K7 [" with meshId "]
       51 MOVE                             R15 R2
       52 CONCAT                           R11 R12 R15
       53 CALL                             R10 1 0
       54 GETUPVAL                         R10 2
       55 MOVE                             R11 R0
       56 MOVE                             R12 R1
       57 CALL                             R10 2 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R11 4
       60 GETTABLE                         R10 R11 R0
       61 MOVE                             R11 R10
       62 LOADNIL                          R12
       63 LOADNIL                          R13
       64 FORGPREP                         R11
       65 MOVE                             R18 R15
       66 NAMECALL                         R16 R9 K8 ["FindFirstChild"]
       68 CALL                             R16 2 1
       69 JUMPIFNOT                        R16 ; [+59]
       70 NAMECALL                         R17 R16 K10 ["Clone"]
       72 CALL                             R17 1 1
       73 SETTABLEKS                       R3 R17 K11 ["Color"]
       75 GETIMPORT                        R18 K15 [Enum.BodyPart.Head]
       77 JUMPIFNOTEQ                      R0 R18 ; [+44]
       79 LOADK                            R20 K16 ["Decal"]
       80 NAMECALL                         R18 R17 K17 ["FindFirstChildOfClass"]
       82 CALL                             R18 2 1
       83 JUMPIFNOT                        R18 ; [+7]
       84 GETTABLEKS                       R19 R18 K18 ["Name"]
       86 JUMPIFNOTEQKS                    R19 K19 ["face"] ; [+4]
       88 NAMECALL                         R19 R18 K20 ["Destroy"]
       90 CALL                             R19 1 0
       91 JUMPIF                           R4 ; [+2]
       92 LOADNIL                          R19
       93 JUMP                             ; [+24]
       94 GETIMPORT                        R20 K23 [Instance.new]
       96 LOADK                            R21 K16 ["Decal"]
       97 CALL                             R20 1 1
       98 LOADK                            R21 K19 ["face"]
       99 SETTABLEKS                       R21 R20 K18 ["Name"]
      101 GETTABLEKS                       R21 R4 K24 ["Color3"]
      103 SETTABLEKS                       R21 R20 K24 ["Color3"]
      105 GETTABLEKS                       R21 R4 K25 ["Texture"]
      107 SETTABLEKS                       R21 R20 K25 ["Texture"]
      109 GETTABLEKS                       R21 R4 K26 ["Transparency"]
      111 SETTABLEKS                       R21 R20 K26 ["Transparency"]
      113 GETTABLEKS                       R21 R4 K27 ["ZIndex"]
      115 SETTABLEKS                       R21 R20 K27 ["ZIndex"]
      117 MOVE                             R19 R20
      118 JUMPIFNOT                        R19 ; [+8]
      119 SETTABLEKS                       R17 R19 K28 ["Parent"]
      121 JUMP                             ; [+5]
      122 JUMPIFNOTEQKN                    R14 K29 [1] ; [+4]
      124 JUMPIFNOT                        R5 ; [+2]
      125 SETTABLEKS                       R5 R17 K30 ["TextureID"]
      127 SETTABLEKS                       R1 R17 K28 ["Parent"]
      129 FORGLOOP                         R11 2 ; [-65]
      131 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["MeshId"]
        3 GETIMPORT                        R4 K4 [Enum.CollisionFidelity.Default]
        5 GETIMPORT                        R5 K7 [Enum.RenderFidelity.Automatic]
        7 NAMECALL                         R1 R1 K8 ["CreateMeshPartAsync"]
        9 CALL                             R1 4 1
       10 GETTABLEKS                       R2 R0 K9 ["TextureId"]
       12 SETTABLEKS                       R2 R1 K10 ["TextureID"]
       14 GETTABLEKS                       R3 R1 K11 ["Size"]
       16 GETTABLEKS                       R4 R0 K12 ["Scale"]
       18 MUL                              R2 R3 R4
       19 SETTABLEKS                       R2 R1 K11 ["Size"]
       21 LOADK                            R2 K13 ["Head"]
       22 SETTABLEKS                       R2 R1 K14 ["Name"]
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R0
       26 LOADK                            R5 K15 ["NoFace"]
       27 NAMECALL                         R2 R2 K16 ["HasTag"]
       29 CALL                             R2 3 1
       30 JUMPIF                           R2 ; [+12]
       31 GETIMPORT                        R3 K19 [Instance.new]
       33 LOADK                            R4 K20 ["Decal"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R1 R3 K21 ["Parent"]
       37 LOADK                            R4 K22 ["face"]
       38 SETTABLEKS                       R4 R3 K14 ["Name"]
       40 LOADK                            R4 K23 ["rbxasset://textures/face.png"]
       41 SETTABLEKS                       R4 R3 K24 ["Texture"]
       43 NAMECALL                         R3 R0 K25 ["GetChildren"]
       45 CALL                             R3 1 3
       46 FORGPREP                         R3
       47 LOADK                            R10 K26 ["Vector3Value"]
       48 NAMECALL                         R8 R7 K27 ["IsA"]
       50 CALL                             R8 2 1
       51 JUMPIFNOT                        R8 ; [+25]
       52 GETTABLEKS                       R9 R7 K14 ["Name"]
       54 FASTCALL2K                       STRING_SUB R9 K28 ; [+4]
       56 LOADK                            R10 K28 [-10]
       57 GETIMPORT                        R8 K31 [string.sub]
       59 CALL                             R8 2 1
       60 JUMPIFNOTEQKS                    R8 K32 ["Attachment"] ; [+16]
       62 GETIMPORT                        R8 K19 [Instance.new]
       64 LOADK                            R9 K32 ["Attachment"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R7 K14 ["Name"]
       68 SETTABLEKS                       R9 R8 K14 ["Name"]
       70 GETTABLEKS                       R9 R7 K33 ["Value"]
       72 SETTABLEKS                       R9 R8 K34 ["Position"]
       74 SETTABLEKS                       R1 R8 K21 ["Parent"]
       76 JUMP                             ; [+17]
       77 NAMECALL                         R8 R7 K35 ["Clone"]
       79 CALL                             R8 1 1
       80 SETTABLEKS                       R1 R8 K21 ["Parent"]
       82 LOADK                            R11 K32 ["Attachment"]
       83 NAMECALL                         R9 R8 K27 ["IsA"]
       85 CALL                             R9 2 1
       86 JUMPIFNOT                        R9 ; [+7]
       87 GETTABLEKS                       R10 R8 K34 ["Position"]
       89 GETTABLEKS                       R11 R0 K36 ["Offset"]
       91 SUB                              R9 R10 R11
       92 SETTABLEKS                       R9 R8 K34 ["Position"]
       94 FORGLOOP                         R3 2 ; [-48]
       96 LOADK                            R5 K37 ["AvatarPartScaleType"]
       97 NAMECALL                         R3 R1 K38 ["FindFirstChild"]
       99 CALL                             R3 2 1
      100 JUMPIF                           R3 ; [+12]
      101 GETIMPORT                        R3 K19 [Instance.new]
      103 LOADK                            R4 K39 ["StringValue"]
      104 CALL                             R3 1 1
      105 LOADK                            R4 K37 ["AvatarPartScaleType"]
      106 SETTABLEKS                       R4 R3 K14 ["Name"]
      108 LOADK                            R4 K40 ["Classic"]
      109 SETTABLEKS                       R4 R3 K33 ["Value"]
      111 SETTABLEKS                       R1 R3 K21 ["Parent"]
      113 LOADK                            R5 K41 ["FaceCenterAttachment"]
      114 NAMECALL                         R3 R1 K38 ["FindFirstChild"]
      116 CALL                             R3 2 1
      117 JUMPIF                           R3 ; [+12]
      118 GETIMPORT                        R3 K19 [Instance.new]
      120 LOADK                            R4 K32 ["Attachment"]
      121 CALL                             R3 1 1
      122 LOADK                            R4 K41 ["FaceCenterAttachment"]
      123 SETTABLEKS                       R4 R3 K14 ["Name"]
      125 LOADK                            R4 K42 [{0, 0, 0}]
      126 SETTABLEKS                       R4 R3 K34 ["Position"]
      128 SETTABLEKS                       R1 R3 K21 ["Parent"]
      130 LOADK                            R5 K43 ["FaceFrontAttachment"]
      131 NAMECALL                         R3 R1 K38 ["FindFirstChild"]
      133 CALL                             R3 2 1
      134 JUMPIF                           R3 ; [+12]
      135 GETIMPORT                        R3 K19 [Instance.new]
      137 LOADK                            R4 K32 ["Attachment"]
      138 CALL                             R3 1 1
      139 LOADK                            R4 K43 ["FaceFrontAttachment"]
      140 SETTABLEKS                       R4 R3 K14 ["Name"]
      142 LOADK                            R4 K44 [{0, 0, -0.6}]
      143 SETTABLEKS                       R4 R3 K34 ["Position"]
      145 SETTABLEKS                       R1 R3 K21 ["Parent"]
      147 LOADK                            R5 K45 ["HairAttachment"]
      148 NAMECALL                         R3 R1 K38 ["FindFirstChild"]
      150 CALL                             R3 2 1
      151 JUMPIF                           R3 ; [+12]
      152 GETIMPORT                        R3 K19 [Instance.new]
      154 LOADK                            R4 K32 ["Attachment"]
      155 CALL                             R3 1 1
      156 LOADK                            R4 K45 ["HairAttachment"]
      157 SETTABLEKS                       R4 R3 K14 ["Name"]
      159 LOADK                            R4 K46 [{0, 0.6, 0}]
      160 SETTABLEKS                       R4 R3 K34 ["Position"]
      162 SETTABLEKS                       R1 R3 K21 ["Parent"]
      164 LOADK                            R5 K47 ["HatAttachment"]
      165 NAMECALL                         R3 R1 K38 ["FindFirstChild"]
      167 CALL                             R3 2 1
      168 JUMPIF                           R3 ; [+12]
      169 GETIMPORT                        R3 K19 [Instance.new]
      171 LOADK                            R4 K32 ["Attachment"]
      172 CALL                             R3 1 1
      173 LOADK                            R4 K47 ["HatAttachment"]
      174 SETTABLEKS                       R4 R3 K14 ["Name"]
      176 LOADK                            R4 K46 [{0, 0.6, 0}]
      177 SETTABLEKS                       R4 R3 K34 ["Position"]
      179 SETTABLEKS                       R1 R3 K21 ["Parent"]
      181 LOADK                            R5 K48 ["NeckRigAttachment"]
      182 NAMECALL                         R3 R1 K38 ["FindFirstChild"]
      184 CALL                             R3 2 1
      185 JUMPIF                           R3 ; [+12]
      186 GETIMPORT                        R3 K19 [Instance.new]
      188 LOADK                            R4 K32 ["Attachment"]
      189 CALL                             R3 1 1
      190 LOADK                            R4 K48 ["NeckRigAttachment"]
      191 SETTABLEKS                       R4 R3 K14 ["Name"]
      193 LOADK                            R4 K49 [{0, -0.5, 0}]
      194 SETTABLEKS                       R4 R3 K34 ["Position"]
      196 SETTABLEKS                       R1 R3 K21 ["Parent"]
      198 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 LOADK                            R6 K0 ["SpecialMesh"]
        1 NAMECALL                         R4 R3 K1 ["FindFirstChildOfClass"]
        3 CALL                             R4 2 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R7 R4 K2 ["MeshId"]
        7 CALL                             R6 1 1
        8 JUMPIF                           R6 ; [+2]
        9 GETTABLEKS                       R6 R4 K2 ["MeshId"]
       11 FASTCALL1                        TOSTRING R6 ; [+2]
       12 GETIMPORT                        R5 K4 [tostring]
       14 CALL                             R5 1 1
       15 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       17 MOVE                             R7 R4
       18 LOADK                            R8 K5 ["SpecialMesh must exist if loadMeshPartHead() is called"]
       19 GETIMPORT                        R6 K7 [assert]
       21 CALL                             R6 2 0
       22 GETUPVAL                         R7 1
       23 GETTABLE                         R6 R7 R5
       24 GETIMPORT                        R7 K9 [pcall]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R6
       29 CALL                             R7 1 2
       30 JUMPIFNOT                        R7 ; [+26]
       31 JUMPIFNOT                        R8 ; [+25]
       32 NAMECALL                         R10 R8 K10 ["GetChildren"]
       34 CALL                             R10 1 1
       35 LENGTH                           R9 R10
       36 LOADN                            R10 0
       37 JUMPIFNOTLT                      R10 R9 ; [+19]
       39 NAMECALL                         R10 R8 K10 ["GetChildren"]
       41 CALL                             R10 1 1
       42 GETTABLEN                        R9 R10 1
       43 LOADK                            R11 K0 ["SpecialMesh"]
       44 NAMECALL                         R9 R9 K11 ["IsA"]
       46 CALL                             R9 2 1
       47 JUMPIFNOT                        R9 ; [+9]
       48 NAMECALL                         R10 R8 K10 ["GetChildren"]
       50 CALL                             R10 1 1
       51 GETTABLEN                        R9 R10 1
       52 GETTABLEKS                       R9 R9 K2 ["MeshId"]
       54 SETTABLEKS                       R9 R4 K2 ["MeshId"]
       56 JUMP                             ; [+6]
       57 GETIMPORT                        R9 K13 [warn]
       59 LOADK                            R11 K14 ["Failed to load R15 head for meshId "]
       60 MOVE                             R12 R5
       61 CONCAT                           R10 R11 R12
       62 CALL                             R9 1 0
       63 GETUPVAL                         R9 3
       64 MOVE                             R10 R4
       65 CALL                             R9 1 1
       66 NAMECALL                         R10 R3 K10 ["GetChildren"]
       68 CALL                             R10 1 3
       69 FORGPREP                         R10
       70 LOADK                            R17 K0 ["SpecialMesh"]
       71 NAMECALL                         R15 R14 K11 ["IsA"]
       73 CALL                             R15 2 1
       74 JUMPIF                           R15 ; [+26]
       75 LOADK                            R17 K15 ["Weld"]
       76 NAMECALL                         R15 R14 K11 ["IsA"]
       78 CALL                             R15 2 1
       79 JUMPIFNOT                        R15 ; [+4]
       80 GETTABLEKS                       R15 R14 K16 ["Name"]
       82 JUMPIFEQKS                       R15 K17 ["HeadWeld"] ; [+18]
       84 GETTABLEKS                       R17 R14 K16 ["Name"]
       86 NAMECALL                         R15 R9 K18 ["FindFirstChild"]
       88 CALL                             R15 2 1
       89 JUMPIFNOT                        R15 ; [+9]
       90 GETTABLEKS                       R16 R15 K19 ["ClassName"]
       92 GETTABLEKS                       R17 R14 K19 ["ClassName"]
       94 JUMPIFNOTEQ                      R16 R17 ; [+4]
       96 NAMECALL                         R16 R15 K20 ["Destroy"]
       98 CALL                             R16 1 0
       99 SETTABLEKS                       R9 R14 K21 ["Parent"]
      101 FORGLOOP                         R10 2 ; [-32]
      103 NAMECALL                         R10 R3 K20 ["Destroy"]
      105 CALL                             R10 1 0
      106 SETTABLEKS                       R1 R9 K22 ["Color"]
      108 LOADK                            R12 K23 ["Decal"]
      109 NAMECALL                         R10 R9 K1 ["FindFirstChildOfClass"]
      111 CALL                             R10 2 1
      112 JUMPIFNOT                        R10 ; [+7]
      113 GETTABLEKS                       R11 R10 K16 ["Name"]
      115 JUMPIFNOTEQKS                    R11 K24 ["face"] ; [+4]
      117 NAMECALL                         R11 R10 K20 ["Destroy"]
      119 CALL                             R11 1 0
      120 JUMPIF                           R2 ; [+2]
      121 LOADNIL                          R11
      122 JUMP                             ; [+24]
      123 GETIMPORT                        R12 K27 [Instance.new]
      125 LOADK                            R13 K23 ["Decal"]
      126 CALL                             R12 1 1
      127 LOADK                            R13 K24 ["face"]
      128 SETTABLEKS                       R13 R12 K16 ["Name"]
      130 GETTABLEKS                       R13 R2 K28 ["Color3"]
      132 SETTABLEKS                       R13 R12 K28 ["Color3"]
      134 GETTABLEKS                       R13 R2 K29 ["Texture"]
      136 SETTABLEKS                       R13 R12 K29 ["Texture"]
      138 GETTABLEKS                       R13 R2 K30 ["Transparency"]
      140 SETTABLEKS                       R13 R12 K30 ["Transparency"]
      142 GETTABLEKS                       R13 R2 K31 ["ZIndex"]
      144 SETTABLEKS                       R13 R12 K31 ["ZIndex"]
      146 MOVE                             R11 R12
      147 JUMPIFNOT                        R11 ; [+2]
      148 SETTABLEKS                       R9 R11 K21 ["Parent"]
      150 SETTABLEKS                       R0 R9 K21 ["Parent"]
      152 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetLocalFileContents"]
        4 CALL                             R2 2 1
        5 GETIMPORT                        R3 K3 [Instance.new]
        7 LOADK                            R4 K4 ["ModuleScript"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R0 R3 K5 ["Name"]
       11 SETTABLEKS                       R2 R3 K6 ["Source"]
       13 RETURN                           R3 1

PROTO_20:
        0 LOADK                            R3 K0 ["UnificationServerScript"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R2 R1 K2 ["Destroy"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_21:
        0 LOADK                            R4 K0 ["UnificationServerScript"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarUnification"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+40]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["Folder"]
        9 CALL                             R2 1 1
       10 MOVE                             R1 R2
       11 GETUPVAL                         R2 0
       12 SETTABLEKS                       R2 R1 K6 ["Parent"]
       14 LOADK                            R2 K0 ["AvatarUnification"]
       15 SETTABLEKS                       R2 R1 K7 ["Name"]
       17 GETUPVAL                         R2 1
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETUPVAL                         R8 2
       22 MOVE                             R10 R6
       23 NAMECALL                         R8 R8 K8 ["GetLocalFileContents"]
       25 CALL                             R8 2 1
       26 GETIMPORT                        R9 K4 [Instance.new]
       28 LOADK                            R10 K9 ["ModuleScript"]
       29 CALL                             R9 1 1
       30 SETTABLEKS                       R5 R9 K7 ["Name"]
       32 SETTABLEKS                       R8 R9 K10 ["Source"]
       34 MOVE                             R7 R9
       35 GETUPVAL                         R10 3
       36 GETTABLEKS                       R10 R10 K11 ["AttributeUnificationScriptName"]
       38 LOADB                            R11 1
       39 NAMECALL                         R8 R7 K12 ["SetAttribute"]
       41 CALL                             R8 3 0
       42 SETTABLEKS                       R1 R7 K6 ["Parent"]
       44 FORGLOOP                         R2 2 ; [-24]
       46 LOADK                            R4 K13 ["UnificationServerScript"]
       47 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       49 CALL                             R2 2 1
       50 JUMPIF                           R2 ; [+29]
       51 GETIMPORT                        R2 K4 [Instance.new]
       53 LOADK                            R3 K14 ["Script"]
       54 CALL                             R2 1 1
       55 LOADK                            R3 K13 ["UnificationServerScript"]
       56 SETTABLEKS                       R3 R2 K7 ["Name"]
       58 GETUPVAL                         R3 2
       59 LOADK                            R5 K15 ["rbxasset://avatar/unification/UnificationServerScriptR15Migrator.lua"]
       60 NAMECALL                         R3 R3 K8 ["GetLocalFileContents"]
       62 CALL                             R3 2 1
       63 SETTABLEKS                       R3 R2 K10 ["Source"]
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R5 R5 K11 ["AttributeUnificationScriptName"]
       68 LOADB                            R6 1
       69 NAMECALL                         R3 R2 K12 ["SetAttribute"]
       71 CALL                             R3 3 0
       72 SETTABLEKS                       R0 R2 K6 ["Parent"]
       74 GETUPVAL                         R3 4
       75 NAMECALL                         R3 R3 K16 ["Clone"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R2 R3 K6 ["Parent"]
       80 GETUPVAL                         R2 5
       81 LOADK                            R4 K17 ["LocalEffects"]
       82 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       84 CALL                             R2 2 1
       85 JUMPIF                           R2 ; [+24]
       86 GETIMPORT                        R2 K4 [Instance.new]
       88 LOADK                            R3 K18 ["LocalScript"]
       89 CALL                             R2 1 1
       90 LOADK                            R3 K17 ["LocalEffects"]
       91 SETTABLEKS                       R3 R2 K7 ["Name"]
       93 GETUPVAL                         R3 2
       94 LOADK                            R5 K19 ["rbxasset://avatar/unification/LocalEffects.lua"]
       95 NAMECALL                         R3 R3 K8 ["GetLocalFileContents"]
       97 CALL                             R3 2 1
       98 SETTABLEKS                       R3 R2 K10 ["Source"]
      100 GETUPVAL                         R5 3
      101 GETTABLEKS                       R5 R5 K11 ["AttributeUnificationScriptName"]
      103 LOADB                            R6 1
      104 NAMECALL                         R3 R2 K12 ["SetAttribute"]
      106 CALL                             R3 3 0
      107 GETUPVAL                         R3 5
      108 SETTABLEKS                       R3 R2 K6 ["Parent"]
      110 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K7 [{[1] = 1, ["BodyDepthScale"] = 1, ["BodyWidthScale"] = 1, ["HeadScale"] = 1, ["BodyProportionScale"] = 0}]
        1 MOVE                             R2 R1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K10 [Instance.new]
        7 LOADK                            R8 K11 ["NumberValue"]
        8 CALL                             R7 1 1
        9 SETTABLEKS                       R5 R7 K12 ["Name"]
       11 SETTABLEKS                       R6 R7 K13 ["Value"]
       13 SETTABLEKS                       R0 R7 K14 ["Parent"]
       15 FORGLOOP                         R2 2 ; [-11]
       17 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 JUMPIFEQ                         R4 R1 ; [+13]
        5 LOADN                            R7 1
        6 GETTABLEKS                       R8 R4 K0 ["Name"]
        8 FASTCALL3                        TABLE_INSERT R3 R7 R8
       10 MOVE                             R6 R3
       11 GETIMPORT                        R5 K3 [table.insert]
       13 CALL                             R5 3 0
       14 GETTABLEKS                       R4 R4 K4 ["Parent"]
       16 JUMPBACK                         ; [-14]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 MOVE                             R13 R10
       23 NAMECALL                         R11 R5 K5 ["FindFirstChild"]
       25 CALL                             R11 2 1
       26 LOADK                            R15 K6 ["can't find "]
       27 MOVE                             R16 R10
       28 LOADK                            R17 K7 [" under "]
       29 NAMECALL                         R18 R2 K8 ["GetFullName"]
       31 CALL                             R18 1 1
       32 CONCAT                           R14 R15 R18
       33 FASTCALL2                        ASSERT R11 R14 ; [+4]
       35 MOVE                             R13 R11
       36 GETIMPORT                        R12 K10 [assert]
       38 CALL                             R12 2 0
       39 MOVE                             R5 R11
       40 FORGLOOP                         R6 2 ; [-19]
       42 RETURN                           R5 1

PROTO_25:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["GetNpcFromId"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIF                           R4 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R4 K1 ["Name"]
        9 SETTABLEKS                       R5 R1 K1 ["Name"]
       11 GETTABLEKS                       R5 R4 K2 ["Parent"]
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R4 K2 ["Parent"]
       16 NAMECALL                         R6 R4 K3 ["GetDescendants"]
       18 CALL                             R6 1 3
       19 FORGPREP                         R6
       20 LOADK                            R13 K4 ["LuaSourceContainer"]
       21 NAMECALL                         R11 R10 K5 ["IsA"]
       23 CALL                             R11 2 1
       24 JUMPIFNOT                        R11 ; [+21]
       25 GETUPVAL                         R13 1
       26 GETTABLEKS                       R13 R13 K6 ["AttributeUnificationScriptName"]
       28 NAMECALL                         R11 R10 K7 ["GetAttribute"]
       30 CALL                             R11 2 1
       31 JUMPIF                           R11 ; [+14]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R11 R11 K8 ["FindInstanceUnderNewModel"]
       35 MOVE                             R12 R10
       36 MOVE                             R13 R4
       37 MOVE                             R14 R1
       38 CALL                             R11 3 1
       39 GETTABLEKS                       R12 R11 K2 ["Parent"]
       41 NAMECALL                         R13 R11 K9 ["Destroy"]
       43 CALL                             R13 1 0
       44 SETTABLEKS                       R12 R10 K2 ["Parent"]
       46 FORGLOOP                         R6 2 ; [-27]
       48 SETTABLEKS                       R5 R1 K2 ["Parent"]
       50 JUMPIFNOT                        R2 ; [+11]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K10 ["ConvertR6ToR15"]
       54 MOVE                             R7 R1
       55 CALL                             R6 1 0
       56 JUMPIFNOT                        R3 ; [+5]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R6 R6 K11 ["SetupUnificationScripts"]
       60 MOVE                             R7 R1
       61 CALL                             R6 1 0
       62 NAMECALL                         R6 R4 K9 ["Destroy"]
       64 CALL                             R6 1 0
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R6 R6 K12 ["SetNpcWithId"]
       68 MOVE                             R7 R1
       69 MOVE                             R8 R0
       70 CALL                             R6 2 0
       71 RETURN                           R0 0

PROTO_26:
        0 LOADK                            R3 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["There must be a HumanoidRootPart on the npc!"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 LOADK                            R4 K5 ["RootRigAttachment"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R0 0
       17 LOADK                            R5 K6 ["RootAttachment"]
       18 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+7]
       22 GETIMPORT                        R4 K9 [Instance.new]
       24 LOADK                            R5 K10 ["Attachment"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 SETTABLEKS                       R1 R3 K11 ["Parent"]
       29 LOADK                            R4 K5 ["RootRigAttachment"]
       30 SETTABLEKS                       R4 R3 K12 ["Name"]
       32 RETURN                           R0 0

PROTO_27:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["GetNpcHasWarnings"]
        8 GETTABLEKS                       R8 R6 K1 ["model"]
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+1]
       12 ADDK                             R1 R1 K2 [1]
       13 FORGLOOP                         R2 2 ; [-9]
       15 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetNpcHasCustomMesh"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["GetNpcHasCustomMesh"]
        8 GETTABLEKS                       R8 R6 K1 ["model"]
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+1]
       12 ADDK                             R1 R1 K2 [1]
       13 FORGLOOP                         R2 2 ; [-9]
       15 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLE                         R7 R1 R5
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETUPVAL                         R9 2
       10 GETTABLE                         R8 R9 R7
       11 JUMPIF                           R8 ; [+2]
       12 LOADB                            R8 1
       13 RETURN                           R8 1
       14 FORGLOOP                         R2 1 ; [-8]
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_31:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Part"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+24]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R9 R6 K3 ["Name"]
       14 GETTABLE                         R7 R8 R9
       15 JUMPIFNOT                        R7 ; [+74]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R10 R6 K3 ["Name"]
       19 GETTABLE                         R8 R9 R10
       20 GETTABLE                         R7 R1 R8
       21 JUMPIF                           R7 ; [+68]
       22 GETTABLEKS                       R7 R6 K4 ["Parent"]
       24 JUMPIFNOTEQ                      R7 R0 ; [+65]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R9 R6 K3 ["Name"]
       29 GETTABLE                         R7 R8 R9
       30 DUPTABLE                         R8 K5 [{"Part"}]
       31 SETTABLEKS                       R6 R8 K1 ["Part"]
       33 SETTABLE                         R8 R1 R7
       34 JUMP                             ; [+55]
       35 LOADK                            R9 K6 ["Motor6D"]
       36 NAMECALL                         R7 R6 K2 ["IsA"]
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+50]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R9 R6 K3 ["Name"]
       43 GETTABLE                         R7 R8 R9
       44 JUMPIFNOT                        R7 ; [+45]
       45 GETTABLEKS                       R7 R6 K7 ["Part0"]
       47 JUMPIFNOT                        R7 ; [+42]
       48 GETTABLEKS                       R7 R6 K8 ["Part1"]
       50 JUMPIFNOT                        R7 ; [+39]
       51 GETTABLEKS                       R7 R6 K8 ["Part1"]
       53 GETTABLEKS                       R7 R7 K4 ["Parent"]
       55 JUMPIFNOTEQ                      R0 R7 ; [+34]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R9 R6 K3 ["Name"]
       60 GETTABLE                         R7 R8 R9
       61 GETTABLEKS                       R7 R7 K9 ["Part1Name"]
       63 GETTABLEKS                       R8 R6 K8 ["Part1"]
       65 GETTABLEKS                       R8 R8 K3 ["Name"]
       67 JUMPIFNOTEQ                      R7 R8 ; [+22]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R9 R6 K8 ["Part1"]
       72 GETTABLEKS                       R9 R9 K3 ["Name"]
       74 GETTABLE                         R7 R8 R9
       75 JUMPIFNOT                        R7 ; [+14]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R9 R6 K8 ["Part1"]
       79 GETTABLEKS                       R9 R9 K3 ["Name"]
       81 GETTABLE                         R7 R8 R9
       82 DUPTABLE                         R8 K10 [{"Part", "Motor6D"}]
       83 GETTABLEKS                       R9 R6 K8 ["Part1"]
       85 SETTABLEKS                       R9 R8 K1 ["Part"]
       87 SETTABLEKS                       R6 R8 K6 ["Motor6D"]
       89 SETTABLE                         R8 R1 R7
       90 FORGLOOP                         R2 2 ; [-85]
       92 RETURN                           R1 1

PROTO_32:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["Part0"]
        3 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R3 R1 K0 ["CFrame"]
        2 GETTABLEKS                       R3 R3 K1 ["Position"]
        4 GETIMPORT                        R4 K5 [Enum.BodyPart.Head]
        6 JUMPIFEQ                         R2 R4 ; [+34]
        8 GETTABLEKS                       R6 R1 K7 ["Size"]
       10 GETTABLEKS                       R6 R6 K8 ["Y"]
       12 GETTABLEKS                       R7 R0 K7 ["Size"]
       14 GETTABLEKS                       R7 R7 K8 ["Y"]
       16 SUB                              R5 R6 R7
       17 DIVK                             R4 R5 K6 [2]
       18 GETIMPORT                        R5 K10 [Enum.BodyPart.Torso]
       20 JUMPIFNOTEQ                      R2 R5 ; [+2]
       22 MINUS                            R4 R4
       23 GETTABLEKS                       R5 R1 K0 ["CFrame"]
       25 GETTABLEKS                       R5 R5 K1 ["Position"]
       27 GETTABLEKS                       R7 R1 K0 ["CFrame"]
       29 GETTABLEKS                       R7 R7 K11 ["Rotation"]
       31 LOADN                            R9 0
       32 LOADN                            R11 0
       33 FASTCALL3                        VECTOR R9 R4 R11
       35 MOVE                             R10 R4
       36 GETIMPORT                        R8 K14 [Vector3.new]
       38 CALL                             R8 3 1
       39 MUL                              R6 R7 R8
       40 ADD                              R3 R5 R6
       41 GETTABLEKS                       R5 R1 K0 ["CFrame"]
       43 GETTABLEKS                       R5 R5 K11 ["Rotation"]
       45 ADD                              R4 R5 R3
       46 SETTABLEKS                       R4 R0 K0 ["CFrame"]
       48 RETURN                           R0 0

PROTO_34:
        0 DUPCLOSURE                       R2 K0 [PROTO_32]
        1 DUPCLOSURE                       R3 K1 [PROTO_33]
        2 GETUPVAL                         R4 0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R11 1
        7 GETTABLEKS                       R12 R8 K2 ["Part1Name"]
        9 GETTABLE                         R10 R11 R12
       10 GETTABLE                         R9 R1 R10
       11 JUMPIFNOT                        R9 ; [+29]
       12 GETTABLEKS                       R10 R9 K3 ["Motor6D"]
       14 JUMPIF                           R10 ; [+26]
       15 GETUPVAL                         R11 2
       16 GETTABLE                         R10 R11 R7
       17 MOVE                             R13 R10
       18 LOADB                            R14 1
       19 NAMECALL                         R11 R0 K4 ["FindFirstChild"]
       21 CALL                             R11 3 1
       22 JUMPIFNOT                        R11 ; [+18]
       23 LOADNIL                          R12
       24 SETTABLEKS                       R12 R11 K5 ["Part0"]
       26 GETTABLEKS                       R12 R11 K6 ["Part1"]
       28 JUMPIFNOT                        R12 ; [+12]
       29 LOADB                            R13 1
       30 SETTABLEKS                       R13 R12 K7 ["Anchored"]
       32 MOVE                             R13 R3
       33 MOVE                             R14 R12
       34 GETTABLEKS                       R15 R9 K8 ["Part"]
       36 GETUPVAL                         R17 1
       37 GETTABLEKS                       R18 R8 K2 ["Part1Name"]
       39 GETTABLE                         R16 R17 R18
       40 CALL                             R13 3 0
       41 FORGLOOP                         R4 2 ; [-36]
       43 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R9 1
        5 GETTABLEKS                       R10 R6 K0 ["Part1Name"]
        7 GETTABLE                         R8 R9 R10
        8 GETTABLE                         R7 R1 R8
        9 JUMPIFNOT                        R7 ; [+67]
       10 GETTABLEKS                       R8 R7 K1 ["Motor6D"]
       12 JUMPIFNOT                        R8 ; [+64]
       13 GETUPVAL                         R11 2
       14 GETTABLE                         R10 R11 R5
       15 LOADB                            R11 1
       16 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
       18 CALL                             R8 3 1
       19 JUMPIFNOT                        R8 ; [+57]
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R11 R8 K3 ["Name"]
       23 GETTABLE                         R9 R10 R11
       24 JUMPIFNOT                        R9 ; [+52]
       25 GETIMPORT                        R9 K6 [CFrame.new]
       27 GETTABLEKS                       R11 R8 K7 ["C0"]
       29 GETTABLEKS                       R11 R11 K8 ["Position"]
       31 GETUPVAL                         R13 4
       32 GETTABLE                         R12 R13 R5
       33 GETTABLEKS                       R12 R12 K7 ["C0"]
       35 GETTABLEKS                       R12 R12 K8 ["Position"]
       37 SUB                              R10 R11 R12
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R12 R7 K1 ["Motor6D"]
       41 GETTABLEKS                       R12 R12 K7 ["C0"]
       43 MUL                              R11 R9 R12
       44 GETUPVAL                         R13 3
       45 GETTABLEKS                       R14 R8 K3 ["Name"]
       47 GETTABLE                         R12 R13 R14
       48 MUL                              R10 R11 R12
       49 SETTABLEKS                       R10 R8 K7 ["C0"]
       51 GETIMPORT                        R10 K6 [CFrame.new]
       53 GETTABLEKS                       R12 R8 K9 ["C1"]
       55 GETTABLEKS                       R12 R12 K8 ["Position"]
       57 GETUPVAL                         R14 4
       58 GETTABLE                         R13 R14 R5
       59 GETTABLEKS                       R13 R13 K9 ["C1"]
       61 GETTABLEKS                       R13 R13 K8 ["Position"]
       63 SUB                              R11 R12 R13
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R13 R7 K1 ["Motor6D"]
       67 GETTABLEKS                       R13 R13 K9 ["C1"]
       69 MUL                              R12 R10 R13
       70 GETUPVAL                         R14 3
       71 GETTABLEKS                       R15 R8 K3 ["Name"]
       73 GETTABLE                         R13 R14 R15
       74 MUL                              R11 R12 R13
       75 SETTABLEKS                       R11 R8 K9 ["C1"]
       77 FORGLOOP                         R2 2 ; [-74]
       79 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RootJoint"]
        3 GETTABLEKS                       R2 R2 K1 ["C0"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["RootJoint"]
        8 GETTABLEKS                       R3 R3 K2 ["C1"]
       10 NAMECALL                         R3 R3 K3 ["Inverse"]
       12 CALL                             R3 1 1
       13 MUL                              R1 R2 R3
       14 GETTABLEKS                       R3 R0 K1 ["C0"]
       16 GETTABLEKS                       R4 R0 K2 ["C1"]
       18 NAMECALL                         R4 R4 K3 ["Inverse"]
       20 CALL                             R4 1 1
       21 MUL                              R2 R3 R4
       22 GETTABLEKS                       R4 R2 K4 ["Rotation"]
       24 NAMECALL                         R4 R4 K3 ["Inverse"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R2 K5 ["Position"]
       29 GETTABLEKS                       R7 R1 K5 ["Position"]
       31 SUB                              R5 R6 R7
       32 MUL                              R3 R4 R5
       33 RETURN                           R3 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.BodyPart.Head]
        3 GETTABLE                         R0 R1 R2
        4 GETUPVAL                         R2 1
        5 GETIMPORT                        R3 K3 [Enum.BodyPart.Head]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+50]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R4 1
       11 GETIMPORT                        R5 K3 [Enum.BodyPart.Head]
       13 GETTABLE                         R3 R4 R5
       14 GETTABLE                         R1 R2 R3
       15 JUMPIFNOT                        R1 ; [+43]
       16 GETUPVAL                         R2 3
       17 LOADK                            R4 K4 ["SpecialMesh"]
       18 NAMECALL                         R2 R2 K5 ["FindFirstChildOfClass"]
       20 CALL                             R2 2 1
       21 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       23 LOADK                            R3 K6 ["SpecialMesh must exist if characterMeshes[Enum.BodyPart.Head] has a value"]
       24 GETIMPORT                        R1 K8 [assert]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R4 1
       28 GETIMPORT                        R5 K3 [Enum.BodyPart.Head]
       30 GETTABLE                         R3 R4 R5
       31 GETUPVAL                         R5 4
       32 GETUPVAL                         R6 3
       33 LOADK                            R8 K4 ["SpecialMesh"]
       34 NAMECALL                         R6 R6 K5 ["FindFirstChildOfClass"]
       36 CALL                             R6 2 1
       37 GETTABLEKS                       R6 R6 K9 ["MeshId"]
       39 CALL                             R5 1 -1
       40 FASTCALL                         TOSTRING ; [+2]
       41 GETIMPORT                        R4 K11 [tostring]
       43 CALL                             R4 -1 1
       44 JUMPIFEQ                         R3 R4 ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 FASTCALL1                        ASSERT R2 ; [+2]
       49 GETIMPORT                        R1 K8 [assert]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 GETUPVAL                         R2 6
       54 MOVE                             R3 R0
       55 GETUPVAL                         R4 7
       56 GETUPVAL                         R5 3
       57 CALL                             R1 4 0
       58 JUMP                             ; [+7]
       59 GETUPVAL                         R1 8
       60 GETIMPORT                        R2 K3 [Enum.BodyPart.Head]
       62 GETUPVAL                         R3 6
       63 MOVE                             R4 R0
       64 GETUPVAL                         R5 7
       65 CALL                             R1 4 0
       66 GETUPVAL                         R1 9
       67 SUBK                             R1 R1 K12 [1]
       68 SETUPVAL                         R1 9
       69 GETUPVAL                         R1 9
       70 JUMPIFNOTEQKN                    R1 K13 [0] ; [+5]
       72 GETUPVAL                         R1 10
       73 NAMECALL                         R1 R1 K14 ["Fire"]
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIF                           R0 ; [+1]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R2 3
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETUPVAL                         R3 4
       10 GETTABLE                         R2 R3 R1
       11 JUMPIFNOT                        R2 ; [+11]
       12 GETUPVAL                         R2 5
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 6
       15 MOVE                             R5 R1
       16 MOVE                             R6 R0
       17 GETUPVAL                         R7 7
       18 GETUPVAL                         R9 8
       19 GETUPVAL                         R10 1
       20 GETTABLE                         R8 R9 R10
       21 CALL                             R2 6 0
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R2 9
       24 GETUPVAL                         R3 1
       25 GETUPVAL                         R4 6
       26 MOVE                             R5 R0
       27 GETUPVAL                         R6 7
       28 CALL                             R2 4 0
       29 GETUPVAL                         R2 10
       30 SUBK                             R2 R2 K0 [1]
       31 SETUPVAL                         R2 10
       32 GETUPVAL                         R2 10
       33 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
       35 GETUPVAL                         R2 11
       36 NAMECALL                         R2 R2 K2 ["Fire"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_39:
        0 NAMECALL                         R1 R0 K0 ["GetPivot"]
        2 CALL                             R1 1 1
        3 LOADK                            R4 K1 ["HumanoidRootPart"]
        4 NAMECALL                         R2 R0 K2 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+22]
        8 GETUPVAL                         R3 0
        9 LOADK                            R5 K1 ["HumanoidRootPart"]
       10 NAMECALL                         R3 R3 K2 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 NAMECALL                         R3 R3 K3 ["Clone"]
       15 CALL                             R3 1 1
       16 MOVE                             R2 R3
       17 SETTABLEKS                       R0 R2 K4 ["Parent"]
       19 GETTABLEKS                       R4 R0 K5 ["PrimaryPart"]
       21 JUMPIFNOT                        R4 ; [+5]
       22 GETTABLEKS                       R3 R0 K5 ["PrimaryPart"]
       24 GETTABLEKS                       R3 R3 K6 ["CFrame"]
       26 JUMP                             ; [+1]
       27 MOVE                             R3 R1
       28 SETTABLEKS                       R3 R2 K6 ["CFrame"]
       30 LOADB                            R3 0
       31 GETTABLEKS                       R4 R0 K5 ["PrimaryPart"]
       33 JUMPIFEQKNIL                     R4 ; [+7]
       35 GETTABLEKS                       R4 R0 K5 ["PrimaryPart"]
       37 JUMPIFNOTEQ                      R2 R4 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 GETTABLEKS                       R4 R0 K5 ["PrimaryPart"]
       43 JUMPIFEQ                         R2 R4 ; [+3]
       45 SETTABLEKS                       R2 R0 K5 ["PrimaryPart"]
       47 NEWTABLE                         R4 0 0
       49 NEWTABLE                         R5 0 0
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 NEWTABLE                         R8 0 0
       55 GETUPVAL                         R9 1
       56 MOVE                             R10 R0
       57 CALL                             R9 1 1
       58 GETUPVAL                         R10 2
       59 MOVE                             R11 R0
       60 CALL                             R10 1 1
       61 MOVE                             R11 R10
       62 LOADNIL                          R12
       63 LOADNIL                          R13
       64 FORGPREP                         R11
       65 GETTABLEKS                       R16 R15 K7 ["Part"]
       67 JUMPIFNOT                        R16 ; [+50]
       68 LOADB                            R17 1
       69 SETTABLE                         R17 R8 R14
       70 GETIMPORT                        R17 K11 [Enum.BodyPart.Head]
       72 JUMPIFNOTEQ                      R14 R17 ; [+25]
       74 LOADK                            R19 K12 ["Decal"]
       75 NAMECALL                         R17 R16 K13 ["FindFirstChildOfClass"]
       77 CALL                             R17 2 1
       78 JUMPIFNOT                        R17 ; [+18]
       79 DUPTABLE                         R18 K18 [{"Color3", "Texture", "Transparency", "ZIndex"}]
       80 GETTABLEKS                       R19 R17 K14 ["Color3"]
       82 SETTABLEKS                       R19 R18 K14 ["Color3"]
       84 GETTABLEKS                       R19 R17 K15 ["Texture"]
       86 SETTABLEKS                       R19 R18 K15 ["Texture"]
       88 GETTABLEKS                       R19 R17 K16 ["Transparency"]
       90 SETTABLEKS                       R19 R18 K16 ["Transparency"]
       92 GETTABLEKS                       R19 R17 K17 ["ZIndex"]
       94 SETTABLEKS                       R19 R18 K17 ["ZIndex"]
       96 MOVE                             R6 R18
       97 MOVE                             R7 R16
       98 GETTABLEKS                       R17 R16 K19 ["Color"]
      100 SETTABLE                         R17 R4 R14
      101 LOADK                            R19 K12 ["Decal"]
      102 NAMECALL                         R17 R16 K13 ["FindFirstChildOfClass"]
      104 CALL                             R17 2 1
      105 JUMPIFNOT                        R17 ; [+9]
      106 GETTABLEKS                       R19 R17 K15 ["Texture"]
      108 JUMPIFEQKS                       R19 K20 [""] ; [+4]
      110 GETTABLEKS                       R18 R17 K15 ["Texture"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R18
      114 SETTABLE                         R18 R5 R14
      115 LOADNIL                          R18
      116 SETTABLEKS                       R18 R16 K4 ["Parent"]
      118 FORGLOOP                         R11 2 ; [-54]
      120 GETIMPORT                        R11 K23 [Instance.new]
      122 LOADK                            R12 K24 ["BindableEvent"]
      123 CALL                             R11 1 1
      124 LOADN                            R12 0
      125 ADDK                             R12 R12 K25 [1]
      126 GETIMPORT                        R13 K28 [task.delay]
      128 LOADN                            R14 0
      129 NEWCLOSURE                       R15 P0
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R9
      132 CAPTURE                          UPVAL U3
      133 CAPTURE                          REF R7
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          VAL R0
      137 CAPTURE                          REF R6
      138 CAPTURE                          UPVAL U6
      139 CAPTURE                          REF R12
      140 CAPTURE                          VAL R11
      141 CALL                             R13 2 0
      142 GETIMPORT                        R13 K30 [pairs]
      144 GETUPVAL                         R14 7
      145 CALL                             R13 1 3
      146 FORGPREP_NEXT                    R13
      147 GETTABLE                         R18 R8 R16
      148 JUMPIFNOT                        R18 ; [+22]
      149 GETIMPORT                        R18 K11 [Enum.BodyPart.Head]
      151 JUMPIFEQ                         R18 R16 ; [+19]
      153 ADDK                             R12 R12 K25 [1]
      154 GETIMPORT                        R18 K28 [task.delay]
      156 LOADN                            R19 0
      157 NEWCLOSURE                       R20 P1
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R16
      160 CAPTURE                          UPVAL U8
      161 CAPTURE                          VAL R9
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          UPVAL U9
      164 CAPTURE                          VAL R0
      165 CAPTURE                          REF R6
      166 CAPTURE                          VAL R5
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          REF R12
      169 CAPTURE                          VAL R11
      170 CALL                             R18 2 0
      171 FORGLOOP                         R13 2 ; [-25]
      173 GETTABLEKS                       R13 R11 K31 ["Event"]
      175 NAMECALL                         R13 R13 K32 ["Wait"]
      177 CALL                             R13 1 0
      178 GETUPVAL                         R13 10
      179 GETTABLEKS                       R13 R13 K33 ["FixRootAttachment"]
      181 MOVE                             R14 R0
      182 CALL                             R13 1 0
      183 NAMECALL                         R13 R0 K34 ["GetChildren"]
      185 CALL                             R13 1 3
      186 FORGPREP                         R13
      187 LOADK                            R20 K35 ["CharacterMesh"]
      188 NAMECALL                         R18 R17 K36 ["IsA"]
      190 CALL                             R18 2 1
      191 JUMPIFNOT                        R18 ; [+3]
      192 NAMECALL                         R18 R17 K37 ["Destroy"]
      194 CALL                             R18 1 0
      195 FORGLOOP                         R13 2 ; [-9]
      197 LOADK                            R15 K38 ["Humanoid"]
      198 NAMECALL                         R13 R0 K13 ["FindFirstChildOfClass"]
      200 CALL                             R13 2 1
      201 GETIMPORT                        R14 K41 [Enum.HumanoidRigType.R15]
      203 SETTABLEKS                       R14 R13 K42 ["RigType"]
      205 GETUPVAL                         R14 11
      206 MOVE                             R15 R13
      207 CALL                             R14 1 0
      208 NAMECALL                         R14 R13 K43 ["BuildRigFromAttachments"]
      210 CALL                             R14 1 0
      211 GETUPVAL                         R14 12
      212 MOVE                             R15 R0
      213 MOVE                             R16 R10
      214 CALL                             R14 2 0
      215 LOADNIL                          R14
      216 GETIMPORT                        R16 K45 [Enum.BodyPart.Torso]
      218 GETTABLE                         R15 R10 R16
      219 LOADNIL                          R16
      220 JUMPIFNOT                        R15 ; [+73]
      221 GETTABLEKS                       R17 R15 K46 ["Motor6D"]
      223 JUMPIFNOT                        R17 ; [+70]
      224 GETUPVAL                         R17 13
      225 GETTABLEKS                       R18 R15 K46 ["Motor6D"]
      227 GETTABLEKS                       R18 R18 K47 ["C0"]
      229 GETUPVAL                         R19 14
      230 GETTABLEKS                       R19 R19 K48 ["RootJoint"]
      232 GETTABLEKS                       R19 R19 K47 ["C0"]
      234 CALL                             R17 2 1
      235 JUMPIFNOT                        R17 ; [+12]
      236 GETUPVAL                         R17 13
      237 GETTABLEKS                       R18 R15 K46 ["Motor6D"]
      239 GETTABLEKS                       R18 R18 K49 ["C1"]
      241 GETUPVAL                         R19 14
      242 GETTABLEKS                       R19 R19 K48 ["RootJoint"]
      244 GETTABLEKS                       R19 R19 K49 ["C1"]
      246 CALL                             R17 2 1
      247 JUMPIF                           R17 ; [+46]
      248 GETUPVAL                         R20 15
      249 GETTABLEKS                       R21 R15 K46 ["Motor6D"]
      251 GETTABLEKS                       R21 R21 K50 ["Name"]
      253 GETTABLE                         R19 R20 R21
      254 LOADB                            R20 1
      255 NAMECALL                         R17 R0 K2 ["FindFirstChild"]
      257 CALL                             R17 3 1
      258 MOVE                             R16 R17
      259 JUMPIFNOT                        R16 ; [+34]
      260 MOVE                             R17 R16
      261 GETUPVAL                         R19 14
      262 GETTABLEKS                       R19 R19 K48 ["RootJoint"]
      264 GETTABLEKS                       R19 R19 K47 ["C0"]
      266 GETUPVAL                         R20 14
      267 GETTABLEKS                       R20 R20 K48 ["RootJoint"]
      269 GETTABLEKS                       R20 R20 K49 ["C1"]
      271 NAMECALL                         R20 R20 K51 ["Inverse"]
      273 CALL                             R20 1 1
      274 MUL                              R18 R19 R20
      275 GETTABLEKS                       R20 R17 K47 ["C0"]
      277 GETTABLEKS                       R21 R17 K49 ["C1"]
      279 NAMECALL                         R21 R21 K51 ["Inverse"]
      281 CALL                             R21 1 1
      282 MUL                              R19 R20 R21
      283 GETTABLEKS                       R20 R19 K52 ["Rotation"]
      285 NAMECALL                         R20 R20 K51 ["Inverse"]
      287 CALL                             R20 1 1
      288 GETTABLEKS                       R22 R19 K53 ["Position"]
      290 GETTABLEKS                       R23 R18 K53 ["Position"]
      292 SUB                              R21 R22 R23
      293 MUL                              R14 R20 R21
      294 GETUPVAL                         R17 16
      295 MOVE                             R18 R0
      296 MOVE                             R19 R10
      297 CALL                             R17 2 0
      298 LOADB                            R17 0
      299 JUMPIFEQKNIL                     R14 ; [+8]
      301 LOADB                            R17 0
      302 JUMPIFEQKNIL                     R16 ; [+5]
      304 JUMPIFNOTEQKNIL                  R15 ; [+2]
      306 LOADB                            R17 0 +1
      307 LOADB                            R17 1
      308 JUMPIFNOT                        R17 ; [+28]
      309 GETTABLEKS                       R20 R2 K6 ["CFrame"]
      311 GETTABLEKS                       R21 R16 K47 ["C0"]
      313 MUL                              R19 R20 R21
      314 GETTABLEKS                       R20 R16 K49 ["C1"]
      316 NAMECALL                         R20 R20 K51 ["Inverse"]
      318 CALL                             R20 1 1
      319 MUL                              R18 R19 R20
      320 GETTABLEKS                       R20 R18 K52 ["Rotation"]
      322 MUL                              R19 R20 R14
      323 GETTABLEKS                       R21 R15 K7 ["Part"]
      325 GETTABLEKS                       R21 R21 K6 ["CFrame"]
      327 GETTABLEKS                       R21 R21 K53 ["Position"]
      329 ADD                              R20 R21 R19
      330 GETTABLEKS                       R22 R18 K53 ["Position"]
      332 SUB                              R21 R20 R22
      333 MOVE                             R24 R21
      334 NAMECALL                         R22 R0 K54 ["TranslateBy"]
      336 CALL                             R22 2 0
      337 JUMPIFNOT                        R3 ; [+8]
      338 GETTABLEKS                       R19 R2 K6 ["CFrame"]
      340 NAMECALL                         R19 R19 K51 ["Inverse"]
      342 CALL                             R19 1 1
      343 MUL                              R18 R19 R1
      344 SETTABLEKS                       R18 R2 K55 ["PivotOffset"]
      346 MOVE                             R18 R10
      347 LOADNIL                          R19
      348 LOADNIL                          R20
      349 FORGPREP                         R18
      350 GETTABLEKS                       R23 R22 K7 ["Part"]
      352 JUMPIFNOT                        R23 ; [+5]
      353 GETTABLEKS                       R23 R22 K7 ["Part"]
      355 NAMECALL                         R23 R23 K37 ["Destroy"]
      357 CALL                             R23 1 0
      358 FORGLOOP                         R18 2 ; [-9]
      360 CLOSEUPVALS                      R6
      361 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["InsertService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["CollectionService"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K6 [script]
       17 LOADK                            R5 K7 ["R15Migrator"]
       18 NAMECALL                         R3 R3 K8 ["FindFirstAncestor"]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R4 R3 K9 ["Src"]
       23 GETTABLEKS                       R4 R4 K10 ["Modules"]
       25 GETIMPORT                        R5 K12 [require]
       27 GETTABLEKS                       R6 R4 K13 ["CharacterMeshesMap"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K12 [require]
       32 GETTABLEKS                       R7 R4 K14 ["NpcIdManager"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K12 [require]
       37 GETTABLEKS                       R8 R3 K9 ["Src"]
       39 GETTABLEKS                       R8 R8 K15 ["Util"]
       41 GETTABLEKS                       R8 R8 K16 ["findAllInServices"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K12 [require]
       46 GETTABLEKS                       R9 R3 K9 ["Src"]
       48 GETTABLEKS                       R9 R9 K15 ["Util"]
       50 GETTABLEKS                       R9 R9 K17 ["areCFramesEqual"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K12 [require]
       55 GETTABLEKS                       R10 R3 K9 ["Src"]
       57 GETTABLEKS                       R10 R10 K15 ["Util"]
       59 GETTABLEKS                       R10 R10 K18 ["AnimationConversion"]
       61 GETTABLEKS                       R10 R10 K19 ["normalizeAssetId"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K12 [require]
       66 GETTABLEKS                       R11 R3 K9 ["Src"]
       68 GETTABLEKS                       R11 R11 K15 ["Util"]
       70 GETTABLEKS                       R11 R11 K20 ["ScriptAnalysis"]
       72 GETTABLEKS                       R11 R11 K21 ["Constants"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K12 [require]
       77 GETTABLEKS                       R12 R3 K9 ["Src"]
       79 GETTABLEKS                       R12 R12 K15 ["Util"]
       81 GETTABLEKS                       R12 R12 K22 ["SaveInterface"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K1 [game]
       86 LOADK                            R14 K23 ["ReplicatedStorage"]
       87 NAMECALL                         R12 R12 K3 ["GetService"]
       89 CALL                             R12 2 1
       90 GETIMPORT                        R13 K1 [game]
       92 LOADK                            R15 K24 ["StarterPlayer"]
       93 NAMECALL                         R13 R13 K3 ["GetService"]
       95 CALL                             R13 2 1
       96 LOADK                            R16 K25 ["StarterCharacterScripts"]
       97 NAMECALL                         R14 R13 K26 ["FindFirstChild"]
       99 CALL                             R14 2 1
      100 DUPTABLE                         R15 K31 [{["AdaptInstance"] = "rbxasset://avatar/unification/AdaptInstance.lua", ["SetupAdapterParts"] = "rbxasset://avatar/unification/SetupAdapterParts.lua"}]
      101 LOADK                            R18 K32 ["rbxasset://avatar/unification/AdapterReference.rbxm"]
      102 NAMECALL                         R16 R1 K33 ["LoadLocalAsset"]
      104 CALL                             R16 2 1
      105 LOADK                            R19 K34 ["rbxasset://avatar/unification/R15.rbxm"]
      106 NAMECALL                         R17 R1 K33 ["LoadLocalAsset"]
      108 CALL                             R17 2 1
      109 GETTABLEKS                       R18 R17 K35 ["UpperTorso"]
      111 GETTABLEKS                       R18 R18 K36 ["Color"]
      113 GETIMPORT                        R19 K39 [CFrame.Angles]
      115 LOADK                            R20 K40 [1.5707963267949]
      116 LOADK                            R21 K41 [-3.14159265358979]
      117 LOADN                            R22 0
      118 CALL                             R19 3 1
      119 GETIMPORT                        R20 K39 [CFrame.Angles]
      121 LOADN                            R21 0
      122 LOADK                            R22 K42 [-1.5707963267949]
      123 LOADN                            R23 0
      124 CALL                             R20 3 1
      125 GETIMPORT                        R21 K39 [CFrame.Angles]
      127 LOADN                            R22 0
      128 LOADK                            R23 K40 [1.5707963267949]
      129 LOADN                            R24 0
      130 CALL                             R21 3 1
      131 NEWTABLE                         R22 8 0
      133 DUPTABLE                         R23 K45 [{"C0", "C1"}]
      134 SETTABLEKS                       R19 R23 K43 ["C0"]
      136 SETTABLEKS                       R19 R23 K44 ["C1"]
      138 SETTABLEKS                       R23 R22 K46 ["RootJoint"]
      140 DUPTABLE                         R23 K45 [{"C0", "C1"}]
      141 GETIMPORT                        R25 K48 [CFrame.new]
      143 LOADN                            R26 0
      144 LOADN                            R27 1
      145 LOADN                            R28 0
      146 CALL                             R25 3 1
      147 MUL                              R24 R25 R19
      148 SETTABLEKS                       R24 R23 K43 ["C0"]
      150 GETIMPORT                        R25 K48 [CFrame.new]
      152 LOADN                            R26 0
      153 LOADK                            R27 K49 [-0.5]
      154 LOADN                            R28 0
      155 CALL                             R25 3 1
      156 MUL                              R24 R25 R19
      157 SETTABLEKS                       R24 R23 K44 ["C1"]
      159 SETTABLEKS                       R23 R22 K50 ["Neck"]
      161 DUPTABLE                         R23 K45 [{"C0", "C1"}]
      162 GETIMPORT                        R25 K48 [CFrame.new]
      164 LOADN                            R26 1
      165 LOADK                            R27 K51 [0.5]
      166 LOADN                            R28 0
      167 CALL                             R25 3 1
      168 MUL                              R24 R25 R21
      169 SETTABLEKS                       R24 R23 K43 ["C0"]
      171 GETIMPORT                        R25 K48 [CFrame.new]
      173 LOADK                            R26 K49 [-0.5]
      174 LOADK                            R27 K51 [0.5]
      175 LOADN                            R28 0
      176 CALL                             R25 3 1
      177 MUL                              R24 R25 R21
      178 SETTABLEKS                       R24 R23 K44 ["C1"]
      180 SETTABLEKS                       R23 R22 K52 ["Right Shoulder"]
      182 DUPTABLE                         R23 K45 [{"C0", "C1"}]
      183 GETIMPORT                        R25 K48 [CFrame.new]
      185 LOADN                            R26 1
      186 LOADN                            R27 -1
      187 LOADN                            R28 0
      188 CALL                             R25 3 1
      189 MUL                              R24 R25 R21
      190 SETTABLEKS                       R24 R23 K43 ["C0"]
      192 GETIMPORT                        R25 K48 [CFrame.new]
      194 LOADK                            R26 K51 [0.5]
      195 LOADN                            R27 1
      196 LOADN                            R28 0
      197 CALL                             R25 3 1
      198 MUL                              R24 R25 R21
      199 SETTABLEKS                       R24 R23 K44 ["C1"]
      201 SETTABLEKS                       R23 R22 K53 ["Right Hip"]
      203 DUPTABLE                         R23 K45 [{"C0", "C1"}]
      204 GETIMPORT                        R25 K48 [CFrame.new]
      206 LOADN                            R26 -1
      207 LOADK                            R27 K51 [0.5]
      208 LOADN                            R28 0
      209 CALL                             R25 3 1
      210 MUL                              R24 R25 R20
      211 SETTABLEKS                       R24 R23 K43 ["C0"]
      213 GETIMPORT                        R25 K48 [CFrame.new]
      215 LOADK                            R26 K51 [0.5]
      216 LOADK                            R27 K51 [0.5]
      217 LOADN                            R28 0
      218 CALL                             R25 3 1
      219 MUL                              R24 R25 R20
      220 SETTABLEKS                       R24 R23 K44 ["C1"]
      222 SETTABLEKS                       R23 R22 K54 ["Left Shoulder"]
      224 DUPTABLE                         R23 K45 [{"C0", "C1"}]
      225 GETIMPORT                        R25 K48 [CFrame.new]
      227 LOADN                            R26 -1
      228 LOADN                            R27 -1
      229 LOADN                            R28 0
      230 CALL                             R25 3 1
      231 MUL                              R24 R25 R20
      232 SETTABLEKS                       R24 R23 K43 ["C0"]
      234 GETIMPORT                        R25 K48 [CFrame.new]
      236 LOADK                            R26 K49 [-0.5]
      237 LOADN                            R27 1
      238 LOADN                            R28 0
      239 CALL                             R25 3 1
      240 MUL                              R24 R25 R20
      241 SETTABLEKS                       R24 R23 K44 ["C1"]
      243 SETTABLEKS                       R23 R22 K55 ["Left Hip"]
      245 DUPTABLE                         R23 K61 [{"Root", "Neck", "RightShoulder", "RightHip", "LeftShoulder", "LeftHip"}]
      246 NAMECALL                         R24 R19 K62 ["Inverse"]
      248 CALL                             R24 1 1
      249 SETTABLEKS                       R24 R23 K56 ["Root"]
      251 NAMECALL                         R24 R19 K62 ["Inverse"]
      253 CALL                             R24 1 1
      254 SETTABLEKS                       R24 R23 K50 ["Neck"]
      256 NAMECALL                         R24 R21 K62 ["Inverse"]
      258 CALL                             R24 1 1
      259 SETTABLEKS                       R24 R23 K57 ["RightShoulder"]
      261 NAMECALL                         R24 R21 K62 ["Inverse"]
      263 CALL                             R24 1 1
      264 SETTABLEKS                       R24 R23 K58 ["RightHip"]
      266 NAMECALL                         R24 R20 K62 ["Inverse"]
      268 CALL                             R24 1 1
      269 SETTABLEKS                       R24 R23 K59 ["LeftShoulder"]
      271 NAMECALL                         R24 R20 K62 ["Inverse"]
      273 CALL                             R24 1 1
      274 SETTABLEKS                       R24 R23 K60 ["LeftHip"]
      276 NEWTABLE                         R24 8 0
      278 LOADK                            R25 K60 ["LeftHip"]
      279 SETTABLEKS                       R25 R24 K55 ["Left Hip"]
      281 LOADK                            R25 K58 ["RightHip"]
      282 SETTABLEKS                       R25 R24 K53 ["Right Hip"]
      284 LOADK                            R25 K59 ["LeftShoulder"]
      285 SETTABLEKS                       R25 R24 K54 ["Left Shoulder"]
      287 LOADK                            R25 K57 ["RightShoulder"]
      288 SETTABLEKS                       R25 R24 K52 ["Right Shoulder"]
      290 LOADK                            R25 K50 ["Neck"]
      291 SETTABLEKS                       R25 R24 K50 ["Neck"]
      293 LOADK                            R25 K56 ["Root"]
      294 SETTABLEKS                       R25 R24 K46 ["RootJoint"]
      296 NEWTABLE                         R25 8 0
      298 DUPTABLE                         R26 K67 [{["Part0Name"] = "Torso", ["Part1Name"] = "Left Leg"}]
      299 SETTABLEKS                       R26 R25 K55 ["Left Hip"]
      301 DUPTABLE                         R26 K69 [{["Part0Name"] = "Torso", ["Part1Name"] = "Right Leg"}]
      302 SETTABLEKS                       R26 R25 K53 ["Right Hip"]
      304 DUPTABLE                         R26 K71 [{["Part0Name"] = "Torso", ["Part1Name"] = "Left Arm"}]
      305 SETTABLEKS                       R26 R25 K54 ["Left Shoulder"]
      307 DUPTABLE                         R26 K73 [{["Part0Name"] = "Torso", ["Part1Name"] = "Right Arm"}]
      308 SETTABLEKS                       R26 R25 K52 ["Right Shoulder"]
      310 DUPTABLE                         R26 K75 [{["Part0Name"] = "Torso", ["Part1Name"] = "Head"}]
      311 SETTABLEKS                       R26 R25 K50 ["Neck"]
      313 DUPTABLE                         R26 K77 [{["Part0Name"] = "HumanoidRootPart", ["Part1Name"] = "Torso"}]
      314 SETTABLEKS                       R26 R25 K46 ["RootJoint"]
      316 NEWTABLE                         R26 8 0
      318 GETIMPORT                        R27 K80 [Enum.BodyPart.Head]
      320 NEWTABLE                         R28 0 1
      322 LOADK                            R29 K74 ["Head"]
      323 SETLIST                          R28 R29 1 [1]
      325 SETTABLE                         R28 R26 R27
      326 GETIMPORT                        R27 K81 [Enum.BodyPart.Torso]
      328 NEWTABLE                         R28 0 2
      330 LOADK                            R29 K35 ["UpperTorso"]
      331 LOADK                            R30 K82 ["LowerTorso"]
      332 SETLIST                          R28 R29 2 [1]
      334 SETTABLE                         R28 R26 R27
      335 GETIMPORT                        R27 K84 [Enum.BodyPart.LeftArm]
      337 NEWTABLE                         R28 0 3
      339 LOADK                            R29 K85 ["LeftUpperArm"]
      340 LOADK                            R30 K86 ["LeftLowerArm"]
      341 LOADK                            R31 K87 ["LeftHand"]
      342 SETLIST                          R28 R29 3 [1]
      344 SETTABLE                         R28 R26 R27
      345 GETIMPORT                        R27 K89 [Enum.BodyPart.RightArm]
      347 NEWTABLE                         R28 0 3
      349 LOADK                            R29 K90 ["RightUpperArm"]
      350 LOADK                            R30 K91 ["RightLowerArm"]
      351 LOADK                            R31 K92 ["RightHand"]
      352 SETLIST                          R28 R29 3 [1]
      354 SETTABLE                         R28 R26 R27
      355 GETIMPORT                        R27 K94 [Enum.BodyPart.LeftLeg]
      357 NEWTABLE                         R28 0 3
      359 LOADK                            R29 K95 ["LeftUpperLeg"]
      360 LOADK                            R30 K96 ["LeftLowerLeg"]
      361 LOADK                            R31 K97 ["LeftFoot"]
      362 SETLIST                          R28 R29 3 [1]
      364 SETTABLE                         R28 R26 R27
      365 GETIMPORT                        R27 K99 [Enum.BodyPart.RightLeg]
      367 NEWTABLE                         R28 0 3
      369 LOADK                            R29 K100 ["RightUpperLeg"]
      370 LOADK                            R30 K101 ["RightLowerLeg"]
      371 LOADK                            R31 K102 ["RightFoot"]
      372 SETLIST                          R28 R29 3 [1]
      374 SETTABLE                         R28 R26 R27
      375 NEWTABLE                         R27 8 0
      377 GETIMPORT                        R28 K80 [Enum.BodyPart.Head]
      379 LOADK                            R29 K74 ["Head"]
      380 SETTABLE                         R29 R27 R28
      381 GETIMPORT                        R28 K81 [Enum.BodyPart.Torso]
      383 LOADK                            R29 K64 ["Torso"]
      384 SETTABLE                         R29 R27 R28
      385 GETIMPORT                        R28 K84 [Enum.BodyPart.LeftArm]
      387 LOADK                            R29 K70 ["Left Arm"]
      388 SETTABLE                         R29 R27 R28
      389 GETIMPORT                        R28 K89 [Enum.BodyPart.RightArm]
      391 LOADK                            R29 K72 ["Right Arm"]
      392 SETTABLE                         R29 R27 R28
      393 GETIMPORT                        R28 K94 [Enum.BodyPart.LeftLeg]
      395 LOADK                            R29 K66 ["Left Leg"]
      396 SETTABLE                         R29 R27 R28
      397 GETIMPORT                        R28 K99 [Enum.BodyPart.RightLeg]
      399 LOADK                            R29 K68 ["Right Leg"]
      400 SETTABLE                         R29 R27 R28
      401 NEWTABLE                         R28 0 0
      403 MOVE                             R29 R27
      404 LOADNIL                          R30
      405 LOADNIL                          R31
      406 FORGPREP                         R29
      407 SETTABLE                         R32 R28 R33
      408 FORGLOOP                         R29 2 ; [-2]
      410 NEWTABLE                         R29 0 0
      412 MOVE                             R30 R26
      413 LOADNIL                          R31
      414 LOADNIL                          R32
      415 FORGPREP                         R30
      416 MOVE                             R35 R34
      417 LOADNIL                          R36
      418 LOADNIL                          R37
      419 FORGPREP                         R35
      420 SETTABLE                         R33 R29 R39
      421 FORGLOOP                         R35 2 ; [-2]
      423 FORGLOOP                         R30 2 ; [-8]
      425 NEWTABLE                         R30 0 3
      427 LOADK                            R31 K103 ["R15ArtistIntent"]
      428 LOADK                            R32 K104 ["R15"]
      429 LOADK                            R33 K105 ["R15Fixed"]
      430 SETLIST                          R30 R31 3 [1]
      432 DUPCLOSURE                       R31 K106 [PROTO_0]
      433 CAPTURE                          VAL R28
      434 SETTABLEKS                       R31 R0 K107 ["GetBodyPartR6"]
      436 DUPCLOSURE                       R31 K108 [PROTO_1]
      437 CAPTURE                          VAL R26
      438 SETTABLEKS                       R31 R0 K109 ["GetR15PartsFromBodyPart"]
      440 DUPCLOSURE                       R31 K110 [PROTO_2]
      441 CAPTURE                          VAL R29
      442 CAPTURE                          VAL R27
      443 SETTABLEKS                       R31 R0 K111 ["GetLimbForR15Part"]
      445 DUPCLOSURE                       R31 K112 [PROTO_3]
      446 DUPCLOSURE                       R32 K113 [PROTO_5]
      447 CAPTURE                          VAL R7
      448 SETTABLEKS                       R32 R0 K114 ["GetR6Npcs"]
      450 DUPCLOSURE                       R32 K115 [PROTO_7]
      451 CAPTURE                          VAL R11
      452 CAPTURE                          VAL R7
      453 SETTABLEKS                       R32 R0 K116 ["GetR15ConvertedNpcs"]
      455 DUPCLOSURE                       R32 K117 [PROTO_8]
      456 CAPTURE                          VAL R26
      457 SETTABLEKS                       R32 R0 K118 ["IsR15Complete"]
      459 DUPCLOSURE                       R32 K119 [PROTO_10]
      460 CAPTURE                          VAL R7
      461 CAPTURE                          VAL R12
      462 CAPTURE                          VAL R14
      463 SETTABLEKS                       R32 R0 K120 ["ClearAdapterSetup"]
      465 DUPCLOSURE                       R32 K121 [PROTO_11]
      466 CAPTURE                          VAL R28
      467 CAPTURE                          VAL R9
      468 DUPCLOSURE                       R33 K122 [PROTO_12]
      469 DUPCLOSURE                       R34 K123 [PROTO_13]
      470 CAPTURE                          VAL R26
      471 CAPTURE                          VAL R17
      472 DUPCLOSURE                       R35 K124 [PROTO_15]
      473 CAPTURE                          VAL R5
      474 CAPTURE                          VAL R1
      475 CAPTURE                          VAL R34
      476 CAPTURE                          VAL R30
      477 CAPTURE                          VAL R26
      478 DUPCLOSURE                       R36 K125 [PROTO_16]
      479 CAPTURE                          VAL R1
      480 CAPTURE                          VAL R2
      481 DUPCLOSURE                       R37 K126 [PROTO_18]
      482 CAPTURE                          VAL R9
      483 CAPTURE                          VAL R5
      484 CAPTURE                          VAL R1
      485 CAPTURE                          VAL R36
      486 DUPCLOSURE                       R38 K127 [PROTO_19]
      487 CAPTURE                          VAL R1
      488 DUPCLOSURE                       R39 K128 [PROTO_20]
      489 SETTABLEKS                       R39 R0 K129 ["RemoveUnificationScripts"]
      491 DUPCLOSURE                       R39 K130 [PROTO_21]
      492 SETTABLEKS                       R39 R0 K131 ["HasUnificationScripts"]
      494 DUPCLOSURE                       R39 K132 [PROTO_22]
      495 CAPTURE                          VAL R12
      496 CAPTURE                          VAL R15
      497 CAPTURE                          VAL R1
      498 CAPTURE                          VAL R10
      499 CAPTURE                          VAL R16
      500 CAPTURE                          VAL R14
      501 SETTABLEKS                       R39 R0 K133 ["SetupUnificationScripts"]
      503 DUPCLOSURE                       R39 K134 [PROTO_23]
      504 DUPCLOSURE                       R40 K135 [PROTO_24]
      505 SETTABLEKS                       R40 R0 K136 ["FindInstanceUnderNewModel"]
      507 DUPCLOSURE                       R40 K137 [PROTO_25]
      508 CAPTURE                          VAL R6
      509 CAPTURE                          VAL R10
      510 CAPTURE                          VAL R0
      511 SETTABLEKS                       R40 R0 K138 ["ReplaceModel"]
      513 DUPCLOSURE                       R40 K139 [PROTO_26]
      514 SETTABLEKS                       R40 R0 K140 ["FixRootAttachment"]
      516 DUPCLOSURE                       R40 K141 [PROTO_27]
      517 CAPTURE                          VAL R0
      518 SETTABLEKS                       R40 R0 K142 ["GetNumCharactersHaveWarnings"]
      520 DUPCLOSURE                       R40 K143 [PROTO_28]
      521 CAPTURE                          VAL R0
      522 SETTABLEKS                       R40 R0 K144 ["GetNpcHasWarnings"]
      524 DUPCLOSURE                       R40 K145 [PROTO_29]
      525 CAPTURE                          VAL R0
      526 SETTABLEKS                       R40 R0 K146 ["GetNumCharactersHaveCustomMesh"]
      528 DUPCLOSURE                       R40 K147 [PROTO_30]
      529 CAPTURE                          VAL R32
      530 CAPTURE                          VAL R26
      531 CAPTURE                          VAL R5
      532 SETTABLEKS                       R40 R0 K148 ["GetNpcHasCustomMesh"]
      534 DUPCLOSURE                       R40 K149 [PROTO_31]
      535 CAPTURE                          VAL R28
      536 CAPTURE                          VAL R25
      537 DUPCLOSURE                       R41 K150 [PROTO_34]
      538 CAPTURE                          VAL R25
      539 CAPTURE                          VAL R28
      540 CAPTURE                          VAL R24
      541 DUPCLOSURE                       R42 K151 [PROTO_35]
      542 CAPTURE                          VAL R25
      543 CAPTURE                          VAL R28
      544 CAPTURE                          VAL R24
      545 CAPTURE                          VAL R23
      546 CAPTURE                          VAL R22
      547 DUPCLOSURE                       R43 K152 [PROTO_36]
      548 CAPTURE                          VAL R22
      549 DUPCLOSURE                       R44 K153 [PROTO_39]
      550 CAPTURE                          VAL R17
      551 CAPTURE                          VAL R32
      552 CAPTURE                          VAL R40
      553 CAPTURE                          VAL R5
      554 CAPTURE                          VAL R9
      555 CAPTURE                          VAL R37
      556 CAPTURE                          VAL R34
      557 CAPTURE                          VAL R26
      558 CAPTURE                          VAL R18
      559 CAPTURE                          VAL R35
      560 CAPTURE                          VAL R0
      561 CAPTURE                          VAL R39
      562 CAPTURE                          VAL R41
      563 CAPTURE                          VAL R8
      564 CAPTURE                          VAL R22
      565 CAPTURE                          VAL R24
      566 CAPTURE                          VAL R42
      567 SETTABLEKS                       R44 R0 K154 ["ConvertR6ToR15"]
      569 RETURN                           R0 1
