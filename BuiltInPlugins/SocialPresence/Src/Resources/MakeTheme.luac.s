PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Bin"]
       20 GETTABLEKS                       R3 R4 K8 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K9 ["Style"]
       25 GETTABLEKS                       R5 R3 K10 ["Themes"]
       27 GETTABLEKS                       R4 R5 K11 ["StudioTheme"]
       29 GETTABLEKS                       R5 R3 K12 ["StyleKey"]
       31 NEWTABLE                         R6 8 0
       33 GETTABLEKS                       R7 R5 K13 ["ActivityRing"]
       35 LOADK                            R8 K14 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Light/Large/ActivityRing.png"]
       36 SETTABLE                         R8 R6 R7
       37 GETTABLEKS                       R7 R5 K15 ["AddCollaboratorIcon"]
       39 GETTABLEKS                       R9 R2 K16 ["getFFlagFixOldRibbonCollaborateIcon"]
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+2]
       43 LOADK                            R8 K17 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/AddCollaborator.png"]
       44 JUMP                             ; [+1]
       45 LOADK                            R8 K18 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
       46 SETTABLE                         R8 R6 R7
       47 GETTABLEKS                       R7 R5 K19 ["CheckboxOnIcon"]
       49 LOADK                            R8 K20 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOn.png"]
       50 SETTABLE                         R8 R6 R7
       51 GETTABLEKS                       R7 R5 K21 ["CheckboxOffIcon"]
       53 LOADK                            R8 K22 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/CheckboxOff.png"]
       54 SETTABLE                         R8 R6 R7
       55 GETTABLEKS                       R7 R5 K23 ["MoreIcon"]
       57 LOADK                            R8 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/More.png"]
       58 SETTABLE                         R8 R6 R7
       59 GETTABLEKS                       R7 R5 K25 ["RibbonBarHover"]
       61 GETIMPORT                        R8 K28 [Color3.fromRGB]
       63 LOADN                            R9 228
       64 LOADN                            R10 238
       65 LOADN                            R11 254
       66 CALL                             R8 3 1
       67 SETTABLE                         R8 R6 R7
       68 NEWTABLE                         R7 8 0
       70 GETTABLEKS                       R8 R5 K13 ["ActivityRing"]
       72 LOADK                            R9 K29 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Dark/Large/ActivityRing.png"]
       73 SETTABLE                         R9 R7 R8
       74 GETTABLEKS                       R8 R5 K15 ["AddCollaboratorIcon"]
       76 GETTABLEKS                       R10 R2 K16 ["getFFlagFixOldRibbonCollaborateIcon"]
       78 CALL                             R10 0 1
       79 JUMPIFNOT                        R10 ; [+2]
       80 LOADK                            R9 K30 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/AddCollaborator.png"]
       81 JUMP                             ; [+1]
       82 LOADK                            R9 K31 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Standard/AddCollaborator.png"]
       83 SETTABLE                         R9 R7 R8
       84 GETTABLEKS                       R8 R5 K19 ["CheckboxOnIcon"]
       86 LOADK                            R9 K32 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOn.png"]
       87 SETTABLE                         R9 R7 R8
       88 GETTABLEKS                       R8 R5 K21 ["CheckboxOffIcon"]
       90 LOADK                            R9 K33 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOff.png"]
       91 SETTABLE                         R9 R7 R8
       92 GETTABLEKS                       R8 R5 K23 ["MoreIcon"]
       94 LOADK                            R9 K34 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
       95 SETTABLE                         R9 R7 R8
       96 GETTABLEKS                       R8 R5 K25 ["RibbonBarHover"]
       98 GETIMPORT                        R9 K28 [Color3.fromRGB]
      100 LOADN                            R10 37
      101 LOADN                            R11 37
      102 LOADN                            R12 37
      103 CALL                             R9 3 1
      104 SETTABLE                         R9 R7 R8
      105 DUPTABLE                         R8 K42 [{"activityRing", "ribbonItem", "footer", "highlightToggle", "collaboratorItem", "jumpButton", "userThumbnail"}]
      106 GETTABLEKS                       R9 R5 K13 ["ActivityRing"]
      108 SETTABLEKS                       R9 R8 K35 ["activityRing"]
      110 DUPTABLE                         R9 K48 [{"size", "background", "overflowBackground", "addIcon", "buttonHover"}]
      111 GETIMPORT                        R10 K51 [UDim2.new]
      113 LOADN                            R11 0
      114 LOADN                            R12 24
      115 LOADN                            R13 1
      116 LOADN                            R14 0
      117 CALL                             R10 4 1
      118 SETTABLEKS                       R10 R9 K43 ["size"]
      120 GETTABLEKS                       R10 R5 K52 ["Tab"]
      122 SETTABLEKS                       R10 R9 K44 ["background"]
      124 GETTABLEKS                       R10 R5 K53 ["ImageButtonBackground"]
      126 SETTABLEKS                       R10 R9 K45 ["overflowBackground"]
      128 GETTABLEKS                       R10 R5 K15 ["AddCollaboratorIcon"]
      130 SETTABLEKS                       R10 R9 K46 ["addIcon"]
      132 GETTABLEKS                       R10 R5 K25 ["RibbonBarHover"]
      134 SETTABLEKS                       R10 R9 K47 ["buttonHover"]
      136 SETTABLEKS                       R9 R8 K36 ["ribbonItem"]
      138 DUPTABLE                         R9 K61 [{"height", "borderColor", "iconColor", "moreIcon", "uncheckedIcon", "checkedIcon", "disableTeamCreateColor"}]
      139 LOADN                            R10 24
      140 SETTABLEKS                       R10 R9 K54 ["height"]
      142 GETTABLEKS                       R10 R5 K62 ["Border"]
      144 SETTABLEKS                       R10 R9 K55 ["borderColor"]
      146 GETTABLEKS                       R10 R5 K63 ["ButtonText"]
      148 SETTABLEKS                       R10 R9 K56 ["iconColor"]
      150 GETTABLEKS                       R10 R5 K23 ["MoreIcon"]
      152 SETTABLEKS                       R10 R9 K57 ["moreIcon"]
      154 GETTABLEKS                       R10 R5 K21 ["CheckboxOffIcon"]
      156 SETTABLEKS                       R10 R9 K58 ["uncheckedIcon"]
      158 GETTABLEKS                       R10 R5 K19 ["CheckboxOnIcon"]
      160 SETTABLEKS                       R10 R9 K59 ["checkedIcon"]
      162 GETIMPORT                        R10 K28 [Color3.fromRGB]
      164 LOADN                            R11 244
      165 LOADN                            R12 100
      166 LOADN                            R13 93
      167 CALL                             R10 3 1
      168 SETTABLEKS                       R10 R9 K60 ["disableTeamCreateColor"]
      170 SETTABLEKS                       R9 R8 K37 ["footer"]
      172 DUPTABLE                         R9 K65 [{"height", "background", "border"}]
      173 LOADN                            R10 28
      174 SETTABLEKS                       R10 R9 K54 ["height"]
      176 GETTABLEKS                       R10 R5 K66 ["SubBackground"]
      178 SETTABLEKS                       R10 R9 K44 ["background"]
      180 GETTABLEKS                       R10 R5 K62 ["Border"]
      182 SETTABLEKS                       R10 R9 K64 ["border"]
      184 SETTABLEKS                       R9 R8 K38 ["highlightToggle"]
      186 DUPTABLE                         R9 K72 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
      187 GETIMPORT                        R10 K51 [UDim2.new]
      189 LOADN                            R11 1
      190 LOADN                            R12 0
      191 LOADN                            R13 0
      192 LOADN                            R14 58
      193 CALL                             R10 4 1
      194 SETTABLEKS                       R10 R9 K43 ["size"]
      196 GETIMPORT                        R10 K51 [UDim2.new]
      198 LOADN                            R11 1
      199 LOADN                            R12 0
      200 LOADN                            R13 0
      201 LOADN                            R14 96
      202 CALL                             R10 4 1
      203 SETTABLEKS                       R10 R9 K67 ["expandedSize"]
      205 GETIMPORT                        R10 K74 [UDim2.fromOffset]
      207 LOADN                            R11 42
      208 LOADN                            R12 42
      209 CALL                             R10 2 1
      210 SETTABLEKS                       R10 R9 K68 ["thumbnailSize"]
      212 GETTABLEKS                       R10 R5 K66 ["SubBackground"]
      214 SETTABLEKS                       R10 R9 K69 ["hoveredBackground"]
      216 GETIMPORT                        R10 K74 [UDim2.fromOffset]
      218 LOADN                            R11 48
      219 LOADN                            R12 4
      220 CALL                             R10 2 1
      221 SETTABLEKS                       R10 R9 K70 ["usernamePosition"]
      223 GETIMPORT                        R10 K74 [UDim2.fromOffset]
      225 LOADN                            R11 48
      226 LOADN                            R12 24
      227 CALL                             R10 2 1
      228 SETTABLEKS                       R10 R9 K71 ["subtitlePosition"]
      230 SETTABLEKS                       R9 R8 K39 ["collaboratorItem"]
      232 DUPTABLE                         R9 K78 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
      233 GETTABLEKS                       R10 R5 K53 ["ImageButtonBackground"]
      235 SETTABLEKS                       R10 R9 K44 ["background"]
      237 GETTABLEKS                       R10 R5 K79 ["ButtonHover"]
      239 SETTABLEKS                       R10 R9 K69 ["hoveredBackground"]
      241 GETTABLEKS                       R10 R5 K80 ["ButtonPressed"]
      243 SETTABLEKS                       R10 R9 K75 ["pressedBackground"]
      245 GETTABLEKS                       R10 R5 K81 ["TextPrimary"]
      247 SETTABLEKS                       R10 R9 K76 ["textColor"]
      249 DUPTABLE                         R10 K85 [{"BackgroundImage", "SliceCenter", "BorderSize"}]
      250 LOADK                            R11 K86 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
      251 SETTABLEKS                       R11 R10 K82 ["BackgroundImage"]
      253 GETIMPORT                        R11 K88 [Rect.new]
      255 LOADN                            R12 3
      256 LOADN                            R13 3
      257 LOADN                            R14 13
      258 LOADN                            R15 13
      259 CALL                             R11 4 1
      260 SETTABLEKS                       R11 R10 K83 ["SliceCenter"]
      262 LOADN                            R11 0
      263 SETTABLEKS                       R11 R10 K84 ["BorderSize"]
      265 SETTABLEKS                       R10 R9 K77 ["baseStyle"]
      267 SETTABLEKS                       R9 R8 K40 ["jumpButton"]
      269 DUPTABLE                         R9 K95 [{"avatarBackground", "avatarIdleBackground", "avatarSizeRatio", "idleTint", "loadingImage", "loadFailureImage"}]
      270 GETTABLEKS                       R10 R5 K96 ["SecondaryContrast"]
      272 SETTABLEKS                       R10 R9 K89 ["avatarBackground"]
      274 GETTABLEKS                       R10 R5 K97 ["ForegroundContrast"]
      276 SETTABLEKS                       R10 R9 K90 ["avatarIdleBackground"]
      278 LOADK                            R10 K98 [0.75]
      279 SETTABLEKS                       R10 R9 K91 ["avatarSizeRatio"]
      281 GETIMPORT                        R10 K28 [Color3.fromRGB]
      283 LOADN                            R11 140
      284 LOADN                            R12 140
      285 LOADN                            R13 140
      286 CALL                             R10 3 1
      287 SETTABLEKS                       R10 R9 K92 ["idleTint"]
      289 LOADK                            R10 K99 ["rbxasset://textures/StudioSharedUI/default_user.png"]
      290 SETTABLEKS                       R10 R9 K93 ["loadingImage"]
      292 LOADK                            R10 K100 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      293 SETTABLEKS                       R10 R9 K94 ["loadFailureImage"]
      295 SETTABLEKS                       R9 R8 K41 ["userThumbnail"]
      297 DUPCLOSURE                       R9 K101 [PROTO_0]
      298 CAPTURE                          VAL R4
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R6
      301 CAPTURE                          VAL R8
      302 RETURN                           R9 1
