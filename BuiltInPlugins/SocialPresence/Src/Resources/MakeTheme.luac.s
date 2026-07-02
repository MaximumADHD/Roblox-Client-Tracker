PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["new"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Bin"]
       20 GETTABLEKS                       R3 R3 K8 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K9 ["Style"]
       25 GETTABLEKS                       R4 R3 K10 ["Themes"]
       27 GETTABLEKS                       R4 R4 K11 ["StudioTheme"]
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
      138 DUPTABLE                         R9 K62 [{["height"] = 24, ["borderColor"], ["iconColor"], ["moreIcon"], ["uncheckedIcon"], ["checkedIcon"], ["disableTeamCreateColor"]}]
      139 GETTABLEKS                       R10 R5 K63 ["Border"]
      141 SETTABLEKS                       R10 R9 K56 ["borderColor"]
      143 GETTABLEKS                       R10 R5 K64 ["ButtonText"]
      145 SETTABLEKS                       R10 R9 K57 ["iconColor"]
      147 GETTABLEKS                       R10 R5 K23 ["MoreIcon"]
      149 SETTABLEKS                       R10 R9 K58 ["moreIcon"]
      151 GETTABLEKS                       R10 R5 K21 ["CheckboxOffIcon"]
      153 SETTABLEKS                       R10 R9 K59 ["uncheckedIcon"]
      155 GETTABLEKS                       R10 R5 K19 ["CheckboxOnIcon"]
      157 SETTABLEKS                       R10 R9 K60 ["checkedIcon"]
      159 GETIMPORT                        R10 K28 [Color3.fromRGB]
      161 LOADN                            R11 244
      162 LOADN                            R12 100
      163 LOADN                            R13 93
      164 CALL                             R10 3 1
      165 SETTABLEKS                       R10 R9 K61 ["disableTeamCreateColor"]
      167 SETTABLEKS                       R9 R8 K37 ["footer"]
      169 DUPTABLE                         R9 K67 [{["height"] = 28, ["background"], ["border"]}]
      170 GETTABLEKS                       R10 R5 K68 ["SubBackground"]
      172 SETTABLEKS                       R10 R9 K44 ["background"]
      174 GETTABLEKS                       R10 R5 K63 ["Border"]
      176 SETTABLEKS                       R10 R9 K66 ["border"]
      178 SETTABLEKS                       R9 R8 K38 ["highlightToggle"]
      180 DUPTABLE                         R9 K74 [{"size", "expandedSize", "thumbnailSize", "hoveredBackground", "usernamePosition", "subtitlePosition"}]
      181 GETIMPORT                        R10 K51 [UDim2.new]
      183 LOADN                            R11 1
      184 LOADN                            R12 0
      185 LOADN                            R13 0
      186 LOADN                            R14 58
      187 CALL                             R10 4 1
      188 SETTABLEKS                       R10 R9 K43 ["size"]
      190 GETIMPORT                        R10 K51 [UDim2.new]
      192 LOADN                            R11 1
      193 LOADN                            R12 0
      194 LOADN                            R13 0
      195 LOADN                            R14 96
      196 CALL                             R10 4 1
      197 SETTABLEKS                       R10 R9 K69 ["expandedSize"]
      199 GETIMPORT                        R10 K76 [UDim2.fromOffset]
      201 LOADN                            R11 42
      202 LOADN                            R12 42
      203 CALL                             R10 2 1
      204 SETTABLEKS                       R10 R9 K70 ["thumbnailSize"]
      206 GETTABLEKS                       R10 R5 K68 ["SubBackground"]
      208 SETTABLEKS                       R10 R9 K71 ["hoveredBackground"]
      210 GETIMPORT                        R10 K76 [UDim2.fromOffset]
      212 LOADN                            R11 48
      213 LOADN                            R12 4
      214 CALL                             R10 2 1
      215 SETTABLEKS                       R10 R9 K72 ["usernamePosition"]
      217 GETIMPORT                        R10 K76 [UDim2.fromOffset]
      219 LOADN                            R11 48
      220 LOADN                            R12 24
      221 CALL                             R10 2 1
      222 SETTABLEKS                       R10 R9 K73 ["subtitlePosition"]
      224 SETTABLEKS                       R9 R8 K39 ["collaboratorItem"]
      226 DUPTABLE                         R9 K80 [{"background", "hoveredBackground", "pressedBackground", "textColor", "baseStyle"}]
      227 GETTABLEKS                       R10 R5 K53 ["ImageButtonBackground"]
      229 SETTABLEKS                       R10 R9 K44 ["background"]
      231 GETTABLEKS                       R10 R5 K81 ["ButtonHover"]
      233 SETTABLEKS                       R10 R9 K71 ["hoveredBackground"]
      235 GETTABLEKS                       R10 R5 K82 ["ButtonPressed"]
      237 SETTABLEKS                       R10 R9 K77 ["pressedBackground"]
      239 GETTABLEKS                       R10 R5 K83 ["TextPrimary"]
      241 SETTABLEKS                       R10 R9 K78 ["textColor"]
      243 DUPTABLE                         R10 K89 [{["BackgroundImage"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["SliceCenter"], ["BorderSize"] = 0}]
      244 GETIMPORT                        R11 K91 [Rect.new]
      246 LOADN                            R12 3
      247 LOADN                            R13 3
      248 LOADN                            R14 13
      249 LOADN                            R15 13
      250 CALL                             R11 4 1
      251 SETTABLEKS                       R11 R10 K86 ["SliceCenter"]
      253 SETTABLEKS                       R10 R9 K79 ["baseStyle"]
      255 SETTABLEKS                       R9 R8 K40 ["jumpButton"]
      257 DUPTABLE                         R9 K101 [{["avatarBackground"], ["avatarIdleBackground"], ["avatarSizeRatio"] = 0.75, ["idleTint"], ["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_user.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      258 GETTABLEKS                       R10 R5 K102 ["SecondaryContrast"]
      260 SETTABLEKS                       R10 R9 K92 ["avatarBackground"]
      262 GETTABLEKS                       R10 R5 K103 ["ForegroundContrast"]
      264 SETTABLEKS                       R10 R9 K93 ["avatarIdleBackground"]
      266 GETIMPORT                        R10 K28 [Color3.fromRGB]
      268 LOADN                            R11 140
      269 LOADN                            R12 140
      270 LOADN                            R13 140
      271 CALL                             R10 3 1
      272 SETTABLEKS                       R10 R9 K96 ["idleTint"]
      274 SETTABLEKS                       R9 R8 K41 ["userThumbnail"]
      276 DUPCLOSURE                       R9 K104 [PROTO_0]
      277 CAPTURE                          VAL R4
      278 CAPTURE                          VAL R7
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R8
      281 RETURN                           R9 1
