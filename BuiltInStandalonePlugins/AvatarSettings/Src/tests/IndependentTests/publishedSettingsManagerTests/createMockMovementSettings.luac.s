PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+125]
        3 DUPTABLE                         R0 K17 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableCrouchingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableHoldingSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableReachingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSprintingSetting", "defaultAbilitiesEnableStrafingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
        7 GETIMPORT                        R2 K22 [Enum.AvatarSettingsCollisionMode.Default]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       15 GETIMPORT                        R2 K25 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       23 GETIMPORT                        R2 K28 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       31 LOADK                            R2 K29 [{0, 0, 0}]
       32 CALL                             R1 1 1
       33 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       38 GETIMPORT                        R2 K32 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       40 CALL                             R1 1 1
       41 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       46 LOADB                            R2 1
       47 CALL                             R1 1 1
       48 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       50 GETUPVAL                         R1 1
       51 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       53 LOADB                            R2 1
       54 CALL                             R1 1 1
       55 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableCrouchingSetting"]
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       60 LOADB                            R2 1
       61 CALL                             R1 1 1
       62 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableFallingDownSetting"]
       64 GETUPVAL                         R1 1
       65 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       67 LOADB                            R2 1
       68 CALL                             R1 1 1
       69 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableGettingUpSetting"]
       71 GETUPVAL                         R1 1
       72 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       74 LOADB                            R2 1
       75 CALL                             R1 1 1
       76 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableHoldingSetting"]
       78 GETUPVAL                         R1 1
       79 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       81 LOADB                            R2 1
       82 CALL                             R1 1 1
       83 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableJumpingSetting"]
       85 GETUPVAL                         R1 1
       86 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       88 LOADB                            R2 1
       89 CALL                             R1 1 1
       90 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableReachingSetting"]
       92 GETUPVAL                         R1 1
       93 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       95 LOADB                            R2 1
       96 CALL                             R1 1 1
       97 SETTABLEKS                       R1 R0 K12 ["defaultAbilitiesEnableRunningSetting"]
       99 GETUPVAL                         R1 1
      100 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      102 LOADB                            R2 1
      103 CALL                             R1 1 1
      104 SETTABLEKS                       R1 R0 K13 ["defaultAbilitiesEnableSittingSetting"]
      106 GETUPVAL                         R1 1
      107 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      109 LOADB                            R2 1
      110 CALL                             R1 1 1
      111 SETTABLEKS                       R1 R0 K14 ["defaultAbilitiesEnableSprintingSetting"]
      113 GETUPVAL                         R1 1
      114 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      116 LOADB                            R2 1
      117 CALL                             R1 1 1
      118 SETTABLEKS                       R1 R0 K15 ["defaultAbilitiesEnableStrafingSetting"]
      120 GETUPVAL                         R1 1
      121 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      123 LOADB                            R2 1
      124 CALL                             R1 1 1
      125 SETTABLEKS                       R1 R0 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      127 RETURN                           R0 1
      128 DUPTABLE                         R0 K33 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      132 GETIMPORT                        R2 K22 [Enum.AvatarSettingsCollisionMode.Default]
      134 CALL                             R1 1 1
      135 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      137 GETUPVAL                         R1 1
      138 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      140 GETIMPORT                        R2 K25 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
      142 CALL                             R1 1 1
      143 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      145 GETUPVAL                         R1 1
      146 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      148 GETIMPORT                        R2 K28 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      150 CALL                             R1 1 1
      151 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      153 GETUPVAL                         R1 1
      154 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      156 LOADK                            R2 K29 [{0, 0, 0}]
      157 CALL                             R1 1 1
      158 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      160 GETUPVAL                         R1 1
      161 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      163 GETIMPORT                        R2 K32 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
      165 CALL                             R1 1 1
      166 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      168 GETUPVAL                         R1 1
      169 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      171 LOADB                            R2 1
      172 CALL                             R1 1 1
      173 SETTABLEKS                       R1 R0 K12 ["defaultAbilitiesEnableRunningSetting"]
      175 GETUPVAL                         R1 1
      176 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      178 LOADB                            R2 1
      179 CALL                             R1 1 1
      180 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableJumpingSetting"]
      182 GETUPVAL                         R1 1
      183 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      185 LOADB                            R2 1
      186 CALL                             R1 1 1
      187 SETTABLEKS                       R1 R0 K13 ["defaultAbilitiesEnableSittingSetting"]
      189 GETUPVAL                         R1 1
      190 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      192 LOADB                            R2 1
      193 CALL                             R1 1 1
      194 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableFallingDownSetting"]
      196 GETUPVAL                         R1 1
      197 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      199 LOADB                            R2 1
      200 CALL                             R1 1 1
      201 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableGettingUpSetting"]
      203 GETUPVAL                         R1 1
      204 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      206 LOADB                            R2 1
      207 CALL                             R1 1 1
      208 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      210 GETUPVAL                         R1 1
      211 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      213 LOADB                            R2 1
      214 CALL                             R1 1 1
      215 SETTABLEKS                       R1 R0 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      217 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+125]
        3 DUPTABLE                         R0 K17 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableCrouchingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableHoldingSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableReachingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSprintingSetting", "defaultAbilitiesEnableStrafingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
        7 GETIMPORT                        R2 K22 [Enum.AvatarSettingsCollisionMode.SingleCollider]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       15 GETIMPORT                        R2 K25 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       23 GETIMPORT                        R2 K28 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       31 LOADK                            R2 K29 [{2, 2, 2}]
       32 CALL                             R1 1 1
       33 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       38 GETIMPORT                        R2 K32 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       40 CALL                             R1 1 1
       41 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       46 LOADB                            R2 0
       47 CALL                             R1 1 1
       48 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       50 GETUPVAL                         R1 1
       51 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       53 LOADB                            R2 0
       54 CALL                             R1 1 1
       55 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableCrouchingSetting"]
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       60 LOADB                            R2 0
       61 CALL                             R1 1 1
       62 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableFallingDownSetting"]
       64 GETUPVAL                         R1 1
       65 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       67 LOADB                            R2 0
       68 CALL                             R1 1 1
       69 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableGettingUpSetting"]
       71 GETUPVAL                         R1 1
       72 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       74 LOADB                            R2 0
       75 CALL                             R1 1 1
       76 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableHoldingSetting"]
       78 GETUPVAL                         R1 1
       79 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       81 LOADB                            R2 0
       82 CALL                             R1 1 1
       83 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableJumpingSetting"]
       85 GETUPVAL                         R1 1
       86 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       88 LOADB                            R2 0
       89 CALL                             R1 1 1
       90 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableReachingSetting"]
       92 GETUPVAL                         R1 1
       93 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
       95 LOADB                            R2 0
       96 CALL                             R1 1 1
       97 SETTABLEKS                       R1 R0 K12 ["defaultAbilitiesEnableRunningSetting"]
       99 GETUPVAL                         R1 1
      100 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      102 LOADB                            R2 0
      103 CALL                             R1 1 1
      104 SETTABLEKS                       R1 R0 K13 ["defaultAbilitiesEnableSittingSetting"]
      106 GETUPVAL                         R1 1
      107 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      109 LOADB                            R2 0
      110 CALL                             R1 1 1
      111 SETTABLEKS                       R1 R0 K14 ["defaultAbilitiesEnableSprintingSetting"]
      113 GETUPVAL                         R1 1
      114 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      116 LOADB                            R2 0
      117 CALL                             R1 1 1
      118 SETTABLEKS                       R1 R0 K15 ["defaultAbilitiesEnableStrafingSetting"]
      120 GETUPVAL                         R1 1
      121 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      123 LOADB                            R2 0
      124 CALL                             R1 1 1
      125 SETTABLEKS                       R1 R0 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      127 RETURN                           R0 1
      128 DUPTABLE                         R0 K33 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      132 GETIMPORT                        R2 K22 [Enum.AvatarSettingsCollisionMode.SingleCollider]
      134 CALL                             R1 1 1
      135 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
      137 GETUPVAL                         R1 1
      138 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      140 GETIMPORT                        R2 K25 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
      142 CALL                             R1 1 1
      143 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
      145 GETUPVAL                         R1 1
      146 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      148 GETIMPORT                        R2 K28 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
      150 CALL                             R1 1 1
      151 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
      153 GETUPVAL                         R1 1
      154 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      156 LOADK                            R2 K29 [{2, 2, 2}]
      157 CALL                             R1 1 1
      158 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
      160 GETUPVAL                         R1 1
      161 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      163 GETIMPORT                        R2 K32 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
      165 CALL                             R1 1 1
      166 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
      168 GETUPVAL                         R1 1
      169 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      171 LOADB                            R2 0
      172 CALL                             R1 1 1
      173 SETTABLEKS                       R1 R0 K12 ["defaultAbilitiesEnableRunningSetting"]
      175 GETUPVAL                         R1 1
      176 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      178 LOADB                            R2 0
      179 CALL                             R1 1 1
      180 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableJumpingSetting"]
      182 GETUPVAL                         R1 1
      183 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      185 LOADB                            R2 0
      186 CALL                             R1 1 1
      187 SETTABLEKS                       R1 R0 K13 ["defaultAbilitiesEnableSittingSetting"]
      189 GETUPVAL                         R1 1
      190 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      192 LOADB                            R2 0
      193 CALL                             R1 1 1
      194 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableFallingDownSetting"]
      196 GETUPVAL                         R1 1
      197 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      199 LOADB                            R2 0
      200 CALL                             R1 1 1
      201 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableGettingUpSetting"]
      203 GETUPVAL                         R1 1
      204 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      206 LOADB                            R2 0
      207 CALL                             R1 1 1
      208 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
      210 GETUPVAL                         R1 1
      211 GETTABLEKS                       R1 R1 K18 ["mockUseSetting"]
      213 LOADB                            R2 0
      214 CALL                             R1 1 1
      215 SETTABLEKS                       R1 R0 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      217 RETURN                           R0 1

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
       29 GETTABLEKS                       R4 R4 K11 ["tests"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["mockUseSetting"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 2 0
       38 DUPCLOSURE                       R5 K13 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R5 R4 K14 ["primaryPreset"]
       43 DUPCLOSURE                       R5 K15 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K16 ["secondaryPreset"]
       48 RETURN                           R4 1
