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
       62 GETUPVAL                         R3 0
       63 MOVE                             R4 R1
       64 GETTABLEKS                       R5 R2 K11 ["characterControllerModeSetting"]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K11 ["characterControllerModeSetting"]
       69 CALL                             R3 3 0
       70 GETUPVAL                         R3 0
       71 MOVE                             R4 R1
       72 GETTABLEKS                       R5 R2 K12 ["defaultAbilitiesEnableClimbingSetting"]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K12 ["defaultAbilitiesEnableClimbingSetting"]
       77 CALL                             R3 3 0
       78 GETUPVAL                         R3 3
       79 CALL                             R3 0 1
       80 JUMPIFNOT                        R3 ; [+15]
       81 GETTABLEKS                       R4 R2 K13 ["defaultAbilitiesEnableCrouchingSetting"]
       83 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       85 LOADK                            R5 K14 ["Expected crouching setting"]
       86 GETIMPORT                        R3 K3 [assert]
       88 CALL                             R3 2 1
       89 GETUPVAL                         R4 0
       90 MOVE                             R5 R1
       91 MOVE                             R6 R3
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K13 ["defaultAbilitiesEnableCrouchingSetting"]
       95 CALL                             R4 3 0
       96 GETUPVAL                         R3 0
       97 MOVE                             R4 R1
       98 GETTABLEKS                       R5 R2 K15 ["defaultAbilitiesEnableFallingDownSetting"]
      100 GETUPVAL                         R6 1
      101 GETTABLEKS                       R6 R6 K15 ["defaultAbilitiesEnableFallingDownSetting"]
      103 CALL                             R3 3 0
      104 GETUPVAL                         R3 0
      105 MOVE                             R4 R1
      106 GETTABLEKS                       R5 R2 K16 ["defaultAbilitiesEnableGettingUpSetting"]
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R6 R6 K16 ["defaultAbilitiesEnableGettingUpSetting"]
      111 CALL                             R3 3 0
      112 GETUPVAL                         R3 4
      113 CALL                             R3 0 1
      114 JUMPIFNOT                        R3 ; [+15]
      115 GETTABLEKS                       R4 R2 K17 ["defaultAbilitiesEnableHoldingSetting"]
      117 FASTCALL2K                       ASSERT R4 K18 ; [+4]
      119 LOADK                            R5 K18 ["Expected holding setting"]
      120 GETIMPORT                        R3 K3 [assert]
      122 CALL                             R3 2 1
      123 GETUPVAL                         R4 0
      124 MOVE                             R5 R1
      125 MOVE                             R6 R3
      126 GETUPVAL                         R7 1
      127 GETTABLEKS                       R7 R7 K17 ["defaultAbilitiesEnableHoldingSetting"]
      129 CALL                             R4 3 0
      130 GETUPVAL                         R3 0
      131 MOVE                             R4 R1
      132 GETTABLEKS                       R5 R2 K19 ["defaultAbilitiesEnableJumpingSetting"]
      134 GETUPVAL                         R6 1
      135 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableJumpingSetting"]
      137 CALL                             R3 3 0
      138 GETUPVAL                         R3 4
      139 CALL                             R3 0 1
      140 JUMPIFNOT                        R3 ; [+15]
      141 GETTABLEKS                       R4 R2 K20 ["defaultAbilitiesEnableReachingSetting"]
      143 FASTCALL2K                       ASSERT R4 K21 ; [+4]
      145 LOADK                            R5 K21 ["Expected reaching setting"]
      146 GETIMPORT                        R3 K3 [assert]
      148 CALL                             R3 2 1
      149 GETUPVAL                         R4 0
      150 MOVE                             R5 R1
      151 MOVE                             R6 R3
      152 GETUPVAL                         R7 1
      153 GETTABLEKS                       R7 R7 K20 ["defaultAbilitiesEnableReachingSetting"]
      155 CALL                             R4 3 0
      156 GETUPVAL                         R3 0
      157 MOVE                             R4 R1
      158 GETTABLEKS                       R5 R2 K22 ["defaultAbilitiesEnableRunningSetting"]
      160 GETUPVAL                         R6 1
      161 GETTABLEKS                       R6 R6 K22 ["defaultAbilitiesEnableRunningSetting"]
      163 CALL                             R3 3 0
      164 GETUPVAL                         R3 0
      165 MOVE                             R4 R1
      166 GETTABLEKS                       R5 R2 K23 ["defaultAbilitiesEnableSittingSetting"]
      168 GETUPVAL                         R6 1
      169 GETTABLEKS                       R6 R6 K23 ["defaultAbilitiesEnableSittingSetting"]
      171 CALL                             R3 3 0
      172 GETUPVAL                         R3 3
      173 CALL                             R3 0 1
      174 JUMPIFNOT                        R3 ; [+15]
      175 GETTABLEKS                       R4 R2 K24 ["defaultAbilitiesEnableSprintingSetting"]
      177 FASTCALL2K                       ASSERT R4 K25 ; [+4]
      179 LOADK                            R5 K25 ["Expected sprinting setting"]
      180 GETIMPORT                        R3 K3 [assert]
      182 CALL                             R3 2 1
      183 GETUPVAL                         R4 0
      184 MOVE                             R5 R1
      185 MOVE                             R6 R3
      186 GETUPVAL                         R7 1
      187 GETTABLEKS                       R7 R7 K24 ["defaultAbilitiesEnableSprintingSetting"]
      189 CALL                             R4 3 0
      190 GETUPVAL                         R3 0
      191 MOVE                             R4 R1
      192 GETTABLEKS                       R5 R2 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      194 GETUPVAL                         R6 1
      195 GETTABLEKS                       R6 R6 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      197 CALL                             R3 3 0
      198 GETUPVAL                         R3 5
      199 CALL                             R3 0 1
      200 JUMPIFNOT                        R3 ; [+15]
      201 GETTABLEKS                       R4 R2 K27 ["defaultAbilitiesEnableTurningSetting"]
      203 FASTCALL2K                       ASSERT R4 K28 ; [+4]
      205 LOADK                            R5 K28 ["Expected turning setting"]
      206 GETIMPORT                        R3 K3 [assert]
      208 CALL                             R3 2 1
      209 GETUPVAL                         R4 0
      210 MOVE                             R5 R1
      211 MOVE                             R6 R3
      212 GETUPVAL                         R7 1
      213 GETTABLEKS                       R7 R7 K27 ["defaultAbilitiesEnableTurningSetting"]
      215 CALL                             R4 3 0
      216 RETURN                           R0 0

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
       33 GETTABLEKS                       R4 R4 K12 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Flags"]
       42 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarSettingsReachHold"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Flags"]
       51 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarSettingsTurning"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K15 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["InvokeKeys"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K15 ["Util"]
       69 GETTABLEKS                       R8 R8 K17 ["BridgingFiles"]
       71 GETTABLEKS                       R8 R8 K18 ["StandaloneFiles"]
       73 GETTABLEKS                       R8 R8 K19 ["standaloneInvokeUtils"]
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R8 R7 K20 ["useCreateInvokes"]
       78 DUPCLOSURE                       R9 K21 [PROTO_0]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 RETURN                           R9 1
