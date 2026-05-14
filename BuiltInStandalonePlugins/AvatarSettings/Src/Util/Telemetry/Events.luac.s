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
       24 NEWTABLE                         R3 0 0
       26 NEWTABLE                         R4 0 15
       28 NEWTABLE                         R5 0 2
       30 LOADK                            R6 K11 ["AbilityRunningToggled"]
       31 LOADK                            R7 K12 ["Counter to track whether abilities running enabled is toggled. Additional fields: enabled = [true, false]"]
       32 SETLIST                          R5 R6 2 [1]
       34 NEWTABLE                         R6 0 2
       36 LOADK                            R7 K13 ["AbilityJumpingToggled"]
       37 LOADK                            R8 K14 ["Counter to track whether abilities jumping enabled is toggled. Additional fields: enabled = [true, false]"]
       38 SETLIST                          R6 R7 2 [1]
       40 NEWTABLE                         R7 0 2
       42 LOADK                            R8 K15 ["AbilitySittingToggled"]
       43 LOADK                            R9 K16 ["Counter to track whether abilities sitting enabled is toggled. Additional fields: enabled = [true, false]"]
       44 SETLIST                          R7 R8 2 [1]
       46 NEWTABLE                         R8 0 2
       48 LOADK                            R9 K17 ["AbilityFallingDownToggled"]
       49 LOADK                            R10 K18 ["Counter to track whether abilities falling down enabled is toggled. Additional fields: enabled = [true, false]"]
       50 SETLIST                          R8 R9 2 [1]
       52 NEWTABLE                         R9 0 2
       54 LOADK                            R10 K19 ["AbilityGettingUpToggled"]
       55 LOADK                            R11 K20 ["Counter to track whether abilities getting up enabled is toggled. Additional fields: enabled = [true, false]"]
       56 SETLIST                          R9 R10 2 [1]
       58 NEWTABLE                         R10 0 2
       60 LOADK                            R11 K21 ["AbilityClimbingToggled"]
       61 LOADK                            R12 K22 ["Counter to track whether abilities climbing enabled is toggled. Additional fields: enabled = [true, false]"]
       62 SETLIST                          R10 R11 2 [1]
       64 NEWTABLE                         R11 0 2
       66 LOADK                            R12 K23 ["AbilitySwimmingToggled"]
       67 LOADK                            R13 K24 ["Counter to track whether abilities swimming enabled is toggled. Additional fields: enabled = [true, false]"]
       68 SETLIST                          R11 R12 2 [1]
       70 NEWTABLE                         R12 0 2
       72 LOADK                            R13 K25 ["AccessorySoundToggled"]
       73 LOADK                            R14 K26 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
       74 SETLIST                          R12 R13 2 [1]
       76 NEWTABLE                         R13 0 2
       78 LOADK                            R14 K27 ["AccessoryVFXToggled"]
       79 LOADK                            R15 K28 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
       80 SETLIST                          R13 R14 2 [1]
       82 NEWTABLE                         R14 0 2
       84 LOADK                            R15 K29 ["AvatarTypeMenuOpened"]
       85 LOADK                            R16 K30 ["Counter to track avatar type dropdown opens"]
       86 SETLIST                          R14 R15 2 [1]
       88 NEWTABLE                         R15 0 2
       90 LOADK                            R16 K31 ["PreviewToggled"]
       91 LOADK                            R17 K32 ["Counter to track preview button toggles"]
       92 SETLIST                          R15 R16 2 [1]
       94 NEWTABLE                         R16 0 2
       96 LOADK                            R17 K33 ["RevertChangesPressed"]
       97 LOADK                            R18 K34 ["Counter to track revert changes button presses"]
       98 SETLIST                          R16 R17 2 [1]
      100 NEWTABLE                         R17 0 2
      102 LOADK                            R18 K35 ["SaveChangesPressed"]
      103 LOADK                            R19 K36 ["Counter to track save changes button presses"]
      104 SETLIST                          R17 R18 2 [1]
      106 NEWTABLE                         R18 0 2
      108 LOADK                            R19 K37 ["SwitchedToTab"]
      109 LOADK                            R20 K38 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
      110 SETLIST                          R18 R19 2 [1]
      112 NEWTABLE                         R19 0 2
      114 LOADK                            R20 K39 ["PublishedWithPreset"]
      115 LOADK                            R21 K40 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
      116 SETLIST                          R19 R20 2 [1]
      118 SETLIST                          R4 R5 15 [1]
      120 NEWTABLE                         R5 0 14
      122 NEWTABLE                         R6 0 3
      124 LOADK                            R7 K41 ["AbilityCharacterControllerMode"]
      125 LOADK                            R8 K42 ["abilityCharacterControllerMode"]
      126 LOADK                            R9 K43 ["LegacyHumanoid, LuaCharacterController"]
      127 SETLIST                          R6 R7 3 [1]
      129 NEWTABLE                         R7 0 3
      131 LOADK                            R8 K44 ["AccessoriesLimitMethod"]
      132 LOADK                            R9 K45 ["limitMethod"]
      133 LOADK                            R10 K46 ["Scale, Remove"]
      134 SETLIST                          R7 R8 3 [1]
      136 NEWTABLE                         R8 0 3
      138 LOADK                            R9 K47 ["AccessoryCustomLimitMode"]
      139 LOADK                            R10 K48 ["accessoryCustomLimitMode"]
      140 LOADK                            R11 K49 ["PlayerChoice, CustomLimit"]
      141 SETLIST                          R8 R9 3 [1]
      143 NEWTABLE                         R9 0 3
      145 LOADK                            R10 K50 ["AnimationClipsMode"]
      146 LOADK                            R11 K51 ["animationClipsMode"]
      147 LOADK                            R12 K52 ["PlayerChoice, CustomClips"]
      148 SETLIST                          R9 R10 3 [1]
      150 NEWTABLE                         R10 0 3
      152 LOADK                            R11 K53 ["AnimationPacksMode"]
      153 LOADK                            R12 K54 ["animationPacksMode"]
      154 LOADK                            R13 K55 ["PlayerChoice, StandardR15, StandardR6"]
      155 SETLIST                          R10 R11 3 [1]
      157 NEWTABLE                         R11 0 3
      159 LOADK                            R12 K56 ["AppearanceMode"]
      160 LOADK                            R13 K57 ["appearanceMode"]
      161 LOADK                            R14 K58 ["PlayerChoice, CustomParts"]
      162 SETLIST                          R11 R12 3 [1]
      164 NEWTABLE                         R12 0 3
      166 LOADK                            R13 K59 ["AvatarType"]
      167 LOADK                            R14 K60 ["avatarType"]
      168 LOADK                            R15 K61 ["R15, R6, PlayerChoice"]
      169 SETLIST                          R12 R13 3 [1]
      171 NEWTABLE                         R13 0 3
      173 LOADK                            R14 K62 ["BuildMode"]
      174 LOADK                            R15 K63 ["buildMode"]
      175 LOADK                            R16 K64 ["PlayerChoice, CustomBuild"]
      176 SETLIST                          R13 R14 3 [1]
      178 NEWTABLE                         R14 0 3
      180 LOADK                            R15 K65 ["ClothingCustomLimitMode"]
      181 LOADK                            R16 K66 ["clothingCustomLimitMode"]
      182 LOADK                            R17 K49 ["PlayerChoice, CustomLimit"]
      183 SETLIST                          R14 R15 3 [1]
      185 NEWTABLE                         R15 0 3
      187 LOADK                            R16 K67 ["CollisionMode"]
      188 LOADK                            R17 K68 ["mode"]
      189 LOADK                            R18 K69 ["Default, SingleCollider, Legacy"]
      190 SETLIST                          R15 R16 3 [1]
      192 NEWTABLE                         R16 0 3
      194 LOADK                            R17 K70 ["CustomAccessoryMode"]
      195 LOADK                            R18 K71 ["customAccessoryMode"]
      196 LOADK                            R19 K72 ["PlayerChoice, CustomAccessories"]
      197 SETLIST                          R16 R17 3 [1]
      199 NEWTABLE                         R17 0 3
      201 LOADK                            R18 K73 ["CustomClothingMode"]
      202 LOADK                            R19 K66 ["clothingCustomLimitMode"]
      203 LOADK                            R20 K74 ["PlayerChoice, CustomClothing"]
      204 SETLIST                          R17 R18 3 [1]
      206 NEWTABLE                         R18 0 3
      208 LOADK                            R19 K75 ["Preset"]
      209 LOADK                            R20 K76 ["presetType"]
      210 LOADK                            R21 K77 ["PlayerChoice, ConsistentGameplay"]
      211 SETLIST                          R18 R19 3 [1]
      213 NEWTABLE                         R19 0 3
      215 LOADK                            R20 K78 ["ScaleMode"]
      216 LOADK                            R21 K79 ["scaleMode"]
      217 LOADK                            R22 K80 ["PlayerChoice, CustomScale"]
      218 SETLIST                          R19 R20 3 [1]
      220 SETLIST                          R5 R6 14 [1]
      222 DUPTABLE                         R6 K85 [{"throttlingPercentage", "lastUpdated", "backends", "links"}]
      223 SETTABLEKS                       R2 R6 K81 ["throttlingPercentage"]
      225 NEWTABLE                         R7 0 3
      227 LOADN                            R8 233
      228 LOADN                            R9 8
      229 LOADN                            R10 14
      230 SETLIST                          R7 R8 3 [1]
      232 SETTABLEKS                       R7 R6 K82 ["lastUpdated"]
      234 NEWTABLE                         R7 0 1
      236 LOADK                            R8 K86 ["RobloxTelemetryCounter"]
      237 SETLIST                          R7 R8 1 [1]
      239 SETTABLEKS                       R7 R6 K83 ["backends"]
      241 LOADK                            R7 K87 ["https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"]
      242 SETTABLEKS                       R7 R6 K84 ["links"]
      244 MOVE                             R7 R5
      245 LOADNIL                          R8
      246 LOADNIL                          R9
      247 FORGPREP                         R7
      248 FASTCALL1                        TABLE_UNPACK R11 ; [+3]
      249 MOVE                             R13 R11
      250 GETIMPORT                        R12 K90 [table.unpack]
      252 CALL                             R12 1 3
      253 MOVE                             R16 R12
      254 LOADK                            R17 K91 ["Selected"]
      255 CONCAT                           R15 R16 R17
      256 GETTABLEKS                       R16 R1 K92 ["Dictionary"]
      258 GETTABLEKS                       R16 R16 K93 ["join"]
      260 MOVE                             R17 R6
      261 DUPTABLE                         R18 K95 [{"description"}]
      262 GETIMPORT                        R19 K98 [string.format]
      264 LOADK                            R20 K99 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      265 MOVE                             R21 R12
      266 MOVE                             R22 R13
      267 MOVE                             R23 R14
      268 CALL                             R19 4 1
      269 SETTABLEKS                       R19 R18 K94 ["description"]
      271 CALL                             R16 2 1
      272 SETTABLE                         R16 R3 R15
      273 FORGLOOP                         R7 2 ; [-26]
      275 MOVE                             R7 R4
      276 LOADNIL                          R8
      277 LOADNIL                          R9
      278 FORGPREP                         R7
      279 FASTCALL1                        TABLE_UNPACK R11 ; [+3]
      280 MOVE                             R13 R11
      281 GETIMPORT                        R12 K90 [table.unpack]
      283 CALL                             R12 1 2
      284 GETTABLEKS                       R14 R1 K92 ["Dictionary"]
      286 GETTABLEKS                       R14 R14 K93 ["join"]
      288 MOVE                             R15 R6
      289 DUPTABLE                         R16 K95 [{"description"}]
      290 SETTABLEKS                       R13 R16 K94 ["description"]
      292 CALL                             R14 2 1
      293 SETTABLE                         R14 R3 R12
      294 FORGLOOP                         R7 2 ; [-16]
      296 RETURN                           R3 1
