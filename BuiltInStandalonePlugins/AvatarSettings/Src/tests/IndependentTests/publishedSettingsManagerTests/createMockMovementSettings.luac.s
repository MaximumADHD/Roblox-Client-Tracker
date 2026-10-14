PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+3]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+144]
       12 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       16 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       24 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       32 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       34 CALL                             R1 1 1
       35 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       40 LOADK                            R2 K24 [{0, 0, 0}]
       41 CALL                             R1 1 1
       42 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       44 GETUPVAL                         R1 4
       45 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       47 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       49 CALL                             R1 1 1
       50 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       52 GETUPVAL                         R1 4
       53 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       55 LOADB                            R2 1
       56 CALL                             R1 1 1
       57 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       59 GETUPVAL                         R1 4
       60 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       62 LOADB                            R2 1
       63 CALL                             R1 1 1
       64 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
       66 GETUPVAL                         R1 4
       67 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       69 LOADB                            R2 1
       70 CALL                             R1 1 1
       71 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
       73 GETUPVAL                         R1 4
       74 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       76 LOADB                            R2 1
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
       80 GETUPVAL                         R1 4
       81 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       83 LOADB                            R2 1
       84 CALL                             R1 1 1
       85 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
       87 GETUPVAL                         R1 4
       88 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       90 LOADB                            R2 1
       91 CALL                             R1 1 1
       92 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
       94 GETUPVAL                         R1 4
       95 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       97 LOADB                            R2 1
       98 CALL                             R1 1 1
       99 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      101 GETUPVAL                         R1 3
      102 CALL                             R1 0 1
      103 JUMPIFNOT                        R1 ; [+7]
      104 GETUPVAL                         R1 4
      105 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      107 LOADB                            R2 0
      108 CALL                             R1 1 1
      109 SETTABLEKS                       R1 R0 K28 ["collisionBodyPartsCollidableOnDeathSetting"]
      111 GETUPVAL                         R1 0
      112 CALL                             R1 0 1
      113 JUMPIFNOT                        R1 ; [+14]
      114 GETUPVAL                         R1 4
      115 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      117 LOADB                            R2 1
      118 CALL                             R1 1 1
      119 SETTABLEKS                       R1 R0 K29 ["defaultAbilitiesEnableCrouchingSetting"]
      121 GETUPVAL                         R1 4
      122 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      124 LOADB                            R2 1
      125 CALL                             R1 1 1
      126 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableSprintingSetting"]
      128 GETUPVAL                         R1 2
      129 CALL                             R1 0 1
      130 JUMPIFNOT                        R1 ; [+7]
      131 GETUPVAL                         R1 4
      132 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      134 LOADB                            R2 1
      135 CALL                             R1 1 1
      136 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableTurningSetting"]
      138 GETUPVAL                         R1 1
      139 CALL                             R1 0 1
      140 JUMPIFNOT                        R1 ; [+14]
      141 GETUPVAL                         R1 4
      142 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      144 LOADB                            R2 1
      145 CALL                             R1 1 1
      146 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableHoldingSetting"]
      148 GETUPVAL                         R1 4
      149 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      151 LOADB                            R2 1
      152 CALL                             R1 1 1
      153 SETTABLEKS                       R1 R0 K33 ["defaultAbilitiesEnableReachingSetting"]
      155 RETURN                           R0 1
      156 DUPTABLE                         R0 K34 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      157 GETUPVAL                         R1 4
      158 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      160 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
      162 CALL                             R1 1 1
      163 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      165 GETUPVAL                         R1 4
      166 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      168 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      170 CALL                             R1 1 1
      171 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      173 GETUPVAL                         R1 4
      174 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      176 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      178 CALL                             R1 1 1
      179 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      181 GETUPVAL                         R1 4
      182 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      184 LOADK                            R2 K24 [{0, 0, 0}]
      185 CALL                             R1 1 1
      186 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      188 GETUPVAL                         R1 4
      189 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      191 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
      193 CALL                             R1 1 1
      194 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      196 GETUPVAL                         R1 4
      197 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      199 LOADB                            R2 1
      200 CALL                             R1 1 1
      201 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
      203 GETUPVAL                         R1 4
      204 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      206 LOADB                            R2 1
      207 CALL                             R1 1 1
      208 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
      210 GETUPVAL                         R1 4
      211 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      213 LOADB                            R2 1
      214 CALL                             R1 1 1
      215 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
      217 GETUPVAL                         R1 4
      218 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      220 LOADB                            R2 1
      221 CALL                             R1 1 1
      222 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
      224 GETUPVAL                         R1 4
      225 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      227 LOADB                            R2 1
      228 CALL                             R1 1 1
      229 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
      231 GETUPVAL                         R1 4
      232 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      234 LOADB                            R2 1
      235 CALL                             R1 1 1
      236 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      238 GETUPVAL                         R1 4
      239 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      241 LOADB                            R2 1
      242 CALL                             R1 1 1
      243 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      245 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+3]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+144]
       12 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       16 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       24 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       32 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       34 CALL                             R1 1 1
       35 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       40 LOADK                            R2 K24 [{2, 2, 2}]
       41 CALL                             R1 1 1
       42 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       44 GETUPVAL                         R1 4
       45 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       47 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       49 CALL                             R1 1 1
       50 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       52 GETUPVAL                         R1 4
       53 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       55 LOADB                            R2 0
       56 CALL                             R1 1 1
       57 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       59 GETUPVAL                         R1 4
       60 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       62 LOADB                            R2 0
       63 CALL                             R1 1 1
       64 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
       66 GETUPVAL                         R1 4
       67 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       69 LOADB                            R2 0
       70 CALL                             R1 1 1
       71 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
       73 GETUPVAL                         R1 4
       74 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       76 LOADB                            R2 0
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
       80 GETUPVAL                         R1 4
       81 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       83 LOADB                            R2 0
       84 CALL                             R1 1 1
       85 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
       87 GETUPVAL                         R1 4
       88 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       90 LOADB                            R2 0
       91 CALL                             R1 1 1
       92 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
       94 GETUPVAL                         R1 4
       95 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       97 LOADB                            R2 0
       98 CALL                             R1 1 1
       99 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      101 GETUPVAL                         R1 3
      102 CALL                             R1 0 1
      103 JUMPIFNOT                        R1 ; [+7]
      104 GETUPVAL                         R1 4
      105 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      107 LOADB                            R2 1
      108 CALL                             R1 1 1
      109 SETTABLEKS                       R1 R0 K28 ["collisionBodyPartsCollidableOnDeathSetting"]
      111 GETUPVAL                         R1 0
      112 CALL                             R1 0 1
      113 JUMPIFNOT                        R1 ; [+14]
      114 GETUPVAL                         R1 4
      115 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      117 LOADB                            R2 0
      118 CALL                             R1 1 1
      119 SETTABLEKS                       R1 R0 K29 ["defaultAbilitiesEnableCrouchingSetting"]
      121 GETUPVAL                         R1 4
      122 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      124 LOADB                            R2 0
      125 CALL                             R1 1 1
      126 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableSprintingSetting"]
      128 GETUPVAL                         R1 2
      129 CALL                             R1 0 1
      130 JUMPIFNOT                        R1 ; [+7]
      131 GETUPVAL                         R1 4
      132 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      134 LOADB                            R2 0
      135 CALL                             R1 1 1
      136 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableTurningSetting"]
      138 GETUPVAL                         R1 1
      139 CALL                             R1 0 1
      140 JUMPIFNOT                        R1 ; [+14]
      141 GETUPVAL                         R1 4
      142 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      144 LOADB                            R2 0
      145 CALL                             R1 1 1
      146 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableHoldingSetting"]
      148 GETUPVAL                         R1 4
      149 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      151 LOADB                            R2 0
      152 CALL                             R1 1 1
      153 SETTABLEKS                       R1 R0 K33 ["defaultAbilitiesEnableReachingSetting"]
      155 RETURN                           R0 1
      156 DUPTABLE                         R0 K34 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      157 GETUPVAL                         R1 4
      158 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      160 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      162 CALL                             R1 1 1
      163 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      165 GETUPVAL                         R1 4
      166 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      168 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      170 CALL                             R1 1 1
      171 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      173 GETUPVAL                         R1 4
      174 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      176 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      178 CALL                             R1 1 1
      179 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      181 GETUPVAL                         R1 4
      182 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      184 LOADK                            R2 K24 [{2, 2, 2}]
      185 CALL                             R1 1 1
      186 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      188 GETUPVAL                         R1 4
      189 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      191 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
      193 CALL                             R1 1 1
      194 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      196 GETUPVAL                         R1 4
      197 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      199 LOADB                            R2 0
      200 CALL                             R1 1 1
      201 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
      203 GETUPVAL                         R1 4
      204 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      206 LOADB                            R2 0
      207 CALL                             R1 1 1
      208 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
      210 GETUPVAL                         R1 4
      211 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      213 LOADB                            R2 0
      214 CALL                             R1 1 1
      215 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
      217 GETUPVAL                         R1 4
      218 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      220 LOADB                            R2 0
      221 CALL                             R1 1 1
      222 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
      224 GETUPVAL                         R1 4
      225 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      227 LOADB                            R2 0
      228 CALL                             R1 1 1
      229 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
      231 GETUPVAL                         R1 4
      232 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      234 LOADB                            R2 0
      235 CALL                             R1 1 1
      236 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      238 GETUPVAL                         R1 4
      239 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      241 LOADB                            R2 0
      242 CALL                             R1 1 1
      243 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      245 RETURN                           R0 1

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
       22 GETTABLEKS                       R3 R3 K10 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Flags"]
       31 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Flags"]
       40 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsReachHold"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K9 ["Flags"]
       49 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsTurning"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K14 ["tests"]
       58 GETTABLEKS                       R7 R7 K7 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["mockUseSetting"]
       62 CALL                             R6 1 1
       63 NEWTABLE                         R7 2 0
       65 DUPCLOSURE                       R8 K16 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R8 R7 K17 ["primaryPreset"]
       73 DUPCLOSURE                       R8 K18 [PROTO_1]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R8 R7 K19 ["secondaryPreset"]
       81 RETURN                           R7 1
