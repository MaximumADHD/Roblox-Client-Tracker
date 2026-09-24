MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["StyleModifier"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["deepCopy"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K2 ["UI"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["UIFolderData"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R5 K14 ["Pane"]
       43 GETTABLEKS                       R7 R7 K15 ["style"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K2 ["UI"]
       50 GETTABLEKS                       R8 R8 K12 ["Components"]
       52 GETTABLEKS                       R8 R8 K16 ["Image"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K17 ["Dash"]
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
      123 DUPTABLE                         R15 K50 [{["Left"] = 8, ["Top"] = 1, ["Right"] = 8, ["Bottom"] = 1}]
      124 SETTABLEKS                       R15 R14 K51 ["Padding"]
      126 GETTABLEKS                       R15 R1 K30 ["DimmedText"]
      128 SETTABLEKS                       R15 R14 K52 ["PlaceholderTextColor"]
      130 GETIMPORT                        R15 K55 [UDim2.new]
      132 LOADN                            R16 1
      133 LOADN                            R17 0
      134 LOADN                            R18 0
      135 LOADN                            R19 32
      136 CALL                             R15 4 1
      137 SETTABLEKS                       R15 R14 K56 ["Size"]
      139 GETIMPORT                        R15 K35 [Enum.TextXAlignment.Left]
      141 SETTABLEKS                       R15 R14 K33 ["TextXAlignment"]
      143 GETTABLEKS                       R15 R3 K57 ["Disabled"]
      145 DUPTABLE                         R16 K58 [{"BackgroundColor", "BorderColor", "TextColor"}]
      146 GETTABLEKS                       R17 R1 K59 ["InputFieldBackgroundDisabled"]
      148 SETTABLEKS                       R17 R16 K23 ["BackgroundColor"]
      150 GETTABLEKS                       R17 R1 K60 ["InputFieldBorderDisabled"]
      152 SETTABLEKS                       R17 R16 K25 ["BorderColor"]
      154 GETTABLEKS                       R17 R1 K30 ["DimmedText"]
      156 SETTABLEKS                       R17 R16 K31 ["TextColor"]
      158 SETTABLE                         R16 R14 R15
      159 MOVE                             R15 R9
      160 MOVE                             R16 R13
      161 NEWTABLE                         R17 8 0
      163 DUPTABLE                         R18 K50 [{["Left"] = 8, ["Top"] = 1, ["Right"] = 8, ["Bottom"] = 1}]
      164 SETTABLEKS                       R18 R17 K51 ["Padding"]
      166 DUPTABLE                         R18 K62 [{["Left"] = 8, ["Top"] = 5, ["Right"] = 8, ["Bottom"] = 5}]
      167 SETTABLEKS                       R18 R17 K63 ["MultiLinePadding"]
      169 GETTABLEKS                       R18 R3 K64 ["Hover"]
      171 DUPTABLE                         R19 K65 [{"BorderColor"}]
      172 GETTABLEKS                       R20 R1 K66 ["InputFieldBorderHover"]
      174 SETTABLEKS                       R20 R19 K25 ["BorderColor"]
      176 SETTABLE                         R19 R17 R18
      177 GETTABLEKS                       R18 R3 K67 ["Selected"]
      179 DUPTABLE                         R19 K65 [{"BorderColor"}]
      180 GETTABLEKS                       R20 R1 K68 ["InputFieldBorderSelected"]
      182 SETTABLEKS                       R20 R19 K25 ["BorderColor"]
      184 SETTABLE                         R19 R17 R18
      185 GETTABLEKS                       R18 R3 K39 ["Error"]
      187 DUPTABLE                         R19 K65 [{"BorderColor"}]
      188 GETTABLEKS                       R20 R1 K41 ["ErrorText"]
      190 SETTABLEKS                       R20 R19 K25 ["BorderColor"]
      192 SETTABLE                         R19 R17 R18
      193 GETTABLEKS                       R18 R1 K41 ["ErrorText"]
      195 SETTABLEKS                       R18 R17 K69 ["ErrorBorderColor"]
      197 CALL                             R15 2 1
      198 DUPTABLE                         R16 K72 [{"TextColor", "TrailingComponent", "TrailingComponentProps"}]
      199 GETTABLEKS                       R17 R1 K41 ["ErrorText"]
      201 SETTABLEKS                       R17 R16 K31 ["TextColor"]
      203 SETTABLEKS                       R7 R16 K70 ["TrailingComponent"]
      205 DUPTABLE                         R17 K73 [{"Size", "Style"}]
      206 GETIMPORT                        R18 K75 [UDim2.fromOffset]
      208 LOADN                            R19 13
      209 LOADN                            R20 13
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K56 ["Size"]
      213 DUPTABLE                         R18 K78 [{["Color"], ["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"}]
      214 GETTABLEKS                       R19 R1 K41 ["ErrorText"]
      216 SETTABLEKS                       R19 R18 K76 ["Color"]
      218 SETTABLEKS                       R18 R17 K7 ["Style"]
      220 SETTABLEKS                       R17 R16 K71 ["TrailingComponentProps"]
      222 MOVE                             R17 R9
      223 MOVE                             R18 R14
      224 NEWTABLE                         R19 4 0
      226 SETTABLEKS                       R11 R19 K19 ["&Box"]
      228 SETTABLEKS                       R15 R19 K21 ["&BorderBox"]
      230 SETTABLEKS                       R16 R19 K79 ["&PropertyCellError"]
      232 SETTABLEKS                       R12 R19 K20 ["&RoundBox"]
      234 CALL                             R17 2 -1
      235 RETURN                           R17 -1
