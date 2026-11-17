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
       30 GETTABLEKS                       R4 R4 K11 ["getEngineFeatureAvatarSettingsSpawnEffects"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K8 ["Src"]
       37 GETTABLEKS                       R5 R5 K9 ["Flags"]
       39 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K8 ["Src"]
       46 GETTABLEKS                       R6 R6 K9 ["Flags"]
       48 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarSettingsReachHold"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K8 ["Src"]
       55 GETTABLEKS                       R7 R7 K9 ["Flags"]
       57 GETTABLEKS                       R7 R7 K14 ["getFFlagAvatarSettingsTurning"]
       59 CALL                             R6 1 1
       60 NEWTABLE                         R7 0 0
       62 NEWTABLE                         R8 0 17
       64 NEWTABLE                         R9 0 2
       66 LOADK                            R10 K15 ["AbilityRunningToggled"]
       67 LOADK                            R11 K16 ["Counter to track whether abilities running enabled is toggled. Additional fields: enabled = [true, false]"]
       68 SETLIST                          R9 R10 2 [1]
       70 NEWTABLE                         R10 0 2
       72 LOADK                            R11 K17 ["AbilityJumpingToggled"]
       73 LOADK                            R12 K18 ["Counter to track whether abilities jumping enabled is toggled. Additional fields: enabled = [true, false]"]
       74 SETLIST                          R10 R11 2 [1]
       76 NEWTABLE                         R11 0 2
       78 LOADK                            R12 K19 ["AbilitySittingToggled"]
       79 LOADK                            R13 K20 ["Counter to track whether abilities sitting enabled is toggled. Additional fields: enabled = [true, false]"]
       80 SETLIST                          R11 R12 2 [1]
       82 NEWTABLE                         R12 0 2
       84 LOADK                            R13 K21 ["AbilityFallingDownToggled"]
       85 LOADK                            R14 K22 ["Counter to track whether abilities falling down enabled is toggled. Additional fields: enabled = [true, false]"]
       86 SETLIST                          R12 R13 2 [1]
       88 NEWTABLE                         R13 0 2
       90 LOADK                            R14 K23 ["AbilityGettingUpToggled"]
       91 LOADK                            R15 K24 ["Counter to track whether abilities getting up enabled is toggled. Additional fields: enabled = [true, false]"]
       92 SETLIST                          R13 R14 2 [1]
       94 NEWTABLE                         R14 0 2
       96 LOADK                            R15 K25 ["AbilityClimbingToggled"]
       97 LOADK                            R16 K26 ["Counter to track whether abilities climbing enabled is toggled. Additional fields: enabled = [true, false]"]
       98 SETLIST                          R14 R15 2 [1]
      100 NEWTABLE                         R15 0 2
      102 LOADK                            R16 K27 ["AbilitySwimmingToggled"]
      103 LOADK                            R17 K28 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
      104 SETLIST                          R15 R16 2 [1]
      106 NEWTABLE                         R16 0 2
      108 LOADK                            R17 K29 ["AccessorySoundToggled"]
      109 LOADK                            R18 K30 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
      110 SETLIST                          R16 R17 2 [1]
      112 NEWTABLE                         R17 0 2
      114 LOADK                            R18 K31 ["AccessoryVFXToggled"]
      115 LOADK                            R19 K32 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
      116 SETLIST                          R17 R18 2 [1]
      118 NEWTABLE                         R18 0 2
      120 LOADK                            R19 K33 ["AccessoryEmissivesToggled"]
      121 LOADK                            R20 K34 ["Counter to track whether emissives enabled is toggled. Additional fields: enabled = [true, false]"]
      122 SETLIST                          R18 R19 2 [1]
      124 NEWTABLE                         R19 0 2
      126 LOADK                            R20 K35 ["AvatarTypeMenuOpened"]
      127 LOADK                            R21 K36 ["Counter to track avatar type dropdown opens"]
      128 SETLIST                          R19 R20 2 [1]
      130 NEWTABLE                         R20 0 2
      132 LOADK                            R21 K37 ["PreviewToggled"]
      133 LOADK                            R22 K38 ["Counter to track preview button toggles"]
      134 SETLIST                          R20 R21 2 [1]
      136 NEWTABLE                         R21 0 2
      138 LOADK                            R22 K39 ["CreatePlaceSettingsPressed"]
      139 LOADK                            R23 K40 ["Counter to track create place settings button presses"]
      140 SETLIST                          R21 R22 2 [1]
      142 NEWTABLE                         R22 0 2
      144 LOADK                            R23 K41 ["RevertChangesPressed"]
      145 LOADK                            R24 K42 ["Counter to track revert changes button presses"]
      146 SETLIST                          R22 R23 2 [1]
      148 NEWTABLE                         R23 0 2
      150 LOADK                            R24 K43 ["SaveChangesPressed"]
      151 LOADK                            R25 K44 ["Counter to track save changes button presses"]
      152 SETLIST                          R23 R24 2 [1]
      154 NEWTABLE                         R24 0 2
      156 LOADK                            R25 K45 ["SwitchedToTab"]
      157 LOADK                            R26 K46 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      158 SETLIST                          R24 R25 2 [1]
      160 SETLIST                          R8 R9 16 [1]
      162 NEWTABLE                         R9 0 2
      164 LOADK                            R25 K47 ["PublishedWithPreset"]
      165 LOADK                            R26 K48 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      166 SETLIST                          R9 R25 2 [1]
      168 SETLIST                          R8 R9 1 [17]
      170 MOVE                             R9 R4
      171 CALL                             R9 0 1
      172 JUMPIFNOT                        R9 ; [+24]
      173 NEWTABLE                         R11 0 2
      175 LOADK                            R12 K49 ["AbilityCrouchingToggled"]
      176 LOADK                            R13 K50 ["Counter to track whether abilities crouching enabled is toggled. Additional fields: enabled = [true, false]"]
      177 SETLIST                          R11 R12 2 [1]
      179 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      181 MOVE                             R10 R8
      182 GETIMPORT                        R9 K53 [table.insert]
      184 CALL                             R9 2 0
      185 NEWTABLE                         R11 0 2
      187 LOADK                            R12 K54 ["AbilitySprintingToggled"]
      188 LOADK                            R13 K55 ["Counter to track whether abilities sprinting enabled is toggled. Additional fields: enabled = [true, false]"]
      189 SETLIST                          R11 R12 2 [1]
      191 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      193 MOVE                             R10 R8
      194 GETIMPORT                        R9 K53 [table.insert]
      196 CALL                             R9 2 0
      197 MOVE                             R9 R6
      198 CALL                             R9 0 1
      199 JUMPIFNOT                        R9 ; [+12]
      200 NEWTABLE                         R11 0 2
      202 LOADK                            R12 K56 ["AbilityTurningToggled"]
      203 LOADK                            R13 K57 ["Counter to track whether abilities turning enabled is toggled. Additional fields: enabled = [true, false]"]
      204 SETLIST                          R11 R12 2 [1]
      206 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      208 MOVE                             R10 R8
      209 GETIMPORT                        R9 K53 [table.insert]
      211 CALL                             R9 2 0
      212 MOVE                             R9 R5
      213 CALL                             R9 0 1
      214 JUMPIFNOT                        R9 ; [+24]
      215 NEWTABLE                         R11 0 2
      217 LOADK                            R12 K58 ["AbilityHoldingToggled"]
      218 LOADK                            R13 K59 ["Counter to track whether abilities holding enabled is toggled. Additional fields: enabled = [true, false]"]
      219 SETLIST                          R11 R12 2 [1]
      221 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      223 MOVE                             R10 R8
      224 GETIMPORT                        R9 K53 [table.insert]
      226 CALL                             R9 2 0
      227 NEWTABLE                         R11 0 2
      229 LOADK                            R12 K60 ["AbilityReachingToggled"]
      230 LOADK                            R13 K61 ["Counter to track whether abilities reaching enabled is toggled. Additional fields: enabled = [true, false]"]
      231 SETLIST                          R11 R12 2 [1]
      233 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      235 MOVE                             R10 R8
      236 GETIMPORT                        R9 K53 [table.insert]
      238 CALL                             R9 2 0
      239 MOVE                             R9 R3
      240 CALL                             R9 0 1
      241 JUMPIFNOT                        R9 ; [+12]
      242 NEWTABLE                         R11 0 2
      244 LOADK                            R12 K62 ["AccessorySpawnEffectsToggled"]
      245 LOADK                            R13 K63 ["Counter to track whether spawn effects enabled is toggled. Additional fields: enabled = [true, false]"]
      246 SETLIST                          R11 R12 2 [1]
      248 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      250 MOVE                             R10 R8
      251 GETIMPORT                        R9 K53 [table.insert]
      253 CALL                             R9 2 0
      254 NEWTABLE                         R9 0 14
      256 NEWTABLE                         R10 0 3
      258 LOADK                            R11 K64 ["AbilityCharacterControllerMode"]
      259 LOADK                            R12 K65 ["abilityCharacterControllerMode"]
      260 LOADK                            R13 K66 ["LegacyHumanoid, LuaCharacterController"]
      261 SETLIST                          R10 R11 3 [1]
      263 NEWTABLE                         R11 0 3
      265 LOADK                            R12 K67 ["AccessoriesLimitMethod"]
      266 LOADK                            R13 K68 ["limitMethod"]
      267 LOADK                            R14 K69 ["Scale, Remove"]
      268 SETLIST                          R11 R12 3 [1]
      270 NEWTABLE                         R12 0 3
      272 LOADK                            R13 K70 ["AccessoryCustomLimitMode"]
      273 LOADK                            R14 K71 ["accessoryCustomLimitMode"]
      274 LOADK                            R15 K72 ["PlayerChoice, CustomLimit"]
      275 SETLIST                          R12 R13 3 [1]
      277 NEWTABLE                         R13 0 3
      279 LOADK                            R14 K73 ["AnimationClipsMode"]
      280 LOADK                            R15 K74 ["animationClipsMode"]
      281 LOADK                            R16 K75 ["PlayerChoice, CustomClips"]
      282 SETLIST                          R13 R14 3 [1]
      284 NEWTABLE                         R14 0 3
      286 LOADK                            R15 K76 ["AnimationPacksMode"]
      287 LOADK                            R16 K77 ["animationPacksMode"]
      288 LOADK                            R17 K78 ["PlayerChoice, StandardR15, StandardR6"]
      289 SETLIST                          R14 R15 3 [1]
      291 NEWTABLE                         R15 0 3
      293 LOADK                            R16 K79 ["AppearanceMode"]
      294 LOADK                            R17 K80 ["appearanceMode"]
      295 LOADK                            R18 K81 ["PlayerChoice, CustomParts"]
      296 SETLIST                          R15 R16 3 [1]
      298 NEWTABLE                         R16 0 3
      300 LOADK                            R17 K82 ["AvatarType"]
      301 LOADK                            R18 K83 ["avatarType"]
      302 LOADK                            R19 K84 ["R15, R6, PlayerChoice"]
      303 SETLIST                          R16 R17 3 [1]
      305 NEWTABLE                         R17 0 3
      307 LOADK                            R18 K85 ["BuildMode"]
      308 LOADK                            R19 K86 ["buildMode"]
      309 LOADK                            R20 K87 ["PlayerChoice, CustomBuild"]
      310 SETLIST                          R17 R18 3 [1]
      312 NEWTABLE                         R18 0 3
      314 LOADK                            R19 K88 ["ClothingCustomLimitMode"]
      315 LOADK                            R20 K89 ["clothingCustomLimitMode"]
      316 LOADK                            R21 K72 ["PlayerChoice, CustomLimit"]
      317 SETLIST                          R18 R19 3 [1]
      319 NEWTABLE                         R19 0 3
      321 LOADK                            R20 K90 ["CollisionMode"]
      322 LOADK                            R21 K91 ["mode"]
      323 LOADK                            R22 K92 ["Default, SingleCollider, Legacy"]
      324 SETLIST                          R19 R20 3 [1]
      326 NEWTABLE                         R20 0 3
      328 LOADK                            R21 K93 ["CustomAccessoryMode"]
      329 LOADK                            R22 K94 ["customAccessoryMode"]
      330 LOADK                            R23 K95 ["PlayerChoice, CustomAccessories"]
      331 SETLIST                          R20 R21 3 [1]
      333 NEWTABLE                         R21 0 3
      335 LOADK                            R22 K96 ["CustomClothingMode"]
      336 LOADK                            R23 K89 ["clothingCustomLimitMode"]
      337 LOADK                            R24 K97 ["PlayerChoice, CustomClothing"]
      338 SETLIST                          R21 R22 3 [1]
      340 NEWTABLE                         R22 0 3
      342 LOADK                            R23 K98 ["Preset"]
      343 LOADK                            R24 K99 ["presetType"]
      344 LOADK                            R25 K100 ["PlayerChoice, ConsistentGameplay"]
      345 SETLIST                          R22 R23 3 [1]
      347 NEWTABLE                         R23 0 3
      349 LOADK                            R24 K101 ["ScaleMode"]
      350 LOADK                            R25 K102 ["scaleMode"]
      351 LOADK                            R26 K103 ["PlayerChoice, CustomScale"]
      352 SETLIST                          R23 R24 3 [1]
      354 SETLIST                          R9 R10 14 [1]
      356 DUPTABLE                         R10 K109 [{["throttlingPercentage"], ["lastUpdated"], ["backends"], ["links"] = "https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"}]
      357 SETTABLEKS                       R2 R10 K104 ["throttlingPercentage"]
      359 NEWTABLE                         R11 0 3
      361 LOADN                            R12 2025
      362 LOADN                            R13 8
      363 LOADN                            R14 14
      364 SETLIST                          R11 R12 3 [1]
      366 SETTABLEKS                       R11 R10 K105 ["lastUpdated"]
      368 NEWTABLE                         R11 0 1
      370 LOADK                            R12 K110 ["RobloxTelemetryCounter"]
      371 SETLIST                          R11 R12 1 [1]
      373 SETTABLEKS                       R11 R10 K106 ["backends"]
      375 MOVE                             R11 R9
      376 LOADNIL                          R12
      377 LOADNIL                          R13
      378 FORGPREP                         R11
      379 FASTCALL1                        TABLE_UNPACK R15 ; [+3]
      380 MOVE                             R17 R15
      381 GETIMPORT                        R16 K112 [table.unpack]
      383 CALL                             R16 1 3
      384 MOVE                             R20 R16
      385 LOADK                            R21 K113 ["Selected"]
      386 CONCAT                           R19 R20 R21
      387 GETTABLEKS                       R20 R1 K114 ["Dictionary"]
      389 GETTABLEKS                       R20 R20 K115 ["join"]
      391 MOVE                             R21 R10
      392 DUPTABLE                         R22 K117 [{"description"}]
      393 GETIMPORT                        R23 K120 [string.format]
      395 LOADK                            R24 K121 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      396 MOVE                             R25 R16
      397 MOVE                             R26 R17
      398 MOVE                             R27 R18
      399 CALL                             R23 4 1
      400 SETTABLEKS                       R23 R22 K116 ["description"]
      402 CALL                             R20 2 1
      403 SETTABLE                         R20 R7 R19
      404 FORGLOOP                         R11 2 ; [-26]
      406 MOVE                             R11 R8
      407 LOADNIL                          R12
      408 LOADNIL                          R13
      409 FORGPREP                         R11
      410 FASTCALL1                        TABLE_UNPACK R15 ; [+3]
      411 MOVE                             R17 R15
      412 GETIMPORT                        R16 K112 [table.unpack]
      414 CALL                             R16 1 2
      415 GETTABLEKS                       R18 R1 K114 ["Dictionary"]
      417 GETTABLEKS                       R18 R18 K115 ["join"]
      419 MOVE                             R19 R10
      420 DUPTABLE                         R20 K117 [{"description"}]
      421 SETTABLEKS                       R17 R20 K116 ["description"]
      423 CALL                             R18 2 1
      424 SETTABLE                         R18 R7 R16
      425 FORGLOOP                         R11 2 ; [-16]
      427 RETURN                           R7 1
