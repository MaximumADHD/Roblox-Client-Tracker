PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["settings"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Expected settings to be present in AvatarSettingsContext"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["settings"]
       10 GETTABLEKS                       R2 R2 K4 ["movementSettings"]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 GETTABLEKS                       R5 R2 K5 ["collisionSetting"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K5 ["collisionSetting"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R1
       22 GETTABLEKS                       R5 R2 K6 ["collisionHitAndTouchDetectionSetting"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K6 ["collisionHitAndTouchDetectionSetting"]
       27 CALL                             R3 3 0
       28 GETUPVAL                         R3 0
       29 MOVE                             R4 R1
       30 GETTABLEKS                       R5 R2 K7 ["collisionMethodSetting"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K7 ["collisionMethodSetting"]
       35 CALL                             R3 3 0
       36 GETUPVAL                         R3 0
       37 MOVE                             R4 R1
       38 GETTABLEKS                       R5 R2 K8 ["collisionSizeSetting"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K8 ["collisionSizeSetting"]
       43 CALL                             R3 3 0
       44 GETUPVAL                         R3 2
       45 CALL                             R3 0 1
       46 JUMPIFNOT                        R3 ; [+15]
       47 GETTABLEKS                       R4 R2 K9 ["collisionBodyPartsCollidableOnDeathSetting"]
       49 FASTCALL2K                       ASSERT R4 K10 ; [+4]
       51 LOADK                            R5 K10 ["Expected body parts collidable on death setting"]
       52 GETIMPORT                        R3 K3 [assert]
       54 CALL                             R3 2 1
       55 GETUPVAL                         R4 0
       56 MOVE                             R5 R1
       57 MOVE                             R6 R3
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K9 ["collisionBodyPartsCollidableOnDeathSetting"]
       61 CALL                             R4 3 0
       62 GETUPVAL                         R3 3
       63 CALL                             R3 0 1
       64 JUMPIFNOT                        R3 ; [+15]
       65 GETTABLEKS                       R4 R2 K11 ["collisionHitboxSizeSetting"]
       67 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       69 LOADK                            R5 K12 ["Expected hitbox size setting"]
       70 GETIMPORT                        R3 K3 [assert]
       72 CALL                             R3 2 1
       73 GETUPVAL                         R4 0
       74 MOVE                             R5 R1
       75 MOVE                             R6 R3
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K11 ["collisionHitboxSizeSetting"]
       79 CALL                             R4 3 0
       80 GETUPVAL                         R3 0
       81 MOVE                             R4 R1
       82 GETTABLEKS                       R5 R2 K13 ["characterControllerModeSetting"]
       84 GETUPVAL                         R6 1
       85 GETTABLEKS                       R6 R6 K13 ["characterControllerModeSetting"]
       87 CALL                             R3 3 0
       88 GETUPVAL                         R3 0
       89 MOVE                             R4 R1
       90 GETTABLEKS                       R5 R2 K14 ["defaultAbilitiesEnableClimbingSetting"]
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R6 R6 K14 ["defaultAbilitiesEnableClimbingSetting"]
       95 CALL                             R3 3 0
       96 GETUPVAL                         R3 4
       97 CALL                             R3 0 1
       98 JUMPIFNOT                        R3 ; [+15]
       99 GETTABLEKS                       R4 R2 K15 ["defaultAbilitiesEnableCrouchingSetting"]
      101 FASTCALL2K                       ASSERT R4 K16 ; [+4]
      103 LOADK                            R5 K16 ["Expected crouching setting"]
      104 GETIMPORT                        R3 K3 [assert]
      106 CALL                             R3 2 1
      107 GETUPVAL                         R4 0
      108 MOVE                             R5 R1
      109 MOVE                             R6 R3
      110 GETUPVAL                         R7 1
      111 GETTABLEKS                       R7 R7 K15 ["defaultAbilitiesEnableCrouchingSetting"]
      113 CALL                             R4 3 0
      114 GETUPVAL                         R3 0
      115 MOVE                             R4 R1
      116 GETTABLEKS                       R5 R2 K17 ["defaultAbilitiesEnableFallingDownSetting"]
      118 GETUPVAL                         R6 1
      119 GETTABLEKS                       R6 R6 K17 ["defaultAbilitiesEnableFallingDownSetting"]
      121 CALL                             R3 3 0
      122 GETUPVAL                         R3 0
      123 MOVE                             R4 R1
      124 GETTABLEKS                       R5 R2 K18 ["defaultAbilitiesEnableGettingUpSetting"]
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R6 R6 K18 ["defaultAbilitiesEnableGettingUpSetting"]
      129 CALL                             R3 3 0
      130 GETUPVAL                         R3 5
      131 CALL                             R3 0 1
      132 JUMPIFNOT                        R3 ; [+15]
      133 GETTABLEKS                       R4 R2 K19 ["defaultAbilitiesEnableHoldingSetting"]
      135 FASTCALL2K                       ASSERT R4 K20 ; [+4]
      137 LOADK                            R5 K20 ["Expected holding setting"]
      138 GETIMPORT                        R3 K3 [assert]
      140 CALL                             R3 2 1
      141 GETUPVAL                         R4 0
      142 MOVE                             R5 R1
      143 MOVE                             R6 R3
      144 GETUPVAL                         R7 1
      145 GETTABLEKS                       R7 R7 K19 ["defaultAbilitiesEnableHoldingSetting"]
      147 CALL                             R4 3 0
      148 GETUPVAL                         R3 0
      149 MOVE                             R4 R1
      150 GETTABLEKS                       R5 R2 K21 ["defaultAbilitiesEnableJumpingSetting"]
      152 GETUPVAL                         R6 1
      153 GETTABLEKS                       R6 R6 K21 ["defaultAbilitiesEnableJumpingSetting"]
      155 CALL                             R3 3 0
      156 GETUPVAL                         R3 5
      157 CALL                             R3 0 1
      158 JUMPIFNOT                        R3 ; [+15]
      159 GETTABLEKS                       R4 R2 K22 ["defaultAbilitiesEnableReachingSetting"]
      161 FASTCALL2K                       ASSERT R4 K23 ; [+4]
      163 LOADK                            R5 K23 ["Expected reaching setting"]
      164 GETIMPORT                        R3 K3 [assert]
      166 CALL                             R3 2 1
      167 GETUPVAL                         R4 0
      168 MOVE                             R5 R1
      169 MOVE                             R6 R3
      170 GETUPVAL                         R7 1
      171 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableReachingSetting"]
      173 CALL                             R4 3 0
      174 GETUPVAL                         R3 0
      175 MOVE                             R4 R1
      176 GETTABLEKS                       R5 R2 K24 ["defaultAbilitiesEnableRunningSetting"]
      178 GETUPVAL                         R6 1
      179 GETTABLEKS                       R6 R6 K24 ["defaultAbilitiesEnableRunningSetting"]
      181 CALL                             R3 3 0
      182 GETUPVAL                         R3 0
      183 MOVE                             R4 R1
      184 GETTABLEKS                       R5 R2 K25 ["defaultAbilitiesEnableSittingSetting"]
      186 GETUPVAL                         R6 1
      187 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableSittingSetting"]
      189 CALL                             R3 3 0
      190 GETUPVAL                         R3 4
      191 CALL                             R3 0 1
      192 JUMPIFNOT                        R3 ; [+15]
      193 GETTABLEKS                       R4 R2 K26 ["defaultAbilitiesEnableSprintingSetting"]
      195 FASTCALL2K                       ASSERT R4 K27 ; [+4]
      197 LOADK                            R5 K27 ["Expected sprinting setting"]
      198 GETIMPORT                        R3 K3 [assert]
      200 CALL                             R3 2 1
      201 GETUPVAL                         R4 0
      202 MOVE                             R5 R1
      203 MOVE                             R6 R3
      204 GETUPVAL                         R7 1
      205 GETTABLEKS                       R7 R7 K26 ["defaultAbilitiesEnableSprintingSetting"]
      207 CALL                             R4 3 0
      208 GETUPVAL                         R3 0
      209 MOVE                             R4 R1
      210 GETTABLEKS                       R5 R2 K28 ["defaultAbilitiesEnableSwimmingSetting"]
      212 GETUPVAL                         R6 1
      213 GETTABLEKS                       R6 R6 K28 ["defaultAbilitiesEnableSwimmingSetting"]
      215 CALL                             R3 3 0
      216 GETUPVAL                         R3 6
      217 CALL                             R3 0 1
      218 JUMPIFNOT                        R3 ; [+15]
      219 GETTABLEKS                       R4 R2 K29 ["defaultAbilitiesEnableTurningSetting"]
      221 FASTCALL2K                       ASSERT R4 K30 ; [+4]
      223 LOADK                            R5 K30 ["Expected turning setting"]
      224 GETIMPORT                        R3 K3 [assert]
      226 CALL                             R3 2 1
      227 GETUPVAL                         R4 0
      228 MOVE                             R5 R1
      229 MOVE                             R6 R3
      230 GETUPVAL                         R7 1
      231 GETTABLEKS                       R7 R7 K29 ["defaultAbilitiesEnableTurningSetting"]
      233 CALL                             R4 3 0
      234 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Flags"]
       24 GETTABLEKS                       R3 R3 K11 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Flags"]
       33 GETTABLEKS                       R4 R4 K12 ["getEngineFeatureAvatarSettingsHitbox"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Flags"]
       42 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Flags"]
       51 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarSettingsReachHold"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Flags"]
       60 GETTABLEKS                       R7 R7 K15 ["getFFlagAvatarSettingsTurning"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K16 ["Util"]
       69 GETTABLEKS                       R8 R8 K17 ["InvokeKeys"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["Src"]
       76 GETTABLEKS                       R9 R9 K16 ["Util"]
       78 GETTABLEKS                       R9 R9 K18 ["BridgingFiles"]
       80 GETTABLEKS                       R9 R9 K19 ["StandaloneFiles"]
       82 GETTABLEKS                       R9 R9 K20 ["standaloneInvokeUtils"]
       84 CALL                             R8 1 1
       85 GETTABLEKS                       R9 R8 K21 ["useCreateInvokes"]
       87 DUPCLOSURE                       R10 K22 [PROTO_0]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 RETURN                           R10 1
