PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AbilityCharacterControllerModeSelected"]
        5 DUPTABLE                         R4 K2 [{"abilityCharacterControllerMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["abilityCharacterControllerMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["characterControllerModeSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableClimbingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityClimbingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableClimbingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AbilityCrouchingToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableFallingDownSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityFallingDownToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableFallingDownSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableGettingUpSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityGettingUpToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableGettingUpSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AbilityHoldingToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableJumpingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityJumpingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableJumpingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AbilityReachingToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableRunningSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityRunningToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableRunningSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSittingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilitySittingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSittingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AbilitySprintingToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSwimmingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilitySwimmingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSwimmingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AbilityCharacterControllerModeSelected"]
        5 DUPTABLE                         R4 K2 [{"abilityCharacterControllerMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["abilityCharacterControllerMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["characterControllerModeSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableRunningSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityRunningToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableRunningSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableJumpingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityJumpingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableJumpingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSittingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilitySittingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSittingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableFallingDownSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityFallingDownToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableFallingDownSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableGettingUpSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityGettingUpToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableGettingUpSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableClimbingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityClimbingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableClimbingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSwimmingSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilitySwimmingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["defaultAbilitiesEnableSwimmingSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R4 K2 ["settings"]
       29 GETTABLEKS                       R5 R5 K6 ["movementSettings"]
       31 GETTABLEKS                       R6 R5 K7 ["characterControllerModeSetting"]
       33 GETTABLEKS                       R6 R6 K8 ["value"]
       35 GETIMPORT                        R8 K12 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       37 JUMPIFEQ                         R6 R8 ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 NEWTABLE                         R8 0 2
       43 DUPTABLE                         R9 K15 [{"Id", "Label"}]
       44 GETIMPORT                        R10 K17 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       46 SETTABLEKS                       R10 R9 K13 ["Id"]
       48 LOADK                            R12 K18 ["MovementSettings"]
       49 LOADK                            R13 K19 ["AbilitiesSectionLegacyHumanoidButtonText"]
       50 NAMECALL                         R10 R1 K20 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K14 ["Label"]
       55 DUPTABLE                         R10 K15 [{"Id", "Label"}]
       56 GETIMPORT                        R11 K12 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       58 SETTABLEKS                       R11 R10 K13 ["Id"]
       60 LOADK                            R13 K18 ["MovementSettings"]
       61 LOADK                            R14 K21 ["AbilitiesSectionLuaCharControllerButtonText"]
       62 NAMECALL                         R11 R1 K20 ["getText"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K14 ["Label"]
       67 SETLIST                          R8 R9 2 [1]
       69 GETUPVAL                         R9 5
       70 CALL                             R9 0 1
       71 JUMPIFNOT                        R9 ; [+401]
       72 GETTABLEKS                       R10 R5 K22 ["defaultAbilitiesEnableCrouchingSetting"]
       74 FASTCALL2K                       ASSERT R10 K23 ; [+4]
       76 LOADK                            R11 K23 ["Expected crouching setting"]
       77 GETIMPORT                        R9 K5 [assert]
       79 CALL                             R9 2 1
       80 GETTABLEKS                       R11 R5 K24 ["defaultAbilitiesEnableHoldingSetting"]
       82 FASTCALL2K                       ASSERT R11 K25 ; [+4]
       84 LOADK                            R12 K25 ["Expected holding setting"]
       85 GETIMPORT                        R10 K5 [assert]
       87 CALL                             R10 2 1
       88 GETTABLEKS                       R12 R5 K26 ["defaultAbilitiesEnableReachingSetting"]
       90 FASTCALL2K                       ASSERT R12 K27 ; [+4]
       92 LOADK                            R13 K27 ["Expected reaching setting"]
       93 GETIMPORT                        R11 K5 [assert]
       95 CALL                             R11 2 1
       96 GETTABLEKS                       R13 R5 K28 ["defaultAbilitiesEnableSprintingSetting"]
       98 FASTCALL2K                       ASSERT R13 K29 ; [+4]
      100 LOADK                            R14 K29 ["Expected sprinting setting"]
      101 GETIMPORT                        R12 K5 [assert]
      103 CALL                             R12 2 1
      104 GETUPVAL                         R13 6
      105 GETUPVAL                         R14 7
      106 DUPTABLE                         R15 K32 [{"text", "layoutOrder"}]
      107 LOADK                            R18 K18 ["MovementSettings"]
      108 LOADK                            R19 K33 ["DefaultAbilitiesSection"]
      109 NAMECALL                         R16 R1 K20 ["getText"]
      111 CALL                             R16 3 1
      112 SETTABLEKS                       R16 R15 K30 ["text"]
      114 GETTABLEKS                       R16 R0 K31 ["layoutOrder"]
      116 SETTABLEKS                       R16 R15 K31 ["layoutOrder"]
      118 DUPTABLE                         R16 K46 [{"CharacterControllerModeSelector", "EnableClimbingCheckbox", "EnableCrouchingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableHoldingCheckbox", "EnableJumpingCheckbox", "EnableReachingCheckbox", "EnableRunningCheckbox", "EnableSittingCheckbox", "EnableSprintingCheckbox", "EnableSwimmingCheckbox"}]
      119 GETUPVAL                         R17 6
      120 GETUPVAL                         R18 8
      121 DUPTABLE                         R19 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      122 MOVE                             R20 R3
      123 CALL                             R20 0 1
      124 SETTABLEKS                       R20 R19 K31 ["layoutOrder"]
      126 SETTABLEKS                       R8 R19 K47 ["items"]
      128 SETTABLEKS                       R6 R19 K48 ["selected"]
      130 NEWCLOSURE                       R20 P0
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R20 R19 K49 ["onItemActivated"]
      136 LOADK                            R22 K18 ["MovementSettings"]
      137 JUMPIFNOT                        R7 ; [+2]
      138 LOADK                            R23 K52 ["AbilitiesSectionControllerModeLuaSubText"]
      139 JUMP                             ; [+1]
      140 LOADK                            R23 K53 ["AbilitiesSectionControllerModeLegacySubText"]
      141 NAMECALL                         R20 R1 K20 ["getText"]
      143 CALL                             R20 3 1
      144 SETTABLEKS                       R20 R19 K50 ["subText"]
      146 CALL                             R17 2 1
      147 SETTABLEKS                       R17 R16 K34 ["CharacterControllerModeSelector"]
      149 MOVE                             R17 R7
      150 JUMPIFNOT                        R17 ; [+26]
      151 GETUPVAL                         R17 6
      152 GETUPVAL                         R18 9
      153 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      154 MOVE                             R20 R3
      155 CALL                             R20 0 1
      156 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      158 GETTABLEKS                       R20 R5 K59 ["defaultAbilitiesEnableClimbingSetting"]
      160 GETTABLEKS                       R20 R20 K8 ["value"]
      162 SETTABLEKS                       R20 R19 K55 ["Checked"]
      164 LOADK                            R22 K18 ["MovementSettings"]
      165 LOADK                            R23 K60 ["DefaultAbilitiesSectionEnableClimbing"]
      166 NAMECALL                         R20 R1 K20 ["getText"]
      168 CALL                             R20 3 1
      169 SETTABLEKS                       R20 R19 K56 ["Text"]
      171 NEWCLOSURE                       R20 P1
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      176 CALL                             R17 2 1
      177 SETTABLEKS                       R17 R16 K35 ["EnableClimbingCheckbox"]
      179 MOVE                             R17 R7
      180 JUMPIFNOT                        R17 ; [+24]
      181 GETUPVAL                         R17 6
      182 GETUPVAL                         R18 9
      183 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      184 MOVE                             R20 R3
      185 CALL                             R20 0 1
      186 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      188 GETTABLEKS                       R20 R9 K8 ["value"]
      190 SETTABLEKS                       R20 R19 K55 ["Checked"]
      192 LOADK                            R22 K18 ["MovementSettings"]
      193 LOADK                            R23 K61 ["DefaultAbilitiesSectionEnableCrouching"]
      194 NAMECALL                         R20 R1 K20 ["getText"]
      196 CALL                             R20 3 1
      197 SETTABLEKS                       R20 R19 K56 ["Text"]
      199 NEWCLOSURE                       R20 P2
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R2
      202 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      204 CALL                             R17 2 1
      205 SETTABLEKS                       R17 R16 K36 ["EnableCrouchingCheckbox"]
      207 MOVE                             R17 R7
      208 JUMPIFNOT                        R17 ; [+26]
      209 GETUPVAL                         R17 6
      210 GETUPVAL                         R18 9
      211 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      212 MOVE                             R20 R3
      213 CALL                             R20 0 1
      214 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      216 GETTABLEKS                       R20 R5 K62 ["defaultAbilitiesEnableFallingDownSetting"]
      218 GETTABLEKS                       R20 R20 K8 ["value"]
      220 SETTABLEKS                       R20 R19 K55 ["Checked"]
      222 LOADK                            R22 K18 ["MovementSettings"]
      223 LOADK                            R23 K63 ["DefaultAbilitiesSectionEnableFallingDown"]
      224 NAMECALL                         R20 R1 K20 ["getText"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K56 ["Text"]
      229 NEWCLOSURE                       R20 P3
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R2
      232 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      234 CALL                             R17 2 1
      235 SETTABLEKS                       R17 R16 K37 ["EnableFallingDownCheckbox"]
      237 MOVE                             R17 R7
      238 JUMPIFNOT                        R17 ; [+26]
      239 GETUPVAL                         R17 6
      240 GETUPVAL                         R18 9
      241 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      242 MOVE                             R20 R3
      243 CALL                             R20 0 1
      244 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      246 GETTABLEKS                       R20 R5 K64 ["defaultAbilitiesEnableGettingUpSetting"]
      248 GETTABLEKS                       R20 R20 K8 ["value"]
      250 SETTABLEKS                       R20 R19 K55 ["Checked"]
      252 LOADK                            R22 K18 ["MovementSettings"]
      253 LOADK                            R23 K65 ["DefaultAbilitiesSectionEnableGettingUp"]
      254 NAMECALL                         R20 R1 K20 ["getText"]
      256 CALL                             R20 3 1
      257 SETTABLEKS                       R20 R19 K56 ["Text"]
      259 NEWCLOSURE                       R20 P4
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R2
      262 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      264 CALL                             R17 2 1
      265 SETTABLEKS                       R17 R16 K38 ["EnableGettingUpCheckbox"]
      267 MOVE                             R17 R7
      268 JUMPIFNOT                        R17 ; [+24]
      269 GETUPVAL                         R17 6
      270 GETUPVAL                         R18 9
      271 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      272 MOVE                             R20 R3
      273 CALL                             R20 0 1
      274 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      276 GETTABLEKS                       R20 R10 K8 ["value"]
      278 SETTABLEKS                       R20 R19 K55 ["Checked"]
      280 LOADK                            R22 K18 ["MovementSettings"]
      281 LOADK                            R23 K66 ["DefaultAbilitiesSectionEnableHolding"]
      282 NAMECALL                         R20 R1 K20 ["getText"]
      284 CALL                             R20 3 1
      285 SETTABLEKS                       R20 R19 K56 ["Text"]
      287 NEWCLOSURE                       R20 P5
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R2
      290 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      292 CALL                             R17 2 1
      293 SETTABLEKS                       R17 R16 K39 ["EnableHoldingCheckbox"]
      295 MOVE                             R17 R7
      296 JUMPIFNOT                        R17 ; [+26]
      297 GETUPVAL                         R17 6
      298 GETUPVAL                         R18 9
      299 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      300 MOVE                             R20 R3
      301 CALL                             R20 0 1
      302 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      304 GETTABLEKS                       R20 R5 K67 ["defaultAbilitiesEnableJumpingSetting"]
      306 GETTABLEKS                       R20 R20 K8 ["value"]
      308 SETTABLEKS                       R20 R19 K55 ["Checked"]
      310 LOADK                            R22 K18 ["MovementSettings"]
      311 LOADK                            R23 K68 ["DefaultAbilitiesSectionEnableJumping"]
      312 NAMECALL                         R20 R1 K20 ["getText"]
      314 CALL                             R20 3 1
      315 SETTABLEKS                       R20 R19 K56 ["Text"]
      317 NEWCLOSURE                       R20 P6
      318 CAPTURE                          VAL R5
      319 CAPTURE                          VAL R2
      320 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      322 CALL                             R17 2 1
      323 SETTABLEKS                       R17 R16 K40 ["EnableJumpingCheckbox"]
      325 MOVE                             R17 R7
      326 JUMPIFNOT                        R17 ; [+24]
      327 GETUPVAL                         R17 6
      328 GETUPVAL                         R18 9
      329 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      330 MOVE                             R20 R3
      331 CALL                             R20 0 1
      332 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      334 GETTABLEKS                       R20 R11 K8 ["value"]
      336 SETTABLEKS                       R20 R19 K55 ["Checked"]
      338 LOADK                            R22 K18 ["MovementSettings"]
      339 LOADK                            R23 K69 ["DefaultAbilitiesSectionEnableReaching"]
      340 NAMECALL                         R20 R1 K20 ["getText"]
      342 CALL                             R20 3 1
      343 SETTABLEKS                       R20 R19 K56 ["Text"]
      345 NEWCLOSURE                       R20 P7
      346 CAPTURE                          VAL R11
      347 CAPTURE                          VAL R2
      348 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      350 CALL                             R17 2 1
      351 SETTABLEKS                       R17 R16 K41 ["EnableReachingCheckbox"]
      353 MOVE                             R17 R7
      354 JUMPIFNOT                        R17 ; [+26]
      355 GETUPVAL                         R17 6
      356 GETUPVAL                         R18 9
      357 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      358 MOVE                             R20 R3
      359 CALL                             R20 0 1
      360 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      362 GETTABLEKS                       R20 R5 K70 ["defaultAbilitiesEnableRunningSetting"]
      364 GETTABLEKS                       R20 R20 K8 ["value"]
      366 SETTABLEKS                       R20 R19 K55 ["Checked"]
      368 LOADK                            R22 K18 ["MovementSettings"]
      369 LOADK                            R23 K71 ["DefaultAbilitiesSectionEnableRunning"]
      370 NAMECALL                         R20 R1 K20 ["getText"]
      372 CALL                             R20 3 1
      373 SETTABLEKS                       R20 R19 K56 ["Text"]
      375 NEWCLOSURE                       R20 P8
      376 CAPTURE                          VAL R5
      377 CAPTURE                          VAL R2
      378 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      380 CALL                             R17 2 1
      381 SETTABLEKS                       R17 R16 K42 ["EnableRunningCheckbox"]
      383 MOVE                             R17 R7
      384 JUMPIFNOT                        R17 ; [+26]
      385 GETUPVAL                         R17 6
      386 GETUPVAL                         R18 9
      387 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      388 MOVE                             R20 R3
      389 CALL                             R20 0 1
      390 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      392 GETTABLEKS                       R20 R5 K72 ["defaultAbilitiesEnableSittingSetting"]
      394 GETTABLEKS                       R20 R20 K8 ["value"]
      396 SETTABLEKS                       R20 R19 K55 ["Checked"]
      398 LOADK                            R22 K18 ["MovementSettings"]
      399 LOADK                            R23 K73 ["DefaultAbilitiesSectionEnableSitting"]
      400 NAMECALL                         R20 R1 K20 ["getText"]
      402 CALL                             R20 3 1
      403 SETTABLEKS                       R20 R19 K56 ["Text"]
      405 NEWCLOSURE                       R20 P9
      406 CAPTURE                          VAL R5
      407 CAPTURE                          VAL R2
      408 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      410 CALL                             R17 2 1
      411 SETTABLEKS                       R17 R16 K43 ["EnableSittingCheckbox"]
      413 MOVE                             R17 R7
      414 JUMPIFNOT                        R17 ; [+24]
      415 GETUPVAL                         R17 6
      416 GETUPVAL                         R18 9
      417 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      418 MOVE                             R20 R3
      419 CALL                             R20 0 1
      420 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      422 GETTABLEKS                       R20 R12 K8 ["value"]
      424 SETTABLEKS                       R20 R19 K55 ["Checked"]
      426 LOADK                            R22 K18 ["MovementSettings"]
      427 LOADK                            R23 K74 ["DefaultAbilitiesSectionEnableSprinting"]
      428 NAMECALL                         R20 R1 K20 ["getText"]
      430 CALL                             R20 3 1
      431 SETTABLEKS                       R20 R19 K56 ["Text"]
      433 NEWCLOSURE                       R20 P10
      434 CAPTURE                          VAL R12
      435 CAPTURE                          VAL R2
      436 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      438 CALL                             R17 2 1
      439 SETTABLEKS                       R17 R16 K44 ["EnableSprintingCheckbox"]
      441 MOVE                             R17 R7
      442 JUMPIFNOT                        R17 ; [+26]
      443 GETUPVAL                         R17 6
      444 GETUPVAL                         R18 9
      445 DUPTABLE                         R19 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      446 MOVE                             R20 R3
      447 CALL                             R20 0 1
      448 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      450 GETTABLEKS                       R20 R5 K75 ["defaultAbilitiesEnableSwimmingSetting"]
      452 GETTABLEKS                       R20 R20 K8 ["value"]
      454 SETTABLEKS                       R20 R19 K55 ["Checked"]
      456 LOADK                            R22 K18 ["MovementSettings"]
      457 LOADK                            R23 K76 ["DefaultAbilitiesSectionEnableSwimming"]
      458 NAMECALL                         R20 R1 K20 ["getText"]
      460 CALL                             R20 3 1
      461 SETTABLEKS                       R20 R19 K56 ["Text"]
      463 NEWCLOSURE                       R20 P11
      464 CAPTURE                          VAL R5
      465 CAPTURE                          VAL R2
      466 SETTABLEKS                       R20 R19 K57 ["OnClick"]
      468 CALL                             R17 2 1
      469 SETTABLEKS                       R17 R16 K45 ["EnableSwimmingCheckbox"]
      471 CALL                             R13 3 -1
      472 RETURN                           R13 -1
      473 GETUPVAL                         R9 6
      474 GETUPVAL                         R10 7
      475 DUPTABLE                         R11 K32 [{"text", "layoutOrder"}]
      476 LOADK                            R14 K18 ["MovementSettings"]
      477 LOADK                            R15 K33 ["DefaultAbilitiesSection"]
      478 NAMECALL                         R12 R1 K20 ["getText"]
      480 CALL                             R12 3 1
      481 SETTABLEKS                       R12 R11 K30 ["text"]
      483 GETTABLEKS                       R12 R0 K31 ["layoutOrder"]
      485 SETTABLEKS                       R12 R11 K31 ["layoutOrder"]
      487 DUPTABLE                         R12 K77 [{"CharacterControllerModeSelector", "EnableRunningCheckbox", "EnableJumpingCheckbox", "EnableSittingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableClimbingCheckbox", "EnableSwimmingCheckbox"}]
      488 GETUPVAL                         R13 6
      489 GETUPVAL                         R14 8
      490 DUPTABLE                         R15 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      491 MOVE                             R16 R3
      492 CALL                             R16 0 1
      493 SETTABLEKS                       R16 R15 K31 ["layoutOrder"]
      495 SETTABLEKS                       R8 R15 K47 ["items"]
      497 SETTABLEKS                       R6 R15 K48 ["selected"]
      499 NEWCLOSURE                       R16 P12
      500 CAPTURE                          VAL R6
      501 CAPTURE                          VAL R2
      502 CAPTURE                          VAL R5
      503 SETTABLEKS                       R16 R15 K49 ["onItemActivated"]
      505 LOADK                            R18 K18 ["MovementSettings"]
      506 JUMPIFNOT                        R7 ; [+2]
      507 LOADK                            R19 K52 ["AbilitiesSectionControllerModeLuaSubText"]
      508 JUMP                             ; [+1]
      509 LOADK                            R19 K53 ["AbilitiesSectionControllerModeLegacySubText"]
      510 NAMECALL                         R16 R1 K20 ["getText"]
      512 CALL                             R16 3 1
      513 SETTABLEKS                       R16 R15 K50 ["subText"]
      515 CALL                             R13 2 1
      516 SETTABLEKS                       R13 R12 K34 ["CharacterControllerModeSelector"]
      518 MOVE                             R13 R7
      519 JUMPIFNOT                        R13 ; [+26]
      520 GETUPVAL                         R13 6
      521 GETUPVAL                         R14 9
      522 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      523 MOVE                             R16 R3
      524 CALL                             R16 0 1
      525 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      527 GETTABLEKS                       R16 R5 K70 ["defaultAbilitiesEnableRunningSetting"]
      529 GETTABLEKS                       R16 R16 K8 ["value"]
      531 SETTABLEKS                       R16 R15 K55 ["Checked"]
      533 LOADK                            R18 K18 ["MovementSettings"]
      534 LOADK                            R19 K71 ["DefaultAbilitiesSectionEnableRunning"]
      535 NAMECALL                         R16 R1 K20 ["getText"]
      537 CALL                             R16 3 1
      538 SETTABLEKS                       R16 R15 K56 ["Text"]
      540 NEWCLOSURE                       R16 P13
      541 CAPTURE                          VAL R5
      542 CAPTURE                          VAL R2
      543 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      545 CALL                             R13 2 1
      546 SETTABLEKS                       R13 R12 K42 ["EnableRunningCheckbox"]
      548 MOVE                             R13 R7
      549 JUMPIFNOT                        R13 ; [+26]
      550 GETUPVAL                         R13 6
      551 GETUPVAL                         R14 9
      552 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      553 MOVE                             R16 R3
      554 CALL                             R16 0 1
      555 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      557 GETTABLEKS                       R16 R5 K67 ["defaultAbilitiesEnableJumpingSetting"]
      559 GETTABLEKS                       R16 R16 K8 ["value"]
      561 SETTABLEKS                       R16 R15 K55 ["Checked"]
      563 LOADK                            R18 K18 ["MovementSettings"]
      564 LOADK                            R19 K68 ["DefaultAbilitiesSectionEnableJumping"]
      565 NAMECALL                         R16 R1 K20 ["getText"]
      567 CALL                             R16 3 1
      568 SETTABLEKS                       R16 R15 K56 ["Text"]
      570 NEWCLOSURE                       R16 P14
      571 CAPTURE                          VAL R5
      572 CAPTURE                          VAL R2
      573 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      575 CALL                             R13 2 1
      576 SETTABLEKS                       R13 R12 K40 ["EnableJumpingCheckbox"]
      578 MOVE                             R13 R7
      579 JUMPIFNOT                        R13 ; [+26]
      580 GETUPVAL                         R13 6
      581 GETUPVAL                         R14 9
      582 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      583 MOVE                             R16 R3
      584 CALL                             R16 0 1
      585 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      587 GETTABLEKS                       R16 R5 K72 ["defaultAbilitiesEnableSittingSetting"]
      589 GETTABLEKS                       R16 R16 K8 ["value"]
      591 SETTABLEKS                       R16 R15 K55 ["Checked"]
      593 LOADK                            R18 K18 ["MovementSettings"]
      594 LOADK                            R19 K73 ["DefaultAbilitiesSectionEnableSitting"]
      595 NAMECALL                         R16 R1 K20 ["getText"]
      597 CALL                             R16 3 1
      598 SETTABLEKS                       R16 R15 K56 ["Text"]
      600 NEWCLOSURE                       R16 P15
      601 CAPTURE                          VAL R5
      602 CAPTURE                          VAL R2
      603 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      605 CALL                             R13 2 1
      606 SETTABLEKS                       R13 R12 K43 ["EnableSittingCheckbox"]
      608 MOVE                             R13 R7
      609 JUMPIFNOT                        R13 ; [+26]
      610 GETUPVAL                         R13 6
      611 GETUPVAL                         R14 9
      612 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      613 MOVE                             R16 R3
      614 CALL                             R16 0 1
      615 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      617 GETTABLEKS                       R16 R5 K62 ["defaultAbilitiesEnableFallingDownSetting"]
      619 GETTABLEKS                       R16 R16 K8 ["value"]
      621 SETTABLEKS                       R16 R15 K55 ["Checked"]
      623 LOADK                            R18 K18 ["MovementSettings"]
      624 LOADK                            R19 K63 ["DefaultAbilitiesSectionEnableFallingDown"]
      625 NAMECALL                         R16 R1 K20 ["getText"]
      627 CALL                             R16 3 1
      628 SETTABLEKS                       R16 R15 K56 ["Text"]
      630 NEWCLOSURE                       R16 P16
      631 CAPTURE                          VAL R5
      632 CAPTURE                          VAL R2
      633 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      635 CALL                             R13 2 1
      636 SETTABLEKS                       R13 R12 K37 ["EnableFallingDownCheckbox"]
      638 MOVE                             R13 R7
      639 JUMPIFNOT                        R13 ; [+26]
      640 GETUPVAL                         R13 6
      641 GETUPVAL                         R14 9
      642 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      643 MOVE                             R16 R3
      644 CALL                             R16 0 1
      645 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      647 GETTABLEKS                       R16 R5 K64 ["defaultAbilitiesEnableGettingUpSetting"]
      649 GETTABLEKS                       R16 R16 K8 ["value"]
      651 SETTABLEKS                       R16 R15 K55 ["Checked"]
      653 LOADK                            R18 K18 ["MovementSettings"]
      654 LOADK                            R19 K65 ["DefaultAbilitiesSectionEnableGettingUp"]
      655 NAMECALL                         R16 R1 K20 ["getText"]
      657 CALL                             R16 3 1
      658 SETTABLEKS                       R16 R15 K56 ["Text"]
      660 NEWCLOSURE                       R16 P17
      661 CAPTURE                          VAL R5
      662 CAPTURE                          VAL R2
      663 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      665 CALL                             R13 2 1
      666 SETTABLEKS                       R13 R12 K38 ["EnableGettingUpCheckbox"]
      668 MOVE                             R13 R7
      669 JUMPIFNOT                        R13 ; [+26]
      670 GETUPVAL                         R13 6
      671 GETUPVAL                         R14 9
      672 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      673 MOVE                             R16 R3
      674 CALL                             R16 0 1
      675 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      677 GETTABLEKS                       R16 R5 K59 ["defaultAbilitiesEnableClimbingSetting"]
      679 GETTABLEKS                       R16 R16 K8 ["value"]
      681 SETTABLEKS                       R16 R15 K55 ["Checked"]
      683 LOADK                            R18 K18 ["MovementSettings"]
      684 LOADK                            R19 K60 ["DefaultAbilitiesSectionEnableClimbing"]
      685 NAMECALL                         R16 R1 K20 ["getText"]
      687 CALL                             R16 3 1
      688 SETTABLEKS                       R16 R15 K56 ["Text"]
      690 NEWCLOSURE                       R16 P18
      691 CAPTURE                          VAL R5
      692 CAPTURE                          VAL R2
      693 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      695 CALL                             R13 2 1
      696 SETTABLEKS                       R13 R12 K35 ["EnableClimbingCheckbox"]
      698 MOVE                             R13 R7
      699 JUMPIFNOT                        R13 ; [+26]
      700 GETUPVAL                         R13 6
      701 GETUPVAL                         R14 9
      702 DUPTABLE                         R15 K58 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      703 MOVE                             R16 R3
      704 CALL                             R16 0 1
      705 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      707 GETTABLEKS                       R16 R5 K75 ["defaultAbilitiesEnableSwimmingSetting"]
      709 GETTABLEKS                       R16 R16 K8 ["value"]
      711 SETTABLEKS                       R16 R15 K55 ["Checked"]
      713 LOADK                            R18 K18 ["MovementSettings"]
      714 LOADK                            R19 K76 ["DefaultAbilitiesSectionEnableSwimming"]
      715 NAMECALL                         R16 R1 K20 ["getText"]
      717 CALL                             R16 3 1
      718 SETTABLEKS                       R16 R15 K56 ["Text"]
      720 NEWCLOSURE                       R16 P19
      721 CAPTURE                          VAL R5
      722 CAPTURE                          VAL R2
      723 SETTABLEKS                       R16 R15 K57 ["OnClick"]
      725 CALL                             R13 2 1
      726 SETTABLEKS                       R13 R12 K45 ["EnableSwimmingCheckbox"]
      728 CALL                             R9 3 -1
      729 RETURN                           R9 -1

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
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K10 ["ExpandableSection"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R4 K12 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Components"]
       40 GETTABLEKS                       R5 R5 K13 ["GenericModeSelector"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K11 ["Packages"]
       47 GETTABLEKS                       R6 R6 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K11 ["Packages"]
       54 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R3 K16 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K17 ["Localization"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R10 R10 K18 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["Telemetry"]
       69 GETTABLEKS                       R10 R10 K20 ["TelemetryContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Src"]
       76 GETTABLEKS                       R11 R11 K21 ["Flags"]
       78 GETTABLEKS                       R11 R11 K22 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R6 K23 ["createNextOrder"]
       83 GETTABLEKS                       R12 R5 K24 ["createElement"]
       85 GETTABLEKS                       R13 R3 K25 ["UI"]
       87 GETTABLEKS                       R14 R13 K26 ["Checkbox"]
       89 DUPCLOSURE                       R15 K27 [PROTO_20]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R14
      100 RETURN                           R15 1
