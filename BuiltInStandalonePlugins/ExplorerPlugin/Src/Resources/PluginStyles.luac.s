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
       59 DUPTABLE                         R15 K24 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
       60 LOADK                            R16 K25 ["$SemanticColorSurface300Inverse"]
       61 SETTABLEKS                       R16 R15 K20 ["BackgroundColor3"]
       63 LOADK                            R16 K26 ["$SemanticColorDivider"]
       64 SETTABLEKS                       R16 R15 K21 ["BorderColor3"]
       66 GETIMPORT                        R16 K29 [Enum.BorderMode.Inset]
       68 SETTABLEKS                       R16 R15 K22 ["BorderMode"]
       70 LOADN                            R16 2
       71 SETTABLEKS                       R16 R15 K23 ["BorderSizePixel"]
       73 CALL                             R13 2 1
       74 MOVE                             R14 R2
       75 LOADK                            R15 K30 [">> .Role-Surface"]
       76 DUPTABLE                         R16 K32 [{"BackgroundTransparency", "BorderSizePixel"}]
       77 LOADN                            R17 1
       78 SETTABLEKS                       R17 R16 K31 ["BackgroundTransparency"]
       80 LOADN                            R17 0
       81 SETTABLEKS                       R17 R16 K23 ["BorderSizePixel"]
       83 CALL                             R14 2 1
       84 MOVE                             R15 R2
       85 LOADK                            R16 K33 [">> .Text-Label"]
       86 DUPTABLE                         R17 K37 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       87 MOVE                             R19 R5
       88 CALL                             R19 0 1
       89 JUMPIFNOT                        R19 ; [+7]
       90 GETTABLEKS                       R18 R7 K38 ["Typography"]
       92 GETTABLEKS                       R18 R18 K39 ["BodySmall"]
       94 GETTABLEKS                       R18 R18 K34 ["Font"]
       96 JUMP                             ; [+2]
       97 GETIMPORT                        R18 K41 [Enum.Font.SourceSans]
       99 SETTABLEKS                       R18 R17 K34 ["Font"]
      101 LOADK                            R18 K42 ["$SemanticColorContentStandardInverse"]
      102 SETTABLEKS                       R18 R17 K35 ["TextColor3"]
      104 MOVE                             R19 R5
      105 CALL                             R19 0 1
      106 JUMPIFNOT                        R19 ; [+11]
      107 GETTABLEKS                       R19 R7 K38 ["Typography"]
      109 GETTABLEKS                       R19 R19 K39 ["BodySmall"]
      111 GETTABLEKS                       R19 R19 K43 ["FontSize"]
      113 FASTCALL1                        MATH_ROUND R19 ; [+2]
      114 GETIMPORT                        R18 K46 [math.round]
      116 CALL                             R18 1 1
      117 JUMP                             ; [+6]
      118 MOVE                             R19 R4
      119 CALL                             R19 0 1
      120 JUMPIFNOT                        R19 ; [+2]
      121 LOADN                            R18 17
      122 JUMP                             ; [+1]
      123 LOADK                            R18 K47 [17.598]
      124 SETTABLEKS                       R18 R17 K36 ["TextSize"]
      126 LOADN                            R18 0
      127 SETTABLEKS                       R18 R17 K23 ["BorderSizePixel"]
      129 LOADN                            R18 1
      130 SETTABLEKS                       R18 R17 K31 ["BackgroundTransparency"]
      132 CALL                             R15 2 1
      133 MOVE                             R16 R2
      134 LOADK                            R17 K48 [">> .Text-Title"]
      135 DUPTABLE                         R18 K49 [{"Font", "TextColor3", "TextSize", "BackgroundTransparency"}]
      136 MOVE                             R20 R5
      137 CALL                             R20 0 1
      138 JUMPIFNOT                        R20 ; [+7]
      139 GETTABLEKS                       R19 R7 K38 ["Typography"]
      141 GETTABLEKS                       R19 R19 K50 ["TitleSmall"]
      143 GETTABLEKS                       R19 R19 K34 ["Font"]
      145 JUMP                             ; [+2]
      146 GETIMPORT                        R19 K52 [Enum.Font.SourceSansBold]
      148 SETTABLEKS                       R19 R18 K34 ["Font"]
      150 LOADK                            R19 K42 ["$SemanticColorContentStandardInverse"]
      151 SETTABLEKS                       R19 R18 K35 ["TextColor3"]
      153 MOVE                             R20 R5
      154 CALL                             R20 0 1
      155 JUMPIFNOT                        R20 ; [+11]
      156 GETTABLEKS                       R20 R7 K38 ["Typography"]
      158 GETTABLEKS                       R20 R20 K50 ["TitleSmall"]
      160 GETTABLEKS                       R20 R20 K43 ["FontSize"]
      162 FASTCALL1                        MATH_ROUND R20 ; [+2]
      163 GETIMPORT                        R19 K46 [math.round]
      165 CALL                             R19 1 1
      166 JUMP                             ; [+6]
      167 MOVE                             R20 R4
      168 CALL                             R20 0 1
      169 JUMPIFNOT                        R20 ; [+2]
      170 LOADN                            R19 17
      171 JUMP                             ; [+1]
      172 LOADK                            R19 K47 [17.598]
      173 SETTABLEKS                       R19 R18 K36 ["TextSize"]
      175 LOADN                            R19 1
      176 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      178 CALL                             R16 2 1
      179 MOVE                             R17 R2
      180 LOADK                            R18 K53 [">> .TooltipTextBounds"]
      181 DUPTABLE                         R19 K56 [{"TextWrapped", "TextXAlignment"}]
      182 LOADB                            R20 1
      183 SETTABLEKS                       R20 R19 K54 ["TextWrapped"]
      185 GETIMPORT                        R20 K58 [Enum.TextXAlignment.Left]
      187 SETTABLEKS                       R20 R19 K55 ["TextXAlignment"]
      189 NEWTABLE                         R20 0 1
      191 MOVE                             R21 R2
      192 LOADK                            R22 K59 ["::UISizeConstraint"]
      193 DUPTABLE                         R23 K61 [{"MaxSize"}]
      194 GETIMPORT                        R24 K64 [Vector2.new]
      196 LOADN                            R25 144
      197 LOADK                            R26 K65 [∞]
      198 CALL                             R24 2 1
      199 SETTABLEKS                       R24 R23 K60 ["MaxSize"]
      201 CALL                             R21 2 -1
      202 SETLIST                          R20 R21 -1 [1]
      204 CALL                             R17 3 1
      205 MOVE                             R18 R2
      206 LOADK                            R19 K66 [">> .X-PadTooltip ::UIPadding"]
      207 DUPTABLE                         R20 K71 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      208 GETIMPORT                        R21 K73 [UDim.new]
      210 LOADN                            R22 0
      211 LOADN                            R23 6
      212 CALL                             R21 2 1
      213 SETTABLEKS                       R21 R20 K67 ["PaddingLeft"]
      215 GETIMPORT                        R21 K73 [UDim.new]
      217 LOADN                            R22 0
      218 LOADN                            R23 6
      219 CALL                             R21 2 1
      220 SETTABLEKS                       R21 R20 K68 ["PaddingRight"]
      222 GETIMPORT                        R21 K73 [UDim.new]
      224 LOADN                            R22 0
      225 LOADN                            R23 4
      226 CALL                             R21 2 1
      227 SETTABLEKS                       R21 R20 K69 ["PaddingTop"]
      229 GETIMPORT                        R21 K73 [UDim.new]
      231 LOADN                            R22 0
      232 LOADN                            R23 4
      233 CALL                             R21 2 1
      234 SETTABLEKS                       R21 R20 K70 ["PaddingBottom"]
      236 CALL                             R18 2 1
      237 MOVE                             R19 R2
      238 LOADK                            R20 K74 [">> .X-RowSpace50"]
      239 NEWTABLE                         R21 0 0
      241 NEWTABLE                         R22 0 1
      243 MOVE                             R23 R2
      244 LOADK                            R24 K75 ["::UIListLayout"]
      245 DUPTABLE                         R25 K79 [{"FillDirection", "Padding", "SortOrder"}]
      246 GETIMPORT                        R26 K81 [Enum.FillDirection.Horizontal]
      248 SETTABLEKS                       R26 R25 K76 ["FillDirection"]
      250 GETIMPORT                        R26 K73 [UDim.new]
      252 LOADN                            R27 0
      253 LOADN                            R28 4
      254 CALL                             R26 2 1
      255 SETTABLEKS                       R26 R25 K77 ["Padding"]
      257 GETIMPORT                        R26 K83 [Enum.SortOrder.LayoutOrder]
      259 SETTABLEKS                       R26 R25 K78 ["SortOrder"]
      261 CALL                             R23 2 -1
      262 SETLIST                          R22 R23 -1 [1]
      264 CALL                             R19 3 -1
      265 SETLIST                          R12 R13 -1 [1]
      267 CALL                             R9 3 1
      268 MOVE                             R10 R2
      269 LOADK                            R11 K66 [">> .X-PadTooltip ::UIPadding"]
      270 DUPTABLE                         R12 K71 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      271 GETIMPORT                        R13 K73 [UDim.new]
      273 LOADN                            R14 0
      274 LOADN                            R15 6
      275 CALL                             R13 2 1
      276 SETTABLEKS                       R13 R12 K67 ["PaddingLeft"]
      278 GETIMPORT                        R13 K73 [UDim.new]
      280 LOADN                            R14 0
      281 LOADN                            R15 6
      282 CALL                             R13 2 1
      283 SETTABLEKS                       R13 R12 K68 ["PaddingRight"]
      285 GETIMPORT                        R13 K73 [UDim.new]
      287 LOADN                            R14 0
      288 LOADN                            R15 4
      289 CALL                             R13 2 1
      290 SETTABLEKS                       R13 R12 K69 ["PaddingTop"]
      292 GETIMPORT                        R13 K73 [UDim.new]
      294 LOADN                            R14 0
      295 LOADN                            R15 4
      296 CALL                             R13 2 1
      297 SETTABLEKS                       R13 R12 K70 ["PaddingBottom"]
      299 CALL                             R10 2 1
      300 MOVE                             R11 R2
      301 LOADK                            R12 K74 [">> .X-RowSpace50"]
      302 NEWTABLE                         R13 0 0
      304 NEWTABLE                         R14 0 1
      306 MOVE                             R15 R2
      307 LOADK                            R16 K75 ["::UIListLayout"]
      308 DUPTABLE                         R17 K79 [{"FillDirection", "Padding", "SortOrder"}]
      309 GETIMPORT                        R18 K81 [Enum.FillDirection.Horizontal]
      311 SETTABLEKS                       R18 R17 K76 ["FillDirection"]
      313 GETIMPORT                        R18 K73 [UDim.new]
      315 LOADN                            R19 0
      316 LOADN                            R20 4
      317 CALL                             R18 2 1
      318 SETTABLEKS                       R18 R17 K77 ["Padding"]
      320 GETIMPORT                        R18 K83 [Enum.SortOrder.LayoutOrder]
      322 SETTABLEKS                       R18 R17 K78 ["SortOrder"]
      324 CALL                             R15 2 -1
      325 SETLIST                          R14 R15 -1 [1]
      327 CALL                             R11 3 -1
      328 SETLIST                          R8 R9 -1 [1]
      330 NEWTABLE                         R9 0 0
      332 MOVE                             R10 R3
      333 LOADK                            R11 K2 ["ExplorerPlugin"]
      334 MOVE                             R12 R8
      335 MOVE                             R13 R9
      336 CALL                             R10 3 -1
      337 RETURN                           R10 -1
