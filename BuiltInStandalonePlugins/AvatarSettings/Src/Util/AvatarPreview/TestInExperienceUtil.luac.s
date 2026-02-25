PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["TestInExperienceUtil.clearTestingAvatars should only be called when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K3 ["GetChildren"]
       11 CALL                             R0 1 3
       12 FORGPREP                         R0
       13 LOADK                            R7 K4 ["RBX_AvatarPreviewer_TestingAvatar_AvatarSettings"]
       14 NAMECALL                         R5 R4 K5 ["GetAttribute"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+3]
       18 NAMECALL                         R5 R4 K6 ["Destroy"]
       20 CALL                             R5 1 0
       21 FORGLOOP                         R0 2 ; [-9]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R0 R1 K7 ["_clearTestingAnimateScripts"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StarterCharacterScripts"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 NAMECALL                         R1 R0 K2 ["GetChildren"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K3 ["RBX_AvatarPreviewer_TestingAnimateScript_AvatarSettings"]
       13 NAMECALL                         R6 R5 K4 ["GetAttribute"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+3]
       17 NAMECALL                         R6 R5 K5 ["Destroy"]
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-9]
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clearTestingAvatars"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["StarterCharacter_Backup_AvatarSettings"]
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 2 1
        9 JUMPIFEQKNIL                     R0 ; [+14]
       11 LOADK                            R3 K3 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       12 NAMECALL                         R1 R0 K4 ["GetAttribute"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+8]
       16 LOADK                            R1 K5 ["StarterCharacter"]
       17 SETTABLEKS                       R1 R0 K6 ["Name"]
       19 LOADK                            R3 K3 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       20 LOADNIL                          R4
       21 NAMECALL                         R1 R0 K7 ["SetAttribute"]
       23 CALL                             R1 3 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K8 ["_resetAnimateScript"]
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StarterCharacterScripts"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R3 K2 ["Animate_Backup_AvatarSettings"]
        9 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIFEQKNIL                     R1 ; [+6]
       14 LOADK                            R4 K4 ["LocalScript"]
       15 NAMECALL                         R2 R1 K5 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 LOADK                            R4 K6 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       21 NAMECALL                         R2 R1 K7 ["GetAttribute"]
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+1]
       25 RETURN                           R0 0
       26 LOADK                            R2 K8 ["Animate"]
       27 SETTABLEKS                       R2 R1 K9 ["Name"]
       29 LOADK                            R4 K6 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       30 LOADNIL                          R5
       31 NAMECALL                         R2 R1 K10 ["SetAttribute"]
       33 CALL                             R2 3 0
       34 LOADK                            R4 K4 ["LocalScript"]
       35 NAMECALL                         R2 R1 K5 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIFNOT                        R2 ; [+13]
       39 LOADK                            R4 K11 ["RBX_AvatarPreview_WasEnabled_AvatarSettings"]
       40 NAMECALL                         R2 R1 K7 ["GetAttribute"]
       42 CALL                             R2 2 1
       43 LOADK                            R5 K11 ["RBX_AvatarPreview_WasEnabled_AvatarSettings"]
       44 LOADNIL                          R6
       45 NAMECALL                         R3 R1 K10 ["SetAttribute"]
       47 CALL                             R3 3 0
       48 JUMPIFNOT                        R2 ; [+3]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R1 K12 ["Enabled"]
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StarterCharacterScripts"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R4 K2 ["Animate"]
        9 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 LOADK                            R5 K2 ["Animate"]
       15 NAMECALL                         R3 R1 K3 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+22]
       19 LOADK                            R6 K4 ["LocalScript"]
       20 NAMECALL                         R4 R3 K5 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+17]
       24 LOADK                            R4 K6 ["Animate_Backup_AvatarSettings"]
       25 SETTABLEKS                       R4 R3 K7 ["Name"]
       27 LOADK                            R6 K8 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       28 LOADB                            R7 1
       29 NAMECALL                         R4 R3 K9 ["SetAttribute"]
       31 CALL                             R4 3 0
       32 LOADK                            R6 K10 ["RBX_AvatarPreview_WasEnabled_AvatarSettings"]
       33 GETTABLEKS                       R7 R3 K11 ["Enabled"]
       35 NAMECALL                         R4 R3 K9 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K11 ["Enabled"]
       41 NAMECALL                         R4 R2 K12 ["Clone"]
       43 CALL                             R4 1 1
       44 LOADK                            R7 K13 ["RBX_AvatarPreviewer_TestingAnimateScript_AvatarSettings"]
       45 LOADB                            R8 1
       46 NAMECALL                         R5 R4 K9 ["SetAttribute"]
       48 CALL                             R5 3 0
       49 SETTABLEKS                       R1 R4 K14 ["Parent"]
       51 NAMECALL                         R5 R2 K15 ["Destroy"]
       53 CALL                             R5 1 0
       54 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["TestInExperienceUtil.getValidTestingAvatar should only be called when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["ActiveInstance"]
       11 JUMPIFNOT                        R0 ; [+5]
       12 LOADK                            R3 K4 ["Model"]
       13 NAMECALL                         R1 R0 K5 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIF                           R1 ; [+2]
       17 LOADNIL                          R1
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K6 ["Parent"]
       21 JUMPIFNOT                        R1 ; [+7]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K7 ["AvatarPreviewFolderTag"]
       25 NAMECALL                         R2 R1 K8 ["HasTag"]
       27 CALL                             R2 2 1
       28 JUMPIF                           R2 ; [+2]
       29 LOADNIL                          R2
       30 RETURN                           R2 1
       31 LOADK                            R4 K9 ["Humanoid"]
       32 NAMECALL                         R2 R0 K10 ["FindFirstChild"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+5]
       36 LOADK                            R5 K9 ["Humanoid"]
       37 NAMECALL                         R3 R2 K5 ["IsA"]
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+2]
       41 LOADNIL                          R3
       42 RETURN                           R3 1
       43 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["TestInExperienceUtil.test should only be called when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K3 ["getValidTestingAvatar"]
       11 CALL                             R0 0 1
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K4 ["clearTestingAvatars"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 2
       19 LOADK                            R3 K5 ["StarterCharacter"]
       20 NAMECALL                         R1 R1 K6 ["FindFirstChild"]
       22 CALL                             R1 2 1
       23 JUMPIFEQKNIL                     R1 ; [+9]
       25 LOADK                            R2 K7 ["StarterCharacter_Backup_AvatarSettings"]
       26 SETTABLEKS                       R2 R1 K8 ["Name"]
       28 LOADK                            R4 K9 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       29 LOADB                            R5 1
       30 NAMECALL                         R2 R1 K10 ["SetAttribute"]
       32 CALL                             R2 3 0
       33 NAMECALL                         R2 R0 K11 ["Clone"]
       35 CALL                             R2 1 1
       36 LOADK                            R5 K12 ["RBX_AvatarPreviewer_TestingAvatar_AvatarSettings"]
       37 LOADB                            R6 1
       38 NAMECALL                         R3 R2 K10 ["SetAttribute"]
       40 CALL                             R3 3 0
       41 LOADK                            R3 K5 ["StarterCharacter"]
       42 SETTABLEKS                       R3 R2 K8 ["Name"]
       44 GETUPVAL                         R3 2
       45 SETTABLEKS                       R3 R2 K13 ["Parent"]
       47 LOADK                            R5 K14 ["Humanoid"]
       48 NAMECALL                         R3 R2 K15 ["FindFirstChildWhichIsA"]
       50 CALL                             R3 2 1
       51 JUMPIF                           R3 ; [+4]
       52 GETIMPORT                        R4 K17 [error]
       54 LOADK                            R5 K18 ["Selected avatar does not have a Humanoid"]
       55 CALL                             R4 1 0
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K19 ["_replaceAnimateScript"]
       59 MOVE                             R5 R2
       60 CALL                             R4 1 0
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R6 R7 K20 ["avatarRules"]
       64 CALL                             R6 0 -1
       65 NAMECALL                         R4 R3 K21 ["ApplyAvatarRules"]
       67 CALL                             R4 -1 0
       68 GETUPVAL                         R5 4
       69 GETTABLEKS                       R4 R5 K22 ["setCollisionBoxTransparency"]
       71 MOVE                             R5 R3
       72 LOADB                            R6 0
       73 CALL                             R4 2 0
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R4 R5 K23 ["StartPlaySolo"]
       77 CALL                             R4 0 0
       78 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["TestInExperienceUtil.selectTargetInstance should only be called when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 1
       10 MOVE                             R2 R0
       11 SETLIST                          R1 R2 1 [1]
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K3 ["Set"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Selection"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StarterPlayer"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R7 R0 K11 ["Src"]
       23 GETTABLEKS                       R6 R7 K12 ["Util"]
       25 GETTABLEKS                       R5 R6 K13 ["AvatarPreview"]
       27 GETTABLEKS                       R4 R5 K14 ["AvatarPreviewConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K10 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Util"]
       36 GETTABLEKS                       R6 R7 K15 ["Interfaces"]
       38 GETTABLEKS                       R5 R6 K16 ["PlacesServiceInterface"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K10 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Src"]
       45 GETTABLEKS                       R8 R9 K12 ["Util"]
       47 GETTABLEKS                       R7 R8 K13 ["AvatarPreview"]
       49 GETTABLEKS                       R6 R7 K17 ["applyAvatarRulesUtil"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K10 [require]
       54 GETTABLEKS                       R11 R0 K11 ["Src"]
       56 GETTABLEKS                       R10 R11 K12 ["Util"]
       58 GETTABLEKS                       R9 R10 K18 ["BridgingFiles"]
       60 GETTABLEKS                       R8 R9 K19 ["AssetDmFiles"]
       62 GETTABLEKS                       R7 R8 K20 ["assetDmUtils"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K10 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Src"]
       69 GETTABLEKS                       R9 R10 K21 ["Flags"]
       71 GETTABLEKS                       R8 R9 K22 ["getFFlagPreviewToolbar"]
       73 CALL                             R7 1 1
       74 NEWTABLE                         R8 8 0
       76 DUPCLOSURE                       R9 K23 [PROTO_0]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R9 R8 K24 ["clearTestingAvatars"]
       82 DUPCLOSURE                       R9 K25 [PROTO_1]
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R9 R8 K26 ["_clearTestingAnimateScripts"]
       86 DUPCLOSURE                       R9 K27 [PROTO_2]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R9 R8 K28 ["reset"]
       91 DUPCLOSURE                       R9 K29 [PROTO_3]
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R9 R8 K30 ["_resetAnimateScript"]
       95 DUPCLOSURE                       R9 K31 [PROTO_4]
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R9 R8 K32 ["_replaceAnimateScript"]
       99 DUPCLOSURE                       R9 K33 [PROTO_5]
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R9 R8 K34 ["getValidTestingAvatar"]
      105 DUPCLOSURE                       R9 K35 [PROTO_6]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R9 R8 K36 ["test"]
      114 DUPCLOSURE                       R9 K37 [PROTO_7]
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R9 R8 K38 ["selectTargetInstance"]
      119 RETURN                           R8 1
