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
       54 JUMPIFNOT                        R3 ; [+117]
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
       87 GETUPVAL                         R7 0
       88 MOVE                             R8 R1
       89 GETTABLEKS                       R9 R2 K18 ["defaultAbilitiesEnableClimbingSetting"]
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K18 ["defaultAbilitiesEnableClimbingSetting"]
       94 CALL                             R7 3 0
       95 GETUPVAL                         R7 0
       96 MOVE                             R8 R1
       97 MOVE                             R9 R3
       98 GETUPVAL                         R10 1
       99 GETTABLEKS                       R10 R10 K10 ["defaultAbilitiesEnableCrouchingSetting"]
      101 CALL                             R7 3 0
      102 GETUPVAL                         R7 0
      103 MOVE                             R8 R1
      104 GETTABLEKS                       R9 R2 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R10 R10 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      109 CALL                             R7 3 0
      110 GETUPVAL                         R7 0
      111 MOVE                             R8 R1
      112 GETTABLEKS                       R9 R2 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R10 R10 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      117 CALL                             R7 3 0
      118 GETUPVAL                         R7 0
      119 MOVE                             R8 R1
      120 MOVE                             R9 R4
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R10 R10 K12 ["defaultAbilitiesEnableHoldingSetting"]
      124 CALL                             R7 3 0
      125 GETUPVAL                         R7 0
      126 MOVE                             R8 R1
      127 GETTABLEKS                       R9 R2 K21 ["defaultAbilitiesEnableJumpingSetting"]
      129 GETUPVAL                         R10 1
      130 GETTABLEKS                       R10 R10 K21 ["defaultAbilitiesEnableJumpingSetting"]
      132 CALL                             R7 3 0
      133 GETUPVAL                         R7 0
      134 MOVE                             R8 R1
      135 MOVE                             R9 R5
      136 GETUPVAL                         R10 1
      137 GETTABLEKS                       R10 R10 K14 ["defaultAbilitiesEnableReachingSetting"]
      139 CALL                             R7 3 0
      140 GETUPVAL                         R7 0
      141 MOVE                             R8 R1
      142 GETTABLEKS                       R9 R2 K22 ["defaultAbilitiesEnableRunningSetting"]
      144 GETUPVAL                         R10 1
      145 GETTABLEKS                       R10 R10 K22 ["defaultAbilitiesEnableRunningSetting"]
      147 CALL                             R7 3 0
      148 GETUPVAL                         R7 0
      149 MOVE                             R8 R1
      150 GETTABLEKS                       R9 R2 K23 ["defaultAbilitiesEnableSittingSetting"]
      152 GETUPVAL                         R10 1
      153 GETTABLEKS                       R10 R10 K23 ["defaultAbilitiesEnableSittingSetting"]
      155 CALL                             R7 3 0
      156 GETUPVAL                         R7 0
      157 MOVE                             R8 R1
      158 MOVE                             R9 R6
      159 GETUPVAL                         R10 1
      160 GETTABLEKS                       R10 R10 K16 ["defaultAbilitiesEnableSprintingSetting"]
      162 CALL                             R7 3 0
      163 GETUPVAL                         R7 0
      164 MOVE                             R8 R1
      165 GETTABLEKS                       R9 R2 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      167 GETUPVAL                         R10 1
      168 GETTABLEKS                       R10 R10 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      170 CALL                             R7 3 0
      171 RETURN                           R0 0
      172 GETUPVAL                         R3 0
      173 MOVE                             R4 R1
      174 GETTABLEKS                       R5 R2 K22 ["defaultAbilitiesEnableRunningSetting"]
      176 GETUPVAL                         R6 1
      177 GETTABLEKS                       R6 R6 K22 ["defaultAbilitiesEnableRunningSetting"]
      179 CALL                             R3 3 0
      180 GETUPVAL                         R3 0
      181 MOVE                             R4 R1
      182 GETTABLEKS                       R5 R2 K21 ["defaultAbilitiesEnableJumpingSetting"]
      184 GETUPVAL                         R6 1
      185 GETTABLEKS                       R6 R6 K21 ["defaultAbilitiesEnableJumpingSetting"]
      187 CALL                             R3 3 0
      188 GETUPVAL                         R3 0
      189 MOVE                             R4 R1
      190 GETTABLEKS                       R5 R2 K23 ["defaultAbilitiesEnableSittingSetting"]
      192 GETUPVAL                         R6 1
      193 GETTABLEKS                       R6 R6 K23 ["defaultAbilitiesEnableSittingSetting"]
      195 CALL                             R3 3 0
      196 GETUPVAL                         R3 0
      197 MOVE                             R4 R1
      198 GETTABLEKS                       R5 R2 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      200 GETUPVAL                         R6 1
      201 GETTABLEKS                       R6 R6 K19 ["defaultAbilitiesEnableFallingDownSetting"]
      203 CALL                             R3 3 0
      204 GETUPVAL                         R3 0
      205 MOVE                             R4 R1
      206 GETTABLEKS                       R5 R2 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      208 GETUPVAL                         R6 1
      209 GETTABLEKS                       R6 R6 K20 ["defaultAbilitiesEnableGettingUpSetting"]
      211 CALL                             R3 3 0
      212 GETUPVAL                         R3 0
      213 MOVE                             R4 R1
      214 GETTABLEKS                       R5 R2 K18 ["defaultAbilitiesEnableClimbingSetting"]
      216 GETUPVAL                         R6 1
      217 GETTABLEKS                       R6 R6 K18 ["defaultAbilitiesEnableClimbingSetting"]
      219 CALL                             R3 3 0
      220 GETUPVAL                         R3 0
      221 MOVE                             R4 R1
      222 GETTABLEKS                       R5 R2 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      224 GETUPVAL                         R6 1
      225 GETTABLEKS                       R6 R6 K24 ["defaultAbilitiesEnableSwimmingSetting"]
      227 CALL                             R3 3 0
      228 RETURN                           R0 0

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
