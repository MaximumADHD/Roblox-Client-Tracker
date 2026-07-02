MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R5 K12 ["Flags"]
       28 GETTABLEKS                       R5 R5 K13 ["getFFlagExplorerFixBlurryTextHopefully"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Src"]
       35 GETTABLEKS                       R6 R6 K12 ["Flags"]
       37 GETTABLEKS                       R6 R6 K14 ["getFFlagExplorerUseBuilderSans"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K15 ["Style"]
       42 GETTABLEKS                       R6 R6 K16 ["Themes"]
       44 GETTABLEKS                       R6 R6 K17 ["FoundationDark"]
       46 MOVE                             R7 R6
       47 LOADN                            R8 1
       48 CALL                             R7 1 1
       49 NEWTABLE                         R8 0 3
       51 MOVE                             R9 R2
       52 LOADK                            R10 K18 [".Component-useTooltip"]
       53 NEWTABLE                         R11 0 0
       55 NEWTABLE                         R12 0 7
       57 MOVE                             R13 R2
       58 LOADK                            R14 K19 [".Role-Tooltip"]
       59 DUPTABLE                         R15 K27 [{["BackgroundColor3"] = "$SemanticColorSurface300Inverse", ["BorderColor3"] = "$SemanticColorDivider", ["BorderMode"], ["BorderSizePixel"] = 2}]
       60 GETIMPORT                        R16 K30 [Enum.BorderMode.Inset]
       62 SETTABLEKS                       R16 R15 K24 ["BorderMode"]
       64 CALL                             R13 2 1
       65 MOVE                             R14 R2
       66 LOADK                            R15 K31 [">> .Role-Surface"]
       67 DUPTABLE                         R16 K35 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       68 CALL                             R14 2 1
       69 MOVE                             R15 R2
       70 LOADK                            R16 K36 [">> .Text-Label"]
       71 DUPTABLE                         R17 K41 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       72 MOVE                             R19 R5
       73 CALL                             R19 0 1
       74 JUMPIFNOT                        R19 ; [+7]
       75 GETTABLEKS                       R18 R7 K42 ["Typography"]
       77 GETTABLEKS                       R18 R18 K43 ["BodySmall"]
       79 GETTABLEKS                       R18 R18 K37 ["Font"]
       81 JUMP                             ; [+2]
       82 GETIMPORT                        R18 K45 [Enum.Font.SourceSans]
       84 SETTABLEKS                       R18 R17 K37 ["Font"]
       86 MOVE                             R19 R5
       87 CALL                             R19 0 1
       88 JUMPIFNOT                        R19 ; [+11]
       89 GETTABLEKS                       R19 R7 K42 ["Typography"]
       91 GETTABLEKS                       R19 R19 K43 ["BodySmall"]
       93 GETTABLEKS                       R19 R19 K46 ["FontSize"]
       95 FASTCALL1                        MATH_ROUND R19 ; [+2]
       96 GETIMPORT                        R18 K49 [math.round]
       98 CALL                             R18 1 1
       99 JUMP                             ; [+6]
      100 MOVE                             R19 R4
      101 CALL                             R19 0 1
      102 JUMPIFNOT                        R19 ; [+2]
      103 LOADN                            R18 17
      104 JUMP                             ; [+1]
      105 LOADK                            R18 K50 [17.598]
      106 SETTABLEKS                       R18 R17 K40 ["TextSize"]
      108 CALL                             R15 2 1
      109 MOVE                             R16 R2
      110 LOADK                            R17 K51 [">> .Text-Title"]
      111 DUPTABLE                         R18 K52 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandardInverse", ["TextSize"], ["BackgroundTransparency"] = 1}]
      112 MOVE                             R20 R5
      113 CALL                             R20 0 1
      114 JUMPIFNOT                        R20 ; [+7]
      115 GETTABLEKS                       R19 R7 K42 ["Typography"]
      117 GETTABLEKS                       R19 R19 K53 ["TitleSmall"]
      119 GETTABLEKS                       R19 R19 K37 ["Font"]
      121 JUMP                             ; [+2]
      122 GETIMPORT                        R19 K55 [Enum.Font.SourceSansBold]
      124 SETTABLEKS                       R19 R18 K37 ["Font"]
      126 MOVE                             R20 R5
      127 CALL                             R20 0 1
      128 JUMPIFNOT                        R20 ; [+11]
      129 GETTABLEKS                       R20 R7 K42 ["Typography"]
      131 GETTABLEKS                       R20 R20 K53 ["TitleSmall"]
      133 GETTABLEKS                       R20 R20 K46 ["FontSize"]
      135 FASTCALL1                        MATH_ROUND R20 ; [+2]
      136 GETIMPORT                        R19 K49 [math.round]
      138 CALL                             R19 1 1
      139 JUMP                             ; [+6]
      140 MOVE                             R20 R4
      141 CALL                             R20 0 1
      142 JUMPIFNOT                        R20 ; [+2]
      143 LOADN                            R19 17
      144 JUMP                             ; [+1]
      145 LOADK                            R19 K50 [17.598]
      146 SETTABLEKS                       R19 R18 K40 ["TextSize"]
      148 CALL                             R16 2 1
      149 MOVE                             R17 R2
      150 LOADK                            R18 K56 [">> .TooltipTextBounds"]
      151 DUPTABLE                         R19 K60 [{["TextWrapped"] = True, ["TextXAlignment"]}]
      152 GETIMPORT                        R20 K62 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R20 R19 K59 ["TextXAlignment"]
      156 NEWTABLE                         R20 0 1
      158 MOVE                             R21 R2
      159 LOADK                            R22 K63 ["::UISizeConstraint"]
      160 DUPTABLE                         R23 K65 [{"MaxSize"}]
      161 GETIMPORT                        R24 K68 [Vector2.new]
      163 LOADN                            R25 400
      164 LOADK                            R26 K69 [∞]
      165 CALL                             R24 2 1
      166 SETTABLEKS                       R24 R23 K64 ["MaxSize"]
      168 CALL                             R21 2 -1
      169 SETLIST                          R20 R21 -1 [1]
      171 CALL                             R17 3 1
      172 MOVE                             R18 R2
      173 LOADK                            R19 K70 [">> .X-PadTooltip ::UIPadding"]
      174 DUPTABLE                         R20 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      175 GETIMPORT                        R21 K77 [UDim.new]
      177 LOADN                            R22 0
      178 LOADN                            R23 6
      179 CALL                             R21 2 1
      180 SETTABLEKS                       R21 R20 K71 ["PaddingLeft"]
      182 GETIMPORT                        R21 K77 [UDim.new]
      184 LOADN                            R22 0
      185 LOADN                            R23 6
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K72 ["PaddingRight"]
      189 GETIMPORT                        R21 K77 [UDim.new]
      191 LOADN                            R22 0
      192 LOADN                            R23 4
      193 CALL                             R21 2 1
      194 SETTABLEKS                       R21 R20 K73 ["PaddingTop"]
      196 GETIMPORT                        R21 K77 [UDim.new]
      198 LOADN                            R22 0
      199 LOADN                            R23 4
      200 CALL                             R21 2 1
      201 SETTABLEKS                       R21 R20 K74 ["PaddingBottom"]
      203 CALL                             R18 2 1
      204 MOVE                             R19 R2
      205 LOADK                            R20 K78 [">> .X-RowSpace50"]
      206 NEWTABLE                         R21 0 0
      208 NEWTABLE                         R22 0 1
      210 MOVE                             R23 R2
      211 LOADK                            R24 K79 ["::UIListLayout"]
      212 DUPTABLE                         R25 K83 [{"FillDirection", "Padding", "SortOrder"}]
      213 GETIMPORT                        R26 K85 [Enum.FillDirection.Horizontal]
      215 SETTABLEKS                       R26 R25 K80 ["FillDirection"]
      217 GETIMPORT                        R26 K77 [UDim.new]
      219 LOADN                            R27 0
      220 LOADN                            R28 4
      221 CALL                             R26 2 1
      222 SETTABLEKS                       R26 R25 K81 ["Padding"]
      224 GETIMPORT                        R26 K87 [Enum.SortOrder.LayoutOrder]
      226 SETTABLEKS                       R26 R25 K82 ["SortOrder"]
      228 CALL                             R23 2 -1
      229 SETLIST                          R22 R23 -1 [1]
      231 CALL                             R19 3 -1
      232 SETLIST                          R12 R13 -1 [1]
      234 CALL                             R9 3 1
      235 MOVE                             R10 R2
      236 LOADK                            R11 K70 [">> .X-PadTooltip ::UIPadding"]
      237 DUPTABLE                         R12 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      238 GETIMPORT                        R13 K77 [UDim.new]
      240 LOADN                            R14 0
      241 LOADN                            R15 6
      242 CALL                             R13 2 1
      243 SETTABLEKS                       R13 R12 K71 ["PaddingLeft"]
      245 GETIMPORT                        R13 K77 [UDim.new]
      247 LOADN                            R14 0
      248 LOADN                            R15 6
      249 CALL                             R13 2 1
      250 SETTABLEKS                       R13 R12 K72 ["PaddingRight"]
      252 GETIMPORT                        R13 K77 [UDim.new]
      254 LOADN                            R14 0
      255 LOADN                            R15 4
      256 CALL                             R13 2 1
      257 SETTABLEKS                       R13 R12 K73 ["PaddingTop"]
      259 GETIMPORT                        R13 K77 [UDim.new]
      261 LOADN                            R14 0
      262 LOADN                            R15 4
      263 CALL                             R13 2 1
      264 SETTABLEKS                       R13 R12 K74 ["PaddingBottom"]
      266 CALL                             R10 2 1
      267 MOVE                             R11 R2
      268 LOADK                            R12 K78 [">> .X-RowSpace50"]
      269 NEWTABLE                         R13 0 0
      271 NEWTABLE                         R14 0 1
      273 MOVE                             R15 R2
      274 LOADK                            R16 K79 ["::UIListLayout"]
      275 DUPTABLE                         R17 K83 [{"FillDirection", "Padding", "SortOrder"}]
      276 GETIMPORT                        R18 K85 [Enum.FillDirection.Horizontal]
      278 SETTABLEKS                       R18 R17 K80 ["FillDirection"]
      280 GETIMPORT                        R18 K77 [UDim.new]
      282 LOADN                            R19 0
      283 LOADN                            R20 4
      284 CALL                             R18 2 1
      285 SETTABLEKS                       R18 R17 K81 ["Padding"]
      287 GETIMPORT                        R18 K87 [Enum.SortOrder.LayoutOrder]
      289 SETTABLEKS                       R18 R17 K82 ["SortOrder"]
      291 CALL                             R15 2 -1
      292 SETLIST                          R14 R15 -1 [1]
      294 CALL                             R11 3 -1
      295 SETLIST                          R8 R9 -1 [1]
      297 NEWTABLE                         R9 0 0
      299 MOVE                             R10 R3
      300 LOADK                            R11 K2 ["ExplorerPlugin"]
      301 MOVE                             R12 R8
      302 MOVE                             R13 R9
      303 CALL                             R10 3 -1
      304 RETURN                           R10 -1
