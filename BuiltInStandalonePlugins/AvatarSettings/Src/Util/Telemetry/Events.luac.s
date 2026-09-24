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
       53 NEWTABLE                         R7 0 17
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
      129 LOADK                            R21 K38 ["CreatePlaceSettingsPressed"]
      130 LOADK                            R22 K39 ["Counter to track create place settings button presses"]
      131 SETLIST                          R20 R21 2 [1]
      133 NEWTABLE                         R21 0 2
      135 LOADK                            R22 K40 ["RevertChangesPressed"]
      136 LOADK                            R23 K41 ["Counter to track revert changes button presses"]
      137 SETLIST                          R21 R22 2 [1]
      139 NEWTABLE                         R22 0 2
      141 LOADK                            R23 K42 ["SaveChangesPressed"]
      142 LOADK                            R24 K43 ["Counter to track save changes button presses"]
      143 SETLIST                          R22 R23 2 [1]
      145 NEWTABLE                         R23 0 2
      147 LOADK                            R24 K44 ["SwitchedToTab"]
      148 LOADK                            R25 K45 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      149 SETLIST                          R23 R24 2 [1]
      151 SETLIST                          R7 R8 16 [1]
      153 NEWTABLE                         R8 0 2
      155 LOADK                            R24 K46 ["PublishedWithPreset"]
      156 LOADK                            R25 K47 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      157 SETLIST                          R8 R24 2 [1]
      159 SETLIST                          R7 R8 1 [17]
      161 MOVE                             R8 R3
      162 CALL                             R8 0 1
      163 JUMPIFNOT                        R8 ; [+24]
      164 NEWTABLE                         R10 0 2
      166 LOADK                            R11 K48 ["AbilityCrouchingToggled"]
      167 LOADK                            R12 K49 ["Counter to track whether abilities crouching enabled is toggled. Additional fields: enabled = [true, false]"]
      168 SETLIST                          R10 R11 2 [1]
      170 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      172 MOVE                             R9 R7
      173 GETIMPORT                        R8 K52 [table.insert]
      175 CALL                             R8 2 0
      176 NEWTABLE                         R10 0 2
      178 LOADK                            R11 K53 ["AbilitySprintingToggled"]
      179 LOADK                            R12 K54 ["Counter to track whether abilities sprinting enabled is toggled. Additional fields: enabled = [true, false]"]
      180 SETLIST                          R10 R11 2 [1]
      182 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      184 MOVE                             R9 R7
      185 GETIMPORT                        R8 K52 [table.insert]
      187 CALL                             R8 2 0
      188 MOVE                             R8 R5
      189 CALL                             R8 0 1
      190 JUMPIFNOT                        R8 ; [+12]
      191 NEWTABLE                         R10 0 2
      193 LOADK                            R11 K55 ["AbilityTurningToggled"]
      194 LOADK                            R12 K56 ["Counter to track whether abilities turning enabled is toggled. Additional fields: enabled = [true, false]"]
      195 SETLIST                          R10 R11 2 [1]
      197 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      199 MOVE                             R9 R7
      200 GETIMPORT                        R8 K52 [table.insert]
      202 CALL                             R8 2 0
      203 MOVE                             R8 R4
      204 CALL                             R8 0 1
      205 JUMPIFNOT                        R8 ; [+24]
      206 NEWTABLE                         R10 0 2
      208 LOADK                            R11 K57 ["AbilityHoldingToggled"]
      209 LOADK                            R12 K58 ["Counter to track whether abilities holding enabled is toggled. Additional fields: enabled = [true, false]"]
      210 SETLIST                          R10 R11 2 [1]
      212 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      214 MOVE                             R9 R7
      215 GETIMPORT                        R8 K52 [table.insert]
      217 CALL                             R8 2 0
      218 NEWTABLE                         R10 0 2
      220 LOADK                            R11 K59 ["AbilityReachingToggled"]
      221 LOADK                            R12 K60 ["Counter to track whether abilities reaching enabled is toggled. Additional fields: enabled = [true, false]"]
      222 SETLIST                          R10 R11 2 [1]
      224 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      226 MOVE                             R9 R7
      227 GETIMPORT                        R8 K52 [table.insert]
      229 CALL                             R8 2 0
      230 NEWTABLE                         R8 0 14
      232 NEWTABLE                         R9 0 3
      234 LOADK                            R10 K61 ["AbilityCharacterControllerMode"]
      235 LOADK                            R11 K62 ["abilityCharacterControllerMode"]
      236 LOADK                            R12 K63 ["LegacyHumanoid, LuaCharacterController"]
      237 SETLIST                          R9 R10 3 [1]
      239 NEWTABLE                         R10 0 3
      241 LOADK                            R11 K64 ["AccessoriesLimitMethod"]
      242 LOADK                            R12 K65 ["limitMethod"]
      243 LOADK                            R13 K66 ["Scale, Remove"]
      244 SETLIST                          R10 R11 3 [1]
      246 NEWTABLE                         R11 0 3
      248 LOADK                            R12 K67 ["AccessoryCustomLimitMode"]
      249 LOADK                            R13 K68 ["accessoryCustomLimitMode"]
      250 LOADK                            R14 K69 ["PlayerChoice, CustomLimit"]
      251 SETLIST                          R11 R12 3 [1]
      253 NEWTABLE                         R12 0 3
      255 LOADK                            R13 K70 ["AnimationClipsMode"]
      256 LOADK                            R14 K71 ["animationClipsMode"]
      257 LOADK                            R15 K72 ["PlayerChoice, CustomClips"]
      258 SETLIST                          R12 R13 3 [1]
      260 NEWTABLE                         R13 0 3
      262 LOADK                            R14 K73 ["AnimationPacksMode"]
      263 LOADK                            R15 K74 ["animationPacksMode"]
      264 LOADK                            R16 K75 ["PlayerChoice, StandardR15, StandardR6"]
      265 SETLIST                          R13 R14 3 [1]
      267 NEWTABLE                         R14 0 3
      269 LOADK                            R15 K76 ["AppearanceMode"]
      270 LOADK                            R16 K77 ["appearanceMode"]
      271 LOADK                            R17 K78 ["PlayerChoice, CustomParts"]
      272 SETLIST                          R14 R15 3 [1]
      274 NEWTABLE                         R15 0 3
      276 LOADK                            R16 K79 ["AvatarType"]
      277 LOADK                            R17 K80 ["avatarType"]
      278 LOADK                            R18 K81 ["R15, R6, PlayerChoice"]
      279 SETLIST                          R15 R16 3 [1]
      281 NEWTABLE                         R16 0 3
      283 LOADK                            R17 K82 ["BuildMode"]
      284 LOADK                            R18 K83 ["buildMode"]
      285 LOADK                            R19 K84 ["PlayerChoice, CustomBuild"]
      286 SETLIST                          R16 R17 3 [1]
      288 NEWTABLE                         R17 0 3
      290 LOADK                            R18 K85 ["ClothingCustomLimitMode"]
      291 LOADK                            R19 K86 ["clothingCustomLimitMode"]
      292 LOADK                            R20 K69 ["PlayerChoice, CustomLimit"]
      293 SETLIST                          R17 R18 3 [1]
      295 NEWTABLE                         R18 0 3
      297 LOADK                            R19 K87 ["CollisionMode"]
      298 LOADK                            R20 K88 ["mode"]
      299 LOADK                            R21 K89 ["Default, SingleCollider, Legacy"]
      300 SETLIST                          R18 R19 3 [1]
      302 NEWTABLE                         R19 0 3
      304 LOADK                            R20 K90 ["CustomAccessoryMode"]
      305 LOADK                            R21 K91 ["customAccessoryMode"]
      306 LOADK                            R22 K92 ["PlayerChoice, CustomAccessories"]
      307 SETLIST                          R19 R20 3 [1]
      309 NEWTABLE                         R20 0 3
      311 LOADK                            R21 K93 ["CustomClothingMode"]
      312 LOADK                            R22 K86 ["clothingCustomLimitMode"]
      313 LOADK                            R23 K94 ["PlayerChoice, CustomClothing"]
      314 SETLIST                          R20 R21 3 [1]
      316 NEWTABLE                         R21 0 3
      318 LOADK                            R22 K95 ["Preset"]
      319 LOADK                            R23 K96 ["presetType"]
      320 LOADK                            R24 K97 ["PlayerChoice, ConsistentGameplay"]
      321 SETLIST                          R21 R22 3 [1]
      323 NEWTABLE                         R22 0 3
      325 LOADK                            R23 K98 ["ScaleMode"]
      326 LOADK                            R24 K99 ["scaleMode"]
      327 LOADK                            R25 K100 ["PlayerChoice, CustomScale"]
      328 SETLIST                          R22 R23 3 [1]
      330 SETLIST                          R8 R9 14 [1]
      332 DUPTABLE                         R9 K106 [{["throttlingPercentage"], ["lastUpdated"], ["backends"], ["links"] = "https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"}]
      333 SETTABLEKS                       R2 R9 K101 ["throttlingPercentage"]
      335 NEWTABLE                         R10 0 3
      337 LOADN                            R11 2025
      338 LOADN                            R12 8
      339 LOADN                            R13 14
      340 SETLIST                          R10 R11 3 [1]
      342 SETTABLEKS                       R10 R9 K102 ["lastUpdated"]
      344 NEWTABLE                         R10 0 1
      346 LOADK                            R11 K107 ["RobloxTelemetryCounter"]
      347 SETLIST                          R10 R11 1 [1]
      349 SETTABLEKS                       R10 R9 K103 ["backends"]
      351 MOVE                             R10 R8
      352 LOADNIL                          R11
      353 LOADNIL                          R12
      354 FORGPREP                         R10
      355 FASTCALL1                        TABLE_UNPACK R14 ; [+3]
      356 MOVE                             R16 R14
      357 GETIMPORT                        R15 K109 [table.unpack]
      359 CALL                             R15 1 3
      360 MOVE                             R19 R15
      361 LOADK                            R20 K110 ["Selected"]
      362 CONCAT                           R18 R19 R20
      363 GETTABLEKS                       R19 R1 K111 ["Dictionary"]
      365 GETTABLEKS                       R19 R19 K112 ["join"]
      367 MOVE                             R20 R9
      368 DUPTABLE                         R21 K114 [{"description"}]
      369 GETIMPORT                        R22 K117 [string.format]
      371 LOADK                            R23 K118 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      372 MOVE                             R24 R15
      373 MOVE                             R25 R16
      374 MOVE                             R26 R17
      375 CALL                             R22 4 1
      376 SETTABLEKS                       R22 R21 K113 ["description"]
      378 CALL                             R19 2 1
      379 SETTABLE                         R19 R6 R18
      380 FORGLOOP                         R10 2 ; [-26]
      382 MOVE                             R10 R7
      383 LOADNIL                          R11
      384 LOADNIL                          R12
      385 FORGPREP                         R10
      386 FASTCALL1                        TABLE_UNPACK R14 ; [+3]
      387 MOVE                             R16 R14
      388 GETIMPORT                        R15 K109 [table.unpack]
      390 CALL                             R15 1 2
      391 GETTABLEKS                       R17 R1 K111 ["Dictionary"]
      393 GETTABLEKS                       R17 R17 K112 ["join"]
      395 MOVE                             R18 R9
      396 DUPTABLE                         R19 K114 [{"description"}]
      397 SETTABLEKS                       R16 R19 K113 ["description"]
      399 CALL                             R17 2 1
      400 SETTABLE                         R17 R6 R15
      401 FORGLOOP                         R10 2 ; [-16]
      403 RETURN                           R6 1
