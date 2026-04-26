MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K42 [{"SemanticColorActionPrimaryBrandFill", "SemanticColorActionSecondary", "SemanticColorActionSecondaryTransparency", "SemanticColorComponentInputFill", "SemanticColorComponentInputFillTransparency", "SemanticColorContentDefault", "SemanticColorContentDisabled", "SemanticColorContentEmphasis", "SemanticColorContentMuted", "SemanticColorContentStandard", "SemanticColorShift300", "SemanticColorShift300Transparency", "SemanticColorStatesHover", "SemanticColorStatesHoverTransparency", "SemanticColorStatesPressed", "SemanticColorStatesPressedTransparency", "SemanticColorStrokeEmphasis", "SemanticColorStrokeEmphasisTransparency", "SemanticColorSurface0", "SemanticColorSurface100", "SemanticColorSurfaceOutline", "SemanticColorSurfaceOutlineTransparency", "SemanticColorSystemEmphasis", "InverseSurfaceSurface0", "InverseContentEmphasis", "ColorStrokeDefault", "ColorStrokeDefaultTransparency", "TooltipStrokeColor", "TreemapSurfaceColor", "TreemapPlaceholderFont", "FontSize_250", "FontSize_300"}]
       19 GETIMPORT                        R4 K45 [Color3.fromHex]
       21 LOADK                            R5 K46 ["#3C64FA"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K10 ["SemanticColorActionPrimaryBrandFill"]
       25 GETIMPORT                        R4 K45 [Color3.fromHex]
       27 LOADK                            R5 K47 ["#333B4C"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K11 ["SemanticColorActionSecondary"]
       31 LOADK                            R4 K48 [0.92]
       32 SETTABLEKS                       R4 R3 K12 ["SemanticColorActionSecondaryTransparency"]
       34 GETIMPORT                        R4 K45 [Color3.fromHex]
       36 LOADK                            R5 K47 ["#333B4C"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K13 ["SemanticColorComponentInputFill"]
       40 LOADK                            R4 K48 [0.92]
       41 SETTABLEKS                       R4 R3 K14 ["SemanticColorComponentInputFillTransparency"]
       43 GETIMPORT                        R4 K45 [Color3.fromHex]
       45 LOADK                            R5 K49 ["#494D5A"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K15 ["SemanticColorContentDefault"]
       49 GETIMPORT                        R4 K45 [Color3.fromHex]
       51 LOADK                            R5 K50 ["#BBBCBE"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K16 ["SemanticColorContentDisabled"]
       55 GETIMPORT                        R4 K45 [Color3.fromHex]
       57 LOADK                            R5 K51 ["#202227"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K17 ["SemanticColorContentEmphasis"]
       61 GETIMPORT                        R4 K45 [Color3.fromHex]
       63 LOADK                            R5 K52 ["#696A6D"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K18 ["SemanticColorContentMuted"]
       67 GETIMPORT                        R4 K45 [Color3.fromHex]
       69 LOADK                            R5 K53 ["#111216"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K19 ["SemanticColorContentStandard"]
       73 GETIMPORT                        R4 K45 [Color3.fromHex]
       75 LOADK                            R5 K54 ["#1B254B"]
       76 CALL                             R4 1 1
       77 SETTABLEKS                       R4 R3 K20 ["SemanticColorShift300"]
       79 LOADK                            R4 K55 [0.88]
       80 SETTABLEKS                       R4 R3 K21 ["SemanticColorShift300Transparency"]
       82 GETIMPORT                        R4 K45 [Color3.fromHex]
       84 LOADK                            R5 K47 ["#333B4C"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R3 K22 ["SemanticColorStatesHover"]
       88 LOADK                            R4 K48 [0.92]
       89 SETTABLEKS                       R4 R3 K23 ["SemanticColorStatesHoverTransparency"]
       91 GETIMPORT                        R4 K57 [Color3.fromRGB]
       93 LOADN                            R5 27
       94 LOADN                            R6 37
       95 LOADN                            R7 75
       96 CALL                             R4 3 1
       97 SETTABLEKS                       R4 R3 K24 ["SemanticColorStatesPressed"]
       99 LOADK                            R4 K55 [0.88]
      100 SETTABLEKS                       R4 R3 K25 ["SemanticColorStatesPressedTransparency"]
      102 GETIMPORT                        R4 K45 [Color3.fromHex]
      104 LOADK                            R5 K54 ["#1B254B"]
      105 CALL                             R4 1 1
      106 SETTABLEKS                       R4 R3 K26 ["SemanticColorStrokeEmphasis"]
      108 LOADK                            R4 K58 [0.84]
      109 SETTABLEKS                       R4 R3 K27 ["SemanticColorStrokeEmphasisTransparency"]
      111 GETIMPORT                        R4 K45 [Color3.fromHex]
      113 LOADK                            R5 K59 ["#F2F2F3"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K28 ["SemanticColorSurface0"]
      117 GETIMPORT                        R4 K45 [Color3.fromHex]
      119 LOADK                            R5 K60 ["#FFFFFF"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K29 ["SemanticColorSurface100"]
      123 GETIMPORT                        R4 K45 [Color3.fromHex]
      125 LOADK                            R5 K61 ["#000000"]
      126 CALL                             R4 1 1
      127 SETTABLEKS                       R4 R3 K30 ["SemanticColorSurfaceOutline"]
      129 LOADK                            R4 K55 [0.88]
      130 SETTABLEKS                       R4 R3 K31 ["SemanticColorSurfaceOutlineTransparency"]
      132 GETIMPORT                        R4 K45 [Color3.fromHex]
      134 LOADK                            R5 K62 ["#335FFF"]
      135 CALL                             R4 1 1
      136 SETTABLEKS                       R4 R3 K32 ["SemanticColorSystemEmphasis"]
      138 GETIMPORT                        R4 K57 [Color3.fromRGB]
      140 LOADN                            R5 18
      141 LOADN                            R6 18
      142 LOADN                            R7 21
      143 CALL                             R4 3 1
      144 SETTABLEKS                       R4 R3 K33 ["InverseSurfaceSurface0"]
      146 GETIMPORT                        R4 K57 [Color3.fromRGB]
      148 LOADN                            R5 247
      149 LOADN                            R6 247
      150 LOADN                            R7 248
      151 CALL                             R4 3 1
      152 SETTABLEKS                       R4 R3 K34 ["InverseContentEmphasis"]
      154 GETIMPORT                        R4 K57 [Color3.fromRGB]
      156 LOADN                            R5 27
      157 LOADN                            R6 37
      158 LOADN                            R7 75
      159 CALL                             R4 3 1
      160 SETTABLEKS                       R4 R3 K35 ["ColorStrokeDefault"]
      162 LOADK                            R4 K55 [0.88]
      163 SETTABLEKS                       R4 R3 K36 ["ColorStrokeDefaultTransparency"]
      165 GETIMPORT                        R4 K57 [Color3.fromRGB]
      167 LOADN                            R5 180
      168 LOADN                            R6 180
      169 LOADN                            R7 185
      170 CALL                             R4 3 1
      171 SETTABLEKS                       R4 R3 K37 ["TooltipStrokeColor"]
      173 GETIMPORT                        R4 K57 [Color3.fromRGB]
      175 LOADN                            R5 30
      176 LOADN                            R6 30
      177 LOADN                            R7 35
      178 CALL                             R4 3 1
      179 SETTABLEKS                       R4 R3 K38 ["TreemapSurfaceColor"]
      181 GETIMPORT                        R4 K66 [Enum.Font.SourceSansBold]
      183 SETTABLEKS                       R4 R3 K39 ["TreemapPlaceholderFont"]
      185 LOADK                            R4 K67 [12.6]
      186 SETTABLEKS                       R4 R3 K40 ["FontSize_250"]
      188 LOADK                            R4 K68 [15.12]
      189 SETTABLEKS                       R4 R3 K41 ["FontSize_300"]
      191 MOVE                             R4 R2
      192 LOADK                            R5 K69 ["SceneAnalysisLightTheme"]
      193 NEWTABLE                         R6 0 0
      195 MOVE                             R7 R3
      196 CALL                             R4 3 -1
      197 RETURN                           R4 -1
