MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 NEWTABLE                         R3 64 0
       20 LOADK                            R4 K10 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonAddAnnotationSmall.png"]
       21 SETTABLEKS                       R4 R3 K11 ["AddAnnotation"]
       23 LOADK                            R4 K12 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Dark/Large/AnnotationsLarge.png"]
       24 SETTABLEKS                       R4 R3 K13 ["AnnotationLarge"]
       26 LOADK                            R4 K14 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOn.png"]
       27 SETTABLEKS                       R4 R3 K15 ["CheckboxOn"]
       29 LOADK                            R4 K16 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/CheckboxOff.png"]
       30 SETTABLEKS                       R4 R3 K17 ["CheckboxOff"]
       32 LOADK                            R4 K18 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Dark/Standard/Resolve.png"]
       33 SETTABLEKS                       R4 R3 K19 ["ResolveIcon"]
       35 LOADK                            R4 K20 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Success.png"]
       36 SETTABLEKS                       R4 R3 K21 ["ResolveIconResolved"]
       38 LOADK                            R4 K22 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
       39 SETTABLEKS                       R4 R3 K23 ["Error"]
       41 LOADK                            R4 K24 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/CloseWidget.png"]
       42 SETTABLEKS                       R4 R3 K25 ["Close"]
       44 LOADK                            R4 K26 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Dark/Standard/More.png"]
       45 SETTABLEKS                       R4 R3 K27 ["Settings"]
       47 LOADK                            R4 K28 ["$ForegroundContrast"]
       48 SETTABLEKS                       R4 R3 K29 ["EmptyStateButtonFill"]
       50 LOADK                            R4 K30 ["$ActionHover"]
       51 SETTABLEKS                       R4 R3 K31 ["EmptyStateButtonHovered"]
       53 LOADK                            R4 K32 ["$BackgroundPaper"]
       54 SETTABLEKS                       R4 R3 K33 ["EmptyStateButtonSelected"]
       56 GETIMPORT                        R4 K36 [Color3.fromHex]
       58 LOADK                            R5 K37 ["#D0D9FB"]
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K38 ["Shift200Color"]
       62 GETIMPORT                        R4 K36 [Color3.fromHex]
       64 LOADK                            R5 K39 ["#F9F9F9"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K40 ["SemanticColorActionPrimaryFill"]
       68 GETIMPORT                        R4 K36 [Color3.fromHex]
       70 LOADK                            R5 K41 ["#BBC2D1"]
       71 CALL                             R4 1 1
       72 SETTABLEKS                       R4 R3 K42 ["SemanticColorActionSecondaryFill"]
       74 LOADK                            R4 K43 [0.88]
       75 SETTABLEKS                       R4 R3 K44 ["SemanticColorActionSecondaryFillTransparency"]
       77 LOADK                            R4 K45 [0.84]
       78 SETTABLEKS                       R4 R3 K46 ["SemanticColorActionSecondaryFillHoverTransparency"]
       80 LOADK                            R4 K47 [0.76]
       81 SETTABLEKS                       R4 R3 K48 ["SemanticColorActionSecondaryFillPressTransparency"]
       83 GETIMPORT                        R4 K36 [Color3.fromHex]
       85 LOADK                            R5 K49 ["#2B2D33"]
       86 CALL                             R4 1 1
       87 SETTABLEKS                       R4 R3 K50 ["SemanticColorComponentMediaFill"]
       89 GETIMPORT                        R4 K36 [Color3.fromHex]
       91 LOADK                            R5 K51 ["#696A6D"]
       92 CALL                             R4 1 1
       93 SETTABLEKS                       R4 R3 K52 ["SemanticColorContentDisabled"]
       95 GETIMPORT                        R4 K36 [Color3.fromHex]
       97 LOADK                            R5 K53 ["#BBBCBE"]
       98 CALL                             R4 1 1
       99 SETTABLEKS                       R4 R3 K54 ["SemanticColorContentMuted"]
      101 GETIMPORT                        R4 K36 [Color3.fromHex]
      103 LOADK                            R5 K39 ["#F9F9F9"]
      104 CALL                             R4 1 1
      105 SETTABLEKS                       R4 R3 K55 ["SemanticColorContentStandard"]
      107 GETIMPORT                        R4 K36 [Color3.fromHex]
      109 LOADK                            R5 K56 ["#111216"]
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R3 K57 ["SemanticColorContentStandardInverse"]
      113 GETIMPORT                        R4 K36 [Color3.fromHex]
      115 LOADK                            R5 K58 ["#FFFFFF"]
      116 CALL                             R4 1 1
      117 SETTABLEKS                       R4 R3 K59 ["SemanticColorContentStaticLight"]
      119 GETIMPORT                        R4 K36 [Color3.fromHex]
      121 LOADK                            R5 K41 ["#BBC2D1"]
      122 CALL                             R4 1 1
      123 SETTABLEKS                       R4 R3 K60 ["SemanticColorComponentInputFill"]
      125 LOADK                            R4 K43 [0.88]
      126 SETTABLEKS                       R4 R3 K61 ["SemanticColorComponentInputFillTransparency"]
      128 GETIMPORT                        R4 K36 [Color3.fromHex]
      130 LOADK                            R5 K41 ["#BBC2D1"]
      131 CALL                             R4 1 1
      132 SETTABLEKS                       R4 R3 K62 ["SemanticColorComponentInputHover"]
      134 LOADK                            R4 K45 [0.84]
      135 SETTABLEKS                       R4 R3 K63 ["SemanticColorComponentInputHoverTransparency"]
      137 LOADK                            R4 K64 [0.92]
      138 SETTABLEKS                       R4 R3 K65 ["SemanticColorComponentInputDisabledTransparency"]
      140 GETIMPORT                        R4 K36 [Color3.fromHex]
      142 LOADK                            R5 K58 ["#FFFFFF"]
      143 CALL                             R4 1 1
      144 SETTABLEKS                       R4 R3 K66 ["SemanticColorDivider"]
      146 LOADK                            R4 K43 [0.88]
      147 SETTABLEKS                       R4 R3 K67 ["SemanticColorDividerTransparency"]
      149 GETIMPORT                        R4 K36 [Color3.fromHex]
      151 LOADK                            R5 K68 ["#3C64FA"]
      152 CALL                             R4 1 1
      153 SETTABLEKS                       R4 R3 K69 ["SemanticColorFocusBorderPrimaryBrand"]
      155 GETIMPORT                        R4 K36 [Color3.fromHex]
      157 LOADK                            R5 K41 ["#BBC2D1"]
      158 CALL                             R4 1 1
      159 SETTABLEKS                       R4 R3 K70 ["SemanticColorStatesHover"]
      161 LOADK                            R4 K64 [0.92]
      162 SETTABLEKS                       R4 R3 K71 ["SemanticColorStatesHoverTransparency"]
      164 GETIMPORT                        R4 K36 [Color3.fromHex]
      166 LOADK                            R5 K58 ["#FFFFFF"]
      167 CALL                             R4 1 1
      168 SETTABLEKS                       R4 R3 K72 ["SemanticColorStateLayerHover"]
      170 LOADK                            R4 K64 [0.92]
      171 SETTABLEKS                       R4 R3 K73 ["SemanticColorStateLayerHoverTransparency"]
      173 GETIMPORT                        R4 K36 [Color3.fromHex]
      175 LOADK                            R5 K58 ["#FFFFFF"]
      176 CALL                             R4 1 1
      177 SETTABLEKS                       R4 R3 K74 ["SemanticColorStateLayerPress"]
      179 LOADK                            R4 K45 [0.84]
      180 SETTABLEKS                       R4 R3 K75 ["SemanticColorStateLayerPressTransparency"]
      182 GETIMPORT                        R4 K36 [Color3.fromHex]
      184 LOADK                            R5 K76 ["#000000"]
      185 CALL                             R4 1 1
      186 SETTABLEKS                       R4 R3 K77 ["SemanticColorStateLayerHoverInverse"]
      188 LOADK                            R4 K64 [0.92]
      189 SETTABLEKS                       R4 R3 K78 ["SemanticColorStateLayerHoverTransparencyInverse"]
      191 GETIMPORT                        R4 K36 [Color3.fromHex]
      193 LOADK                            R5 K76 ["#000000"]
      194 CALL                             R4 1 1
      195 SETTABLEKS                       R4 R3 K79 ["SemanticColorStateLayerPressInverse"]
      197 LOADK                            R4 K45 [0.84]
      198 SETTABLEKS                       R4 R3 K80 ["SemanticColorStateLayerPressTransparencyInverse"]
      200 GETIMPORT                        R4 K36 [Color3.fromHex]
      202 LOADK                            R5 K81 ["#1F2024"]
      203 CALL                             R4 1 1
      204 SETTABLEKS                       R4 R3 K82 ["SemanticColorSurface100"]
      206 GETIMPORT                        R4 K36 [Color3.fromHex]
      208 LOADK                            R5 K83 ["#25262C"]
      209 CALL                             R4 1 1
      210 SETTABLEKS                       R4 R3 K84 ["SemanticColorSurface200"]
      212 GETIMPORT                        R4 K36 [Color3.fromHex]
      214 LOADK                            R5 K49 ["#2B2D33"]
      215 CALL                             R4 1 1
      216 SETTABLEKS                       R4 R3 K85 ["SemanticColorSurface300"]
      218 GETIMPORT                        R4 K36 [Color3.fromHex]
      220 LOADK                            R5 K86 ["#F2F2F3"]
      221 CALL                             R4 1 1
      222 SETTABLEKS                       R4 R3 K87 ["SemanticColorSurface300Inverse"]
      224 GETIMPORT                        R4 K36 [Color3.fromHex]
      226 LOADK                            R5 K41 ["#BBC2D1"]
      227 CALL                             R4 1 1
      228 SETTABLEKS                       R4 R3 K88 ["SemanticColorStatesSelected"]
      230 LOADK                            R4 K45 [0.84]
      231 SETTABLEKS                       R4 R3 K89 ["SemanticColorStatesSelectedTransparency"]
      233 GETIMPORT                        R4 K36 [Color3.fromHex]
      235 LOADK                            R5 K90 ["#565656"]
      236 CALL                             R4 1 1
      237 SETTABLEKS                       R4 R3 K91 ["ResolveIconBase"]
      239 GETIMPORT                        R4 K36 [Color3.fromHex]
      241 LOADK                            R5 K92 ["#989898"]
      242 CALL                             R4 1 1
      243 SETTABLEKS                       R4 R3 K93 ["ResolveIconHovered"]
      245 GETIMPORT                        R4 K36 [Color3.fromHex]
      247 LOADK                            R5 K94 ["#2C2C2C"]
      248 CALL                             R4 1 1
      249 SETTABLEKS                       R4 R3 K95 ["ResolveIconSelected"]
      251 LOADK                            R4 K96 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonBack.png"]
      252 SETTABLEKS                       R4 R3 K97 ["BackArrow"]
      254 LOADK                            R4 K98 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonFwd.png"]
      255 SETTABLEKS                       R4 R3 K99 ["NextArrow"]
      257 LOADK                            R4 K100 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/More.png"]
      258 SETTABLEKS                       R4 R3 K101 ["MoreIcon"]
      260 MOVE                             R4 R2
      261 LOADK                            R5 K102 ["PlaceAnnotationsDarkTheme"]
      262 NEWTABLE                         R6 0 0
      264 MOVE                             R7 R3
      265 CALL                             R4 3 -1
      266 RETURN                           R4 -1
