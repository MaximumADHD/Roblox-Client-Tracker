PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 16 0
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
       52 GETUPVAL                         R3 1
       53 GETIMPORT                        R4 K15 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       55 GETUPVAL                         R5 2
       56 MOVE                             R6 R0
       57 GETUPVAL                         R7 3
       58 GETTABLEKS                       R7 R7 K16 ["characterControllerModeSetting"]
       60 CALL                             R5 2 -1
       61 CALL                             R3 -1 1
       62 SETTABLEKS                       R3 R2 K16 ["characterControllerModeSetting"]
       64 GETUPVAL                         R3 4
       65 CALL                             R3 0 1
       66 JUMPIFNOT                        R3 ; [+122]
       67 GETUPVAL                         R3 1
       68 LOADB                            R4 1
       69 GETUPVAL                         R5 2
       70 MOVE                             R6 R0
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R7 R7 K17 ["defaultAbilitiesEnableClimbingSetting"]
       74 CALL                             R5 2 -1
       75 CALL                             R3 -1 1
       76 SETTABLEKS                       R3 R2 K17 ["defaultAbilitiesEnableClimbingSetting"]
       78 GETUPVAL                         R3 1
       79 LOADB                            R4 1
       80 GETUPVAL                         R5 2
       81 MOVE                             R6 R0
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K18 ["defaultAbilitiesEnableCrouchingSetting"]
       85 CALL                             R5 2 -1
       86 CALL                             R3 -1 1
       87 SETTABLEKS                       R3 R2 K18 ["defaultAbilitiesEnableCrouchingSetting"]
       89 GETUPVAL                         R3 1
       90 LOADB                            R4 1
       91 GETUPVAL                         R5 2
       92 MOVE                             R6 R0
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R7 R7 K19 ["defaultAbilitiesEnableFallingDownSetting"]
       96 CALL                             R5 2 -1
       97 CALL                             R3 -1 1
       98 SETTABLEKS                       R3 R2 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      100 GETUPVAL                         R3 1
      101 LOADB                            R4 1
      102 GETUPVAL                         R5 2
      103 MOVE                             R6 R0
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R7 R7 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      107 CALL                             R5 2 -1
      108 CALL                             R3 -1 1
      109 SETTABLEKS                       R3 R2 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      111 GETUPVAL                         R3 1
      112 LOADB                            R4 1
      113 GETUPVAL                         R5 2
      114 MOVE                             R6 R0
      115 GETUPVAL                         R7 3
      116 GETTABLEKS                       R7 R7 K21 ["defaultAbilitiesEnableHoldingSetting"]
      118 CALL                             R5 2 -1
      119 CALL                             R3 -1 1
      120 SETTABLEKS                       R3 R2 K21 ["defaultAbilitiesEnableHoldingSetting"]
      122 GETUPVAL                         R3 1
      123 LOADB                            R4 1
      124 GETUPVAL                         R5 2
      125 MOVE                             R6 R0
      126 GETUPVAL                         R7 3
      127 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableJumpingSetting"]
      129 CALL                             R5 2 -1
      130 CALL                             R3 -1 1
      131 SETTABLEKS                       R3 R2 K22 ["defaultAbilitiesEnableJumpingSetting"]
      133 GETUPVAL                         R3 1
      134 LOADB                            R4 1
      135 GETUPVAL                         R5 2
      136 MOVE                             R6 R0
      137 GETUPVAL                         R7 3
      138 GETTABLEKS                       R7 R7 K23 ["defaultAbilitiesEnableReachingSetting"]
      140 CALL                             R5 2 -1
      141 CALL                             R3 -1 1
      142 SETTABLEKS                       R3 R2 K23 ["defaultAbilitiesEnableReachingSetting"]
      144 GETUPVAL                         R3 1
      145 LOADB                            R4 1
      146 GETUPVAL                         R5 2
      147 MOVE                             R6 R0
      148 GETUPVAL                         R7 3
      149 GETTABLEKS                       R7 R7 K24 ["defaultAbilitiesEnableRunningSetting"]
      151 CALL                             R5 2 -1
      152 CALL                             R3 -1 1
      153 SETTABLEKS                       R3 R2 K24 ["defaultAbilitiesEnableRunningSetting"]
      155 GETUPVAL                         R3 1
      156 LOADB                            R4 1
      157 GETUPVAL                         R5 2
      158 MOVE                             R6 R0
      159 GETUPVAL                         R7 3
      160 GETTABLEKS                       R7 R7 K25 ["defaultAbilitiesEnableSittingSetting"]
      162 CALL                             R5 2 -1
      163 CALL                             R3 -1 1
      164 SETTABLEKS                       R3 R2 K25 ["defaultAbilitiesEnableSittingSetting"]
      166 GETUPVAL                         R3 1
      167 LOADB                            R4 1
      168 GETUPVAL                         R5 2
      169 MOVE                             R6 R0
      170 GETUPVAL                         R7 3
      171 GETTABLEKS                       R7 R7 K26 ["defaultAbilitiesEnableSprintingSetting"]
      173 CALL                             R5 2 -1
      174 CALL                             R3 -1 1
      175 SETTABLEKS                       R3 R2 K26 ["defaultAbilitiesEnableSprintingSetting"]
      177 GETUPVAL                         R3 1
      178 LOADB                            R4 1
      179 GETUPVAL                         R5 2
      180 MOVE                             R6 R0
      181 GETUPVAL                         R7 3
      182 GETTABLEKS                       R7 R7 K27 ["defaultAbilitiesEnableSwimmingSetting"]
      184 CALL                             R5 2 -1
      185 CALL                             R3 -1 1
      186 SETTABLEKS                       R3 R2 K27 ["defaultAbilitiesEnableSwimmingSetting"]
      188 RETURN                           R2 1
      189 GETUPVAL                         R3 1
      190 LOADB                            R4 1
      191 GETUPVAL                         R5 2
      192 MOVE                             R6 R0
      193 GETUPVAL                         R7 3
      194 GETTABLEKS                       R7 R7 K24 ["defaultAbilitiesEnableRunningSetting"]
      196 CALL                             R5 2 -1
      197 CALL                             R3 -1 1
      198 SETTABLEKS                       R3 R2 K24 ["defaultAbilitiesEnableRunningSetting"]
      200 GETUPVAL                         R3 1
      201 LOADB                            R4 1
      202 GETUPVAL                         R5 2
      203 MOVE                             R6 R0
      204 GETUPVAL                         R7 3
      205 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableJumpingSetting"]
      207 CALL                             R5 2 -1
      208 CALL                             R3 -1 1
      209 SETTABLEKS                       R3 R2 K22 ["defaultAbilitiesEnableJumpingSetting"]
      211 GETUPVAL                         R3 1
      212 LOADB                            R4 1
      213 GETUPVAL                         R5 2
      214 MOVE                             R6 R0
      215 GETUPVAL                         R7 3
      216 GETTABLEKS                       R7 R7 K25 ["defaultAbilitiesEnableSittingSetting"]
      218 CALL                             R5 2 -1
      219 CALL                             R3 -1 1
      220 SETTABLEKS                       R3 R2 K25 ["defaultAbilitiesEnableSittingSetting"]
      222 GETUPVAL                         R3 1
      223 LOADB                            R4 1
      224 GETUPVAL                         R5 2
      225 MOVE                             R6 R0
      226 GETUPVAL                         R7 3
      227 GETTABLEKS                       R7 R7 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      229 CALL                             R5 2 -1
      230 CALL                             R3 -1 1
      231 SETTABLEKS                       R3 R2 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      233 GETUPVAL                         R3 1
      234 LOADB                            R4 1
      235 GETUPVAL                         R5 2
      236 MOVE                             R6 R0
      237 GETUPVAL                         R7 3
      238 GETTABLEKS                       R7 R7 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      240 CALL                             R5 2 -1
      241 CALL                             R3 -1 1
      242 SETTABLEKS                       R3 R2 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      244 GETUPVAL                         R3 1
      245 LOADB                            R4 1
      246 GETUPVAL                         R5 2
      247 MOVE                             R6 R0
      248 GETUPVAL                         R7 3
      249 GETTABLEKS                       R7 R7 K17 ["defaultAbilitiesEnableClimbingSetting"]
      251 CALL                             R5 2 -1
      252 CALL                             R3 -1 1
      253 SETTABLEKS                       R3 R2 K17 ["defaultAbilitiesEnableClimbingSetting"]
      255 GETUPVAL                         R3 1
      256 LOADB                            R4 1
      257 GETUPVAL                         R5 2
      258 MOVE                             R6 R0
      259 GETUPVAL                         R7 3
      260 GETTABLEKS                       R7 R7 K27 ["defaultAbilitiesEnableSwimmingSetting"]
      262 CALL                             R5 2 -1
      263 CALL                             R3 -1 1
      264 SETTABLEKS                       R3 R2 K27 ["defaultAbilitiesEnableSwimmingSetting"]
      266 RETURN                           R2 1

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
       31 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["settingUtil"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R5 K14 ["useSetting"]
       54 GETTABLEKS                       R7 R5 K15 ["createInvokeArgs"]
       56 DUPCLOSURE                       R8 K16 [PROTO_0]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 RETURN                           R8 1
