PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKS                       R1 K0 ["Movement"] ; [+12]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["stopCycling"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["terminate"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 MOVE                             R3 R1
        5 JUMPIFNOTEQKNIL                  R3 ; [+19]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["avatarCollisionRules"]
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
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K8 ["CollisionBoxPartNames"]
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
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R10 R10 K15 ["CollisionBoxVisibleTransparency"]
       52 JUMPIF                           R10 ; [+3]
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R10 R10 K16 ["CollisionBoxInvisibleTransparency"]
       56 SETTABLEKS                       R10 R9 K17 ["Transparency"]
       58 JUMPIFNOT                        R3 ; [+4]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K18 ["CollisionBoxVisibleColor"]
       62 JUMPIF                           R10 ; [+3]
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R10 R10 K19 ["CollisionBoxInvisibleColor"]
       66 SETTABLEKS                       R10 R9 K20 ["Color"]
       68 FORGLOOP                         R4 2 ; [-38]
       70 GETUPVAL                         R4 3
       71 CALL                             R4 0 1
       72 JUMPIFNOT                        R4 ; [+50]
       73 LOADNIL                          R4
       74 NAMECALL                         R5 R2 K21 ["GetChildren"]
       76 CALL                             R5 1 3
       77 FORGPREP                         R5
       78 GETTABLEKS                       R10 R9 K22 ["Name"]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R11 R11 K23 ["HitboxPartName"]
       83 JUMPIFNOTEQ                      R10 R11 ; [+16]
       85 LOADK                            R12 K24 ["BasePart"]
       86 NAMECALL                         R10 R9 K11 ["IsA"]
       88 CALL                             R10 2 1
       89 JUMPIFNOT                        R10 ; [+10]
       90 GETUPVAL                         R12 2
       91 GETTABLEKS                       R12 R12 K25 ["HitboxMarkerAttribute"]
       93 NAMECALL                         R10 R9 K26 ["GetAttribute"]
       95 CALL                             R10 2 1
       96 JUMPIFNOTEQKB                    R10 TRUE ; [+3]
       98 MOVE                             R4 R9
       99 JUMP                             ; [+2]
      100 FORGLOOP                         R5 2 ; [-23]
      102 JUMPIFNOT                        R4 ; [+20]
      103 JUMPIFNOT                        R3 ; [+4]
      104 GETUPVAL                         R5 2
      105 GETTABLEKS                       R5 R5 K15 ["CollisionBoxVisibleTransparency"]
      107 JUMP                             ; [+3]
      108 GETUPVAL                         R5 2
      109 GETTABLEKS                       R5 R5 K16 ["CollisionBoxInvisibleTransparency"]
      111 SETTABLEKS                       R5 R4 K17 ["Transparency"]
      113 JUMPIFNOT                        R3 ; [+4]
      114 GETUPVAL                         R5 2
      115 GETTABLEKS                       R5 R5 K27 ["HitboxVisibleColor"]
      117 JUMP                             ; [+3]
      118 GETUPVAL                         R5 2
      119 GETTABLEKS                       R5 R5 K19 ["CollisionBoxInvisibleColor"]
      121 SETTABLEKS                       R5 R4 K20 ["Color"]
      123 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["Humanoid must be a child of a Model"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["saveHumanoidAlignmentData"]
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
       32 GETUPVAL                         R2 2
       33 MOVE                             R3 R0
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K11 ["alignHumanoid"]
       38 MOVE                             R3 R0
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K12 ["setCollisionBoxTransparency"]
       43 MOVE                             R3 R0
       44 CALL                             R2 1 0
       45 GETUPVAL                         R2 4
       46 GETTABLEKS                       R2 R2 K13 ["loadAvatar"]
       48 MOVE                             R3 R0
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["try"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarPreviewConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R4 K12 ["Promise"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K8 ["AvatarPreview"]
       42 GETTABLEKS                       R5 R5 K13 ["applyAvatarRulesToHumanoid"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K7 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["BridgingFiles"]
       53 GETTABLEKS                       R6 R6 K15 ["AssetDmFiles"]
       55 GETTABLEKS                       R6 R6 K16 ["assetDmUtils"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R7 R0 K6 ["Src"]
       62 GETTABLEKS                       R7 R7 K17 ["Flags"]
       64 GETTABLEKS                       R7 R7 K18 ["getEngineFeatureAvatarSettingsHitbox"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Src"]
       71 GETTABLEKS                       R8 R8 K17 ["Flags"]
       73 GETTABLEKS                       R8 R8 K19 ["getFFlagAvatarSettingsPreviewStandardWalkAnimation"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K6 ["Src"]
       80 GETTABLEKS                       R9 R9 K7 ["Util"]
       82 GETTABLEKS                       R9 R9 K8 ["AvatarPreview"]
       84 GETTABLEKS                       R9 R9 K20 ["horizontalAligner"]
       86 CALL                             R8 1 1
       87 GETIMPORT                        R9 K5 [require]
       89 GETTABLEKS                       R10 R0 K6 ["Src"]
       91 GETTABLEKS                       R10 R10 K7 ["Util"]
       93 GETTABLEKS                       R10 R10 K8 ["AvatarPreview"]
       95 GETTABLEKS                       R10 R10 K21 ["previewAnimationManager"]
       97 CALL                             R9 1 1
       98 NEWTABLE                         R10 4 0
      100 LOADNIL                          R11
      101 NEWCLOSURE                       R12 P0
      102 CAPTURE                          REF R11
      103 SETTABLEKS                       R12 R10 K22 ["getCurrentSettingsPage"]
      105 NEWCLOSURE                       R12 P1
      106 CAPTURE                          REF R11
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R9
      109 SETTABLEKS                       R12 R10 K23 ["setCurrentSettingsPage"]
      111 NEWCLOSURE                       R12 P2
      112 CAPTURE                          VAL R5
      113 CAPTURE                          REF R11
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R6
      116 SETTABLEKS                       R12 R10 K24 ["setCollisionBoxTransparency"]
      118 DUPCLOSURE                       R12 K25 [PROTO_4]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R9
      124 SETTABLEKS                       R12 R10 K26 ["applyAvatarRules"]
      126 CLOSEUPVALS                      R11
      127 RETURN                           R10 1
