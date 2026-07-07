MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K8 ["Style"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R2 K9 ["StyleKey"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K38 [{["BackgroundColor"], ["BackgroundColorHoverDarkerMultiplier"] = 0.15, ["StrokeColor"], ["StrokeTransparency"] = 0.5, ["TitleFont"], ["PrimaryActionFont"], ["TextColor"], ["TextSize"] = 18, ["TopPadding"], ["HorizontalPadding"], ["IconPosition"], ["IconSize"], ["ContentsSpacing"] = 8, ["CornerRadius"], ["InnerPadding"] = 12, ["MaxWidth"] = 500, ["HoverCircleAdditionalSize"], ["HoverCircleColor"], ["HoverCircleTransparency"] = 0.7, ["CloseButtonImage"] = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Close.png"}]
       24 GETTABLEKS                       R5 R3 K39 ["AlertBackgroundDefault"]
       26 SETTABLEKS                       R5 R4 K10 ["BackgroundColor"]
       28 GETTABLEKS                       R5 R3 K40 ["OtherDivider"]
       30 SETTABLEKS                       R5 R4 K13 ["StrokeColor"]
       32 GETIMPORT                        R5 K44 [Enum.Font.SourceSansBold]
       34 SETTABLEKS                       R5 R4 K16 ["TitleFont"]
       36 GETIMPORT                        R5 K46 [Enum.Font.SourceSans]
       38 SETTABLEKS                       R5 R4 K17 ["PrimaryActionFont"]
       40 GETTABLEKS                       R5 R3 K47 ["TextPrimary"]
       42 SETTABLEKS                       R5 R4 K18 ["TextColor"]
       44 GETIMPORT                        R5 K50 [UDim.new]
       46 LOADN                            R6 0
       47 LOADN                            R7 7
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K21 ["TopPadding"]
       51 GETIMPORT                        R5 K50 [UDim.new]
       53 LOADN                            R6 0
       54 LOADN                            R7 -10
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K22 ["HorizontalPadding"]
       58 GETIMPORT                        R5 K53 [UDim2.fromOffset]
       60 LOADN                            R6 0
       61 LOADN                            R7 2
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K23 ["IconPosition"]
       65 GETIMPORT                        R5 K53 [UDim2.fromOffset]
       67 LOADN                            R6 16
       68 LOADN                            R7 16
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K24 ["IconSize"]
       72 GETIMPORT                        R5 K50 [UDim.new]
       74 LOADN                            R6 0
       75 LOADN                            R7 8
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K27 ["CornerRadius"]
       79 GETIMPORT                        R5 K53 [UDim2.fromOffset]
       81 LOADN                            R6 6
       82 LOADN                            R7 6
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R4 K32 ["HoverCircleAdditionalSize"]
       86 GETTABLEKS                       R5 R3 K54 ["TextSecondary"]
       88 SETTABLEKS                       R5 R4 K33 ["HoverCircleColor"]
       90 GETTABLEKS                       R5 R1 K55 ["join"]
       92 MOVE                             R6 R4
       93 NEWTABLE                         R7 8 0
       95 GETTABLEKS                       R8 R1 K55 ["join"]
       97 MOVE                             R9 R4
       98 DUPTABLE                         R10 K60 [{["BackgroundColor"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Warning.png", ["HoverCircleColor"], ["TextColor"], ["StrokeThickness"] = 0}]
       99 GETTABLEKS                       R11 R3 K61 ["AlertBackgroundWarning"]
      101 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      103 GETIMPORT                        R11 K63 [Color3.new]
      105 LOADK                            R12 K64 [0.4]
      106 LOADK                            R13 K64 [0.4]
      107 LOADK                            R14 K64 [0.4]
      108 CALL                             R11 3 1
      109 SETTABLEKS                       R11 R10 K33 ["HoverCircleColor"]
      111 GETIMPORT                        R11 K66 [Color3.fromRGB]
      113 LOADN                            R12 28
      114 LOADN                            R13 28
      115 LOADN                            R14 28
      116 CALL                             R11 3 1
      117 SETTABLEKS                       R11 R10 K18 ["TextColor"]
      119 CALL                             R8 2 1
      120 SETTABLEKS                       R8 R7 K67 ["&Warning"]
      122 GETTABLEKS                       R8 R1 K55 ["join"]
      124 MOVE                             R9 R4
      125 DUPTABLE                         R10 K69 [{["BackgroundColor"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Error.png", ["StrokeThickness"] = 0, ["HoverCircleColor"], ["TextColor"]}]
      126 GETTABLEKS                       R11 R3 K70 ["AlertBackgroundError"]
      128 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      130 GETIMPORT                        R11 K63 [Color3.new]
      132 LOADN                            R12 1
      133 LOADN                            R13 1
      134 LOADN                            R14 1
      135 CALL                             R11 3 1
      136 SETTABLEKS                       R11 R10 K33 ["HoverCircleColor"]
      138 GETIMPORT                        R11 K63 [Color3.new]
      140 LOADN                            R12 1
      141 LOADN                            R13 1
      142 LOADN                            R14 1
      143 CALL                             R11 3 1
      144 SETTABLEKS                       R11 R10 K18 ["TextColor"]
      146 CALL                             R8 2 1
      147 SETTABLEKS                       R8 R7 K71 ["&Error"]
      149 GETTABLEKS                       R8 R1 K55 ["join"]
      151 MOVE                             R9 R4
      152 DUPTABLE                         R10 K74 [{["BackgroundColor"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Success.png", ["StrokeThickness"] = 0, ["HoverCircleColor"], ["HoverCircleTransparency"] = 0.8, ["TextColor"]}]
      153 GETTABLEKS                       R11 R3 K75 ["AlertBackgroundSuccess"]
      155 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      157 GETIMPORT                        R11 K63 [Color3.new]
      159 LOADN                            R12 1
      160 LOADN                            R13 1
      161 LOADN                            R14 1
      162 CALL                             R11 3 1
      163 SETTABLEKS                       R11 R10 K33 ["HoverCircleColor"]
      165 GETIMPORT                        R11 K63 [Color3.new]
      167 LOADN                            R12 1
      168 LOADN                            R13 1
      169 LOADN                            R14 1
      170 CALL                             R11 3 1
      171 SETTABLEKS                       R11 R10 K18 ["TextColor"]
      173 CALL                             R8 2 1
      174 SETTABLEKS                       R8 R7 K76 ["&Success"]
      176 GETTABLEKS                       R8 R1 K55 ["join"]
      178 MOVE                             R9 R4
      179 DUPTABLE                         R10 K78 [{["BackgroundColor"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Info.png", ["StrokeThickness"] = 0, ["HoverCircleColor"], ["TextColor"]}]
      180 GETTABLEKS                       R11 R3 K79 ["AlertBackgroundInfo"]
      182 SETTABLEKS                       R11 R10 K10 ["BackgroundColor"]
      184 GETIMPORT                        R11 K63 [Color3.new]
      186 LOADN                            R12 1
      187 LOADN                            R13 1
      188 LOADN                            R14 1
      189 CALL                             R11 3 1
      190 SETTABLEKS                       R11 R10 K33 ["HoverCircleColor"]
      192 GETIMPORT                        R11 K63 [Color3.new]
      194 LOADN                            R12 1
      195 LOADN                            R13 1
      196 LOADN                            R14 1
      197 CALL                             R11 3 1
      198 SETTABLEKS                       R11 R10 K18 ["TextColor"]
      200 CALL                             R8 2 1
      201 SETTABLEKS                       R8 R7 K80 ["&Info"]
      203 GETTABLEKS                       R8 R1 K55 ["join"]
      205 MOVE                             R9 R4
      206 DUPTABLE                         R10 K81 [{["Icon"] = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/Info.png", ["StrokeThickness"] = 0, ["HoverCircleColor"], ["TextColor"]}]
      207 GETIMPORT                        R11 K63 [Color3.new]
      209 LOADN                            R12 1
      210 LOADN                            R13 1
      211 LOADN                            R14 1
      212 CALL                             R11 3 1
      213 SETTABLEKS                       R11 R10 K33 ["HoverCircleColor"]
      215 GETIMPORT                        R11 K63 [Color3.new]
      217 LOADN                            R12 1
      218 LOADN                            R13 1
      219 LOADN                            R14 1
      220 CALL                             R11 3 1
      221 SETTABLEKS                       R11 R10 K18 ["TextColor"]
      223 CALL                             R8 2 1
      224 SETTABLEKS                       R8 R7 K82 ["&Notice"]
      226 CALL                             R5 2 -1
      227 RETURN                           R5 -1
