PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 32 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R1 K1 ["collisionSetting"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R7 R7 K1 ["collisionSetting"]
       13 CALL                             R5 2 -1
       14 CALL                             R3 -1 1
       15 SETTABLEKS                       R3 R2 K1 ["collisionSetting"]
       17 GETUPVAL                         R3 1
       18 GETIMPORT                        R4 K5 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R0
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K6 ["collisionHitAndTouchDetectionSetting"]
       25 CALL                             R5 2 -1
       26 CALL                             R3 -1 1
       27 SETTABLEKS                       R3 R2 K6 ["collisionHitAndTouchDetectionSetting"]
       29 GETUPVAL                         R3 1
       30 GETIMPORT                        R4 K9 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       32 GETUPVAL                         R5 2
       33 MOVE                             R6 R0
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R7 R7 K10 ["collisionMethodSetting"]
       37 CALL                             R5 2 -1
       38 CALL                             R3 -1 1
       39 SETTABLEKS                       R3 R2 K10 ["collisionMethodSetting"]
       41 GETUPVAL                         R3 1
       42 LOADK                            R4 K11 [{2, 4, 1}]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R0
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K12 ["collisionSizeSetting"]
       48 CALL                             R5 2 -1
       49 CALL                             R3 -1 1
       50 SETTABLEKS                       R3 R2 K12 ["collisionSizeSetting"]
       52 GETUPVAL                         R3 4
       53 CALL                             R3 0 1
       54 JUMPIFNOT                        R3 ; [+11]
       55 GETUPVAL                         R3 1
       56 LOADB                            R4 1
       57 GETUPVAL                         R5 2
       58 MOVE                             R6 R0
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R7 R7 K13 ["collisionBodyPartsCollidableOnDeathSetting"]
       62 CALL                             R5 2 -1
       63 CALL                             R3 -1 1
       64 SETTABLEKS                       R3 R2 K13 ["collisionBodyPartsCollidableOnDeathSetting"]
       66 GETUPVAL                         R3 5
       67 CALL                             R3 0 1
       68 JUMPIFNOT                        R3 ; [+11]
       69 GETUPVAL                         R3 1
       70 LOADK                            R4 K14 [{2, 5.5, 1}]
       71 GETUPVAL                         R5 2
       72 MOVE                             R6 R0
       73 GETUPVAL                         R7 3
       74 GETTABLEKS                       R7 R7 K15 ["collisionHitboxSizeSetting"]
       76 CALL                             R5 2 -1
       77 CALL                             R3 -1 1
       78 SETTABLEKS                       R3 R2 K15 ["collisionHitboxSizeSetting"]
       80 GETUPVAL                         R3 1
       81 GETIMPORT                        R4 K18 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       83 GETUPVAL                         R5 2
       84 MOVE                             R6 R0
       85 GETUPVAL                         R7 3
       86 GETTABLEKS                       R7 R7 K19 ["characterControllerModeSetting"]
       88 CALL                             R5 2 -1
       89 CALL                             R3 -1 1
       90 SETTABLEKS                       R3 R2 K19 ["characterControllerModeSetting"]
       92 GETUPVAL                         R3 1
       93 LOADB                            R4 1
       94 GETUPVAL                         R5 2
       95 MOVE                             R6 R0
       96 GETUPVAL                         R7 3
       97 GETTABLEKS                       R7 R7 K20 ["defaultAbilitiesEnableRunningSetting"]
       99 CALL                             R5 2 -1
      100 CALL                             R3 -1 1
      101 SETTABLEKS                       R3 R2 K20 ["defaultAbilitiesEnableRunningSetting"]
      103 GETUPVAL                         R3 1
      104 LOADB                            R4 1
      105 GETUPVAL                         R5 2
      106 MOVE                             R6 R0
      107 GETUPVAL                         R7 3
      108 GETTABLEKS                       R7 R7 K21 ["defaultAbilitiesEnableJumpingSetting"]
      110 CALL                             R5 2 -1
      111 CALL                             R3 -1 1
      112 SETTABLEKS                       R3 R2 K21 ["defaultAbilitiesEnableJumpingSetting"]
      114 GETUPVAL                         R3 1
      115 LOADB                            R4 1
      116 GETUPVAL                         R5 2
      117 MOVE                             R6 R0
      118 GETUPVAL                         R7 3
      119 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableSittingSetting"]
      121 CALL                             R5 2 -1
      122 CALL                             R3 -1 1
      123 SETTABLEKS                       R3 R2 K22 ["defaultAbilitiesEnableSittingSetting"]
      125 GETUPVAL                         R3 1
      126 LOADB                            R4 1
      127 GETUPVAL                         R5 2
      128 MOVE                             R6 R0
      129 GETUPVAL                         R7 3
      130 GETTABLEKS                       R7 R7 K23 ["defaultAbilitiesEnableFallingDownSetting"]
      132 CALL                             R5 2 -1
      133 CALL                             R3 -1 1
      134 SETTABLEKS                       R3 R2 K23 ["defaultAbilitiesEnableFallingDownSetting"]
      136 GETUPVAL                         R3 1
      137 LOADB                            R4 1
      138 GETUPVAL                         R5 2
      139 MOVE                             R6 R0
      140 GETUPVAL                         R7 3
      141 GETTABLEKS                       R7 R7 K24 ["defaultAbilitiesEnableGettingUpSetting"]
      143 CALL                             R5 2 -1
      144 CALL                             R3 -1 1
      145 SETTABLEKS                       R3 R2 K24 ["defaultAbilitiesEnableGettingUpSetting"]
      147 GETUPVAL                         R3 1
      148 LOADB                            R4 1
      149 GETUPVAL                         R5 2
      150 MOVE                             R6 R0
      151 GETUPVAL                         R7 3
      152 GETTABLEKS                       R7 R7 K25 ["defaultAbilitiesEnableClimbingSetting"]
      154 CALL                             R5 2 -1
      155 CALL                             R3 -1 1
      156 SETTABLEKS                       R3 R2 K25 ["defaultAbilitiesEnableClimbingSetting"]
      158 GETUPVAL                         R3 1
      159 LOADB                            R4 1
      160 GETUPVAL                         R5 2
      161 MOVE                             R6 R0
      162 GETUPVAL                         R7 3
      163 GETTABLEKS                       R7 R7 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      165 CALL                             R5 2 -1
      166 CALL                             R3 -1 1
      167 SETTABLEKS                       R3 R2 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      169 GETUPVAL                         R3 6
      170 CALL                             R3 0 1
      171 JUMPIFNOT                        R3 ; [+22]
      172 GETUPVAL                         R3 1
      173 LOADB                            R4 1
      174 GETUPVAL                         R5 2
      175 MOVE                             R6 R0
      176 GETUPVAL                         R7 3
      177 GETTABLEKS                       R7 R7 K27 ["defaultAbilitiesEnableCrouchingSetting"]
      179 CALL                             R5 2 -1
      180 CALL                             R3 -1 1
      181 SETTABLEKS                       R3 R2 K27 ["defaultAbilitiesEnableCrouchingSetting"]
      183 GETUPVAL                         R3 1
      184 LOADB                            R4 1
      185 GETUPVAL                         R5 2
      186 MOVE                             R6 R0
      187 GETUPVAL                         R7 3
      188 GETTABLEKS                       R7 R7 K28 ["defaultAbilitiesEnableSprintingSetting"]
      190 CALL                             R5 2 -1
      191 CALL                             R3 -1 1
      192 SETTABLEKS                       R3 R2 K28 ["defaultAbilitiesEnableSprintingSetting"]
      194 GETUPVAL                         R3 7
      195 CALL                             R3 0 1
      196 JUMPIFNOT                        R3 ; [+11]
      197 GETUPVAL                         R3 1
      198 LOADB                            R4 1
      199 GETUPVAL                         R5 2
      200 MOVE                             R6 R0
      201 GETUPVAL                         R7 3
      202 GETTABLEKS                       R7 R7 K29 ["defaultAbilitiesEnableTurningSetting"]
      204 CALL                             R5 2 -1
      205 CALL                             R3 -1 1
      206 SETTABLEKS                       R3 R2 K29 ["defaultAbilitiesEnableTurningSetting"]
      208 GETUPVAL                         R3 8
      209 CALL                             R3 0 1
      210 JUMPIFNOT                        R3 ; [+22]
      211 GETUPVAL                         R3 1
      212 LOADB                            R4 1
      213 GETUPVAL                         R5 2
      214 MOVE                             R6 R0
      215 GETUPVAL                         R7 3
      216 GETTABLEKS                       R7 R7 K30 ["defaultAbilitiesEnableHoldingSetting"]
      218 CALL                             R5 2 -1
      219 CALL                             R3 -1 1
      220 SETTABLEKS                       R3 R2 K30 ["defaultAbilitiesEnableHoldingSetting"]
      222 GETUPVAL                         R3 1
      223 LOADB                            R4 1
      224 GETUPVAL                         R5 2
      225 MOVE                             R6 R0
      226 GETUPVAL                         R7 3
      227 GETTABLEKS                       R7 R7 K31 ["defaultAbilitiesEnableReachingSetting"]
      229 CALL                             R5 2 -1
      230 CALL                             R3 -1 1
      231 SETTABLEKS                       R3 R2 K31 ["defaultAbilitiesEnableReachingSetting"]
      233 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetValues"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarSettingsProviderTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Flags"]
       31 GETTABLEKS                       R4 R4 K11 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Flags"]
       40 GETTABLEKS                       R5 R5 K12 ["getEngineFeatureAvatarSettingsHitbox"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Flags"]
       49 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Flags"]
       58 GETTABLEKS                       R7 R7 K14 ["getFFlagAvatarSettingsReachHold"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K10 ["Flags"]
       67 GETTABLEKS                       R8 R8 K15 ["getFFlagAvatarSettingsTurning"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K7 ["Util"]
       76 GETTABLEKS                       R9 R9 K16 ["InvokeKeys"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Src"]
       83 GETTABLEKS                       R10 R10 K7 ["Util"]
       85 GETTABLEKS                       R10 R10 K17 ["settingUtil"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R9 K18 ["useSetting"]
       90 GETTABLEKS                       R11 R9 K19 ["createInvokeArgs"]
       92 DUPCLOSURE                       R12 K20 [PROTO_0]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R6
      102 RETURN                           R12 1
