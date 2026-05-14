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
       54 GETTABLEKS                       R5 R2 K10 ["defaultAbilitiesEnableRunningSetting"]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K10 ["defaultAbilitiesEnableRunningSetting"]
       59 CALL                             R3 3 0
       60 GETUPVAL                         R3 0
       61 MOVE                             R4 R1
       62 GETTABLEKS                       R5 R2 K11 ["defaultAbilitiesEnableJumpingSetting"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K11 ["defaultAbilitiesEnableJumpingSetting"]
       67 CALL                             R3 3 0
       68 GETUPVAL                         R3 0
       69 MOVE                             R4 R1
       70 GETTABLEKS                       R5 R2 K12 ["defaultAbilitiesEnableSittingSetting"]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K12 ["defaultAbilitiesEnableSittingSetting"]
       75 CALL                             R3 3 0
       76 GETUPVAL                         R3 0
       77 MOVE                             R4 R1
       78 GETTABLEKS                       R5 R2 K13 ["defaultAbilitiesEnableFallingDownSetting"]
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K13 ["defaultAbilitiesEnableFallingDownSetting"]
       83 CALL                             R3 3 0
       84 GETUPVAL                         R3 0
       85 MOVE                             R4 R1
       86 GETTABLEKS                       R5 R2 K14 ["defaultAbilitiesEnableGettingUpSetting"]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K14 ["defaultAbilitiesEnableGettingUpSetting"]
       91 CALL                             R3 3 0
       92 GETUPVAL                         R3 0
       93 MOVE                             R4 R1
       94 GETTABLEKS                       R5 R2 K15 ["defaultAbilitiesEnableClimbingSetting"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K15 ["defaultAbilitiesEnableClimbingSetting"]
       99 CALL                             R3 3 0
      100 GETUPVAL                         R3 0
      101 MOVE                             R4 R1
      102 GETTABLEKS                       R5 R2 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      107 CALL                             R3 3 0
      108 RETURN                           R0 0

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
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["InvokeKeys"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       35 GETTABLEKS                       R4 R4 K13 ["StandaloneFiles"]
       37 GETTABLEKS                       R4 R4 K14 ["standaloneInvokeUtils"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R3 K15 ["useCreateInvokes"]
       42 DUPCLOSURE                       R5 K16 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 RETURN                           R5 1
