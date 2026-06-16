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
       52 GETUPVAL                         R3 2
       53 CALL                             R3 0 1
       54 JUMPIFNOT                        R3 ; [+132]
       55 GETTABLEKS                       R4 R2 K10 ["defaultAbilitiesEnableCrouchingSetting"]
       57 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       59 LOADK                            R5 K11 ["Expected crouching setting"]
       60 GETIMPORT                        R3 K3 [assert]
       62 CALL                             R3 2 1
       63 GETTABLEKS                       R5 R2 K12 ["defaultAbilitiesEnableHoldingSetting"]
       65 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       67 LOADK                            R6 K13 ["Expected holding setting"]
       68 GETIMPORT                        R4 K3 [assert]
       70 CALL                             R4 2 1
       71 GETTABLEKS                       R6 R2 K14 ["defaultAbilitiesEnableReachingSetting"]
       73 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       75 LOADK                            R7 K15 ["Expected reaching setting"]
       76 GETIMPORT                        R5 K3 [assert]
       78 CALL                             R5 2 1
       79 GETTABLEKS                       R7 R2 K16 ["defaultAbilitiesEnableSprintingSetting"]
       81 FASTCALL2K                       ASSERT R7 K17 ; [+4]
       83 LOADK                            R8 K17 ["Expected sprinting setting"]
       84 GETIMPORT                        R6 K3 [assert]
       86 CALL                             R6 2 1
       87 GETTABLEKS                       R8 R2 K18 ["defaultAbilitiesEnableStrafingSetting"]
       89 FASTCALL2K                       ASSERT R8 K19 ; [+4]
       91 LOADK                            R9 K19 ["Expected strafing setting"]
       92 GETIMPORT                        R7 K3 [assert]
       94 CALL                             R7 2 1
       95 GETUPVAL                         R8 0
       96 MOVE                             R9 R1
       97 GETTABLEKS                       R10 R2 K20 ["defaultAbilitiesEnableClimbingSetting"]
       99 GETUPVAL                         R11 1
      100 GETTABLEKS                       R11 R11 K20 ["defaultAbilitiesEnableClimbingSetting"]
      102 CALL                             R8 3 0
      103 GETUPVAL                         R8 0
      104 MOVE                             R9 R1
      105 MOVE                             R10 R3
      106 GETUPVAL                         R11 1
      107 GETTABLEKS                       R11 R11 K10 ["defaultAbilitiesEnableCrouchingSetting"]
      109 CALL                             R8 3 0
      110 GETUPVAL                         R8 0
      111 MOVE                             R9 R1
      112 GETTABLEKS                       R10 R2 K21 ["defaultAbilitiesEnableFallingDownSetting"]
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K21 ["defaultAbilitiesEnableFallingDownSetting"]
      117 CALL                             R8 3 0
      118 GETUPVAL                         R8 0
      119 MOVE                             R9 R1
      120 GETTABLEKS                       R10 R2 K22 ["defaultAbilitiesEnableGettingUpSetting"]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K22 ["defaultAbilitiesEnableGettingUpSetting"]
      125 CALL                             R8 3 0
      126 GETUPVAL                         R8 0
      127 MOVE                             R9 R1
      128 MOVE                             R10 R4
      129 GETUPVAL                         R11 1
      130 GETTABLEKS                       R11 R11 K12 ["defaultAbilitiesEnableHoldingSetting"]
      132 CALL                             R8 3 0
      133 GETUPVAL                         R8 0
      134 MOVE                             R9 R1
      135 GETTABLEKS                       R10 R2 K23 ["defaultAbilitiesEnableJumpingSetting"]
      137 GETUPVAL                         R11 1
      138 GETTABLEKS                       R11 R11 K23 ["defaultAbilitiesEnableJumpingSetting"]
      140 CALL                             R8 3 0
      141 GETUPVAL                         R8 0
      142 MOVE                             R9 R1
      143 MOVE                             R10 R5
      144 GETUPVAL                         R11 1
      145 GETTABLEKS                       R11 R11 K14 ["defaultAbilitiesEnableReachingSetting"]
      147 CALL                             R8 3 0
      148 GETUPVAL                         R8 0
      149 MOVE                             R9 R1
      150 GETTABLEKS                       R10 R2 K24 ["defaultAbilitiesEnableRunningSetting"]
      152 GETUPVAL                         R11 1
      153 GETTABLEKS                       R11 R11 K24 ["defaultAbilitiesEnableRunningSetting"]
      155 CALL                             R8 3 0
      156 GETUPVAL                         R8 0
      157 MOVE                             R9 R1
      158 GETTABLEKS                       R10 R2 K25 ["defaultAbilitiesEnableSittingSetting"]
      160 GETUPVAL                         R11 1
      161 GETTABLEKS                       R11 R11 K25 ["defaultAbilitiesEnableSittingSetting"]
      163 CALL                             R8 3 0
      164 GETUPVAL                         R8 0
      165 MOVE                             R9 R1
      166 MOVE                             R10 R6
      167 GETUPVAL                         R11 1
      168 GETTABLEKS                       R11 R11 K16 ["defaultAbilitiesEnableSprintingSetting"]
      170 CALL                             R8 3 0
      171 GETUPVAL                         R8 0
      172 MOVE                             R9 R1
      173 MOVE                             R10 R7
      174 GETUPVAL                         R11 1
      175 GETTABLEKS                       R11 R11 K18 ["defaultAbilitiesEnableStrafingSetting"]
      177 CALL                             R8 3 0
      178 GETUPVAL                         R8 0
      179 MOVE                             R9 R1
      180 GETTABLEKS                       R10 R2 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      182 GETUPVAL                         R11 1
      183 GETTABLEKS                       R11 R11 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      185 CALL                             R8 3 0
      186 RETURN                           R0 0
      187 GETUPVAL                         R3 0
      188 MOVE                             R4 R1
      189 GETTABLEKS                       R5 R2 K24 ["defaultAbilitiesEnableRunningSetting"]
      191 GETUPVAL                         R6 1
      192 GETTABLEKS                       R6 R6 K24 ["defaultAbilitiesEnableRunningSetting"]
      194 CALL                             R3 3 0
      195 GETUPVAL                         R3 0
      196 MOVE                             R4 R1
      197 GETTABLEKS                       R5 R2 K23 ["defaultAbilitiesEnableJumpingSetting"]
      199 GETUPVAL                         R6 1
      200 GETTABLEKS                       R6 R6 K23 ["defaultAbilitiesEnableJumpingSetting"]
      202 CALL                             R3 3 0
      203 GETUPVAL                         R3 0
      204 MOVE                             R4 R1
      205 GETTABLEKS                       R5 R2 K25 ["defaultAbilitiesEnableSittingSetting"]
      207 GETUPVAL                         R6 1
      208 GETTABLEKS                       R6 R6 K25 ["defaultAbilitiesEnableSittingSetting"]
      210 CALL                             R3 3 0
      211 GETUPVAL                         R3 0
      212 MOVE                             R4 R1
      213 GETTABLEKS                       R5 R2 K21 ["defaultAbilitiesEnableFallingDownSetting"]
      215 GETUPVAL                         R6 1
      216 GETTABLEKS                       R6 R6 K21 ["defaultAbilitiesEnableFallingDownSetting"]
      218 CALL                             R3 3 0
      219 GETUPVAL                         R3 0
      220 MOVE                             R4 R1
      221 GETTABLEKS                       R5 R2 K22 ["defaultAbilitiesEnableGettingUpSetting"]
      223 GETUPVAL                         R6 1
      224 GETTABLEKS                       R6 R6 K22 ["defaultAbilitiesEnableGettingUpSetting"]
      226 CALL                             R3 3 0
      227 GETUPVAL                         R3 0
      228 MOVE                             R4 R1
      229 GETTABLEKS                       R5 R2 K20 ["defaultAbilitiesEnableClimbingSetting"]
      231 GETUPVAL                         R6 1
      232 GETTABLEKS                       R6 R6 K20 ["defaultAbilitiesEnableClimbingSetting"]
      234 CALL                             R3 3 0
      235 GETUPVAL                         R3 0
      236 MOVE                             R4 R1
      237 GETTABLEKS                       R5 R2 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      239 GETUPVAL                         R6 1
      240 GETTABLEKS                       R6 R6 K26 ["defaultAbilitiesEnableSwimmingSetting"]
      242 CALL                             R3 3 0
      243 RETURN                           R0 0

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
       31 GETTABLEKS                       R4 R4 K12 ["Util"]
       33 GETTABLEKS                       R4 R4 K13 ["InvokeKeys"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K12 ["Util"]
       42 GETTABLEKS                       R5 R5 K14 ["BridgingFiles"]
       44 GETTABLEKS                       R5 R5 K15 ["StandaloneFiles"]
       46 GETTABLEKS                       R5 R5 K16 ["standaloneInvokeUtils"]
       48 CALL                             R4 1 1
       49 GETTABLEKS                       R5 R4 K17 ["useCreateInvokes"]
       51 DUPCLOSURE                       R6 K18 [PROTO_0]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 RETURN                           R6 1
