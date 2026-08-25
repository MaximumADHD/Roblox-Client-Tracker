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
       44 GETUPVAL                         R3 0
       45 MOVE                             R4 R1
       46 GETTABLEKS                       R5 R2 K9 ["characterControllerModeSetting"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K9 ["characterControllerModeSetting"]
       51 CALL                             R3 3 0
       52 GETUPVAL                         R3 0
       53 MOVE                             R4 R1
       54 GETTABLEKS                       R5 R2 K10 ["defaultAbilitiesEnableClimbingSetting"]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K10 ["defaultAbilitiesEnableClimbingSetting"]
       59 CALL                             R3 3 0
       60 GETUPVAL                         R3 2
       61 CALL                             R3 0 1
       62 JUMPIFNOT                        R3 ; [+15]
       63 GETTABLEKS                       R4 R2 K11 ["defaultAbilitiesEnableCrouchingSetting"]
       65 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       67 LOADK                            R5 K12 ["Expected crouching setting"]
       68 GETIMPORT                        R3 K3 [assert]
       70 CALL                             R3 2 1
       71 GETUPVAL                         R4 0
       72 MOVE                             R5 R1
       73 MOVE                             R6 R3
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K11 ["defaultAbilitiesEnableCrouchingSetting"]
       77 CALL                             R4 3 0
       78 GETUPVAL                         R3 0
       79 MOVE                             R4 R1
       80 GETTABLEKS                       R5 R2 K13 ["defaultAbilitiesEnableFallingDownSetting"]
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K13 ["defaultAbilitiesEnableFallingDownSetting"]
       85 CALL                             R3 3 0
       86 GETUPVAL                         R3 0
       87 MOVE                             R4 R1
       88 GETTABLEKS                       R5 R2 K14 ["defaultAbilitiesEnableGettingUpSetting"]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K14 ["defaultAbilitiesEnableGettingUpSetting"]
       93 CALL                             R3 3 0
       94 GETUPVAL                         R3 3
       95 CALL                             R3 0 1
       96 JUMPIFNOT                        R3 ; [+15]
       97 GETTABLEKS                       R4 R2 K15 ["defaultAbilitiesEnableHoldingSetting"]
       99 FASTCALL2K                       ASSERT R4 K16 ; [+4]
      101 LOADK                            R5 K16 ["Expected holding setting"]
      102 GETIMPORT                        R3 K3 [assert]
      104 CALL                             R3 2 1
      105 GETUPVAL                         R4 0
      106 MOVE                             R5 R1
      107 MOVE                             R6 R3
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R7 R7 K15 ["defaultAbilitiesEnableHoldingSetting"]
      111 CALL                             R4 3 0
      112 GETUPVAL                         R3 0
      113 MOVE                             R4 R1
      114 GETTABLEKS                       R5 R2 K17 ["defaultAbilitiesEnableJumpingSetting"]
      116 GETUPVAL                         R6 1
      117 GETTABLEKS                       R6 R6 K17 ["defaultAbilitiesEnableJumpingSetting"]
      119 CALL                             R3 3 0
      120 GETUPVAL                         R3 3
      121 CALL                             R3 0 1
      122 JUMPIFNOT                        R3 ; [+15]
      123 GETTABLEKS                       R4 R2 K18 ["defaultAbilitiesEnableReachingSetting"]
      125 FASTCALL2K                       ASSERT R4 K19 ; [+4]
      127 LOADK                            R5 K19 ["Expected reaching setting"]
      128 GETIMPORT                        R3 K3 [assert]
      130 CALL                             R3 2 1
      131 GETUPVAL                         R4 0
      132 MOVE                             R5 R1
      133 MOVE                             R6 R3
      134 GETUPVAL                         R7 1
      135 GETTABLEKS                       R7 R7 K18 ["defaultAbilitiesEnableReachingSetting"]
      137 CALL                             R4 3 0
      138 GETUPVAL                         R3 0
      139 MOVE                             R4 R1
      140 GETTABLEKS                       R5 R2 K20 ["defaultAbilitiesEnableRunningSetting"]
      142 GETUPVAL                         R6 1
      143 GETTABLEKS                       R6 R6 K20 ["defaultAbilitiesEnableRunningSetting"]
      145 CALL                             R3 3 0
      146 GETUPVAL                         R3 0
      147 MOVE                             R4 R1
      148 GETTABLEKS                       R5 R2 K21 ["defaultAbilitiesEnableSittingSetting"]
      150 GETUPVAL                         R6 1
      151 GETTABLEKS                       R6 R6 K21 ["defaultAbilitiesEnableSittingSetting"]
      153 CALL                             R3 3 0
      154 GETUPVAL                         R3 2
      155 CALL                             R3 0 1
      156 JUMPIFNOT                        R3 ; [+15]
      157 GETTABLEKS                       R4 R2 K22 ["defaultAbilitiesEnableSprintingSetting"]
      159 FASTCALL2K                       ASSERT R4 K23 ; [+4]
      161 LOADK                            R5 K23 ["Expected sprinting setting"]
      162 GETIMPORT                        R3 K3 [assert]
      164 CALL                             R3 2 1
      165 GETUPVAL                         R4 0
      166 MOVE                             R5 R1
      167 MOVE                             R6 R3
      168 GETUPVAL                         R7 1
      169 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableSprintingSetting"]
      171 CALL                             R4 3 0
      172 GETUPVAL                         R3 0
      173 MOVE                             R4 R1
      174 GETTABLEKS                       R5 R2 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      176 GETUPVAL                         R6 1
      177 GETTABLEKS                       R6 R6 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      179 CALL                             R3 3 0
      180 GETUPVAL                         R3 4
      181 CALL                             R3 0 1
      182 JUMPIFNOT                        R3 ; [+15]
      183 GETTABLEKS                       R4 R2 K25 ["defaultAbilitiesEnableTurningSetting"]
      185 FASTCALL2K                       ASSERT R4 K26 ; [+4]
      187 LOADK                            R5 K26 ["Expected turning setting"]
      188 GETIMPORT                        R3 K3 [assert]
      190 CALL                             R3 2 1
      191 GETUPVAL                         R4 0
      192 MOVE                             R5 R1
      193 MOVE                             R6 R3
      194 GETUPVAL                         R7 1
      195 GETTABLEKS                       R7 R7 K25 ["defaultAbilitiesEnableTurningSetting"]
      197 CALL                             R4 3 0
      198 RETURN                           R0 0

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
       24 GETTABLEKS                       R3 R3 K11 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Flags"]
       33 GETTABLEKS                       R4 R4 K12 ["getFFlagAvatarSettingsReachHold"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Flags"]
       42 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarSettingsTurning"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K14 ["Util"]
       51 GETTABLEKS                       R6 R6 K15 ["InvokeKeys"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K14 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["BridgingFiles"]
       62 GETTABLEKS                       R7 R7 K17 ["StandaloneFiles"]
       64 GETTABLEKS                       R7 R7 K18 ["standaloneInvokeUtils"]
       66 CALL                             R6 1 1
       67 GETTABLEKS                       R7 R6 K19 ["useCreateInvokes"]
       69 DUPCLOSURE                       R8 K20 [PROTO_0]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 RETURN                           R8 1
