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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       70 GETUPVAL                         R10 6
       71 DUPTABLE                         R11 K25 [{"text", "layoutOrder", "showWarning"}]
       72 LOADK                            R14 K18 ["MovementSettings"]
       73 LOADK                            R15 K26 ["DefaultAbilitiesSection"]
       74 NAMECALL                         R12 R1 K20 ["getText"]
       76 CALL                             R12 3 1
       77 SETTABLEKS                       R12 R11 K22 ["text"]
       79 GETTABLEKS                       R12 R0 K23 ["layoutOrder"]
       81 SETTABLEKS                       R12 R11 K23 ["layoutOrder"]
       83 GETUPVAL                         R13 7
       84 CALL                             R13 0 1
       85 NOT                              R12 R13
       86 SETTABLEKS                       R12 R11 K24 ["showWarning"]
       88 DUPTABLE                         R12 K35 [{"CharacterControllerModeSelector", "EnableRunningCheckbox", "EnableJumpingCheckbox", "EnableSittingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableClimbingCheckbox", "EnableSwimmingCheckbox"}]
       89 GETUPVAL                         R13 5
       90 GETUPVAL                         R14 8
       91 DUPTABLE                         R15 K40 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       92 MOVE                             R16 R3
       93 CALL                             R16 0 1
       94 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
       96 SETTABLEKS                       R8 R15 K36 ["items"]
       98 SETTABLEKS                       R6 R15 K37 ["selected"]
      100 NEWCLOSURE                       R16 P0
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R16 R15 K38 ["onItemActivated"]
      106 LOADK                            R18 K18 ["MovementSettings"]
      107 JUMPIFNOT                        R7 ; [+2]
      108 LOADK                            R19 K41 ["AbilitiesSectionControllerModeLuaSubText"]
      109 JUMP                             ; [+1]
      110 LOADK                            R19 K42 ["AbilitiesSectionControllerModeLegacySubText"]
      111 NAMECALL                         R16 R1 K20 ["getText"]
      113 CALL                             R16 3 1
      114 SETTABLEKS                       R16 R15 K39 ["subText"]
      116 CALL                             R13 2 1
      117 SETTABLEKS                       R13 R12 K27 ["CharacterControllerModeSelector"]
      119 MOVE                             R13 R7
      120 JUMPIFNOT                        R13 ; [+26]
      121 GETUPVAL                         R13 5
      122 GETUPVAL                         R14 9
      123 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      124 MOVE                             R16 R3
      125 CALL                             R16 0 1
      126 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      128 GETTABLEKS                       R16 R5 K48 ["defaultAbilitiesEnableRunningSetting"]
      130 GETTABLEKS                       R16 R16 K8 ["value"]
      132 SETTABLEKS                       R16 R15 K44 ["Checked"]
      134 LOADK                            R18 K18 ["MovementSettings"]
      135 LOADK                            R19 K49 ["DefaultAbilitiesSectionEnableRunning"]
      136 NAMECALL                         R16 R1 K20 ["getText"]
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K45 ["Text"]
      141 NEWCLOSURE                       R16 P1
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R2
      144 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      146 CALL                             R13 2 1
      147 SETTABLEKS                       R13 R12 K28 ["EnableRunningCheckbox"]
      149 MOVE                             R13 R7
      150 JUMPIFNOT                        R13 ; [+26]
      151 GETUPVAL                         R13 5
      152 GETUPVAL                         R14 9
      153 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      154 MOVE                             R16 R3
      155 CALL                             R16 0 1
      156 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      158 GETTABLEKS                       R16 R5 K50 ["defaultAbilitiesEnableJumpingSetting"]
      160 GETTABLEKS                       R16 R16 K8 ["value"]
      162 SETTABLEKS                       R16 R15 K44 ["Checked"]
      164 LOADK                            R18 K18 ["MovementSettings"]
      165 LOADK                            R19 K51 ["DefaultAbilitiesSectionEnableJumping"]
      166 NAMECALL                         R16 R1 K20 ["getText"]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K45 ["Text"]
      171 NEWCLOSURE                       R16 P2
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      176 CALL                             R13 2 1
      177 SETTABLEKS                       R13 R12 K29 ["EnableJumpingCheckbox"]
      179 MOVE                             R13 R7
      180 JUMPIFNOT                        R13 ; [+26]
      181 GETUPVAL                         R13 5
      182 GETUPVAL                         R14 9
      183 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      184 MOVE                             R16 R3
      185 CALL                             R16 0 1
      186 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      188 GETTABLEKS                       R16 R5 K52 ["defaultAbilitiesEnableSittingSetting"]
      190 GETTABLEKS                       R16 R16 K8 ["value"]
      192 SETTABLEKS                       R16 R15 K44 ["Checked"]
      194 LOADK                            R18 K18 ["MovementSettings"]
      195 LOADK                            R19 K53 ["DefaultAbilitiesSectionEnableSitting"]
      196 NAMECALL                         R16 R1 K20 ["getText"]
      198 CALL                             R16 3 1
      199 SETTABLEKS                       R16 R15 K45 ["Text"]
      201 NEWCLOSURE                       R16 P3
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R2
      204 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      206 CALL                             R13 2 1
      207 SETTABLEKS                       R13 R12 K30 ["EnableSittingCheckbox"]
      209 MOVE                             R13 R7
      210 JUMPIFNOT                        R13 ; [+26]
      211 GETUPVAL                         R13 5
      212 GETUPVAL                         R14 9
      213 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      214 MOVE                             R16 R3
      215 CALL                             R16 0 1
      216 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      218 GETTABLEKS                       R16 R5 K54 ["defaultAbilitiesEnableFallingDownSetting"]
      220 GETTABLEKS                       R16 R16 K8 ["value"]
      222 SETTABLEKS                       R16 R15 K44 ["Checked"]
      224 LOADK                            R18 K18 ["MovementSettings"]
      225 LOADK                            R19 K55 ["DefaultAbilitiesSectionEnableFallingDown"]
      226 NAMECALL                         R16 R1 K20 ["getText"]
      228 CALL                             R16 3 1
      229 SETTABLEKS                       R16 R15 K45 ["Text"]
      231 NEWCLOSURE                       R16 P4
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R2
      234 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      236 CALL                             R13 2 1
      237 SETTABLEKS                       R13 R12 K31 ["EnableFallingDownCheckbox"]
      239 MOVE                             R13 R7
      240 JUMPIFNOT                        R13 ; [+26]
      241 GETUPVAL                         R13 5
      242 GETUPVAL                         R14 9
      243 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      244 MOVE                             R16 R3
      245 CALL                             R16 0 1
      246 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      248 GETTABLEKS                       R16 R5 K56 ["defaultAbilitiesEnableGettingUpSetting"]
      250 GETTABLEKS                       R16 R16 K8 ["value"]
      252 SETTABLEKS                       R16 R15 K44 ["Checked"]
      254 LOADK                            R18 K18 ["MovementSettings"]
      255 LOADK                            R19 K57 ["DefaultAbilitiesSectionEnableGettingUp"]
      256 NAMECALL                         R16 R1 K20 ["getText"]
      258 CALL                             R16 3 1
      259 SETTABLEKS                       R16 R15 K45 ["Text"]
      261 NEWCLOSURE                       R16 P5
      262 CAPTURE                          VAL R5
      263 CAPTURE                          VAL R2
      264 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      266 CALL                             R13 2 1
      267 SETTABLEKS                       R13 R12 K32 ["EnableGettingUpCheckbox"]
      269 MOVE                             R13 R7
      270 JUMPIFNOT                        R13 ; [+26]
      271 GETUPVAL                         R13 5
      272 GETUPVAL                         R14 9
      273 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      274 MOVE                             R16 R3
      275 CALL                             R16 0 1
      276 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      278 GETTABLEKS                       R16 R5 K58 ["defaultAbilitiesEnableClimbingSetting"]
      280 GETTABLEKS                       R16 R16 K8 ["value"]
      282 SETTABLEKS                       R16 R15 K44 ["Checked"]
      284 LOADK                            R18 K18 ["MovementSettings"]
      285 LOADK                            R19 K59 ["DefaultAbilitiesSectionEnableClimbing"]
      286 NAMECALL                         R16 R1 K20 ["getText"]
      288 CALL                             R16 3 1
      289 SETTABLEKS                       R16 R15 K45 ["Text"]
      291 NEWCLOSURE                       R16 P6
      292 CAPTURE                          VAL R5
      293 CAPTURE                          VAL R2
      294 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      296 CALL                             R13 2 1
      297 SETTABLEKS                       R13 R12 K33 ["EnableClimbingCheckbox"]
      299 MOVE                             R13 R7
      300 JUMPIFNOT                        R13 ; [+26]
      301 GETUPVAL                         R13 5
      302 GETUPVAL                         R14 9
      303 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      304 MOVE                             R16 R3
      305 CALL                             R16 0 1
      306 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      308 GETTABLEKS                       R16 R5 K60 ["defaultAbilitiesEnableSwimmingSetting"]
      310 GETTABLEKS                       R16 R16 K8 ["value"]
      312 SETTABLEKS                       R16 R15 K44 ["Checked"]
      314 LOADK                            R18 K18 ["MovementSettings"]
      315 LOADK                            R19 K61 ["DefaultAbilitiesSectionEnableSwimming"]
      316 NAMECALL                         R16 R1 K20 ["getText"]
      318 CALL                             R16 3 1
      319 SETTABLEKS                       R16 R15 K45 ["Text"]
      321 NEWCLOSURE                       R16 P7
      322 CAPTURE                          VAL R5
      323 CAPTURE                          VAL R2
      324 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      326 CALL                             R13 2 1
      327 SETTABLEKS                       R13 R12 K34 ["EnableSwimmingCheckbox"]
      329 CALL                             R9 3 -1
      330 RETURN                           R9 -1

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
       78 GETTABLEKS                       R11 R11 K22 ["getFFlagAvatarSettingsEnableAbilitiesR6"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R6 K23 ["createNextOrder"]
       83 GETTABLEKS                       R12 R5 K24 ["createElement"]
       85 GETTABLEKS                       R13 R3 K25 ["UI"]
       87 GETTABLEKS                       R14 R13 K26 ["Checkbox"]
       89 DUPCLOSURE                       R15 K27 [PROTO_8]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R14
      100 RETURN                           R15 1
