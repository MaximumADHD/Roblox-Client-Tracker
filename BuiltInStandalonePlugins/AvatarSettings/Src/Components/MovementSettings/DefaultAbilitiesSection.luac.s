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
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AbilityTurningToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

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
       71 JUMPIF                           R9 ; [+6]
       72 GETUPVAL                         R9 6
       73 CALL                             R9 0 1
       74 JUMPIF                           R9 ; [+3]
       75 GETUPVAL                         R9 7
       76 CALL                             R9 0 1
       77 JUMPIFNOT                        R9 ; [+453]
       78 DUPTABLE                         R9 K24 [{"CharacterControllerModeSelector", "EnableClimbingCheckbox"}]
       79 GETUPVAL                         R10 8
       80 GETUPVAL                         R11 9
       81 DUPTABLE                         R12 K30 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       82 MOVE                             R13 R3
       83 CALL                             R13 0 1
       84 SETTABLEKS                       R13 R12 K25 ["layoutOrder"]
       86 SETTABLEKS                       R8 R12 K26 ["items"]
       88 SETTABLEKS                       R6 R12 K27 ["selected"]
       90 NEWCLOSURE                       R13 P0
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R13 R12 K28 ["onItemActivated"]
       96 LOADK                            R15 K18 ["MovementSettings"]
       97 JUMPIFNOT                        R7 ; [+2]
       98 LOADK                            R16 K31 ["AbilitiesSectionControllerModeLuaSubText"]
       99 JUMP                             ; [+1]
      100 LOADK                            R16 K32 ["AbilitiesSectionControllerModeLegacySubText"]
      101 NAMECALL                         R13 R1 K20 ["getText"]
      103 CALL                             R13 3 1
      104 SETTABLEKS                       R13 R12 K29 ["subText"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K22 ["CharacterControllerModeSelector"]
      109 MOVE                             R10 R7
      110 JUMPIFNOT                        R10 ; [+26]
      111 GETUPVAL                         R10 8
      112 GETUPVAL                         R11 10
      113 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      114 MOVE                             R13 R3
      115 CALL                             R13 0 1
      116 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      118 GETTABLEKS                       R13 R5 K38 ["defaultAbilitiesEnableClimbingSetting"]
      120 GETTABLEKS                       R13 R13 K8 ["value"]
      122 SETTABLEKS                       R13 R12 K34 ["Checked"]
      124 LOADK                            R15 K18 ["MovementSettings"]
      125 LOADK                            R16 K39 ["DefaultAbilitiesSectionEnableClimbing"]
      126 NAMECALL                         R13 R1 K20 ["getText"]
      128 CALL                             R13 3 1
      129 SETTABLEKS                       R13 R12 K35 ["Text"]
      131 NEWCLOSURE                       R13 P1
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      136 CALL                             R10 2 1
      137 SETTABLEKS                       R10 R9 K23 ["EnableClimbingCheckbox"]
      139 GETUPVAL                         R10 6
      140 CALL                             R10 0 1
      141 JUMPIFNOT                        R10 ; [+36]
      142 GETTABLEKS                       R11 R5 K40 ["defaultAbilitiesEnableCrouchingSetting"]
      144 FASTCALL2K                       ASSERT R11 K41 ; [+4]
      146 LOADK                            R12 K41 ["Expected crouching setting"]
      147 GETIMPORT                        R10 K5 [assert]
      149 CALL                             R10 2 1
      150 MOVE                             R11 R7
      151 JUMPIFNOT                        R11 ; [+24]
      152 GETUPVAL                         R11 8
      153 GETUPVAL                         R12 10
      154 DUPTABLE                         R13 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      155 MOVE                             R14 R3
      156 CALL                             R14 0 1
      157 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      159 GETTABLEKS                       R14 R10 K8 ["value"]
      161 SETTABLEKS                       R14 R13 K34 ["Checked"]
      163 LOADK                            R16 K18 ["MovementSettings"]
      164 LOADK                            R17 K42 ["DefaultAbilitiesSectionEnableCrouching"]
      165 NAMECALL                         R14 R1 K20 ["getText"]
      167 CALL                             R14 3 1
      168 SETTABLEKS                       R14 R13 K35 ["Text"]
      170 NEWCLOSURE                       R14 P2
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R2
      173 SETTABLEKS                       R14 R13 K36 ["OnClick"]
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R9 K43 ["EnableCrouchingCheckbox"]
      178 MOVE                             R10 R7
      179 JUMPIFNOT                        R10 ; [+26]
      180 GETUPVAL                         R10 8
      181 GETUPVAL                         R11 10
      182 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      183 MOVE                             R13 R3
      184 CALL                             R13 0 1
      185 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      187 GETTABLEKS                       R13 R5 K44 ["defaultAbilitiesEnableFallingDownSetting"]
      189 GETTABLEKS                       R13 R13 K8 ["value"]
      191 SETTABLEKS                       R13 R12 K34 ["Checked"]
      193 LOADK                            R15 K18 ["MovementSettings"]
      194 LOADK                            R16 K45 ["DefaultAbilitiesSectionEnableFallingDown"]
      195 NAMECALL                         R13 R1 K20 ["getText"]
      197 CALL                             R13 3 1
      198 SETTABLEKS                       R13 R12 K35 ["Text"]
      200 NEWCLOSURE                       R13 P3
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R2
      203 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      205 CALL                             R10 2 1
      206 SETTABLEKS                       R10 R9 K46 ["EnableFallingDownCheckbox"]
      208 MOVE                             R10 R7
      209 JUMPIFNOT                        R10 ; [+26]
      210 GETUPVAL                         R10 8
      211 GETUPVAL                         R11 10
      212 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      213 MOVE                             R13 R3
      214 CALL                             R13 0 1
      215 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      217 GETTABLEKS                       R13 R5 K47 ["defaultAbilitiesEnableGettingUpSetting"]
      219 GETTABLEKS                       R13 R13 K8 ["value"]
      221 SETTABLEKS                       R13 R12 K34 ["Checked"]
      223 LOADK                            R15 K18 ["MovementSettings"]
      224 LOADK                            R16 K48 ["DefaultAbilitiesSectionEnableGettingUp"]
      225 NAMECALL                         R13 R1 K20 ["getText"]
      227 CALL                             R13 3 1
      228 SETTABLEKS                       R13 R12 K35 ["Text"]
      230 NEWCLOSURE                       R13 P4
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R2
      233 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      235 CALL                             R10 2 1
      236 SETTABLEKS                       R10 R9 K49 ["EnableGettingUpCheckbox"]
      238 GETUPVAL                         R10 5
      239 CALL                             R10 0 1
      240 JUMPIFNOT                        R10 ; [+36]
      241 GETTABLEKS                       R11 R5 K50 ["defaultAbilitiesEnableHoldingSetting"]
      243 FASTCALL2K                       ASSERT R11 K51 ; [+4]
      245 LOADK                            R12 K51 ["Expected holding setting"]
      246 GETIMPORT                        R10 K5 [assert]
      248 CALL                             R10 2 1
      249 MOVE                             R11 R7
      250 JUMPIFNOT                        R11 ; [+24]
      251 GETUPVAL                         R11 8
      252 GETUPVAL                         R12 10
      253 DUPTABLE                         R13 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      254 MOVE                             R14 R3
      255 CALL                             R14 0 1
      256 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      258 GETTABLEKS                       R14 R10 K8 ["value"]
      260 SETTABLEKS                       R14 R13 K34 ["Checked"]
      262 LOADK                            R16 K18 ["MovementSettings"]
      263 LOADK                            R17 K52 ["DefaultAbilitiesSectionEnableHolding"]
      264 NAMECALL                         R14 R1 K20 ["getText"]
      266 CALL                             R14 3 1
      267 SETTABLEKS                       R14 R13 K35 ["Text"]
      269 NEWCLOSURE                       R14 P5
      270 CAPTURE                          VAL R10
      271 CAPTURE                          VAL R2
      272 SETTABLEKS                       R14 R13 K36 ["OnClick"]
      274 CALL                             R11 2 1
      275 SETTABLEKS                       R11 R9 K53 ["EnableHoldingCheckbox"]
      277 MOVE                             R10 R7
      278 JUMPIFNOT                        R10 ; [+26]
      279 GETUPVAL                         R10 8
      280 GETUPVAL                         R11 10
      281 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      282 MOVE                             R13 R3
      283 CALL                             R13 0 1
      284 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      286 GETTABLEKS                       R13 R5 K54 ["defaultAbilitiesEnableJumpingSetting"]
      288 GETTABLEKS                       R13 R13 K8 ["value"]
      290 SETTABLEKS                       R13 R12 K34 ["Checked"]
      292 LOADK                            R15 K18 ["MovementSettings"]
      293 LOADK                            R16 K55 ["DefaultAbilitiesSectionEnableJumping"]
      294 NAMECALL                         R13 R1 K20 ["getText"]
      296 CALL                             R13 3 1
      297 SETTABLEKS                       R13 R12 K35 ["Text"]
      299 NEWCLOSURE                       R13 P6
      300 CAPTURE                          VAL R5
      301 CAPTURE                          VAL R2
      302 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      304 CALL                             R10 2 1
      305 SETTABLEKS                       R10 R9 K56 ["EnableJumpingCheckbox"]
      307 GETUPVAL                         R10 5
      308 CALL                             R10 0 1
      309 JUMPIFNOT                        R10 ; [+36]
      310 GETTABLEKS                       R11 R5 K57 ["defaultAbilitiesEnableReachingSetting"]
      312 FASTCALL2K                       ASSERT R11 K58 ; [+4]
      314 LOADK                            R12 K58 ["Expected reaching setting"]
      315 GETIMPORT                        R10 K5 [assert]
      317 CALL                             R10 2 1
      318 MOVE                             R11 R7
      319 JUMPIFNOT                        R11 ; [+24]
      320 GETUPVAL                         R11 8
      321 GETUPVAL                         R12 10
      322 DUPTABLE                         R13 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      323 MOVE                             R14 R3
      324 CALL                             R14 0 1
      325 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      327 GETTABLEKS                       R14 R10 K8 ["value"]
      329 SETTABLEKS                       R14 R13 K34 ["Checked"]
      331 LOADK                            R16 K18 ["MovementSettings"]
      332 LOADK                            R17 K59 ["DefaultAbilitiesSectionEnableReaching"]
      333 NAMECALL                         R14 R1 K20 ["getText"]
      335 CALL                             R14 3 1
      336 SETTABLEKS                       R14 R13 K35 ["Text"]
      338 NEWCLOSURE                       R14 P7
      339 CAPTURE                          VAL R10
      340 CAPTURE                          VAL R2
      341 SETTABLEKS                       R14 R13 K36 ["OnClick"]
      343 CALL                             R11 2 1
      344 SETTABLEKS                       R11 R9 K60 ["EnableReachingCheckbox"]
      346 MOVE                             R10 R7
      347 JUMPIFNOT                        R10 ; [+26]
      348 GETUPVAL                         R10 8
      349 GETUPVAL                         R11 10
      350 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      351 MOVE                             R13 R3
      352 CALL                             R13 0 1
      353 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      355 GETTABLEKS                       R13 R5 K61 ["defaultAbilitiesEnableRunningSetting"]
      357 GETTABLEKS                       R13 R13 K8 ["value"]
      359 SETTABLEKS                       R13 R12 K34 ["Checked"]
      361 LOADK                            R15 K18 ["MovementSettings"]
      362 LOADK                            R16 K62 ["DefaultAbilitiesSectionEnableRunning"]
      363 NAMECALL                         R13 R1 K20 ["getText"]
      365 CALL                             R13 3 1
      366 SETTABLEKS                       R13 R12 K35 ["Text"]
      368 NEWCLOSURE                       R13 P8
      369 CAPTURE                          VAL R5
      370 CAPTURE                          VAL R2
      371 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      373 CALL                             R10 2 1
      374 SETTABLEKS                       R10 R9 K63 ["EnableRunningCheckbox"]
      376 MOVE                             R10 R7
      377 JUMPIFNOT                        R10 ; [+26]
      378 GETUPVAL                         R10 8
      379 GETUPVAL                         R11 10
      380 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      381 MOVE                             R13 R3
      382 CALL                             R13 0 1
      383 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      385 GETTABLEKS                       R13 R5 K64 ["defaultAbilitiesEnableSittingSetting"]
      387 GETTABLEKS                       R13 R13 K8 ["value"]
      389 SETTABLEKS                       R13 R12 K34 ["Checked"]
      391 LOADK                            R15 K18 ["MovementSettings"]
      392 LOADK                            R16 K65 ["DefaultAbilitiesSectionEnableSitting"]
      393 NAMECALL                         R13 R1 K20 ["getText"]
      395 CALL                             R13 3 1
      396 SETTABLEKS                       R13 R12 K35 ["Text"]
      398 NEWCLOSURE                       R13 P9
      399 CAPTURE                          VAL R5
      400 CAPTURE                          VAL R2
      401 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      403 CALL                             R10 2 1
      404 SETTABLEKS                       R10 R9 K66 ["EnableSittingCheckbox"]
      406 GETUPVAL                         R10 6
      407 CALL                             R10 0 1
      408 JUMPIFNOT                        R10 ; [+36]
      409 GETTABLEKS                       R11 R5 K67 ["defaultAbilitiesEnableSprintingSetting"]
      411 FASTCALL2K                       ASSERT R11 K68 ; [+4]
      413 LOADK                            R12 K68 ["Expected sprinting setting"]
      414 GETIMPORT                        R10 K5 [assert]
      416 CALL                             R10 2 1
      417 MOVE                             R11 R7
      418 JUMPIFNOT                        R11 ; [+24]
      419 GETUPVAL                         R11 8
      420 GETUPVAL                         R12 10
      421 DUPTABLE                         R13 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      422 MOVE                             R14 R3
      423 CALL                             R14 0 1
      424 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      426 GETTABLEKS                       R14 R10 K8 ["value"]
      428 SETTABLEKS                       R14 R13 K34 ["Checked"]
      430 LOADK                            R16 K18 ["MovementSettings"]
      431 LOADK                            R17 K69 ["DefaultAbilitiesSectionEnableSprinting"]
      432 NAMECALL                         R14 R1 K20 ["getText"]
      434 CALL                             R14 3 1
      435 SETTABLEKS                       R14 R13 K35 ["Text"]
      437 NEWCLOSURE                       R14 P10
      438 CAPTURE                          VAL R10
      439 CAPTURE                          VAL R2
      440 SETTABLEKS                       R14 R13 K36 ["OnClick"]
      442 CALL                             R11 2 1
      443 SETTABLEKS                       R11 R9 K70 ["EnableSprintingCheckbox"]
      445 MOVE                             R10 R7
      446 JUMPIFNOT                        R10 ; [+26]
      447 GETUPVAL                         R10 8
      448 GETUPVAL                         R11 10
      449 DUPTABLE                         R12 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      450 MOVE                             R13 R3
      451 CALL                             R13 0 1
      452 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
      454 GETTABLEKS                       R13 R5 K71 ["defaultAbilitiesEnableSwimmingSetting"]
      456 GETTABLEKS                       R13 R13 K8 ["value"]
      458 SETTABLEKS                       R13 R12 K34 ["Checked"]
      460 LOADK                            R15 K18 ["MovementSettings"]
      461 LOADK                            R16 K72 ["DefaultAbilitiesSectionEnableSwimming"]
      462 NAMECALL                         R13 R1 K20 ["getText"]
      464 CALL                             R13 3 1
      465 SETTABLEKS                       R13 R12 K35 ["Text"]
      467 NEWCLOSURE                       R13 P11
      468 CAPTURE                          VAL R5
      469 CAPTURE                          VAL R2
      470 SETTABLEKS                       R13 R12 K36 ["OnClick"]
      472 CALL                             R10 2 1
      473 SETTABLEKS                       R10 R9 K73 ["EnableSwimmingCheckbox"]
      475 GETUPVAL                         R10 7
      476 CALL                             R10 0 1
      477 JUMPIFNOT                        R10 ; [+36]
      478 GETTABLEKS                       R11 R5 K74 ["defaultAbilitiesEnableTurningSetting"]
      480 FASTCALL2K                       ASSERT R11 K75 ; [+4]
      482 LOADK                            R12 K75 ["Expected turning setting"]
      483 GETIMPORT                        R10 K5 [assert]
      485 CALL                             R10 2 1
      486 MOVE                             R11 R7
      487 JUMPIFNOT                        R11 ; [+24]
      488 GETUPVAL                         R11 8
      489 GETUPVAL                         R12 10
      490 DUPTABLE                         R13 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      491 MOVE                             R14 R3
      492 CALL                             R14 0 1
      493 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      495 GETTABLEKS                       R14 R10 K8 ["value"]
      497 SETTABLEKS                       R14 R13 K34 ["Checked"]
      499 LOADK                            R16 K18 ["MovementSettings"]
      500 LOADK                            R17 K76 ["DefaultAbilitiesSectionEnableTurning"]
      501 NAMECALL                         R14 R1 K20 ["getText"]
      503 CALL                             R14 3 1
      504 SETTABLEKS                       R14 R13 K35 ["Text"]
      506 NEWCLOSURE                       R14 P12
      507 CAPTURE                          VAL R10
      508 CAPTURE                          VAL R2
      509 SETTABLEKS                       R14 R13 K36 ["OnClick"]
      511 CALL                             R11 2 1
      512 SETTABLEKS                       R11 R9 K77 ["EnableTurningCheckbox"]
      514 GETUPVAL                         R10 8
      515 GETUPVAL                         R11 11
      516 DUPTABLE                         R12 K79 [{"text", "layoutOrder"}]
      517 LOADK                            R15 K18 ["MovementSettings"]
      518 LOADK                            R16 K80 ["DefaultAbilitiesSection"]
      519 NAMECALL                         R13 R1 K20 ["getText"]
      521 CALL                             R13 3 1
      522 SETTABLEKS                       R13 R12 K78 ["text"]
      524 GETTABLEKS                       R13 R0 K25 ["layoutOrder"]
      526 SETTABLEKS                       R13 R12 K25 ["layoutOrder"]
      528 MOVE                             R13 R9
      529 CALL                             R10 3 -1
      530 RETURN                           R10 -1
      531 GETUPVAL                         R9 8
      532 GETUPVAL                         R10 11
      533 DUPTABLE                         R11 K79 [{"text", "layoutOrder"}]
      534 LOADK                            R14 K18 ["MovementSettings"]
      535 LOADK                            R15 K80 ["DefaultAbilitiesSection"]
      536 NAMECALL                         R12 R1 K20 ["getText"]
      538 CALL                             R12 3 1
      539 SETTABLEKS                       R12 R11 K78 ["text"]
      541 GETTABLEKS                       R12 R0 K25 ["layoutOrder"]
      543 SETTABLEKS                       R12 R11 K25 ["layoutOrder"]
      545 DUPTABLE                         R12 K81 [{"CharacterControllerModeSelector", "EnableRunningCheckbox", "EnableJumpingCheckbox", "EnableSittingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableClimbingCheckbox", "EnableSwimmingCheckbox"}]
      546 GETUPVAL                         R13 8
      547 GETUPVAL                         R14 9
      548 DUPTABLE                         R15 K30 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      549 MOVE                             R16 R3
      550 CALL                             R16 0 1
      551 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
      553 SETTABLEKS                       R8 R15 K26 ["items"]
      555 SETTABLEKS                       R6 R15 K27 ["selected"]
      557 NEWCLOSURE                       R16 P13
      558 CAPTURE                          VAL R6
      559 CAPTURE                          VAL R2
      560 CAPTURE                          VAL R5
      561 SETTABLEKS                       R16 R15 K28 ["onItemActivated"]
      563 LOADK                            R18 K18 ["MovementSettings"]
      564 JUMPIFNOT                        R7 ; [+2]
      565 LOADK                            R19 K31 ["AbilitiesSectionControllerModeLuaSubText"]
      566 JUMP                             ; [+1]
      567 LOADK                            R19 K32 ["AbilitiesSectionControllerModeLegacySubText"]
      568 NAMECALL                         R16 R1 K20 ["getText"]
      570 CALL                             R16 3 1
      571 SETTABLEKS                       R16 R15 K29 ["subText"]
      573 CALL                             R13 2 1
      574 SETTABLEKS                       R13 R12 K22 ["CharacterControllerModeSelector"]
      576 MOVE                             R13 R7
      577 JUMPIFNOT                        R13 ; [+26]
      578 GETUPVAL                         R13 8
      579 GETUPVAL                         R14 10
      580 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      581 MOVE                             R16 R3
      582 CALL                             R16 0 1
      583 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      585 GETTABLEKS                       R16 R5 K61 ["defaultAbilitiesEnableRunningSetting"]
      587 GETTABLEKS                       R16 R16 K8 ["value"]
      589 SETTABLEKS                       R16 R15 K34 ["Checked"]
      591 LOADK                            R18 K18 ["MovementSettings"]
      592 LOADK                            R19 K62 ["DefaultAbilitiesSectionEnableRunning"]
      593 NAMECALL                         R16 R1 K20 ["getText"]
      595 CALL                             R16 3 1
      596 SETTABLEKS                       R16 R15 K35 ["Text"]
      598 NEWCLOSURE                       R16 P14
      599 CAPTURE                          VAL R5
      600 CAPTURE                          VAL R2
      601 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      603 CALL                             R13 2 1
      604 SETTABLEKS                       R13 R12 K63 ["EnableRunningCheckbox"]
      606 MOVE                             R13 R7
      607 JUMPIFNOT                        R13 ; [+26]
      608 GETUPVAL                         R13 8
      609 GETUPVAL                         R14 10
      610 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      611 MOVE                             R16 R3
      612 CALL                             R16 0 1
      613 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      615 GETTABLEKS                       R16 R5 K54 ["defaultAbilitiesEnableJumpingSetting"]
      617 GETTABLEKS                       R16 R16 K8 ["value"]
      619 SETTABLEKS                       R16 R15 K34 ["Checked"]
      621 LOADK                            R18 K18 ["MovementSettings"]
      622 LOADK                            R19 K55 ["DefaultAbilitiesSectionEnableJumping"]
      623 NAMECALL                         R16 R1 K20 ["getText"]
      625 CALL                             R16 3 1
      626 SETTABLEKS                       R16 R15 K35 ["Text"]
      628 NEWCLOSURE                       R16 P15
      629 CAPTURE                          VAL R5
      630 CAPTURE                          VAL R2
      631 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      633 CALL                             R13 2 1
      634 SETTABLEKS                       R13 R12 K56 ["EnableJumpingCheckbox"]
      636 MOVE                             R13 R7
      637 JUMPIFNOT                        R13 ; [+26]
      638 GETUPVAL                         R13 8
      639 GETUPVAL                         R14 10
      640 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      641 MOVE                             R16 R3
      642 CALL                             R16 0 1
      643 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      645 GETTABLEKS                       R16 R5 K64 ["defaultAbilitiesEnableSittingSetting"]
      647 GETTABLEKS                       R16 R16 K8 ["value"]
      649 SETTABLEKS                       R16 R15 K34 ["Checked"]
      651 LOADK                            R18 K18 ["MovementSettings"]
      652 LOADK                            R19 K65 ["DefaultAbilitiesSectionEnableSitting"]
      653 NAMECALL                         R16 R1 K20 ["getText"]
      655 CALL                             R16 3 1
      656 SETTABLEKS                       R16 R15 K35 ["Text"]
      658 NEWCLOSURE                       R16 P16
      659 CAPTURE                          VAL R5
      660 CAPTURE                          VAL R2
      661 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      663 CALL                             R13 2 1
      664 SETTABLEKS                       R13 R12 K66 ["EnableSittingCheckbox"]
      666 MOVE                             R13 R7
      667 JUMPIFNOT                        R13 ; [+26]
      668 GETUPVAL                         R13 8
      669 GETUPVAL                         R14 10
      670 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      671 MOVE                             R16 R3
      672 CALL                             R16 0 1
      673 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      675 GETTABLEKS                       R16 R5 K44 ["defaultAbilitiesEnableFallingDownSetting"]
      677 GETTABLEKS                       R16 R16 K8 ["value"]
      679 SETTABLEKS                       R16 R15 K34 ["Checked"]
      681 LOADK                            R18 K18 ["MovementSettings"]
      682 LOADK                            R19 K45 ["DefaultAbilitiesSectionEnableFallingDown"]
      683 NAMECALL                         R16 R1 K20 ["getText"]
      685 CALL                             R16 3 1
      686 SETTABLEKS                       R16 R15 K35 ["Text"]
      688 NEWCLOSURE                       R16 P17
      689 CAPTURE                          VAL R5
      690 CAPTURE                          VAL R2
      691 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      693 CALL                             R13 2 1
      694 SETTABLEKS                       R13 R12 K46 ["EnableFallingDownCheckbox"]
      696 MOVE                             R13 R7
      697 JUMPIFNOT                        R13 ; [+26]
      698 GETUPVAL                         R13 8
      699 GETUPVAL                         R14 10
      700 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      701 MOVE                             R16 R3
      702 CALL                             R16 0 1
      703 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      705 GETTABLEKS                       R16 R5 K47 ["defaultAbilitiesEnableGettingUpSetting"]
      707 GETTABLEKS                       R16 R16 K8 ["value"]
      709 SETTABLEKS                       R16 R15 K34 ["Checked"]
      711 LOADK                            R18 K18 ["MovementSettings"]
      712 LOADK                            R19 K48 ["DefaultAbilitiesSectionEnableGettingUp"]
      713 NAMECALL                         R16 R1 K20 ["getText"]
      715 CALL                             R16 3 1
      716 SETTABLEKS                       R16 R15 K35 ["Text"]
      718 NEWCLOSURE                       R16 P18
      719 CAPTURE                          VAL R5
      720 CAPTURE                          VAL R2
      721 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      723 CALL                             R13 2 1
      724 SETTABLEKS                       R13 R12 K49 ["EnableGettingUpCheckbox"]
      726 MOVE                             R13 R7
      727 JUMPIFNOT                        R13 ; [+26]
      728 GETUPVAL                         R13 8
      729 GETUPVAL                         R14 10
      730 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      731 MOVE                             R16 R3
      732 CALL                             R16 0 1
      733 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      735 GETTABLEKS                       R16 R5 K38 ["defaultAbilitiesEnableClimbingSetting"]
      737 GETTABLEKS                       R16 R16 K8 ["value"]
      739 SETTABLEKS                       R16 R15 K34 ["Checked"]
      741 LOADK                            R18 K18 ["MovementSettings"]
      742 LOADK                            R19 K39 ["DefaultAbilitiesSectionEnableClimbing"]
      743 NAMECALL                         R16 R1 K20 ["getText"]
      745 CALL                             R16 3 1
      746 SETTABLEKS                       R16 R15 K35 ["Text"]
      748 NEWCLOSURE                       R16 P19
      749 CAPTURE                          VAL R5
      750 CAPTURE                          VAL R2
      751 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      753 CALL                             R13 2 1
      754 SETTABLEKS                       R13 R12 K23 ["EnableClimbingCheckbox"]
      756 MOVE                             R13 R7
      757 JUMPIFNOT                        R13 ; [+26]
      758 GETUPVAL                         R13 8
      759 GETUPVAL                         R14 10
      760 DUPTABLE                         R15 K37 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      761 MOVE                             R16 R3
      762 CALL                             R16 0 1
      763 SETTABLEKS                       R16 R15 K33 ["LayoutOrder"]
      765 GETTABLEKS                       R16 R5 K71 ["defaultAbilitiesEnableSwimmingSetting"]
      767 GETTABLEKS                       R16 R16 K8 ["value"]
      769 SETTABLEKS                       R16 R15 K34 ["Checked"]
      771 LOADK                            R18 K18 ["MovementSettings"]
      772 LOADK                            R19 K72 ["DefaultAbilitiesSectionEnableSwimming"]
      773 NAMECALL                         R16 R1 K20 ["getText"]
      775 CALL                             R16 3 1
      776 SETTABLEKS                       R16 R15 K35 ["Text"]
      778 NEWCLOSURE                       R16 P20
      779 CAPTURE                          VAL R5
      780 CAPTURE                          VAL R2
      781 SETTABLEKS                       R16 R15 K36 ["OnClick"]
      783 CALL                             R13 2 1
      784 SETTABLEKS                       R13 R12 K73 ["EnableSwimmingCheckbox"]
      786 CALL                             R9 3 -1
      787 RETURN                           R9 -1

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
       87 GETTABLEKS                       R12 R12 K23 ["getFFlagAvatarSettingsReachHold"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Src"]
       94 GETTABLEKS                       R13 R13 K21 ["Flags"]
       96 GETTABLEKS                       R13 R13 K24 ["getFFlagAvatarSettingsTurning"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R6 K25 ["createNextOrder"]
      101 GETTABLEKS                       R14 R5 K26 ["createElement"]
      103 GETTABLEKS                       R15 R3 K27 ["UI"]
      105 GETTABLEKS                       R16 R15 K28 ["Checkbox"]
      107 DUPCLOSURE                       R17 K29 [PROTO_21]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R2
      120 RETURN                           R17 1
