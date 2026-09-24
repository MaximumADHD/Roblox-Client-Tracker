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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromRules"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["cycleThread"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["stopAndResetToRestPose"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K5 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       14 JUMPIFEQ                         R0 R1 ; [+5]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K6 ["terminate"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_4:
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
       21 GETUPVAL                         R8 3
       22 CALL                             R8 0 1
       23 NEWCLOSURE                       R9 P2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CALL                             R4 5 0
       27 GETUPVAL                         R4 1
       28 MOVE                             R5 R0
       29 DUPTABLE                         R6 K9 [{["ruleInstance"], ["property"] = "AnimationClipsMode"}]
       30 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K10 ["animationClipsSetting"]
       35 LOADB                            R8 0
       36 DUPCLOSURE                       R9 K11 [PROTO_3]
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U5
       39 CALL                             R4 5 0
       40 GETUPVAL                         R4 6
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K13 [{["ruleInstance"], ["property"] = "CustomRunAnimation"}]
       43 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K14 ["animationClipsRunSetting"]
       48 CALL                             R4 3 0
       49 GETUPVAL                         R4 6
       50 MOVE                             R5 R0
       51 DUPTABLE                         R6 K16 [{["ruleInstance"], ["property"] = "CustomWalkAnimation"}]
       52 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K17 ["animationClipsWalkSetting"]
       57 CALL                             R4 3 0
       58 GETUPVAL                         R4 6
       59 MOVE                             R5 R0
       60 DUPTABLE                         R6 K19 [{["ruleInstance"], ["property"] = "CustomFallAnimation"}]
       61 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K20 ["animationClipsFallSetting"]
       66 CALL                             R4 3 0
       67 GETUPVAL                         R4 6
       68 MOVE                             R5 R0
       69 DUPTABLE                         R6 K22 [{["ruleInstance"], ["property"] = "CustomJumpAnimation"}]
       70 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K23 ["animationClipsJumpSetting"]
       75 CALL                             R4 3 0
       76 GETUPVAL                         R4 6
       77 MOVE                             R5 R0
       78 DUPTABLE                         R6 K25 [{["ruleInstance"], ["property"] = "CustomIdleAnimation"}]
       79 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K26 ["animationClipsIdleSetting"]
       84 CALL                             R4 3 0
       85 GETUPVAL                         R4 6
       86 MOVE                             R5 R0
       87 DUPTABLE                         R6 K28 [{["ruleInstance"], ["property"] = "CustomIdleAlt1Animation"}]
       88 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K29 ["animationClipsIdleAlt1Setting"]
       93 CALL                             R4 3 0
       94 GETUPVAL                         R4 6
       95 MOVE                             R5 R0
       96 DUPTABLE                         R6 K31 [{["ruleInstance"], ["property"] = "CustomIdleAlt2Animation"}]
       97 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K32 ["animationClipsIdleAlt2Setting"]
      102 CALL                             R4 3 0
      103 GETUPVAL                         R4 6
      104 MOVE                             R5 R0
      105 DUPTABLE                         R6 K34 [{["ruleInstance"], ["property"] = "CustomSwimAnimation"}]
      106 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K35 ["animationClipsSwimSetting"]
      111 CALL                             R4 3 0
      112 GETUPVAL                         R4 6
      113 MOVE                             R5 R0
      114 DUPTABLE                         R6 K37 [{["ruleInstance"], ["property"] = "CustomSwimIdleAnimation"}]
      115 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      117 GETUPVAL                         R7 2
      118 GETTABLEKS                       R7 R7 K38 ["animationClipsSwimIdleSetting"]
      120 CALL                             R4 3 0
      121 GETUPVAL                         R4 6
      122 MOVE                             R5 R0
      123 DUPTABLE                         R6 K40 [{["ruleInstance"], ["property"] = "CustomClimbAnimation"}]
      124 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      126 GETUPVAL                         R7 2
      127 GETTABLEKS                       R7 R7 K41 ["animationClipsClimbSetting"]
      129 CALL                             R4 3 0
      130 RETURN                           R0 0

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
       50 GETTABLEKS                       R5 R5 K13 ["Flags"]
       52 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsPreviewStandardWalkAnimation"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K7 ["Util"]
       61 GETTABLEKS                       R6 R6 K15 ["InvokeKeys"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K5 [require]
       66 GETTABLEKS                       R7 R0 K6 ["Src"]
       68 GETTABLEKS                       R7 R7 K7 ["Util"]
       70 GETTABLEKS                       R7 R7 K16 ["AvatarPreview"]
       72 GETTABLEKS                       R7 R7 K17 ["previewAnimationManager"]
       74 CALL                             R6 1 1
       75 GETIMPORT                        R7 K5 [require]
       77 GETTABLEKS                       R8 R0 K6 ["Src"]
       79 GETTABLEKS                       R8 R8 K7 ["Util"]
       81 GETTABLEKS                       R8 R8 K16 ["AvatarPreview"]
       83 GETTABLEKS                       R8 R8 K18 ["previewStandardAnimations"]
       85 CALL                             R7 1 1
       86 GETTABLEKS                       R8 R1 K19 ["createInvokes"]
       88 GETTABLEKS                       R9 R1 K20 ["createAnimationAssetIdInvokes"]
       90 DUPCLOSURE                       R10 K21 [PROTO_4]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R9
       98 RETURN                           R10 1
