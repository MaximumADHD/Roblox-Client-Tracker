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
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["Style"]
       32 GETTABLEKS                       R5 R4 K13 ["StyleKey"]
       34 GETTABLEKS                       R6 R4 K14 ["Themes"]
       36 GETTABLEKS                       R6 R6 K15 ["DarkTheme"]
       38 GETTABLEKS                       R7 R4 K14 ["Themes"]
       40 GETTABLEKS                       R7 R7 K16 ["LightTheme"]
       42 GETTABLEKS                       R8 R4 K14 ["Themes"]
       44 GETTABLEKS                       R8 R8 K17 ["StudioTheme"]
       46 GETTABLEKS                       R9 R1 K18 ["Dictionary"]
       48 GETTABLEKS                       R9 R9 K19 ["join"]
       50 MOVE                             R10 R6
       51 NEWTABLE                         R11 32 0
       53 GETTABLEKS                       R12 R5 K20 ["AttachmentTool"]
       55 LOADK                            R13 K21 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/attachments_tool@2x.png"]
       56 SETTABLE                         R13 R11 R12
       57 GETTABLEKS                       R12 R5 K22 ["CageTool"]
       59 LOADK                            R13 K23 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/cage_tool@2x.png"]
       60 SETTABLE                         R13 R11 R12
       61 GETTABLEKS                       R12 R5 K24 ["Collapse"]
       63 LOADK                            R13 K25 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/collapse.png"]
       64 SETTABLE                         R13 R11 R12
       65 GETTABLEKS                       R12 R5 K26 ["Dots"]
       67 LOADK                            R13 K27 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/OptionsDots.png"]
       68 SETTABLE                         R13 R11 R12
       69 GETTABLEKS                       R12 R5 K28 ["DotsVertical"]
       71 LOADK                            R13 K29 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/dots_vertical.png"]
       72 SETTABLE                         R13 R11 R12
       73 GETTABLEKS                       R12 R5 K30 ["EmptyState"]
       75 LOADK                            R13 K31 ["rbxasset://textures/AvatarCompatibilityPreviewer/empty_state_dark.png"]
       76 SETTABLE                         R13 R11 R12
       77 GETTABLEKS                       R12 R5 K32 ["Falloff"]
       79 LOADK                            R13 K33 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/falloff@2x.png"]
       80 SETTABLE                         R13 R11 R12
       81 GETTABLEKS                       R12 R5 K34 ["Hide"]
       83 LOADK                            R13 K35 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hide.png"]
       84 SETTABLE                         R13 R11 R12
       85 GETTABLEKS                       R12 R5 K36 ["HideHover"]
       87 LOADK                            R13 K37 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hide_hover.png"]
       88 SETTABLE                         R13 R11 R12
       89 GETTABLEKS                       R12 R5 K38 ["HoverMenu"]
       91 LOADK                            R13 K39 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hover_menu.png"]
       92 SETTABLE                         R13 R11 R12
       93 GETTABLEKS                       R12 R5 K40 ["HoverMenuDisabled"]
       95 LOADK                            R13 K41 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/hover_menu_disabled.png"]
       96 SETTABLE                         R13 R11 R12
       97 GETTABLEKS                       R12 R5 K42 ["MirrorToLeft"]
       99 LOADK                            R13 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/mirror_to_left@3x.png"]
      100 SETTABLE                         R13 R11 R12
      101 GETTABLEKS                       R12 R5 K44 ["MirrorToRight"]
      103 LOADK                            R13 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/mirror_to_right@3x.png"]
      104 SETTABLE                         R13 R11 R12
      105 GETTABLEKS                       R12 R5 K46 ["Projection"]
      107 LOADK                            R13 K47 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/projection@2x.png"]
      108 SETTABLE                         R13 R11 R12
      109 GETTABLEKS                       R12 R5 K48 ["PlayImage"]
      111 LOADK                            R13 K49 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Light.png"]
      112 SETTABLE                         R13 R11 R12
      113 GETTABLEKS                       R12 R5 K50 ["PreviewerBackgroundImage"]
      115 LOADK                            R13 K51 ["rbxasset://textures/AvatarCompatibilityPreviewer/bg_dark.png"]
      116 SETTABLE                         R13 R11 R12
      117 GETTABLEKS                       R12 R5 K52 ["Radius"]
      119 LOADK                            R13 K53 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/radius@2x.png"]
      120 SETTABLE                         R13 R11 R12
      121 GETTABLEKS                       R12 R5 K54 ["ResetCameraImage"]
      123 LOADK                            R13 K55 ["rbxasset://textures/AssetImport/btn_dark_resetcam_28x28.png"]
      124 SETTABLE                         R13 R11 R12
      125 GETTABLEKS                       R12 R5 K56 ["ResetChanges"]
      127 LOADK                            R13 K57 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/reset_changes@2x.png"]
      128 SETTABLE                         R13 R11 R12
      129 GETTABLEKS                       R12 R5 K58 ["SendFeedback"]
      131 LOADK                            R13 K59 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rate_feedback@2x.png"]
      132 SETTABLE                         R13 R11 R12
      133 GETTABLEKS                       R12 R5 K60 ["ShowClothingOff"]
      135 LOADK                            R13 K61 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/show_clothing_off@2x.png"]
      136 SETTABLE                         R13 R11 R12
      137 GETTABLEKS                       R12 R5 K62 ["ShowClothingOn"]
      139 LOADK                            R13 K63 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/show_clothing_on@2x.png"]
      140 SETTABLE                         R13 R11 R12
      141 GETTABLEKS                       R12 R5 K64 ["Star"]
      143 LOADK                            R13 K65 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/star.png"]
      144 SETTABLE                         R13 R11 R12
      145 GETTABLEKS                       R12 R5 K66 ["StarUnfilled"]
      147 LOADK                            R13 K67 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/star_unfilled.png"]
      148 SETTABLE                         R13 R11 R12
      149 GETTABLEKS                       R12 R5 K68 ["Symmetry"]
      151 LOADK                            R13 K69 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/symmetry@2x.png"]
      152 SETTABLE                         R13 R11 R12
      153 GETTABLEKS                       R12 R5 K70 ["UGCValidationSuccessImage"]
      155 LOADK                            R13 K71 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/ugc_validation_success.png"]
      156 SETTABLE                         R13 R11 R12
      157 GETTABLEKS                       R12 R5 K72 ["Unhide"]
      159 LOADK                            R13 K73 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/unhide.png"]
      160 SETTABLE                         R13 R11 R12
      161 GETTABLEKS                       R12 R5 K74 ["UnhideHover"]
      163 LOADK                            R13 K75 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/unhide_hover.png"]
      164 SETTABLE                         R13 R11 R12
      165 GETTABLEKS                       R12 R5 K76 ["Unfold"]
      167 LOADK                            R13 K77 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/unfold.png"]
      168 SETTABLE                         R13 R11 R12
      169 GETTABLEKS                       R12 R5 K78 ["IconButtonSecondaryMain"]
      171 GETTABLEKS                       R14 R5 K79 ["SecondaryMain"]
      173 GETTABLE                         R13 R6 R14
      174 SETTABLE                         R13 R11 R12
      175 GETTABLEKS                       R12 R5 K80 ["IconButtonSecondaryHover"]
      177 GETTABLEKS                       R14 R5 K81 ["SecondaryStatesHoverBackground"]
      179 GETTABLE                         R13 R6 R14
      180 SETTABLE                         R13 R11 R12
      181 CALL                             R9 2 1
      182 GETTABLEKS                       R10 R1 K18 ["Dictionary"]
      184 GETTABLEKS                       R10 R10 K19 ["join"]
      186 MOVE                             R11 R7
      187 NEWTABLE                         R12 32 0
      189 GETTABLEKS                       R13 R5 K20 ["AttachmentTool"]
      191 LOADK                            R14 K82 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/attachments_tool@2x.png"]
      192 SETTABLE                         R14 R12 R13
      193 GETTABLEKS                       R13 R5 K22 ["CageTool"]
      195 LOADK                            R14 K83 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/cage_tool@2x.png"]
      196 SETTABLE                         R14 R12 R13
      197 GETTABLEKS                       R13 R5 K24 ["Collapse"]
      199 LOADK                            R14 K25 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/collapse.png"]
      200 SETTABLE                         R14 R12 R13
      201 GETTABLEKS                       R13 R5 K26 ["Dots"]
      203 LOADK                            R14 K84 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
      204 SETTABLE                         R14 R12 R13
      205 GETTABLEKS                       R13 R5 K28 ["DotsVertical"]
      207 LOADK                            R14 K29 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/dots_vertical.png"]
      208 SETTABLE                         R14 R12 R13
      209 GETTABLEKS                       R13 R5 K30 ["EmptyState"]
      211 LOADK                            R14 K85 ["rbxasset://textures/AvatarCompatibilityPreviewer/empty_state_light.png"]
      212 SETTABLE                         R14 R12 R13
      213 GETTABLEKS                       R13 R5 K32 ["Falloff"]
      215 LOADK                            R14 K86 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/falloff@2x.png"]
      216 SETTABLE                         R14 R12 R13
      217 GETTABLEKS                       R13 R5 K34 ["Hide"]
      219 LOADK                            R14 K87 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hide.png"]
      220 SETTABLE                         R14 R12 R13
      221 GETTABLEKS                       R13 R5 K36 ["HideHover"]
      223 LOADK                            R14 K88 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hide_hover.png"]
      224 SETTABLE                         R14 R12 R13
      225 GETTABLEKS                       R13 R5 K38 ["HoverMenu"]
      227 LOADK                            R14 K89 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hover_menu.png"]
      228 SETTABLE                         R14 R12 R13
      229 GETTABLEKS                       R13 R5 K40 ["HoverMenuDisabled"]
      231 LOADK                            R14 K90 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/hover_menu_disabled.png"]
      232 SETTABLE                         R14 R12 R13
      233 GETTABLEKS                       R13 R5 K42 ["MirrorToLeft"]
      235 LOADK                            R14 K91 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/mirror_to_left@3x.png"]
      236 SETTABLE                         R14 R12 R13
      237 GETTABLEKS                       R13 R5 K44 ["MirrorToRight"]
      239 LOADK                            R14 K92 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/mirror_to_right@3x.png"]
      240 SETTABLE                         R14 R12 R13
      241 GETTABLEKS                       R13 R5 K46 ["Projection"]
      243 LOADK                            R14 K93 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/projection@2x.png"]
      244 SETTABLE                         R14 R12 R13
      245 GETTABLEKS                       R13 R5 K48 ["PlayImage"]
      247 LOADK                            R14 K94 ["rbxasset://textures/LayeredClothingEditor/Icon_Play_Dark.png"]
      248 SETTABLE                         R14 R12 R13
      249 GETTABLEKS                       R13 R5 K50 ["PreviewerBackgroundImage"]
      251 LOADK                            R14 K95 ["rbxasset://textures/AvatarCompatibilityPreviewer/bg_light.png"]
      252 SETTABLE                         R14 R12 R13
      253 GETTABLEKS                       R13 R5 K52 ["Radius"]
      255 LOADK                            R14 K96 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/radius@2x.png"]
      256 SETTABLE                         R14 R12 R13
      257 GETTABLEKS                       R13 R5 K54 ["ResetCameraImage"]
      259 LOADK                            R14 K97 ["rbxasset://textures/AssetImport/btn_light_resetcam_28x28.png"]
      260 SETTABLE                         R14 R12 R13
      261 GETTABLEKS                       R13 R5 K56 ["ResetChanges"]
      263 LOADK                            R14 K98 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/reset_changes@2x.png"]
      264 SETTABLE                         R14 R12 R13
      265 GETTABLEKS                       R13 R5 K58 ["SendFeedback"]
      267 LOADK                            R14 K99 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/rate_feedback@2x.png"]
      268 SETTABLE                         R14 R12 R13
      269 GETTABLEKS                       R13 R5 K60 ["ShowClothingOff"]
      271 LOADK                            R14 K100 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/show_clothing_off@2x.png"]
      272 SETTABLE                         R14 R12 R13
      273 GETTABLEKS                       R13 R5 K62 ["ShowClothingOn"]
      275 LOADK                            R14 K101 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/show_clothing_on@2x.png"]
      276 SETTABLE                         R14 R12 R13
      277 GETTABLEKS                       R13 R5 K64 ["Star"]
      279 LOADK                            R14 K102 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/star.png"]
      280 SETTABLE                         R14 R12 R13
      281 GETTABLEKS                       R13 R5 K66 ["StarUnfilled"]
      283 LOADK                            R14 K103 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/star_unfilled.png"]
      284 SETTABLE                         R14 R12 R13
      285 GETTABLEKS                       R13 R5 K68 ["Symmetry"]
      287 LOADK                            R14 K104 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Standard/symmetry@2x.png"]
      288 SETTABLE                         R14 R12 R13
      289 GETTABLEKS                       R13 R5 K70 ["UGCValidationSuccessImage"]
      291 LOADK                            R14 K105 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/ugc_validation_success.png"]
      292 SETTABLE                         R14 R12 R13
      293 GETTABLEKS                       R13 R5 K72 ["Unhide"]
      295 LOADK                            R14 K106 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/unhide.png"]
      296 SETTABLE                         R14 R12 R13
      297 GETTABLEKS                       R13 R5 K74 ["UnhideHover"]
      299 LOADK                            R14 K107 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Light/Large/unhide_hover.png"]
      300 SETTABLE                         R14 R12 R13
      301 GETTABLEKS                       R13 R5 K76 ["Unfold"]
      303 LOADK                            R14 K77 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/unfold.png"]
      304 SETTABLE                         R14 R12 R13
      305 GETTABLEKS                       R13 R5 K78 ["IconButtonSecondaryMain"]
      307 GETTABLEKS                       R15 R5 K108 ["ForegroundMain"]
      309 GETTABLE                         R14 R7 R15
      310 SETTABLE                         R14 R12 R13
      311 GETTABLEKS                       R13 R5 K80 ["IconButtonSecondaryHover"]
      313 GETTABLEKS                       R15 R5 K109 ["BackgroundPaper"]
      315 GETTABLE                         R14 R7 R15
      316 SETTABLE                         R14 R12 R13
      317 CALL                             R10 2 1
      318 DUPCLOSURE                       R11 K110 [PROTO_0]
      319 CAPTURE                          VAL R8
      320 CAPTURE                          VAL R9
      321 CAPTURE                          VAL R10
      322 CAPTURE                          VAL R3
      323 RETURN                           R11 1
