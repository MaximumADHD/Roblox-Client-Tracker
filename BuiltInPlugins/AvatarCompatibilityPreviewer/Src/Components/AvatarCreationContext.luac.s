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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETIMPORT                        R2 K2 [task.wait]
        5 LOADN                            R3 1
        6 CALL                             R2 1 0
        7 LOADK                            R2 K3 ["mock-avatar-creation-preview"]
        8 RETURN                           R2 1
        9 DUPTABLE                         R2 K5 [{"TextPrompt"}]
       10 SETTABLEKS                       R0 R2 K4 ["TextPrompt"]
       12 JUMPIFEQKNIL                     R1 ; [+3]
       14 SETTABLEKS                       R1 R2 K6 ["JobId"]
       16 GETUPVAL                         R3 1
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+11]
       19 LOADNIL                          R3
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          REF R3
       22 GETUPVAL                         R5 2
       23 MOVE                             R7 R2
       24 MOVE                             R8 R4
       25 NAMECALL                         R5 R5 K7 ["GenerateAvatar2DPreviewAsync"]
       27 CALL                             R5 3 -1
       28 CLOSEUPVALS                      R3
       29 RETURN                           R5 -1
       30 GETUPVAL                         R3 2
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R3 K7 ["GenerateAvatar2DPreviewAsync"]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CreateEditableImage"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R3 K3 [Vector2.new]
        6 LOADN                            R4 0
        7 LOADN                            R5 0
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R0 K4 ["Size"]
       11 GETIMPORT                        R5 K7 [Color3.fromRGB]
       13 LOADN                            R6 186
       14 LOADN                            R7 196
       15 LOADN                            R8 210
       16 CALL                             R5 3 1
       17 LOADN                            R6 0
       18 GETIMPORT                        R7 K11 [Enum.ImageCombineType.Overwrite]
       20 NAMECALL                         R1 R0 K12 ["DrawRectangle"]
       22 CALL                             R1 6 0
       23 GETIMPORT                        R3 K3 [Vector2.new]
       25 GETTABLEKS                       R5 R0 K4 ["Size"]
       27 GETTABLEKS                       R5 R5 K14 ["X"]
       29 MULK                             R4 R5 K13 [0.2]
       30 GETTABLEKS                       R6 R0 K4 ["Size"]
       32 GETTABLEKS                       R6 R6 K16 ["Y"]
       34 MULK                             R5 R6 K15 [0.15]
       35 CALL                             R3 2 1
       36 GETIMPORT                        R4 K3 [Vector2.new]
       38 GETTABLEKS                       R6 R0 K4 ["Size"]
       40 GETTABLEKS                       R6 R6 K14 ["X"]
       42 MULK                             R5 R6 K17 [0.6]
       43 GETTABLEKS                       R7 R0 K4 ["Size"]
       45 GETTABLEKS                       R7 R7 K16 ["Y"]
       47 MULK                             R6 R7 K18 [0.7]
       48 CALL                             R4 2 1
       49 GETIMPORT                        R5 K7 [Color3.fromRGB]
       51 LOADN                            R6 92
       52 LOADN                            R7 108
       53 LOADN                            R8 132
       54 CALL                             R5 3 1
       55 LOADN                            R6 0
       56 GETIMPORT                        R7 K11 [Enum.ImageCombineType.Overwrite]
       58 NAMECALL                         R1 R0 K12 ["DrawRectangle"]
       60 CALL                             R1 6 0
       61 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 2
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K0 ["LoadAvatar2DPreviewAsync"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"Id", "StageName", "Status"}]
        1 GETTABLEKS                       R2 R0 K4 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K5 ["stage_name"]
        7 SETTABLEKS                       R2 R1 K1 ["StageName"]
        9 GETTABLEKS                       R2 R0 K6 ["status"]
       11 SETTABLEKS                       R2 R1 K2 ["Status"]
       13 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"Text", "Node", "AtSeconds"}]
        1 GETTABLEKS                       R2 R0 K4 ["text"]
        3 SETTABLEKS                       R2 R1 K0 ["Text"]
        5 GETTABLEKS                       R2 R0 K5 ["node"]
        7 SETTABLEKS                       R2 R1 K1 ["Node"]
        9 GETTABLEKS                       R2 R0 K6 ["at_seconds"]
       11 SETTABLEKS                       R2 R1 K2 ["AtSeconds"]
       13 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K8 [{"Progress", "JobId", "Step", "PreviewModel", "PlanPending", "WeightedProgressUpper", "Nodes", "Thoughts"}]
        1 GETTABLEKS                       R2 R0 K0 ["Progress"]
        3 SETTABLEKS                       R2 R1 K0 ["Progress"]
        5 GETTABLEKS                       R2 R0 K1 ["JobId"]
        7 SETTABLEKS                       R2 R1 K1 ["JobId"]
        9 GETTABLEKS                       R2 R0 K2 ["Step"]
       11 SETTABLEKS                       R2 R1 K2 ["Step"]
       13 GETTABLEKS                       R2 R0 K3 ["PreviewModel"]
       15 SETTABLEKS                       R2 R1 K3 ["PreviewModel"]
       17 GETTABLEKS                       R2 R0 K9 ["plan_pending"]
       19 SETTABLEKS                       R2 R1 K4 ["PlanPending"]
       21 GETTABLEKS                       R2 R0 K10 ["weighted_progress_upper"]
       23 SETTABLEKS                       R2 R1 K5 ["WeightedProgressUpper"]
       25 GETTABLEKS                       R3 R0 K11 ["nodes"]
       27 JUMPIFEQKNIL                     R3 ; [+9]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K12 ["map"]
       32 GETTABLEKS                       R3 R0 K11 ["nodes"]
       34 DUPCLOSURE                       R4 K13 [PROTO_4]
       35 CALL                             R2 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K6 ["Nodes"]
       40 GETTABLEKS                       R3 R0 K14 ["thoughts"]
       42 JUMPIFEQKNIL                     R3 ; [+9]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K12 ["map"]
       47 GETTABLEKS                       R3 R0 K14 ["thoughts"]
       49 DUPCLOSURE                       R4 K15 [PROTO_5]
       50 CALL                             R2 2 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R1 K7 ["Thoughts"]
       55 RETURN                           R1 1

PROTO_7:
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
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+33]
        3 GETIMPORT                        R2 K1 [require]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Src"]
        8 GETTABLEKS                       R3 R3 K3 ["Util"]
       10 GETTABLEKS                       R3 R3 K4 ["AvatarCreationMockRun"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K1 [require]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K2 ["Src"]
       18 GETTABLEKS                       R4 R4 K5 ["Resources"]
       20 GETTABLEKS                       R4 R4 K6 ["AvatarCreationMockSnapshots"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["createTemplateBody"]
       26 CALL                             R4 0 1
       27 GETTABLEKS                       R5 R2 K8 ["run"]
       29 MOVE                             R6 R3
       30 MOVE                             R7 R1
       31 MOVE                             R8 R4
       32 CALL                             R5 3 0
       33 LOADK                            R5 K9 ["mock-avatar-creation-generation"]
       34 LOADK                            R6 K10 ["mock-avatar-creation-job"]
       35 RETURN                           R5 2
       36 LOADNIL                          R2
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          REF R2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U4
       43 GETUPVAL                         R4 5
       44 DUPTABLE                         R6 K12 [{"PreviewId"}]
       45 SETTABLEKS                       R0 R6 K11 ["PreviewId"]
       47 MOVE                             R7 R3
       48 NAMECALL                         R4 R4 K13 ["GenerateAvatarAsync"]
       50 CALL                             R4 3 1
       51 MOVE                             R5 R4
       52 MOVE                             R6 R2
       53 CLOSEUPVALS                      R2
       54 RETURN                           R5 2

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["HumanoidDescription"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K4 ["LoadGeneratedAvatarAsync"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createTemplateBody"]
        6 CALL                             R1 0 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 2
        9 MOVE                             R3 R0
       10 GETIMPORT                        R4 K4 [Enum.HumanoidRigType.R15]
       12 NAMECALL                         R1 R1 K5 ["CreateHumanoidModelFromDescriptionAsync"]
       14 CALL                             R1 3 1
       15 GETTABLEKS                       R2 R1 K6 ["PrimaryPart"]
       17 JUMPIFNOTEQKNIL                  R2 ; [+19]
       19 LOADK                            R4 K7 ["HumanoidRootPart"]
       20 NAMECALL                         R2 R1 K8 ["FindFirstChild"]
       22 CALL                             R2 2 1
       23 MOVE                             R4 R2
       24 JUMPIFNOT                        R4 ; [+4]
       25 LOADK                            R6 K9 ["BasePart"]
       26 NAMECALL                         R4 R2 K10 ["IsA"]
       28 CALL                             R4 2 1
       29 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       31 LOADK                            R5 K11 ["generated avatar model is missing HumanoidRootPart"]
       32 GETIMPORT                        R3 K13 [assert]
       34 CALL                             R3 2 0
       35 SETTABLEKS                       R2 R1 K6 ["PrimaryPart"]
       37 GETUPVAL                         R2 3
       38 MOVE                             R3 R1
       39 CALL                             R2 1 0
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["AvatarCreationService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Players"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AvatarCompatibilityPreviewer"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["Dash"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K12 ["Packages"]
       36 GETTABLEKS                       R6 R6 K14 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R3 K15 ["Src"]
       43 GETTABLEKS                       R7 R7 K16 ["Util"]
       45 GETTABLEKS                       R7 R7 K17 ["AutoSetupUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R3 K15 ["Src"]
       52 GETTABLEKS                       R8 R8 K18 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K11 [require]
       57 GETTABLEKS                       R9 R3 K15 ["Src"]
       59 GETTABLEKS                       R9 R9 K19 ["Flags"]
       61 GETTABLEKS                       R9 R9 K20 ["getFFlagDebugAvatarPreviewerJobIdToConsole"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K11 [require]
       66 GETTABLEKS                       R10 R3 K15 ["Src"]
       68 GETTABLEKS                       R10 R10 K19 ["Flags"]
       70 GETTABLEKS                       R10 R10 K21 ["getFFlagDebugAvatarPreviewerMockAvatarCreation"]
       72 CALL                             R9 1 1
       73 DUPCLOSURE                       R10 K22 [PROTO_1]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R11 K23 [PROTO_2]
       78 CAPTURE                          VAL R0
       79 DUPCLOSURE                       R12 K24 [PROTO_3]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R1
       83 DUPCLOSURE                       R13 K25 [PROTO_6]
       84 CAPTURE                          VAL R4
       85 DUPCLOSURE                       R14 K26 [PROTO_8]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R1
       92 DUPCLOSURE                       R15 K27 [PROTO_9]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R1
       95 DUPCLOSURE                       R16 K28 [PROTO_10]
       96 DUPCLOSURE                       R17 K29 [PROTO_11]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R16
      101 DUPTABLE                         R18 K35 [{"generate2DPreviewAsync", "load2DPreviewAsync", "generate3DAvatarAsync", "load3DAvatarAsync", "createGeneratedAvatarModelAsync"}]
      102 SETTABLEKS                       R10 R18 K30 ["generate2DPreviewAsync"]
      104 SETTABLEKS                       R12 R18 K31 ["load2DPreviewAsync"]
      106 SETTABLEKS                       R14 R18 K32 ["generate3DAvatarAsync"]
      108 SETTABLEKS                       R15 R18 K33 ["load3DAvatarAsync"]
      110 SETTABLEKS                       R17 R18 K34 ["createGeneratedAvatarModelAsync"]
      112 GETTABLEKS                       R19 R5 K36 ["createContext"]
      114 MOVE                             R20 R18
      115 CALL                             R19 1 1
      116 RETURN                           R19 1
