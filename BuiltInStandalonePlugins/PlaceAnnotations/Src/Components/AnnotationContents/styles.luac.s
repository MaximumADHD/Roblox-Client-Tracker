MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-AnnotationContents"]
       20 DUPTABLE                         R5 K17 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True}]
       21 GETIMPORT                        R6 K20 [UDim2.fromScale]
       23 LOADN                            R7 1
       24 LOADN                            R8 0
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K11 ["Size"]
       28 GETIMPORT                        R6 K23 [Enum.AutomaticSize.Y]
       30 SETTABLEKS                       R6 R5 K12 ["AutomaticSize"]
       32 NEWTABLE                         R6 0 3
       34 MOVE                             R7 R2
       35 LOADK                            R8 K24 ["::UIPadding"]
       36 DUPTABLE                         R9 K26 [{"PaddingRight"}]
       37 GETIMPORT                        R10 K29 [UDim.new]
       39 LOADN                            R11 0
       40 LOADN                            R12 4
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K25 ["PaddingRight"]
       44 CALL                             R7 2 1
       45 MOVE                             R8 R2
       46 LOADK                            R9 K30 [">> Frame"]
       47 DUPTABLE                         R10 K31 [{["BackgroundTransparency"] = 1}]
       48 CALL                             R8 2 1
       49 MOVE                             R9 R2
       50 LOADK                            R10 K32 ["> #TextColumn"]
       51 DUPTABLE                         R11 K33 [{"AutomaticSize"}]
       52 GETIMPORT                        R12 K23 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R12 R11 K12 ["AutomaticSize"]
       56 NEWTABLE                         R12 0 5
       58 MOVE                             R13 R2
       59 LOADK                            R14 K34 ["::UIListLayout"]
       60 DUPTABLE                         R15 K38 [{"SortOrder", "FillDirection", "Padding"}]
       61 GETIMPORT                        R16 K40 [Enum.SortOrder.LayoutOrder]
       63 SETTABLEKS                       R16 R15 K35 ["SortOrder"]
       65 GETIMPORT                        R16 K42 [Enum.FillDirection.Vertical]
       67 SETTABLEKS                       R16 R15 K36 ["FillDirection"]
       69 GETIMPORT                        R16 K29 [UDim.new]
       71 LOADN                            R17 0
       72 LOADN                            R18 4
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K37 ["Padding"]
       76 CALL                             R13 2 1
       77 MOVE                             R14 R2
       78 LOADK                            R15 K43 ["::UIFlexItem"]
       79 DUPTABLE                         R16 K45 [{"FlexMode"}]
       80 GETIMPORT                        R17 K48 [Enum.UIFlexMode.Grow]
       82 SETTABLEKS                       R17 R16 K44 ["FlexMode"]
       84 CALL                             R14 2 1
       85 MOVE                             R15 R2
       86 LOADK                            R16 K49 [">> #UsernameRow"]
       87 DUPTABLE                         R17 K50 [{"Size", "AutomaticSize"}]
       88 GETIMPORT                        R18 K20 [UDim2.fromScale]
       90 LOADN                            R19 1
       91 LOADN                            R20 0
       92 CALL                             R18 2 1
       93 SETTABLEKS                       R18 R17 K11 ["Size"]
       95 GETIMPORT                        R18 K23 [Enum.AutomaticSize.Y]
       97 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
       99 NEWTABLE                         R18 0 2
      101 MOVE                             R19 R2
      102 LOADK                            R20 K51 ["> Frame"]
      103 DUPTABLE                         R21 K33 [{"AutomaticSize"}]
      104 GETIMPORT                        R22 K53 [Enum.AutomaticSize.XY]
      106 SETTABLEKS                       R22 R21 K12 ["AutomaticSize"]
      108 NEWTABLE                         R22 0 2
      110 MOVE                             R23 R2
      111 LOADK                            R24 K54 ["> TextLabel"]
      112 DUPTABLE                         R25 K63 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextScaled"] = False, ["TextColor3"] = "$SecondaryContrast", ["TextSize"] = 16, ["Font"] = "$Font"}]
      113 GETIMPORT                        R26 K53 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R26 R25 K12 ["AutomaticSize"]
      117 CALL                             R23 2 1
      118 MOVE                             R24 R2
      119 LOADK                            R25 K64 ["> #TaggedYou"]
      120 DUPTABLE                         R26 K71 [{["TextColor3"] = "$TextPrimary", ["TextSize"] = "$FontSizeS", ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ResolveIconBase", ["BorderSizePixel"] = 0}]
      121 NEWTABLE                         R27 0 2
      123 MOVE                             R28 R2
      124 LOADK                            R29 K24 ["::UIPadding"]
      125 DUPTABLE                         R30 K75 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
      126 GETIMPORT                        R31 K29 [UDim.new]
      128 LOADN                            R32 0
      129 LOADN                            R33 2
      130 CALL                             R31 2 1
      131 SETTABLEKS                       R31 R30 K72 ["PaddingTop"]
      133 GETIMPORT                        R31 K29 [UDim.new]
      135 LOADN                            R32 0
      136 LOADN                            R33 4
      137 CALL                             R31 2 1
      138 SETTABLEKS                       R31 R30 K73 ["PaddingLeft"]
      140 GETIMPORT                        R31 K29 [UDim.new]
      142 LOADN                            R32 0
      143 LOADN                            R33 4
      144 CALL                             R31 2 1
      145 SETTABLEKS                       R31 R30 K74 ["PaddingBottom"]
      147 GETIMPORT                        R31 K29 [UDim.new]
      149 LOADN                            R32 0
      150 LOADN                            R33 4
      151 CALL                             R31 2 1
      152 SETTABLEKS                       R31 R30 K25 ["PaddingRight"]
      154 CALL                             R28 2 1
      155 MOVE                             R29 R2
      156 LOADK                            R30 K76 ["::UICorner"]
      157 DUPTABLE                         R31 K78 [{"CornerRadius"}]
      158 GETIMPORT                        R32 K29 [UDim.new]
      160 LOADN                            R33 0
      161 LOADN                            R34 2
      162 CALL                             R32 2 1
      163 SETTABLEKS                       R32 R31 K77 ["CornerRadius"]
      165 CALL                             R29 2 -1
      166 SETLIST                          R27 R28 -1 [1]
      168 CALL                             R24 3 -1
      169 SETLIST                          R22 R23 -1 [1]
      171 CALL                             R19 3 1
      172 MOVE                             R20 R2
      173 LOADK                            R21 K79 ["> #MoreIcon"]
      174 DUPTABLE                         R22 K81 [{"Size", "Position"}]
      175 GETIMPORT                        R23 K83 [UDim2.fromOffset]
      177 LOADN                            R24 16
      178 LOADN                            R25 16
      179 CALL                             R23 2 1
      180 SETTABLEKS                       R23 R22 K11 ["Size"]
      182 GETIMPORT                        R23 K84 [UDim2.new]
      184 LOADN                            R24 1
      185 LOADN                            R25 -16
      186 LOADN                            R26 0
      187 LOADN                            R27 0
      188 CALL                             R23 4 1
      189 SETTABLEKS                       R23 R22 K80 ["Position"]
      191 NEWTABLE                         R23 0 2
      193 MOVE                             R24 R2
      194 LOADK                            R25 K85 [":hover"]
      195 DUPTABLE                         R26 K88 [{["BackgroundTransparency"] = "$Shift200Transparency", ["BackgroundColor3"] = "$Shift200Color"}]
      196 CALL                             R24 2 1
      197 MOVE                             R25 R2
      198 LOADK                            R26 K89 [":press"]
      199 DUPTABLE                         R27 K91 [{["BackgroundTransparency"] = "$Shift100Transparency", ["BackgroundColor3"] = "$Shift200Color"}]
      200 CALL                             R25 2 -1
      201 SETLIST                          R23 R24 -1 [1]
      203 CALL                             R20 3 -1
      204 SETLIST                          R18 R19 -1 [1]
      206 CALL                             R15 3 1
      207 MOVE                             R16 R2
      208 LOADK                            R17 K92 [">> TextLabel #Contents"]
      209 DUPTABLE                         R18 K99 [{["Size"], ["AutomaticSize"], ["TextWrapped"] = True, ["TextColor3"] = "$TextPrimary", ["TextSize"] = "$FontSizeM", ["BackgroundTransparency"] = 1, ["LineHeight"] = 1.2, ["TextXAlignment"], ["RichText"] = True}]
      210 GETIMPORT                        R19 K20 [UDim2.fromScale]
      212 LOADN                            R20 1
      213 LOADN                            R21 0
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K11 ["Size"]
      217 GETIMPORT                        R19 K53 [Enum.AutomaticSize.XY]
      219 SETTABLEKS                       R19 R18 K12 ["AutomaticSize"]
      221 GETIMPORT                        R19 K101 [Enum.TextXAlignment.Left]
      223 SETTABLEKS                       R19 R18 K97 ["TextXAlignment"]
      225 CALL                             R16 2 1
      226 MOVE                             R17 R2
      227 LOADK                            R18 K102 [">> TextBox"]
      228 DUPTABLE                         R19 K103 [{["TextSize"] = 16}]
      229 CALL                             R17 2 -1
      230 SETLIST                          R12 R13 -1 [1]
      232 CALL                             R9 3 -1
      233 SETLIST                          R6 R7 -1 [1]
      235 CALL                             R3 3 -1
      236 RETURN                           R3 -1
