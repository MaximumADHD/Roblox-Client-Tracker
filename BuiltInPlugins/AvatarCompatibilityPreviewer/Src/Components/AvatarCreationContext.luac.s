PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+20]
        3 GETTABLEKS                       R1 R0 K0 ["JobId"]
        5 JUMPIFEQKNIL                     R1 ; [+16]
        7 GETTABLEKS                       R1 R0 K0 ["JobId"]
        9 JUMPIFEQKS                       R1 K1 [""] ; [+12]
       11 GETTABLEKS                       R1 R0 K0 ["JobId"]
       13 SETUPVAL                         R1 0
       14 GETIMPORT                        R1 K3 [print]
       16 LOADK                            R2 K4 ["Avatar creation 2D job ID: %*"]
       17 GETUPVAL                         R4 0
       18 NAMECALL                         R2 R2 K5 ["format"]
       20 CALL                             R2 2 1
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"TextPrompt"}]
        1 SETTABLEKS                       R0 R2 K0 ["TextPrompt"]
        3 JUMPIFEQKNIL                     R1 ; [+3]
        5 SETTABLEKS                       R1 R2 K2 ["JobId"]
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+11]
       10 LOADNIL                          R3
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          REF R3
       13 GETUPVAL                         R5 1
       14 MOVE                             R7 R2
       15 MOVE                             R8 R4
       16 NAMECALL                         R5 R5 K3 ["GenerateAvatar2DPreviewAsync"]
       18 CALL                             R5 3 -1
       19 CLOSEUPVALS                      R3
       20 RETURN                           R5 -1
       21 GETUPVAL                         R3 1
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K3 ["GenerateAvatar2DPreviewAsync"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadAvatar2DPreviewAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+24]
        3 GETTABLEKS                       R1 R0 K0 ["JobId"]
        5 JUMPIFEQKNIL                     R1 ; [+20]
        7 GETTABLEKS                       R1 R0 K0 ["JobId"]
        9 JUMPIFEQKS                       R1 K1 [""] ; [+16]
       11 GETTABLEKS                       R1 R0 K0 ["JobId"]
       13 SETUPVAL                         R1 0
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETIMPORT                        R1 K3 [print]
       19 LOADK                            R2 K4 ["Avatar creation 3D job ID: %* (from 2D job ID: %*)"]
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 2
       22 NAMECALL                         R2 R2 K5 ["format"]
       24 CALL                             R2 3 1
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 3
       27 GETTABLEKS                       R2 R0 K6 ["Progress"]
       29 GETTABLEKS                       R3 R0 K7 ["PreviewModel"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R4 1
        7 DUPTABLE                         R6 K1 [{"PreviewId"}]
        8 SETTABLEKS                       R0 R6 K0 ["PreviewId"]
       10 MOVE                             R7 R3
       11 NAMECALL                         R4 R4 K2 ["GenerateAvatarAsync"]
       13 CALL                             R4 3 1
       14 MOVE                             R5 R4
       15 MOVE                             R6 R2
       16 CLOSEUPVALS                      R2
       17 RETURN                           R5 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadGeneratedAvatarAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["Locked"]
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.HumanoidRigType.R15]
        4 NAMECALL                         R1 R1 K4 ["CreateHumanoidModelFromDescriptionAsync"]
        6 CALL                             R1 3 1
        7 GETTABLEKS                       R2 R1 K5 ["PrimaryPart"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+19]
       11 LOADK                            R4 K6 ["HumanoidRootPart"]
       12 NAMECALL                         R2 R1 K7 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 MOVE                             R4 R2
       16 JUMPIFNOT                        R4 ; [+4]
       17 LOADK                            R6 K8 ["BasePart"]
       18 NAMECALL                         R4 R2 K9 ["IsA"]
       20 CALL                             R4 2 1
       21 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       23 LOADK                            R5 K10 ["generated avatar model is missing HumanoidRootPart"]
       24 GETIMPORT                        R3 K12 [assert]
       26 CALL                             R3 2 0
       27 SETTABLEKS                       R2 R1 K5 ["PrimaryPart"]
       29 GETUPVAL                         R2 1
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AvatarCreationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AvatarCompatibilityPreviewer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Flags"]
       39 GETTABLEKS                       R6 R6 K16 ["getFFlagDebugAvatarPreviewerJobIdToConsole"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K17 [PROTO_1]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 DUPCLOSURE                       R7 K18 [PROTO_2]
       46 CAPTURE                          VAL R0
       47 DUPCLOSURE                       R8 K19 [PROTO_4]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R0
       50 DUPCLOSURE                       R9 K20 [PROTO_5]
       51 CAPTURE                          VAL R0
       52 DUPCLOSURE                       R10 K21 [PROTO_6]
       53 DUPCLOSURE                       R11 K22 [PROTO_7]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R10
       56 DUPTABLE                         R12 K28 [{"generate2DPreviewAsync", "load2DPreviewAsync", "generate3DAvatarAsync", "load3DAvatarAsync", "createGeneratedAvatarModelAsync"}]
       57 SETTABLEKS                       R6 R12 K23 ["generate2DPreviewAsync"]
       59 SETTABLEKS                       R7 R12 K24 ["load2DPreviewAsync"]
       61 SETTABLEKS                       R8 R12 K25 ["generate3DAvatarAsync"]
       63 SETTABLEKS                       R9 R12 K26 ["load3DAvatarAsync"]
       65 SETTABLEKS                       R11 R12 K27 ["createGeneratedAvatarModelAsync"]
       67 GETTABLEKS                       R13 R3 K29 ["createContext"]
       69 MOVE                             R14 R12
       70 CALL                             R13 1 1
       71 RETURN                           R13 1
