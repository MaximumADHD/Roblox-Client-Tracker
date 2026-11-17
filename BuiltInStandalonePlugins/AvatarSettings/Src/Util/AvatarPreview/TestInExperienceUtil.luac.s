PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 LOADK                            R7 K1 ["RBX_AvatarPreviewer_TestingAvatar_AvatarSettings"]
        6 NAMECALL                         R5 R4 K2 ["GetAttribute"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+3]
       10 NAMECALL                         R5 R4 K3 ["Destroy"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 ; [-9]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K4 ["_clearTestingAnimateScripts"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearTestingAvatars"]
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
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K8 ["_resetAnimateScript"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ActiveInstance"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 LOADK                            R3 K1 ["Model"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K3 ["Parent"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["AvatarPreviewFolderTag"]
       17 NAMECALL                         R2 R1 K5 ["HasTag"]
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+2]
       21 LOADNIL                          R2
       22 RETURN                           R2 1
       23 LOADK                            R4 K6 ["Humanoid"]
       24 NAMECALL                         R2 R0 K7 ["FindFirstChild"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+5]
       28 LOADK                            R5 K6 ["Humanoid"]
       29 NAMECALL                         R3 R2 K2 ["IsA"]
       31 CALL                             R3 2 1
       32 JUMPIF                           R3 ; [+2]
       33 LOADNIL                          R3
       34 RETURN                           R3 1
       35 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getValidTestingAvatar"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["clearTestingAvatars"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 1
       11 LOADK                            R3 K2 ["StarterCharacter"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 JUMPIFEQKNIL                     R1 ; [+9]
       17 LOADK                            R2 K4 ["StarterCharacter_Backup_AvatarSettings"]
       18 SETTABLEKS                       R2 R1 K5 ["Name"]
       20 LOADK                            R4 K6 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
       21 LOADB                            R5 1
       22 NAMECALL                         R2 R1 K7 ["SetAttribute"]
       24 CALL                             R2 3 0
       25 NAMECALL                         R2 R0 K8 ["Clone"]
       27 CALL                             R2 1 1
       28 LOADK                            R5 K9 ["RBX_AvatarPreviewer_TestingAvatar_AvatarSettings"]
       29 LOADB                            R6 1
       30 NAMECALL                         R3 R2 K7 ["SetAttribute"]
       32 CALL                             R3 3 0
       33 LOADK                            R3 K2 ["StarterCharacter"]
       34 SETTABLEKS                       R3 R2 K5 ["Name"]
       36 GETUPVAL                         R3 1
       37 SETTABLEKS                       R3 R2 K10 ["Parent"]
       39 LOADK                            R5 K11 ["Humanoid"]
       40 NAMECALL                         R3 R2 K12 ["FindFirstChildWhichIsA"]
       42 CALL                             R3 2 1
       43 JUMPIF                           R3 ; [+4]
       44 GETIMPORT                        R4 K14 [error]
       46 LOADK                            R5 K15 ["Selected avatar does not have a Humanoid"]
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K16 ["_replaceAnimateScript"]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 0
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K17 ["avatarRules"]
       56 CALL                             R6 0 -1
       57 NAMECALL                         R4 R3 K18 ["ApplyAvatarRules"]
       59 CALL                             R4 -1 0
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K19 ["setCollisionBoxTransparency"]
       63 MOVE                             R5 R3
       64 LOADB                            R6 0
       65 CALL                             R4 2 0
       66 GETUPVAL                         R4 4
       67 GETTABLEKS                       R4 R4 K20 ["StartPlaySolo"]
       69 CALL                             R4 0 0
       70 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 1
        2 MOVE                             R2 R0
        3 SETLIST                          R1 R2 1 [1]
        5 GETUPVAL                         R2 0
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["Set"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["AvatarPreview"]
       27 GETTABLEKS                       R4 R4 K14 ["AvatarPreviewConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K10 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K15 ["Interfaces"]
       38 GETTABLEKS                       R5 R5 K16 ["PlacesServiceInterface"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K10 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["AvatarPreview"]
       49 GETTABLEKS                       R6 R6 K17 ["applyAvatarRulesUtil"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K10 [require]
       54 GETTABLEKS                       R7 R0 K11 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Util"]
       58 GETTABLEKS                       R7 R7 K18 ["BridgingFiles"]
       60 GETTABLEKS                       R7 R7 K19 ["AssetDmFiles"]
       62 GETTABLEKS                       R7 R7 K20 ["assetDmUtils"]
       64 CALL                             R6 1 1
       65 NEWTABLE                         R7 8 0
       67 DUPCLOSURE                       R8 K21 [PROTO_0]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 SETTABLEKS                       R8 R7 K22 ["clearTestingAvatars"]
       72 DUPCLOSURE                       R8 K23 [PROTO_1]
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R8 R7 K24 ["_clearTestingAnimateScripts"]
       76 DUPCLOSURE                       R8 K25 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R8 R7 K26 ["reset"]
       81 DUPCLOSURE                       R8 K27 [PROTO_3]
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R8 R7 K28 ["_resetAnimateScript"]
       85 DUPCLOSURE                       R8 K29 [PROTO_4]
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R8 R7 K30 ["_replaceAnimateScript"]
       89 DUPCLOSURE                       R8 K31 [PROTO_5]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R8 R7 K32 ["getValidTestingAvatar"]
       94 DUPCLOSURE                       R8 K33 [PROTO_6]
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R8 R7 K34 ["test"]
      102 DUPCLOSURE                       R8 K35 [PROTO_7]
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R8 R7 K36 ["selectTargetInstance"]
      106 RETURN                           R7 1
