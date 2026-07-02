PROTO_0:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K3 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
        2 JUMPIFEQ                         R0 R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["terminate"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["avatarAnimationRules"]
        3 CALL                             R1 0 1
        4 FASTCALL1                        ASSERT R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 DUPTABLE                         R6 K6 [{["ruleInstance"], ["property"] = "AnimationPacksMode"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K7 ["animationPacksSetting"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R0
       24 DUPTABLE                         R6 K9 [{["ruleInstance"], ["property"] = "AnimationClipsMode"}]
       25 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K10 ["animationClipsSetting"]
       30 LOADB                            R8 0
       31 DUPCLOSURE                       R9 K11 [PROTO_2]
       32 CAPTURE                          UPVAL U3
       33 CALL                             R4 5 0
       34 GETUPVAL                         R4 4
       35 MOVE                             R5 R0
       36 DUPTABLE                         R6 K13 [{["ruleInstance"], ["property"] = "CustomRunAnimation"}]
       37 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K14 ["animationClipsRunSetting"]
       42 CALL                             R4 3 0
       43 GETUPVAL                         R4 4
       44 MOVE                             R5 R0
       45 DUPTABLE                         R6 K16 [{["ruleInstance"], ["property"] = "CustomWalkAnimation"}]
       46 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K17 ["animationClipsWalkSetting"]
       51 CALL                             R4 3 0
       52 GETUPVAL                         R4 4
       53 MOVE                             R5 R0
       54 DUPTABLE                         R6 K19 [{["ruleInstance"], ["property"] = "CustomFallAnimation"}]
       55 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K20 ["animationClipsFallSetting"]
       60 CALL                             R4 3 0
       61 GETUPVAL                         R4 4
       62 MOVE                             R5 R0
       63 DUPTABLE                         R6 K22 [{["ruleInstance"], ["property"] = "CustomJumpAnimation"}]
       64 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K23 ["animationClipsJumpSetting"]
       69 CALL                             R4 3 0
       70 GETUPVAL                         R4 4
       71 MOVE                             R5 R0
       72 DUPTABLE                         R6 K25 [{["ruleInstance"], ["property"] = "CustomIdleAnimation"}]
       73 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       75 GETUPVAL                         R7 2
       76 GETTABLEKS                       R7 R7 K26 ["animationClipsIdleSetting"]
       78 CALL                             R4 3 0
       79 GETUPVAL                         R4 4
       80 MOVE                             R5 R0
       81 DUPTABLE                         R6 K28 [{["ruleInstance"], ["property"] = "CustomIdleAlt1Animation"}]
       82 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K29 ["animationClipsIdleAlt1Setting"]
       87 CALL                             R4 3 0
       88 GETUPVAL                         R4 4
       89 MOVE                             R5 R0
       90 DUPTABLE                         R6 K31 [{["ruleInstance"], ["property"] = "CustomIdleAlt2Animation"}]
       91 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       93 GETUPVAL                         R7 2
       94 GETTABLEKS                       R7 R7 K32 ["animationClipsIdleAlt2Setting"]
       96 CALL                             R4 3 0
       97 GETUPVAL                         R4 4
       98 MOVE                             R5 R0
       99 DUPTABLE                         R6 K34 [{["ruleInstance"], ["property"] = "CustomSwimAnimation"}]
      100 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      102 GETUPVAL                         R7 2
      103 GETTABLEKS                       R7 R7 K35 ["animationClipsSwimSetting"]
      105 CALL                             R4 3 0
      106 GETUPVAL                         R4 4
      107 MOVE                             R5 R0
      108 DUPTABLE                         R6 K37 [{["ruleInstance"], ["property"] = "CustomSwimIdleAnimation"}]
      109 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      111 GETUPVAL                         R7 2
      112 GETTABLEKS                       R7 R7 K38 ["animationClipsSwimIdleSetting"]
      114 CALL                             R4 3 0
      115 GETUPVAL                         R4 4
      116 MOVE                             R5 R0
      117 DUPTABLE                         R6 K40 [{["ruleInstance"], ["property"] = "CustomClimbAnimation"}]
      118 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K41 ["animationClipsClimbSetting"]
      123 CALL                             R4 3 0
      124 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R2 K10 ["assetDmInvokeUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["BridgingFiles"]
       28 GETTABLEKS                       R3 R3 K9 ["AssetDmFiles"]
       30 GETTABLEKS                       R3 R3 K11 ["assetDmTypes"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Src"]
       37 GETTABLEKS                       R4 R4 K7 ["Util"]
       39 GETTABLEKS                       R4 R4 K8 ["BridgingFiles"]
       41 GETTABLEKS                       R4 R4 K9 ["AssetDmFiles"]
       43 GETTABLEKS                       R4 R4 K12 ["assetDmUtils"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R5 R0 K6 ["Src"]
       50 GETTABLEKS                       R5 R5 K7 ["Util"]
       52 GETTABLEKS                       R5 R5 K13 ["InvokeKeys"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K7 ["Util"]
       61 GETTABLEKS                       R6 R6 K14 ["AvatarPreview"]
       63 GETTABLEKS                       R6 R6 K15 ["previewAnimationManager"]
       65 CALL                             R5 1 1
       66 GETTABLEKS                       R6 R1 K16 ["createInvokes"]
       68 GETTABLEKS                       R7 R1 K17 ["createAnimationAssetIdInvokes"]
       70 DUPCLOSURE                       R8 K18 [PROTO_3]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 RETURN                           R8 1
