PROTO_0:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K3 [Enum.AvatarSettingsCollisionMode.Legacy]
        2 JUMPIFNOTEQ                      R0 R1 ; [+9]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K4 ["legacyCollisionModeAvailable"]
        8 LOADB                            R4 1
        9 NAMECALL                         R1 R1 K5 ["SetItem"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["avatarCollisionRules"]
        3 CALL                             R1 0 1
        4 FASTCALL1                        ASSERT R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 LOADNIL                          R3
       12 GETUPVAL                         R4 1
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+22]
       15 GETUPVAL                         R4 2
       16 NAMECALL                         R4 R4 K3 ["IsEdit"]
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+17]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 GETTABLEKS                       R5 R1 K4 ["CollisionMode"]
       25 GETIMPORT                        R6 K8 [Enum.AvatarSettingsCollisionMode.Legacy]
       27 JUMPIFNOTEQ                      R5 R6 ; [+8]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K9 ["legacyCollisionModeAvailable"]
       32 LOADB                            R9 1
       33 NAMECALL                         R6 R0 K10 ["SetItem"]
       35 CALL                             R6 3 0
       36 MOVE                             R3 R4
       37 GETUPVAL                         R4 4
       38 MOVE                             R5 R0
       39 DUPTABLE                         R6 K13 [{["ruleInstance"], ["property"] = "CollisionMode"}]
       40 SETTABLEKS                       R1 R6 K11 ["ruleInstance"]
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R7 R7 K14 ["collisionSetting"]
       45 LOADNIL                          R8
       46 MOVE                             R9 R3
       47 CALL                             R4 5 0
       48 GETUPVAL                         R4 4
       49 MOVE                             R5 R0
       50 DUPTABLE                         R6 K16 [{["ruleInstance"], ["property"] = "HitAndTouchDetectionMode"}]
       51 SETTABLEKS                       R1 R6 K11 ["ruleInstance"]
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R7 R7 K17 ["collisionHitAndTouchDetectionSetting"]
       56 CALL                             R4 3 0
       57 GETUPVAL                         R4 4
       58 MOVE                             R5 R0
       59 DUPTABLE                         R6 K19 [{["ruleInstance"], ["property"] = "LegacyCollisionMode"}]
       60 SETTABLEKS                       R1 R6 K11 ["ruleInstance"]
       62 GETUPVAL                         R7 5
       63 GETTABLEKS                       R7 R7 K20 ["collisionMethodSetting"]
       65 CALL                             R4 3 0
       66 GETUPVAL                         R4 4
       67 MOVE                             R5 R0
       68 DUPTABLE                         R6 K22 [{["ruleInstance"], ["property"] = "SingleColliderSize"}]
       69 SETTABLEKS                       R1 R6 K11 ["ruleInstance"]
       71 GETUPVAL                         R7 5
       72 GETTABLEKS                       R7 R7 K23 ["collisionSizeSetting"]
       74 CALL                             R4 3 0
       75 GETUPVAL                         R4 6
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+9]
       78 GETUPVAL                         R4 4
       79 MOVE                             R5 R0
       80 DUPTABLE                         R6 K25 [{["ruleInstance"], ["property"] = "BodyPartsCollidableOnDeath"}]
       81 SETTABLEKS                       R1 R6 K11 ["ruleInstance"]
       83 GETUPVAL                         R7 5
       84 GETTABLEKS                       R7 R7 K26 ["collisionBodyPartsCollidableOnDeathSetting"]
       86 CALL                             R4 3 0
       87 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["BridgingFiles"]
       21 GETTABLEKS                       R3 R3 K13 ["AssetDmFiles"]
       23 GETTABLEKS                       R3 R3 K14 ["assetDmInvokeUtils"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Util"]
       32 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       34 GETTABLEKS                       R4 R4 K13 ["AssetDmFiles"]
       36 GETTABLEKS                       R4 R4 K15 ["assetDmTypes"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K9 [require]
       41 GETTABLEKS                       R5 R0 K10 ["Src"]
       43 GETTABLEKS                       R5 R5 K11 ["Util"]
       45 GETTABLEKS                       R5 R5 K12 ["BridgingFiles"]
       47 GETTABLEKS                       R5 R5 K13 ["AssetDmFiles"]
       49 GETTABLEKS                       R5 R5 K16 ["assetDmUtils"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K9 [require]
       54 GETTABLEKS                       R6 R0 K10 ["Src"]
       56 GETTABLEKS                       R6 R6 K17 ["Flags"]
       58 GETTABLEKS                       R6 R6 K18 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K9 [require]
       63 GETTABLEKS                       R7 R0 K10 ["Src"]
       65 GETTABLEKS                       R7 R7 K17 ["Flags"]
       67 GETTABLEKS                       R7 R7 K19 ["getFFlagAvatarSettingsRemoveLegacyCollisionMode"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K9 [require]
       72 GETTABLEKS                       R8 R0 K10 ["Src"]
       74 GETTABLEKS                       R8 R8 K11 ["Util"]
       76 GETTABLEKS                       R8 R8 K20 ["InvokeKeys"]
       78 CALL                             R7 1 1
       79 GETIMPORT                        R8 K9 [require]
       81 GETTABLEKS                       R9 R0 K10 ["Src"]
       83 GETTABLEKS                       R9 R9 K11 ["Util"]
       85 GETTABLEKS                       R9 R9 K21 ["PluginItemKeys"]
       87 CALL                             R8 1 1
       88 GETTABLEKS                       R9 R2 K22 ["createInvokes"]
       90 DUPCLOSURE                       R10 K23 [PROTO_2]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R5
       98 RETURN                           R10 1
