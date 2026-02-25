MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Flags"]
       20 GETTABLEKS                       R3 R4 K10 ["getFIntAvatarSettingsDefaultThrottle"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 NEWTABLE                         R3 0 0
       26 NEWTABLE                         R4 0 8
       28 NEWTABLE                         R5 0 2
       30 LOADK                            R6 K11 ["AccessorySoundToggled"]
       31 LOADK                            R7 K12 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
       32 SETLIST                          R5 R6 2 [1]
       34 NEWTABLE                         R6 0 2
       36 LOADK                            R7 K13 ["AccessoryVFXToggled"]
       37 LOADK                            R8 K14 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
       38 SETLIST                          R6 R7 2 [1]
       40 NEWTABLE                         R7 0 2
       42 LOADK                            R8 K15 ["AvatarTypeMenuOpened"]
       43 LOADK                            R9 K16 ["Counter to track avatar type dropdown opens"]
       44 SETLIST                          R7 R8 2 [1]
       46 NEWTABLE                         R8 0 2
       48 LOADK                            R9 K17 ["PreviewToggled"]
       49 LOADK                            R10 K18 ["Counter to track preview button toggles"]
       50 SETLIST                          R8 R9 2 [1]
       52 NEWTABLE                         R9 0 2
       54 LOADK                            R10 K19 ["RevertChangesPressed"]
       55 LOADK                            R11 K20 ["Counter to track revert changes button presses"]
       56 SETLIST                          R9 R10 2 [1]
       58 NEWTABLE                         R10 0 2
       60 LOADK                            R11 K21 ["SaveChangesPressed"]
       61 LOADK                            R12 K22 ["Counter to track save changes button presses"]
       62 SETLIST                          R10 R11 2 [1]
       64 NEWTABLE                         R11 0 2
       66 LOADK                            R12 K23 ["SwitchedToTab"]
       67 LOADK                            R13 K24 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
       68 SETLIST                          R11 R12 2 [1]
       70 NEWTABLE                         R12 0 2
       72 LOADK                            R13 K25 ["PublishedWithPreset"]
       73 LOADK                            R14 K26 ["Counter to track published with preset. Additional fields: presetType = [PlayerChoice, ConsistentGameplay, None]"]
       74 SETLIST                          R12 R13 2 [1]
       76 SETLIST                          R4 R5 8 [1]
       78 NEWTABLE                         R5 0 13
       80 NEWTABLE                         R6 0 3
       82 LOADK                            R7 K27 ["AccessoriesLimitMethod"]
       83 LOADK                            R8 K28 ["limitMethod"]
       84 LOADK                            R9 K29 ["Scale, Remove"]
       85 SETLIST                          R6 R7 3 [1]
       87 NEWTABLE                         R7 0 3
       89 LOADK                            R8 K30 ["AccessoryCustomLimitMode"]
       90 LOADK                            R9 K31 ["accessoryCustomLimitMode"]
       91 LOADK                            R10 K32 ["PlayerChoice, CustomLimit"]
       92 SETLIST                          R7 R8 3 [1]
       94 NEWTABLE                         R8 0 3
       96 LOADK                            R9 K33 ["AnimationClipsMode"]
       97 LOADK                            R10 K34 ["animationClipsMode"]
       98 LOADK                            R11 K35 ["PlayerChoice, CustomClips"]
       99 SETLIST                          R8 R9 3 [1]
      101 NEWTABLE                         R9 0 3
      103 LOADK                            R10 K36 ["AnimationPacksMode"]
      104 LOADK                            R11 K37 ["animationPacksMode"]
      105 LOADK                            R12 K38 ["PlayerChoice, StandardR15, StandardR6"]
      106 SETLIST                          R9 R10 3 [1]
      108 NEWTABLE                         R10 0 3
      110 LOADK                            R11 K39 ["AppearanceMode"]
      111 LOADK                            R12 K40 ["appearanceMode"]
      112 LOADK                            R13 K41 ["PlayerChoice, CustomParts"]
      113 SETLIST                          R10 R11 3 [1]
      115 NEWTABLE                         R11 0 3
      117 LOADK                            R12 K42 ["AvatarType"]
      118 LOADK                            R13 K43 ["avatarType"]
      119 LOADK                            R14 K44 ["R15, R6, PlayerChoice"]
      120 SETLIST                          R11 R12 3 [1]
      122 NEWTABLE                         R12 0 3
      124 LOADK                            R13 K45 ["BuildMode"]
      125 LOADK                            R14 K46 ["buildMode"]
      126 LOADK                            R15 K47 ["PlayerChoice, CustomBuild"]
      127 SETLIST                          R12 R13 3 [1]
      129 NEWTABLE                         R13 0 3
      131 LOADK                            R14 K48 ["ClothingCustomLimitMode"]
      132 LOADK                            R15 K49 ["clothingCustomLimitMode"]
      133 LOADK                            R16 K32 ["PlayerChoice, CustomLimit"]
      134 SETLIST                          R13 R14 3 [1]
      136 NEWTABLE                         R14 0 3
      138 LOADK                            R15 K50 ["CollisionMode"]
      139 LOADK                            R16 K51 ["mode"]
      140 LOADK                            R17 K52 ["Default, SingleCollider, Legacy"]
      141 SETLIST                          R14 R15 3 [1]
      143 NEWTABLE                         R15 0 3
      145 LOADK                            R16 K53 ["CustomAccessoryMode"]
      146 LOADK                            R17 K54 ["customAccessoryMode"]
      147 LOADK                            R18 K55 ["PlayerChoice, CustomAccessories"]
      148 SETLIST                          R15 R16 3 [1]
      150 NEWTABLE                         R16 0 3
      152 LOADK                            R17 K56 ["CustomClothingMode"]
      153 LOADK                            R18 K49 ["clothingCustomLimitMode"]
      154 LOADK                            R19 K57 ["PlayerChoice, CustomClothing"]
      155 SETLIST                          R16 R17 3 [1]
      157 NEWTABLE                         R17 0 3
      159 LOADK                            R18 K58 ["Preset"]
      160 LOADK                            R19 K59 ["presetType"]
      161 LOADK                            R20 K60 ["PlayerChoice, ConsistentGameplay"]
      162 SETLIST                          R17 R18 3 [1]
      164 NEWTABLE                         R18 0 3
      166 LOADK                            R19 K61 ["ScaleMode"]
      167 LOADK                            R20 K62 ["scaleMode"]
      168 LOADK                            R21 K63 ["PlayerChoice, CustomScale"]
      169 SETLIST                          R18 R19 3 [1]
      171 SETLIST                          R5 R6 13 [1]
      173 DUPTABLE                         R6 K68 [{"throttlingPercentage", "lastUpdated", "backends", "links"}]
      174 SETTABLEKS                       R2 R6 K64 ["throttlingPercentage"]
      176 NEWTABLE                         R7 0 3
      178 LOADN                            R8 233
      179 LOADN                            R9 8
      180 LOADN                            R10 14
      181 SETLIST                          R7 R8 3 [1]
      183 SETTABLEKS                       R7 R6 K65 ["lastUpdated"]
      185 NEWTABLE                         R7 0 1
      187 LOADK                            R8 K69 ["RobloxTelemetryCounter"]
      188 SETLIST                          R7 R8 1 [1]
      190 SETTABLEKS                       R7 R6 K66 ["backends"]
      192 LOADK                            R7 K70 ["https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"]
      193 SETTABLEKS                       R7 R6 K67 ["links"]
      195 MOVE                             R7 R5
      196 LOADNIL                          R8
      197 LOADNIL                          R9
      198 FORGPREP                         R7
      199 FASTCALL1                        TABLE_UNPACK R11 ; [+3]
      200 MOVE                             R13 R11
      201 GETIMPORT                        R12 K73 [table.unpack]
      203 CALL                             R12 1 3
      204 MOVE                             R16 R12
      205 LOADK                            R17 K74 ["Selected"]
      206 CONCAT                           R15 R16 R17
      207 GETTABLEKS                       R17 R1 K75 ["Dictionary"]
      209 GETTABLEKS                       R16 R17 K76 ["join"]
      211 MOVE                             R17 R6
      212 DUPTABLE                         R18 K78 [{"description"}]
      213 GETIMPORT                        R19 K81 [string.format]
      215 LOADK                            R20 K82 ["Counter to track %s selections. Additional fields: %s: [%s]"]
      216 MOVE                             R21 R12
      217 MOVE                             R22 R13
      218 MOVE                             R23 R14
      219 CALL                             R19 4 1
      220 SETTABLEKS                       R19 R18 K77 ["description"]
      222 CALL                             R16 2 1
      223 SETTABLE                         R16 R3 R15
      224 FORGLOOP                         R7 2 ; [-26]
      226 MOVE                             R7 R4
      227 LOADNIL                          R8
      228 LOADNIL                          R9
      229 FORGPREP                         R7
      230 FASTCALL1                        TABLE_UNPACK R11 ; [+3]
      231 MOVE                             R13 R11
      232 GETIMPORT                        R12 K73 [table.unpack]
      234 CALL                             R12 1 2
      235 GETTABLEKS                       R15 R1 K75 ["Dictionary"]
      237 GETTABLEKS                       R14 R15 K76 ["join"]
      239 MOVE                             R15 R6
      240 DUPTABLE                         R16 K78 [{"description"}]
      241 SETTABLEKS                       R13 R16 K77 ["description"]
      243 CALL                             R14 2 1
      244 SETTABLE                         R14 R3 R12
      245 FORGLOOP                         R7 2 ; [-16]
      247 RETURN                           R3 1
