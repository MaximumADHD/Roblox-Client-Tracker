PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetAppliedDescription"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["originalHumanoidDescription"]
        6 GETTABLE                         R3 R4 R0
        7 JUMPIF                           R3 ; [+9]
        8 NAMECALL                         R3 R2 K2 ["Clone"]
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["originalHumanoidDescription"]
       16 SETTABLE                         R3 R4 R0
       17 JUMPIF                           R1 ; [+5]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K3 ["applyAvatarRulesToAvatar"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["unloadAvatar"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["setCollisionBoxTransparency"]
        8 MOVE                             R2 R0
        9 LOADB                            R3 0
       10 CALL                             R1 2 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K2 ["originalHumanoidDescription"]
       14 GETTABLE                         R1 R2 R0
       15 JUMPIFNOT                        R1 ; [+27]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K2 ["originalHumanoidDescription"]
       19 LOADNIL                          R3
       20 SETTABLE                         R3 R2 R0
       21 GETIMPORT                        R4 K4 [game]
       23 NAMECALL                         R2 R0 K5 ["IsDescendantOf"]
       25 CALL                             R2 2 1
       26 JUMPIFNOT                        R2 ; [+16]
       27 GETIMPORT                        R2 K4 [game]
       29 LOADK                            R4 K6 ["AsyncRenamesUsedInLuaApps"]
       30 NAMECALL                         R2 R2 K7 ["GetEngineFeature"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+5]
       34 MOVE                             R4 R1
       35 NAMECALL                         R2 R0 K8 ["ApplyDescriptionResetAsync"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R0 K9 ["ApplyDescriptionReset"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["originalHumanoidDescription"]
        6 GETTABLE                         R1 R2 R0
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["originalHumanoidDescription"]
       12 GETTABLE                         R1 R2 R0
       13 NAMECALL                         R1 R1 K1 ["Clone"]
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K2 ["applyAvatarRules"]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["GetChildren"]
        6 CALL                             R0 1 3
        7 FORGPREP                         R0
        8 LOADK                            R7 K1 ["Model"]
        9 NAMECALL                         R5 R4 K2 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+10]
       13 LOADK                            R7 K3 ["Humanoid"]
       14 NAMECALL                         R5 R4 K4 ["FindFirstChildWhichIsA"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K5 ["applyAvatarRulesToAvatar"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 FORGLOOP                         R0 2 ; [-16]
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["applyAvatarRules"]
        3 CALL                             R0 0 0
        4 LOADB                            R0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K2 [task.delay]
        7 LOADK                            R1 K3 [0.25]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+39]
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 NAMECALL                         R6 R5 K0 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETIMPORT                        R1 K3 [table.clear]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K4 ["originalHumanoidDescription"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K5 ["terminate"]
       20 CALL                             R1 0 0
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R1 R2 K6 ["unloadAllAvatars"]
       24 CALL                             R1 0 0
       25 GETUPVAL                         R1 0
       26 NAMECALL                         R1 R1 K7 ["Remove"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 0
       31 GETUPVAL                         R1 4
       32 CALL                             R1 0 1
       33 JUMPIFNOT                        R1 ; [+7]
       34 GETUPVAL                         R1 5
       35 JUMPIFEQKNIL                     R1 ; [+5]
       37 GETUPVAL                         R1 5
       38 CALL                             R1 0 0
       39 LOADNIL                          R1
       40 SETUPVAL                         R1 5
       41 JUMPIFNOT                        R0 ; [+8]
       42 GETUPVAL                         R5 6
       43 GETTABLEKS                       R4 R5 K8 ["previewDeactivated"]
       45 GETTABLEKS                       R3 R4 K9 ["fromAssetDm"]
       47 NAMECALL                         R1 R0 K10 ["Invoke"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["AvatarPreviewFolderTag"]
        4 NAMECALL                         R0 R0 K1 ["GetTagged"]
        6 CALL                             R0 2 1
        7 LENGTH                           R1 R0
        8 JUMPIFNOTEQKN                    R1 K2 [1] ; [+22]
       10 GETTABLEN                        R1 R0 1
       11 LOADK                            R4 K3 ["Folder"]
       12 NAMECALL                         R2 R1 K4 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R1 1
       17 LOADB                            R3 0
       18 LOADK                            R5 K5 ["Instances tagged with "]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R6 R8 K0 ["AvatarPreviewFolderTag"]
       22 LOADK                            R7 K6 [" should be of type Folder"]
       23 CONCAT                           R4 R5 R7
       24 FASTCALL2                        ASSERT R3 R4 ; [+3]
       26 GETIMPORT                        R2 K8 [assert]
       28 CALL                             R2 2 0
       29 LOADNIL                          R2
       30 RETURN                           R2 1
       31 LENGTH                           R1 R0
       32 LOADN                            R2 0
       33 JUMPIFNOTLT                      R2 R1 ; [+8]
       35 LOADB                            R2 0
       36 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       38 LOADK                            R3 K9 ["There should be only up to one AvatarPreview folder"]
       39 GETIMPORT                        R1 K8 [assert]
       41 CALL                             R1 2 0
       42 LOADNIL                          R1
       43 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R3 K2 ["Humanoid"]
        7 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K4 ["addHumanoidToPreviewFolder"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R3 K2 ["Humanoid"]
        7 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K4 ["unloadAvatar"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K5 ["setCollisionBoxTransparency"]
       20 MOVE                             R3 R1
       21 LOADB                            R4 0
       22 CALL                             R2 2 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K6 ["removeHumanoidFromPreviewFolder"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R4 K1 [game]
        3 NAMECALL                         R2 R2 K2 ["IsDescendantOf"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+5]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["cleanupPreview"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["ChildAdded"]
        6 DUPCLOSURE                       R3 K1 [PROTO_9]
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 2
       12 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K6 ["ChildRemoved"]
       21 DUPCLOSURE                       R4 K7 [PROTO_10]
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R2 R2 K2 ["Connect"]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R4 2
       29 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       31 MOVE                             R5 R2
       32 GETIMPORT                        R3 K5 [table.insert]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K8 ["AncestryChanged"]
       38 NEWCLOSURE                       R5 P2
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R3 R3 K2 ["Connect"]
       44 CALL                             R3 2 1
       45 GETUPVAL                         R5 2
       46 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       48 MOVE                             R6 R3
       49 GETIMPORT                        R4 K5 [table.insert]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 GETIMPORT                        R1 K2 [Instance.new]
       12 LOADK                            R2 K3 ["Folder"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K4 ["AvatarPreviewFolderName"]
       17 SETTABLEKS                       R2 R1 K5 ["Name"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K6 ["AvatarPreviewFolderTag"]
       22 NAMECALL                         R2 R1 K7 ["AddTag"]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R3 K9 [workspace]
       27 GETTABLEKS                       R2 R3 K10 ["CurrentCamera"]
       29 JUMPIF                           R2 ; [+17]
       30 GETIMPORT                        R3 K2 [Instance.new]
       32 LOADK                            R4 K11 ["Camera"]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K12 ["ParentCameraName"]
       37 SETTABLEKS                       R4 R3 K5 ["Name"]
       39 LOADB                            R4 0
       40 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       42 GETIMPORT                        R4 K9 [workspace]
       44 SETTABLEKS                       R4 R3 K14 ["Parent"]
       46 MOVE                             R2 R3
       47 SETTABLEKS                       R2 R1 K14 ["Parent"]
       49 LOADB                            R3 0
       50 SETTABLEKS                       R3 R1 K13 ["Archivable"]
       52 GETUPVAL                         R3 0
       53 CALL                             R3 0 1
       54 JUMPIFNOT                        R3 ; [+5]
       55 GETUPVAL                         R3 3
       56 MOVE                             R4 R1
       57 MOVE                             R5 R0
       58 CALL                             R3 2 1
       59 SETUPVAL                         R3 1
       60 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["findExistingAvatarPreviewFolder"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 FASTCALL2K                       ASSERT R1 K1 ; [+5]
       11 MOVE                             R3 R1
       12 LOADK                            R4 K1 ["AvatarPreviewFolder should exist"]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 2
       17 JUMPIF                           R2 ; [+4]
       18 SETUPVAL                         R1 2
       19 GETUPVAL                         R2 3
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 2
       23 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       25 LOADK                            R4 K4 ["Preview folder should exist"]
       26 GETIMPORT                        R2 K3 [assert]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 2
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R0 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["Util"]
       19 GETTABLEKS                       R4 R5 K12 ["AvatarPreview"]
       21 GETTABLEKS                       R3 R4 K13 ["AvatarPreviewConstants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R7 K11 ["Util"]
       30 GETTABLEKS                       R5 R6 K12 ["AvatarPreview"]
       32 GETTABLEKS                       R4 R5 K14 ["applyAvatarRulesUtil"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R7 K11 ["Util"]
       41 GETTABLEKS                       R5 R6 K15 ["InvokeKeys"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K9 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R8 R9 K11 ["Util"]
       50 GETTABLEKS                       R7 R8 K12 ["AvatarPreview"]
       52 GETTABLEKS                       R6 R7 K16 ["PreviewDockWidget"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K9 [require]
       57 GETTABLEKS                       R10 R0 K10 ["Src"]
       59 GETTABLEKS                       R9 R10 K11 ["Util"]
       61 GETTABLEKS                       R8 R9 K12 ["AvatarPreview"]
       63 GETTABLEKS                       R7 R8 K17 ["previewAnimationManager"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K9 [require]
       68 GETTABLEKS                       R10 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R10 K18 ["Flags"]
       72 GETTABLEKS                       R8 R9 K19 ["getFFlagPreviewToolbar"]
       74 CALL                             R7 1 1
       75 DUPTABLE                         R8 K21 [{"originalHumanoidDescription"}]
       76 NEWTABLE                         R9 0 0
       78 SETTABLEKS                       R9 R8 K20 ["originalHumanoidDescription"]
       80 LOADNIL                          R9
       81 NEWTABLE                         R10 0 0
       83 LOADB                            R11 0
       84 LOADNIL                          R12
       85 DUPCLOSURE                       R13 K22 [PROTO_0]
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R13 R8 K23 ["addHumanoidToPreviewFolder"]
       89 DUPCLOSURE                       R13 K24 [PROTO_1]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R13 R8 K25 ["removeHumanoidFromPreviewFolder"]
       95 NEWCLOSURE                       R13 P2
       96 CAPTURE                          REF R9
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R13 R8 K26 ["applyAvatarRulesToAvatar"]
      101 NEWCLOSURE                       R13 P3
      102 CAPTURE                          REF R9
      103 CAPTURE                          VAL R8
      104 SETTABLEKS                       R13 R8 K27 ["applyAvatarRules"]
      106 NEWCLOSURE                       R13 P4
      107 CAPTURE                          REF R11
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R13 R8 K28 ["applyAvatarRulesWithDebounce"]
      111 NEWCLOSURE                       R13 P5
      112 CAPTURE                          REF R9
      113 SETTABLEKS                       R13 R8 K29 ["getExistingAvatarPreviewFolder"]
      115 NEWCLOSURE                       R13 P6
      116 CAPTURE                          REF R9
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R7
      121 CAPTURE                          REF R12
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R13 R8 K30 ["cleanupPreview"]
      125 DUPCLOSURE                       R13 K31 [PROTO_8]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R13 R8 K32 ["findExistingAvatarPreviewFolder"]
      130 NEWCLOSURE                       R13 P8
      131 CAPTURE                          REF R9
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R3
      136 NEWCLOSURE                       R14 P9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          REF R12
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R5
      141 NEWCLOSURE                       R15 P10
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R14
      144 CAPTURE                          REF R9
      145 CAPTURE                          VAL R13
      146 SETTABLEKS                       R15 R8 K33 ["getAvatarPreviewFolder"]
      148 CLOSEUPVALS                      R9
      149 RETURN                           R8 1
