PROTO_0:
        0 DUPTABLE                         R2 K1 [{"TextPrompt"}]
        1 SETTABLEKS                       R0 R2 K0 ["TextPrompt"]
        3 JUMPIFEQKNIL                     R1 ; [+3]
        5 SETTABLEKS                       R1 R2 K2 ["JobId"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K3 ["GenerateAvatar2DPreviewAsync"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadAvatar2DPreviewAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Progress"]
        3 GETTABLEKS                       R3 R0 K1 ["PreviewModel"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R5 K1 [{"PreviewId"}]
        4 SETTABLEKS                       R0 R5 K0 ["PreviewId"]
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K2 ["GenerateAvatarAsync"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadGeneratedAvatarAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.HumanoidRigType.R15]
        4 NAMECALL                         R1 R1 K4 ["CreateHumanoidModelFromDescriptionAsync"]
        6 CALL                             R1 3 1
        7 LOADK                            R2 K5 ["GeneratedAvatar"]
        8 SETTABLEKS                       R2 R1 K6 ["Name"]
       10 GETTABLEKS                       R2 R1 K7 ["PrimaryPart"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+19]
       14 LOADK                            R4 K8 ["HumanoidRootPart"]
       15 NAMECALL                         R2 R1 K9 ["FindFirstChild"]
       17 CALL                             R2 2 1
       18 MOVE                             R4 R2
       19 JUMPIFNOT                        R4 ; [+4]
       20 LOADK                            R6 K10 ["BasePart"]
       21 NAMECALL                         R4 R2 K11 ["IsA"]
       23 CALL                             R4 2 1
       24 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       26 LOADK                            R5 K12 ["generated avatar model is missing HumanoidRootPart"]
       27 GETIMPORT                        R3 K14 [assert]
       29 CALL                             R3 2 0
       30 SETTABLEKS                       R2 R1 K7 ["PrimaryPart"]
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
       33 DUPCLOSURE                       R5 K15 [PROTO_0]
       34 CAPTURE                          VAL R0
       35 DUPCLOSURE                       R6 K16 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 DUPCLOSURE                       R7 K17 [PROTO_3]
       38 CAPTURE                          VAL R0
       39 DUPCLOSURE                       R8 K18 [PROTO_4]
       40 CAPTURE                          VAL R0
       41 DUPCLOSURE                       R9 K19 [PROTO_5]
       42 CAPTURE                          VAL R1
       43 DUPTABLE                         R10 K25 [{"generate2DPreviewAsync", "load2DPreviewAsync", "generate3DAvatarAsync", "load3DAvatarAsync", "createGeneratedAvatarModelAsync"}]
       44 SETTABLEKS                       R5 R10 K20 ["generate2DPreviewAsync"]
       46 SETTABLEKS                       R6 R10 K21 ["load2DPreviewAsync"]
       48 SETTABLEKS                       R7 R10 K22 ["generate3DAvatarAsync"]
       50 SETTABLEKS                       R8 R10 K23 ["load3DAvatarAsync"]
       52 SETTABLEKS                       R9 R10 K24 ["createGeneratedAvatarModelAsync"]
       54 GETTABLEKS                       R11 R3 K26 ["createContext"]
       56 MOVE                             R12 R10
       57 CALL                             R11 1 1
       58 RETURN                           R11 1
