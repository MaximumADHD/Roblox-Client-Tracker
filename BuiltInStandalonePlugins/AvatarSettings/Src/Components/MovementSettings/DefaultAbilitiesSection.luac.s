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
       71 JUMPIFNOT                        R9 ; [+442]
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
      114 DUPTABLE                         R16 K35 [{"text", "layoutOrder", "showWarning"}]
      115 LOADK                            R19 K18 ["MovementSettings"]
      116 LOADK                            R20 K36 ["DefaultAbilitiesSection"]
      117 NAMECALL                         R17 R1 K20 ["getText"]
      119 CALL                             R17 3 1
      120 SETTABLEKS                       R17 R16 K32 ["text"]
      122 GETTABLEKS                       R17 R0 K33 ["layoutOrder"]
      124 SETTABLEKS                       R17 R16 K33 ["layoutOrder"]
      126 GETUPVAL                         R18 8
      127 CALL                             R18 0 1
      128 NOT                              R17 R18
      129 SETTABLEKS                       R17 R16 K34 ["showWarning"]
      131 DUPTABLE                         R17 K50 [{"CharacterControllerModeSelector", "EnableClimbingCheckbox", "EnableCrouchingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableHoldingCheckbox", "EnableJumpingCheckbox", "EnableReachingCheckbox", "EnableRunningCheckbox", "EnableSittingCheckbox", "EnableSprintingCheckbox", "EnableStrafingCheckbox", "EnableSwimmingCheckbox"}]
      132 GETUPVAL                         R18 6
      133 GETUPVAL                         R19 9
      134 DUPTABLE                         R20 K55 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      135 MOVE                             R21 R3
      136 CALL                             R21 0 1
      137 SETTABLEKS                       R21 R20 K33 ["layoutOrder"]
      139 SETTABLEKS                       R8 R20 K51 ["items"]
      141 SETTABLEKS                       R6 R20 K52 ["selected"]
      143 NEWCLOSURE                       R21 P0
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R5
      147 SETTABLEKS                       R21 R20 K53 ["onItemActivated"]
      149 LOADK                            R23 K18 ["MovementSettings"]
      150 JUMPIFNOT                        R7 ; [+2]
      151 LOADK                            R24 K56 ["AbilitiesSectionControllerModeLuaSubText"]
      152 JUMP                             ; [+1]
      153 LOADK                            R24 K57 ["AbilitiesSectionControllerModeLegacySubText"]
      154 NAMECALL                         R21 R1 K20 ["getText"]
      156 CALL                             R21 3 1
      157 SETTABLEKS                       R21 R20 K54 ["subText"]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K37 ["CharacterControllerModeSelector"]
      162 MOVE                             R18 R7
      163 JUMPIFNOT                        R18 ; [+26]
      164 GETUPVAL                         R18 6
      165 GETUPVAL                         R19 10
      166 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      167 MOVE                             R21 R3
      168 CALL                             R21 0 1
      169 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      171 GETTABLEKS                       R21 R5 K63 ["defaultAbilitiesEnableClimbingSetting"]
      173 GETTABLEKS                       R21 R21 K8 ["value"]
      175 SETTABLEKS                       R21 R20 K59 ["Checked"]
      177 LOADK                            R23 K18 ["MovementSettings"]
      178 LOADK                            R24 K64 ["DefaultAbilitiesSectionEnableClimbing"]
      179 NAMECALL                         R21 R1 K20 ["getText"]
      181 CALL                             R21 3 1
      182 SETTABLEKS                       R21 R20 K60 ["Text"]
      184 NEWCLOSURE                       R21 P1
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R2
      187 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K38 ["EnableClimbingCheckbox"]
      192 MOVE                             R18 R7
      193 JUMPIFNOT                        R18 ; [+24]
      194 GETUPVAL                         R18 6
      195 GETUPVAL                         R19 10
      196 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      197 MOVE                             R21 R3
      198 CALL                             R21 0 1
      199 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      201 GETTABLEKS                       R21 R9 K8 ["value"]
      203 SETTABLEKS                       R21 R20 K59 ["Checked"]
      205 LOADK                            R23 K18 ["MovementSettings"]
      206 LOADK                            R24 K65 ["DefaultAbilitiesSectionEnableCrouching"]
      207 NAMECALL                         R21 R1 K20 ["getText"]
      209 CALL                             R21 3 1
      210 SETTABLEKS                       R21 R20 K60 ["Text"]
      212 NEWCLOSURE                       R21 P2
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R2
      215 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      217 CALL                             R18 2 1
      218 SETTABLEKS                       R18 R17 K39 ["EnableCrouchingCheckbox"]
      220 MOVE                             R18 R7
      221 JUMPIFNOT                        R18 ; [+26]
      222 GETUPVAL                         R18 6
      223 GETUPVAL                         R19 10
      224 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      225 MOVE                             R21 R3
      226 CALL                             R21 0 1
      227 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      229 GETTABLEKS                       R21 R5 K66 ["defaultAbilitiesEnableFallingDownSetting"]
      231 GETTABLEKS                       R21 R21 K8 ["value"]
      233 SETTABLEKS                       R21 R20 K59 ["Checked"]
      235 LOADK                            R23 K18 ["MovementSettings"]
      236 LOADK                            R24 K67 ["DefaultAbilitiesSectionEnableFallingDown"]
      237 NAMECALL                         R21 R1 K20 ["getText"]
      239 CALL                             R21 3 1
      240 SETTABLEKS                       R21 R20 K60 ["Text"]
      242 NEWCLOSURE                       R21 P3
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R2
      245 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      247 CALL                             R18 2 1
      248 SETTABLEKS                       R18 R17 K40 ["EnableFallingDownCheckbox"]
      250 MOVE                             R18 R7
      251 JUMPIFNOT                        R18 ; [+26]
      252 GETUPVAL                         R18 6
      253 GETUPVAL                         R19 10
      254 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      255 MOVE                             R21 R3
      256 CALL                             R21 0 1
      257 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      259 GETTABLEKS                       R21 R5 K68 ["defaultAbilitiesEnableGettingUpSetting"]
      261 GETTABLEKS                       R21 R21 K8 ["value"]
      263 SETTABLEKS                       R21 R20 K59 ["Checked"]
      265 LOADK                            R23 K18 ["MovementSettings"]
      266 LOADK                            R24 K69 ["DefaultAbilitiesSectionEnableGettingUp"]
      267 NAMECALL                         R21 R1 K20 ["getText"]
      269 CALL                             R21 3 1
      270 SETTABLEKS                       R21 R20 K60 ["Text"]
      272 NEWCLOSURE                       R21 P4
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R2
      275 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      277 CALL                             R18 2 1
      278 SETTABLEKS                       R18 R17 K41 ["EnableGettingUpCheckbox"]
      280 MOVE                             R18 R7
      281 JUMPIFNOT                        R18 ; [+24]
      282 GETUPVAL                         R18 6
      283 GETUPVAL                         R19 10
      284 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      285 MOVE                             R21 R3
      286 CALL                             R21 0 1
      287 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      289 GETTABLEKS                       R21 R10 K8 ["value"]
      291 SETTABLEKS                       R21 R20 K59 ["Checked"]
      293 LOADK                            R23 K18 ["MovementSettings"]
      294 LOADK                            R24 K70 ["DefaultAbilitiesSectionEnableHolding"]
      295 NAMECALL                         R21 R1 K20 ["getText"]
      297 CALL                             R21 3 1
      298 SETTABLEKS                       R21 R20 K60 ["Text"]
      300 NEWCLOSURE                       R21 P5
      301 CAPTURE                          VAL R10
      302 CAPTURE                          VAL R2
      303 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      305 CALL                             R18 2 1
      306 SETTABLEKS                       R18 R17 K42 ["EnableHoldingCheckbox"]
      308 MOVE                             R18 R7
      309 JUMPIFNOT                        R18 ; [+26]
      310 GETUPVAL                         R18 6
      311 GETUPVAL                         R19 10
      312 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      313 MOVE                             R21 R3
      314 CALL                             R21 0 1
      315 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      317 GETTABLEKS                       R21 R5 K71 ["defaultAbilitiesEnableJumpingSetting"]
      319 GETTABLEKS                       R21 R21 K8 ["value"]
      321 SETTABLEKS                       R21 R20 K59 ["Checked"]
      323 LOADK                            R23 K18 ["MovementSettings"]
      324 LOADK                            R24 K72 ["DefaultAbilitiesSectionEnableJumping"]
      325 NAMECALL                         R21 R1 K20 ["getText"]
      327 CALL                             R21 3 1
      328 SETTABLEKS                       R21 R20 K60 ["Text"]
      330 NEWCLOSURE                       R21 P6
      331 CAPTURE                          VAL R5
      332 CAPTURE                          VAL R2
      333 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      335 CALL                             R18 2 1
      336 SETTABLEKS                       R18 R17 K43 ["EnableJumpingCheckbox"]
      338 MOVE                             R18 R7
      339 JUMPIFNOT                        R18 ; [+24]
      340 GETUPVAL                         R18 6
      341 GETUPVAL                         R19 10
      342 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      343 MOVE                             R21 R3
      344 CALL                             R21 0 1
      345 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      347 GETTABLEKS                       R21 R11 K8 ["value"]
      349 SETTABLEKS                       R21 R20 K59 ["Checked"]
      351 LOADK                            R23 K18 ["MovementSettings"]
      352 LOADK                            R24 K73 ["DefaultAbilitiesSectionEnableReaching"]
      353 NAMECALL                         R21 R1 K20 ["getText"]
      355 CALL                             R21 3 1
      356 SETTABLEKS                       R21 R20 K60 ["Text"]
      358 NEWCLOSURE                       R21 P7
      359 CAPTURE                          VAL R11
      360 CAPTURE                          VAL R2
      361 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      363 CALL                             R18 2 1
      364 SETTABLEKS                       R18 R17 K44 ["EnableReachingCheckbox"]
      366 MOVE                             R18 R7
      367 JUMPIFNOT                        R18 ; [+26]
      368 GETUPVAL                         R18 6
      369 GETUPVAL                         R19 10
      370 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      371 MOVE                             R21 R3
      372 CALL                             R21 0 1
      373 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      375 GETTABLEKS                       R21 R5 K74 ["defaultAbilitiesEnableRunningSetting"]
      377 GETTABLEKS                       R21 R21 K8 ["value"]
      379 SETTABLEKS                       R21 R20 K59 ["Checked"]
      381 LOADK                            R23 K18 ["MovementSettings"]
      382 LOADK                            R24 K75 ["DefaultAbilitiesSectionEnableRunning"]
      383 NAMECALL                         R21 R1 K20 ["getText"]
      385 CALL                             R21 3 1
      386 SETTABLEKS                       R21 R20 K60 ["Text"]
      388 NEWCLOSURE                       R21 P8
      389 CAPTURE                          VAL R5
      390 CAPTURE                          VAL R2
      391 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      393 CALL                             R18 2 1
      394 SETTABLEKS                       R18 R17 K45 ["EnableRunningCheckbox"]
      396 MOVE                             R18 R7
      397 JUMPIFNOT                        R18 ; [+26]
      398 GETUPVAL                         R18 6
      399 GETUPVAL                         R19 10
      400 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      401 MOVE                             R21 R3
      402 CALL                             R21 0 1
      403 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      405 GETTABLEKS                       R21 R5 K76 ["defaultAbilitiesEnableSittingSetting"]
      407 GETTABLEKS                       R21 R21 K8 ["value"]
      409 SETTABLEKS                       R21 R20 K59 ["Checked"]
      411 LOADK                            R23 K18 ["MovementSettings"]
      412 LOADK                            R24 K77 ["DefaultAbilitiesSectionEnableSitting"]
      413 NAMECALL                         R21 R1 K20 ["getText"]
      415 CALL                             R21 3 1
      416 SETTABLEKS                       R21 R20 K60 ["Text"]
      418 NEWCLOSURE                       R21 P9
      419 CAPTURE                          VAL R5
      420 CAPTURE                          VAL R2
      421 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      423 CALL                             R18 2 1
      424 SETTABLEKS                       R18 R17 K46 ["EnableSittingCheckbox"]
      426 MOVE                             R18 R7
      427 JUMPIFNOT                        R18 ; [+24]
      428 GETUPVAL                         R18 6
      429 GETUPVAL                         R19 10
      430 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      431 MOVE                             R21 R3
      432 CALL                             R21 0 1
      433 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      435 GETTABLEKS                       R21 R12 K8 ["value"]
      437 SETTABLEKS                       R21 R20 K59 ["Checked"]
      439 LOADK                            R23 K18 ["MovementSettings"]
      440 LOADK                            R24 K78 ["DefaultAbilitiesSectionEnableSprinting"]
      441 NAMECALL                         R21 R1 K20 ["getText"]
      443 CALL                             R21 3 1
      444 SETTABLEKS                       R21 R20 K60 ["Text"]
      446 NEWCLOSURE                       R21 P10
      447 CAPTURE                          VAL R12
      448 CAPTURE                          VAL R2
      449 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      451 CALL                             R18 2 1
      452 SETTABLEKS                       R18 R17 K47 ["EnableSprintingCheckbox"]
      454 MOVE                             R18 R7
      455 JUMPIFNOT                        R18 ; [+24]
      456 GETUPVAL                         R18 6
      457 GETUPVAL                         R19 10
      458 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      459 MOVE                             R21 R3
      460 CALL                             R21 0 1
      461 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      463 GETTABLEKS                       R21 R13 K8 ["value"]
      465 SETTABLEKS                       R21 R20 K59 ["Checked"]
      467 LOADK                            R23 K18 ["MovementSettings"]
      468 LOADK                            R24 K79 ["DefaultAbilitiesSectionEnableStrafing"]
      469 NAMECALL                         R21 R1 K20 ["getText"]
      471 CALL                             R21 3 1
      472 SETTABLEKS                       R21 R20 K60 ["Text"]
      474 NEWCLOSURE                       R21 P11
      475 CAPTURE                          VAL R13
      476 CAPTURE                          VAL R2
      477 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      479 CALL                             R18 2 1
      480 SETTABLEKS                       R18 R17 K48 ["EnableStrafingCheckbox"]
      482 MOVE                             R18 R7
      483 JUMPIFNOT                        R18 ; [+26]
      484 GETUPVAL                         R18 6
      485 GETUPVAL                         R19 10
      486 DUPTABLE                         R20 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      487 MOVE                             R21 R3
      488 CALL                             R21 0 1
      489 SETTABLEKS                       R21 R20 K58 ["LayoutOrder"]
      491 GETTABLEKS                       R21 R5 K80 ["defaultAbilitiesEnableSwimmingSetting"]
      493 GETTABLEKS                       R21 R21 K8 ["value"]
      495 SETTABLEKS                       R21 R20 K59 ["Checked"]
      497 LOADK                            R23 K18 ["MovementSettings"]
      498 LOADK                            R24 K81 ["DefaultAbilitiesSectionEnableSwimming"]
      499 NAMECALL                         R21 R1 K20 ["getText"]
      501 CALL                             R21 3 1
      502 SETTABLEKS                       R21 R20 K60 ["Text"]
      504 NEWCLOSURE                       R21 P12
      505 CAPTURE                          VAL R5
      506 CAPTURE                          VAL R2
      507 SETTABLEKS                       R21 R20 K61 ["OnClick"]
      509 CALL                             R18 2 1
      510 SETTABLEKS                       R18 R17 K49 ["EnableSwimmingCheckbox"]
      512 CALL                             R14 3 -1
      513 RETURN                           R14 -1
      514 GETUPVAL                         R9 6
      515 GETUPVAL                         R10 7
      516 DUPTABLE                         R11 K35 [{"text", "layoutOrder", "showWarning"}]
      517 LOADK                            R14 K18 ["MovementSettings"]
      518 LOADK                            R15 K36 ["DefaultAbilitiesSection"]
      519 NAMECALL                         R12 R1 K20 ["getText"]
      521 CALL                             R12 3 1
      522 SETTABLEKS                       R12 R11 K32 ["text"]
      524 GETTABLEKS                       R12 R0 K33 ["layoutOrder"]
      526 SETTABLEKS                       R12 R11 K33 ["layoutOrder"]
      528 GETUPVAL                         R13 8
      529 CALL                             R13 0 1
      530 NOT                              R12 R13
      531 SETTABLEKS                       R12 R11 K34 ["showWarning"]
      533 DUPTABLE                         R12 K82 [{"CharacterControllerModeSelector", "EnableRunningCheckbox", "EnableJumpingCheckbox", "EnableSittingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableClimbingCheckbox", "EnableSwimmingCheckbox"}]
      534 GETUPVAL                         R13 6
      535 GETUPVAL                         R14 9
      536 DUPTABLE                         R15 K55 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      537 MOVE                             R16 R3
      538 CALL                             R16 0 1
      539 SETTABLEKS                       R16 R15 K33 ["layoutOrder"]
      541 SETTABLEKS                       R8 R15 K51 ["items"]
      543 SETTABLEKS                       R6 R15 K52 ["selected"]
      545 NEWCLOSURE                       R16 P13
      546 CAPTURE                          VAL R6
      547 CAPTURE                          VAL R2
      548 CAPTURE                          VAL R5
      549 SETTABLEKS                       R16 R15 K53 ["onItemActivated"]
      551 LOADK                            R18 K18 ["MovementSettings"]
      552 JUMPIFNOT                        R7 ; [+2]
      553 LOADK                            R19 K56 ["AbilitiesSectionControllerModeLuaSubText"]
      554 JUMP                             ; [+1]
      555 LOADK                            R19 K57 ["AbilitiesSectionControllerModeLegacySubText"]
      556 NAMECALL                         R16 R1 K20 ["getText"]
      558 CALL                             R16 3 1
      559 SETTABLEKS                       R16 R15 K54 ["subText"]
      561 CALL                             R13 2 1
      562 SETTABLEKS                       R13 R12 K37 ["CharacterControllerModeSelector"]
      564 MOVE                             R13 R7
      565 JUMPIFNOT                        R13 ; [+26]
      566 GETUPVAL                         R13 6
      567 GETUPVAL                         R14 10
      568 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      569 MOVE                             R16 R3
      570 CALL                             R16 0 1
      571 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      573 GETTABLEKS                       R16 R5 K74 ["defaultAbilitiesEnableRunningSetting"]
      575 GETTABLEKS                       R16 R16 K8 ["value"]
      577 SETTABLEKS                       R16 R15 K59 ["Checked"]
      579 LOADK                            R18 K18 ["MovementSettings"]
      580 LOADK                            R19 K75 ["DefaultAbilitiesSectionEnableRunning"]
      581 NAMECALL                         R16 R1 K20 ["getText"]
      583 CALL                             R16 3 1
      584 SETTABLEKS                       R16 R15 K60 ["Text"]
      586 NEWCLOSURE                       R16 P14
      587 CAPTURE                          VAL R5
      588 CAPTURE                          VAL R2
      589 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      591 CALL                             R13 2 1
      592 SETTABLEKS                       R13 R12 K45 ["EnableRunningCheckbox"]
      594 MOVE                             R13 R7
      595 JUMPIFNOT                        R13 ; [+26]
      596 GETUPVAL                         R13 6
      597 GETUPVAL                         R14 10
      598 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      599 MOVE                             R16 R3
      600 CALL                             R16 0 1
      601 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      603 GETTABLEKS                       R16 R5 K71 ["defaultAbilitiesEnableJumpingSetting"]
      605 GETTABLEKS                       R16 R16 K8 ["value"]
      607 SETTABLEKS                       R16 R15 K59 ["Checked"]
      609 LOADK                            R18 K18 ["MovementSettings"]
      610 LOADK                            R19 K72 ["DefaultAbilitiesSectionEnableJumping"]
      611 NAMECALL                         R16 R1 K20 ["getText"]
      613 CALL                             R16 3 1
      614 SETTABLEKS                       R16 R15 K60 ["Text"]
      616 NEWCLOSURE                       R16 P15
      617 CAPTURE                          VAL R5
      618 CAPTURE                          VAL R2
      619 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      621 CALL                             R13 2 1
      622 SETTABLEKS                       R13 R12 K43 ["EnableJumpingCheckbox"]
      624 MOVE                             R13 R7
      625 JUMPIFNOT                        R13 ; [+26]
      626 GETUPVAL                         R13 6
      627 GETUPVAL                         R14 10
      628 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      629 MOVE                             R16 R3
      630 CALL                             R16 0 1
      631 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      633 GETTABLEKS                       R16 R5 K76 ["defaultAbilitiesEnableSittingSetting"]
      635 GETTABLEKS                       R16 R16 K8 ["value"]
      637 SETTABLEKS                       R16 R15 K59 ["Checked"]
      639 LOADK                            R18 K18 ["MovementSettings"]
      640 LOADK                            R19 K77 ["DefaultAbilitiesSectionEnableSitting"]
      641 NAMECALL                         R16 R1 K20 ["getText"]
      643 CALL                             R16 3 1
      644 SETTABLEKS                       R16 R15 K60 ["Text"]
      646 NEWCLOSURE                       R16 P16
      647 CAPTURE                          VAL R5
      648 CAPTURE                          VAL R2
      649 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      651 CALL                             R13 2 1
      652 SETTABLEKS                       R13 R12 K46 ["EnableSittingCheckbox"]
      654 MOVE                             R13 R7
      655 JUMPIFNOT                        R13 ; [+26]
      656 GETUPVAL                         R13 6
      657 GETUPVAL                         R14 10
      658 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      659 MOVE                             R16 R3
      660 CALL                             R16 0 1
      661 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      663 GETTABLEKS                       R16 R5 K66 ["defaultAbilitiesEnableFallingDownSetting"]
      665 GETTABLEKS                       R16 R16 K8 ["value"]
      667 SETTABLEKS                       R16 R15 K59 ["Checked"]
      669 LOADK                            R18 K18 ["MovementSettings"]
      670 LOADK                            R19 K67 ["DefaultAbilitiesSectionEnableFallingDown"]
      671 NAMECALL                         R16 R1 K20 ["getText"]
      673 CALL                             R16 3 1
      674 SETTABLEKS                       R16 R15 K60 ["Text"]
      676 NEWCLOSURE                       R16 P17
      677 CAPTURE                          VAL R5
      678 CAPTURE                          VAL R2
      679 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      681 CALL                             R13 2 1
      682 SETTABLEKS                       R13 R12 K40 ["EnableFallingDownCheckbox"]
      684 MOVE                             R13 R7
      685 JUMPIFNOT                        R13 ; [+26]
      686 GETUPVAL                         R13 6
      687 GETUPVAL                         R14 10
      688 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      689 MOVE                             R16 R3
      690 CALL                             R16 0 1
      691 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      693 GETTABLEKS                       R16 R5 K68 ["defaultAbilitiesEnableGettingUpSetting"]
      695 GETTABLEKS                       R16 R16 K8 ["value"]
      697 SETTABLEKS                       R16 R15 K59 ["Checked"]
      699 LOADK                            R18 K18 ["MovementSettings"]
      700 LOADK                            R19 K69 ["DefaultAbilitiesSectionEnableGettingUp"]
      701 NAMECALL                         R16 R1 K20 ["getText"]
      703 CALL                             R16 3 1
      704 SETTABLEKS                       R16 R15 K60 ["Text"]
      706 NEWCLOSURE                       R16 P18
      707 CAPTURE                          VAL R5
      708 CAPTURE                          VAL R2
      709 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      711 CALL                             R13 2 1
      712 SETTABLEKS                       R13 R12 K41 ["EnableGettingUpCheckbox"]
      714 MOVE                             R13 R7
      715 JUMPIFNOT                        R13 ; [+26]
      716 GETUPVAL                         R13 6
      717 GETUPVAL                         R14 10
      718 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      719 MOVE                             R16 R3
      720 CALL                             R16 0 1
      721 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      723 GETTABLEKS                       R16 R5 K63 ["defaultAbilitiesEnableClimbingSetting"]
      725 GETTABLEKS                       R16 R16 K8 ["value"]
      727 SETTABLEKS                       R16 R15 K59 ["Checked"]
      729 LOADK                            R18 K18 ["MovementSettings"]
      730 LOADK                            R19 K64 ["DefaultAbilitiesSectionEnableClimbing"]
      731 NAMECALL                         R16 R1 K20 ["getText"]
      733 CALL                             R16 3 1
      734 SETTABLEKS                       R16 R15 K60 ["Text"]
      736 NEWCLOSURE                       R16 P19
      737 CAPTURE                          VAL R5
      738 CAPTURE                          VAL R2
      739 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      741 CALL                             R13 2 1
      742 SETTABLEKS                       R13 R12 K38 ["EnableClimbingCheckbox"]
      744 MOVE                             R13 R7
      745 JUMPIFNOT                        R13 ; [+26]
      746 GETUPVAL                         R13 6
      747 GETUPVAL                         R14 10
      748 DUPTABLE                         R15 K62 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      749 MOVE                             R16 R3
      750 CALL                             R16 0 1
      751 SETTABLEKS                       R16 R15 K58 ["LayoutOrder"]
      753 GETTABLEKS                       R16 R5 K80 ["defaultAbilitiesEnableSwimmingSetting"]
      755 GETTABLEKS                       R16 R16 K8 ["value"]
      757 SETTABLEKS                       R16 R15 K59 ["Checked"]
      759 LOADK                            R18 K18 ["MovementSettings"]
      760 LOADK                            R19 K81 ["DefaultAbilitiesSectionEnableSwimming"]
      761 NAMECALL                         R16 R1 K20 ["getText"]
      763 CALL                             R16 3 1
      764 SETTABLEKS                       R16 R15 K60 ["Text"]
      766 NEWCLOSURE                       R16 P20
      767 CAPTURE                          VAL R5
      768 CAPTURE                          VAL R2
      769 SETTABLEKS                       R16 R15 K61 ["OnClick"]
      771 CALL                             R13 2 1
      772 SETTABLEKS                       R13 R12 K49 ["EnableSwimmingCheckbox"]
      774 CALL                             R9 3 -1
      775 RETURN                           R9 -1

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
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Src"]
       85 GETTABLEKS                       R12 R12 K21 ["Flags"]
       87 GETTABLEKS                       R12 R12 K23 ["getFFlagAvatarSettingsEnableAbilitiesR6"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R6 K24 ["createNextOrder"]
       92 GETTABLEKS                       R13 R5 K25 ["createElement"]
       94 GETTABLEKS                       R14 R3 K26 ["UI"]
       96 GETTABLEKS                       R15 R14 K27 ["Checkbox"]
       98 DUPCLOSURE                       R16 K28 [PROTO_21]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R15
      110 RETURN                           R16 1
