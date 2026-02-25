MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Resources"]
       24 GETTABLEKS                       R3 R4 K9 ["StyleConstants"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R4 K11 ["createStyleRule"]
       31 MOVE                             R4 R3
       32 LOADK                            R5 K12 [".Component-DeviceBlueprint"]
       33 DUPTABLE                         R6 K17 [{"BorderSizePixel", "BackgroundColor3", "Position", "AnchorPoint"}]
       34 LOADN                            R7 0
       35 SETTABLEKS                       R7 R6 K13 ["BorderSizePixel"]
       37 LOADK                            R7 K18 ["$BlueprintBackgroundColor"]
       38 SETTABLEKS                       R7 R6 K14 ["BackgroundColor3"]
       40 GETIMPORT                        R7 K21 [UDim2.new]
       42 LOADK                            R8 K22 [0.5]
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 LOADN                            R11 0
       46 CALL                             R7 4 1
       47 SETTABLEKS                       R7 R6 K15 ["Position"]
       49 GETIMPORT                        R7 K24 [Vector2.new]
       51 LOADK                            R8 K22 [0.5]
       52 LOADN                            R9 0
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K16 ["AnchorPoint"]
       56 NEWTABLE                         R7 0 7
       58 MOVE                             R8 R3
       59 LOADK                            R9 K25 ["::UIAspectRatioConstraint"]
       60 DUPTABLE                         R10 K27 [{"AspectRatio"}]
       61 LOADK                            R11 K28 [1.5]
       62 SETTABLEKS                       R11 R10 K26 ["AspectRatio"]
       64 CALL                             R8 2 1
       65 MOVE                             R9 R3
       66 LOADK                            R10 K29 ["::UISizeConstraint"]
       67 DUPTABLE                         R11 K32 [{"MaxSize", "MinSize"}]
       68 GETIMPORT                        R12 K24 [Vector2.new]
       70 LOADN                            R13 16
       71 LOADN                            R14 164
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K30 ["MaxSize"]
       75 GETIMPORT                        R12 K24 [Vector2.new]
       77 LOADN                            R13 44
       78 LOADN                            R14 200
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K31 ["MinSize"]
       82 CALL                             R9 2 1
       83 MOVE                             R10 R3
       84 LOADK                            R11 K33 ["::UIListLayout"]
       85 DUPTABLE                         R12 K37 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
       86 GETIMPORT                        R13 K40 [Enum.SortOrder.LayoutOrder]
       88 SETTABLEKS                       R13 R12 K34 ["SortOrder"]
       90 GETIMPORT                        R13 K42 [Enum.HorizontalAlignment.Center]
       92 SETTABLEKS                       R13 R12 K35 ["HorizontalAlignment"]
       94 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
       96 SETTABLEKS                       R13 R12 K36 ["FillDirection"]
       98 CALL                             R10 2 1
       99 MOVE                             R11 R3
      100 LOADK                            R12 K45 ["> #ControllerLayout"]
      101 DUPTABLE                         R13 K46 [{"BackgroundColor3"}]
      102 LOADK                            R14 K18 ["$BlueprintBackgroundColor"]
      103 SETTABLEKS                       R14 R13 K14 ["BackgroundColor3"]
      105 NEWTABLE                         R14 0 1
      107 MOVE                             R15 R3
      108 LOADK                            R16 K47 [".Mappings-Visible::UIPadding"]
      109 DUPTABLE                         R17 K52 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      110 GETIMPORT                        R18 K54 [UDim.new]
      112 LOADN                            R19 0
      113 LOADN                            R20 0
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K48 ["PaddingTop"]
      117 GETIMPORT                        R18 K54 [UDim.new]
      119 LOADN                            R19 0
      120 LOADN                            R20 0
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K49 ["PaddingBottom"]
      124 LOADK                            R18 K55 ["$BlueprintWithMappingsPadding"]
      125 SETTABLEKS                       R18 R17 K50 ["PaddingLeft"]
      127 LOADK                            R18 K55 ["$BlueprintWithMappingsPadding"]
      128 SETTABLEKS                       R18 R17 K51 ["PaddingRight"]
      130 CALL                             R15 2 -1
      131 SETLIST                          R14 R15 -1 [1]
      133 CALL                             R11 3 1
      134 MOVE                             R12 R3
      135 LOADK                            R13 K56 [">> #GamepadBlueprint"]
      136 DUPTABLE                         R14 K60 [{"AnchorPoint", "Position", "Size", "ZIndex", "BackgroundTransparency"}]
      137 GETIMPORT                        R15 K24 [Vector2.new]
      139 LOADK                            R16 K22 [0.5]
      140 LOADN                            R17 0
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K16 ["AnchorPoint"]
      144 GETIMPORT                        R15 K21 [UDim2.new]
      146 LOADK                            R16 K22 [0.5]
      147 LOADN                            R17 0
      148 LOADN                            R18 0
      149 LOADN                            R19 0
      150 CALL                             R15 4 1
      151 SETTABLEKS                       R15 R14 K15 ["Position"]
      153 GETIMPORT                        R15 K21 [UDim2.new]
      155 LOADN                            R16 1
      156 LOADN                            R17 0
      157 LOADK                            R18 K61 [0.793]
      158 LOADN                            R19 0
      159 CALL                             R15 4 1
      160 SETTABLEKS                       R15 R14 K57 ["Size"]
      162 LOADN                            R15 255
      163 SETTABLEKS                       R15 R14 K58 ["ZIndex"]
      165 LOADN                            R15 1
      166 SETTABLEKS                       R15 R14 K59 ["BackgroundTransparency"]
      168 CALL                             R12 2 1
      169 MOVE                             R13 R3
      170 LOADK                            R14 K62 ["> TextLabel"]
      171 DUPTABLE                         R15 K68 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
      172 GETTABLEKS                       R16 R2 K69 ["normalFontSize"]
      174 SETTABLEKS                       R16 R15 K63 ["TextSize"]
      176 GETTABLEKS                       R16 R2 K70 ["defaultFont"]
      178 SETTABLEKS                       R16 R15 K64 ["Font"]
      180 LOADK                            R16 K71 ["$TextPrimary"]
      181 SETTABLEKS                       R16 R15 K65 ["TextColor3"]
      183 GETIMPORT                        R16 K21 [UDim2.new]
      185 LOADN                            R17 1
      186 LOADN                            R18 0
      187 LOADN                            R19 0
      188 LOADN                            R20 30
      189 CALL                             R16 4 1
      190 SETTABLEKS                       R16 R15 K57 ["Size"]
      192 LOADN                            R16 1
      193 SETTABLEKS                       R16 R15 K59 ["BackgroundTransparency"]
      195 GETIMPORT                        R16 K72 [Enum.TextXAlignment.Center]
      197 SETTABLEKS                       R16 R15 K66 ["TextXAlignment"]
      199 GETIMPORT                        R16 K73 [Enum.TextYAlignment.Center]
      201 SETTABLEKS                       R16 R15 K67 ["TextYAlignment"]
      203 CALL                             R13 2 1
      204 MOVE                             R14 R3
      205 LOADK                            R15 K74 ["> TextButton"]
      206 DUPTABLE                         R16 K68 [{"TextSize", "Font", "TextColor3", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
      207 GETTABLEKS                       R17 R2 K69 ["normalFontSize"]
      209 SETTABLEKS                       R17 R16 K63 ["TextSize"]
      211 GETTABLEKS                       R17 R2 K70 ["defaultFont"]
      213 SETTABLEKS                       R17 R16 K64 ["Font"]
      215 LOADK                            R17 K71 ["$TextPrimary"]
      216 SETTABLEKS                       R17 R16 K65 ["TextColor3"]
      218 GETIMPORT                        R17 K21 [UDim2.new]
      220 LOADN                            R18 1
      221 LOADN                            R19 0
      222 LOADN                            R20 0
      223 LOADN                            R21 60
      224 CALL                             R17 4 1
      225 SETTABLEKS                       R17 R16 K57 ["Size"]
      227 LOADN                            R17 1
      228 SETTABLEKS                       R17 R16 K59 ["BackgroundTransparency"]
      230 GETIMPORT                        R17 K72 [Enum.TextXAlignment.Center]
      232 SETTABLEKS                       R17 R16 K66 ["TextXAlignment"]
      234 GETIMPORT                        R17 K73 [Enum.TextYAlignment.Center]
      236 SETTABLEKS                       R17 R16 K67 ["TextYAlignment"]
      238 CALL                             R14 2 -1
      239 SETLIST                          R7 R8 -1 [1]
      241 CALL                             R4 3 -1
      242 RETURN                           R4 -1
