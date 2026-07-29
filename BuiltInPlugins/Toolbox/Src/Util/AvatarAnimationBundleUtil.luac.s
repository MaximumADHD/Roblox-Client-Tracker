PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 MOVE                             R2 R0
        3 SETLIST                          R1 R2 1 [1]
        5 GETIMPORT                        R2 K2 [string.match]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K3 ["^(.*)Animation$"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+12]
       12 JUMPIFEQKS                       R2 K4 [""] ; [+10]
       14 JUMPIFEQ                         R2 R0 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R2
       20 GETIMPORT                        R3 K7 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R4 K0 ["R15Anim"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getBundlePartFolderNameVariants"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFEQKNIL                     R7 ; [+8]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K2 ["bundlePartContainerHasR15Anim"]
       15 MOVE                             R9 R7
       16 CALL                             R8 1 1
       17 JUMPIFNOT                        R8 ; [+1]
       18 RETURN                           R7 1
       19 FORGLOOP                         R2 2 ; [-14]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["getBundlePartFolderNameVariants"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 3
       26 FORGPREP                         R2
       27 GETTABLEKS                       R7 R0 K3 ["Name"]
       29 JUMPIFNOTEQ                      R7 R6 ; [+8]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K2 ["bundlePartContainerHasR15Anim"]
       34 MOVE                             R8 R0
       35 CALL                             R7 1 1
       36 JUMPIFNOT                        R7 ; [+1]
       37 RETURN                           R0 1
       38 FORGLOOP                         R2 2 ; [-12]
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R1 K1 ["GetChildren"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K2 ["Model"]
        8 NAMECALL                         R7 R6 K3 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+15]
       12 LOADK                            R9 K4 ["R15Anim"]
       13 NAMECALL                         R7 R6 K5 ["FindFirstChild"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+10]
       17 LOADK                            R10 K6 ["Folder"]
       18 NAMECALL                         R8 R7 K3 ["IsA"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+5]
       22 SETTABLEKS                       R1 R7 K7 ["Parent"]
       24 NAMECALL                         R8 R6 K8 ["Destroy"]
       26 CALL                             R8 1 0
       27 FORGLOOP                         R2 2 ; [-21]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagEnableUploadingAvatarAnimations"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagToolboxAnimationRemoveModelWrapper"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 4 0
       27 MOVE                             R4 R1
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+16]
       30 DUPCLOSURE                       R4 K10 [PROTO_0]
       31 SETTABLEKS                       R4 R3 K11 ["getBundlePartFolderNameVariants"]
       33 DUPCLOSURE                       R4 K12 [PROTO_1]
       34 SETTABLEKS                       R4 R3 K13 ["bundlePartContainerHasR15Anim"]
       36 DUPCLOSURE                       R4 K14 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R4 R3 K15 ["resolveBundlePartContainer"]
       40 MOVE                             R4 R2
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+3]
       43 DUPCLOSURE                       R4 K16 [PROTO_3]
       44 SETTABLEKS                       R4 R3 K17 ["transformBundleForUpload"]
       46 RETURN                           R3 1
