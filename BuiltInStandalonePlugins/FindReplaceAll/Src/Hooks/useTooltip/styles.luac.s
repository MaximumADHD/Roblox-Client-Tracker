MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["defineFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Resources"]
       29 GETTABLEKS                       R4 R5 K12 ["StyleConstants"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R1 K13 ["Styling"]
       34 GETTABLEKS                       R4 R5 K14 ["createStyleRule"]
       36 MOVE                             R5 R4
       37 LOADK                            R6 K15 [".Component-useTooltip"]
       38 NEWTABLE                         R7 0 0
       40 NEWTABLE                         R8 0 7
       42 MOVE                             R9 R4
       43 LOADK                            R10 K16 [".Role-Tooltip"]
       44 DUPTABLE                         R11 K21 [{"BackgroundColor3", "BorderColor3", "BorderMode", "BorderSizePixel"}]
       45 LOADK                            R12 K22 ["$SemanticColorSurface300Inverse"]
       46 SETTABLEKS                       R12 R11 K17 ["BackgroundColor3"]
       48 LOADK                            R12 K23 ["$SemanticColorDivider"]
       49 SETTABLEKS                       R12 R11 K18 ["BorderColor3"]
       51 GETIMPORT                        R12 K26 [Enum.BorderMode.Inset]
       53 SETTABLEKS                       R12 R11 K19 ["BorderMode"]
       55 LOADN                            R12 2
       56 SETTABLEKS                       R12 R11 K20 ["BorderSizePixel"]
       58 CALL                             R9 2 1
       59 MOVE                             R10 R4
       60 LOADK                            R11 K27 [">> .Role-Surface"]
       61 DUPTABLE                         R12 K29 [{"BackgroundTransparency", "BorderSizePixel"}]
       62 LOADN                            R13 1
       63 SETTABLEKS                       R13 R12 K28 ["BackgroundTransparency"]
       65 LOADN                            R13 0
       66 SETTABLEKS                       R13 R12 K20 ["BorderSizePixel"]
       68 CALL                             R10 2 1
       69 MOVE                             R11 R4
       70 LOADK                            R12 K30 [">> .Text-Label"]
       71 DUPTABLE                         R13 K34 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
       72 GETTABLEKS                       R15 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
       74 CALL                             R15 0 1
       75 JUMPIFNOT                        R15 ; [+3]
       76 GETIMPORT                        R14 K37 [Enum.Font.SourceSans]
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R14 R3 K38 ["defaultFont"]
       81 SETTABLEKS                       R14 R13 K31 ["Font"]
       83 LOADK                            R14 K39 ["$SemanticColorContentStandardInverse"]
       84 SETTABLEKS                       R14 R13 K32 ["TextColor3"]
       86 GETTABLEKS                       R15 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
       88 CALL                             R15 0 1
       89 JUMPIFNOT                        R15 ; [+5]
       90 LOADN                            R15 12
       91 GETTABLEKS                       R16 R3 K40 ["defaultFontScale"]
       93 MUL                              R14 R15 R16
       94 JUMP                             ; [+1]
       95 LOADK                            R14 K41 [17.598]
       96 SETTABLEKS                       R14 R13 K33 ["TextSize"]
       98 LOADN                            R14 0
       99 SETTABLEKS                       R14 R13 K20 ["BorderSizePixel"]
      101 LOADN                            R14 1
      102 SETTABLEKS                       R14 R13 K28 ["BackgroundTransparency"]
      104 CALL                             R11 2 1
      105 MOVE                             R12 R4
      106 LOADK                            R13 K42 [">> .Text-Title"]
      107 DUPTABLE                         R14 K34 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
      108 GETTABLEKS                       R16 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
      110 CALL                             R16 0 1
      111 JUMPIFNOT                        R16 ; [+3]
      112 GETIMPORT                        R15 K44 [Enum.Font.SourceSansBold]
      114 JUMP                             ; [+2]
      115 GETTABLEKS                       R15 R3 K45 ["defaultFontBold"]
      117 SETTABLEKS                       R15 R14 K31 ["Font"]
      119 LOADK                            R15 K39 ["$SemanticColorContentStandardInverse"]
      120 SETTABLEKS                       R15 R14 K32 ["TextColor3"]
      122 GETTABLEKS                       R16 R2 K35 ["getFFlagFindReplaceAllUseBuilderFont"]
      124 CALL                             R16 0 1
      125 JUMPIFNOT                        R16 ; [+5]
      126 LOADN                            R16 12
      127 GETTABLEKS                       R17 R3 K40 ["defaultFontScale"]
      129 MUL                              R15 R16 R17
      130 JUMP                             ; [+1]
      131 LOADK                            R15 K41 [17.598]
      132 SETTABLEKS                       R15 R14 K33 ["TextSize"]
      134 LOADN                            R15 0
      135 SETTABLEKS                       R15 R14 K20 ["BorderSizePixel"]
      137 LOADN                            R15 1
      138 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      140 CALL                             R12 2 1
      141 MOVE                             R13 R4
      142 LOADK                            R14 K46 [">> .TooltipTextBounds"]
      143 DUPTABLE                         R15 K49 [{"TextWrapped", "TextXAlignment"}]
      144 LOADB                            R16 1
      145 SETTABLEKS                       R16 R15 K47 ["TextWrapped"]
      147 GETIMPORT                        R16 K51 [Enum.TextXAlignment.Left]
      149 SETTABLEKS                       R16 R15 K48 ["TextXAlignment"]
      151 NEWTABLE                         R16 0 1
      153 MOVE                             R17 R4
      154 LOADK                            R18 K52 ["::UISizeConstraint"]
      155 DUPTABLE                         R19 K54 [{"MaxSize"}]
      156 GETIMPORT                        R20 K57 [Vector2.new]
      158 LOADN                            R21 144
      159 LOADK                            R22 K58 [∞]
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K53 ["MaxSize"]
      163 CALL                             R17 2 -1
      164 SETLIST                          R16 R17 -1 [1]
      166 CALL                             R13 3 1
      167 MOVE                             R14 R4
      168 LOADK                            R15 K59 [">> .X-PadTooltip ::UIPadding"]
      169 DUPTABLE                         R16 K64 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      170 GETIMPORT                        R17 K66 [UDim.new]
      172 LOADN                            R18 0
      173 LOADN                            R19 6
      174 CALL                             R17 2 1
      175 SETTABLEKS                       R17 R16 K60 ["PaddingLeft"]
      177 GETIMPORT                        R17 K66 [UDim.new]
      179 LOADN                            R18 0
      180 LOADN                            R19 6
      181 CALL                             R17 2 1
      182 SETTABLEKS                       R17 R16 K61 ["PaddingRight"]
      184 GETIMPORT                        R17 K66 [UDim.new]
      186 LOADN                            R18 0
      187 LOADN                            R19 4
      188 CALL                             R17 2 1
      189 SETTABLEKS                       R17 R16 K62 ["PaddingTop"]
      191 GETIMPORT                        R17 K66 [UDim.new]
      193 LOADN                            R18 0
      194 LOADN                            R19 4
      195 CALL                             R17 2 1
      196 SETTABLEKS                       R17 R16 K63 ["PaddingBottom"]
      198 CALL                             R14 2 1
      199 MOVE                             R15 R4
      200 LOADK                            R16 K67 [">> .X-RowSpace50"]
      201 NEWTABLE                         R17 0 0
      203 NEWTABLE                         R18 0 1
      205 MOVE                             R19 R4
      206 LOADK                            R20 K68 ["::UIListLayout"]
      207 DUPTABLE                         R21 K72 [{"FillDirection", "Padding", "SortOrder"}]
      208 GETIMPORT                        R22 K74 [Enum.FillDirection.Horizontal]
      210 SETTABLEKS                       R22 R21 K69 ["FillDirection"]
      212 GETIMPORT                        R22 K66 [UDim.new]
      214 LOADN                            R23 0
      215 LOADN                            R24 4
      216 CALL                             R22 2 1
      217 SETTABLEKS                       R22 R21 K70 ["Padding"]
      219 GETIMPORT                        R22 K76 [Enum.SortOrder.LayoutOrder]
      221 SETTABLEKS                       R22 R21 K71 ["SortOrder"]
      223 CALL                             R19 2 -1
      224 SETLIST                          R18 R19 -1 [1]
      226 CALL                             R15 3 -1
      227 SETLIST                          R8 R9 -1 [1]
      229 CALL                             R5 3 -1
      230 RETURN                           R5 -1
