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
       37 JUMPIFNOT                        R6 ; [+127]
       38 NEWTABLE                         R5 0 20
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
      102 LOADK                            R17 K32 ["AbilitySwimmingToggled"]
      103 LOADK                            R18 K33 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
      104 SETLIST                          R16 R17 2 [1]
      106 NEWTABLE                         R17 0 2
      108 LOADK                            R18 K34 ["AccessorySoundToggled"]
      109 LOADK                            R19 K35 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
      110 SETLIST                          R17 R18 2 [1]
      112 NEWTABLE                         R18 0 2
      114 LOADK                            R19 K36 ["AccessoryVFXToggled"]
      115 LOADK                            R20 K37 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
      116 SETLIST                          R18 R19 2 [1]
      118 NEWTABLE                         R19 0 2
      120 LOADK                            R20 K38 ["AccessoryEmissivesToggled"]
      121 LOADK                            R21 K39 ["Counter to track whether emissives enabled is toggled. Additional fields: enabled = [true, false]"]
      122 SETLIST                          R19 R20 2 [1]
      124 NEWTABLE                         R20 0 2
      126 LOADK                            R21 K40 ["AvatarTypeMenuOpened"]
      127 LOADK                            R22 K41 ["Counter to track avatar type dropdown opens"]
      128 SETLIST                          R20 R21 2 [1]
      130 NEWTABLE                         R21 0 2
      132 LOADK                            R22 K42 ["PreviewToggled"]
      133 LOADK                            R23 K43 ["Counter to track preview button toggles"]
      134 SETLIST                          R21 R22 2 [1]
      136 SETLIST                          R5 R6 16 [1]
      138 NEWTABLE                         R6 0 2
      140 LOADK                            R7 K44 ["RevertChangesPressed"]
      141 LOADK                            R8 K45 ["Counter to track revert changes button presses"]
      142 SETLIST                          R6 R7 2 [1]
      144 NEWTABLE                         R7 0 2
      146 LOADK                            R8 K46 ["SaveChangesPressed"]
      147 LOADK                            R9 K47 ["Counter to track save changes button presses"]
      148 SETLIST                          R7 R8 2 [1]
      150 NEWTABLE                         R8 0 2
      152 LOADK                            R9 K48 ["SwitchedToTab"]
      153 LOADK                            R10 K49 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      154 SETLIST                          R8 R9 2 [1]
      156 NEWTABLE                         R9 0 2
      158 LOADK                            R22 K50 ["PublishedWithPreset"]
      159 LOADK                            R23 K51 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      160 SETLIST                          R9 R22 2 [1]
      162 SETLIST                          R5 R6 4 [17]
      164 JUMP                             ; [+100]
      165 NEWTABLE                         R5 0 16
      167 NEWTABLE                         R6 0 2
      169 LOADK                            R7 K26 ["AbilityRunningToggled"]
      170 LOADK                            R8 K27 ["Counter to track whether abilities running enabled is toggled. Additional fields: enabled = [true, false]"]
      171 SETLIST                          R6 R7 2 [1]
      173 NEWTABLE                         R7 0 2
      175 LOADK                            R8 K22 ["AbilityJumpingToggled"]
      176 LOADK                            R9 K23 ["Counter to track whether abilities jumping enabled is toggled. Additional fields: enabled = [true, false]"]
      177 SETLIST                          R7 R8 2 [1]
      179 NEWTABLE                         R8 0 2
      181 LOADK                            R9 K28 ["AbilitySittingToggled"]
      182 LOADK                            R10 K29 ["Counter to track whether abilities sitting enabled is toggled. Additional fields: enabled = [true, false]"]
      183 SETLIST                          R8 R9 2 [1]
      185 NEWTABLE                         R9 0 2
      187 LOADK                            R10 K16 ["AbilityFallingDownToggled"]
      188 LOADK                            R11 K17 ["Counter to track whether abilities falling down enabled is toggled. Additional fields: enabled = [true, false]"]
      189 SETLIST                          R9 R10 2 [1]
      191 NEWTABLE                         R10 0 2
      193 LOADK                            R11 K18 ["AbilityGettingUpToggled"]
      194 LOADK                            R12 K19 ["Counter to track whether abilities getting up enabled is toggled. Additional fields: enabled = [true, false]"]
      195 SETLIST                          R10 R11 2 [1]
      197 NEWTABLE                         R11 0 2
      199 LOADK                            R12 K12 ["AbilityClimbingToggled"]
      200 LOADK                            R13 K13 ["Counter to track whether abilities climbing enabled is toggled. Additional fields: enabled = [true, false]"]
      201 SETLIST                          R11 R12 2 [1]
      203 NEWTABLE                         R12 0 2
      205 LOADK                            R13 K32 ["AbilitySwimmingToggled"]
      206 LOADK                            R14 K33 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
      207 SETLIST                          R12 R13 2 [1]
      209 NEWTABLE                         R13 0 2
      211 LOADK                            R14 K34 ["AccessorySoundToggled"]
      212 LOADK                            R15 K35 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
      213 SETLIST                          R13 R14 2 [1]
      215 NEWTABLE                         R14 0 2
      217 LOADK                            R15 K36 ["AccessoryVFXToggled"]
      218 LOADK                            R16 K37 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
      219 SETLIST                          R14 R15 2 [1]
      221 NEWTABLE                         R15 0 2
      223 LOADK                            R16 K38 ["AccessoryEmissivesToggled"]
      224 LOADK                            R17 K39 ["Counter to track whether emissives enabled is toggled. Additional fields: enabled = [true, false]"]
      225 SETLIST                          R15 R16 2 [1]
      227 NEWTABLE                         R16 0 2
      229 LOADK                            R17 K40 ["AvatarTypeMenuOpened"]
      230 LOADK                            R18 K41 ["Counter to track avatar type dropdown opens"]
      231 SETLIST                          R16 R17 2 [1]
      233 NEWTABLE                         R17 0 2
      235 LOADK                            R18 K42 ["PreviewToggled"]
      236 LOADK                            R19 K43 ["Counter to track preview button toggles"]
      237 SETLIST                          R17 R18 2 [1]
      239 NEWTABLE                         R18 0 2
      241 LOADK                            R19 K44 ["RevertChangesPressed"]
      242 LOADK                            R20 K45 ["Counter to track revert changes button presses"]
      243 SETLIST                          R18 R19 2 [1]
      245 NEWTABLE                         R19 0 2
      247 LOADK                            R20 K46 ["SaveChangesPressed"]
      248 LOADK                            R21 K47 ["Counter to track save changes button presses"]
      249 SETLIST                          R19 R20 2 [1]
      251 NEWTABLE                         R20 0 2
      253 LOADK                            R21 K48 ["SwitchedToTab"]
      254 LOADK                            R22 K49 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      255 SETLIST                          R20 R21 2 [1]
      257 NEWTABLE                         R21 0 2
      259 LOADK                            R22 K50 ["PublishedWithPreset"]
      260 LOADK                            R23 K51 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      261 SETLIST                          R21 R22 2 [1]
      263 SETLIST                          R5 R6 16 [1]
      265 NEWTABLE                         R6 0 14
      267 NEWTABLE                         R7 0 3
      269 LOADK                            R8 K52 ["AbilityCharacterControllerMode"]
      270 LOADK                            R9 K53 ["abilityCharacterControllerMode"]
      271 LOADK                            R10 K54 ["LegacyHumanoid, LuaCharacterController"]
      272 SETLIST                          R7 R8 3 [1]
      274 NEWTABLE                         R8 0 3
      276 LOADK                            R9 K55 ["AccessoriesLimitMethod"]
      277 LOADK                            R10 K56 ["limitMethod"]
      278 LOADK                            R11 K57 ["Scale, Remove"]
      279 SETLIST                          R8 R9 3 [1]
      281 NEWTABLE                         R9 0 3
      283 LOADK                            R10 K58 ["AccessoryCustomLimitMode"]
      284 LOADK                            R11 K59 ["accessoryCustomLimitMode"]
      285 LOADK                            R12 K60 ["PlayerChoice, CustomLimit"]
      286 SETLIST                          R9 R10 3 [1]
      288 NEWTABLE                         R10 0 3
      290 LOADK                            R11 K61 ["AnimationClipsMode"]
      291 LOADK                            R12 K62 ["animationClipsMode"]
      292 LOADK                            R13 K63 ["PlayerChoice, CustomClips"]
      293 SETLIST                          R10 R11 3 [1]
      295 NEWTABLE                         R11 0 3
      297 LOADK                            R12 K64 ["AnimationPacksMode"]
      298 LOADK                            R13 K65 ["animationPacksMode"]
      299 LOADK                            R14 K66 ["PlayerChoice, StandardR15, StandardR6"]
      300 SETLIST                          R11 R12 3 [1]
      302 NEWTABLE                         R12 0 3
      304 LOADK                            R13 K67 ["AppearanceMode"]
      305 LOADK                            R14 K68 ["appearanceMode"]
      306 LOADK                            R15 K69 ["PlayerChoice, CustomParts"]
      307 SETLIST                          R12 R13 3 [1]
      309 NEWTABLE                         R13 0 3
      311 LOADK                            R14 K70 ["AvatarType"]
      312 LOADK                            R15 K71 ["avatarType"]
      313 LOADK                            R16 K72 ["R15, R6, PlayerChoice"]
      314 SETLIST                          R13 R14 3 [1]
      316 NEWTABLE                         R14 0 3
      318 LOADK                            R15 K73 ["BuildMode"]
      319 LOADK                            R16 K74 ["buildMode"]
      320 LOADK                            R17 K75 ["PlayerChoice, CustomBuild"]
      321 SETLIST                          R14 R15 3 [1]
      323 NEWTABLE                         R15 0 3
      325 LOADK                            R16 K76 ["ClothingCustomLimitMode"]
      326 LOADK                            R17 K77 ["clothingCustomLimitMode"]
      327 LOADK                            R18 K60 ["PlayerChoice, CustomLimit"]
      328 SETLIST                          R15 R16 3 [1]
      330 NEWTABLE                         R16 0 3
      332 LOADK                            R17 K78 ["CollisionMode"]
      333 LOADK                            R18 K79 ["mode"]
      334 LOADK                            R19 K80 ["Default, SingleCollider, Legacy"]
      335 SETLIST                          R16 R17 3 [1]
      337 NEWTABLE                         R17 0 3
      339 LOADK                            R18 K81 ["CustomAccessoryMode"]
      340 LOADK                            R19 K82 ["customAccessoryMode"]
      341 LOADK                            R20 K83 ["PlayerChoice, CustomAccessories"]
      342 SETLIST                          R17 R18 3 [1]
      344 NEWTABLE                         R18 0 3
      346 LOADK                            R19 K84 ["CustomClothingMode"]
      347 LOADK                            R20 K77 ["clothingCustomLimitMode"]
      348 LOADK                            R21 K85 ["PlayerChoice, CustomClothing"]
      349 SETLIST                          R18 R19 3 [1]
      351 NEWTABLE                         R19 0 3
      353 LOADK                            R20 K86 ["Preset"]
      354 LOADK                            R21 K87 ["presetType"]
      355 LOADK                            R22 K88 ["PlayerChoice, ConsistentGameplay"]
      356 SETLIST                          R19 R20 3 [1]
      358 NEWTABLE                         R20 0 3
      360 LOADK                            R21 K89 ["ScaleMode"]
      361 LOADK                            R22 K90 ["scaleMode"]
      362 LOADK                            R23 K91 ["PlayerChoice, CustomScale"]
      363 SETLIST                          R20 R21 3 [1]
      365 SETLIST                          R6 R7 14 [1]
      367 DUPTABLE                         R7 K97 [{["throttlingPercentage"], ["lastUpdated"], ["backends"], ["links"] = "https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"}]
      368 SETTABLEKS                       R2 R7 K92 ["throttlingPercentage"]
      370 NEWTABLE                         R8 0 3
      372 LOADN                            R9 2025
      373 LOADN                            R10 8
      374 LOADN                            R11 14
      375 SETLIST                          R8 R9 3 [1]
      377 SETTABLEKS                       R8 R7 K93 ["lastUpdated"]
      379 NEWTABLE                         R8 0 1
      381 LOADK                            R9 K98 ["RobloxTelemetryCounter"]
      382 SETLIST                          R8 R9 1 [1]
      384 SETTABLEKS                       R8 R7 K94 ["backends"]
      386 MOVE                             R8 R6
      387 LOADNIL                          R9
      388 LOADNIL                          R10
      389 FORGPREP                         R8
      390 FASTCALL1                        TABLE_UNPACK R12 ; [+3]
      391 MOVE                             R14 R12
      392 GETIMPORT                        R13 K101 [table.unpack]
      394 CALL                             R13 1 3
      395 MOVE                             R17 R13
      396 LOADK                            R18 K102 ["Selected"]
      397 CONCAT                           R16 R17 R18
      398 GETTABLEKS                       R17 R1 K103 ["Dictionary"]
      400 GETTABLEKS                       R17 R17 K104 ["join"]
      402 MOVE                             R18 R7
      403 DUPTABLE                         R19 K106 [{"description"}]
      404 GETIMPORT                        R20 K109 [string.format]
      406 LOADK                            R21 K110 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      407 MOVE                             R22 R13
      408 MOVE                             R23 R14
      409 MOVE                             R24 R15
      410 CALL                             R20 4 1
      411 SETTABLEKS                       R20 R19 K105 ["description"]
      413 CALL                             R17 2 1
      414 SETTABLE                         R17 R4 R16
      415 FORGLOOP                         R8 2 ; [-26]
      417 MOVE                             R8 R5
      418 LOADNIL                          R9
      419 LOADNIL                          R10
      420 FORGPREP                         R8
      421 FASTCALL1                        TABLE_UNPACK R12 ; [+3]
      422 MOVE                             R14 R12
      423 GETIMPORT                        R13 K101 [table.unpack]
      425 CALL                             R13 1 2
      426 GETTABLEKS                       R15 R1 K103 ["Dictionary"]
      428 GETTABLEKS                       R15 R15 K104 ["join"]
      430 MOVE                             R16 R7
      431 DUPTABLE                         R17 K106 [{"description"}]
      432 SETTABLEKS                       R14 R17 K105 ["description"]
      434 CALL                             R15 2 1
      435 SETTABLE                         R15 R4 R13
      436 FORGLOOP                         R8 2 ; [-16]
      438 RETURN                           R4 1
