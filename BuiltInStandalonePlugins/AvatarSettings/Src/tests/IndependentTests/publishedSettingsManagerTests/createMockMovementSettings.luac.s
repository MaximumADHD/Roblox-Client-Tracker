PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+154]
       15 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       19 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       27 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       32 GETUPVAL                         R1 5
       33 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       35 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       40 GETUPVAL                         R1 5
       41 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       43 LOADK                            R2 K24 [{0, 0, 0}]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       50 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       52 CALL                             R1 1 1
       53 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       55 GETUPVAL                         R1 5
       56 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       58 LOADB                            R2 1
       59 CALL                             R1 1 1
       60 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       62 GETUPVAL                         R1 5
       63 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       65 LOADB                            R2 1
       66 CALL                             R1 1 1
       67 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
       69 GETUPVAL                         R1 5
       70 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       72 LOADB                            R2 1
       73 CALL                             R1 1 1
       74 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
       76 GETUPVAL                         R1 5
       77 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       79 LOADB                            R2 1
       80 CALL                             R1 1 1
       81 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
       83 GETUPVAL                         R1 5
       84 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       86 LOADB                            R2 1
       87 CALL                             R1 1 1
       88 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
       90 GETUPVAL                         R1 5
       91 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       93 LOADB                            R2 1
       94 CALL                             R1 1 1
       95 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
       97 GETUPVAL                         R1 5
       98 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      100 LOADB                            R2 1
      101 CALL                             R1 1 1
      102 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      104 GETUPVAL                         R1 3
      105 CALL                             R1 0 1
      106 JUMPIFNOT                        R1 ; [+7]
      107 GETUPVAL                         R1 5
      108 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      110 LOADB                            R2 1
      111 CALL                             R1 1 1
      112 SETTABLEKS                       R1 R0 K28 ["collisionBodyPartsCollidableOnDeathSetting"]
      114 GETUPVAL                         R1 4
      115 CALL                             R1 0 1
      116 JUMPIFNOT                        R1 ; [+7]
      117 GETUPVAL                         R1 5
      118 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      120 LOADK                            R2 K24 [{0, 0, 0}]
      121 CALL                             R1 1 1
      122 SETTABLEKS                       R1 R0 K29 ["collisionHitboxSizeSetting"]
      124 GETUPVAL                         R1 0
      125 CALL                             R1 0 1
      126 JUMPIFNOT                        R1 ; [+14]
      127 GETUPVAL                         R1 5
      128 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      130 LOADB                            R2 1
      131 CALL                             R1 1 1
      132 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableCrouchingSetting"]
      134 GETUPVAL                         R1 5
      135 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      137 LOADB                            R2 1
      138 CALL                             R1 1 1
      139 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableSprintingSetting"]
      141 GETUPVAL                         R1 2
      142 CALL                             R1 0 1
      143 JUMPIFNOT                        R1 ; [+7]
      144 GETUPVAL                         R1 5
      145 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      147 LOADB                            R2 1
      148 CALL                             R1 1 1
      149 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableTurningSetting"]
      151 GETUPVAL                         R1 1
      152 CALL                             R1 0 1
      153 JUMPIFNOT                        R1 ; [+14]
      154 GETUPVAL                         R1 5
      155 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      157 LOADB                            R2 1
      158 CALL                             R1 1 1
      159 SETTABLEKS                       R1 R0 K33 ["defaultAbilitiesEnableHoldingSetting"]
      161 GETUPVAL                         R1 5
      162 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      164 LOADB                            R2 1
      165 CALL                             R1 1 1
      166 SETTABLEKS                       R1 R0 K34 ["defaultAbilitiesEnableReachingSetting"]
      168 RETURN                           R0 1
      169 DUPTABLE                         R0 K35 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      170 GETUPVAL                         R1 5
      171 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      173 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
      175 CALL                             R1 1 1
      176 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      178 GETUPVAL                         R1 5
      179 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      181 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      183 CALL                             R1 1 1
      184 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      186 GETUPVAL                         R1 5
      187 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      189 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      191 CALL                             R1 1 1
      192 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      194 GETUPVAL                         R1 5
      195 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      197 LOADK                            R2 K24 [{0, 0, 0}]
      198 CALL                             R1 1 1
      199 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      201 GETUPVAL                         R1 5
      202 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      204 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
      206 CALL                             R1 1 1
      207 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      209 GETUPVAL                         R1 5
      210 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      212 LOADB                            R2 1
      213 CALL                             R1 1 1
      214 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
      216 GETUPVAL                         R1 5
      217 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      219 LOADB                            R2 1
      220 CALL                             R1 1 1
      221 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
      223 GETUPVAL                         R1 5
      224 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      226 LOADB                            R2 1
      227 CALL                             R1 1 1
      228 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
      230 GETUPVAL                         R1 5
      231 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      233 LOADB                            R2 1
      234 CALL                             R1 1 1
      235 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
      237 GETUPVAL                         R1 5
      238 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      240 LOADB                            R2 1
      241 CALL                             R1 1 1
      242 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
      244 GETUPVAL                         R1 5
      245 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      247 LOADB                            R2 1
      248 CALL                             R1 1 1
      249 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      251 GETUPVAL                         R1 5
      252 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      254 LOADB                            R2 1
      255 CALL                             R1 1 1
      256 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      258 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+154]
       15 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       19 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       27 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       32 GETUPVAL                         R1 5
       33 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       35 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       40 GETUPVAL                         R1 5
       41 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       43 LOADK                            R2 K24 [{2, 2, 2}]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       50 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       52 CALL                             R1 1 1
       53 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       55 GETUPVAL                         R1 5
       56 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       58 LOADB                            R2 0
       59 CALL                             R1 1 1
       60 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       62 GETUPVAL                         R1 5
       63 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       65 LOADB                            R2 0
       66 CALL                             R1 1 1
       67 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
       69 GETUPVAL                         R1 5
       70 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       72 LOADB                            R2 0
       73 CALL                             R1 1 1
       74 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
       76 GETUPVAL                         R1 5
       77 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       79 LOADB                            R2 0
       80 CALL                             R1 1 1
       81 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
       83 GETUPVAL                         R1 5
       84 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       86 LOADB                            R2 0
       87 CALL                             R1 1 1
       88 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
       90 GETUPVAL                         R1 5
       91 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
       93 LOADB                            R2 0
       94 CALL                             R1 1 1
       95 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
       97 GETUPVAL                         R1 5
       98 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      100 LOADB                            R2 0
      101 CALL                             R1 1 1
      102 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      104 GETUPVAL                         R1 3
      105 CALL                             R1 0 1
      106 JUMPIFNOT                        R1 ; [+7]
      107 GETUPVAL                         R1 5
      108 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      110 LOADB                            R2 0
      111 CALL                             R1 1 1
      112 SETTABLEKS                       R1 R0 K28 ["collisionBodyPartsCollidableOnDeathSetting"]
      114 GETUPVAL                         R1 4
      115 CALL                             R1 0 1
      116 JUMPIFNOT                        R1 ; [+7]
      117 GETUPVAL                         R1 5
      118 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      120 LOADK                            R2 K29 [{3, 7, 2}]
      121 CALL                             R1 1 1
      122 SETTABLEKS                       R1 R0 K30 ["collisionHitboxSizeSetting"]
      124 GETUPVAL                         R1 0
      125 CALL                             R1 0 1
      126 JUMPIFNOT                        R1 ; [+14]
      127 GETUPVAL                         R1 5
      128 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      130 LOADB                            R2 0
      131 CALL                             R1 1 1
      132 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableCrouchingSetting"]
      134 GETUPVAL                         R1 5
      135 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      137 LOADB                            R2 0
      138 CALL                             R1 1 1
      139 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableSprintingSetting"]
      141 GETUPVAL                         R1 2
      142 CALL                             R1 0 1
      143 JUMPIFNOT                        R1 ; [+7]
      144 GETUPVAL                         R1 5
      145 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      147 LOADB                            R2 0
      148 CALL                             R1 1 1
      149 SETTABLEKS                       R1 R0 K33 ["defaultAbilitiesEnableTurningSetting"]
      151 GETUPVAL                         R1 1
      152 CALL                             R1 0 1
      153 JUMPIFNOT                        R1 ; [+14]
      154 GETUPVAL                         R1 5
      155 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      157 LOADB                            R2 0
      158 CALL                             R1 1 1
      159 SETTABLEKS                       R1 R0 K34 ["defaultAbilitiesEnableHoldingSetting"]
      161 GETUPVAL                         R1 5
      162 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      164 LOADB                            R2 0
      165 CALL                             R1 1 1
      166 SETTABLEKS                       R1 R0 K35 ["defaultAbilitiesEnableReachingSetting"]
      168 RETURN                           R0 1
      169 DUPTABLE                         R0 K36 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      170 GETUPVAL                         R1 5
      171 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      173 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      175 CALL                             R1 1 1
      176 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      178 GETUPVAL                         R1 5
      179 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      181 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      183 CALL                             R1 1 1
      184 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      186 GETUPVAL                         R1 5
      187 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      189 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      191 CALL                             R1 1 1
      192 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      194 GETUPVAL                         R1 5
      195 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      197 LOADK                            R2 K24 [{2, 2, 2}]
      198 CALL                             R1 1 1
      199 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      201 GETUPVAL                         R1 5
      202 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      204 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
      206 CALL                             R1 1 1
      207 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      209 GETUPVAL                         R1 5
      210 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      212 LOADB                            R2 0
      213 CALL                             R1 1 1
      214 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableRunningSetting"]
      216 GETUPVAL                         R1 5
      217 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      219 LOADB                            R2 0
      220 CALL                             R1 1 1
      221 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableJumpingSetting"]
      223 GETUPVAL                         R1 5
      224 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      226 LOADB                            R2 0
      227 CALL                             R1 1 1
      228 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableSittingSetting"]
      230 GETUPVAL                         R1 5
      231 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      233 LOADB                            R2 0
      234 CALL                             R1 1 1
      235 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableFallingDownSetting"]
      237 GETUPVAL                         R1 5
      238 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      240 LOADB                            R2 0
      241 CALL                             R1 1 1
      242 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableGettingUpSetting"]
      244 GETUPVAL                         R1 5
      245 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      247 LOADB                            R2 0
      248 CALL                             R1 1 1
      249 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      251 GETUPVAL                         R1 5
      252 GETTABLEKS                       R1 R1 K13 ["mockUseSetting"]
      254 LOADB                            R2 0
      255 CALL                             R1 1 1
      256 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
      258 RETURN                           R0 1

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
       31 GETTABLEKS                       R4 R4 K11 ["getEngineFeatureAvatarSettingsHitbox"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Flags"]
       40 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K9 ["Flags"]
       49 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsReachHold"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K9 ["Flags"]
       58 GETTABLEKS                       R7 R7 K14 ["getFFlagAvatarSettingsTurning"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K15 ["tests"]
       67 GETTABLEKS                       R8 R8 K7 ["Util"]
       69 GETTABLEKS                       R8 R8 K16 ["mockUseSetting"]
       71 CALL                             R7 1 1
       72 NEWTABLE                         R8 2 0
       74 DUPCLOSURE                       R9 K17 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 SETTABLEKS                       R9 R8 K18 ["primaryPreset"]
       83 DUPCLOSURE                       R9 K19 [PROTO_1]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R9 R8 K20 ["secondaryPreset"]
       92 RETURN                           R8 1
