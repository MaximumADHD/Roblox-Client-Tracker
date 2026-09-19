PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getHandle"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R5 K1 ["SpecialMesh"]
        7 NAMECALL                         R3 R2 K2 ["FindFirstChildWhichIsA"]
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getSpecialMesh"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K1 ["Scale"]
        8 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getSpecialMesh"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 SETTABLEKS                       R2 R3 K1 ["Scale"]
        8 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R1 1
        6 LOADK                            R4 K2 ["Accessory"]
        7 NAMECALL                         R2 R1 K1 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+5]
       11 LOADK                            R4 K3 ["Handle"]
       12 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 LOADK                            R4 K5 ["Model"]
       17 NAMECALL                         R2 R1 K1 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+5]
       21 LOADK                            R4 K0 ["BasePart"]
       22 NAMECALL                         R2 R1 K6 ["FindFirstChildWhichIsA"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
       26 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 NAMECALL                         R4 R1 K2 ["GetChildren"]
        4 CALL                             R4 1 -1
        5 CALL                             R3 -1 3
        6 FORGPREP_INEXT                   R3
        7 LOADK                            R10 K3 ["Attachment"]
        8 NAMECALL                         R8 R7 K4 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+8]
       12 MOVE                             R10 R2
       13 GETTABLEKS                       R11 R7 K5 ["Name"]
       15 NAMECALL                         R8 R0 K6 ["findAvatarAttachmentByName"]
       17 CALL                             R8 3 1
       18 JUMPIFNOT                        R8 ; [+1]
       19 RETURN                           R7 2
       20 FORGLOOP                         R3 2 [inext] ; [-14]
       22 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKS                       R2 K0 [""] ; [+4]
        2 JUMPIFEQKNIL                     R2 ; [+2]
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 NAMECALL                         R4 R1 K1 ["GetChildren"]
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K3 [ipairs]
       14 MOVE                             R6 R4
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 LOADK                            R12 K4 ["BasePart"]
       18 NAMECALL                         R10 R9 K5 ["IsA"]
       20 CALL                             R10 2 1
       21 JUMPIFNOT                        R10 ; [+31]
       22 LOADK                            R12 K6 ["WrapLayer"]
       23 NAMECALL                         R10 R9 K7 ["FindFirstChildWhichIsA"]
       25 CALL                             R10 2 1
       26 JUMPIF                           R10 ; [+26]
       27 MOVE                             R12 R2
       28 MOVE                             R13 R3
       29 NAMECALL                         R10 R9 K8 ["FindFirstChild"]
       31 CALL                             R10 3 1
       32 JUMPIFNOT                        R10 ; [+6]
       33 LOADK                            R13 K9 ["Attachment"]
       34 NAMECALL                         R11 R10 K5 ["IsA"]
       36 CALL                             R11 2 1
       37 JUMPIFNOT                        R11 ; [+1]
       38 RETURN                           R10 1
       39 MOVE                             R14 R2
       40 LOADK                            R15 K9 ["Attachment"]
       41 CONCAT                           R13 R14 R15
       42 MOVE                             R14 R3
       43 NAMECALL                         R11 R9 K8 ["FindFirstChild"]
       45 CALL                             R11 3 1
       46 JUMPIFNOT                        R11 ; [+6]
       47 LOADK                            R14 K9 ["Attachment"]
       48 NAMECALL                         R12 R11 K5 ["IsA"]
       50 CALL                             R12 2 1
       51 JUMPIFNOT                        R12 ; [+1]
       52 RETURN                           R11 1
       53 FORGLOOP                         R5 2 [inext] ; [-37]
       55 LOADNIL                          R5
       56 RETURN                           R5 1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R4 K0 ["CFrame"]
        3 GETIMPORT                        R5 K3 [Instance.new]
        5 LOADK                            R6 K4 ["Weld"]
        6 CALL                             R5 1 1
        7 SETTABLEKS                       R2 R5 K5 ["Part0"]
        9 GETTABLEKS                       R7 R2 K0 ["CFrame"]
       11 NAMECALL                         R7 R7 K6 ["inverse"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R8 R3 K0 ["CFrame"]
       16 MUL                              R6 R7 R8
       17 SETTABLEKS                       R6 R5 K7 ["C0"]
       19 SETTABLEKS                       R3 R5 K8 ["Part1"]
       21 SETTABLEKS                       R4 R5 K9 ["Parent"]
       23 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R1 K2 ["GetDescendants"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["WeldConstraint"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIF                           R7 ; [+10]
       12 LOADK                            R9 K5 ["Weld"]
       13 NAMECALL                         R7 R6 K4 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIF                           R7 ; [+5]
       17 LOADK                            R9 K6 ["Motor6D"]
       18 NAMECALL                         R7 R6 K4 ["IsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+3]
       22 NAMECALL                         R7 R6 K7 ["Destroy"]
       24 CALL                             R7 1 0
       25 FORGLOOP                         R2 2 ; [-19]
       27 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R6 K0 ["Humanoid"]
        1 NAMECALL                         R4 R1 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+2]
        5 LOADK                            R5 K2 [{1, 1, 1}]
        6 RETURN                           R5 1
        7 MOVE                             R7 R1
        8 MOVE                             R8 R3
        9 NAMECALL                         R5 R0 K3 ["findAvatarAttachmentByName"]
       11 CALL                             R5 3 1
       12 JUMPIF                           R5 ; [+2]
       13 LOADK                            R6 K2 [{1, 1, 1}]
       14 RETURN                           R6 1
       15 GETUPVAL                         R7 0
       16 CALL                             R7 0 1
       17 JUMPIFNOT                        R7 ; [+5]
       18 LOADK                            R8 K4 ["BasePart"]
       19 NAMECALL                         R6 R5 K5 ["FindFirstAncestorWhichIsA"]
       21 CALL                             R6 2 1
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R6 R5 K6 ["Parent"]
       25 JUMPIFNOTEQKNIL                  R6 ; [+3]
       27 LOADK                            R7 K2 [{1, 1, 1}]
       28 RETURN                           R7 1
       29 MOVE                             R9 R6
       30 NAMECALL                         R7 R4 K7 ["GetBodyPartR15"]
       32 CALL                             R7 2 1
       33 GETIMPORT                        R8 K11 [Enum.BodyPartR15.Unknown]
       35 JUMPIFNOTEQ                      R7 R8 ; [+3]
       37 LOADK                            R8 K2 [{1, 1, 1}]
       38 RETURN                           R8 1
       39 MOVE                             R10 R2
       40 MOVE                             R11 R7
       41 NAMECALL                         R8 R4 K12 ["GetAccessoryHandleScale"]
       43 CALL                             R8 3 -1
       44 RETURN                           R8 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETIMPORT                        R6 K1 [pairs]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 3
        9 FORGPREP_NEXT                    R6
       10 GETIMPORT                        R11 K1 [pairs]
       12 GETTABLEKS                       R12 R10 K2 ["Attachments"]
       14 CALL                             R11 1 3
       15 FORGPREP_NEXT                    R11
       16 GETTABLEKS                       R16 R15 K3 ["Name"]
       18 GETTABLEKS                       R17 R0 K3 ["Name"]
       20 JUMPIFEQ                         R16 R17 ; [+9]
       22 GETTABLEKS                       R16 R15 K3 ["Name"]
       24 GETTABLEKS                       R18 R0 K3 ["Name"]
       26 LOADK                            R19 K4 ["Attachment"]
       27 CONCAT                           R17 R18 R19
       28 JUMPIFNOTEQ                      R16 R17 ; [+3]
       30 LOADB                            R16 1
       31 RETURN                           R16 1
       32 FORGLOOP                         R11 2 ; [-17]
       34 FORGLOOP                         R6 2 ; [-25]
       36 FORGLOOP                         R1 2 ; [-32]
       38 LOADB                            R1 0
       39 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+18]
        1 MOVE                             R6 R1
        2 LOADB                            R7 1
        3 NAMECALL                         R4 R2 K0 ["FindFirstChild"]
        5 CALL                             R4 3 1
        6 JUMPIFNOT                        R4 ; [+12]
        7 GETIMPORT                        R6 K3 [CFrame.new]
        9 GETTABLEKS                       R7 R4 K4 ["WorldPosition"]
       11 CALL                             R6 1 1
       12 NAMECALL                         R6 R6 K5 ["inverse"]
       14 CALL                             R6 1 1
       15 GETTABLEKS                       R7 R3 K1 ["CFrame"]
       17 MUL                              R5 R6 R7
       18 RETURN                           R5 1
       19 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R3 R1 K0 ["GetChildren"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 MOVE                             R4 R2
        5 MOVE                             R5 R3
        6 CALL                             R4 1 1
        7 MOVE                             R3 R4
        8 GETIMPORT                        R4 K2 [ipairs]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 3
       12 FORGPREP_INEXT                   R4
       13 LOADK                            R11 K3 ["Attachment"]
       14 NAMECALL                         R9 R8 K4 ["IsA"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+7]
       18 GETUPVAL                         R9 0
       19 MOVE                             R10 R8
       20 CALL                             R9 1 1
       21 JUMPIFNOT                        R9 ; [+3]
       22 NAMECALL                         R9 R8 K5 ["Destroy"]
       24 CALL                             R9 1 0
       25 FORGLOOP                         R4 2 [inext] ; [-13]
       27 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R3
        1 GETIMPORT                        R4 K1 [ipairs]
        3 NAMECALL                         R5 R1 K2 ["GetChildren"]
        5 CALL                             R5 1 -1
        6 CALL                             R4 -1 3
        7 FORGPREP_INEXT                   R4
        8 GETTABLEKS                       R9 R8 K3 ["Name"]
       10 JUMPIFNOTEQ                      R2 R9 ; [+3]
       12 MOVE                             R3 R8
       13 RETURN                           R3 1
       14 FORGLOOP                         R4 2 [inext] ; [-7]
       16 RETURN                           R3 1

PROTO_13:
        0 MOVE                             R6 R2
        1 MOVE                             R7 R3
        2 NAMECALL                         R4 R0 K0 ["findAvatarAttachmentByName"]
        4 CALL                             R4 3 1
        5 JUMPIF                           R4 ; [+1]
        6 RETURN                           R0 0
        7 MOVE                             R7 R1
        8 MOVE                             R8 R3
        9 NAMECALL                         R5 R0 K1 ["getExistingAttachmentInstance"]
       11 CALL                             R5 3 1
       12 JUMPIF                           R5 ; [+1]
       13 RETURN                           R0 0
       14 DUPTABLE                         R6 K4 [{"ItemCFrame", "AttachmentCFrame"}]
       15 GETTABLEKS                       R7 R5 K5 ["CFrame"]
       17 NAMECALL                         R7 R7 K6 ["inverse"]
       19 CALL                             R7 1 1
       20 SETTABLEKS                       R7 R6 K2 ["ItemCFrame"]
       22 GETTABLEKS                       R7 R5 K5 ["CFrame"]
       24 SETTABLEKS                       R7 R6 K3 ["AttachmentCFrame"]
       26 RETURN                           R6 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["Name"]
        9 GETUPVAL                         R8 0
       10 JUMPIFEQ                         R7 R8 ; [+8]
       12 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R6
       16 GETIMPORT                        R7 K5 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 [inext] ; [-13]
       21 RETURN                           R1 1

PROTO_15:
        0 JUMPIF                           R3 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R8 R2
        3 MOVE                             R9 R3
        4 NAMECALL                         R6 R0 K0 ["findAvatarAttachmentByName"]
        6 CALL                             R6 3 1
        7 JUMPIF                           R6 ; [+1]
        8 RETURN                           R0 0
        9 MOVE                             R9 R1
       10 MOVE                             R10 R3
       11 NAMECALL                         R7 R0 K1 ["getExistingAttachmentInstance"]
       13 CALL                             R7 3 1
       14 MOVE                             R10 R1
       15 NEWCLOSURE                       R11 P0
       16 CAPTURE                          VAL R3
       17 NAMECALL                         R8 R0 K2 ["clearAccessoryAssetAttachmentsWithFilter"]
       19 CALL                             R8 3 0
       20 JUMPIF                           R7 ; [+8]
       21 GETIMPORT                        R8 K5 [Instance.new]
       23 LOADK                            R9 K6 ["Attachment"]
       24 MOVE                             R10 R1
       25 CALL                             R8 2 1
       26 MOVE                             R7 R8
       27 SETTABLEKS                       R3 R7 K7 ["Name"]
       29 JUMPIFNOT                        R4 ; [+12]
       30 JUMPIFNOT                        R5 ; [+11]
       31 SETTABLEKS                       R4 R7 K8 ["CFrame"]
       33 GETIMPORT                        R9 K9 [CFrame.new]
       35 GETTABLEKS                       R10 R6 K10 ["WorldPosition"]
       37 CALL                             R9 1 1
       38 MUL                              R8 R9 R5
       39 SETTABLEKS                       R8 R1 K8 ["CFrame"]
       41 RETURN                           R0 0
       42 GETUPVAL                         R8 0
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+12]
       45 LOADK                            R10 K11 ["BasePart"]
       46 NAMECALL                         R8 R6 K12 ["FindFirstAncestorWhichIsA"]
       48 CALL                             R8 2 1
       49 JUMPIF                           R8 ; [+2]
       50 GETTABLEKS                       R8 R6 K13 ["Parent"]
       52 GETTABLEKS                       R9 R8 K8 ["CFrame"]
       54 SETTABLEKS                       R9 R7 K8 ["CFrame"]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R8 R6 K13 ["Parent"]
       59 GETTABLEKS                       R8 R8 K8 ["CFrame"]
       61 SETTABLEKS                       R8 R7 K8 ["CFrame"]
       63 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R1
        2 NAMECALL                         R5 R5 K0 ["getRootPart"]
        4 CALL                             R5 2 1
        5 JUMPIF                           R5 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADK                            R3 K1 [""]
       10 JUMP                             ; [0]
       11 SETTABLEKS                       R1 R2 K2 ["Parent"]
       13 MOVE                             R8 R2
       14 NAMECALL                         R6 R0 K3 ["clearWelds"]
       16 CALL                             R6 2 0
       17 JUMPIFNOT                        R4 ; [+11]
       18 GETTABLEKS                       R7 R2 K4 ["Size"]
       20 MOVE                             R10 R1
       21 MOVE                             R11 R2
       22 MOVE                             R12 R3
       23 NAMECALL                         R8 R0 K5 ["getAutomaticAccessoryScaling"]
       25 CALL                             R8 4 1
       26 MUL                              R6 R7 R8
       27 SETTABLEKS                       R6 R2 K4 ["Size"]
       29 MOVE                             R8 R3
       30 NAMECALL                         R6 R2 K6 ["FindFirstChild"]
       32 CALL                             R6 2 1
       33 JUMPIF                           R6 ; [+9]
       34 GETTABLEKS                       R9 R5 K7 ["CFrame"]
       36 MOVE                             R10 R2
       37 MOVE                             R11 R5
       38 MOVE                             R12 R2
       39 NAMECALL                         R7 R0 K8 ["addWeld"]
       41 CALL                             R7 5 0
       42 RETURN                           R0 0
       43 MOVE                             R9 R1
       44 GETTABLEKS                       R10 R6 K9 ["Name"]
       46 NAMECALL                         R7 R0 K10 ["findAvatarAttachmentByName"]
       48 CALL                             R7 3 1
       49 JUMPIF                           R7 ; [+9]
       50 GETTABLEKS                       R10 R5 K7 ["CFrame"]
       52 MOVE                             R11 R2
       53 MOVE                             R12 R5
       54 MOVE                             R13 R2
       55 NAMECALL                         R8 R0 K8 ["addWeld"]
       57 CALL                             R8 5 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R9 1
       60 CALL                             R9 0 1
       61 JUMPIFNOT                        R9 ; [+6]
       62 LOADK                            R11 K11 ["BasePart"]
       63 NAMECALL                         R9 R7 K12 ["FindFirstAncestorWhichIsA"]
       65 CALL                             R9 2 1
       66 OR                               R8 R9 R5
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R8 R7 K2 ["Parent"]
       70 LOADNIL                          R11
       71 MOVE                             R12 R2
       72 MOVE                             R13 R8
       73 MOVE                             R14 R2
       74 NAMECALL                         R9 R0 K8 ["addWeld"]
       76 CALL                             R9 5 0
       77 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R1
        2 NAMECALL                         R5 R5 K0 ["getRootPart"]
        4 CALL                             R5 2 1
        5 JUMPIF                           R5 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R8 K1 ["Accessory"]
        8 NAMECALL                         R6 R2 K2 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+19]
       12 LOADK                            R9 K3 ["DataModel"]
       13 NAMECALL                         R7 R1 K4 ["FindFirstAncestorOfClass"]
       15 CALL                             R7 2 1
       16 JUMPIFNOTEQKNIL                  R7 ; [+2]
       18 LOADB                            R6 0 +1
       19 LOADB                            R6 1
       20 JUMPIF                           R6 ; [+3]
       21 GETUPVAL                         R7 1
       22 SETTABLEKS                       R7 R1 K5 ["Parent"]
       24 SETTABLEKS                       R1 R2 K5 ["Parent"]
       26 JUMPIF                           R6 ; [+3]
       27 LOADNIL                          R7
       28 SETTABLEKS                       R7 R1 K5 ["Parent"]
       30 RETURN                           R0 0
       31 LOADNIL                          R6
       32 GETIMPORT                        R7 K7 [pairs]
       34 NAMECALL                         R8 R1 K8 ["GetDescendants"]
       36 CALL                             R8 1 -1
       37 CALL                             R7 -1 3
       38 FORGPREP_NEXT                    R7
       39 LOADK                            R14 K9 ["WrapTarget"]
       40 NAMECALL                         R12 R11 K2 ["IsA"]
       42 CALL                             R12 2 1
       43 JUMPIFNOT                        R12 ; [+2]
       44 MOVE                             R6 R11
       45 JUMP                             ; [+2]
       46 FORGLOOP                         R7 2 ; [-8]
       48 NEWTABLE                         R7 0 0
       50 GETIMPORT                        R8 K7 [pairs]
       52 NAMECALL                         R9 R2 K10 ["GetChildren"]
       54 CALL                             R9 1 -1
       55 CALL                             R8 -1 3
       56 FORGPREP_NEXT                    R8
       57 LOADK                            R15 K11 ["WrapLayer"]
       58 NAMECALL                         R13 R12 K2 ["IsA"]
       60 CALL                             R13 2 1
       61 JUMPIFNOT                        R13 ; [+11]
       62 DUPTABLE                         R15 K14 [{"mesh", "wrap"}]
       63 SETTABLEKS                       R2 R15 K12 ["mesh"]
       65 SETTABLEKS                       R12 R15 K13 ["wrap"]
       67 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       69 MOVE                             R14 R7
       70 GETIMPORT                        R13 K17 [table.insert]
       72 CALL                             R13 2 0
       73 FORGLOOP                         R8 2 ; [-17]
       75 LENGTH                           R8 R7
       76 LOADN                            R9 0
       77 JUMPIFNOTLE                      R8 R9 ; [+9]
       79 MOVE                             R10 R1
       80 MOVE                             R11 R2
       81 MOVE                             R12 R3
       82 MOVE                             R13 R4
       83 NAMECALL                         R8 R0 K18 ["attachNonLayeredItem"]
       85 CALL                             R8 5 0
       86 RETURN                           R0 0
       87 JUMPIF                           R6 ; [+1]
       88 RETURN                           R0 0
       89 GETIMPORT                        R8 K20 [ipairs]
       91 MOVE                             R9 R7
       92 CALL                             R8 1 3
       93 FORGPREP_INEXT                   R8
       94 GETTABLEKS                       R15 R12 K12 ["mesh"]
       96 NAMECALL                         R13 R0 K21 ["clearWelds"]
       98 CALL                             R13 2 0
       99 FORGLOOP                         R8 2 [inext] ; [-6]
      101 MOVE                             R10 R2
      102 MOVE                             R11 R1
      103 NAMECALL                         R8 R0 K22 ["findMatchingAccessoryAndAvatarAttachments"]
      105 CALL                             R8 3 2
      106 JUMPIFNOT                        R3 ; [+6]
      107 MOVE                             R12 R1
      108 MOVE                             R13 R3
      109 NAMECALL                         R10 R0 K23 ["findAvatarAttachmentByName"]
      111 CALL                             R10 3 1
      112 MOVE                             R9 R10
      113 JUMPIFNOT                        R9 ; [+23]
      114 GETUPVAL                         R10 2
      115 CALL                             R10 0 1
      116 JUMPIFNOT                        R10 ; [+12]
      117 LOADK                            R12 K24 ["BasePart"]
      118 NAMECALL                         R10 R9 K25 ["FindFirstAncestorWhichIsA"]
      120 CALL                             R10 2 1
      121 JUMPIFNOT                        R10 ; [+15]
      122 LOADK                            R13 K9 ["WrapTarget"]
      123 NAMECALL                         R11 R10 K26 ["FindFirstChildWhichIsA"]
      125 CALL                             R11 2 1
      126 JUMPIFNOT                        R11 ; [+10]
      127 MOVE                             R6 R11
      128 JUMP                             ; [+8]
      129 GETTABLEKS                       R10 R9 K5 ["Parent"]
      131 LOADK                            R12 K9 ["WrapTarget"]
      132 NAMECALL                         R10 R10 K26 ["FindFirstChildWhichIsA"]
      134 CALL                             R10 2 1
      135 JUMPIFNOT                        R10 ; [+1]
      136 MOVE                             R6 R10
      137 MOVE                             R10 R6
      138 GETTABLEKS                       R11 R10 K27 ["ImportOriginWorld"]
      140 GETIMPORT                        R12 K20 [ipairs]
      142 MOVE                             R13 R7
      143 CALL                             R12 1 3
      144 FORGPREP_INEXT                   R12
      145 GETTABLEKS                       R17 R16 K13 ["wrap"]
      147 GETTABLEKS                       R18 R16 K12 ["mesh"]
      149 SETTABLEKS                       R1 R18 K5 ["Parent"]
      151 GETUPVAL                         R18 3
      152 CALL                             R18 0 1
      153 JUMPIFNOT                        R18 ; [+19]
      154 NAMECALL                         R18 R17 K28 ["GetCageOffset"]
      156 CALL                             R18 1 1
      157 GETTABLEKS                       R19 R17 K5 ["Parent"]
      159 GETTABLEKS                       R22 R10 K5 ["Parent"]
      161 GETTABLEKS                       R22 R22 K29 ["CFrame"]
      163 GETTABLEKS                       R23 R17 K30 ["CageOrigin"]
      165 NAMECALL                         R23 R23 K31 ["Inverse"]
      167 CALL                             R23 1 1
      168 MUL                              R21 R22 R23
      169 SUB                              R20 R21 R18
      170 SETTABLEKS                       R20 R19 K29 ["CFrame"]
      172 JUMP                             ; [+15]
      173 GETTABLEKS                       R18 R17 K27 ["ImportOriginWorld"]
      175 NAMECALL                         R18 R18 K31 ["Inverse"]
      177 CALL                             R18 1 1
      178 MUL                              R19 R11 R18
      179 GETTABLEKS                       R20 R17 K5 ["Parent"]
      181 GETTABLEKS                       R20 R20 K29 ["CFrame"]
      183 GETTABLEKS                       R21 R17 K5 ["Parent"]
      185 MUL                              R22 R19 R20
      186 SETTABLEKS                       R22 R21 K29 ["CFrame"]
      188 GETTABLEKS                       R18 R16 K12 ["mesh"]
      190 MOVE                             R19 R5
      191 JUMPIFNOT                        R9 ; [+11]
      192 GETUPVAL                         R20 2
      193 CALL                             R20 0 1
      194 JUMPIFNOT                        R20 ; [+6]
      195 LOADK                            R22 K24 ["BasePart"]
      196 NAMECALL                         R20 R9 K25 ["FindFirstAncestorWhichIsA"]
      198 CALL                             R20 2 1
      199 OR                               R19 R20 R5
      200 JUMP                             ; [+2]
      201 GETTABLEKS                       R19 R9 K5 ["Parent"]
      203 LOADNIL                          R22
      204 MOVE                             R23 R18
      205 MOVE                             R24 R19
      206 GETTABLEKS                       R25 R16 K12 ["mesh"]
      208 NAMECALL                         R20 R0 K32 ["addWeld"]
      210 CALL                             R20 5 0
      211 FORGLOOP                         R12 2 [inext] ; [-67]
      213 SETTABLEKS                       R1 R2 K5 ["Parent"]
      215 RETURN                           R0 0

PROTO_18:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R4 K0 ["AvatarPartScaleType"]
        3 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 LOADK                            R5 K2 ["StringValue"]
        9 NAMECALL                         R3 R2 K3 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R2 K4 ["Value"]
       16 RETURN                           R3 1

PROTO_19:
        0 JUMPIFNOT                        R1 ; [+1]
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 LOADK                            R5 K0 ["AvatarPartScaleType"]
        4 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+10]
        8 GETIMPORT                        R4 K4 [Instance.new]
       10 LOADK                            R5 K5 ["StringValue"]
       11 CALL                             R4 1 1
       12 MOVE                             R3 R4
       13 LOADK                            R4 K0 ["AvatarPartScaleType"]
       14 SETTABLEKS                       R4 R3 K6 ["Name"]
       16 SETTABLEKS                       R1 R3 K7 ["Parent"]
       18 LOADK                            R6 K5 ["StringValue"]
       19 NAMECALL                         R4 R3 K8 ["IsA"]
       21 CALL                             R4 2 1
       22 JUMPIF                           R4 ; [+1]
       23 RETURN                           R0 0
       24 SETTABLEKS                       R2 R3 K9 ["Value"]
       26 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R5 R3 K0 ["p"]
        2 SUB                              R6 R3 R5
        3 NEWTABLE                         R7 0 0
        5 GETIMPORT                        R8 K2 [pairs]
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K3 ["CUBE_CORNERS"]
       10 CALL                             R8 1 3
       11 FORGPREP_NEXT                    R8
       12 MUL                              R15 R6 R12
       13 MUL                              R14 R4 R15
       14 ADD                              R13 R5 R14
       15 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       17 MOVE                             R15 R7
       18 MOVE                             R16 R13
       19 GETIMPORT                        R14 K6 [table.insert]
       21 CALL                             R14 2 0
       22 FORGLOOP                         R8 2 ; [-11]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K3 ["CUBE_CORNERS"]
       27 GETTABLEKS                       R10 R10 K7 ["LeftBottomFront"]
       29 MUL                              R9 R2 R10
       30 ADD                              R8 R1 R9
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K3 ["CUBE_CORNERS"]
       34 GETTABLEKS                       R11 R11 K8 ["RightTopBack"]
       36 MUL                              R10 R2 R11
       37 ADD                              R9 R1 R10
       38 GETIMPORT                        R10 K10 [ipairs]
       40 MOVE                             R11 R7
       41 CALL                             R10 1 3
       42 FORGPREP_INEXT                   R10
       43 GETTABLEKS                       R15 R14 K11 ["x"]
       45 GETTABLEKS                       R16 R8 K12 ["X"]
       47 JUMPIFLT                         R15 R16 ; [+31]
       49 GETTABLEKS                       R15 R14 K11 ["x"]
       51 GETTABLEKS                       R16 R9 K12 ["X"]
       53 JUMPIFLT                         R16 R15 ; [+25]
       55 GETTABLEKS                       R15 R14 K13 ["y"]
       57 GETTABLEKS                       R16 R8 K14 ["Y"]
       59 JUMPIFLT                         R15 R16 ; [+19]
       61 GETTABLEKS                       R15 R14 K13 ["y"]
       63 GETTABLEKS                       R16 R9 K14 ["Y"]
       65 JUMPIFLT                         R16 R15 ; [+13]
       67 GETTABLEKS                       R15 R14 K15 ["z"]
       69 GETTABLEKS                       R16 R8 K16 ["Z"]
       71 JUMPIFLT                         R15 R16 ; [+7]
       73 GETTABLEKS                       R15 R14 K15 ["z"]
       75 GETTABLEKS                       R16 R9 K16 ["Z"]
       77 JUMPIFNOTLT                      R16 R15 ; [+3]
       79 LOADB                            R15 0
       80 RETURN                           R15 1
       81 FORGLOOP                         R10 2 [inext] ; [-39]
       83 LOADB                            R10 1
       84 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R3 R1 K5 ["AssetTypeAttachmentInfo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R1 K6 ["AvatarUtil"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R1 K7 ["Constants"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Flags"]
       32 GETTABLEKS                       R6 R6 K9 ["GetFFlagAvatarPreviewerBoneNestedAttachmentFix"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Flags"]
       39 GETTABLEKS                       R7 R7 K10 ["GetFFlagUseModelCageForAccessoryFittingTool"]
       41 CALL                             R6 1 1
       42 NEWTABLE                         R7 32 0
       44 GETIMPORT                        R8 K12 [game]
       46 LOADK                            R10 K13 ["Workspace"]
       47 NAMECALL                         R8 R8 K14 ["GetService"]
       49 CALL                             R8 2 1
       50 GETIMPORT                        R9 K12 [game]
       52 LOADK                            R11 K15 ["CoreGui"]
       53 NAMECALL                         R9 R9 K14 ["GetService"]
       55 CALL                             R9 2 1
       56 DUPCLOSURE                       R10 K16 [PROTO_0]
       57 SETTABLEKS                       R10 R7 K17 ["getSpecialMesh"]
       59 DUPCLOSURE                       R10 K18 [PROTO_1]
       60 SETTABLEKS                       R10 R7 K19 ["getSpecialMeshScale"]
       62 DUPCLOSURE                       R10 K20 [PROTO_2]
       63 SETTABLEKS                       R10 R7 K21 ["setSpecialMeshScale"]
       65 DUPCLOSURE                       R10 K22 [PROTO_3]
       66 SETTABLEKS                       R10 R7 K23 ["getHandle"]
       68 DUPCLOSURE                       R10 K24 [PROTO_4]
       69 SETTABLEKS                       R10 R7 K25 ["findMatchingAccessoryAndAvatarAttachments"]
       71 DUPCLOSURE                       R10 K26 [PROTO_5]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R10 R7 K27 ["findAvatarAttachmentByName"]
       75 DUPCLOSURE                       R10 K28 [PROTO_6]
       76 SETTABLEKS                       R10 R7 K29 ["addWeld"]
       78 DUPCLOSURE                       R10 K30 [PROTO_7]
       79 SETTABLEKS                       R10 R7 K31 ["clearWelds"]
       81 DUPCLOSURE                       R10 K32 [PROTO_8]
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R10 R7 K33 ["getAutomaticAccessoryScaling"]
       85 DUPCLOSURE                       R10 K34 [PROTO_9]
       86 CAPTURE                          VAL R2
       87 DUPCLOSURE                       R11 K35 [PROTO_10]
       88 SETTABLEKS                       R11 R7 K36 ["getItemCFrameRelativeToAttachmentPoint"]
       90 DUPCLOSURE                       R11 K37 [PROTO_11]
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R11 R7 K38 ["clearAccessoryAssetAttachmentsWithFilter"]
       94 DUPCLOSURE                       R11 K39 [PROTO_12]
       95 SETTABLEKS                       R11 R7 K40 ["getExistingAttachmentInstance"]
       97 DUPCLOSURE                       R11 K41 [PROTO_13]
       98 SETTABLEKS                       R11 R7 K42 ["getExistingAttachmentPoint"]
      100 DUPCLOSURE                       R11 K43 [PROTO_15]
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R11 R7 K44 ["createOrReuseAttachmentInstance"]
      104 DUPCLOSURE                       R11 K45 [PROTO_16]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R11 R7 K46 ["attachNonLayeredItem"]
      109 DUPCLOSURE                       R11 K47 [PROTO_17]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R11 R7 K48 ["attachClothingItem"]
      116 DUPCLOSURE                       R11 K49 [PROTO_18]
      117 SETTABLEKS                       R11 R7 K50 ["getScaleType"]
      119 DUPCLOSURE                       R11 K51 [PROTO_19]
      120 SETTABLEKS                       R11 R7 K52 ["setScaleType"]
      122 DUPCLOSURE                       R11 K53 [PROTO_20]
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R11 R7 K54 ["checkAccessoryBounds"]
      126 RETURN                           R7 1
