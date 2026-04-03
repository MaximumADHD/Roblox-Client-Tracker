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
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["characterControllerModeSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableRunningSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityRunningToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableRunningSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableJumpingSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityJumpingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableJumpingSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableSittingSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilitySittingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableSittingSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableFallingDownSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityFallingDownToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableFallingDownSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableGettingUpSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityGettingUpToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableGettingUpSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableClimbingSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilityClimbingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableClimbingSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableSwimmingSetting"]
        3 GETTABLEKS                       R1 R2 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AbilitySwimmingToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["defaultAbilitiesEnableSwimmingSetting"]
       17 GETTABLEKS                       R1 R2 K6 ["set"]
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
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
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
       27 GETTABLEKS                       R6 R4 K2 ["settings"]
       29 GETTABLEKS                       R5 R6 K6 ["movementSettings"]
       31 GETTABLEKS                       R7 R5 K7 ["characterControllerModeSetting"]
       33 GETTABLEKS                       R6 R7 K8 ["value"]
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
       83 LOADB                            R12 1
       84 SETTABLEKS                       R12 R11 K24 ["showWarning"]
       86 DUPTABLE                         R12 K35 [{"CharacterControllerModeSelector", "EnableRunningCheckbox", "EnableJumpingCheckbox", "EnableSittingCheckbox", "EnableFallingDownCheckbox", "EnableGettingUpCheckbox", "EnableClimbingCheckbox", "EnableSwimmingCheckbox"}]
       87 GETUPVAL                         R13 5
       88 GETUPVAL                         R14 7
       89 DUPTABLE                         R15 K40 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       90 MOVE                             R16 R3
       91 CALL                             R16 0 1
       92 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
       94 SETTABLEKS                       R8 R15 K36 ["items"]
       96 SETTABLEKS                       R6 R15 K37 ["selected"]
       98 NEWCLOSURE                       R16 P0
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R16 R15 K38 ["onItemActivated"]
      104 LOADK                            R18 K18 ["MovementSettings"]
      105 JUMPIFNOT                        R7 ; [+2]
      106 LOADK                            R19 K41 ["AbilitiesSectionControllerModeLuaSubText"]
      107 JUMP                             ; [+1]
      108 LOADK                            R19 K42 ["AbilitiesSectionControllerModeLegacySubText"]
      109 NAMECALL                         R16 R1 K20 ["getText"]
      111 CALL                             R16 3 1
      112 SETTABLEKS                       R16 R15 K39 ["subText"]
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K27 ["CharacterControllerModeSelector"]
      117 MOVE                             R13 R7
      118 JUMPIFNOT                        R13 ; [+26]
      119 GETUPVAL                         R13 5
      120 GETUPVAL                         R14 8
      121 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      122 MOVE                             R16 R3
      123 CALL                             R16 0 1
      124 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      126 GETTABLEKS                       R17 R5 K48 ["defaultAbilitiesEnableRunningSetting"]
      128 GETTABLEKS                       R16 R17 K8 ["value"]
      130 SETTABLEKS                       R16 R15 K44 ["Checked"]
      132 LOADK                            R18 K18 ["MovementSettings"]
      133 LOADK                            R19 K49 ["DefaultAbilitiesSectionEnableRunning"]
      134 NAMECALL                         R16 R1 K20 ["getText"]
      136 CALL                             R16 3 1
      137 SETTABLEKS                       R16 R15 K45 ["Text"]
      139 NEWCLOSURE                       R16 P1
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R2
      142 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K28 ["EnableRunningCheckbox"]
      147 MOVE                             R13 R7
      148 JUMPIFNOT                        R13 ; [+26]
      149 GETUPVAL                         R13 5
      150 GETUPVAL                         R14 8
      151 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      152 MOVE                             R16 R3
      153 CALL                             R16 0 1
      154 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      156 GETTABLEKS                       R17 R5 K50 ["defaultAbilitiesEnableJumpingSetting"]
      158 GETTABLEKS                       R16 R17 K8 ["value"]
      160 SETTABLEKS                       R16 R15 K44 ["Checked"]
      162 LOADK                            R18 K18 ["MovementSettings"]
      163 LOADK                            R19 K51 ["DefaultAbilitiesSectionEnableJumping"]
      164 NAMECALL                         R16 R1 K20 ["getText"]
      166 CALL                             R16 3 1
      167 SETTABLEKS                       R16 R15 K45 ["Text"]
      169 NEWCLOSURE                       R16 P2
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R2
      172 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      174 CALL                             R13 2 1
      175 SETTABLEKS                       R13 R12 K29 ["EnableJumpingCheckbox"]
      177 MOVE                             R13 R7
      178 JUMPIFNOT                        R13 ; [+26]
      179 GETUPVAL                         R13 5
      180 GETUPVAL                         R14 8
      181 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      182 MOVE                             R16 R3
      183 CALL                             R16 0 1
      184 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      186 GETTABLEKS                       R17 R5 K52 ["defaultAbilitiesEnableSittingSetting"]
      188 GETTABLEKS                       R16 R17 K8 ["value"]
      190 SETTABLEKS                       R16 R15 K44 ["Checked"]
      192 LOADK                            R18 K18 ["MovementSettings"]
      193 LOADK                            R19 K53 ["DefaultAbilitiesSectionEnableSitting"]
      194 NAMECALL                         R16 R1 K20 ["getText"]
      196 CALL                             R16 3 1
      197 SETTABLEKS                       R16 R15 K45 ["Text"]
      199 NEWCLOSURE                       R16 P3
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R2
      202 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      204 CALL                             R13 2 1
      205 SETTABLEKS                       R13 R12 K30 ["EnableSittingCheckbox"]
      207 MOVE                             R13 R7
      208 JUMPIFNOT                        R13 ; [+26]
      209 GETUPVAL                         R13 5
      210 GETUPVAL                         R14 8
      211 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      212 MOVE                             R16 R3
      213 CALL                             R16 0 1
      214 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      216 GETTABLEKS                       R17 R5 K54 ["defaultAbilitiesEnableFallingDownSetting"]
      218 GETTABLEKS                       R16 R17 K8 ["value"]
      220 SETTABLEKS                       R16 R15 K44 ["Checked"]
      222 LOADK                            R18 K18 ["MovementSettings"]
      223 LOADK                            R19 K55 ["DefaultAbilitiesSectionEnableFallingDown"]
      224 NAMECALL                         R16 R1 K20 ["getText"]
      226 CALL                             R16 3 1
      227 SETTABLEKS                       R16 R15 K45 ["Text"]
      229 NEWCLOSURE                       R16 P4
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R2
      232 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      234 CALL                             R13 2 1
      235 SETTABLEKS                       R13 R12 K31 ["EnableFallingDownCheckbox"]
      237 MOVE                             R13 R7
      238 JUMPIFNOT                        R13 ; [+26]
      239 GETUPVAL                         R13 5
      240 GETUPVAL                         R14 8
      241 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      242 MOVE                             R16 R3
      243 CALL                             R16 0 1
      244 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      246 GETTABLEKS                       R17 R5 K56 ["defaultAbilitiesEnableGettingUpSetting"]
      248 GETTABLEKS                       R16 R17 K8 ["value"]
      250 SETTABLEKS                       R16 R15 K44 ["Checked"]
      252 LOADK                            R18 K18 ["MovementSettings"]
      253 LOADK                            R19 K57 ["DefaultAbilitiesSectionEnableGettingUp"]
      254 NAMECALL                         R16 R1 K20 ["getText"]
      256 CALL                             R16 3 1
      257 SETTABLEKS                       R16 R15 K45 ["Text"]
      259 NEWCLOSURE                       R16 P5
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R2
      262 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      264 CALL                             R13 2 1
      265 SETTABLEKS                       R13 R12 K32 ["EnableGettingUpCheckbox"]
      267 MOVE                             R13 R7
      268 JUMPIFNOT                        R13 ; [+26]
      269 GETUPVAL                         R13 5
      270 GETUPVAL                         R14 8
      271 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      272 MOVE                             R16 R3
      273 CALL                             R16 0 1
      274 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      276 GETTABLEKS                       R17 R5 K58 ["defaultAbilitiesEnableClimbingSetting"]
      278 GETTABLEKS                       R16 R17 K8 ["value"]
      280 SETTABLEKS                       R16 R15 K44 ["Checked"]
      282 LOADK                            R18 K18 ["MovementSettings"]
      283 LOADK                            R19 K59 ["DefaultAbilitiesSectionEnableClimbing"]
      284 NAMECALL                         R16 R1 K20 ["getText"]
      286 CALL                             R16 3 1
      287 SETTABLEKS                       R16 R15 K45 ["Text"]
      289 NEWCLOSURE                       R16 P6
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R2
      292 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      294 CALL                             R13 2 1
      295 SETTABLEKS                       R13 R12 K33 ["EnableClimbingCheckbox"]
      297 MOVE                             R13 R7
      298 JUMPIFNOT                        R13 ; [+26]
      299 GETUPVAL                         R13 5
      300 GETUPVAL                         R14 8
      301 DUPTABLE                         R15 K47 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      302 MOVE                             R16 R3
      303 CALL                             R16 0 1
      304 SETTABLEKS                       R16 R15 K43 ["LayoutOrder"]
      306 GETTABLEKS                       R17 R5 K60 ["defaultAbilitiesEnableSwimmingSetting"]
      308 GETTABLEKS                       R16 R17 K8 ["value"]
      310 SETTABLEKS                       R16 R15 K44 ["Checked"]
      312 LOADK                            R18 K18 ["MovementSettings"]
      313 LOADK                            R19 K61 ["DefaultAbilitiesSectionEnableSwimming"]
      314 NAMECALL                         R16 R1 K20 ["getText"]
      316 CALL                             R16 3 1
      317 SETTABLEKS                       R16 R15 K45 ["Text"]
      319 NEWCLOSURE                       R16 P7
      320 CAPTURE                          VAL R5
      321 CAPTURE                          VAL R2
      322 SETTABLEKS                       R16 R15 K46 ["OnClick"]
      324 CALL                             R13 2 1
      325 SETTABLEKS                       R13 R12 K34 ["EnableSwimmingCheckbox"]
      327 CALL                             R9 3 -1
      328 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Components"]
       24 GETTABLEKS                       R3 R4 K10 ["ExpandableSection"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R5 K12 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Components"]
       40 GETTABLEKS                       R5 R6 K13 ["GenericModeSelector"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Packages"]
       47 GETTABLEKS                       R6 R7 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K11 ["Packages"]
       54 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R3 K16 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K17 ["Localization"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R13 R0 K6 ["Src"]
       65 GETTABLEKS                       R12 R13 K18 ["Util"]
       67 GETTABLEKS                       R11 R12 K19 ["Telemetry"]
       69 GETTABLEKS                       R10 R11 K20 ["TelemetryContext"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R6 K21 ["createNextOrder"]
       74 GETTABLEKS                       R11 R5 K22 ["createElement"]
       76 GETTABLEKS                       R12 R3 K23 ["UI"]
       78 GETTABLEKS                       R13 R12 K24 ["Checkbox"]
       80 DUPCLOSURE                       R14 K25 [PROTO_8]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R13
       90 RETURN                           R14 1
