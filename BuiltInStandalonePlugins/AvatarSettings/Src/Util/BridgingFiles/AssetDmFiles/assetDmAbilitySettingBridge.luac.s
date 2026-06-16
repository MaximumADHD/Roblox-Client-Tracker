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
       13 JUMPIFNOT                        R3 ; [+157]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       17 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       19 LOADK                            R6 K6 ["CharacterControllerMode"]
       20 SETTABLEKS                       R6 R5 K4 ["property"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K7 ["characterControllerModeSetting"]
       25 CALL                             R3 3 0
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R0
       28 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       29 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       31 LOADK                            R6 K8 ["EnableClimbing"]
       32 SETTABLEKS                       R6 R5 K4 ["property"]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K9 ["defaultAbilitiesEnableClimbingSetting"]
       37 CALL                             R3 3 0
       38 GETUPVAL                         R3 2
       39 MOVE                             R4 R0
       40 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       41 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       43 LOADK                            R6 K10 ["EnableCrouching"]
       44 SETTABLEKS                       R6 R5 K4 ["property"]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K11 ["defaultAbilitiesEnableCrouchingSetting"]
       49 CALL                             R3 3 0
       50 GETUPVAL                         R3 2
       51 MOVE                             R4 R0
       52 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       53 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       55 LOADK                            R6 K12 ["EnableFallingDown"]
       56 SETTABLEKS                       R6 R5 K4 ["property"]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K13 ["defaultAbilitiesEnableFallingDownSetting"]
       61 CALL                             R3 3 0
       62 GETUPVAL                         R3 2
       63 MOVE                             R4 R0
       64 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       65 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       67 LOADK                            R6 K14 ["EnableGettingUp"]
       68 SETTABLEKS                       R6 R5 K4 ["property"]
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K15 ["defaultAbilitiesEnableGettingUpSetting"]
       73 CALL                             R3 3 0
       74 GETUPVAL                         R3 2
       75 MOVE                             R4 R0
       76 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       77 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       79 LOADK                            R6 K16 ["EnableHolding"]
       80 SETTABLEKS                       R6 R5 K4 ["property"]
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K17 ["defaultAbilitiesEnableHoldingSetting"]
       85 CALL                             R3 3 0
       86 GETUPVAL                         R3 2
       87 MOVE                             R4 R0
       88 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
       89 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
       91 LOADK                            R6 K18 ["EnableJumping"]
       92 SETTABLEKS                       R6 R5 K4 ["property"]
       94 GETUPVAL                         R6 3
       95 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableJumpingSetting"]
       97 CALL                             R3 3 0
       98 GETUPVAL                         R3 2
       99 MOVE                             R4 R0
      100 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      101 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      103 LOADK                            R6 K20 ["EnableReaching"]
      104 SETTABLEKS                       R6 R5 K4 ["property"]
      106 GETUPVAL                         R6 3
      107 GETTABLEKS                       R6 R6 K21 ["defaultAbilitiesEnableReachingSetting"]
      109 CALL                             R3 3 0
      110 GETUPVAL                         R3 2
      111 MOVE                             R4 R0
      112 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      113 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      115 LOADK                            R6 K22 ["EnableRunning"]
      116 SETTABLEKS                       R6 R5 K4 ["property"]
      118 GETUPVAL                         R6 3
      119 GETTABLEKS                       R6 R6 K23 ["defaultAbilitiesEnableRunningSetting"]
      121 CALL                             R3 3 0
      122 GETUPVAL                         R3 2
      123 MOVE                             R4 R0
      124 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      125 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      127 LOADK                            R6 K24 ["EnableSitting"]
      128 SETTABLEKS                       R6 R5 K4 ["property"]
      130 GETUPVAL                         R6 3
      131 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableSittingSetting"]
      133 CALL                             R3 3 0
      134 GETUPVAL                         R3 2
      135 MOVE                             R4 R0
      136 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      137 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      139 LOADK                            R6 K26 ["EnableSprinting"]
      140 SETTABLEKS                       R6 R5 K4 ["property"]
      142 GETUPVAL                         R6 3
      143 GETTABLEKS                       R6 R6 K27 ["defaultAbilitiesEnableSprintingSetting"]
      145 CALL                             R3 3 0
      146 GETUPVAL                         R3 2
      147 MOVE                             R4 R0
      148 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      149 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      151 LOADK                            R6 K28 ["EnableStrafing"]
      152 SETTABLEKS                       R6 R5 K4 ["property"]
      154 GETUPVAL                         R6 3
      155 GETTABLEKS                       R6 R6 K29 ["defaultAbilitiesEnableStrafingSetting"]
      157 CALL                             R3 3 0
      158 GETUPVAL                         R3 2
      159 MOVE                             R4 R0
      160 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      161 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      163 LOADK                            R6 K30 ["EnableSwimming"]
      164 SETTABLEKS                       R6 R5 K4 ["property"]
      166 GETUPVAL                         R6 3
      167 GETTABLEKS                       R6 R6 K31 ["defaultAbilitiesEnableSwimmingSetting"]
      169 CALL                             R3 3 0
      170 RETURN                           R0 0
      171 GETUPVAL                         R3 2
      172 MOVE                             R4 R0
      173 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      174 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      176 LOADK                            R6 K6 ["CharacterControllerMode"]
      177 SETTABLEKS                       R6 R5 K4 ["property"]
      179 GETUPVAL                         R6 3
      180 GETTABLEKS                       R6 R6 K7 ["characterControllerModeSetting"]
      182 CALL                             R3 3 0
      183 GETUPVAL                         R3 2
      184 MOVE                             R4 R0
      185 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      186 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      188 LOADK                            R6 K22 ["EnableRunning"]
      189 SETTABLEKS                       R6 R5 K4 ["property"]
      191 GETUPVAL                         R6 3
      192 GETTABLEKS                       R6 R6 K23 ["defaultAbilitiesEnableRunningSetting"]
      194 CALL                             R3 3 0
      195 GETUPVAL                         R3 2
      196 MOVE                             R4 R0
      197 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      198 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      200 LOADK                            R6 K18 ["EnableJumping"]
      201 SETTABLEKS                       R6 R5 K4 ["property"]
      203 GETUPVAL                         R6 3
      204 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableJumpingSetting"]
      206 CALL                             R3 3 0
      207 GETUPVAL                         R3 2
      208 MOVE                             R4 R0
      209 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      210 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      212 LOADK                            R6 K24 ["EnableSitting"]
      213 SETTABLEKS                       R6 R5 K4 ["property"]
      215 GETUPVAL                         R6 3
      216 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableSittingSetting"]
      218 CALL                             R3 3 0
      219 GETUPVAL                         R3 2
      220 MOVE                             R4 R0
      221 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      222 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      224 LOADK                            R6 K12 ["EnableFallingDown"]
      225 SETTABLEKS                       R6 R5 K4 ["property"]
      227 GETUPVAL                         R6 3
      228 GETTABLEKS                       R6 R6 K13 ["defaultAbilitiesEnableFallingDownSetting"]
      230 CALL                             R3 3 0
      231 GETUPVAL                         R3 2
      232 MOVE                             R4 R0
      233 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      234 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      236 LOADK                            R6 K14 ["EnableGettingUp"]
      237 SETTABLEKS                       R6 R5 K4 ["property"]
      239 GETUPVAL                         R6 3
      240 GETTABLEKS                       R6 R6 K15 ["defaultAbilitiesEnableGettingUpSetting"]
      242 CALL                             R3 3 0
      243 GETUPVAL                         R3 2
      244 MOVE                             R4 R0
      245 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      246 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      248 LOADK                            R6 K8 ["EnableClimbing"]
      249 SETTABLEKS                       R6 R5 K4 ["property"]
      251 GETUPVAL                         R6 3
      252 GETTABLEKS                       R6 R6 K9 ["defaultAbilitiesEnableClimbingSetting"]
      254 CALL                             R3 3 0
      255 GETUPVAL                         R3 2
      256 MOVE                             R4 R0
      257 DUPTABLE                         R5 K5 [{"ruleInstance", "property"}]
      258 SETTABLEKS                       R1 R5 K3 ["ruleInstance"]
      260 LOADK                            R6 K30 ["EnableSwimming"]
      261 SETTABLEKS                       R6 R5 K4 ["property"]
      263 GETUPVAL                         R6 3
      264 GETTABLEKS                       R6 R6 K31 ["defaultAbilitiesEnableSwimmingSetting"]
      266 CALL                             R3 3 0
      267 RETURN                           R0 0

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
