PROTO_0:
        0 DUPTABLE                         R1 K2 [{"ruleInstance", "property"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ruleInstance"]
        4 SETTABLEKS                       R0 R1 K1 ["property"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["avatarAbilityRules"]
        3 CALL                             R1 0 1
        4 FASTCALL1                        ASSERT R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 DUPTABLE                         R5 K6 [{["ruleInstance"], ["property"] = "CharacterControllerMode"}]
       14 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K7 ["characterControllerModeSetting"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R0
       22 DUPTABLE                         R5 K9 [{["ruleInstance"], ["property"] = "EnableRunning"}]
       23 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K10 ["defaultAbilitiesEnableRunningSetting"]
       28 CALL                             R3 3 0
       29 GETUPVAL                         R3 1
       30 MOVE                             R4 R0
       31 DUPTABLE                         R5 K12 [{["ruleInstance"], ["property"] = "EnableJumping"}]
       32 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K13 ["defaultAbilitiesEnableJumpingSetting"]
       37 CALL                             R3 3 0
       38 GETUPVAL                         R3 1
       39 MOVE                             R4 R0
       40 DUPTABLE                         R5 K15 [{["ruleInstance"], ["property"] = "EnableSitting"}]
       41 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K16 ["defaultAbilitiesEnableSittingSetting"]
       46 CALL                             R3 3 0
       47 GETUPVAL                         R3 1
       48 MOVE                             R4 R0
       49 DUPTABLE                         R5 K18 [{["ruleInstance"], ["property"] = "EnableFallingDown"}]
       50 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableFallingDownSetting"]
       55 CALL                             R3 3 0
       56 GETUPVAL                         R3 1
       57 MOVE                             R4 R0
       58 DUPTABLE                         R5 K21 [{["ruleInstance"], ["property"] = "EnableGettingUp"}]
       59 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R6 R6 K22 ["defaultAbilitiesEnableGettingUpSetting"]
       64 CALL                             R3 3 0
       65 GETUPVAL                         R3 1
       66 MOVE                             R4 R0
       67 DUPTABLE                         R5 K24 [{["ruleInstance"], ["property"] = "EnableClimbing"}]
       68 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableClimbingSetting"]
       73 CALL                             R3 3 0
       74 GETUPVAL                         R3 1
       75 MOVE                             R4 R0
       76 DUPTABLE                         R5 K27 [{["ruleInstance"], ["property"] = "EnableSwimming"}]
       77 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R6 R6 K28 ["defaultAbilitiesEnableSwimmingSetting"]
       82 CALL                             R3 3 0
       83 GETUPVAL                         R3 3
       84 CALL                             R3 0 1
       85 JUMPIFNOT                        R3 ; [+18]
       86 GETUPVAL                         R3 1
       87 MOVE                             R4 R0
       88 DUPTABLE                         R5 K30 [{["ruleInstance"], ["property"] = "EnableCrouching"}]
       89 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R6 R6 K31 ["defaultAbilitiesEnableCrouchingSetting"]
       94 CALL                             R3 3 0
       95 GETUPVAL                         R3 1
       96 MOVE                             R4 R0
       97 DUPTABLE                         R5 K33 [{["ruleInstance"], ["property"] = "EnableSprinting"}]
       98 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      100 GETUPVAL                         R6 2
      101 GETTABLEKS                       R6 R6 K34 ["defaultAbilitiesEnableSprintingSetting"]
      103 CALL                             R3 3 0
      104 GETUPVAL                         R3 4
      105 CALL                             R3 0 1
      106 JUMPIFNOT                        R3 ; [+9]
      107 GETUPVAL                         R3 1
      108 MOVE                             R4 R0
      109 DUPTABLE                         R5 K36 [{["ruleInstance"], ["property"] = "EnableTurning"}]
      110 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      112 GETUPVAL                         R6 2
      113 GETTABLEKS                       R6 R6 K37 ["defaultAbilitiesEnableTurningSetting"]
      115 CALL                             R3 3 0
      116 GETUPVAL                         R3 5
      117 CALL                             R3 0 1
      118 JUMPIFNOT                        R3 ; [+18]
      119 GETUPVAL                         R3 1
      120 MOVE                             R4 R0
      121 DUPTABLE                         R5 K39 [{["ruleInstance"], ["property"] = "EnableHolding"}]
      122 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      124 GETUPVAL                         R6 2
      125 GETTABLEKS                       R6 R6 K40 ["defaultAbilitiesEnableHoldingSetting"]
      127 CALL                             R3 3 0
      128 GETUPVAL                         R3 1
      129 MOVE                             R4 R0
      130 DUPTABLE                         R5 K42 [{["ruleInstance"], ["property"] = "EnableReaching"}]
      131 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      133 GETUPVAL                         R6 2
      134 GETTABLEKS                       R6 R6 K43 ["defaultAbilitiesEnableReachingSetting"]
      136 CALL                             R3 3 0
      137 RETURN                           R0 0

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
       52 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K13 ["Flags"]
       61 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsReachHold"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K5 [require]
       66 GETTABLEKS                       R7 R0 K6 ["Src"]
       68 GETTABLEKS                       R7 R7 K13 ["Flags"]
       70 GETTABLEKS                       R7 R7 K16 ["getFFlagAvatarSettingsTurning"]
       72 CALL                             R6 1 1
       73 GETIMPORT                        R7 K5 [require]
       75 GETTABLEKS                       R8 R0 K6 ["Src"]
       77 GETTABLEKS                       R8 R8 K7 ["Util"]
       79 GETTABLEKS                       R8 R8 K17 ["InvokeKeys"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R1 K18 ["createInvokes"]
       84 DUPCLOSURE                       R9 K19 [PROTO_1]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R5
       91 RETURN                           R9 1
