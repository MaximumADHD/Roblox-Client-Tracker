MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K8 ["Style"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R2 K9 ["StyleKey"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K30 [{"BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "StrokeColor", "StrokeTransparency", "TitleFont", "PrimaryActionFont", "TextColor", "TextSize", "TopPadding", "HorizontalPadding", "IconPosition", "IconSize", "ContentsSpacing", "CornerRadius", "InnerPadding", "MaxWidth", "HoverCircleAdditionalSize", "HoverCircleColor", "HoverCircleTransparency", "CloseButtonImage"}]
       24 GETTABLEKS                       R5 R3 K31 ["AlertBackgroundDefault"]
       26 SETTABLEKS                       R5 R4 K10 ["BackgroundColor"]
       28 LOADK                            R5 K32 [0.15]
       29 SETTABLEKS                       R5 R4 K11 ["BackgroundColorHoverDarkerMultiplier"]
       31 GETTABLEKS                       R5 R3 K33 ["OtherDivider"]
       33 SETTABLEKS                       R5 R4 K12 ["StrokeColor"]
       35 LOADK                            R5 K34 [0.5]
       36 SETTABLEKS                       R5 R4 K13 ["StrokeTransparency"]
       38 GETIMPORT                        R5 K38 [Enum.Font.SourceSansBold]
       40 SETTABLEKS                       R5 R4 K14 ["TitleFont"]
       42 GETIMPORT                        R5 K40 [Enum.Font.SourceSans]
       44 SETTABLEKS                       R5 R4 K15 ["PrimaryActionFont"]
       46 GETTABLEKS                       R5 R3 K41 ["TextPrimary"]
       48 SETTABLEKS                       R5 R4 K16 ["TextColor"]
       50 LOADN                            R5 18
       51 SETTABLEKS                       R5 R4 K17 ["TextSize"]
       53 GETIMPORT                        R5 K44 [UDim.new]
       55 LOADN                            R6 0
       56 LOADN                            R7 7
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K18 ["TopPadding"]
       60 GETIMPORT                        R5 K44 [UDim.new]
       62 LOADN                            R6 0
       63 LOADN                            R7 246
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K19 ["HorizontalPadding"]
       67 GETIMPORT                        R5 K47 [UDim2.fromOffset]
       69 LOADN                            R6 0
       70 LOADN                            R7 2
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K20 ["IconPosition"]
       74 GETIMPORT                        R5 K47 [UDim2.fromOffset]
       76 LOADN                            R6 16
       77 LOADN                            R7 16
       78 CALL                             R5 2 1
       79 SETTABLEKS                       R5 R4 K21 ["IconSize"]
       81 LOADN                            R5 8
       82 SETTABLEKS                       R5 R4 K22 ["ContentsSpacing"]
       84 GETIMPORT                        R5 K44 [UDim.new]
       86 LOADN                            R6 0
       87 LOADN                            R7 8
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K23 ["CornerRadius"]
       91 LOADN                            R5 12
       92 SETTABLEKS                       R5 R4 K24 ["InnerPadding"]
       94 LOADN                            R5 244
       95 SETTABLEKS                       R5 R4 K25 ["MaxWidth"]
       97 GETIMPORT                        R5 K47 [UDim2.fromOffset]
       99 LOADN                            R6 6
      100 LOADN                            R7 6
      101 CALL                             R5 2 1
      102 SETTABLEKS                       R5 R4 K26 ["HoverCircleAdditionalSize"]
      104 GETTABLEKS                       R5 R3 K48 ["TextSecondary"]
      106 SETTABLEKS                       R5 R4 K27 ["HoverCircleColor"]
      108 LOADK                            R5 K49 [0.7]
      109 SETTABLEKS                       R5 R4 K28 ["HoverCircleTransparency"]
      111 LOADK                            R5 K50 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Close.png"]
      112 SETTABLEKS                       R5 R4 K29 ["CloseButtonImage"]
      114 GETTABLEKS                       R5 R1 K51 ["join"]
      116 MOVE                             R6 R4
      117 NEWTABLE                         R7 8 0
      119 GETTABLEKS                       R8 R1 K51 ["join"]
      121 MOVE                             R9 R4
      122 DUPTABLE                         R10 K54 [{"BackgroundColor", "Icon", "HoverCircleColor", "TextColor", "StrokeThickness"}]
      123 GETTABLEKS                       R11 R3 K55 ["AlertBackgroundWarning"]
      125 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      127 LOADK                            R11 K56 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Warning.png"]
      128 SETTABLEKS                       R11 R10 K52 ["Icon"]
      130 GETIMPORT                        R11 K58 [Color3.new]
      132 LOADK                            R12 K59 [0.4]
      133 LOADK                            R13 K59 [0.4]
      134 LOADK                            R14 K59 [0.4]
      135 CALL                             R11 3 1
      136 SETTABLEKS                       R11 R10 K27 ["HoverCircleColor"]
      138 GETIMPORT                        R11 K61 [Color3.fromRGB]
      140 LOADN                            R12 28
      141 LOADN                            R13 28
      142 LOADN                            R14 28
      143 CALL                             R11 3 1
      144 SETTABLEKS                       R11 R10 K16 ["TextColor"]
      146 LOADN                            R11 0
      147 SETTABLEKS                       R11 R10 K53 ["StrokeThickness"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K62 ["&Warning"]
      152 GETTABLEKS                       R8 R1 K51 ["join"]
      154 MOVE                             R9 R4
      155 DUPTABLE                         R10 K63 [{"BackgroundColor", "Icon", "StrokeThickness", "HoverCircleColor", "TextColor"}]
      156 GETTABLEKS                       R11 R3 K64 ["AlertBackgroundError"]
      158 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      160 LOADK                            R11 K65 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Error.png"]
      161 SETTABLEKS                       R11 R10 K52 ["Icon"]
      163 LOADN                            R11 0
      164 SETTABLEKS                       R11 R10 K53 ["StrokeThickness"]
      166 GETIMPORT                        R11 K58 [Color3.new]
      168 LOADN                            R12 1
      169 LOADN                            R13 1
      170 LOADN                            R14 1
      171 CALL                             R11 3 1
      172 SETTABLEKS                       R11 R10 K27 ["HoverCircleColor"]
      174 GETIMPORT                        R11 K58 [Color3.new]
      176 LOADN                            R12 1
      177 LOADN                            R13 1
      178 LOADN                            R14 1
      179 CALL                             R11 3 1
      180 SETTABLEKS                       R11 R10 K16 ["TextColor"]
      182 CALL                             R8 2 1
      183 SETTABLEKS                       R8 R7 K66 ["&Error"]
      185 GETTABLEKS                       R8 R1 K51 ["join"]
      187 MOVE                             R9 R4
      188 DUPTABLE                         R10 K67 [{"BackgroundColor", "Icon", "StrokeThickness", "HoverCircleColor", "HoverCircleTransparency", "TextColor"}]
      189 GETTABLEKS                       R11 R3 K68 ["AlertBackgroundSuccess"]
      191 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      193 LOADK                            R11 K69 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Success.png"]
      194 SETTABLEKS                       R11 R10 K52 ["Icon"]
      196 LOADN                            R11 0
      197 SETTABLEKS                       R11 R10 K53 ["StrokeThickness"]
      199 GETIMPORT                        R11 K58 [Color3.new]
      201 LOADN                            R12 1
      202 LOADN                            R13 1
      203 LOADN                            R14 1
      204 CALL                             R11 3 1
      205 SETTABLEKS                       R11 R10 K27 ["HoverCircleColor"]
      207 LOADK                            R11 K70 [0.8]
      208 SETTABLEKS                       R11 R10 K28 ["HoverCircleTransparency"]
      210 GETIMPORT                        R11 K58 [Color3.new]
      212 LOADN                            R12 1
      213 LOADN                            R13 1
      214 LOADN                            R14 1
      215 CALL                             R11 3 1
      216 SETTABLEKS                       R11 R10 K16 ["TextColor"]
      218 CALL                             R8 2 1
      219 SETTABLEKS                       R8 R7 K71 ["&Success"]
      221 GETTABLEKS                       R8 R1 K51 ["join"]
      223 MOVE                             R9 R4
      224 DUPTABLE                         R10 K63 [{"BackgroundColor", "Icon", "StrokeThickness", "HoverCircleColor", "TextColor"}]
      225 GETTABLEKS                       R11 R3 K72 ["AlertBackgroundInfo"]
      227 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      229 LOADK                            R11 K73 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Info.png"]
      230 SETTABLEKS                       R11 R10 K52 ["Icon"]
      232 LOADN                            R11 0
      233 SETTABLEKS                       R11 R10 K53 ["StrokeThickness"]
      235 GETIMPORT                        R11 K58 [Color3.new]
      237 LOADN                            R12 1
      238 LOADN                            R13 1
      239 LOADN                            R14 1
      240 CALL                             R11 3 1
      241 SETTABLEKS                       R11 R10 K27 ["HoverCircleColor"]
      243 GETIMPORT                        R11 K58 [Color3.new]
      245 LOADN                            R12 1
      246 LOADN                            R13 1
      247 LOADN                            R14 1
      248 CALL                             R11 3 1
      249 SETTABLEKS                       R11 R10 K16 ["TextColor"]
      251 CALL                             R8 2 1
      252 SETTABLEKS                       R8 R7 K74 ["&Info"]
      254 GETTABLEKS                       R8 R1 K51 ["join"]
      256 MOVE                             R9 R4
      257 DUPTABLE                         R10 K75 [{"Icon", "StrokeThickness", "HoverCircleColor", "TextColor"}]
      258 LOADK                            R11 K73 ["rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Info.png"]
      259 SETTABLEKS                       R11 R10 K52 ["Icon"]
      261 LOADN                            R11 0
      262 SETTABLEKS                       R11 R10 K53 ["StrokeThickness"]
      264 GETIMPORT                        R11 K58 [Color3.new]
      266 LOADN                            R12 1
      267 LOADN                            R13 1
      268 LOADN                            R14 1
      269 CALL                             R11 3 1
      270 SETTABLEKS                       R11 R10 K27 ["HoverCircleColor"]
      272 GETIMPORT                        R11 K58 [Color3.new]
      274 LOADN                            R12 1
      275 LOADN                            R13 1
      276 LOADN                            R14 1
      277 CALL                             R11 3 1
      278 SETTABLEKS                       R11 R10 K16 ["TextColor"]
      280 CALL                             R8 2 1
      281 SETTABLEKS                       R8 R7 K76 ["&Notice"]
      283 CALL                             R5 2 -1
      284 RETURN                           R5 -1
