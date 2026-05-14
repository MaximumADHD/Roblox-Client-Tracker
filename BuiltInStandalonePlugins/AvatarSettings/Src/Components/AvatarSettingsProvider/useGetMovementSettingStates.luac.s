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
       64 GETUPVAL                         R3 1
       65 LOADB                            R4 1
       66 GETUPVAL                         R5 2
       67 MOVE                             R6 R0
       68 GETUPVAL                         R7 3
       69 GETTABLEKS                       R7 R7 K17 ["defaultAbilitiesEnableRunningSetting"]
       71 CALL                             R5 2 -1
       72 CALL                             R3 -1 1
       73 SETTABLEKS                       R3 R2 K17 ["defaultAbilitiesEnableRunningSetting"]
       75 GETUPVAL                         R3 1
       76 LOADB                            R4 1
       77 GETUPVAL                         R5 2
       78 MOVE                             R6 R0
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K18 ["defaultAbilitiesEnableJumpingSetting"]
       82 CALL                             R5 2 -1
       83 CALL                             R3 -1 1
       84 SETTABLEKS                       R3 R2 K18 ["defaultAbilitiesEnableJumpingSetting"]
       86 GETUPVAL                         R3 1
       87 LOADB                            R4 1
       88 GETUPVAL                         R5 2
       89 MOVE                             R6 R0
       90 GETUPVAL                         R7 3
       91 GETTABLEKS                       R7 R7 K19 ["defaultAbilitiesEnableSittingSetting"]
       93 CALL                             R5 2 -1
       94 CALL                             R3 -1 1
       95 SETTABLEKS                       R3 R2 K19 ["defaultAbilitiesEnableSittingSetting"]
       97 GETUPVAL                         R3 1
       98 LOADB                            R4 1
       99 GETUPVAL                         R5 2
      100 MOVE                             R6 R0
      101 GETUPVAL                         R7 3
      102 GETTABLEKS                       R7 R7 K20 ["defaultAbilitiesEnableFallingDownSetting"]
      104 CALL                             R5 2 -1
      105 CALL                             R3 -1 1
      106 SETTABLEKS                       R3 R2 K20 ["defaultAbilitiesEnableFallingDownSetting"]
      108 GETUPVAL                         R3 1
      109 LOADB                            R4 1
      110 GETUPVAL                         R5 2
      111 MOVE                             R6 R0
      112 GETUPVAL                         R7 3
      113 GETTABLEKS                       R7 R7 K21 ["defaultAbilitiesEnableGettingUpSetting"]
      115 CALL                             R5 2 -1
      116 CALL                             R3 -1 1
      117 SETTABLEKS                       R3 R2 K21 ["defaultAbilitiesEnableGettingUpSetting"]
      119 GETUPVAL                         R3 1
      120 LOADB                            R4 1
      121 GETUPVAL                         R5 2
      122 MOVE                             R6 R0
      123 GETUPVAL                         R7 3
      124 GETTABLEKS                       R7 R7 K22 ["defaultAbilitiesEnableClimbingSetting"]
      126 CALL                             R5 2 -1
      127 CALL                             R3 -1 1
      128 SETTABLEKS                       R3 R2 K22 ["defaultAbilitiesEnableClimbingSetting"]
      130 GETUPVAL                         R3 1
      131 LOADB                            R4 1
      132 GETUPVAL                         R5 2
      133 MOVE                             R6 R0
      134 GETUPVAL                         R7 3
      135 GETTABLEKS                       R7 R7 K23 ["defaultAbilitiesEnableSwimmingSetting"]
      137 CALL                             R5 2 -1
      138 CALL                             R3 -1 1
      139 SETTABLEKS                       R3 R2 K23 ["defaultAbilitiesEnableSwimmingSetting"]
      141 RETURN                           R2 1

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
       29 GETTABLEKS                       R4 R4 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["InvokeKeys"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K11 ["settingUtil"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K12 ["useSetting"]
       45 GETTABLEKS                       R6 R4 K13 ["createInvokeArgs"]
       47 DUPCLOSURE                       R7 K14 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R3
       52 RETURN                           R7 1
