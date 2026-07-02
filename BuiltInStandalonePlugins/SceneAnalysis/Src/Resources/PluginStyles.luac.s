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
       58 DUPTABLE                         R9 K32 [{["BackgroundColor3"] = "$SemanticColorSurface100", ["BackgroundTransparency"] = 0}]
       59 CALL                             R7 2 1
       60 MOVE                             R8 R3
       61 LOADK                            R9 K33 [".SceneAnalysis-StandardText"]
       62 DUPTABLE                         R10 K39 [{["Font"], ["TextColor3"] = "$SemanticColorContentEmphasis", ["TextSize"] = "$FontSize_300"}]
       63 GETTABLEKS                       R11 R2 K40 ["defaultFont"]
       65 SETTABLEKS                       R11 R10 K34 ["Font"]
       67 CALL                             R8 2 1
       68 MOVE                             R9 R3
       69 LOADK                            R10 K41 [".SceneAnalysis-SmallText"]
       70 DUPTABLE                         R11 K43 [{["Font"], ["TextColor3"] = "$SemanticColorContentEmphasis", ["TextSize"] = "$FontSize_250"}]
       71 GETTABLEKS                       R12 R2 K40 ["defaultFont"]
       73 SETTABLEKS                       R12 R11 K34 ["Font"]
       75 CALL                             R9 2 1
       76 MOVE                             R10 R3
       77 LOADK                            R11 K44 [".SceneAnalysis-ScrollingFrame"]
       78 DUPTABLE                         R12 K49 [{["ScrollBarImageColor3"] = "$SemanticColorShift300", ["ScrollBarImageTransparency"] = "$SemanticColorShift300Transparency"}]
       79 CALL                             R10 2 1
       80 MOVE                             R11 R3
       81 LOADK                            R12 K50 [".SceneAnalysis-SummaryBar"]
       82 DUPTABLE                         R13 K32 [{["BackgroundColor3"] = "$SemanticColorSurface100", ["BackgroundTransparency"] = 0}]
       83 CALL                             R11 2 1
       84 MOVE                             R12 R3
       85 LOADK                            R13 K51 [".SceneAnalysis-ColumnHeader"]
       86 DUPTABLE                         R14 K55 [{["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
       87 GETIMPORT                        R15 K57 [Enum.TextXAlignment.Left]
       89 SETTABLEKS                       R15 R14 K53 ["TextXAlignment"]
       91 GETIMPORT                        R15 K59 [Enum.TextYAlignment.Center]
       93 SETTABLEKS                       R15 R14 K54 ["TextYAlignment"]
       95 CALL                             R12 2 1
       96 MOVE                             R13 R3
       97 LOADK                            R14 K60 [".SceneAnalysis-ListItems"]
       98 DUPTABLE                         R15 K63 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
       99 GETIMPORT                        R16 K65 [Enum.TextTruncate.AtEnd]
      101 SETTABLEKS                       R16 R15 K62 ["TextTruncate"]
      103 GETIMPORT                        R16 K57 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R16 R15 K53 ["TextXAlignment"]
      107 GETIMPORT                        R16 K59 [Enum.TextYAlignment.Center]
      109 SETTABLEKS                       R16 R15 K54 ["TextYAlignment"]
      111 CALL                             R13 2 1
      112 MOVE                             R14 R3
      113 LOADK                            R15 K66 [".SceneAnalysis-DefaultButtonFrame"]
      114 DUPTABLE                         R16 K69 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["AutoButtonColor"] = False}]
      115 CALL                             R14 2 1
      116 MOVE                             R15 R3
      117 LOADK                            R16 K70 [".SceneAnalysis-Hovered"]
      118 DUPTABLE                         R17 K73 [{["BackgroundColor3"] = "$SemanticColorStatesHover", ["BackgroundTransparency"] = "$SemanticColorStatesHoverTransparency"}]
      119 CALL                             R15 2 1
      120 MOVE                             R16 R3
      121 LOADK                            R17 K74 [".SceneAnalysis-Selected"]
      122 DUPTABLE                         R18 K77 [{["BackgroundColor3"] = "$SemanticColorSystemEmphasis", ["BackgroundTransparency"] = 0.76}]
      123 CALL                             R16 2 1
      124 MOVE                             R17 R3
      125 LOADK                            R18 K78 [".SceneAnalysis-Header-Selected"]
      126 DUPTABLE                         R19 K80 [{["BackgroundColor3"] = "$SemanticColorSystemEmphasis", ["BackgroundTransparency"] = 0.1}]
      127 CALL                             R17 2 1
      128 MOVE                             R18 R3
      129 LOADK                            R19 K81 [".SceneAnalysis-Pressed"]
      130 DUPTABLE                         R20 K84 [{["BackgroundColor3"] = "$SemanticColorStatesPressed", ["BackgroundTransparency"] = "$SemanticColorStatesPressedTransparency"}]
      131 CALL                             R18 2 1
      132 MOVE                             R19 R3
      133 LOADK                            R20 K85 [".SceneAnalysis-TooltipFill"]
      134 DUPTABLE                         R21 K87 [{["BackgroundColor3"] = "$InverseSurfaceSurface0", ["BackgroundTransparency"] = 0}]
      135 CALL                             R19 2 1
      136 MOVE                             R20 R3
      137 LOADK                            R21 K88 [".SceneAnalysis-TooltipText"]
      138 DUPTABLE                         R22 K90 [{["Font"], ["TextColor3"] = "$InverseContentEmphasis"}]
      139 GETTABLEKS                       R23 R2 K40 ["defaultFont"]
      141 SETTABLEKS                       R23 R22 K34 ["Font"]
      143 CALL                             R20 2 1
      144 MOVE                             R21 R3
      145 LOADK                            R22 K91 [".SceneAnalysis-StrokeDefault"]
      146 DUPTABLE                         R23 K94 [{["BackgroundColor3"] = "$ColorStrokeDefault", ["BackgroundTransparency"] = "$ColorStrokeDefaultTransparency"}]
      147 CALL                             R21 2 1
      148 SETLIST                          R5 R6 16 [1]
      150 MOVE                             R6 R3
      151 LOADK                            R7 K95 [".SceneAnalysis-TreemapSurface"]
      152 DUPTABLE                         R8 K97 [{["BackgroundColor3"] = "$TreemapSurfaceColor", ["BackgroundTransparency"] = 0}]
      153 CALL                             R6 2 1
      154 MOVE                             R7 R3
      155 LOADK                            R8 K98 [".SceneAnalysis-TreemapPlaceholderText"]
      156 DUPTABLE                         R9 K101 [{["Font"] = "$TreemapPlaceholderFont", ["TextColor3"] = "$SemanticColorContentMuted", ["TextSize"] = "$FontSize_300"}]
      157 CALL                             R7 2 -1
      158 SETLIST                          R5 R6 -1 [17]
      160 NEWTABLE                         R6 0 0
      162 MOVE                             R7 R4
      163 LOADK                            R8 K2 ["SceneAnalysis"]
      164 MOVE                             R9 R5
      165 MOVE                             R10 R6
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1
