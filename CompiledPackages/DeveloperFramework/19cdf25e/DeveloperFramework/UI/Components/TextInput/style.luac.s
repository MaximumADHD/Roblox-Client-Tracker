MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["StyleModifier"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["deepCopy"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R8 R0 K2 ["UI"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["UIFolderData"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R5 K14 ["Pane"]
       43 GETTABLEKS                       R7 R8 K15 ["style"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K2 ["UI"]
       50 GETTABLEKS                       R9 R10 K12 ["Components"]
       52 GETTABLEKS                       R8 R9 K16 ["Image"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R10 R0 K4 ["Parent"]
       59 GETTABLEKS                       R9 R10 K17 ["Dash"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K18 ["join"]
       64 MOVE                             R10 R4
       65 MOVE                             R11 R6
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R10 K19 ["&Box"]
       69 GETTABLEKS                       R12 R10 K20 ["&RoundBox"]
       71 GETTABLEKS                       R13 R10 K21 ["&BorderBox"]
       73 NEWTABLE                         R14 16 0
       75 GETTABLEKS                       R15 R1 K22 ["InputFieldBackground"]
       77 SETTABLEKS                       R15 R14 K23 ["BackgroundColor"]
       79 GETTABLEKS                       R15 R1 K24 ["InputFieldBorder"]
       81 SETTABLEKS                       R15 R14 K25 ["BorderColor"]
       83 NEWTABLE                         R15 8 0
       85 GETIMPORT                        R16 K29 [Enum.Font.SourceSans]
       87 SETTABLEKS                       R16 R15 K27 ["Font"]
       89 GETTABLEKS                       R16 R1 K30 ["DimmedText"]
       91 SETTABLEKS                       R16 R15 K31 ["TextColor"]
       93 LOADN                            R16 18
       94 SETTABLEKS                       R16 R15 K32 ["TextSize"]
       96 GETIMPORT                        R16 K35 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R16 R15 K33 ["TextXAlignment"]
      100 GETIMPORT                        R16 K38 [Enum.TextYAlignment.Top]
      102 SETTABLEKS                       R16 R15 K36 ["TextYAlignment"]
      104 GETTABLEKS                       R16 R3 K39 ["Error"]
      106 DUPTABLE                         R17 K40 [{"TextColor"}]
      107 GETTABLEKS                       R18 R1 K41 ["ErrorText"]
      109 SETTABLEKS                       R18 R17 K31 ["TextColor"]
      111 SETTABLE                         R17 R15 R16
      112 SETTABLEKS                       R15 R14 K42 ["BottomText"]
      114 LOADN                            R15 6
      115 SETTABLEKS                       R15 R14 K43 ["BottomTextSpacing"]
      117 LOADN                            R15 8
      118 SETTABLEKS                       R15 R14 K44 ["HorizontalComponentSpacing"]
      120 LOADN                            R15 4
      121 SETTABLEKS                       R15 R14 K45 ["VerticalComponentSpacing"]
      123 DUPTABLE                         R15 K48 [{"Left", "Top", "Right", "Bottom"}]
      124 LOADN                            R16 8
      125 SETTABLEKS                       R16 R15 K34 ["Left"]
      127 LOADN                            R16 1
      128 SETTABLEKS                       R16 R15 K37 ["Top"]
      130 LOADN                            R16 8
      131 SETTABLEKS                       R16 R15 K46 ["Right"]
      133 LOADN                            R16 1
      134 SETTABLEKS                       R16 R15 K47 ["Bottom"]
      136 SETTABLEKS                       R15 R14 K49 ["Padding"]
      138 GETTABLEKS                       R15 R1 K30 ["DimmedText"]
      140 SETTABLEKS                       R15 R14 K50 ["PlaceholderTextColor"]
      142 GETIMPORT                        R15 K53 [UDim2.new]
      144 LOADN                            R16 1
      145 LOADN                            R17 0
      146 LOADN                            R18 0
      147 LOADN                            R19 32
      148 CALL                             R15 4 1
      149 SETTABLEKS                       R15 R14 K54 ["Size"]
      151 GETIMPORT                        R15 K35 [Enum.TextXAlignment.Left]
      153 SETTABLEKS                       R15 R14 K33 ["TextXAlignment"]
      155 GETTABLEKS                       R15 R3 K55 ["Disabled"]
      157 DUPTABLE                         R16 K56 [{"BackgroundColor", "BorderColor", "TextColor"}]
      158 GETTABLEKS                       R17 R1 K57 ["InputFieldBackgroundDisabled"]
      160 SETTABLEKS                       R17 R16 K23 ["BackgroundColor"]
      162 GETTABLEKS                       R17 R1 K58 ["InputFieldBorderDisabled"]
      164 SETTABLEKS                       R17 R16 K25 ["BorderColor"]
      166 GETTABLEKS                       R17 R1 K30 ["DimmedText"]
      168 SETTABLEKS                       R17 R16 K31 ["TextColor"]
      170 SETTABLE                         R16 R14 R15
      171 MOVE                             R15 R9
      172 MOVE                             R16 R13
      173 NEWTABLE                         R17 8 0
      175 DUPTABLE                         R18 K48 [{"Left", "Top", "Right", "Bottom"}]
      176 LOADN                            R19 8
      177 SETTABLEKS                       R19 R18 K34 ["Left"]
      179 LOADN                            R19 1
      180 SETTABLEKS                       R19 R18 K37 ["Top"]
      182 LOADN                            R19 8
      183 SETTABLEKS                       R19 R18 K46 ["Right"]
      185 LOADN                            R19 1
      186 SETTABLEKS                       R19 R18 K47 ["Bottom"]
      188 SETTABLEKS                       R18 R17 K49 ["Padding"]
      190 DUPTABLE                         R18 K48 [{"Left", "Top", "Right", "Bottom"}]
      191 LOADN                            R19 8
      192 SETTABLEKS                       R19 R18 K34 ["Left"]
      194 LOADN                            R19 5
      195 SETTABLEKS                       R19 R18 K37 ["Top"]
      197 LOADN                            R19 8
      198 SETTABLEKS                       R19 R18 K46 ["Right"]
      200 LOADN                            R19 5
      201 SETTABLEKS                       R19 R18 K47 ["Bottom"]
      203 SETTABLEKS                       R18 R17 K59 ["MultiLinePadding"]
      205 GETTABLEKS                       R18 R3 K60 ["Hover"]
      207 DUPTABLE                         R19 K61 [{"BorderColor"}]
      208 GETTABLEKS                       R20 R1 K62 ["InputFieldBorderHover"]
      210 SETTABLEKS                       R20 R19 K25 ["BorderColor"]
      212 SETTABLE                         R19 R17 R18
      213 GETTABLEKS                       R18 R3 K63 ["Selected"]
      215 DUPTABLE                         R19 K61 [{"BorderColor"}]
      216 GETTABLEKS                       R20 R1 K64 ["InputFieldBorderSelected"]
      218 SETTABLEKS                       R20 R19 K25 ["BorderColor"]
      220 SETTABLE                         R19 R17 R18
      221 GETTABLEKS                       R18 R3 K39 ["Error"]
      223 DUPTABLE                         R19 K61 [{"BorderColor"}]
      224 GETTABLEKS                       R20 R1 K41 ["ErrorText"]
      226 SETTABLEKS                       R20 R19 K25 ["BorderColor"]
      228 SETTABLE                         R19 R17 R18
      229 GETTABLEKS                       R18 R1 K41 ["ErrorText"]
      231 SETTABLEKS                       R18 R17 K65 ["ErrorBorderColor"]
      233 CALL                             R15 2 1
      234 DUPTABLE                         R16 K68 [{"TextColor", "TrailingComponent", "TrailingComponentProps"}]
      235 GETTABLEKS                       R17 R1 K41 ["ErrorText"]
      237 SETTABLEKS                       R17 R16 K31 ["TextColor"]
      239 SETTABLEKS                       R7 R16 K66 ["TrailingComponent"]
      241 DUPTABLE                         R17 K69 [{"Size", "Style"}]
      242 GETIMPORT                        R18 K71 [UDim2.fromOffset]
      244 LOADN                            R19 13
      245 LOADN                            R20 13
      246 CALL                             R18 2 1
      247 SETTABLEKS                       R18 R17 K54 ["Size"]
      249 DUPTABLE                         R18 K73 [{"Color", "Image"}]
      250 GETTABLEKS                       R19 R1 K41 ["ErrorText"]
      252 SETTABLEKS                       R19 R18 K72 ["Color"]
      254 LOADK                            R19 K74 ["rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"]
      255 SETTABLEKS                       R19 R18 K16 ["Image"]
      257 SETTABLEKS                       R18 R17 K7 ["Style"]
      259 SETTABLEKS                       R17 R16 K67 ["TrailingComponentProps"]
      261 MOVE                             R17 R9
      262 MOVE                             R18 R14
      263 NEWTABLE                         R19 4 0
      265 SETTABLEKS                       R11 R19 K19 ["&Box"]
      267 SETTABLEKS                       R15 R19 K21 ["&BorderBox"]
      269 SETTABLEKS                       R16 R19 K75 ["&PropertyCellError"]
      271 SETTABLEKS                       R12 R19 K20 ["&RoundBox"]
      273 CALL                             R17 2 -1
      274 RETURN                           R17 -1
