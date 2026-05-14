PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isItemEmpty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+12]
        6 LOADK                            R3 K1 ["WrapTarget"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 3 1
       11 JUMPIF                           R1 ; [+7]
       12 LOADK                            R3 K3 ["WrapLayer"]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       16 CALL                             R1 3 1
       17 JUMPIF                           R1 ; [+1]
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isItemEmpty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+6]
        6 LOADK                            R3 K1 ["WrapLayer"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 3 1
       11 JUMPIF                           R1 ; [+1]
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getOuterCage"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LOADB                            R1 0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getInnerCage"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LOADB                            R1 0
        9 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOuterCage"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["getInnerCage"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 NOT                              R5 R2
       11 OR                               R4 R5 R1
       12 FASTCALL1                        ASSERT R4 ; [+2]
       13 GETIMPORT                        R3 K3 [assert]
       15 CALL                             R3 1 0
       16 JUMPIF                           R1 ; [+3]
       17 JUMPIF                           R2 ; [+2]
       18 LOADB                            R3 0
       19 RETURN                           R3 1
       20 JUMPIFNOT                        R1 ; [+8]
       21 JUMPIF                           R2 ; [+7]
       22 GETTABLEKS                       R4 R1 K4 ["CageMeshId"]
       24 JUMPIFEQKS                       R4 K5 [""] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 RETURN                           R3 1
       29 JUMPIFNOT                        R1 ; [+13]
       30 JUMPIFNOT                        R2 ; [+12]
       31 LOADB                            R3 1
       32 GETTABLEKS                       R4 R1 K4 ["CageMeshId"]
       34 JUMPIFEQKS                       R4 K5 [""] ; [+7]
       36 GETTABLEKS                       R4 R2 K6 ["ReferenceMeshId"]
       38 JUMPIFEQKS                       R4 K5 [""] ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 RETURN                           R3 1
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isItemEmpty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIFNOT                        R1 ; [+8]
        7 LOADK                            R4 K1 ["Workspace"]
        8 NAMECALL                         R2 R0 K2 ["FindFirstAncestorOfClass"]
       10 CALL                             R2 2 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasInnerCage"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["hasOuterCage"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 RETURN                           R1 2

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasOuterCage"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isAvatar"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["hasOuterCage"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["missingInnerCage"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["missingOuterCage"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasCages"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["hasInvalidCage"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 NOT                              R3 R4
       11 JUMPIFNOT                        R3 ; [+1]
       12 OR                               R3 R1 R2
       13 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isAvatar"]
        3 GETTABLEKS                       R2 R0 K1 ["Parent"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+8]
        7 LOADK                            R3 K2 ["WrapTarget"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R1 R0 K1 ["Parent"]
       14 RETURN                           R1 1
       15 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isItemEmpty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 LOADK                            R3 K1 ["Model"]
        9 NAMECALL                         R1 R0 K2 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 LOADK                            R3 K3 ["Humanoid"]
       16 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+2]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 NAMECALL                         R2 R0 K5 ["GetChildren"]
       24 CALL                             R2 1 3
       25 FORGPREP                         R2
       26 LOADK                            R9 K6 ["MeshPart"]
       27 NAMECALL                         R7 R6 K2 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+10]
       31 MOVE                             R9 R6
       32 NAMECALL                         R7 R1 K7 ["GetLimb"]
       34 CALL                             R7 2 1
       35 GETIMPORT                        R8 K11 [Enum.Limb.Unknown]
       37 JUMPIFEQ                         R7 R8 ; [+3]
       39 LOADB                            R7 1
       40 RETURN                           R7 1
       41 FORGLOOP                         R2 2 ; [-16]
       43 LOADB                            R2 0
       44 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isItemEmpty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["isLegacyAccessory"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADB                            R1 1
       15 RETURN                           R1 1
       16 LOADK                            R3 K2 ["MeshPart"]
       17 NAMECALL                         R1 R0 K3 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+8]
       21 LOADK                            R4 K4 ["WrapTarget"]
       22 NAMECALL                         R2 R0 K5 ["FindFirstChildOfClass"]
       24 CALL                             R2 2 1
       25 JUMPIFEQKNIL                     R2 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["isAvatar"]
        6 GETTABLEKS                       R2 R0 K0 ["Parent"]
        8 CALL                             R1 1 1
        9 LOADK                            R4 K2 ["Model"]
       10 NAMECALL                         R2 R0 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K1 ["isAvatar"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 LOADK                            R5 K4 ["MeshPart"]
       20 NAMECALL                         R3 R0 K3 ["IsA"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K5 ["hasAnyCage"]
       27 MOVE                             R4 R0
       28 CALL                             R3 1 1
       29 NOT                              R4 R1
       30 JUMPIFNOT                        R4 ; [+1]
       31 OR                               R4 R2 R3
       32 RETURN                           R4 1

PROTO_16:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Part"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+6]
        9 LOADK                            R8 K3 ["SpecialMesh"]
       10 NAMECALL                         R6 R5 K4 ["FindFirstChildWhichIsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+1]
       14 RETURN                           R5 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_17:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 LOADK                            R4 K0 ["Model"]
        5 NAMECALL                         R2 R0 K1 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+5]
        9 LOADK                            R4 K2 ["Accessory"]
       10 NAMECALL                         R2 R0 K1 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 MOVE                             R1 R2
       18 RETURN                           R1 1
       19 LOADK                            R4 K3 ["Part"]
       20 NAMECALL                         R2 R0 K1 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+6]
       24 LOADK                            R4 K4 ["SpecialMesh"]
       25 NAMECALL                         R2 R0 K5 ["FindFirstChildWhichIsA"]
       27 CALL                             R2 2 1
       28 JUMPIFNOT                        R2 ; [+1]
       29 MOVE                             R1 R0
       30 RETURN                           R1 1

PROTO_18:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 LOADK                            R4 K0 ["Model"]
        5 NAMECALL                         R2 R0 K1 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+5]
        9 LOADK                            R4 K2 ["Accessory"]
       10 NAMECALL                         R2 R0 K1 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 LOADK                            R4 K3 ["MeshPart"]
       15 NAMECALL                         R2 R0 K4 ["FindFirstChildWhichIsA"]
       17 CALL                             R2 2 1
       18 MOVE                             R1 R2
       19 RETURN                           R1 1
       20 LOADK                            R4 K3 ["MeshPart"]
       21 NAMECALL                         R2 R0 K1 ["IsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 MOVE                             R1 R0
       26 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getLegacyAccessoryHandle"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getMeshPartAccessoryHandle"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_21:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["getLegacyAccessoryHandle"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["getMeshPartAccessoryHandle"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R1 1
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R2 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_22:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["MeshPart"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 LOADK                            R4 K2 ["SurfaceAppearance"]
       11 NAMECALL                         R2 R0 K3 ["FindFirstChildWhichIsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_23:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["isAvatar"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["isItemEmpty"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 NOT                              R2 R3
       16 JUMPIFNOT                        R2 ; [+8]
       17 LOADK                            R5 K4 ["Workspace"]
       18 NAMECALL                         R3 R0 K5 ["FindFirstAncestorOfClass"]
       20 CALL                             R3 2 1
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 MOVE                             R3 R2
       26 JUMPIFNOT                        R3 ; [+13]
       27 MOVE                             R3 R1
       28 JUMPIF                           R3 ; [+11]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K6 ["isMeshPartAccessory"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 1
       34 JUMPIF                           R3 ; [+5]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K7 ["isLegacyAccessory"]
       38 MOVE                             R4 R0
       39 CALL                             R3 1 1
       40 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isAvatar"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isClothes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["hasInnerCage"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["hasOuterCage"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 NEWTABLE                         R1 32 0
       11 DUPCLOSURE                       R2 K3 [PROTO_0]
       12 SETTABLEKS                       R2 R1 K4 ["isItemEmpty"]
       14 DUPCLOSURE                       R2 K5 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K6 ["getOuterCage"]
       18 DUPCLOSURE                       R2 K7 [PROTO_2]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R1 K8 ["getInnerCage"]
       22 DUPCLOSURE                       R2 K9 [PROTO_3]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R2 R1 K10 ["hasOuterCage"]
       26 DUPCLOSURE                       R2 K11 [PROTO_4]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R2 R1 K12 ["hasInnerCage"]
       30 DUPCLOSURE                       R2 K13 [PROTO_5]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R2 R1 K14 ["hasInvalidCage"]
       34 DUPCLOSURE                       R2 K15 [PROTO_6]
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R3 K16 [PROTO_7]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R3 R1 K17 ["hasCages"]
       40 DUPCLOSURE                       R3 K18 [PROTO_8]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R3 R1 K19 ["missingOuterCage"]
       44 DUPCLOSURE                       R3 K20 [PROTO_9]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R3 R1 K21 ["missingInnerCage"]
       48 DUPCLOSURE                       R3 K22 [PROTO_10]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R3 R1 K23 ["hasFullCages"]
       52 DUPCLOSURE                       R3 K24 [PROTO_11]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R3 R1 K25 ["hasAnyCage"]
       56 DUPCLOSURE                       R3 K26 [PROTO_12]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R3 R1 K27 ["getAvatarFromMeshPart"]
       60 DUPCLOSURE                       R3 K28 [PROTO_13]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R3 R1 K29 ["isAvatar"]
       64 DUPCLOSURE                       R3 K30 [PROTO_14]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R3 R1 K31 ["isClothes"]
       68 DUPCLOSURE                       R3 K32 [PROTO_15]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R3 R1 K33 ["isLayeredClothingItem"]
       72 DUPCLOSURE                       R3 K34 [PROTO_16]
       73 DUPCLOSURE                       R4 K35 [PROTO_17]
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R4 R1 K36 ["getLegacyAccessoryHandle"]
       77 DUPCLOSURE                       R4 K37 [PROTO_18]
       78 SETTABLEKS                       R4 R1 K38 ["getMeshPartAccessoryHandle"]
       80 DUPCLOSURE                       R4 K39 [PROTO_19]
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R4 R1 K40 ["isLegacyAccessory"]
       84 DUPCLOSURE                       R4 K41 [PROTO_20]
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R4 R1 K42 ["isMeshPartAccessory"]
       88 DUPCLOSURE                       R4 K43 [PROTO_21]
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R4 R1 K44 ["getHandle"]
       92 DUPCLOSURE                       R4 K45 [PROTO_22]
       93 SETTABLEKS                       R4 R1 K46 ["isMeshPartWithSurfaceAppearance"]
       95 DUPCLOSURE                       R4 K47 [PROTO_23]
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R4 R1 K48 ["isPotentialLayeredClothingItem"]
       99 DUPCLOSURE                       R4 K49 [PROTO_24]
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R4 R1 K50 ["isFullyCagedCharacter"]
      103 DUPCLOSURE                       R4 K51 [PROTO_25]
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R4 R1 K52 ["isFullyCagedClothing"]
      107 RETURN                           R1 1
