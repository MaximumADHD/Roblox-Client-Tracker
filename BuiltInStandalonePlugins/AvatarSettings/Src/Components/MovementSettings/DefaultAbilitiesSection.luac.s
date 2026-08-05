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
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AbilityStrafingToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       71 JUMPIFNOT                        R9 ; [+437]
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
      104 GETTABLEKS                       R14 R5 K30 ["defaultAbilitiesEnableStrafingSetting"]
      106 FASTCALL2K                       ASSERT R14 K31 ; [+4]
      108 LOADK                            R15 K31 ["Expected strafing setting"]
      109 GETIMPORT                        R13 K5 [assert]
      111 CALL                             R13 2 1
      112 GETUPVAL                         R14 6
      113 GETUPVAL                         R15 7
      114 DUPTABLE                         R16 K34 [{"text", "layoutOrder"}]
      115 LOADK                            R19 K18 ["MovementSettings"]
      116 LOADK                            R20 K35 ["DefaultAbilitiesSection"]
      117 NAMECALL                         R17 R1 K20 ["getText"]
      119 CALL                             R17 3 1
      120 SETTABLEKS                       R17 R16 K32 ["text"]
      122 GETTABLEKS                       R17 R0 K33 ["layoutOrder"]
      124 SETTABLEKS                       R17 R16 K33 ["layoutOrder"]
      126 DUPTABLE                         R17 K49 [{"CharacterControllerModeSelector", "EnableClimbingCheckbox", "EnableCrouchingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableHoldingCheckbox", "EnableJumpingCheckbox", "EnableReachingCheckbox", "EnableRunningCheckbox", "EnableSittingCheckbox", "EnableSprintingCheckbox", "EnableStrafingCheckbox", "EnableSwimmingCheckbox"}]
      127 GETUPVAL                         R18 6
      128 GETUPVAL                         R19 8
      129 DUPTABLE                         R20 K54 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      130 MOVE                             R21 R3
      131 CALL                             R21 0 1
      132 SETTABLEKS                       R21 R20 K33 ["layoutOrder"]
      134 SETTABLEKS                       R8 R20 K50 ["items"]
      136 SETTABLEKS                       R6 R20 K51 ["selected"]
      138 NEWCLOSURE                       R21 P0
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R5
      142 SETTABLEKS                       R21 R20 K52 ["onItemActivated"]
      144 LOADK                            R23 K18 ["MovementSettings"]
      145 JUMPIFNOT                        R7 ; [+2]
      146 LOADK                            R24 K55 ["AbilitiesSectionControllerModeLuaSubText"]
      147 JUMP                             ; [+1]
      148 LOADK                            R24 K56 ["AbilitiesSectionControllerModeLegacySubText"]
      149 NAMECALL                         R21 R1 K20 ["getText"]
      151 CALL                             R21 3 1
      152 SETTABLEKS                       R21 R20 K53 ["subText"]
      154 CALL                             R18 2 1
      155 SETTABLEKS                       R18 R17 K36 ["CharacterControllerModeSelector"]
      157 MOVE                             R18 R7
      158 JUMPIFNOT                        R18 ; [+26]
      159 GETUPVAL                         R18 6
      160 GETUPVAL                         R19 9
      161 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      162 MOVE                             R21 R3
      163 CALL                             R21 0 1
      164 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      166 GETTABLEKS                       R21 R5 K62 ["defaultAbilitiesEnableClimbingSetting"]
      168 GETTABLEKS                       R21 R21 K8 ["value"]
      170 SETTABLEKS                       R21 R20 K58 ["Checked"]
      172 LOADK                            R23 K18 ["MovementSettings"]
      173 LOADK                            R24 K63 ["DefaultAbilitiesSectionEnableClimbing"]
      174 NAMECALL                         R21 R1 K20 ["getText"]
      176 CALL                             R21 3 1
      177 SETTABLEKS                       R21 R20 K59 ["Text"]
      179 NEWCLOSURE                       R21 P1
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R2
      182 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      184 CALL                             R18 2 1
      185 SETTABLEKS                       R18 R17 K37 ["EnableClimbingCheckbox"]
      187 MOVE                             R18 R7
      188 JUMPIFNOT                        R18 ; [+24]
      189 GETUPVAL                         R18 6
      190 GETUPVAL                         R19 9
      191 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      192 MOVE                             R21 R3
      193 CALL                             R21 0 1
      194 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      196 GETTABLEKS                       R21 R9 K8 ["value"]
      198 SETTABLEKS                       R21 R20 K58 ["Checked"]
      200 LOADK                            R23 K18 ["MovementSettings"]
      201 LOADK                            R24 K64 ["DefaultAbilitiesSectionEnableCrouching"]
      202 NAMECALL                         R21 R1 K20 ["getText"]
      204 CALL                             R21 3 1
      205 SETTABLEKS                       R21 R20 K59 ["Text"]
      207 NEWCLOSURE                       R21 P2
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R2
      210 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K38 ["EnableCrouchingCheckbox"]
      215 MOVE                             R18 R7
      216 JUMPIFNOT                        R18 ; [+26]
      217 GETUPVAL                         R18 6
      218 GETUPVAL                         R19 9
      219 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      220 MOVE                             R21 R3
      221 CALL                             R21 0 1
      222 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      224 GETTABLEKS                       R21 R5 K65 ["defaultAbilitiesEnableFallingDownSetting"]
      226 GETTABLEKS                       R21 R21 K8 ["value"]
      228 SETTABLEKS                       R21 R20 K58 ["Checked"]
      230 LOADK                            R23 K18 ["MovementSettings"]
      231 LOADK                            R24 K66 ["DefaultAbilitiesSectionEnableFallingDown"]
      232 NAMECALL                         R21 R1 K20 ["getText"]
      234 CALL                             R21 3 1
      235 SETTABLEKS                       R21 R20 K59 ["Text"]
      237 NEWCLOSURE                       R21 P3
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R2
      240 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      242 CALL                             R18 2 1
      243 SETTABLEKS                       R18 R17 K39 ["EnableFallingDownCheckbox"]
      245 MOVE                             R18 R7
      246 JUMPIFNOT                        R18 ; [+26]
      247 GETUPVAL                         R18 6
      248 GETUPVAL                         R19 9
      249 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      250 MOVE                             R21 R3
      251 CALL                             R21 0 1
      252 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      254 GETTABLEKS                       R21 R5 K67 ["defaultAbilitiesEnableGettingUpSetting"]
      256 GETTABLEKS                       R21 R21 K8 ["value"]
      258 SETTABLEKS                       R21 R20 K58 ["Checked"]
      260 LOADK                            R23 K18 ["MovementSettings"]
      261 LOADK                            R24 K68 ["DefaultAbilitiesSectionEnableGettingUp"]
      262 NAMECALL                         R21 R1 K20 ["getText"]
      264 CALL                             R21 3 1
      265 SETTABLEKS                       R21 R20 K59 ["Text"]
      267 NEWCLOSURE                       R21 P4
      268 CAPTURE                          VAL R5
      269 CAPTURE                          VAL R2
      270 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R17 K40 ["EnableGettingUpCheckbox"]
      275 MOVE                             R18 R7
      276 JUMPIFNOT                        R18 ; [+24]
      277 GETUPVAL                         R18 6
      278 GETUPVAL                         R19 9
      279 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      280 MOVE                             R21 R3
      281 CALL                             R21 0 1
      282 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      284 GETTABLEKS                       R21 R10 K8 ["value"]
      286 SETTABLEKS                       R21 R20 K58 ["Checked"]
      288 LOADK                            R23 K18 ["MovementSettings"]
      289 LOADK                            R24 K69 ["DefaultAbilitiesSectionEnableHolding"]
      290 NAMECALL                         R21 R1 K20 ["getText"]
      292 CALL                             R21 3 1
      293 SETTABLEKS                       R21 R20 K59 ["Text"]
      295 NEWCLOSURE                       R21 P5
      296 CAPTURE                          VAL R10
      297 CAPTURE                          VAL R2
      298 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      300 CALL                             R18 2 1
      301 SETTABLEKS                       R18 R17 K41 ["EnableHoldingCheckbox"]
      303 MOVE                             R18 R7
      304 JUMPIFNOT                        R18 ; [+26]
      305 GETUPVAL                         R18 6
      306 GETUPVAL                         R19 9
      307 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      308 MOVE                             R21 R3
      309 CALL                             R21 0 1
      310 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      312 GETTABLEKS                       R21 R5 K70 ["defaultAbilitiesEnableJumpingSetting"]
      314 GETTABLEKS                       R21 R21 K8 ["value"]
      316 SETTABLEKS                       R21 R20 K58 ["Checked"]
      318 LOADK                            R23 K18 ["MovementSettings"]
      319 LOADK                            R24 K71 ["DefaultAbilitiesSectionEnableJumping"]
      320 NAMECALL                         R21 R1 K20 ["getText"]
      322 CALL                             R21 3 1
      323 SETTABLEKS                       R21 R20 K59 ["Text"]
      325 NEWCLOSURE                       R21 P6
      326 CAPTURE                          VAL R5
      327 CAPTURE                          VAL R2
      328 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      330 CALL                             R18 2 1
      331 SETTABLEKS                       R18 R17 K42 ["EnableJumpingCheckbox"]
      333 MOVE                             R18 R7
      334 JUMPIFNOT                        R18 ; [+24]
      335 GETUPVAL                         R18 6
      336 GETUPVAL                         R19 9
      337 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      338 MOVE                             R21 R3
      339 CALL                             R21 0 1
      340 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      342 GETTABLEKS                       R21 R11 K8 ["value"]
      344 SETTABLEKS                       R21 R20 K58 ["Checked"]
      346 LOADK                            R23 K18 ["MovementSettings"]
      347 LOADK                            R24 K72 ["DefaultAbilitiesSectionEnableReaching"]
      348 NAMECALL                         R21 R1 K20 ["getText"]
      350 CALL                             R21 3 1
      351 SETTABLEKS                       R21 R20 K59 ["Text"]
      353 NEWCLOSURE                       R21 P7
      354 CAPTURE                          VAL R11
      355 CAPTURE                          VAL R2
      356 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      358 CALL                             R18 2 1
      359 SETTABLEKS                       R18 R17 K43 ["EnableReachingCheckbox"]
      361 MOVE                             R18 R7
      362 JUMPIFNOT                        R18 ; [+26]
      363 GETUPVAL                         R18 6
      364 GETUPVAL                         R19 9
      365 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      366 MOVE                             R21 R3
      367 CALL                             R21 0 1
      368 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      370 GETTABLEKS                       R21 R5 K73 ["defaultAbilitiesEnableRunningSetting"]
      372 GETTABLEKS                       R21 R21 K8 ["value"]
      374 SETTABLEKS                       R21 R20 K58 ["Checked"]
      376 LOADK                            R23 K18 ["MovementSettings"]
      377 LOADK                            R24 K74 ["DefaultAbilitiesSectionEnableRunning"]
      378 NAMECALL                         R21 R1 K20 ["getText"]
      380 CALL                             R21 3 1
      381 SETTABLEKS                       R21 R20 K59 ["Text"]
      383 NEWCLOSURE                       R21 P8
      384 CAPTURE                          VAL R5
      385 CAPTURE                          VAL R2
      386 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      388 CALL                             R18 2 1
      389 SETTABLEKS                       R18 R17 K44 ["EnableRunningCheckbox"]
      391 MOVE                             R18 R7
      392 JUMPIFNOT                        R18 ; [+26]
      393 GETUPVAL                         R18 6
      394 GETUPVAL                         R19 9
      395 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      396 MOVE                             R21 R3
      397 CALL                             R21 0 1
      398 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      400 GETTABLEKS                       R21 R5 K75 ["defaultAbilitiesEnableSittingSetting"]
      402 GETTABLEKS                       R21 R21 K8 ["value"]
      404 SETTABLEKS                       R21 R20 K58 ["Checked"]
      406 LOADK                            R23 K18 ["MovementSettings"]
      407 LOADK                            R24 K76 ["DefaultAbilitiesSectionEnableSitting"]
      408 NAMECALL                         R21 R1 K20 ["getText"]
      410 CALL                             R21 3 1
      411 SETTABLEKS                       R21 R20 K59 ["Text"]
      413 NEWCLOSURE                       R21 P9
      414 CAPTURE                          VAL R5
      415 CAPTURE                          VAL R2
      416 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      418 CALL                             R18 2 1
      419 SETTABLEKS                       R18 R17 K45 ["EnableSittingCheckbox"]
      421 MOVE                             R18 R7
      422 JUMPIFNOT                        R18 ; [+24]
      423 GETUPVAL                         R18 6
      424 GETUPVAL                         R19 9
      425 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      426 MOVE                             R21 R3
      427 CALL                             R21 0 1
      428 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      430 GETTABLEKS                       R21 R12 K8 ["value"]
      432 SETTABLEKS                       R21 R20 K58 ["Checked"]
      434 LOADK                            R23 K18 ["MovementSettings"]
      435 LOADK                            R24 K77 ["DefaultAbilitiesSectionEnableSprinting"]
      436 NAMECALL                         R21 R1 K20 ["getText"]
      438 CALL                             R21 3 1
      439 SETTABLEKS                       R21 R20 K59 ["Text"]
      441 NEWCLOSURE                       R21 P10
      442 CAPTURE                          VAL R12
      443 CAPTURE                          VAL R2
      444 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      446 CALL                             R18 2 1
      447 SETTABLEKS                       R18 R17 K46 ["EnableSprintingCheckbox"]
      449 MOVE                             R18 R7
      450 JUMPIFNOT                        R18 ; [+24]
      451 GETUPVAL                         R18 6
      452 GETUPVAL                         R19 9
      453 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      454 MOVE                             R21 R3
      455 CALL                             R21 0 1
      456 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      458 GETTABLEKS                       R21 R13 K8 ["value"]
      460 SETTABLEKS                       R21 R20 K58 ["Checked"]
      462 LOADK                            R23 K18 ["MovementSettings"]
      463 LOADK                            R24 K78 ["DefaultAbilitiesSectionEnableStrafing"]
      464 NAMECALL                         R21 R1 K20 ["getText"]
      466 CALL                             R21 3 1
      467 SETTABLEKS                       R21 R20 K59 ["Text"]
      469 NEWCLOSURE                       R21 P11
      470 CAPTURE                          VAL R13
      471 CAPTURE                          VAL R2
      472 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      474 CALL                             R18 2 1
      475 SETTABLEKS                       R18 R17 K47 ["EnableStrafingCheckbox"]
      477 MOVE                             R18 R7
      478 JUMPIFNOT                        R18 ; [+26]
      479 GETUPVAL                         R18 6
      480 GETUPVAL                         R19 9
      481 DUPTABLE                         R20 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      482 MOVE                             R21 R3
      483 CALL                             R21 0 1
      484 SETTABLEKS                       R21 R20 K57 ["LayoutOrder"]
      486 GETTABLEKS                       R21 R5 K79 ["defaultAbilitiesEnableSwimmingSetting"]
      488 GETTABLEKS                       R21 R21 K8 ["value"]
      490 SETTABLEKS                       R21 R20 K58 ["Checked"]
      492 LOADK                            R23 K18 ["MovementSettings"]
      493 LOADK                            R24 K80 ["DefaultAbilitiesSectionEnableSwimming"]
      494 NAMECALL                         R21 R1 K20 ["getText"]
      496 CALL                             R21 3 1
      497 SETTABLEKS                       R21 R20 K59 ["Text"]
      499 NEWCLOSURE                       R21 P12
      500 CAPTURE                          VAL R5
      501 CAPTURE                          VAL R2
      502 SETTABLEKS                       R21 R20 K60 ["OnClick"]
      504 CALL                             R18 2 1
      505 SETTABLEKS                       R18 R17 K48 ["EnableSwimmingCheckbox"]
      507 CALL                             R14 3 -1
      508 RETURN                           R14 -1
      509 GETUPVAL                         R9 6
      510 GETUPVAL                         R10 7
      511 DUPTABLE                         R11 K34 [{"text", "layoutOrder"}]
      512 LOADK                            R14 K18 ["MovementSettings"]
      513 LOADK                            R15 K35 ["DefaultAbilitiesSection"]
      514 NAMECALL                         R12 R1 K20 ["getText"]
      516 CALL                             R12 3 1
      517 SETTABLEKS                       R12 R11 K32 ["text"]
      519 GETTABLEKS                       R12 R0 K33 ["layoutOrder"]
      521 SETTABLEKS                       R12 R11 K33 ["layoutOrder"]
      523 DUPTABLE                         R12 K81 [{"CharacterControllerModeSelector", "EnableRunningCheckbox", "EnableJumpingCheckbox", "EnableSittingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableClimbingCheckbox", "EnableSwimmingCheckbox"}]
      524 GETUPVAL                         R13 6
      525 GETUPVAL                         R14 8
      526 DUPTABLE                         R15 K54 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      527 MOVE                             R16 R3
      528 CALL                             R16 0 1
      529 SETTABLEKS                       R16 R15 K33 ["layoutOrder"]
      531 SETTABLEKS                       R8 R15 K50 ["items"]
      533 SETTABLEKS                       R6 R15 K51 ["selected"]
      535 NEWCLOSURE                       R16 P13
      536 CAPTURE                          VAL R6
      537 CAPTURE                          VAL R2
      538 CAPTURE                          VAL R5
      539 SETTABLEKS                       R16 R15 K52 ["onItemActivated"]
      541 LOADK                            R18 K18 ["MovementSettings"]
      542 JUMPIFNOT                        R7 ; [+2]
      543 LOADK                            R19 K55 ["AbilitiesSectionControllerModeLuaSubText"]
      544 JUMP                             ; [+1]
      545 LOADK                            R19 K56 ["AbilitiesSectionControllerModeLegacySubText"]
      546 NAMECALL                         R16 R1 K20 ["getText"]
      548 CALL                             R16 3 1
      549 SETTABLEKS                       R16 R15 K53 ["subText"]
      551 CALL                             R13 2 1
      552 SETTABLEKS                       R13 R12 K36 ["CharacterControllerModeSelector"]
      554 MOVE                             R13 R7
      555 JUMPIFNOT                        R13 ; [+26]
      556 GETUPVAL                         R13 6
      557 GETUPVAL                         R14 9
      558 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      559 MOVE                             R16 R3
      560 CALL                             R16 0 1
      561 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      563 GETTABLEKS                       R16 R5 K73 ["defaultAbilitiesEnableRunningSetting"]
      565 GETTABLEKS                       R16 R16 K8 ["value"]
      567 SETTABLEKS                       R16 R15 K58 ["Checked"]
      569 LOADK                            R18 K18 ["MovementSettings"]
      570 LOADK                            R19 K74 ["DefaultAbilitiesSectionEnableRunning"]
      571 NAMECALL                         R16 R1 K20 ["getText"]
      573 CALL                             R16 3 1
      574 SETTABLEKS                       R16 R15 K59 ["Text"]
      576 NEWCLOSURE                       R16 P14
      577 CAPTURE                          VAL R5
      578 CAPTURE                          VAL R2
      579 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      581 CALL                             R13 2 1
      582 SETTABLEKS                       R13 R12 K44 ["EnableRunningCheckbox"]
      584 MOVE                             R13 R7
      585 JUMPIFNOT                        R13 ; [+26]
      586 GETUPVAL                         R13 6
      587 GETUPVAL                         R14 9
      588 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      589 MOVE                             R16 R3
      590 CALL                             R16 0 1
      591 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      593 GETTABLEKS                       R16 R5 K70 ["defaultAbilitiesEnableJumpingSetting"]
      595 GETTABLEKS                       R16 R16 K8 ["value"]
      597 SETTABLEKS                       R16 R15 K58 ["Checked"]
      599 LOADK                            R18 K18 ["MovementSettings"]
      600 LOADK                            R19 K71 ["DefaultAbilitiesSectionEnableJumping"]
      601 NAMECALL                         R16 R1 K20 ["getText"]
      603 CALL                             R16 3 1
      604 SETTABLEKS                       R16 R15 K59 ["Text"]
      606 NEWCLOSURE                       R16 P15
      607 CAPTURE                          VAL R5
      608 CAPTURE                          VAL R2
      609 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      611 CALL                             R13 2 1
      612 SETTABLEKS                       R13 R12 K42 ["EnableJumpingCheckbox"]
      614 MOVE                             R13 R7
      615 JUMPIFNOT                        R13 ; [+26]
      616 GETUPVAL                         R13 6
      617 GETUPVAL                         R14 9
      618 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      619 MOVE                             R16 R3
      620 CALL                             R16 0 1
      621 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      623 GETTABLEKS                       R16 R5 K75 ["defaultAbilitiesEnableSittingSetting"]
      625 GETTABLEKS                       R16 R16 K8 ["value"]
      627 SETTABLEKS                       R16 R15 K58 ["Checked"]
      629 LOADK                            R18 K18 ["MovementSettings"]
      630 LOADK                            R19 K76 ["DefaultAbilitiesSectionEnableSitting"]
      631 NAMECALL                         R16 R1 K20 ["getText"]
      633 CALL                             R16 3 1
      634 SETTABLEKS                       R16 R15 K59 ["Text"]
      636 NEWCLOSURE                       R16 P16
      637 CAPTURE                          VAL R5
      638 CAPTURE                          VAL R2
      639 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      641 CALL                             R13 2 1
      642 SETTABLEKS                       R13 R12 K45 ["EnableSittingCheckbox"]
      644 MOVE                             R13 R7
      645 JUMPIFNOT                        R13 ; [+26]
      646 GETUPVAL                         R13 6
      647 GETUPVAL                         R14 9
      648 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      649 MOVE                             R16 R3
      650 CALL                             R16 0 1
      651 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      653 GETTABLEKS                       R16 R5 K65 ["defaultAbilitiesEnableFallingDownSetting"]
      655 GETTABLEKS                       R16 R16 K8 ["value"]
      657 SETTABLEKS                       R16 R15 K58 ["Checked"]
      659 LOADK                            R18 K18 ["MovementSettings"]
      660 LOADK                            R19 K66 ["DefaultAbilitiesSectionEnableFallingDown"]
      661 NAMECALL                         R16 R1 K20 ["getText"]
      663 CALL                             R16 3 1
      664 SETTABLEKS                       R16 R15 K59 ["Text"]
      666 NEWCLOSURE                       R16 P17
      667 CAPTURE                          VAL R5
      668 CAPTURE                          VAL R2
      669 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      671 CALL                             R13 2 1
      672 SETTABLEKS                       R13 R12 K39 ["EnableFallingDownCheckbox"]
      674 MOVE                             R13 R7
      675 JUMPIFNOT                        R13 ; [+26]
      676 GETUPVAL                         R13 6
      677 GETUPVAL                         R14 9
      678 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      679 MOVE                             R16 R3
      680 CALL                             R16 0 1
      681 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      683 GETTABLEKS                       R16 R5 K67 ["defaultAbilitiesEnableGettingUpSetting"]
      685 GETTABLEKS                       R16 R16 K8 ["value"]
      687 SETTABLEKS                       R16 R15 K58 ["Checked"]
      689 LOADK                            R18 K18 ["MovementSettings"]
      690 LOADK                            R19 K68 ["DefaultAbilitiesSectionEnableGettingUp"]
      691 NAMECALL                         R16 R1 K20 ["getText"]
      693 CALL                             R16 3 1
      694 SETTABLEKS                       R16 R15 K59 ["Text"]
      696 NEWCLOSURE                       R16 P18
      697 CAPTURE                          VAL R5
      698 CAPTURE                          VAL R2
      699 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      701 CALL                             R13 2 1
      702 SETTABLEKS                       R13 R12 K40 ["EnableGettingUpCheckbox"]
      704 MOVE                             R13 R7
      705 JUMPIFNOT                        R13 ; [+26]
      706 GETUPVAL                         R13 6
      707 GETUPVAL                         R14 9
      708 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      709 MOVE                             R16 R3
      710 CALL                             R16 0 1
      711 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      713 GETTABLEKS                       R16 R5 K62 ["defaultAbilitiesEnableClimbingSetting"]
      715 GETTABLEKS                       R16 R16 K8 ["value"]
      717 SETTABLEKS                       R16 R15 K58 ["Checked"]
      719 LOADK                            R18 K18 ["MovementSettings"]
      720 LOADK                            R19 K63 ["DefaultAbilitiesSectionEnableClimbing"]
      721 NAMECALL                         R16 R1 K20 ["getText"]
      723 CALL                             R16 3 1
      724 SETTABLEKS                       R16 R15 K59 ["Text"]
      726 NEWCLOSURE                       R16 P19
      727 CAPTURE                          VAL R5
      728 CAPTURE                          VAL R2
      729 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      731 CALL                             R13 2 1
      732 SETTABLEKS                       R13 R12 K37 ["EnableClimbingCheckbox"]
      734 MOVE                             R13 R7
      735 JUMPIFNOT                        R13 ; [+26]
      736 GETUPVAL                         R13 6
      737 GETUPVAL                         R14 9
      738 DUPTABLE                         R15 K61 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      739 MOVE                             R16 R3
      740 CALL                             R16 0 1
      741 SETTABLEKS                       R16 R15 K57 ["LayoutOrder"]
      743 GETTABLEKS                       R16 R5 K79 ["defaultAbilitiesEnableSwimmingSetting"]
      745 GETTABLEKS                       R16 R16 K8 ["value"]
      747 SETTABLEKS                       R16 R15 K58 ["Checked"]
      749 LOADK                            R18 K18 ["MovementSettings"]
      750 LOADK                            R19 K80 ["DefaultAbilitiesSectionEnableSwimming"]
      751 NAMECALL                         R16 R1 K20 ["getText"]
      753 CALL                             R16 3 1
      754 SETTABLEKS                       R16 R15 K59 ["Text"]
      756 NEWCLOSURE                       R16 P20
      757 CAPTURE                          VAL R5
      758 CAPTURE                          VAL R2
      759 SETTABLEKS                       R16 R15 K60 ["OnClick"]
      761 CALL                             R13 2 1
      762 SETTABLEKS                       R13 R12 K48 ["EnableSwimmingCheckbox"]
      764 CALL                             R9 3 -1
      765 RETURN                           R9 -1

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
       89 DUPCLOSURE                       R15 K27 [PROTO_21]
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
