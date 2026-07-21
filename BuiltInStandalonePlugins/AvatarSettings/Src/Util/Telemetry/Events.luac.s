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
       33 NEWTABLE                         R4 0 0
       35 MOVE                             R6 R3
       36 CALL                             R6 0 1
       37 JUMPIFNOT                        R6 ; [+133]
       38 NEWTABLE                         R5 0 21
       40 NEWTABLE                         R6 0 2
       42 LOADK                            R7 K12 ["AbilityClimbingToggled"]
       43 LOADK                            R8 K13 ["Counter to track whether abilities climbing enabled is toggled. Additional fields: enabled = [true, false]"]
       44 SETLIST                          R6 R7 2 [1]
       46 NEWTABLE                         R7 0 2
       48 LOADK                            R8 K14 ["AbilityCrouchingToggled"]
       49 LOADK                            R9 K15 ["Counter to track whether abilities crouching enabled is toggled. Additional fields: enabled = [true, false]"]
       50 SETLIST                          R7 R8 2 [1]
       52 NEWTABLE                         R8 0 2
       54 LOADK                            R9 K16 ["AbilityFallingDownToggled"]
       55 LOADK                            R10 K17 ["Counter to track whether abilities falling down enabled is toggled. Additional fields: enabled = [true, false]"]
       56 SETLIST                          R8 R9 2 [1]
       58 NEWTABLE                         R9 0 2
       60 LOADK                            R10 K18 ["AbilityGettingUpToggled"]
       61 LOADK                            R11 K19 ["Counter to track whether abilities getting up enabled is toggled. Additional fields: enabled = [true, false]"]
       62 SETLIST                          R9 R10 2 [1]
       64 NEWTABLE                         R10 0 2
       66 LOADK                            R11 K20 ["AbilityHoldingToggled"]
       67 LOADK                            R12 K21 ["Counter to track whether abilities holding enabled is toggled. Additional fields: enabled = [true, false]"]
       68 SETLIST                          R10 R11 2 [1]
       70 NEWTABLE                         R11 0 2
       72 LOADK                            R12 K22 ["AbilityJumpingToggled"]
       73 LOADK                            R13 K23 ["Counter to track whether abilities jumping enabled is toggled. Additional fields: enabled = [true, false]"]
       74 SETLIST                          R11 R12 2 [1]
       76 NEWTABLE                         R12 0 2
       78 LOADK                            R13 K24 ["AbilityReachingToggled"]
       79 LOADK                            R14 K25 ["Counter to track whether abilities reaching enabled is toggled. Additional fields: enabled = [true, false]"]
       80 SETLIST                          R12 R13 2 [1]
       82 NEWTABLE                         R13 0 2
       84 LOADK                            R14 K26 ["AbilityRunningToggled"]
       85 LOADK                            R15 K27 ["Counter to track whether abilities running enabled is toggled. Additional fields: enabled = [true, false]"]
       86 SETLIST                          R13 R14 2 [1]
       88 NEWTABLE                         R14 0 2
       90 LOADK                            R15 K28 ["AbilitySittingToggled"]
       91 LOADK                            R16 K29 ["Counter to track whether abilities sitting enabled is toggled. Additional fields: enabled = [true, false]"]
       92 SETLIST                          R14 R15 2 [1]
       94 NEWTABLE                         R15 0 2
       96 LOADK                            R16 K30 ["AbilitySprintingToggled"]
       97 LOADK                            R17 K31 ["Counter to track whether abilities sprinting enabled is toggled. Additional fields: enabled = [true, false]"]
       98 SETLIST                          R15 R16 2 [1]
      100 NEWTABLE                         R16 0 2
      102 LOADK                            R17 K32 ["AbilityStrafingToggled"]
      103 LOADK                            R18 K33 ["Counter to track whether abilities strafing enabled is toggled. Additional fields: enabled = [true, false]"]
      104 SETLIST                          R16 R17 2 [1]
      106 NEWTABLE                         R17 0 2
      108 LOADK                            R18 K34 ["AbilitySwimmingToggled"]
      109 LOADK                            R19 K35 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
      110 SETLIST                          R17 R18 2 [1]
      112 NEWTABLE                         R18 0 2
      114 LOADK                            R19 K36 ["AccessorySoundToggled"]
      115 LOADK                            R20 K37 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
      116 SETLIST                          R18 R19 2 [1]
      118 NEWTABLE                         R19 0 2
      120 LOADK                            R20 K38 ["AccessoryVFXToggled"]
      121 LOADK                            R21 K39 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
      122 SETLIST                          R19 R20 2 [1]
      124 NEWTABLE                         R20 0 2
      126 LOADK                            R21 K40 ["AccessoryEmissivesToggled"]
      127 LOADK                            R22 K41 ["Counter to track whether emissives enabled is toggled. Additional fields: enabled = [true, false]"]
      128 SETLIST                          R20 R21 2 [1]
      130 NEWTABLE                         R21 0 2
      132 LOADK                            R22 K42 ["AvatarTypeMenuOpened"]
      133 LOADK                            R23 K43 ["Counter to track avatar type dropdown opens"]
      134 SETLIST                          R21 R22 2 [1]
      136 SETLIST                          R5 R6 16 [1]
      138 NEWTABLE                         R6 0 2
      140 LOADK                            R7 K44 ["PreviewToggled"]
      141 LOADK                            R8 K45 ["Counter to track preview button toggles"]
      142 SETLIST                          R6 R7 2 [1]
      144 NEWTABLE                         R7 0 2
      146 LOADK                            R8 K46 ["RevertChangesPressed"]
      147 LOADK                            R9 K47 ["Counter to track revert changes button presses"]
      148 SETLIST                          R7 R8 2 [1]
      150 NEWTABLE                         R8 0 2
      152 LOADK                            R9 K48 ["SaveChangesPressed"]
      153 LOADK                            R10 K49 ["Counter to track save changes button presses"]
      154 SETLIST                          R8 R9 2 [1]
      156 NEWTABLE                         R9 0 2
      158 LOADK                            R10 K50 ["SwitchedToTab"]
      159 LOADK                            R11 K51 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      160 SETLIST                          R9 R10 2 [1]
      162 NEWTABLE                         R10 0 2
      164 LOADK                            R22 K52 ["PublishedWithPreset"]
      165 LOADK                            R23 K53 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      166 SETLIST                          R10 R22 2 [1]
      168 SETLIST                          R5 R6 5 [17]
      170 JUMP                             ; [+100]
      171 NEWTABLE                         R5 0 16
      173 NEWTABLE                         R6 0 2
      175 LOADK                            R7 K26 ["AbilityRunningToggled"]
      176 LOADK                            R8 K27 ["Counter to track whether abilities running enabled is toggled. Additional fields: enabled = [true, false]"]
      177 SETLIST                          R6 R7 2 [1]
      179 NEWTABLE                         R7 0 2
      181 LOADK                            R8 K22 ["AbilityJumpingToggled"]
      182 LOADK                            R9 K23 ["Counter to track whether abilities jumping enabled is toggled. Additional fields: enabled = [true, false]"]
      183 SETLIST                          R7 R8 2 [1]
      185 NEWTABLE                         R8 0 2
      187 LOADK                            R9 K28 ["AbilitySittingToggled"]
      188 LOADK                            R10 K29 ["Counter to track whether abilities sitting enabled is toggled. Additional fields: enabled = [true, false]"]
      189 SETLIST                          R8 R9 2 [1]
      191 NEWTABLE                         R9 0 2
      193 LOADK                            R10 K16 ["AbilityFallingDownToggled"]
      194 LOADK                            R11 K17 ["Counter to track whether abilities falling down enabled is toggled. Additional fields: enabled = [true, false]"]
      195 SETLIST                          R9 R10 2 [1]
      197 NEWTABLE                         R10 0 2
      199 LOADK                            R11 K18 ["AbilityGettingUpToggled"]
      200 LOADK                            R12 K19 ["Counter to track whether abilities getting up enabled is toggled. Additional fields: enabled = [true, false]"]
      201 SETLIST                          R10 R11 2 [1]
      203 NEWTABLE                         R11 0 2
      205 LOADK                            R12 K12 ["AbilityClimbingToggled"]
      206 LOADK                            R13 K13 ["Counter to track whether abilities climbing enabled is toggled. Additional fields: enabled = [true, false]"]
      207 SETLIST                          R11 R12 2 [1]
      209 NEWTABLE                         R12 0 2
      211 LOADK                            R13 K34 ["AbilitySwimmingToggled"]
      212 LOADK                            R14 K35 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
      213 SETLIST                          R12 R13 2 [1]
      215 NEWTABLE                         R13 0 2
      217 LOADK                            R14 K36 ["AccessorySoundToggled"]
      218 LOADK                            R15 K37 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
      219 SETLIST                          R13 R14 2 [1]
      221 NEWTABLE                         R14 0 2
      223 LOADK                            R15 K38 ["AccessoryVFXToggled"]
      224 LOADK                            R16 K39 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
      225 SETLIST                          R14 R15 2 [1]
      227 NEWTABLE                         R15 0 2
      229 LOADK                            R16 K40 ["AccessoryEmissivesToggled"]
      230 LOADK                            R17 K41 ["Counter to track whether emissives enabled is toggled. Additional fields: enabled = [true, false]"]
      231 SETLIST                          R15 R16 2 [1]
      233 NEWTABLE                         R16 0 2
      235 LOADK                            R17 K42 ["AvatarTypeMenuOpened"]
      236 LOADK                            R18 K43 ["Counter to track avatar type dropdown opens"]
      237 SETLIST                          R16 R17 2 [1]
      239 NEWTABLE                         R17 0 2
      241 LOADK                            R18 K44 ["PreviewToggled"]
      242 LOADK                            R19 K45 ["Counter to track preview button toggles"]
      243 SETLIST                          R17 R18 2 [1]
      245 NEWTABLE                         R18 0 2
      247 LOADK                            R19 K46 ["RevertChangesPressed"]
      248 LOADK                            R20 K47 ["Counter to track revert changes button presses"]
      249 SETLIST                          R18 R19 2 [1]
      251 NEWTABLE                         R19 0 2
      253 LOADK                            R20 K48 ["SaveChangesPressed"]
      254 LOADK                            R21 K49 ["Counter to track save changes button presses"]
      255 SETLIST                          R19 R20 2 [1]
      257 NEWTABLE                         R20 0 2
      259 LOADK                            R21 K50 ["SwitchedToTab"]
      260 LOADK                            R22 K51 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      261 SETLIST                          R20 R21 2 [1]
      263 NEWTABLE                         R21 0 2
      265 LOADK                            R22 K52 ["PublishedWithPreset"]
      266 LOADK                            R23 K53 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      267 SETLIST                          R21 R22 2 [1]
      269 SETLIST                          R5 R6 16 [1]
      271 NEWTABLE                         R6 0 14
      273 NEWTABLE                         R7 0 3
      275 LOADK                            R8 K54 ["AbilityCharacterControllerMode"]
      276 LOADK                            R9 K55 ["abilityCharacterControllerMode"]
      277 LOADK                            R10 K56 ["LegacyHumanoid, LuaCharacterController"]
      278 SETLIST                          R7 R8 3 [1]
      280 NEWTABLE                         R8 0 3
      282 LOADK                            R9 K57 ["AccessoriesLimitMethod"]
      283 LOADK                            R10 K58 ["limitMethod"]
      284 LOADK                            R11 K59 ["Scale, Remove"]
      285 SETLIST                          R8 R9 3 [1]
      287 NEWTABLE                         R9 0 3
      289 LOADK                            R10 K60 ["AccessoryCustomLimitMode"]
      290 LOADK                            R11 K61 ["accessoryCustomLimitMode"]
      291 LOADK                            R12 K62 ["PlayerChoice, CustomLimit"]
      292 SETLIST                          R9 R10 3 [1]
      294 NEWTABLE                         R10 0 3
      296 LOADK                            R11 K63 ["AnimationClipsMode"]
      297 LOADK                            R12 K64 ["animationClipsMode"]
      298 LOADK                            R13 K65 ["PlayerChoice, CustomClips"]
      299 SETLIST                          R10 R11 3 [1]
      301 NEWTABLE                         R11 0 3
      303 LOADK                            R12 K66 ["AnimationPacksMode"]
      304 LOADK                            R13 K67 ["animationPacksMode"]
      305 LOADK                            R14 K68 ["PlayerChoice, StandardR15, StandardR6"]
      306 SETLIST                          R11 R12 3 [1]
      308 NEWTABLE                         R12 0 3
      310 LOADK                            R13 K69 ["AppearanceMode"]
      311 LOADK                            R14 K70 ["appearanceMode"]
      312 LOADK                            R15 K71 ["PlayerChoice, CustomParts"]
      313 SETLIST                          R12 R13 3 [1]
      315 NEWTABLE                         R13 0 3
      317 LOADK                            R14 K72 ["AvatarType"]
      318 LOADK                            R15 K73 ["avatarType"]
      319 LOADK                            R16 K74 ["R15, R6, PlayerChoice"]
      320 SETLIST                          R13 R14 3 [1]
      322 NEWTABLE                         R14 0 3
      324 LOADK                            R15 K75 ["BuildMode"]
      325 LOADK                            R16 K76 ["buildMode"]
      326 LOADK                            R17 K77 ["PlayerChoice, CustomBuild"]
      327 SETLIST                          R14 R15 3 [1]
      329 NEWTABLE                         R15 0 3
      331 LOADK                            R16 K78 ["ClothingCustomLimitMode"]
      332 LOADK                            R17 K79 ["clothingCustomLimitMode"]
      333 LOADK                            R18 K62 ["PlayerChoice, CustomLimit"]
      334 SETLIST                          R15 R16 3 [1]
      336 NEWTABLE                         R16 0 3
      338 LOADK                            R17 K80 ["CollisionMode"]
      339 LOADK                            R18 K81 ["mode"]
      340 LOADK                            R19 K82 ["Default, SingleCollider, Legacy"]
      341 SETLIST                          R16 R17 3 [1]
      343 NEWTABLE                         R17 0 3
      345 LOADK                            R18 K83 ["CustomAccessoryMode"]
      346 LOADK                            R19 K84 ["customAccessoryMode"]
      347 LOADK                            R20 K85 ["PlayerChoice, CustomAccessories"]
      348 SETLIST                          R17 R18 3 [1]
      350 NEWTABLE                         R18 0 3
      352 LOADK                            R19 K86 ["CustomClothingMode"]
      353 LOADK                            R20 K79 ["clothingCustomLimitMode"]
      354 LOADK                            R21 K87 ["PlayerChoice, CustomClothing"]
      355 SETLIST                          R18 R19 3 [1]
      357 NEWTABLE                         R19 0 3
      359 LOADK                            R20 K88 ["Preset"]
      360 LOADK                            R21 K89 ["presetType"]
      361 LOADK                            R22 K90 ["PlayerChoice, ConsistentGameplay"]
      362 SETLIST                          R19 R20 3 [1]
      364 NEWTABLE                         R20 0 3
      366 LOADK                            R21 K91 ["ScaleMode"]
      367 LOADK                            R22 K92 ["scaleMode"]
      368 LOADK                            R23 K93 ["PlayerChoice, CustomScale"]
      369 SETLIST                          R20 R21 3 [1]
      371 SETLIST                          R6 R7 14 [1]
      373 DUPTABLE                         R7 K99 [{["throttlingPercentage"], ["lastUpdated"], ["backends"], ["links"] = "https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"}]
      374 SETTABLEKS                       R2 R7 K94 ["throttlingPercentage"]
      376 NEWTABLE                         R8 0 3
      378 LOADN                            R9 2025
      379 LOADN                            R10 8
      380 LOADN                            R11 14
      381 SETLIST                          R8 R9 3 [1]
      383 SETTABLEKS                       R8 R7 K95 ["lastUpdated"]
      385 NEWTABLE                         R8 0 1
      387 LOADK                            R9 K100 ["RobloxTelemetryCounter"]
      388 SETLIST                          R8 R9 1 [1]
      390 SETTABLEKS                       R8 R7 K96 ["backends"]
      392 MOVE                             R8 R6
      393 LOADNIL                          R9
      394 LOADNIL                          R10
      395 FORGPREP                         R8
      396 FASTCALL1                        TABLE_UNPACK R12 ; [+3]
      397 MOVE                             R14 R12
      398 GETIMPORT                        R13 K103 [table.unpack]
      400 CALL                             R13 1 3
      401 MOVE                             R17 R13
      402 LOADK                            R18 K104 ["Selected"]
      403 CONCAT                           R16 R17 R18
      404 GETTABLEKS                       R17 R1 K105 ["Dictionary"]
      406 GETTABLEKS                       R17 R17 K106 ["join"]
      408 MOVE                             R18 R7
      409 DUPTABLE                         R19 K108 [{"description"}]
      410 GETIMPORT                        R20 K111 [string.format]
      412 LOADK                            R21 K112 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      413 MOVE                             R22 R13
      414 MOVE                             R23 R14
      415 MOVE                             R24 R15
      416 CALL                             R20 4 1
      417 SETTABLEKS                       R20 R19 K107 ["description"]
      419 CALL                             R17 2 1
      420 SETTABLE                         R17 R4 R16
      421 FORGLOOP                         R8 2 ; [-26]
      423 MOVE                             R8 R5
      424 LOADNIL                          R9
      425 LOADNIL                          R10
      426 FORGPREP                         R8
      427 FASTCALL1                        TABLE_UNPACK R12 ; [+3]
      428 MOVE                             R14 R12
      429 GETIMPORT                        R13 K103 [table.unpack]
      431 CALL                             R13 1 2
      432 GETTABLEKS                       R15 R1 K105 ["Dictionary"]
      434 GETTABLEKS                       R15 R15 K106 ["join"]
      436 MOVE                             R16 R7
      437 DUPTABLE                         R17 K108 [{"description"}]
      438 SETTABLEKS                       R14 R17 K107 ["description"]
      440 CALL                             R15 2 1
      441 SETTABLE                         R15 R4 R13
      442 FORGLOOP                         R8 2 ; [-16]
      444 RETURN                           R4 1
