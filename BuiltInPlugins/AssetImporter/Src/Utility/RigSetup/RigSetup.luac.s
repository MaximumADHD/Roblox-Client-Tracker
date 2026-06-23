PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["BaseUrl"]
        9 LOADK                            R3 K3 ["asset/?id="]
       10 MOVE                             R4 R0
       11 CONCAT                           R1 R2 R4
       12 RETURN                           R1 1
       13 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+5]
        3 JUMPIFNOTEQKS                    R0 K1 ["rbxasset://textures/face.png"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 MOVE                             R10 R7
        6 NAMECALL                         R8 R0 K2 ["FindFirstChild"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+16]
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R11 R2
       12 GETIMPORT                        R10 K4 [tonumber]
       14 CALL                             R10 1 1
       15 JUMPIFNOT                        R10 ; [+7]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K5 ["BaseUrl"]
       19 LOADK                            R11 K6 ["asset/?id="]
       20 MOVE                             R12 R2
       21 CONCAT                           R9 R10 R12
       22 JUMP                             ; [+1]
       23 MOVE                             R9 R2
       24 SETTABLEKS                       R9 R8 K7 ["TextureID"]
       26 FORGLOOP                         R3 2 [inext] ; [-22]
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 NAMECALL                         R4 R0 K2 ["GetChildren"]
        4 CALL                             R4 1 -1
        5 CALL                             R3 -1 3
        6 FORGPREP_INEXT                   R3
        7 LOADK                            R10 K3 ["CharacterMesh"]
        8 NAMECALL                         R8 R7 K4 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+22]
       12 GETIMPORT                        R8 K6 [pcall]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R7
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CALL                             R8 1 2
       19 JUMPIF                           R8 ; [+14]
       20 GETIMPORT                        R10 K8 [warn]
       22 LOADK                            R12 K9 ["Expected CharacterMesh property, got "]
       23 MOVE                             R13 R1
       24 LOADK                            R14 K10 ["\n"]
       25 LOADK                            R15 K11 ["Error: "]
       26 MOVE                             R16 R9
       27 LOADK                            R17 K10 ["\n"]
       28 LOADK                            R18 K12 ["Traceback: "]
       29 GETIMPORT                        R19 K15 [debug.traceback]
       31 CALL                             R19 0 1
       32 CONCAT                           R11 R12 R19
       33 CALL                             R10 1 0
       34 FORGLOOP                         R3 2 [inext] ; [-28]
       36 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 NAMECALL                         R3 R1 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_INEXT                   R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETTABLEKS                       R7 R6 K5 ["BodyPart"]
       14 JUMPIFNOTEQ                      R7 R0 ; [+2]
       16 RETURN                           R6 1
       17 FORGLOOP                         R2 2 [inext] ; [-11]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 NAMECALL                         R3 R1 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_INEXT                   R2
        7 LOADK                            R9 K3 ["Part"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+5]
       12 GETTABLEKS                       R7 R6 K5 ["Name"]
       14 JUMPIFNOTEQ                      R7 R0 ; [+2]
       16 RETURN                           R6 1
       17 FORGLOOP                         R2 2 [inext] ; [-11]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["HumanoidRootPart"]
        2 GETTABLEKS                       R3 R3 K1 ["Position"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R4 R0 K2 ["FindFirstChild"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+14]
        9 NAMECALL                         R5 R4 K3 ["Clone"]
       11 CALL                             R5 1 1
       12 GETIMPORT                        R8 K6 [CFrame.new]
       14 CALL                             R8 0 1
       15 GETTABLEKS                       R9 R4 K1 ["Position"]
       17 ADD                              R7 R8 R9
       18 SUB                              R6 R7 R3
       19 SETTABLEKS                       R6 R5 K4 ["CFrame"]
       21 SETTABLEKS                       R2 R5 K7 ["Parent"]
       23 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_INEXT                   R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+15]
       12 LOADK                            R9 K5 ["%s+"]
       13 LOADK                            R10 K6 [""]
       14 NAMECALL                         R7 R1 K7 ["gsub"]
       16 CALL                             R7 3 1
       17 GETTABLEKS                       R8 R6 K8 ["BodyPart"]
       19 GETTABLEKS                       R8 R8 K9 ["Name"]
       21 JUMPIFNOTEQ                      R8 R7 ; [+5]
       23 NAMECALL                         R8 R6 K10 ["Clone"]
       25 CALL                             R8 1 -1
       26 RETURN                           R8 -1
       27 FORGLOOP                         R2 2 [inext] ; [-21]
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+5]
        7 JUMPIFEQKS                       R0 K3 [""] ; [+3]
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K1 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+5]
       18 JUMPIFEQKN                       R0 K5 [0] ; [+3]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R3 K0 ["AvatarPartScaleType"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["Value"]
        7 RETURN                           R2 1
        8 LOADK                            R2 K3 ["Classic"]
        9 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 LOADK                            R5 K1 ["AvatarPartScaleType"]
        3 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R1 R3 K3 ["Value"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K4 ["Classic"]
       11 JUMPIFNOTEQKS                    R1 K5 ["ProportionsNormal"] ; [+8]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K6 ["AnthroNormalFixedRigAttachmentMap"]
       16 GETTABLEKS                       R4 R0 K7 ["Name"]
       18 GETTABLE                         R2 R3 R4
       19 RETURN                           R2 1
       20 JUMPIFNOTEQKS                    R1 K8 ["ProportionsSlender"] ; [+8]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K9 ["AnthroSlenderFixedRigAttachmentMap"]
       25 GETTABLEKS                       R4 R0 K7 ["Name"]
       27 GETTABLE                         R2 R3 R4
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K10 ["R15FixedRigAttachmentMap"]
       32 GETTABLEKS                       R4 R0 K7 ["Name"]
       34 GETTABLE                         R2 R3 R4
       35 RETURN                           R2 1

PROTO_12:
        0 LOADK                            R4 K0 ["Attachment"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+71]
        5 GETTABLEKS                       R2 R1 K2 ["Name"]
        7 JUMPIFNOTEQKS                    R2 K3 ["JointRotation"] ; [+5]
        9 NAMECALL                         R2 R1 K4 ["Destroy"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R1 K5 ["Parent"]
       15 LOADK                            R7 K6 ["AvatarPartScaleType"]
       16 NAMECALL                         R5 R4 K7 ["FindFirstChild"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R3 R5 K8 ["Value"]
       22 JUMP                             ; [+1]
       23 LOADK                            R3 K9 ["Classic"]
       24 JUMPIFNOTEQKS                    R3 K10 ["ProportionsNormal"] ; [+8]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K11 ["AnthroNormalFixedRigAttachmentMap"]
       29 GETTABLEKS                       R5 R1 K2 ["Name"]
       31 GETTABLE                         R2 R4 R5
       32 JUMP                             ; [+15]
       33 JUMPIFNOTEQKS                    R3 K12 ["ProportionsSlender"] ; [+8]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K13 ["AnthroSlenderFixedRigAttachmentMap"]
       38 GETTABLEKS                       R5 R1 K2 ["Name"]
       40 GETTABLE                         R2 R4 R5
       41 JUMP                             ; [+6]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K14 ["R15FixedRigAttachmentMap"]
       45 GETTABLEKS                       R5 R1 K2 ["Name"]
       47 GETTABLE                         R2 R4 R5
       48 JUMPIFNOT                        R2 ; [+27]
       49 GETTABLEKS                       R3 R1 K5 ["Parent"]
       51 LOADK                            R6 K15 ["OriginalPosition"]
       52 NAMECALL                         R4 R1 K7 ["FindFirstChild"]
       54 CALL                             R4 2 1
       55 JUMPIFNOT                        R4 ; [+3]
       56 NAMECALL                         R5 R4 K4 ["Destroy"]
       58 CALL                             R5 1 0
       59 GETTABLEKS                       R6 R3 K16 ["CFrame"]
       61 GETTABLEKS                       R7 R0 K17 ["WorldPosition"]
       63 SUB                              R5 R6 R7
       64 NAMECALL                         R7 R5 K18 ["inverse"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K20 [CFrame.new]
       69 MOVE                             R9 R2
       70 CALL                             R8 1 1
       71 MUL                              R6 R7 R8
       72 GETTABLEKS                       R7 R6 K21 ["Position"]
       74 SETTABLEKS                       R7 R1 K21 ["Position"]
       76 GETTABLEKS                       R2 R1 K2 ["Name"]
       78 JUMPIFEQKS                       R2 K22 ["HumanoidRootPart"] ; [+14]
       80 GETIMPORT                        R2 K24 [ipairs]
       82 NAMECALL                         R3 R1 K25 ["GetChildren"]
       84 CALL                             R3 1 -1
       85 CALL                             R2 -1 3
       86 FORGPREP_INEXT                   R2
       87 GETUPVAL                         R7 1
       88 MOVE                             R8 R0
       89 MOVE                             R9 R6
       90 CALL                             R7 2 0
       91 FORGLOOP                         R2 2 [inext] ; [-5]
       93 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R1 R0 K2 ["Destroy"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K4 [ipairs]
       10 NAMECALL                         R2 R0 K5 ["GetChildren"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 3
       14 FORGPREP_INEXT                   R1
       15 GETUPVAL                         R6 0
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 [inext] ; [-4]
       20 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R4 K2 ["RootRigAttachment"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R2 K3 ["WorldPosition"]
       14 GETIMPORT                        R4 K5 [pairs]
       16 GETUPVAL                         R5 0
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 MOVE                             R11 R8
       20 NAMECALL                         R9 R0 K1 ["FindFirstChild"]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+61]
       24 MOVE                             R12 R7
       25 NAMECALL                         R10 R9 K1 ["FindFirstChild"]
       27 CALL                             R10 2 1
       28 JUMPIF                           R10 ; [+56]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R11 R11 K6 ["R15FixedRigAttachmentMap"]
       32 GETTABLE                         R10 R11 R7
       33 JUMPIFNOT                        R10 ; [+51]
       34 GETIMPORT                        R11 K8 [ipairs]
       36 NAMECALL                         R12 R0 K9 ["GetDescendants"]
       38 CALL                             R12 1 -1
       39 CALL                             R11 -1 3
       40 FORGPREP_INEXT                   R11
       41 LOADK                            R18 K10 ["Attachment"]
       42 NAMECALL                         R16 R15 K11 ["IsA"]
       44 CALL                             R16 2 1
       45 JUMPIFNOT                        R16 ; [+14]
       46 GETTABLEKS                       R16 R15 K12 ["Name"]
       48 JUMPIFNOTEQ                      R16 R7 ; [+11]
       50 GETUPVAL                         R17 2
       51 GETTABLEKS                       R18 R15 K13 ["Parent"]
       53 GETTABLEKS                       R18 R18 K12 ["Name"]
       55 GETTABLE                         R16 R17 R18
       56 JUMPIF                           R16 ; [+3]
       57 NAMECALL                         R16 R15 K14 ["Destroy"]
       59 CALL                             R16 1 0
       60 FORGLOOP                         R11 2 [inext] ; [-20]
       62 GETTABLEKS                       R12 R9 K15 ["CFrame"]
       64 SUB                              R11 R12 R3
       65 NAMECALL                         R13 R11 K16 ["inverse"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K18 [CFrame.new]
       70 MOVE                             R15 R10
       71 CALL                             R14 1 1
       72 MUL                              R12 R13 R14
       73 GETTABLEKS                       R12 R12 K19 ["Position"]
       75 GETIMPORT                        R13 K21 [Instance.new]
       77 LOADK                            R14 K10 ["Attachment"]
       78 CALL                             R13 1 1
       79 SETTABLEKS                       R7 R13 K12 ["Name"]
       81 SETTABLEKS                       R12 R13 K19 ["Position"]
       83 SETTABLEKS                       R9 R13 K13 ["Parent"]
       85 FORGLOOP                         R4 2 ; [-67]
       87 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Create"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K1 ["HumanoidRootPart"]
        6 GETTABLEKS                       R3 R3 K2 ["CFrame"]
        8 GETTABLEKS                       R4 R2 K1 ["HumanoidRootPart"]
       10 GETTABLEKS                       R7 R3 K4 ["rightVector"]
       12 MULK                             R6 R7 K3 [5]
       13 ADD                              R5 R3 R6
       14 SETTABLEKS                       R5 R4 K2 ["CFrame"]
       16 SETTABLEKS                       R1 R2 K5 ["Parent"]
       18 RETURN                           R0 0

PROTO_16:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 LOADK                            R3 K1 ["R15Fixed"]
        4 SETTABLEKS                       R3 R2 K2 ["Name"]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R2 K3 ["HumanoidRootPart"]
       12 GETTABLEKS                       R4 R4 K4 ["RootRigAttachment"]
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 LOADK                            R5 K5 ["Humanoid"]
       20 NAMECALL                         R3 R2 K6 ["FindFirstChildOfClass"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETIMPORT                        R4 K10 [Enum.NameOcclusion.NoOcclusion]
       26 SETTABLEKS                       R4 R3 K8 ["NameOcclusion"]
       28 NAMECALL                         R4 R3 K11 ["BuildRigFromAttachments"]
       30 CALL                             R4 1 0
       31 GETTABLEKS                       R4 R0 K3 ["HumanoidRootPart"]
       33 GETTABLEKS                       R4 R4 K12 ["CFrame"]
       35 GETTABLEKS                       R5 R2 K3 ["HumanoidRootPart"]
       37 GETTABLEKS                       R8 R4 K14 ["rightVector"]
       39 MULK                             R7 R8 K13 [-5]
       40 ADD                              R6 R4 R7
       41 SETTABLEKS                       R6 R5 K12 ["CFrame"]
       43 SETTABLEKS                       R1 R2 K15 ["Parent"]
       45 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["Humanoid"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildOfClass"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K4 ["RigType"]
       16 GETIMPORT                        R3 K8 [Enum.HumanoidRigType.R15]
       18 JUMPIFEQ                         R2 R3 ; [+3]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 LOADK                            R5 K9 ["HumanoidRootPart"]
       23 NAMECALL                         R3 R0 K10 ["FindFirstChild"]
       25 CALL                             R3 2 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_18:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETIMPORT                        R2 K3 [workspace]
        4 NAMECALL                         R2 R2 K4 ["GetChildren"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R5 K5 ["Name"]
       11 JUMPIFNOTEQKS                    R6 K6 ["ImportedFbx"] ; [+4]
       13 NAMECALL                         R6 R5 K7 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 [inext] ; [-8]
       18 GETIMPORT                        R1 K10 [Instance.new]
       20 LOADK                            R2 K11 ["Model"]
       21 CALL                             R1 1 1
       22 LOADK                            R2 K6 ["ImportedFbx"]
       23 SETTABLEKS                       R2 R1 K5 ["Name"]
       25 LOADK                            R2 K12 ["R15ArtistIntent"]
       26 SETTABLEKS                       R2 R0 K5 ["Name"]
       28 SETTABLEKS                       R1 R0 K13 ["Parent"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K14 ["Create"]
       33 CALL                             R2 0 1
       34 GETTABLEKS                       R3 R0 K15 ["HumanoidRootPart"]
       36 GETTABLEKS                       R3 R3 K16 ["CFrame"]
       38 GETTABLEKS                       R4 R2 K15 ["HumanoidRootPart"]
       40 GETTABLEKS                       R7 R3 K18 ["rightVector"]
       42 MULK                             R6 R7 K17 [5]
       43 ADD                              R5 R3 R6
       44 SETTABLEKS                       R5 R4 K16 ["CFrame"]
       46 SETTABLEKS                       R1 R2 K13 ["Parent"]
       48 GETUPVAL                         R2 1
       49 MOVE                             R3 R0
       50 MOVE                             R4 R1
       51 CALL                             R2 2 0
       52 GETIMPORT                        R2 K3 [workspace]
       54 SETTABLEKS                       R2 R1 K13 ["Parent"]
       56 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 LENGTH                           R7 R0
        8 ADDK                             R6 R7 K2 [1]
        9 SETTABLE                         R4 R0 R6
       10 FORGLOOP                         R1 2 ; [-4]
       12 RETURN                           R0 1

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETIMPORT                        R2 K4 [Enum.BodyPart]
        6 NAMECALL                         R2 R2 K5 ["GetEnumItems"]
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 3
       10 FORGPREP_INEXT                   R1
       11 LENGTH                           R7 R0
       12 ADDK                             R6 R7 K6 [1]
       13 GETTABLEKS                       R7 R5 K7 ["Name"]
       15 SETTABLE                         R7 R0 R6
       16 FORGLOOP                         R1 2 [inext] ; [-6]
       18 RETURN                           R0 1

PROTO_21:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [ipairs]
       10 GETUPVAL                         R2 0
       11 CALL                             R1 1 3
       12 FORGPREP_INEXT                   R1
       13 GETIMPORT                        R6 K6 [string.find]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R5
       17 LOADN                            R9 1
       18 LOADB                            R10 1
       19 CALL                             R6 4 1
       20 JUMPIFEQKNIL                     R6 ; [+12]
       22 NAMECALL                         R9 R5 K8 ["len"]
       24 CALL                             R9 1 1
       25 ADDK                             R8 R9 K7 [1]
       26 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K10 [string.sub]
       31 CALL                             R6 2 1
       32 RETURN                           R6 1
       33 FORGLOOP                         R1 2 [inext] ; [-21]
       35 RETURN                           R0 1

PROTO_22:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R3 R5 R1
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+11]
       11 GETTABLEKS                       R8 R7 K3 ["TextureID"]
       13 JUMPIFEQKS                       R8 K4 [""] ; [+8]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K5 ["RemoveAssetUrlFromText"]
       18 GETTABLEKS                       R9 R7 K3 ["TextureID"]
       20 CALL                             R8 1 -1
       21 RETURN                           R8 -1
       22 FORGLOOP                         R2 2 [inext] ; [-17]
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_23:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_INEXT                   R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+36]
       12 GETTABLEKS                       R7 R6 K5 ["BodyPart"]
       14 GETTABLEKS                       R7 R7 K6 ["Name"]
       16 JUMPIFNOTEQ                      R7 R1 ; [+31]
       18 GETTABLEKS                       R8 R6 K7 ["MeshId"]
       20 FASTCALL1                        TYPEOF R8 ; [+3]
       21 MOVE                             R10 R8
       22 GETIMPORT                        R9 K9 [typeof]
       24 CALL                             R9 1 1
       25 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+5]
       27 JUMPIFEQKS                       R8 K11 [""] ; [+3]
       29 LOADB                            R7 1
       30 JUMP                             ; [+12]
       31 FASTCALL1                        TYPEOF R8 ; [+3]
       32 MOVE                             R10 R8
       33 GETIMPORT                        R9 K9 [typeof]
       35 CALL                             R9 1 1
       36 JUMPIFNOTEQKS                    R9 K12 ["number"] ; [+5]
       38 JUMPIFEQKN                       R8 K13 [0] ; [+3]
       40 LOADB                            R7 1
       41 JUMP                             ; [+1]
       42 LOADB                            R7 0
       43 JUMPIFNOT                        R7 ; [+51]
       44 GETTABLEKS                       R7 R6 K7 ["MeshId"]
       46 RETURN                           R7 1
       47 JUMP                             ; [+47]
       48 LOADK                            R9 K14 ["Part"]
       49 NAMECALL                         R7 R6 K4 ["IsA"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+42]
       53 GETTABLEKS                       R7 R6 K6 ["Name"]
       55 JUMPIFNOTEQ                      R7 R1 ; [+39]
       57 LOADK                            R9 K15 ["SpecialMesh"]
       58 NAMECALL                         R7 R6 K16 ["FindFirstChildWhichIsA"]
       60 CALL                             R7 2 1
       61 JUMPIFNOT                        R7 ; [+33]
       62 GETTABLEKS                       R9 R7 K7 ["MeshId"]
       64 FASTCALL1                        TYPEOF R9 ; [+3]
       65 MOVE                             R11 R9
       66 GETIMPORT                        R10 K9 [typeof]
       68 CALL                             R10 1 1
       69 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+5]
       71 JUMPIFEQKS                       R9 K11 [""] ; [+3]
       73 LOADB                            R8 1
       74 JUMP                             ; [+12]
       75 FASTCALL1                        TYPEOF R9 ; [+3]
       76 MOVE                             R11 R9
       77 GETIMPORT                        R10 K9 [typeof]
       79 CALL                             R10 1 1
       80 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+5]
       82 JUMPIFEQKN                       R9 K13 [0] ; [+3]
       84 LOADB                            R8 1
       85 JUMP                             ; [+1]
       86 LOADB                            R8 0
       87 JUMPIFNOT                        R8 ; [+7]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K17 ["RemoveAssetUrlFromText"]
       91 GETTABLEKS                       R9 R7 K7 ["MeshId"]
       93 CALL                             R8 1 -1
       94 RETURN                           R8 -1
       95 FORGLOOP                         R2 2 [inext] ; [-89]
       97 LOADNIL                          R2
       98 RETURN                           R2 1

PROTO_24:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_INEXT                   R2
        7 LOADK                            R9 K3 ["CharacterMesh"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+26]
       12 GETTABLE                         R7 R6 R1
       13 FASTCALL1                        TYPEOF R7 ; [+3]
       14 MOVE                             R10 R7
       15 GETIMPORT                        R9 K6 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFNOTEQKS                    R9 K7 ["string"] ; [+5]
       20 JUMPIFEQKS                       R7 K8 [""] ; [+3]
       22 LOADB                            R8 1
       23 JUMP                             ; [+12]
       24 FASTCALL1                        TYPEOF R7 ; [+3]
       25 MOVE                             R10 R7
       26 GETIMPORT                        R9 K6 [typeof]
       28 CALL                             R9 1 1
       29 JUMPIFNOTEQKS                    R9 K9 ["number"] ; [+5]
       31 JUMPIFEQKN                       R7 K10 [0] ; [+3]
       33 LOADB                            R8 1
       34 JUMP                             ; [+1]
       35 LOADB                            R8 0
       36 JUMPIFNOT                        R8 ; [+1]
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 [inext] ; [-32]
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_25:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADK                            R4 K0 ["Head"]
        2 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+18]
        6 LOADK                            R5 K2 ["face"]
        7 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+13]
       11 GETTABLEKS                       R5 R3 K3 ["Texture"]
       13 LOADB                            R4 0
       14 JUMPIFEQKS                       R5 K4 [""] ; [+5]
       16 JUMPIFNOTEQKS                    R5 K5 ["rbxasset://textures/face.png"] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R4 R3 K3 ["Texture"]
       23 RETURN                           R4 1
       24 JUMPIFNOT                        R0 ; [+35]
       25 LOADK                            R4 K0 ["Head"]
       26 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+30]
       30 LOADK                            R5 K6 ["MeshPart"]
       31 NAMECALL                         R3 R2 K7 ["IsA"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETTABLEKS                       R3 R2 K8 ["TextureID"]
       37 JUMPIFEQKS                       R3 K4 [""] ; [+4]
       39 GETTABLEKS                       R3 R2 K8 ["TextureID"]
       41 RETURN                           R3 1
       42 LOADK                            R5 K2 ["face"]
       43 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+13]
       47 GETTABLEKS                       R5 R3 K3 ["Texture"]
       49 LOADB                            R4 0
       50 JUMPIFEQKS                       R5 K4 [""] ; [+5]
       52 JUMPIFNOTEQKS                    R5 K5 ["rbxasset://textures/face.png"] ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 JUMPIFNOT                        R4 ; [+3]
       57 GETTABLEKS                       R4 R3 K3 ["Texture"]
       59 RETURN                           R4 1
       60 LOADNIL                          R2
       61 RETURN                           R2 1

PROTO_26:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R5
        7 JUMPIFNOT                        R7 ; [+7]
        8 GETUPVAL                         R7 1
        9 MOVE                             R8 R1
       10 GETUPVAL                         R10 0
       11 GETTABLE                         R9 R10 R5
       12 MOVE                             R10 R6
       13 CALL                             R7 3 0
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R7 2
       16 MOVE                             R8 R1
       17 MOVE                             R9 R5
       18 MOVE                             R10 R6
       19 CALL                             R7 3 0
       20 FORGLOOP                         R2 2 ; [-16]
       22 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 GETIMPORT                        R3 K4 [Enum.BodyPart]
        4 NAMECALL                         R3 R3 K5 ["GetEnumItems"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_INEXT                   R2
        9 GETTABLEKS                       R9 R6 K6 ["Name"]
       11 GETTABLE                         R8 R0 R9
       12 FASTCALL1                        TONUMBER R8 ; [+2]
       13 GETIMPORT                        R7 K8 [tonumber]
       15 CALL                             R7 1 1
       16 JUMPIFNOT                        R7 ; [+20]
       17 GETIMPORT                        R8 K10 [Enum.BodyPart.Head]
       19 JUMPIFEQ                         R6 R8 ; [+17]
       21 GETUPVAL                         R8 0
       22 MOVE                             R9 R6
       23 MOVE                             R10 R1
       24 CALL                             R8 2 1
       25 JUMPIF                           R8 ; [+9]
       26 GETIMPORT                        R9 K13 [Instance.new]
       28 LOADK                            R10 K14 ["CharacterMesh"]
       29 CALL                             R9 1 1
       30 MOVE                             R8 R9
       31 SETTABLEKS                       R6 R8 K3 ["BodyPart"]
       33 SETTABLEKS                       R1 R8 K15 ["Parent"]
       35 SETTABLEKS                       R7 R8 K16 ["MeshId"]
       37 FORGLOOP                         R2 2 [inext] ; [-29]
       39 GETIMPORT                        R2 K10 [Enum.BodyPart.Head]
       41 GETTABLEKS                       R2 R2 K6 ["Name"]
       43 GETUPVAL                         R3 1
       44 MOVE                             R4 R2
       45 MOVE                             R5 R1
       46 CALL                             R3 2 1
       47 GETTABLE                         R5 R0 R2
       48 FASTCALL1                        TONUMBER R5 ; [+2]
       49 GETIMPORT                        R4 K8 [tonumber]
       51 CALL                             R4 1 1
       52 JUMPIFNOT                        R4 ; [+22]
       53 JUMPIFNOT                        R3 ; [+21]
       54 LOADK                            R7 K17 ["SpecialMesh"]
       55 NAMECALL                         R5 R3 K18 ["FindFirstChildWhichIsA"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+16]
       59 FASTCALL1                        TONUMBER R4 ; [+3]
       60 MOVE                             R8 R4
       61 GETIMPORT                        R7 K8 [tonumber]
       63 CALL                             R7 1 1
       64 JUMPIFNOT                        R7 ; [+7]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K19 ["BaseUrl"]
       68 LOADK                            R8 K20 ["asset/?id="]
       69 MOVE                             R9 R4
       70 CONCAT                           R6 R7 R9
       71 JUMP                             ; [+1]
       72 MOVE                             R6 R4
       73 SETTABLEKS                       R6 R5 K16 ["MeshId"]
       75 RETURN                           R0 0

PROTO_28:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R4 K0 ["Head"]
        3 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+41]
        7 LOADK                            R5 K2 ["MeshPart"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R3 R2 K4 ["TextureID"]
       14 JUMPIFEQKS                       R3 K5 [""] ; [+2]
       16 RETURN                           R0 0
       17 LOADK                            R5 K6 ["face"]
       18 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+10]
       22 GETIMPORT                        R4 K9 [Instance.new]
       24 LOADK                            R5 K10 ["Decal"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 LOADK                            R4 K6 ["face"]
       28 SETTABLEKS                       R4 R3 K11 ["Name"]
       30 SETTABLEKS                       R2 R3 K12 ["Parent"]
       32 FASTCALL1                        TONUMBER R0 ; [+3]
       33 MOVE                             R6 R0
       34 GETIMPORT                        R5 K14 [tonumber]
       36 CALL                             R5 1 1
       37 JUMPIFNOT                        R5 ; [+7]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K15 ["BaseUrl"]
       41 LOADK                            R6 K16 ["asset/?id="]
       42 MOVE                             R7 R0
       43 CONCAT                           R4 R5 R7
       44 JUMP                             ; [+1]
       45 MOVE                             R4 R0
       46 SETTABLEKS                       R4 R3 K17 ["Texture"]
       48 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Changed"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["Connect"]
        6 CALL                             R3 2 -1
        7 FASTCALL                         TABLE_INSERT ; [+2]
        8 GETIMPORT                        R1 K4 [table.insert]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Changed"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["Connect"]
        6 CALL                             R3 2 -1
        7 FASTCALL                         TABLE_INSERT ; [+2]
        8 GETIMPORT                        R1 K4 [table.insert]
       10 CALL                             R1 -1 0
       11 GETIMPORT                        R1 K6 [ipairs]
       13 NAMECALL                         R2 R0 K7 ["GetChildren"]
       15 CALL                             R2 1 -1
       16 CALL                             R1 -1 3
       17 FORGPREP_INEXT                   R1
       18 GETUPVAL                         R6 2
       19 MOVE                             R7 R5
       20 CALL                             R6 1 0
       21 FORGLOOP                         R1 2 [inext] ; [-4]
       23 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Changed"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["Connect"]
        6 CALL                             R3 2 -1
        7 FASTCALL                         TABLE_INSERT ; [+2]
        8 GETIMPORT                        R1 K4 [table.insert]
       10 CALL                             R1 -1 0
       11 LOADB                            R1 1
       12 SETUPVAL                         R1 2
       13 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+14]
        5 GETIMPORT                        R0 K2 [ipairs]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 3
        9 FORGPREP_INEXT                   R0
       10 NAMECALL                         R5 R4 K3 ["Disconnect"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 [inext] ; [-4]
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["R15Fixed"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 NAMECALL                         R1 R0 K2 ["Destroy"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 0
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K3 ["MakeExportVersion"]
       16 GETUPVAL                         R2 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFEQKNIL                     R0 ; [+34]
        5 GETIMPORT                        R0 K3 [task.wait]
        7 LOADN                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+26]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["Parent"]
       14 JUMPIFEQKNIL                     R0 ; [+22]
       16 LOADB                            R0 0
       17 SETUPVAL                         R0 1
       18 GETIMPORT                        R0 K5 [pcall]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R0 1 2
       26 JUMPIF                           R0 ; [+10]
       27 GETIMPORT                        R2 K7 [warn]
       29 LOADK                            R4 K8 ["RigSetup.WatchForChanges: rebuild failed — "]
       30 FASTCALL1                        TOSTRING R1 ; [+3]
       31 MOVE                             R6 R1
       32 GETIMPORT                        R5 K10 [tostring]
       34 CALL                             R5 1 1
       35 CONCAT                           R3 R4 R5
       36 CALL                             R2 1 0
       37 JUMPBACK                         ; [-38]
       38 RETURN                           R0 0

PROTO_36:
        0 LOADK                            R3 K0 ["R15ArtistIntent"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R2 0
        7 NEWTABLE                         R3 0 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          REF R2
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          REF R3
       13 CAPTURE                          VAL R4
       14 NEWCLOSURE                       R6 P2
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R6
       18 MOVE                             R8 R3
       19 GETTABLEKS                       R9 R1 K2 ["Changed"]
       21 MOVE                             R11 R4
       22 NAMECALL                         R9 R9 K3 ["Connect"]
       24 CALL                             R9 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R7 K6 [table.insert]
       28 CALL                             R7 -1 0
       29 GETIMPORT                        R7 K8 [ipairs]
       31 NAMECALL                         R8 R1 K9 ["GetChildren"]
       33 CALL                             R8 1 -1
       34 CALL                             R7 -1 3
       35 FORGPREP_INEXT                   R7
       36 MOVE                             R12 R6
       37 MOVE                             R13 R11
       38 CALL                             R12 1 0
       39 FORGLOOP                         R7 2 [inext] ; [-4]
       41 MOVE                             R8 R3
       42 GETTABLEKS                       R9 R1 K10 ["DescendantAdded"]
       44 NEWCLOSURE                       R11 P3
       45 CAPTURE                          REF R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          REF R2
       48 NAMECALL                         R9 R9 K3 ["Connect"]
       50 CALL                             R9 2 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R7 K6 [table.insert]
       54 CALL                             R7 -1 0
       55 MOVE                             R8 R3
       56 GETTABLEKS                       R9 R1 K11 ["DescendantRemoving"]
       58 MOVE                             R11 R4
       59 NAMECALL                         R9 R9 K3 ["Connect"]
       61 CALL                             R9 2 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R7 K6 [table.insert]
       65 CALL                             R7 -1 0
       66 MOVE                             R8 R3
       67 GETTABLEKS                       R9 R0 K12 ["AncestryChanged"]
       69 NEWCLOSURE                       R11 P4
       70 CAPTURE                          VAL R0
       71 CAPTURE                          REF R3
       72 NAMECALL                         R9 R9 K3 ["Connect"]
       74 CALL                             R9 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R7 K6 [table.insert]
       78 CALL                             R7 -1 0
       79 GETIMPORT                        R7 K15 [task.spawn]
       81 NEWCLOSURE                       R8 P5
       82 CAPTURE                          VAL R0
       83 CAPTURE                          REF R2
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U1
       87 CALL                             R7 1 0
       88 CLOSEUPVALS                      R2
       89 RETURN                           R0 0

PROTO_37:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K2 ["GetChildren"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 3
        7 FORGPREP_INEXT                   R1
        8 GETTABLEKS                       R6 R5 K3 ["Name"]
       10 JUMPIFNOTEQKS                    R6 K4 ["PackageExport"] ; [+4]
       12 NAMECALL                         R6 R5 K5 ["Destroy"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 [inext] ; [-8]
       17 GETIMPORT                        R1 K8 [Instance.new]
       19 LOADK                            R2 K9 ["Model"]
       20 CALL                             R1 1 1
       21 LOADK                            R2 K4 ["PackageExport"]
       22 SETTABLEKS                       R2 R1 K3 ["Name"]
       24 GETUPVAL                         R2 0
       25 SETTABLEKS                       R2 R1 K10 ["Parent"]
       27 LOADK                            R4 K11 ["R15ArtistIntent"]
       28 NAMECALL                         R2 R0 K12 ["FindFirstChild"]
       30 CALL                             R2 2 1
       31 LOADK                            R5 K13 ["R15Fixed"]
       32 NAMECALL                         R3 R0 K12 ["FindFirstChild"]
       34 CALL                             R3 2 1
       35 LOADK                            R6 K14 ["R6"]
       36 NAMECALL                         R4 R0 K12 ["FindFirstChild"]
       38 CALL                             R4 2 1
       39 JUMPIFNOT                        R2 ; [+2]
       40 JUMPIFNOT                        R3 ; [+1]
       41 JUMPIF                           R4 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R5 K16 [pairs]
       45 GETUPVAL                         R6 1
       46 CALL                             R5 1 3
       47 FORGPREP_NEXT                    R5
       48 GETIMPORT                        R10 K8 [Instance.new]
       50 LOADK                            R11 K17 ["Folder"]
       51 CALL                             R10 1 1
       52 SETTABLEKS                       R8 R10 K3 ["Name"]
       54 SETTABLEKS                       R1 R10 K10 ["Parent"]
       56 GETIMPORT                        R11 K8 [Instance.new]
       58 LOADK                            R12 K17 ["Folder"]
       59 CALL                             R11 1 1
       60 LOADK                            R12 K11 ["R15ArtistIntent"]
       61 SETTABLEKS                       R12 R11 K3 ["Name"]
       63 SETTABLEKS                       R10 R11 K10 ["Parent"]
       65 GETIMPORT                        R12 K8 [Instance.new]
       67 LOADK                            R13 K17 ["Folder"]
       68 CALL                             R12 1 1
       69 LOADK                            R13 K13 ["R15Fixed"]
       70 SETTABLEKS                       R13 R12 K3 ["Name"]
       72 SETTABLEKS                       R10 R12 K10 ["Parent"]
       74 GETIMPORT                        R13 K1 [ipairs]
       76 MOVE                             R14 R9
       77 CALL                             R13 1 3
       78 FORGPREP_INEXT                   R13
       79 GETTABLEKS                       R18 R2 K18 ["HumanoidRootPart"]
       81 GETTABLEKS                       R18 R18 K19 ["Position"]
       83 MOVE                             R21 R17
       84 NAMECALL                         R19 R2 K12 ["FindFirstChild"]
       86 CALL                             R19 2 1
       87 JUMPIFNOT                        R19 ; [+14]
       88 NAMECALL                         R20 R19 K20 ["Clone"]
       90 CALL                             R20 1 1
       91 GETIMPORT                        R23 K22 [CFrame.new]
       93 CALL                             R23 0 1
       94 GETTABLEKS                       R24 R19 K19 ["Position"]
       96 ADD                              R22 R23 R24
       97 SUB                              R21 R22 R18
       98 SETTABLEKS                       R21 R20 K21 ["CFrame"]
      100 SETTABLEKS                       R11 R20 K10 ["Parent"]
      102 GETTABLEKS                       R18 R3 K18 ["HumanoidRootPart"]
      104 GETTABLEKS                       R18 R18 K19 ["Position"]
      106 MOVE                             R21 R17
      107 NAMECALL                         R19 R3 K12 ["FindFirstChild"]
      109 CALL                             R19 2 1
      110 JUMPIFNOT                        R19 ; [+14]
      111 NAMECALL                         R20 R19 K20 ["Clone"]
      113 CALL                             R20 1 1
      114 GETIMPORT                        R23 K22 [CFrame.new]
      116 CALL                             R23 0 1
      117 GETTABLEKS                       R24 R19 K19 ["Position"]
      119 ADD                              R22 R23 R24
      120 SUB                              R21 R22 R18
      121 SETTABLEKS                       R21 R20 K21 ["CFrame"]
      123 SETTABLEKS                       R12 R20 K10 ["Parent"]
      125 FORGLOOP                         R13 2 [inext] ; [-47]
      127 GETIMPORT                        R13 K8 [Instance.new]
      129 LOADK                            R14 K17 ["Folder"]
      130 CALL                             R13 1 1
      131 LOADK                            R14 K14 ["R6"]
      132 SETTABLEKS                       R14 R13 K3 ["Name"]
      134 SETTABLEKS                       R10 R13 K10 ["Parent"]
      136 GETIMPORT                        R14 K26 [Enum.BodyPart.Head]
      138 GETTABLEKS                       R14 R14 K3 ["Name"]
      140 JUMPIFNOTEQ                      R8 R14 ; [+67]
      142 GETUPVAL                         R15 2
      143 MOVE                             R16 R14
      144 MOVE                             R17 R4
      145 CALL                             R15 2 1
      146 GETUPVAL                         R16 2
      147 MOVE                             R17 R14
      148 MOVE                             R18 R2
      149 CALL                             R16 2 1
      150 JUMPIFNOT                        R15 ; [+5]
      151 LOADK                            R19 K27 ["SpecialMesh"]
      152 NAMECALL                         R17 R15 K28 ["FindFirstChildWhichIsA"]
      154 CALL                             R17 2 1
      155 JUMPIF                           R17 ; [+1]
      156 LOADNIL                          R17
      157 JUMPIFNOT                        R17 ; [+57]
      158 JUMPIFNOT                        R16 ; [+56]
      159 NAMECALL                         R18 R17 K20 ["Clone"]
      161 CALL                             R18 1 1
      162 MOVE                             R17 R18
      163 NAMECALL                         R18 R17 K29 ["ClearAllChildren"]
      165 CALL                             R18 1 0
      166 GETIMPORT                        R18 K1 [ipairs]
      168 NAMECALL                         R19 R16 K2 ["GetChildren"]
      170 CALL                             R19 1 -1
      171 CALL                             R18 -1 3
      172 FORGPREP_INEXT                   R18
      173 LOADK                            R25 K30 ["ValueBase"]
      174 NAMECALL                         R23 R22 K31 ["IsA"]
      176 CALL                             R23 2 1
      177 JUMPIFNOT                        R23 ; [+6]
      178 NAMECALL                         R23 R22 K20 ["Clone"]
      180 CALL                             R23 1 1
      181 SETTABLEKS                       R17 R23 K10 ["Parent"]
      183 JUMP                             ; [+19]
      184 LOADK                            R25 K32 ["Attachment"]
      185 NAMECALL                         R23 R22 K31 ["IsA"]
      187 CALL                             R23 2 1
      188 JUMPIFNOT                        R23 ; [+14]
      189 GETIMPORT                        R23 K8 [Instance.new]
      191 LOADK                            R24 K33 ["Vector3Value"]
      192 CALL                             R23 1 1
      193 GETTABLEKS                       R24 R22 K3 ["Name"]
      195 SETTABLEKS                       R24 R23 K3 ["Name"]
      197 GETTABLEKS                       R24 R22 K19 ["Position"]
      199 SETTABLEKS                       R24 R23 K34 ["Value"]
      201 SETTABLEKS                       R17 R23 K10 ["Parent"]
      203 FORGLOOP                         R18 2 [inext] ; [-31]
      205 SETTABLEKS                       R13 R17 K10 ["Parent"]
      207 JUMP                             ; [+7]
      208 GETUPVAL                         R15 3
      209 MOVE                             R16 R4
      210 MOVE                             R17 R8
      211 CALL                             R15 2 1
      212 JUMPIFNOT                        R15 ; [+2]
      213 SETTABLEKS                       R13 R15 K10 ["Parent"]
      215 FORGLOOP                         R5 2 ; [-168]
      217 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PackageExport"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R3 K4 ["RigSetup.Export: no 'PackageExport' found in ServerStorage — import an avatar first."]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETIMPORT                        R2 K6 [ipairs]
       13 NAMECALL                         R3 R1 K7 ["GetChildren"]
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 3
       17 FORGPREP_INEXT                   R2
       18 GETUPVAL                         R7 1
       19 MOVE                             R9 R6
       20 NAMECALL                         R7 R7 K8 ["PublishDescendantAssets"]
       22 CALL                             R7 2 0
       23 GETTABLEKS                       R7 R6 K9 ["Name"]
       25 GETTABLEKS                       R8 R6 K9 ["Name"]
       27 JUMPIFNOTEQKS                    R8 K10 ["Head"] ; [+7]
       29 LOADK                            R10 K11 ["R15ArtistIntent"]
       30 NAMECALL                         R8 R6 K1 ["FindFirstChild"]
       32 CALL                             R8 2 1
       33 JUMPIFNOT                        R8 ; [+1]
       34 MOVE                             R6 R8
       35 GETUPVAL                         R8 2
       36 NAMECALL                         R10 R6 K7 ["GetChildren"]
       38 CALL                             R10 1 -1
       39 NAMECALL                         R8 R8 K12 ["Set"]
       41 CALL                             R8 -1 0
       42 MOVE                             R10 R7
       43 NAMECALL                         R8 R0 K13 ["PromptSaveSelection"]
       45 CALL                             R8 2 0
       46 FORGLOOP                         R2 2 [inext] ; [-29]
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["ContentProvider"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["PublishService"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K1 [game]
       17 LOADK                            R5 K5 ["Selection"]
       18 NAMECALL                         R3 R3 K3 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K1 [game]
       23 LOADK                            R6 K6 ["ServerStorage"]
       24 NAMECALL                         R4 R4 K3 ["GetService"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K8 [require]
       29 GETIMPORT                        R6 K10 [script]
       31 GETTABLEKS                       R6 R6 K11 ["Parent"]
       33 GETTABLEKS                       R6 R6 K12 ["FixedRigPositions"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K8 [require]
       38 GETIMPORT                        R7 K10 [script]
       40 GETTABLEKS                       R7 R7 K11 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["R6"]
       44 CALL                             R6 1 1
       45 NEWTABLE                         R7 0 2
       47 GETTABLEKS                       R9 R1 K14 ["BaseUrl"]
       49 LOADK                            R10 K15 ["asset/?id="]
       50 CONCAT                           R8 R9 R10
       51 LOADK                            R9 K16 ["rbxassetid://"]
       52 SETLIST                          R7 R8 2 [1]
       54 NEWTABLE                         R8 8 0
       56 NEWTABLE                         R9 0 1
       58 LOADK                            R10 K17 ["Head"]
       59 SETLIST                          R9 R10 1 [1]
       61 SETTABLEKS                       R9 R8 K17 ["Head"]
       63 NEWTABLE                         R9 0 2
       65 LOADK                            R10 K18 ["UpperTorso"]
       66 LOADK                            R11 K19 ["LowerTorso"]
       67 SETLIST                          R9 R10 2 [1]
       69 SETTABLEKS                       R9 R8 K20 ["Torso"]
       71 NEWTABLE                         R9 0 3
       73 LOADK                            R10 K21 ["RightUpperArm"]
       74 LOADK                            R11 K22 ["RightLowerArm"]
       75 LOADK                            R12 K23 ["RightHand"]
       76 SETLIST                          R9 R10 3 [1]
       78 SETTABLEKS                       R9 R8 K24 ["Right Arm"]
       80 NEWTABLE                         R9 0 3
       82 LOADK                            R10 K25 ["LeftUpperArm"]
       83 LOADK                            R11 K26 ["LeftLowerArm"]
       84 LOADK                            R12 K27 ["LeftHand"]
       85 SETLIST                          R9 R10 3 [1]
       87 SETTABLEKS                       R9 R8 K28 ["Left Arm"]
       89 NEWTABLE                         R9 0 3
       91 LOADK                            R10 K29 ["RightUpperLeg"]
       92 LOADK                            R11 K30 ["RightLowerLeg"]
       93 LOADK                            R12 K31 ["RightFoot"]
       94 SETLIST                          R9 R10 3 [1]
       96 SETTABLEKS                       R9 R8 K32 ["Right Leg"]
       98 NEWTABLE                         R9 0 3
      100 LOADK                            R10 K33 ["LeftUpperLeg"]
      101 LOADK                            R11 K34 ["LeftLowerLeg"]
      102 LOADK                            R12 K35 ["LeftFoot"]
      103 SETLIST                          R9 R10 3 [1]
      105 SETTABLEKS                       R9 R8 K36 ["Left Leg"]
      107 NEWTABLE                         R9 16 0
      109 LOADB                            R10 1
      110 SETTABLEKS                       R10 R9 K37 ["HumanoidRootPart"]
      112 LOADB                            R10 1
      113 SETTABLEKS                       R10 R9 K19 ["LowerTorso"]
      115 LOADB                            R10 1
      116 SETTABLEKS                       R10 R9 K18 ["UpperTorso"]
      118 LOADB                            R10 1
      119 SETTABLEKS                       R10 R9 K17 ["Head"]
      121 LOADB                            R10 1
      122 SETTABLEKS                       R10 R9 K21 ["RightUpperArm"]
      124 LOADB                            R10 1
      125 SETTABLEKS                       R10 R9 K22 ["RightLowerArm"]
      127 LOADB                            R10 1
      128 SETTABLEKS                       R10 R9 K23 ["RightHand"]
      130 LOADB                            R10 1
      131 SETTABLEKS                       R10 R9 K25 ["LeftUpperArm"]
      133 LOADB                            R10 1
      134 SETTABLEKS                       R10 R9 K26 ["LeftLowerArm"]
      136 LOADB                            R10 1
      137 SETTABLEKS                       R10 R9 K27 ["LeftHand"]
      139 LOADB                            R10 1
      140 SETTABLEKS                       R10 R9 K29 ["RightUpperLeg"]
      142 LOADB                            R10 1
      143 SETTABLEKS                       R10 R9 K30 ["RightLowerLeg"]
      145 LOADB                            R10 1
      146 SETTABLEKS                       R10 R9 K31 ["RightFoot"]
      148 LOADB                            R10 1
      149 SETTABLEKS                       R10 R9 K33 ["LeftUpperLeg"]
      151 LOADB                            R10 1
      152 SETTABLEKS                       R10 R9 K34 ["LeftLowerLeg"]
      154 LOADB                            R10 1
      155 SETTABLEKS                       R10 R9 K35 ["LeftFoot"]
      157 NEWTABLE                         R10 16 0
      159 LOADK                            R11 K37 ["HumanoidRootPart"]
      160 SETTABLEKS                       R11 R10 K38 ["RootRigAttachment"]
      162 LOADK                            R11 K19 ["LowerTorso"]
      163 SETTABLEKS                       R11 R10 K39 ["WaistRigAttachment"]
      165 LOADK                            R11 K18 ["UpperTorso"]
      166 SETTABLEKS                       R11 R10 K40 ["NeckRigAttachment"]
      168 LOADK                            R11 K18 ["UpperTorso"]
      169 SETTABLEKS                       R11 R10 K41 ["RightShoulderRigAttachment"]
      171 LOADK                            R11 K18 ["UpperTorso"]
      172 SETTABLEKS                       R11 R10 K42 ["LeftShoulderRigAttachment"]
      174 LOADK                            R11 K21 ["RightUpperArm"]
      175 SETTABLEKS                       R11 R10 K43 ["RightElbowRigAttachment"]
      177 LOADK                            R11 K22 ["RightLowerArm"]
      178 SETTABLEKS                       R11 R10 K44 ["RightWristRigAttachment"]
      180 LOADK                            R11 K25 ["LeftUpperArm"]
      181 SETTABLEKS                       R11 R10 K45 ["LeftElbowRigAttachment"]
      183 LOADK                            R11 K26 ["LeftLowerArm"]
      184 SETTABLEKS                       R11 R10 K46 ["LeftWristRigAttachment"]
      186 LOADK                            R11 K19 ["LowerTorso"]
      187 SETTABLEKS                       R11 R10 K47 ["RightHipRigAttachment"]
      189 LOADK                            R11 K29 ["RightUpperLeg"]
      190 SETTABLEKS                       R11 R10 K48 ["RightKneeRigAttachment"]
      192 LOADK                            R11 K30 ["RightLowerLeg"]
      193 SETTABLEKS                       R11 R10 K49 ["RightAnkleRigAttachment"]
      195 LOADK                            R11 K19 ["LowerTorso"]
      196 SETTABLEKS                       R11 R10 K50 ["LeftHipRigAttachment"]
      198 LOADK                            R11 K33 ["LeftUpperLeg"]
      199 SETTABLEKS                       R11 R10 K51 ["LeftKneeRigAttachment"]
      201 LOADK                            R11 K34 ["LeftLowerLeg"]
      202 SETTABLEKS                       R11 R10 K52 ["LeftAnkleRigAttachment"]
      204 DUPCLOSURE                       R11 K53 [PROTO_0]
      205 CAPTURE                          VAL R1
      206 DUPCLOSURE                       R12 K54 [PROTO_1]
      207 DUPCLOSURE                       R13 K55 [PROTO_2]
      208 CAPTURE                          VAL R1
      209 DUPCLOSURE                       R14 K56 [PROTO_4]
      210 DUPCLOSURE                       R15 K57 [PROTO_5]
      211 DUPCLOSURE                       R16 K58 [PROTO_6]
      212 DUPCLOSURE                       R17 K59 [PROTO_7]
      213 DUPCLOSURE                       R18 K60 [PROTO_8]
      214 DUPCLOSURE                       R19 K61 [PROTO_9]
      215 DUPCLOSURE                       R20 K62 [PROTO_10]
      216 DUPCLOSURE                       R21 K63 [PROTO_11]
      217 CAPTURE                          VAL R5
      218 DUPCLOSURE                       R22 K64 [PROTO_12]
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R22
      221 DUPCLOSURE                       R23 K65 [PROTO_13]
      222 CAPTURE                          VAL R23
      223 DUPCLOSURE                       R24 K66 [PROTO_14]
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R9
      227 DUPCLOSURE                       R25 K67 [PROTO_15]
      228 CAPTURE                          VAL R6
      229 DUPCLOSURE                       R26 K68 [PROTO_16]
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R24
      233 DUPCLOSURE                       R27 K69 [PROTO_17]
      234 SETTABLEKS                       R27 R0 K70 ["IsAvatarModel"]
      236 DUPCLOSURE                       R27 K71 [PROTO_18]
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R26
      239 SETTABLEKS                       R27 R0 K72 ["CreateImportedFbxModel"]
      241 DUPCLOSURE                       R27 K73 [PROTO_19]
      242 CAPTURE                          VAL R8
      243 SETTABLEKS                       R27 R0 K74 ["GetLimbNames"]
      245 DUPCLOSURE                       R27 K75 [PROTO_20]
      246 SETTABLEKS                       R27 R0 K76 ["GetBodyPartNames"]
      248 DUPCLOSURE                       R27 K77 [PROTO_21]
      249 CAPTURE                          VAL R7
      250 SETTABLEKS                       R27 R0 K78 ["RemoveAssetUrlFromText"]
      252 DUPCLOSURE                       R27 K79 [PROTO_22]
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R0
      255 SETTABLEKS                       R27 R0 K80 ["GetCurrentTextureIdFromRig"]
      257 DUPCLOSURE                       R27 K81 [PROTO_23]
      258 CAPTURE                          VAL R0
      259 SETTABLEKS                       R27 R0 K82 ["GetCurrentCharacterMeshIdFromRig"]
      261 DUPCLOSURE                       R27 K83 [PROTO_24]
      262 SETTABLEKS                       R27 R0 K84 ["GetCharacterMeshPropertyFromRig"]
      264 DUPCLOSURE                       R27 K85 [PROTO_25]
      265 SETTABLEKS                       R27 R0 K86 ["FindFaceTexture"]
      267 DUPCLOSURE                       R27 K87 [PROTO_26]
      268 CAPTURE                          VAL R8
      269 CAPTURE                          VAL R13
      270 CAPTURE                          VAL R14
      271 SETTABLEKS                       R27 R0 K88 ["CopyTexturesToRig"]
      273 DUPCLOSURE                       R27 K89 [PROTO_27]
      274 CAPTURE                          VAL R15
      275 CAPTURE                          VAL R16
      276 CAPTURE                          VAL R1
      277 SETTABLEKS                       R27 R0 K90 ["CopyCharacterMeshesToRig"]
      279 DUPCLOSURE                       R27 K91 [PROTO_28]
      280 CAPTURE                          VAL R1
      281 SETTABLEKS                       R27 R0 K92 ["AddFaceToRig"]
      283 DUPCLOSURE                       R27 K93 [PROTO_36]
      284 CAPTURE                          VAL R26
      285 CAPTURE                          VAL R0
      286 SETTABLEKS                       R27 R0 K94 ["WatchForChanges"]
      288 DUPCLOSURE                       R27 K95 [PROTO_37]
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R8
      291 CAPTURE                          VAL R16
      292 CAPTURE                          VAL R18
      293 SETTABLEKS                       R27 R0 K96 ["MakeExportVersion"]
      295 DUPCLOSURE                       R27 K97 [PROTO_38]
      296 CAPTURE                          VAL R4
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R3
      299 SETTABLEKS                       R27 R0 K98 ["Export"]
      301 RETURN                           R0 1
