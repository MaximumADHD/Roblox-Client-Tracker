PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetAppliedDescription"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["originalHumanoidDescription"]
        6 GETTABLE                         R3 R4 R0
        7 JUMPIF                           R3 ; [+9]
        8 NAMECALL                         R3 R2 K2 ["Clone"]
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["originalHumanoidDescription"]
       16 SETTABLE                         R3 R4 R0
       17 JUMPIF                           R1 ; [+5]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["applyAvatarRulesToAvatar"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["unloadAvatar"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["setCollisionBoxTransparency"]
        8 MOVE                             R2 R0
        9 LOADB                            R3 0
       10 CALL                             R1 2 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["originalHumanoidDescription"]
       14 GETTABLE                         R1 R2 R0
       15 JUMPIFNOT                        R1 ; [+27]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K2 ["originalHumanoidDescription"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["originalHumanoidDescription"]
        6 GETTABLE                         R1 R2 R0
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["originalHumanoidDescription"]
       12 GETTABLE                         R1 R2 R0
       13 NAMECALL                         R1 R1 K1 ["Clone"]
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K2 ["applyAvatarRules"]
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
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["applyAvatarRulesToAvatar"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 FORGLOOP                         R0 2 ; [-16]
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["applyAvatarRules"]
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
        1 JUMPIFNOT                        R1 ; [+36]
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 NAMECALL                         R6 R5 K0 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETIMPORT                        R1 K3 [table.clear]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["originalHumanoidDescription"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K5 ["terminate"]
       20 CALL                             R1 0 0
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K6 ["unloadAllAvatars"]
       24 CALL                             R1 0 0
       25 GETUPVAL                         R1 0
       26 NAMECALL                         R1 R1 K7 ["Remove"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 0
       31 GETUPVAL                         R1 4
       32 JUMPIFEQKNIL                     R1 ; [+5]
       34 GETUPVAL                         R1 4
       35 CALL                             R1 0 0
       36 LOADNIL                          R1
       37 SETUPVAL                         R1 4
       38 JUMPIFNOT                        R0 ; [+8]
       39 GETUPVAL                         R3 5
       40 GETTABLEKS                       R3 R3 K8 ["previewDeactivated"]
       42 GETTABLEKS                       R3 R3 K9 ["fromAssetDm"]
       44 NAMECALL                         R1 R0 K10 ["Invoke"]
       46 CALL                             R1 2 0
       47 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AvatarPreviewFolderTag"]
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
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K0 ["AvatarPreviewFolderTag"]
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
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["addHumanoidToPreviewFolder"]
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
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["unloadAvatar"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["setCollisionBoxTransparency"]
       20 MOVE                             R3 R1
       21 LOADB                            R4 0
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K6 ["removeHumanoidFromPreviewFolder"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R4 K1 [game]
        3 NAMECALL                         R2 R2 K2 ["IsDescendantOf"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["cleanupPreview"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["ChildAdded"]
        6 DUPCLOSURE                       R3 K1 [PROTO_9]
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 2
       12 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["ChildRemoved"]
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
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K8 ["AncestryChanged"]
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
        1 JUMPIFEQKNIL                     R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 0
        7 GETIMPORT                        R1 K2 [Instance.new]
        9 LOADK                            R2 K3 ["Folder"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["AvatarPreviewFolderName"]
       14 SETTABLEKS                       R2 R1 K5 ["Name"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["AvatarPreviewFolderTag"]
       19 NAMECALL                         R2 R1 K7 ["AddTag"]
       21 CALL                             R2 2 0
       22 GETIMPORT                        R2 K9 [workspace]
       24 GETTABLEKS                       R2 R2 K10 ["CurrentCamera"]
       26 JUMPIF                           R2 ; [+17]
       27 GETIMPORT                        R3 K2 [Instance.new]
       29 LOADK                            R4 K11 ["Camera"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K12 ["ParentCameraName"]
       34 SETTABLEKS                       R4 R3 K5 ["Name"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       39 GETIMPORT                        R4 K9 [workspace]
       41 SETTABLEKS                       R4 R3 K14 ["Parent"]
       43 MOVE                             R2 R3
       44 SETTABLEKS                       R2 R1 K14 ["Parent"]
       46 LOADB                            R3 0
       47 SETTABLEKS                       R3 R1 K13 ["Archivable"]
       49 GETUPVAL                         R3 2
       50 MOVE                             R4 R1
       51 MOVE                             R5 R0
       52 CALL                             R3 2 1
       53 SETUPVAL                         R3 0
       54 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findExistingAvatarPreviewFolder"]
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
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["AvatarPreview"]
       21 GETTABLEKS                       R3 R3 K13 ["AvatarPreviewConstants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K12 ["AvatarPreview"]
       32 GETTABLEKS                       R4 R4 K14 ["applyAvatarRulesUtil"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R5 R0 K10 ["Src"]
       39 GETTABLEKS                       R5 R5 K11 ["Util"]
       41 GETTABLEKS                       R5 R5 K15 ["InvokeKeys"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K9 [require]
       46 GETTABLEKS                       R6 R0 K10 ["Src"]
       48 GETTABLEKS                       R6 R6 K11 ["Util"]
       50 GETTABLEKS                       R6 R6 K12 ["AvatarPreview"]
       52 GETTABLEKS                       R6 R6 K16 ["PreviewDockWidget"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K9 [require]
       57 GETTABLEKS                       R7 R0 K10 ["Src"]
       59 GETTABLEKS                       R7 R7 K11 ["Util"]
       61 GETTABLEKS                       R7 R7 K12 ["AvatarPreview"]
       63 GETTABLEKS                       R7 R7 K17 ["previewAnimationManager"]
       65 CALL                             R6 1 1
       66 DUPTABLE                         R7 K19 [{"originalHumanoidDescription"}]
       67 NEWTABLE                         R8 0 0
       69 SETTABLEKS                       R8 R7 K18 ["originalHumanoidDescription"]
       71 LOADNIL                          R8
       72 NEWTABLE                         R9 0 0
       74 LOADB                            R10 0
       75 LOADNIL                          R11
       76 DUPCLOSURE                       R12 K20 [PROTO_0]
       77 CAPTURE                          VAL R7
       78 SETTABLEKS                       R12 R7 K21 ["addHumanoidToPreviewFolder"]
       80 DUPCLOSURE                       R12 K22 [PROTO_1]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R7
       84 SETTABLEKS                       R12 R7 K23 ["removeHumanoidFromPreviewFolder"]
       86 NEWCLOSURE                       R12 P2
       87 CAPTURE                          REF R8
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R12 R7 K24 ["applyAvatarRulesToAvatar"]
       92 NEWCLOSURE                       R12 P3
       93 CAPTURE                          REF R8
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R12 R7 K25 ["applyAvatarRules"]
       97 NEWCLOSURE                       R12 P4
       98 CAPTURE                          REF R10
       99 CAPTURE                          VAL R7
      100 SETTABLEKS                       R12 R7 K26 ["applyAvatarRulesWithDebounce"]
      102 NEWCLOSURE                       R12 P5
      103 CAPTURE                          REF R8
      104 SETTABLEKS                       R12 R7 K27 ["getExistingAvatarPreviewFolder"]
      106 NEWCLOSURE                       R12 P6
      107 CAPTURE                          REF R8
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R6
      111 CAPTURE                          REF R11
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R12 R7 K28 ["cleanupPreview"]
      115 DUPCLOSURE                       R12 K29 [PROTO_8]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R2
      118 SETTABLEKS                       R12 R7 K30 ["findExistingAvatarPreviewFolder"]
      120 NEWCLOSURE                       R12 P8
      121 CAPTURE                          REF R8
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R3
      126 NEWCLOSURE                       R13 P9
      127 CAPTURE                          REF R11
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 NEWCLOSURE                       R14 P10
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 CAPTURE                          REF R8
      134 CAPTURE                          VAL R12
      135 SETTABLEKS                       R14 R7 K31 ["getAvatarPreviewFolder"]
      137 CLOSEUPVALS                      R8
      138 RETURN                           R7 1
