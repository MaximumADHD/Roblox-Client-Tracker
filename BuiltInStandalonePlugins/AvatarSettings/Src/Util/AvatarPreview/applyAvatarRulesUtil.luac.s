PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKS                       R1 K0 ["Movement"] ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["terminate"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 MOVE                             R3 R1
        5 JUMPIFNOTEQKNIL                  R3 ; [+19]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["avatarCollisionRules"]
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+13]
       12 LOADB                            R5 0
       13 GETUPVAL                         R6 1
       14 JUMPIFNOTEQKS                    R6 K2 ["Movement"] ; [+9]
       16 GETTABLEKS                       R6 R4 K3 ["CollisionMode"]
       18 GETIMPORT                        R7 K7 [Enum.AvatarSettingsCollisionMode.Default]
       20 JUMPIFNOTEQ                      R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 MOVE                             R3 R5
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R4 R7 K8 ["CollisionBoxPartNames"]
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 MOVE                             R11 R8
       32 LOADB                            R12 1
       33 NAMECALL                         R9 R2 K9 ["FindFirstChild"]
       35 CALL                             R9 3 1
       36 JUMPIFNOT                        R9 ; [+31]
       37 LOADK                            R13 K10 ["Part"]
       38 NAMECALL                         R11 R9 K11 ["IsA"]
       40 CALL                             R11 2 1
       41 FASTCALL2K                       ASSERT R11 K12 ; [+4]
       43 LOADK                            R12 K12 ["Expected collision box parts to be a Part Instance"]
       44 GETIMPORT                        R10 K14 [assert]
       46 CALL                             R10 2 0
       47 JUMPIFNOT                        R9 ; [+20]
       48 JUMPIFNOT                        R3 ; [+4]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R10 R11 K15 ["CollisionBoxVisibleTransparency"]
       52 JUMPIF                           R10 ; [+3]
       53 GETUPVAL                         R11 2
       54 GETTABLEKS                       R10 R11 K16 ["CollisionBoxInvisibleTransparency"]
       56 SETTABLEKS                       R10 R9 K17 ["Transparency"]
       58 JUMPIFNOT                        R3 ; [+4]
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R10 R11 K18 ["CollisionBoxVisibleColor"]
       62 JUMPIF                           R10 ; [+3]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R10 R11 K19 ["CollisionBoxInvisibleColor"]
       66 SETTABLEKS                       R10 R9 K20 ["Color"]
       68 FORGLOOP                         R4 2 ; [-38]
       70 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["Humanoid must be a child of a Model"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K4 ["saveHumanoidAlignmentData"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 JUMPIFNOT                        R2 ; [+16]
       16 GETIMPORT                        R2 K6 [game]
       18 LOADK                            R4 K7 ["AsyncRenamesUsedInLuaApps"]
       19 NAMECALL                         R2 R2 K8 ["GetEngineFeature"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETUPVAL                         R4 1
       24 NAMECALL                         R2 R0 K9 ["ApplyDescriptionResetAsync"]
       26 CALL                             R2 2 0
       27 JUMP                             ; [+4]
       28 GETUPVAL                         R4 1
       29 NAMECALL                         R2 R0 K10 ["ApplyDescriptionReset"]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K11 ["avatarRules"]
       35 CALL                             R4 0 -1
       36 NAMECALL                         R2 R0 K12 ["ApplyAvatarRules"]
       38 CALL                             R2 -1 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R2 R3 K13 ["alignHumanoid"]
       42 MOVE                             R3 R0
       43 CALL                             R2 1 0
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R2 R3 K14 ["setCollisionBoxTransparency"]
       47 MOVE                             R3 R0
       48 CALL                             R2 1 0
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R2 R3 K15 ["loadAvatar"]
       52 MOVE                             R3 R0
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["try"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 MOVE                             R4 R0
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarPreviewConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Util"]
       24 GETTABLEKS                       R3 R4 K10 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R5 K12 ["Promise"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R9 R0 K6 ["Src"]
       38 GETTABLEKS                       R8 R9 K7 ["Util"]
       40 GETTABLEKS                       R7 R8 K13 ["BridgingFiles"]
       42 GETTABLEKS                       R6 R7 K14 ["AssetDmFiles"]
       44 GETTABLEKS                       R5 R6 K15 ["assetDmUtils"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Src"]
       51 GETTABLEKS                       R8 R9 K7 ["Util"]
       53 GETTABLEKS                       R7 R8 K8 ["AvatarPreview"]
       55 GETTABLEKS                       R6 R7 K16 ["horizontalAligner"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Src"]
       62 GETTABLEKS                       R9 R10 K7 ["Util"]
       64 GETTABLEKS                       R8 R9 K8 ["AvatarPreview"]
       66 GETTABLEKS                       R7 R8 K17 ["previewAnimationManager"]
       68 CALL                             R6 1 1
       69 NEWTABLE                         R7 4 0
       71 LOADNIL                          R8
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          REF R8
       74 SETTABLEKS                       R9 R7 K18 ["getCurrentSettingsPage"]
       76 NEWCLOSURE                       R9 P1
       77 CAPTURE                          REF R8
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R9 R7 K19 ["setCurrentSettingsPage"]
       81 NEWCLOSURE                       R9 P2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          REF R8
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R9 R7 K20 ["setCollisionBoxTransparency"]
       87 DUPCLOSURE                       R9 K21 [PROTO_4]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R9 R7 K22 ["applyAvatarRules"]
       95 CLOSEUPVALS                      R8
       96 RETURN                           R7 1
