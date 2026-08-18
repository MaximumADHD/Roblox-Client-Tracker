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
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+109]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 DUPTABLE                         R5 K6 [{["ruleInstance"], ["property"] = "CharacterControllerMode"}]
       17 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K7 ["characterControllerModeSetting"]
       22 CALL                             R3 3 0
       23 GETUPVAL                         R3 2
       24 MOVE                             R4 R0
       25 DUPTABLE                         R5 K9 [{["ruleInstance"], ["property"] = "EnableClimbing"}]
       26 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K10 ["defaultAbilitiesEnableClimbingSetting"]
       31 CALL                             R3 3 0
       32 GETUPVAL                         R3 2
       33 MOVE                             R4 R0
       34 DUPTABLE                         R5 K12 [{["ruleInstance"], ["property"] = "EnableCrouching"}]
       35 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K13 ["defaultAbilitiesEnableCrouchingSetting"]
       40 CALL                             R3 3 0
       41 GETUPVAL                         R3 2
       42 MOVE                             R4 R0
       43 DUPTABLE                         R5 K15 [{["ruleInstance"], ["property"] = "EnableFallingDown"}]
       44 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K16 ["defaultAbilitiesEnableFallingDownSetting"]
       49 CALL                             R3 3 0
       50 GETUPVAL                         R3 2
       51 MOVE                             R4 R0
       52 DUPTABLE                         R5 K18 [{["ruleInstance"], ["property"] = "EnableGettingUp"}]
       53 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableGettingUpSetting"]
       58 CALL                             R3 3 0
       59 GETUPVAL                         R3 2
       60 MOVE                             R4 R0
       61 DUPTABLE                         R5 K21 [{["ruleInstance"], ["property"] = "EnableHolding"}]
       62 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       64 GETUPVAL                         R6 3
       65 GETTABLEKS                       R6 R6 K22 ["defaultAbilitiesEnableHoldingSetting"]
       67 CALL                             R3 3 0
       68 GETUPVAL                         R3 2
       69 MOVE                             R4 R0
       70 DUPTABLE                         R5 K24 [{["ruleInstance"], ["property"] = "EnableJumping"}]
       71 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableJumpingSetting"]
       76 CALL                             R3 3 0
       77 GETUPVAL                         R3 2
       78 MOVE                             R4 R0
       79 DUPTABLE                         R5 K27 [{["ruleInstance"], ["property"] = "EnableReaching"}]
       80 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K28 ["defaultAbilitiesEnableReachingSetting"]
       85 CALL                             R3 3 0
       86 GETUPVAL                         R3 2
       87 MOVE                             R4 R0
       88 DUPTABLE                         R5 K30 [{["ruleInstance"], ["property"] = "EnableRunning"}]
       89 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       91 GETUPVAL                         R6 3
       92 GETTABLEKS                       R6 R6 K31 ["defaultAbilitiesEnableRunningSetting"]
       94 CALL                             R3 3 0
       95 GETUPVAL                         R3 2
       96 MOVE                             R4 R0
       97 DUPTABLE                         R5 K33 [{["ruleInstance"], ["property"] = "EnableSitting"}]
       98 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      100 GETUPVAL                         R6 3
      101 GETTABLEKS                       R6 R6 K34 ["defaultAbilitiesEnableSittingSetting"]
      103 CALL                             R3 3 0
      104 GETUPVAL                         R3 2
      105 MOVE                             R4 R0
      106 DUPTABLE                         R5 K36 [{["ruleInstance"], ["property"] = "EnableSprinting"}]
      107 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      109 GETUPVAL                         R6 3
      110 GETTABLEKS                       R6 R6 K37 ["defaultAbilitiesEnableSprintingSetting"]
      112 CALL                             R3 3 0
      113 GETUPVAL                         R3 2
      114 MOVE                             R4 R0
      115 DUPTABLE                         R5 K39 [{["ruleInstance"], ["property"] = "EnableSwimming"}]
      116 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      118 GETUPVAL                         R6 3
      119 GETTABLEKS                       R6 R6 K40 ["defaultAbilitiesEnableSwimmingSetting"]
      121 CALL                             R3 3 0
      122 RETURN                           R0 0
      123 GETUPVAL                         R3 2
      124 MOVE                             R4 R0
      125 DUPTABLE                         R5 K6 [{["ruleInstance"], ["property"] = "CharacterControllerMode"}]
      126 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      128 GETUPVAL                         R6 3
      129 GETTABLEKS                       R6 R6 K7 ["characterControllerModeSetting"]
      131 CALL                             R3 3 0
      132 GETUPVAL                         R3 2
      133 MOVE                             R4 R0
      134 DUPTABLE                         R5 K30 [{["ruleInstance"], ["property"] = "EnableRunning"}]
      135 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      137 GETUPVAL                         R6 3
      138 GETTABLEKS                       R6 R6 K31 ["defaultAbilitiesEnableRunningSetting"]
      140 CALL                             R3 3 0
      141 GETUPVAL                         R3 2
      142 MOVE                             R4 R0
      143 DUPTABLE                         R5 K24 [{["ruleInstance"], ["property"] = "EnableJumping"}]
      144 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      146 GETUPVAL                         R6 3
      147 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableJumpingSetting"]
      149 CALL                             R3 3 0
      150 GETUPVAL                         R3 2
      151 MOVE                             R4 R0
      152 DUPTABLE                         R5 K33 [{["ruleInstance"], ["property"] = "EnableSitting"}]
      153 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      155 GETUPVAL                         R6 3
      156 GETTABLEKS                       R6 R6 K34 ["defaultAbilitiesEnableSittingSetting"]
      158 CALL                             R3 3 0
      159 GETUPVAL                         R3 2
      160 MOVE                             R4 R0
      161 DUPTABLE                         R5 K15 [{["ruleInstance"], ["property"] = "EnableFallingDown"}]
      162 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      164 GETUPVAL                         R6 3
      165 GETTABLEKS                       R6 R6 K16 ["defaultAbilitiesEnableFallingDownSetting"]
      167 CALL                             R3 3 0
      168 GETUPVAL                         R3 2
      169 MOVE                             R4 R0
      170 DUPTABLE                         R5 K18 [{["ruleInstance"], ["property"] = "EnableGettingUp"}]
      171 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      173 GETUPVAL                         R6 3
      174 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableGettingUpSetting"]
      176 CALL                             R3 3 0
      177 GETUPVAL                         R3 2
      178 MOVE                             R4 R0
      179 DUPTABLE                         R5 K9 [{["ruleInstance"], ["property"] = "EnableClimbing"}]
      180 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      182 GETUPVAL                         R6 3
      183 GETTABLEKS                       R6 R6 K10 ["defaultAbilitiesEnableClimbingSetting"]
      185 CALL                             R3 3 0
      186 GETUPVAL                         R3 2
      187 MOVE                             R4 R0
      188 DUPTABLE                         R5 K39 [{["ruleInstance"], ["property"] = "EnableSwimming"}]
      189 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      191 GETUPVAL                         R6 3
      192 GETTABLEKS                       R6 R6 K40 ["defaultAbilitiesEnableSwimmingSetting"]
      194 CALL                             R3 3 0
      195 RETURN                           R0 0

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
       59 GETTABLEKS                       R6 R6 K7 ["Util"]
       61 GETTABLEKS                       R6 R6 K15 ["InvokeKeys"]
       63 CALL                             R5 1 1
       64 GETTABLEKS                       R6 R1 K16 ["createInvokes"]
       66 DUPCLOSURE                       R7 K17 [PROTO_1]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R5
       71 RETURN                           R7 1
