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
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K47 [{["SemanticColorActionPrimaryBrandFill"], ["SemanticColorActionSecondary"], ["SemanticColorActionSecondaryTransparency"] = 0.92, ["SemanticColorComponentInputFill"], ["SemanticColorComponentInputFillTransparency"] = 0.92, ["SemanticColorContentDefault"], ["SemanticColorContentDisabled"], ["SemanticColorContentEmphasis"], ["SemanticColorContentMuted"], ["SemanticColorContentStandard"], ["SemanticColorShift300"], ["SemanticColorShift300Transparency"] = 0.88, ["SemanticColorStatesHover"], ["SemanticColorStatesHoverTransparency"] = 0.92, ["SemanticColorStatesPressed"], ["SemanticColorStatesPressedTransparency"] = 0.88, ["SemanticColorStrokeEmphasis"], ["SemanticColorStrokeEmphasisTransparency"] = 0.84, ["SemanticColorSurface0"], ["SemanticColorSurface100"], ["SemanticColorSurfaceOutline"], ["SemanticColorSurfaceOutlineTransparency"] = 0.88, ["SemanticColorSystemEmphasis"], ["InverseSurfaceSurface0"], ["InverseContentEmphasis"], ["ColorStrokeDefault"], ["ColorStrokeDefaultTransparency"] = 0.88, ["TooltipStrokeColor"], ["TreemapSurfaceColor"], ["TreemapPlaceholderFont"], ["FontSize_250"] = 12.6, ["FontSize_300"] = 15.12}]
       19 GETIMPORT                        R4 K50 [Color3.fromHex]
       21 LOADK                            R5 K51 ["#3C64FA"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K10 ["SemanticColorActionPrimaryBrandFill"]
       25 GETIMPORT                        R4 K50 [Color3.fromHex]
       27 LOADK                            R5 K52 ["#333B4C"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K11 ["SemanticColorActionSecondary"]
       31 GETIMPORT                        R4 K50 [Color3.fromHex]
       33 LOADK                            R5 K52 ["#333B4C"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K14 ["SemanticColorComponentInputFill"]
       37 GETIMPORT                        R4 K50 [Color3.fromHex]
       39 LOADK                            R5 K53 ["#494D5A"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K16 ["SemanticColorContentDefault"]
       43 GETIMPORT                        R4 K50 [Color3.fromHex]
       45 LOADK                            R5 K54 ["#BBBCBE"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K17 ["SemanticColorContentDisabled"]
       49 GETIMPORT                        R4 K50 [Color3.fromHex]
       51 LOADK                            R5 K55 ["#202227"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K18 ["SemanticColorContentEmphasis"]
       55 GETIMPORT                        R4 K50 [Color3.fromHex]
       57 LOADK                            R5 K56 ["#696A6D"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K19 ["SemanticColorContentMuted"]
       61 GETIMPORT                        R4 K50 [Color3.fromHex]
       63 LOADK                            R5 K57 ["#111216"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K20 ["SemanticColorContentStandard"]
       67 GETIMPORT                        R4 K50 [Color3.fromHex]
       69 LOADK                            R5 K58 ["#1B254B"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K21 ["SemanticColorShift300"]
       73 GETIMPORT                        R4 K50 [Color3.fromHex]
       75 LOADK                            R5 K52 ["#333B4C"]
       76 CALL                             R4 1 1
       77 SETTABLEKS                       R4 R3 K24 ["SemanticColorStatesHover"]
       79 GETIMPORT                        R4 K60 [Color3.fromRGB]
       81 LOADN                            R5 27
       82 LOADN                            R6 37
       83 LOADN                            R7 75
       84 CALL                             R4 3 1
       85 SETTABLEKS                       R4 R3 K26 ["SemanticColorStatesPressed"]
       87 GETIMPORT                        R4 K50 [Color3.fromHex]
       89 LOADK                            R5 K58 ["#1B254B"]
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K28 ["SemanticColorStrokeEmphasis"]
       93 GETIMPORT                        R4 K50 [Color3.fromHex]
       95 LOADK                            R5 K61 ["#F2F2F3"]
       96 CALL                             R4 1 1
       97 SETTABLEKS                       R4 R3 K31 ["SemanticColorSurface0"]
       99 GETIMPORT                        R4 K50 [Color3.fromHex]
      101 LOADK                            R5 K62 ["#FFFFFF"]
      102 CALL                             R4 1 1
      103 SETTABLEKS                       R4 R3 K32 ["SemanticColorSurface100"]
      105 GETIMPORT                        R4 K50 [Color3.fromHex]
      107 LOADK                            R5 K63 ["#000000"]
      108 CALL                             R4 1 1
      109 SETTABLEKS                       R4 R3 K33 ["SemanticColorSurfaceOutline"]
      111 GETIMPORT                        R4 K50 [Color3.fromHex]
      113 LOADK                            R5 K64 ["#335FFF"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K35 ["SemanticColorSystemEmphasis"]
      117 GETIMPORT                        R4 K60 [Color3.fromRGB]
      119 LOADN                            R5 18
      120 LOADN                            R6 18
      121 LOADN                            R7 21
      122 CALL                             R4 3 1
      123 SETTABLEKS                       R4 R3 K36 ["InverseSurfaceSurface0"]
      125 GETIMPORT                        R4 K60 [Color3.fromRGB]
      127 LOADN                            R5 247
      128 LOADN                            R6 247
      129 LOADN                            R7 248
      130 CALL                             R4 3 1
      131 SETTABLEKS                       R4 R3 K37 ["InverseContentEmphasis"]
      133 GETIMPORT                        R4 K60 [Color3.fromRGB]
      135 LOADN                            R5 27
      136 LOADN                            R6 37
      137 LOADN                            R7 75
      138 CALL                             R4 3 1
      139 SETTABLEKS                       R4 R3 K38 ["ColorStrokeDefault"]
      141 GETIMPORT                        R4 K60 [Color3.fromRGB]
      143 LOADN                            R5 180
      144 LOADN                            R6 180
      145 LOADN                            R7 185
      146 CALL                             R4 3 1
      147 SETTABLEKS                       R4 R3 K40 ["TooltipStrokeColor"]
      149 GETIMPORT                        R4 K60 [Color3.fromRGB]
      151 LOADN                            R5 30
      152 LOADN                            R6 30
      153 LOADN                            R7 35
      154 CALL                             R4 3 1
      155 SETTABLEKS                       R4 R3 K41 ["TreemapSurfaceColor"]
      157 GETIMPORT                        R4 K68 [Enum.Font.SourceSansBold]
      159 SETTABLEKS                       R4 R3 K42 ["TreemapPlaceholderFont"]
      161 MOVE                             R4 R2
      162 LOADK                            R5 K69 ["SceneAnalysisLightTheme"]
      163 NEWTABLE                         R6 0 0
      165 MOVE                             R7 R3
      166 CALL                             R4 3 -1
      167 RETURN                           R4 -1
