MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFIntAvatarSettingsDefaultThrottle"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K8 ["Src"]
       28 GETTABLEKS                       R4 R4 K9 ["Flags"]
       30 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K8 ["Src"]
       37 GETTABLEKS                       R5 R5 K9 ["Flags"]
       39 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsReachHold"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K8 ["Src"]
       46 GETTABLEKS                       R6 R6 K9 ["Flags"]
       48 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsTurning"]
       50 CALL                             R5 1 1
       51 NEWTABLE                         R6 0 0
       53 NEWTABLE                         R7 0 16
       55 NEWTABLE                         R8 0 2
       57 LOADK                            R9 K14 ["AbilityRunningToggled"]
       58 LOADK                            R10 K15 ["Counter to track whether abilities running enabled is toggled. Additional fields: enabled = [true, false]"]
       59 SETLIST                          R8 R9 2 [1]
       61 NEWTABLE                         R9 0 2
       63 LOADK                            R10 K16 ["AbilityJumpingToggled"]
       64 LOADK                            R11 K17 ["Counter to track whether abilities jumping enabled is toggled. Additional fields: enabled = [true, false]"]
       65 SETLIST                          R9 R10 2 [1]
       67 NEWTABLE                         R10 0 2
       69 LOADK                            R11 K18 ["AbilitySittingToggled"]
       70 LOADK                            R12 K19 ["Counter to track whether abilities sitting enabled is toggled. Additional fields: enabled = [true, false]"]
       71 SETLIST                          R10 R11 2 [1]
       73 NEWTABLE                         R11 0 2
       75 LOADK                            R12 K20 ["AbilityFallingDownToggled"]
       76 LOADK                            R13 K21 ["Counter to track whether abilities falling down enabled is toggled. Additional fields: enabled = [true, false]"]
       77 SETLIST                          R11 R12 2 [1]
       79 NEWTABLE                         R12 0 2
       81 LOADK                            R13 K22 ["AbilityGettingUpToggled"]
       82 LOADK                            R14 K23 ["Counter to track whether abilities getting up enabled is toggled. Additional fields: enabled = [true, false]"]
       83 SETLIST                          R12 R13 2 [1]
       85 NEWTABLE                         R13 0 2
       87 LOADK                            R14 K24 ["AbilityClimbingToggled"]
       88 LOADK                            R15 K25 ["Counter to track whether abilities climbing enabled is toggled. Additional fields: enabled = [true, false]"]
       89 SETLIST                          R13 R14 2 [1]
       91 NEWTABLE                         R14 0 2
       93 LOADK                            R15 K26 ["AbilitySwimmingToggled"]
       94 LOADK                            R16 K27 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
       95 SETLIST                          R14 R15 2 [1]
       97 NEWTABLE                         R15 0 2
       99 LOADK                            R16 K28 ["AccessorySoundToggled"]
      100 LOADK                            R17 K29 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
      101 SETLIST                          R15 R16 2 [1]
      103 NEWTABLE                         R16 0 2
      105 LOADK                            R17 K30 ["AccessoryVFXToggled"]
      106 LOADK                            R18 K31 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
      107 SETLIST                          R16 R17 2 [1]
      109 NEWTABLE                         R17 0 2
      111 LOADK                            R18 K32 ["AccessoryEmissivesToggled"]
      112 LOADK                            R19 K33 ["Counter to track whether emissives enabled is toggled. Additional fields: enabled = [true, false]"]
      113 SETLIST                          R17 R18 2 [1]
      115 NEWTABLE                         R18 0 2
      117 LOADK                            R19 K34 ["AvatarTypeMenuOpened"]
      118 LOADK                            R20 K35 ["Counter to track avatar type dropdown opens"]
      119 SETLIST                          R18 R19 2 [1]
      121 NEWTABLE                         R19 0 2
      123 LOADK                            R20 K36 ["PreviewToggled"]
      124 LOADK                            R21 K37 ["Counter to track preview button toggles"]
      125 SETLIST                          R19 R20 2 [1]
      127 NEWTABLE                         R20 0 2
      129 LOADK                            R21 K38 ["RevertChangesPressed"]
      130 LOADK                            R22 K39 ["Counter to track revert changes button presses"]
      131 SETLIST                          R20 R21 2 [1]
      133 NEWTABLE                         R21 0 2
      135 LOADK                            R22 K40 ["SaveChangesPressed"]
      136 LOADK                            R23 K41 ["Counter to track save changes button presses"]
      137 SETLIST                          R21 R22 2 [1]
      139 NEWTABLE                         R22 0 2
      141 LOADK                            R23 K42 ["SwitchedToTab"]
      142 LOADK                            R24 K43 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      143 SETLIST                          R22 R23 2 [1]
      145 NEWTABLE                         R23 0 2
      147 LOADK                            R24 K44 ["PublishedWithPreset"]
      148 LOADK                            R25 K45 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      149 SETLIST                          R23 R24 2 [1]
      151 SETLIST                          R7 R8 16 [1]
      153 MOVE                             R8 R3
      154 CALL                             R8 0 1
      155 JUMPIFNOT                        R8 ; [+24]
      156 NEWTABLE                         R10 0 2
      158 LOADK                            R11 K46 ["AbilityCrouchingToggled"]
      159 LOADK                            R12 K47 ["Counter to track whether abilities crouching enabled is toggled. Additional fields: enabled = [true, false]"]
      160 SETLIST                          R10 R11 2 [1]
      162 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      164 MOVE                             R9 R7
      165 GETIMPORT                        R8 K50 [table.insert]
      167 CALL                             R8 2 0
      168 NEWTABLE                         R10 0 2
      170 LOADK                            R11 K51 ["AbilitySprintingToggled"]
      171 LOADK                            R12 K52 ["Counter to track whether abilities sprinting enabled is toggled. Additional fields: enabled = [true, false]"]
      172 SETLIST                          R10 R11 2 [1]
      174 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      176 MOVE                             R9 R7
      177 GETIMPORT                        R8 K50 [table.insert]
      179 CALL                             R8 2 0
      180 MOVE                             R8 R5
      181 CALL                             R8 0 1
      182 JUMPIFNOT                        R8 ; [+12]
      183 NEWTABLE                         R10 0 2
      185 LOADK                            R11 K53 ["AbilityTurningToggled"]
      186 LOADK                            R12 K54 ["Counter to track whether abilities turning enabled is toggled. Additional fields: enabled = [true, false]"]
      187 SETLIST                          R10 R11 2 [1]
      189 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      191 MOVE                             R9 R7
      192 GETIMPORT                        R8 K50 [table.insert]
      194 CALL                             R8 2 0
      195 MOVE                             R8 R4
      196 CALL                             R8 0 1
      197 JUMPIFNOT                        R8 ; [+24]
      198 NEWTABLE                         R10 0 2
      200 LOADK                            R11 K55 ["AbilityHoldingToggled"]
      201 LOADK                            R12 K56 ["Counter to track whether abilities holding enabled is toggled. Additional fields: enabled = [true, false]"]
      202 SETLIST                          R10 R11 2 [1]
      204 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      206 MOVE                             R9 R7
      207 GETIMPORT                        R8 K50 [table.insert]
      209 CALL                             R8 2 0
      210 NEWTABLE                         R10 0 2
      212 LOADK                            R11 K57 ["AbilityReachingToggled"]
      213 LOADK                            R12 K58 ["Counter to track whether abilities reaching enabled is toggled. Additional fields: enabled = [true, false]"]
      214 SETLIST                          R10 R11 2 [1]
      216 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      218 MOVE                             R9 R7
      219 GETIMPORT                        R8 K50 [table.insert]
      221 CALL                             R8 2 0
      222 NEWTABLE                         R8 0 14
      224 NEWTABLE                         R9 0 3
      226 LOADK                            R10 K59 ["AbilityCharacterControllerMode"]
      227 LOADK                            R11 K60 ["abilityCharacterControllerMode"]
      228 LOADK                            R12 K61 ["LegacyHumanoid, LuaCharacterController"]
      229 SETLIST                          R9 R10 3 [1]
      231 NEWTABLE                         R10 0 3
      233 LOADK                            R11 K62 ["AccessoriesLimitMethod"]
      234 LOADK                            R12 K63 ["limitMethod"]
      235 LOADK                            R13 K64 ["Scale, Remove"]
      236 SETLIST                          R10 R11 3 [1]
      238 NEWTABLE                         R11 0 3
      240 LOADK                            R12 K65 ["AccessoryCustomLimitMode"]
      241 LOADK                            R13 K66 ["accessoryCustomLimitMode"]
      242 LOADK                            R14 K67 ["PlayerChoice, CustomLimit"]
      243 SETLIST                          R11 R12 3 [1]
      245 NEWTABLE                         R12 0 3
      247 LOADK                            R13 K68 ["AnimationClipsMode"]
      248 LOADK                            R14 K69 ["animationClipsMode"]
      249 LOADK                            R15 K70 ["PlayerChoice, CustomClips"]
      250 SETLIST                          R12 R13 3 [1]
      252 NEWTABLE                         R13 0 3
      254 LOADK                            R14 K71 ["AnimationPacksMode"]
      255 LOADK                            R15 K72 ["animationPacksMode"]
      256 LOADK                            R16 K73 ["PlayerChoice, StandardR15, StandardR6"]
      257 SETLIST                          R13 R14 3 [1]
      259 NEWTABLE                         R14 0 3
      261 LOADK                            R15 K74 ["AppearanceMode"]
      262 LOADK                            R16 K75 ["appearanceMode"]
      263 LOADK                            R17 K76 ["PlayerChoice, CustomParts"]
      264 SETLIST                          R14 R15 3 [1]
      266 NEWTABLE                         R15 0 3
      268 LOADK                            R16 K77 ["AvatarType"]
      269 LOADK                            R17 K78 ["avatarType"]
      270 LOADK                            R18 K79 ["R15, R6, PlayerChoice"]
      271 SETLIST                          R15 R16 3 [1]
      273 NEWTABLE                         R16 0 3
      275 LOADK                            R17 K80 ["BuildMode"]
      276 LOADK                            R18 K81 ["buildMode"]
      277 LOADK                            R19 K82 ["PlayerChoice, CustomBuild"]
      278 SETLIST                          R16 R17 3 [1]
      280 NEWTABLE                         R17 0 3
      282 LOADK                            R18 K83 ["ClothingCustomLimitMode"]
      283 LOADK                            R19 K84 ["clothingCustomLimitMode"]
      284 LOADK                            R20 K67 ["PlayerChoice, CustomLimit"]
      285 SETLIST                          R17 R18 3 [1]
      287 NEWTABLE                         R18 0 3
      289 LOADK                            R19 K85 ["CollisionMode"]
      290 LOADK                            R20 K86 ["mode"]
      291 LOADK                            R21 K87 ["Default, SingleCollider, Legacy"]
      292 SETLIST                          R18 R19 3 [1]
      294 NEWTABLE                         R19 0 3
      296 LOADK                            R20 K88 ["CustomAccessoryMode"]
      297 LOADK                            R21 K89 ["customAccessoryMode"]
      298 LOADK                            R22 K90 ["PlayerChoice, CustomAccessories"]
      299 SETLIST                          R19 R20 3 [1]
      301 NEWTABLE                         R20 0 3
      303 LOADK                            R21 K91 ["CustomClothingMode"]
      304 LOADK                            R22 K84 ["clothingCustomLimitMode"]
      305 LOADK                            R23 K92 ["PlayerChoice, CustomClothing"]
      306 SETLIST                          R20 R21 3 [1]
      308 NEWTABLE                         R21 0 3
      310 LOADK                            R22 K93 ["Preset"]
      311 LOADK                            R23 K94 ["presetType"]
      312 LOADK                            R24 K95 ["PlayerChoice, ConsistentGameplay"]
      313 SETLIST                          R21 R22 3 [1]
      315 NEWTABLE                         R22 0 3
      317 LOADK                            R23 K96 ["ScaleMode"]
      318 LOADK                            R24 K97 ["scaleMode"]
      319 LOADK                            R25 K98 ["PlayerChoice, CustomScale"]
      320 SETLIST                          R22 R23 3 [1]
      322 SETLIST                          R8 R9 14 [1]
      324 DUPTABLE                         R9 K104 [{["throttlingPercentage"], ["lastUpdated"], ["backends"], ["links"] = "https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"}]
      325 SETTABLEKS                       R2 R9 K99 ["throttlingPercentage"]
      327 NEWTABLE                         R10 0 3
      329 LOADN                            R11 2025
      330 LOADN                            R12 8
      331 LOADN                            R13 14
      332 SETLIST                          R10 R11 3 [1]
      334 SETTABLEKS                       R10 R9 K100 ["lastUpdated"]
      336 NEWTABLE                         R10 0 1
      338 LOADK                            R11 K105 ["RobloxTelemetryCounter"]
      339 SETLIST                          R10 R11 1 [1]
      341 SETTABLEKS                       R10 R9 K101 ["backends"]
      343 MOVE                             R10 R8
      344 LOADNIL                          R11
      345 LOADNIL                          R12
      346 FORGPREP                         R10
      347 FASTCALL1                        TABLE_UNPACK R14 ; [+3]
      348 MOVE                             R16 R14
      349 GETIMPORT                        R15 K107 [table.unpack]
      351 CALL                             R15 1 3
      352 MOVE                             R19 R15
      353 LOADK                            R20 K108 ["Selected"]
      354 CONCAT                           R18 R19 R20
      355 GETTABLEKS                       R19 R1 K109 ["Dictionary"]
      357 GETTABLEKS                       R19 R19 K110 ["join"]
      359 MOVE                             R20 R9
      360 DUPTABLE                         R21 K112 [{"description"}]
      361 GETIMPORT                        R22 K115 [string.format]
      363 LOADK                            R23 K116 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      364 MOVE                             R24 R15
      365 MOVE                             R25 R16
      366 MOVE                             R26 R17
      367 CALL                             R22 4 1
      368 SETTABLEKS                       R22 R21 K111 ["description"]
      370 CALL                             R19 2 1
      371 SETTABLE                         R19 R6 R18
      372 FORGLOOP                         R10 2 ; [-26]
      374 MOVE                             R10 R7
      375 LOADNIL                          R11
      376 LOADNIL                          R12
      377 FORGPREP                         R10
      378 FASTCALL1                        TABLE_UNPACK R14 ; [+3]
      379 MOVE                             R16 R14
      380 GETIMPORT                        R15 K107 [table.unpack]
      382 CALL                             R15 1 2
      383 GETTABLEKS                       R17 R1 K109 ["Dictionary"]
      385 GETTABLEKS                       R17 R17 K110 ["join"]
      387 MOVE                             R18 R9
      388 DUPTABLE                         R19 K112 [{"description"}]
      389 SETTABLEKS                       R16 R19 K111 ["description"]
      391 CALL                             R17 2 1
      392 SETTABLE                         R17 R6 R15
      393 FORGLOOP                         R10 2 ; [-16]
      395 RETURN                           R6 1
