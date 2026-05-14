MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 GETTABLEKS                       R4 R1 K11 ["Styling"]
       29 GETTABLEKS                       R4 R4 K13 ["createStyleSheet"]
       31 NEWTABLE                         R5 0 18
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 [".SceneAnalysis-FillX"]
       35 DUPTABLE                         R8 K16 [{"Size"}]
       36 GETIMPORT                        R9 K19 [UDim2.fromScale]
       38 LOADN                            R10 1
       39 LOADN                            R11 1
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 NEWTABLE                         R9 0 1
       45 MOVE                             R10 R3
       46 LOADK                            R11 K20 ["::UIFlexItem"]
       47 DUPTABLE                         R12 K22 [{"FlexMode"}]
       48 GETIMPORT                        R13 K26 [Enum.UIFlexMode.Fill]
       50 SETTABLEKS                       R13 R12 K21 ["FlexMode"]
       52 CALL                             R10 2 -1
       53 SETLIST                          R9 R10 -1 [1]
       55 CALL                             R6 3 1
       56 MOVE                             R7 R3
       57 LOADK                            R8 K27 [".SceneAnalysis-BackgroundColor"]
       58 DUPTABLE                         R9 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
       59 LOADK                            R10 K31 ["$SemanticColorSurface100"]
       60 SETTABLEKS                       R10 R9 K28 ["BackgroundColor3"]
       62 LOADN                            R10 0
       63 SETTABLEKS                       R10 R9 K29 ["BackgroundTransparency"]
       65 CALL                             R7 2 1
       66 MOVE                             R8 R3
       67 LOADK                            R9 K32 [".SceneAnalysis-StandardText"]
       68 DUPTABLE                         R10 K36 [{"Font", "TextColor3", "TextSize"}]
       69 GETTABLEKS                       R11 R2 K37 ["defaultFont"]
       71 SETTABLEKS                       R11 R10 K33 ["Font"]
       73 LOADK                            R11 K38 ["$SemanticColorContentEmphasis"]
       74 SETTABLEKS                       R11 R10 K34 ["TextColor3"]
       76 LOADK                            R11 K39 ["$FontSize_300"]
       77 SETTABLEKS                       R11 R10 K35 ["TextSize"]
       79 CALL                             R8 2 1
       80 MOVE                             R9 R3
       81 LOADK                            R10 K40 [".SceneAnalysis-SmallText"]
       82 DUPTABLE                         R11 K36 [{"Font", "TextColor3", "TextSize"}]
       83 GETTABLEKS                       R12 R2 K37 ["defaultFont"]
       85 SETTABLEKS                       R12 R11 K33 ["Font"]
       87 LOADK                            R12 K38 ["$SemanticColorContentEmphasis"]
       88 SETTABLEKS                       R12 R11 K34 ["TextColor3"]
       90 LOADK                            R12 K41 ["$FontSize_250"]
       91 SETTABLEKS                       R12 R11 K35 ["TextSize"]
       93 CALL                             R9 2 1
       94 MOVE                             R10 R3
       95 LOADK                            R11 K42 [".SceneAnalysis-ScrollingFrame"]
       96 DUPTABLE                         R12 K45 [{"ScrollBarImageColor3", "ScrollBarImageTransparency"}]
       97 LOADK                            R13 K46 ["$SemanticColorShift300"]
       98 SETTABLEKS                       R13 R12 K43 ["ScrollBarImageColor3"]
      100 LOADK                            R13 K47 ["$SemanticColorShift300Transparency"]
      101 SETTABLEKS                       R13 R12 K44 ["ScrollBarImageTransparency"]
      103 CALL                             R10 2 1
      104 MOVE                             R11 R3
      105 LOADK                            R12 K48 [".SceneAnalysis-SummaryBar"]
      106 DUPTABLE                         R13 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      107 LOADK                            R14 K31 ["$SemanticColorSurface100"]
      108 SETTABLEKS                       R14 R13 K28 ["BackgroundColor3"]
      110 LOADN                            R14 0
      111 SETTABLEKS                       R14 R13 K29 ["BackgroundTransparency"]
      113 CALL                             R11 2 1
      114 MOVE                             R12 R3
      115 LOADK                            R13 K49 [".SceneAnalysis-ColumnHeader"]
      116 DUPTABLE                         R14 K52 [{"BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
      117 LOADN                            R15 1
      118 SETTABLEKS                       R15 R14 K29 ["BackgroundTransparency"]
      120 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R15 R14 K50 ["TextXAlignment"]
      124 GETIMPORT                        R15 K56 [Enum.TextYAlignment.Center]
      126 SETTABLEKS                       R15 R14 K51 ["TextYAlignment"]
      128 CALL                             R12 2 1
      129 MOVE                             R13 R3
      130 LOADK                            R14 K57 [".SceneAnalysis-ListItems"]
      131 DUPTABLE                         R15 K60 [{"BackgroundTransparency", "BorderSizePixel", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      132 LOADN                            R16 1
      133 SETTABLEKS                       R16 R15 K29 ["BackgroundTransparency"]
      135 LOADN                            R16 0
      136 SETTABLEKS                       R16 R15 K58 ["BorderSizePixel"]
      138 GETIMPORT                        R16 K62 [Enum.TextTruncate.AtEnd]
      140 SETTABLEKS                       R16 R15 K59 ["TextTruncate"]
      142 GETIMPORT                        R16 K54 [Enum.TextXAlignment.Left]
      144 SETTABLEKS                       R16 R15 K50 ["TextXAlignment"]
      146 GETIMPORT                        R16 K56 [Enum.TextYAlignment.Center]
      148 SETTABLEKS                       R16 R15 K51 ["TextYAlignment"]
      150 CALL                             R13 2 1
      151 MOVE                             R14 R3
      152 LOADK                            R15 K63 [".SceneAnalysis-DefaultButtonFrame"]
      153 DUPTABLE                         R16 K65 [{"BackgroundTransparency", "BorderSizePixel", "AutoButtonColor"}]
      154 LOADN                            R17 1
      155 SETTABLEKS                       R17 R16 K29 ["BackgroundTransparency"]
      157 LOADN                            R17 0
      158 SETTABLEKS                       R17 R16 K58 ["BorderSizePixel"]
      160 LOADB                            R17 0
      161 SETTABLEKS                       R17 R16 K64 ["AutoButtonColor"]
      163 CALL                             R14 2 1
      164 MOVE                             R15 R3
      165 LOADK                            R16 K66 [".SceneAnalysis-Hovered"]
      166 DUPTABLE                         R17 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      167 LOADK                            R18 K67 ["$SemanticColorStatesHover"]
      168 SETTABLEKS                       R18 R17 K28 ["BackgroundColor3"]
      170 LOADK                            R18 K68 ["$SemanticColorStatesHoverTransparency"]
      171 SETTABLEKS                       R18 R17 K29 ["BackgroundTransparency"]
      173 CALL                             R15 2 1
      174 MOVE                             R16 R3
      175 LOADK                            R17 K69 [".SceneAnalysis-Selected"]
      176 DUPTABLE                         R18 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      177 LOADK                            R19 K70 ["$SemanticColorSystemEmphasis"]
      178 SETTABLEKS                       R19 R18 K28 ["BackgroundColor3"]
      180 LOADK                            R19 K71 [0.76]
      181 SETTABLEKS                       R19 R18 K29 ["BackgroundTransparency"]
      183 CALL                             R16 2 1
      184 MOVE                             R17 R3
      185 LOADK                            R18 K72 [".SceneAnalysis-Header-Selected"]
      186 DUPTABLE                         R19 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      187 LOADK                            R20 K70 ["$SemanticColorSystemEmphasis"]
      188 SETTABLEKS                       R20 R19 K28 ["BackgroundColor3"]
      190 LOADK                            R20 K73 [0.1]
      191 SETTABLEKS                       R20 R19 K29 ["BackgroundTransparency"]
      193 CALL                             R17 2 1
      194 MOVE                             R18 R3
      195 LOADK                            R19 K74 [".SceneAnalysis-Pressed"]
      196 DUPTABLE                         R20 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      197 LOADK                            R21 K75 ["$SemanticColorStatesPressed"]
      198 SETTABLEKS                       R21 R20 K28 ["BackgroundColor3"]
      200 LOADK                            R21 K76 ["$SemanticColorStatesPressedTransparency"]
      201 SETTABLEKS                       R21 R20 K29 ["BackgroundTransparency"]
      203 CALL                             R18 2 1
      204 MOVE                             R19 R3
      205 LOADK                            R20 K77 [".SceneAnalysis-TooltipFill"]
      206 DUPTABLE                         R21 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      207 LOADK                            R22 K78 ["$InverseSurfaceSurface0"]
      208 SETTABLEKS                       R22 R21 K28 ["BackgroundColor3"]
      210 LOADN                            R22 0
      211 SETTABLEKS                       R22 R21 K29 ["BackgroundTransparency"]
      213 CALL                             R19 2 1
      214 MOVE                             R20 R3
      215 LOADK                            R21 K79 [".SceneAnalysis-TooltipText"]
      216 DUPTABLE                         R22 K80 [{"Font", "TextColor3"}]
      217 GETTABLEKS                       R23 R2 K37 ["defaultFont"]
      219 SETTABLEKS                       R23 R22 K33 ["Font"]
      221 LOADK                            R23 K81 ["$InverseContentEmphasis"]
      222 SETTABLEKS                       R23 R22 K34 ["TextColor3"]
      224 CALL                             R20 2 1
      225 MOVE                             R21 R3
      226 LOADK                            R22 K82 [".SceneAnalysis-StrokeDefault"]
      227 DUPTABLE                         R23 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      228 LOADK                            R24 K83 ["$ColorStrokeDefault"]
      229 SETTABLEKS                       R24 R23 K28 ["BackgroundColor3"]
      231 LOADK                            R24 K84 ["$ColorStrokeDefaultTransparency"]
      232 SETTABLEKS                       R24 R23 K29 ["BackgroundTransparency"]
      234 CALL                             R21 2 1
      235 SETLIST                          R5 R6 16 [1]
      237 MOVE                             R6 R3
      238 LOADK                            R7 K85 [".SceneAnalysis-TreemapSurface"]
      239 DUPTABLE                         R8 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
      240 LOADK                            R9 K86 ["$TreemapSurfaceColor"]
      241 SETTABLEKS                       R9 R8 K28 ["BackgroundColor3"]
      243 LOADN                            R9 0
      244 SETTABLEKS                       R9 R8 K29 ["BackgroundTransparency"]
      246 CALL                             R6 2 1
      247 MOVE                             R7 R3
      248 LOADK                            R8 K87 [".SceneAnalysis-TreemapPlaceholderText"]
      249 DUPTABLE                         R9 K36 [{"Font", "TextColor3", "TextSize"}]
      250 LOADK                            R10 K88 ["$TreemapPlaceholderFont"]
      251 SETTABLEKS                       R10 R9 K33 ["Font"]
      253 LOADK                            R10 K89 ["$SemanticColorContentMuted"]
      254 SETTABLEKS                       R10 R9 K34 ["TextColor3"]
      256 LOADK                            R10 K39 ["$FontSize_300"]
      257 SETTABLEKS                       R10 R9 K35 ["TextSize"]
      259 CALL                             R7 2 -1
      260 SETLIST                          R5 R6 -1 [17]
      262 NEWTABLE                         R6 0 0
      264 MOVE                             R7 R4
      265 LOADK                            R8 K2 ["SceneAnalysis"]
      266 MOVE                             R9 R5
      267 MOVE                             R10 R6
      268 CALL                             R7 3 -1
      269 RETURN                           R7 -1
