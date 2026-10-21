PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlaceAvatarRules"]
        3 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 FASTCALL1                        TYPE R6 ; [+3]
        5 MOVE                             R8 R6
        6 GETIMPORT                        R7 K1 [type]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+22]
       11 GETTABLEKS                       R7 R6 K3 ["AssetId"]
       13 JUMPIFEQKNIL                     R7 ; [+18]
       15 GETTABLEKS                       R7 R6 K4 ["Enabled"]
       17 JUMPIFEQKNIL                     R7 ; [+14]
       19 MOVE                             R8 R5
       20 LOADK                            R9 K5 ["Id"]
       21 CONCAT                           R7 R8 R9
       22 GETTABLEKS                       R8 R6 K3 ["AssetId"]
       24 SETTABLE                         R8 R0 R7
       25 MOVE                             R8 R5
       26 LOADK                            R9 K4 ["Enabled"]
       27 CONCAT                           R7 R8 R9
       28 GETTABLEKS                       R8 R6 K4 ["Enabled"]
       30 SETTABLE                         R8 R0 R7
       31 JUMP                             ; [+4]
       32 GETUPVAL                         R9 0
       33 GETTABLE                         R8 R9 R5
       34 OR                               R7 R8 R5
       35 SETTABLE                         R6 R0 R7
       36 FORGLOOP                         R2 2 ; [-33]
       38 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["computeOverrides"]
        7 MOVE                             R8 R5
        8 MOVE                             R9 R6
        9 CALL                             R7 2 3
       10 FORGPREP                         R7
       11 MOVE                             R14 R10
       12 NAMECALL                         R12 R0 K1 ["FindFirstChildWhichIsA"]
       14 CALL                             R12 2 1
       15 JUMPIFNOT                        R12 ; [+7]
       16 MOVE                             R13 R11
       17 LOADNIL                          R14
       18 LOADNIL                          R15
       19 FORGPREP                         R13
       20 SETTABLE                         R17 R12 R16
       21 FORGLOOP                         R13 2 ; [-2]
       23 FORGLOOP                         R7 2 ; [-13]
       25 FORGLOOP                         R2 2 ; [-22]
       27 LOADK                            R4 K2 ["AvatarBodyRules"]
       28 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
       30 CALL                             R2 2 1
       31 GETTABLEKS                       R3 R1 K3 ["AvatarRules"]
       33 JUMPIFNOT                        R3 ; [+4]
       34 GETTABLEKS                       R3 R1 K3 ["AvatarRules"]
       36 GETTABLEKS                       R3 R3 K4 ["AvatarType"]
       38 JUMPIFNOT                        R2 ; [+3]
       39 JUMPIFNOT                        R3 ; [+2]
       40 SETTABLEKS                       R3 R2 K4 ["AvatarType"]
       42 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["AvatarBodyRules"]
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R1 ; [+12]
        5 LOADB                            R2 1
        6 GETTABLEKS                       R3 R1 K1 ["CustomMood"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+7]
       10 GETTABLEKS                       R3 R1 K2 ["AppearanceMode"]
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["AvatarRules"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["PlaceAvatarRules"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETIMPORT                        R8 K2 [Instance.new]
       13 MOVE                             R9 R6
       14 CALL                             R8 1 1
       15 GETUPVAL                         R9 0
       16 MOVE                             R10 R8
       17 GETTABLE                         R11 R1 R6
       18 CALL                             R9 2 0
       19 SETTABLEKS                       R2 R8 K6 ["Parent"]
       21 FORGLOOP                         R3 1 ; [-11]
       23 GETUPVAL                         R3 1
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+41]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K7 ["isActive"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+36]
       31 GETTABLEKS                       R4 R0 K8 ["AvatarBodyRules"]
       33 LOADB                            R3 0
       34 JUMPIFEQKNIL                     R4 ; [+12]
       36 LOADB                            R3 1
       37 GETTABLEKS                       R5 R4 K9 ["CustomMood"]
       39 JUMPIFNOTEQKNIL                  R5 ; [+7]
       41 GETTABLEKS                       R5 R4 K10 ["AppearanceMode"]
       43 JUMPIFNOTEQKNIL                  R5 ; [+2]
       45 LOADB                            R3 0 +1
       46 LOADB                            R3 1
       47 JUMPIFNOT                        R3 ; [+15]
       48 GETTABLEKS                       R3 R0 K11 ["AvatarAnimationRules"]
       50 JUMPIFNOTEQKNIL                  R3 ; [+12]
       52 GETIMPORT                        R3 K2 [Instance.new]
       54 LOADK                            R4 K11 ["AvatarAnimationRules"]
       55 CALL                             R3 1 1
       56 GETUPVAL                         R4 0
       57 MOVE                             R5 R3
       58 GETTABLEKS                       R6 R1 K11 ["AvatarAnimationRules"]
       60 CALL                             R4 2 0
       61 SETTABLEKS                       R2 R3 K6 ["Parent"]
       63 GETUPVAL                         R3 3
       64 MOVE                             R4 R2
       65 MOVE                             R5 R1
       66 CALL                             R3 2 0
       67 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+6]
        6 LOADK                            R2 K2 ["NoChanges"]
        7 LOADNIL                          R3
        8 NEWTABLE                         R4 0 0
       10 RETURN                           R2 3
       11 NEWTABLE                         R2 0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["findExisting"]
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+11]
       18 MOVE                             R5 R2
       19 NAMECALL                         R6 R3 K4 ["GetFullName"]
       21 CALL                             R6 1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R4 K7 [table.insert]
       25 CALL                             R4 -1 0
       26 NAMECALL                         R4 R3 K8 ["Destroy"]
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 1
       30 LOADK                            R6 K9 ["PlaceAvatarRules"]
       31 NAMECALL                         R4 R4 K10 ["FindFirstChild"]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+11]
       35 MOVE                             R6 R2
       36 NAMECALL                         R7 R4 K4 ["GetFullName"]
       38 CALL                             R7 1 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R5 K7 [table.insert]
       42 CALL                             R5 -1 0
       43 NAMECALL                         R5 R4 K8 ["Destroy"]
       45 CALL                             R5 1 0
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K11 ["buildSubtree"]
       49 MOVE                             R6 R0
       50 MOVE                             R7 R1
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 1
       53 SETTABLEKS                       R6 R5 K12 ["Parent"]
       55 GETUPVAL                         R6 2
       56 SETTABLEKS                       R5 R6 K9 ["PlaceAvatarRules"]
       58 GETUPVAL                         R6 3
       59 LOADK                            R8 K13 ["AvatarSettings Create Place Settings"]
       60 NAMECALL                         R6 R6 K14 ["SetWaypoint"]
       62 CALL                             R6 2 0
       63 LOADK                            R6 K15 ["Created"]
       64 MOVE                             R7 R5
       65 MOVE                             R8 R2
       66 RETURN                           R6 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["StarterPlayer"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["BridgingFiles"]
       33 GETTABLEKS                       R5 R5 K15 ["AssetDmFiles"]
       35 GETTABLEKS                       R5 R5 K16 ["assetDmOverrideAdapter"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K11 [require]
       40 GETTABLEKS                       R6 R0 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K14 ["BridgingFiles"]
       46 GETTABLEKS                       R6 R6 K15 ["AssetDmFiles"]
       48 GETTABLEKS                       R6 R6 K17 ["assetDmOverrideRulesSchema"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K11 [require]
       53 GETTABLEKS                       R7 R0 K12 ["Src"]
       55 GETTABLEKS                       R7 R7 K13 ["Util"]
       57 GETTABLEKS                       R7 R7 K14 ["BridgingFiles"]
       59 GETTABLEKS                       R7 R7 K15 ["AssetDmFiles"]
       61 GETTABLEKS                       R7 R7 K18 ["assetDmTypes"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K11 [require]
       66 GETTABLEKS                       R8 R0 K12 ["Src"]
       68 GETTABLEKS                       R8 R8 K19 ["Flags"]
       70 GETTABLEKS                       R8 R8 K20 ["getFFlagAvatarSettingsWriteOverrides"]
       72 CALL                             R7 1 1
       73 DUPTABLE                         R8 K23 [{["AvatarSettingsLegacyCollisionMode"] = "LegacyCollisionMode"}]
       74 NEWTABLE                         R9 4 0
       76 DUPCLOSURE                       R10 K24 [PROTO_0]
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R10 R9 K25 ["findExisting"]
       80 DUPCLOSURE                       R10 K26 [PROTO_1]
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R11 K27 [PROTO_2]
       83 CAPTURE                          VAL R4
       84 DUPCLOSURE                       R12 K28 [PROTO_3]
       85 DUPCLOSURE                       R13 K29 [PROTO_4]
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R13 R9 K30 ["buildSubtree"]
       92 DUPCLOSURE                       R13 K31 [PROTO_5]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R13 R9 K32 ["create"]
       99 RETURN                           R9 1
