PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 LOADK                            R7 K1 ["RBX_AvatarPreviewer_TestingAvatar"]
        6 NAMECALL                         R5 R4 K2 ["GetAttribute"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+3]
       10 NAMECALL                         R5 R4 K3 ["Destroy"]
       12 CALL                             R5 1 0
       13 FORGLOOP                         R0 2 ; [-9]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K4 ["_clearTestingAnimateScripts"]
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
       12 LOADK                            R8 K3 ["RBX_AvatarPreviewer_TestingAnimateScript"]
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
        5 LOADK                            R2 K1 ["StarterCharacter_Backup"]
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 2 1
        9 JUMPIFEQKNIL                     R0 ; [+14]
       11 LOADK                            R3 K3 ["RBX_AvatarPreview_TestingBackup"]
       12 NAMECALL                         R1 R0 K4 ["GetAttribute"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+8]
       16 LOADK                            R1 K5 ["StarterCharacter"]
       17 SETTABLEKS                       R1 R0 K6 ["Name"]
       19 LOADK                            R3 K3 ["RBX_AvatarPreview_TestingBackup"]
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
        8 LOADK                            R3 K2 ["Animate_Backup"]
        9 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIFEQKNIL                     R1 ; [+6]
       14 LOADK                            R4 K4 ["LocalScript"]
       15 NAMECALL                         R2 R1 K5 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 LOADK                            R4 K6 ["RBX_AvatarPreview_TestingBackup"]
       21 NAMECALL                         R2 R1 K7 ["GetAttribute"]
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+1]
       25 RETURN                           R0 0
       26 LOADK                            R2 K8 ["Animate"]
       27 SETTABLEKS                       R2 R1 K9 ["Name"]
       29 LOADK                            R4 K6 ["RBX_AvatarPreview_TestingBackup"]
       30 LOADNIL                          R5
       31 NAMECALL                         R2 R1 K10 ["SetAttribute"]
       33 CALL                             R2 3 0
       34 LOADK                            R4 K4 ["LocalScript"]
       35 NAMECALL                         R2 R1 K5 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIFNOT                        R2 ; [+13]
       39 LOADK                            R4 K11 ["RBX_AvatarPreview_WasEnabled"]
       40 NAMECALL                         R2 R1 K7 ["GetAttribute"]
       42 CALL                             R2 2 1
       43 LOADK                            R5 K11 ["RBX_AvatarPreview_WasEnabled"]
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
       24 LOADK                            R4 K6 ["Animate_Backup"]
       25 SETTABLEKS                       R4 R3 K7 ["Name"]
       27 LOADK                            R6 K8 ["RBX_AvatarPreview_TestingBackup"]
       28 LOADB                            R7 1
       29 NAMECALL                         R4 R3 K9 ["SetAttribute"]
       31 CALL                             R4 3 0
       32 LOADK                            R6 K10 ["RBX_AvatarPreview_WasEnabled"]
       33 GETTABLEKS                       R7 R3 K11 ["Enabled"]
       35 NAMECALL                         R4 R3 K9 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K11 ["Enabled"]
       41 NAMECALL                         R4 R2 K12 ["Clone"]
       43 CALL                             R4 1 1
       44 LOADK                            R7 K13 ["RBX_AvatarPreviewer_TestingAnimateScript"]
       45 LOADB                            R8 1
       46 NAMECALL                         R5 R4 K9 ["SetAttribute"]
       48 CALL                             R5 3 0
       49 SETTABLEKS                       R1 R4 K14 ["Parent"]
       51 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["WorldModel"]
        6 LOADK                            R5 K0 ["Humanoid"]
        7 NAMECALL                         R3 R3 K1 ["FindFirstChildOfClass"]
        9 CALL                             R3 2 1
       10 JUMPIFEQKNIL                     R2 ; [+3]
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R4 R3 K3 ["WalkSpeed"]
       17 SETTABLEKS                       R4 R2 K3 ["WalkSpeed"]
       19 GETTABLEKS                       R4 R3 K4 ["JumpHeight"]
       21 SETTABLEKS                       R4 R2 K4 ["JumpHeight"]
       23 GETTABLEKS                       R4 R3 K5 ["JumpPower"]
       25 SETTABLEKS                       R4 R2 K5 ["JumpPower"]
       27 GETTABLEKS                       R4 R3 K6 ["NameDisplayDistance"]
       29 SETTABLEKS                       R4 R2 K6 ["NameDisplayDistance"]
       31 GETTABLEKS                       R4 R3 K7 ["HealthDisplayDistance"]
       33 SETTABLEKS                       R4 R2 K7 ["HealthDisplayDistance"]
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["clearTestingAvatars"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 1
        5 LOADK                            R5 K1 ["StarterCharacter"]
        6 NAMECALL                         R3 R3 K2 ["FindFirstChild"]
        8 CALL                             R3 2 1
        9 JUMPIFEQKNIL                     R3 ; [+9]
       11 LOADK                            R4 K3 ["StarterCharacter_Backup"]
       12 SETTABLEKS                       R4 R3 K4 ["Name"]
       14 LOADK                            R6 K5 ["RBX_AvatarPreview_TestingBackup"]
       15 LOADB                            R7 1
       16 NAMECALL                         R4 R3 K6 ["SetAttribute"]
       18 CALL                             R4 3 0
       19 GETUPVAL                         R5 2
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R1
       24 CALL                             R4 1 1
       25 JUMP                             ; [+3]
       26 NAMECALL                         R4 R1 K7 ["Clone"]
       28 CALL                             R4 1 1
       29 LOADK                            R7 K8 ["RBX_AvatarPreviewer_TestingAvatar"]
       30 LOADB                            R8 1
       31 NAMECALL                         R5 R4 K6 ["SetAttribute"]
       33 CALL                             R5 3 0
       34 LOADK                            R5 K1 ["StarterCharacter"]
       35 SETTABLEKS                       R5 R4 K4 ["Name"]
       37 GETUPVAL                         R5 1
       38 SETTABLEKS                       R5 R4 K9 ["Parent"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K10 ["_replaceAnimateScript"]
       43 MOVE                             R6 R1
       44 CALL                             R5 1 0
       45 LOADK                            R7 K11 ["Humanoid"]
       46 NAMECALL                         R5 R4 K12 ["FindFirstChildOfClass"]
       48 CALL                             R5 2 1
       49 GETTABLEKS                       R6 R2 K13 ["WorldModel"]
       51 LOADK                            R8 K11 ["Humanoid"]
       52 NAMECALL                         R6 R6 K12 ["FindFirstChildOfClass"]
       54 CALL                             R6 2 1
       55 JUMPIFEQKNIL                     R5 ; [+24]
       57 JUMPIFNOTEQKNIL                  R6 ; [+2]
       59 JUMP                             ; [+20]
       60 GETTABLEKS                       R7 R6 K14 ["WalkSpeed"]
       62 SETTABLEKS                       R7 R5 K14 ["WalkSpeed"]
       64 GETTABLEKS                       R7 R6 K15 ["JumpHeight"]
       66 SETTABLEKS                       R7 R5 K15 ["JumpHeight"]
       68 GETTABLEKS                       R7 R6 K16 ["JumpPower"]
       70 SETTABLEKS                       R7 R5 K16 ["JumpPower"]
       72 GETTABLEKS                       R7 R6 K17 ["NameDisplayDistance"]
       74 SETTABLEKS                       R7 R5 K17 ["NameDisplayDistance"]
       76 GETTABLEKS                       R7 R6 K18 ["HealthDisplayDistance"]
       78 SETTABLEKS                       R7 R5 K18 ["HealthDisplayDistance"]
       80 GETTABLEKS                       R5 R0 K19 ["startPlaySolo"]
       82 CALL                             R5 0 0
       83 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterPlayer"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R4 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K10 ["Src"]
       24 GETTABLEKS                       R5 R6 K12 ["Components"]
       26 GETTABLEKS                       R4 R5 K13 ["PlacesServiceContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R1 K10 ["Src"]
       33 GETTABLEKS                       R6 R7 K14 ["Util"]
       35 GETTABLEKS                       R5 R6 K15 ["cloneWithAccessories"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R8 R1 K10 ["Src"]
       42 GETTABLEKS                       R7 R8 K16 ["Flags"]
       44 GETTABLEKS                       R6 R7 K17 ["getFFlagAvatarPreviewerTestWithCustomAssets"]
       46 CALL                             R5 1 1
       47 NEWTABLE                         R6 8 0
       49 DUPCLOSURE                       R7 K18 [PROTO_0]
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R7 R6 K19 ["clearTestingAvatars"]
       54 DUPCLOSURE                       R7 K20 [PROTO_1]
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R7 R6 K21 ["_clearTestingAnimateScripts"]
       58 DUPCLOSURE                       R7 K22 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R7 R6 K23 ["reset"]
       63 DUPCLOSURE                       R7 K24 [PROTO_3]
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R7 R6 K25 ["_resetAnimateScript"]
       67 DUPCLOSURE                       R7 K26 [PROTO_4]
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R7 R6 K27 ["_replaceAnimateScript"]
       71 DUPCLOSURE                       R7 K28 [PROTO_5]
       72 DUPCLOSURE                       R8 K29 [PROTO_6]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R8 R6 K30 ["test"]
       79 RETURN                           R6 1
