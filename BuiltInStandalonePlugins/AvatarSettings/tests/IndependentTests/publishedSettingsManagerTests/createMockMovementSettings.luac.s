PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+134]
        9 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       13 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       21 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       26 GETUPVAL                         R1 3
       27 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       29 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       31 CALL                             R1 1 1
       32 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       34 GETUPVAL                         R1 3
       35 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       37 LOADK                            R2 K24 [{0, 0, 0}]
       38 CALL                             R1 1 1
       39 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       41 GETUPVAL                         R1 3
       42 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       44 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       46 CALL                             R1 1 1
       47 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       52 LOADB                            R2 1
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       56 GETUPVAL                         R1 3
       57 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       59 LOADB                            R2 1
       60 CALL                             R1 1 1
       61 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
       63 GETUPVAL                         R1 3
       64 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       66 LOADB                            R2 1
       67 CALL                             R1 1 1
       68 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
       70 GETUPVAL                         R1 3
       71 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       73 LOADB                            R2 1
       74 CALL                             R1 1 1
       75 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
       77 GETUPVAL                         R1 3
       78 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       80 LOADB                            R2 1
       81 CALL                             R1 1 1
       82 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
       84 GETUPVAL                         R1 3
       85 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       87 LOADB                            R2 1
       88 CALL                             R1 1 1
       89 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
       91 GETUPVAL                         R1 3
       92 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       94 LOADB                            R2 1
       95 CALL                             R1 1 1
       96 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
       98 GETUPVAL                         R1 0
       99 CALL                             R1 0 1
      100 JUMPIFNOT                        R1 ; [+14]
      101 GETUPVAL                         R1 3
      102 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      104 LOADB                            R2 1
      105 CALL                             R1 1 1
      106 SETTABLEKS                       R1 R0 K28 ["defaultAbilitiesEnableCrouchingSetting"]
      108 GETUPVAL                         R1 3
      109 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      111 LOADB                            R2 1
      112 CALL                             R1 1 1
      113 SETTABLEKS                       R1 R0 K29 ["defaultAbilitiesEnableSprintingSetting"]
      115 GETUPVAL                         R1 2
      116 CALL                             R1 0 1
      117 JUMPIFNOT                        R1 ; [+7]
      118 GETUPVAL                         R1 3
      119 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      121 LOADB                            R2 1
      122 CALL                             R1 1 1
      123 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableTurningSetting"]
      125 GETUPVAL                         R1 1
      126 CALL                             R1 0 1
      127 JUMPIFNOT                        R1 ; [+14]
      128 GETUPVAL                         R1 3
      129 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      131 LOADB                            R2 1
      132 CALL                             R1 1 1
      133 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableHoldingSetting"]
      135 GETUPVAL                         R1 3
      136 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      138 LOADB                            R2 1
      139 CALL                             R1 1 1
      140 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableReachingSetting"]
      142 RETURN                           R0 1
      143 DUPTABLE                         R0 K33 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      144 GETUPVAL                         R1 3
      145 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      147 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
      149 CALL                             R1 1 1
      150 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      152 GETUPVAL                         R1 3
      153 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      155 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      157 CALL                             R1 1 1
      158 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      160 GETUPVAL                         R1 3
      161 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      163 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      165 CALL                             R1 1 1
      166 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      168 GETUPVAL                         R1 3
      169 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      171 LOADK                            R2 K24 [{0, 0, 0}]
      172 CALL                             R1 1 1
      173 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      175 GETUPVAL                         R1 3
      176 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      178 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
      180 CALL                             R1 1 1
      181 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      183 GETUPVAL                         R1 3
      184 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      186 LOADB                            R2 1
      187 CALL                             R1 1 1
      188 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
      190 GETUPVAL                         R1 3
      191 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      193 LOADB                            R2 1
      194 CALL                             R1 1 1
      195 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
      197 GETUPVAL                         R1 3
      198 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      200 LOADB                            R2 1
      201 CALL                             R1 1 1
      202 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
      204 GETUPVAL                         R1 3
      205 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      207 LOADB                            R2 1
      208 CALL                             R1 1 1
      209 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
      211 GETUPVAL                         R1 3
      212 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      214 LOADB                            R2 1
      215 CALL                             R1 1 1
      216 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
      218 GETUPVAL                         R1 3
      219 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      221 LOADB                            R2 1
      222 CALL                             R1 1 1
      223 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      225 GETUPVAL                         R1 3
      226 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      228 LOADB                            R2 1
      229 CALL                             R1 1 1
      230 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      232 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+134]
        9 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       13 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       21 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       26 GETUPVAL                         R1 3
       27 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       29 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       31 CALL                             R1 1 1
       32 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       34 GETUPVAL                         R1 3
       35 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       37 LOADK                            R2 K24 [{2, 2, 2}]
       38 CALL                             R1 1 1
       39 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       41 GETUPVAL                         R1 3
       42 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       44 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       46 CALL                             R1 1 1
       47 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       52 LOADB                            R2 0
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       56 GETUPVAL                         R1 3
       57 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       59 LOADB                            R2 0
       60 CALL                             R1 1 1
       61 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
       63 GETUPVAL                         R1 3
       64 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       66 LOADB                            R2 0
       67 CALL                             R1 1 1
       68 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
       70 GETUPVAL                         R1 3
       71 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       73 LOADB                            R2 0
       74 CALL                             R1 1 1
       75 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
       77 GETUPVAL                         R1 3
       78 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       80 LOADB                            R2 0
       81 CALL                             R1 1 1
       82 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
       84 GETUPVAL                         R1 3
       85 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       87 LOADB                            R2 0
       88 CALL                             R1 1 1
       89 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
       91 GETUPVAL                         R1 3
       92 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       94 LOADB                            R2 0
       95 CALL                             R1 1 1
       96 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
       98 GETUPVAL                         R1 0
       99 CALL                             R1 0 1
      100 JUMPIFNOT                        R1 ; [+14]
      101 GETUPVAL                         R1 3
      102 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      104 LOADB                            R2 0
      105 CALL                             R1 1 1
      106 SETTABLEKS                       R1 R0 K28 ["defaultAbilitiesEnableCrouchingSetting"]
      108 GETUPVAL                         R1 3
      109 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      111 LOADB                            R2 0
      112 CALL                             R1 1 1
      113 SETTABLEKS                       R1 R0 K29 ["defaultAbilitiesEnableSprintingSetting"]
      115 GETUPVAL                         R1 2
      116 CALL                             R1 0 1
      117 JUMPIFNOT                        R1 ; [+7]
      118 GETUPVAL                         R1 3
      119 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      121 LOADB                            R2 0
      122 CALL                             R1 1 1
      123 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableTurningSetting"]
      125 GETUPVAL                         R1 1
      126 CALL                             R1 0 1
      127 JUMPIFNOT                        R1 ; [+14]
      128 GETUPVAL                         R1 3
      129 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      131 LOADB                            R2 0
      132 CALL                             R1 1 1
      133 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableHoldingSetting"]
      135 GETUPVAL                         R1 3
      136 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      138 LOADB                            R2 0
      139 CALL                             R1 1 1
      140 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableReachingSetting"]
      142 RETURN                           R0 1
      143 DUPTABLE                         R0 K33 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      144 GETUPVAL                         R1 3
      145 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      147 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      149 CALL                             R1 1 1
      150 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      152 GETUPVAL                         R1 3
      153 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      155 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      157 CALL                             R1 1 1
      158 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      160 GETUPVAL                         R1 3
      161 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      163 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      165 CALL                             R1 1 1
      166 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      168 GETUPVAL                         R1 3
      169 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      171 LOADK                            R2 K24 [{2, 2, 2}]
      172 CALL                             R1 1 1
      173 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      175 GETUPVAL                         R1 3
      176 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      178 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
      180 CALL                             R1 1 1
      181 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      183 GETUPVAL                         R1 3
      184 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      186 LOADB                            R2 0
      187 CALL                             R1 1 1
      188 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
      190 GETUPVAL                         R1 3
      191 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      193 LOADB                            R2 0
      194 CALL                             R1 1 1
      195 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
      197 GETUPVAL                         R1 3
      198 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      200 LOADB                            R2 0
      201 CALL                             R1 1 1
      202 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
      204 GETUPVAL                         R1 3
      205 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      207 LOADB                            R2 0
      208 CALL                             R1 1 1
      209 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
      211 GETUPVAL                         R1 3
      212 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      214 LOADB                            R2 0
      215 CALL                             R1 1 1
      216 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
      218 GETUPVAL                         R1 3
      219 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      221 LOADB                            R2 0
      222 CALL                             R1 1 1
      223 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      225 GETUPVAL                         R1 3
      226 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      228 LOADB                            R2 0
      229 CALL                             R1 1 1
      230 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      232 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Flags"]
       31 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsReachHold"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Flags"]
       40 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsTurning"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["tests"]
       49 GETTABLEKS                       R6 R6 K7 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["mockUseSetting"]
       53 CALL                             R5 1 1
       54 NEWTABLE                         R6 2 0
       56 DUPCLOSURE                       R7 K15 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R7 R6 K16 ["primaryPreset"]
       63 DUPCLOSURE                       R7 K17 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R7 R6 K18 ["secondaryPreset"]
       70 RETURN                           R6 1
