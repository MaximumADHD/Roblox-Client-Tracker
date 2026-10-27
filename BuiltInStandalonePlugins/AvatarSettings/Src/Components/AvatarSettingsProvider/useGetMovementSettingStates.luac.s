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
       66 GETUPVAL                         R3 1
       67 GETIMPORT                        R4 K16 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       69 GETUPVAL                         R5 2
       70 MOVE                             R6 R0
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R7 R7 K17 ["characterControllerModeSetting"]
       74 CALL                             R5 2 -1
       75 CALL                             R3 -1 1
       76 SETTABLEKS                       R3 R2 K17 ["characterControllerModeSetting"]
       78 GETUPVAL                         R3 1
       79 LOADB                            R4 1
       80 GETUPVAL                         R5 2
       81 MOVE                             R6 R0
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K18 ["defaultAbilitiesEnableRunningSetting"]
       85 CALL                             R5 2 -1
       86 CALL                             R3 -1 1
       87 SETTABLEKS                       R3 R2 K18 ["defaultAbilitiesEnableRunningSetting"]
       89 GETUPVAL                         R3 1
       90 LOADB                            R4 1
       91 GETUPVAL                         R5 2
       92 MOVE                             R6 R0
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R7 R7 K19 ["defaultAbilitiesEnableJumpingSetting"]
       96 CALL                             R5 2 -1
       97 CALL                             R3 -1 1
       98 SETTABLEKS                       R3 R2 K19 ["defaultAbilitiesEnableJumpingSetting"]
      100 GETUPVAL                         R3 1
      101 LOADB                            R4 1
      102 GETUPVAL                         R5 2
      103 MOVE                             R6 R0
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R7 R7 K20 ["defaultAbilitiesEnableSittingSetting"]
      107 CALL                             R5 2 -1
      108 CALL                             R3 -1 1
      109 SETTABLEKS                       R3 R2 K20 ["defaultAbilitiesEnableSittingSetting"]
      111 GETUPVAL                         R3 1
      112 LOADB                            R4 1
      113 GETUPVAL                         R5 2
      114 MOVE                             R6 R0
      115 GETUPVAL                         R7 3
      116 GETTABLEKS                       R7 R7 K21 ["defaultAbilitiesEnableFallingDownSetting"]
      118 CALL                             R5 2 -1
      119 CALL                             R3 -1 1
      120 SETTABLEKS                       R3 R2 K21 ["defaultAbilitiesEnableFallingDownSetting"]
      122 GETUPVAL                         R3 1
      123 LOADB                            R4 1
      124 GETUPVAL                         R5 2
      125 MOVE                             R6 R0
      126 GETUPVAL                         R7 3
      127 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableGettingUpSetting"]
      129 CALL                             R5 2 -1
      130 CALL                             R3 -1 1
      131 SETTABLEKS                       R3 R2 K22 ["defaultAbilitiesEnableGettingUpSetting"]
      133 GETUPVAL                         R3 1
      134 LOADB                            R4 1
      135 GETUPVAL                         R5 2
      136 MOVE                             R6 R0
      137 GETUPVAL                         R7 3
      138 GETTABLEKS                       R7 R7 K23 ["defaultAbilitiesEnableClimbingSetting"]
      140 CALL                             R5 2 -1
      141 CALL                             R3 -1 1
      142 SETTABLEKS                       R3 R2 K23 ["defaultAbilitiesEnableClimbingSetting"]
      144 GETUPVAL                         R3 1
      145 LOADB                            R4 1
      146 GETUPVAL                         R5 2
      147 MOVE                             R6 R0
      148 GETUPVAL                         R7 3
      149 GETTABLEKS                       R7 R7 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      151 CALL                             R5 2 -1
      152 CALL                             R3 -1 1
      153 SETTABLEKS                       R3 R2 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      155 GETUPVAL                         R3 5
      156 CALL                             R3 0 1
      157 JUMPIFNOT                        R3 ; [+22]
      158 GETUPVAL                         R3 1
      159 LOADB                            R4 1
      160 GETUPVAL                         R5 2
      161 MOVE                             R6 R0
      162 GETUPVAL                         R7 3
      163 GETTABLEKS                       R7 R7 K25 ["defaultAbilitiesEnableCrouchingSetting"]
      165 CALL                             R5 2 -1
      166 CALL                             R3 -1 1
      167 SETTABLEKS                       R3 R2 K25 ["defaultAbilitiesEnableCrouchingSetting"]
      169 GETUPVAL                         R3 1
      170 LOADB                            R4 1
      171 GETUPVAL                         R5 2
      172 MOVE                             R6 R0
      173 GETUPVAL                         R7 3
      174 GETTABLEKS                       R7 R7 K26 ["defaultAbilitiesEnableSprintingSetting"]
      176 CALL                             R5 2 -1
      177 CALL                             R3 -1 1
      178 SETTABLEKS                       R3 R2 K26 ["defaultAbilitiesEnableSprintingSetting"]
      180 GETUPVAL                         R3 6
      181 CALL                             R3 0 1
      182 JUMPIFNOT                        R3 ; [+11]
      183 GETUPVAL                         R3 1
      184 LOADB                            R4 1
      185 GETUPVAL                         R5 2
      186 MOVE                             R6 R0
      187 GETUPVAL                         R7 3
      188 GETTABLEKS                       R7 R7 K27 ["defaultAbilitiesEnableTurningSetting"]
      190 CALL                             R5 2 -1
      191 CALL                             R3 -1 1
      192 SETTABLEKS                       R3 R2 K27 ["defaultAbilitiesEnableTurningSetting"]
      194 GETUPVAL                         R3 7
      195 CALL                             R3 0 1
      196 JUMPIFNOT                        R3 ; [+22]
      197 GETUPVAL                         R3 1
      198 LOADB                            R4 1
      199 GETUPVAL                         R5 2
      200 MOVE                             R6 R0
      201 GETUPVAL                         R7 3
      202 GETTABLEKS                       R7 R7 K28 ["defaultAbilitiesEnableHoldingSetting"]
      204 CALL                             R5 2 -1
      205 CALL                             R3 -1 1
      206 SETTABLEKS                       R3 R2 K28 ["defaultAbilitiesEnableHoldingSetting"]
      208 GETUPVAL                         R3 1
      209 LOADB                            R4 1
      210 GETUPVAL                         R5 2
      211 MOVE                             R6 R0
      212 GETUPVAL                         R7 3
      213 GETTABLEKS                       R7 R7 K29 ["defaultAbilitiesEnableReachingSetting"]
      215 CALL                             R5 2 -1
      216 CALL                             R3 -1 1
      217 SETTABLEKS                       R3 R2 K29 ["defaultAbilitiesEnableReachingSetting"]
      219 RETURN                           R2 1

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
       40 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Flags"]
       49 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsReachHold"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Flags"]
       58 GETTABLEKS                       R7 R7 K14 ["getFFlagAvatarSettingsTurning"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Util"]
       67 GETTABLEKS                       R8 R8 K15 ["InvokeKeys"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K7 ["Util"]
       76 GETTABLEKS                       R9 R9 K16 ["settingUtil"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R9 R8 K17 ["useSetting"]
       81 GETTABLEKS                       R10 R8 K18 ["createInvokeArgs"]
       83 DUPCLOSURE                       R11 K19 [PROTO_0]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 RETURN                           R11 1
