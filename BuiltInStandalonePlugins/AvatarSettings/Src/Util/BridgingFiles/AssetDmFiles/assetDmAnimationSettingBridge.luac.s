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
       15 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       16 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       18 LOADK                            R7 K6 ["AnimationPacksMode"]
       19 SETTABLEKS                       R7 R6 K4 ["property"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K7 ["animationPacksSetting"]
       24 CALL                             R4 3 0
       25 GETUPVAL                         R4 1
       26 MOVE                             R5 R0
       27 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       28 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       30 LOADK                            R7 K8 ["AnimationClipsMode"]
       31 SETTABLEKS                       R7 R6 K4 ["property"]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K9 ["animationClipsSetting"]
       36 LOADB                            R8 0
       37 DUPCLOSURE                       R9 K10 [PROTO_2]
       38 CAPTURE                          UPVAL U3
       39 CALL                             R4 5 0
       40 GETUPVAL                         R4 4
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       43 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       45 LOADK                            R7 K11 ["CustomRunAnimation"]
       46 SETTABLEKS                       R7 R6 K4 ["property"]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K12 ["animationClipsRunSetting"]
       51 CALL                             R4 3 0
       52 GETUPVAL                         R4 4
       53 MOVE                             R5 R0
       54 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       55 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       57 LOADK                            R7 K13 ["CustomWalkAnimation"]
       58 SETTABLEKS                       R7 R6 K4 ["property"]
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R7 R7 K14 ["animationClipsWalkSetting"]
       63 CALL                             R4 3 0
       64 GETUPVAL                         R4 4
       65 MOVE                             R5 R0
       66 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       67 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       69 LOADK                            R7 K15 ["CustomFallAnimation"]
       70 SETTABLEKS                       R7 R6 K4 ["property"]
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R7 K16 ["animationClipsFallSetting"]
       75 CALL                             R4 3 0
       76 GETUPVAL                         R4 4
       77 MOVE                             R5 R0
       78 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       79 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       81 LOADK                            R7 K17 ["CustomJumpAnimation"]
       82 SETTABLEKS                       R7 R6 K4 ["property"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K18 ["animationClipsJumpSetting"]
       87 CALL                             R4 3 0
       88 GETUPVAL                         R4 4
       89 MOVE                             R5 R0
       90 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
       91 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
       93 LOADK                            R7 K19 ["CustomIdleAnimation"]
       94 SETTABLEKS                       R7 R6 K4 ["property"]
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K20 ["animationClipsIdleSetting"]
       99 CALL                             R4 3 0
      100 GETUPVAL                         R4 4
      101 MOVE                             R5 R0
      102 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      103 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      105 LOADK                            R7 K21 ["CustomIdleAlt1Animation"]
      106 SETTABLEKS                       R7 R6 K4 ["property"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K22 ["animationClipsIdleAlt1Setting"]
      111 CALL                             R4 3 0
      112 GETUPVAL                         R4 4
      113 MOVE                             R5 R0
      114 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      115 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      117 LOADK                            R7 K23 ["CustomIdleAlt2Animation"]
      118 SETTABLEKS                       R7 R6 K4 ["property"]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K24 ["animationClipsIdleAlt2Setting"]
      123 CALL                             R4 3 0
      124 GETUPVAL                         R4 4
      125 MOVE                             R5 R0
      126 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      127 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      129 LOADK                            R7 K25 ["CustomSwimAnimation"]
      130 SETTABLEKS                       R7 R6 K4 ["property"]
      132 GETUPVAL                         R7 2
      133 GETTABLEKS                       R7 R7 K26 ["animationClipsSwimSetting"]
      135 CALL                             R4 3 0
      136 GETUPVAL                         R4 4
      137 MOVE                             R5 R0
      138 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      139 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      141 LOADK                            R7 K27 ["CustomSwimIdleAnimation"]
      142 SETTABLEKS                       R7 R6 K4 ["property"]
      144 GETUPVAL                         R7 2
      145 GETTABLEKS                       R7 R7 K28 ["animationClipsSwimIdleSetting"]
      147 CALL                             R4 3 0
      148 GETUPVAL                         R4 4
      149 MOVE                             R5 R0
      150 DUPTABLE                         R6 K5 [{"ruleInstance", "property"}]
      151 SETTABLEKS                       R1 R6 K3 ["ruleInstance"]
      153 LOADK                            R7 K29 ["CustomClimbAnimation"]
      154 SETTABLEKS                       R7 R6 K4 ["property"]
      156 GETUPVAL                         R7 2
      157 GETTABLEKS                       R7 R7 K30 ["animationClipsClimbSetting"]
      159 CALL                             R4 3 0
      160 RETURN                           R0 0

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
