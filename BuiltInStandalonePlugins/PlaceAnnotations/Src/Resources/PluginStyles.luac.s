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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 GETTABLEKS                       R4 R1 K11 ["Styling"]
       29 GETTABLEKS                       R4 R4 K13 ["createStyleSheet"]
       31 GETTABLEKS                       R6 R2 K14 ["fflagAnnotationsColorErrorFixes"]
       33 JUMPIFNOT                        R6 ; [+2]
       34 LOADK                            R5 K15 ["$SemanticColorSurface100"]
       35 JUMP                             ; [+1]
       36 LOADK                            R5 K16 ["$ForegroundContrast"]
       37 NEWTABLE                         R6 0 15
       39 MOVE                             R7 R3
       40 LOADK                            R8 K17 ["Frame"]
       41 DUPTABLE                         R9 K20 [{["BorderSizePixel"] = 0}]
       42 CALL                             R7 2 1
       43 MOVE                             R8 R3
       44 LOADK                            R9 K21 ["GuiButton"]
       45 DUPTABLE                         R10 K24 [{["AutoButtonColor"] = False}]
       46 CALL                             R8 2 1
       47 MOVE                             R9 R3
       48 LOADK                            R10 K25 ["TextLabel"]
       49 DUPTABLE                         R11 K33 [{["TextColor3"] = "$TextPrimary", ["Font"] = "$Font", ["TextSize"] = "$FontSizeM", ["AutomaticSize"]}]
       50 GETIMPORT                        R12 K36 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R12 R11 K32 ["AutomaticSize"]
       54 NEWTABLE                         R12 0 1
       56 MOVE                             R13 R3
       57 LOADK                            R14 K37 [".Disabled"]
       58 DUPTABLE                         R15 K40 [{["TextTransparency"] = 0.4}]
       59 CALL                             R13 2 -1
       60 SETLIST                          R12 R13 -1 [1]
       62 CALL                             R9 3 1
       63 MOVE                             R10 R3
       64 LOADK                            R11 K41 ["TextButton"]
       65 DUPTABLE                         R12 K42 [{["TextColor3"] = "$TextPrimary", ["Font"] = "$Font", ["TextSize"] = "$FontSizeM"}]
       66 CALL                             R10 2 1
       67 MOVE                             R11 R3
       68 LOADK                            R12 K43 [".Component-Avatar"]
       69 DUPTABLE                         R13 K45 [{"Size"}]
       70 GETIMPORT                        R14 K48 [UDim2.fromOffset]
       72 LOADN                            R15 32
       73 LOADN                            R16 32
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K44 ["Size"]
       77 NEWTABLE                         R14 0 1
       79 MOVE                             R15 R3
       80 LOADK                            R16 K49 ["::UICorner"]
       81 DUPTABLE                         R17 K51 [{"CornerRadius"}]
       82 GETIMPORT                        R18 K54 [UDim.new]
       84 LOADN                            R19 1
       85 LOADN                            R20 0
       86 CALL                             R18 2 1
       87 SETTABLEKS                       R18 R17 K50 ["CornerRadius"]
       89 CALL                             R15 2 -1
       90 SETLIST                          R14 R15 -1 [1]
       92 CALL                             R11 3 1
       93 MOVE                             R12 R3
       94 LOADK                            R13 K55 [".Component-Dropdown"]
       95 DUPTABLE                         R14 K57 [{"BackgroundColor3"}]
       96 SETTABLEKS                       R5 R14 K56 ["BackgroundColor3"]
       98 NEWTABLE                         R15 0 3
      100 MOVE                             R16 R3
      101 LOADK                            R17 K58 ["::UIStroke"]
      102 DUPTABLE                         R18 K63 [{["Thickness"] = 1, ["Color"] = "$ForegroundMain"}]
      103 CALL                             R16 2 1
      104 MOVE                             R17 R3
      105 LOADK                            R18 K64 ["::UIPadding"]
      106 DUPTABLE                         R19 K67 [{"PaddingTop", "PaddingBottom"}]
      107 GETIMPORT                        R20 K54 [UDim.new]
      109 LOADN                            R21 0
      110 LOADN                            R22 4
      111 CALL                             R20 2 1
      112 SETTABLEKS                       R20 R19 K65 ["PaddingTop"]
      114 GETIMPORT                        R20 K54 [UDim.new]
      116 LOADN                            R21 0
      117 LOADN                            R22 4
      118 CALL                             R20 2 1
      119 SETTABLEKS                       R20 R19 K66 ["PaddingBottom"]
      121 CALL                             R17 2 1
      122 MOVE                             R18 R3
      123 LOADK                            R19 K49 ["::UICorner"]
      124 DUPTABLE                         R20 K51 [{"CornerRadius"}]
      125 GETIMPORT                        R21 K54 [UDim.new]
      127 LOADN                            R22 0
      128 LOADN                            R23 4
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K50 ["CornerRadius"]
      132 CALL                             R18 2 -1
      133 SETLIST                          R15 R16 -1 [1]
      135 CALL                             R12 3 1
      136 MOVE                             R13 R3
      137 LOADK                            R14 K68 [".Component-DropdownItem"]
      138 DUPTABLE                         R15 K70 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["TextColor3"] = "$TextPrimary", ["Size"], ["AutomaticSize"], ["TextXAlignment"]}]
      139 SETTABLEKS                       R5 R15 K56 ["BackgroundColor3"]
      141 GETIMPORT                        R16 K72 [UDim2.fromScale]
      143 LOADN                            R17 1
      144 LOADN                            R18 0
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K44 ["Size"]
      148 GETIMPORT                        R16 K36 [Enum.AutomaticSize.XY]
      150 SETTABLEKS                       R16 R15 K32 ["AutomaticSize"]
      152 GETIMPORT                        R16 K74 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R16 R15 K69 ["TextXAlignment"]
      156 NEWTABLE                         R16 0 5
      158 MOVE                             R17 R3
      159 LOADK                            R18 K64 ["::UIPadding"]
      160 DUPTABLE                         R19 K77 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      161 GETIMPORT                        R20 K54 [UDim.new]
      163 LOADN                            R21 0
      164 LOADN                            R22 10
      165 CALL                             R20 2 1
      166 SETTABLEKS                       R20 R19 K75 ["PaddingRight"]
      168 GETIMPORT                        R20 K54 [UDim.new]
      170 LOADN                            R21 0
      171 LOADN                            R22 10
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K76 ["PaddingLeft"]
      175 GETIMPORT                        R20 K54 [UDim.new]
      177 LOADN                            R21 0
      178 LOADN                            R22 5
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K65 ["PaddingTop"]
      182 GETIMPORT                        R20 K54 [UDim.new]
      184 LOADN                            R21 0
      185 LOADN                            R22 5
      186 CALL                             R20 2 1
      187 SETTABLEKS                       R20 R19 K66 ["PaddingBottom"]
      189 CALL                             R17 2 1
      190 MOVE                             R18 R3
      191 LOADK                            R19 K78 [":hover"]
      192 DUPTABLE                         R20 K80 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      193 CALL                             R18 2 1
      194 MOVE                             R19 R3
      195 LOADK                            R20 K81 [":press"]
      196 DUPTABLE                         R21 K83 [{["BackgroundColor3"] = "$ActionActivated"}]
      197 CALL                             R19 2 1
      198 MOVE                             R20 R3
      199 LOADK                            R21 K84 [".Delete"]
      200 DUPTABLE                         R22 K86 [{["TextColor3"] = "$ErrorMain"}]
      201 CALL                             R20 2 1
      202 MOVE                             R21 R3
      203 LOADK                            R22 K87 [".SectionTitle"]
      204 DUPTABLE                         R23 K92 [{["Size"], ["FontSize"] = "$FontSizeS", ["TextColor3"] = "$TextSecondary", ["Font"] = "$FontBold"}]
      205 GETIMPORT                        R24 K93 [UDim2.new]
      207 LOADN                            R25 0
      208 LOADN                            R26 200
      209 LOADN                            R27 0
      210 LOADN                            R28 0
      211 CALL                             R24 4 1
      212 SETTABLEKS                       R24 R23 K44 ["Size"]
      214 NEWTABLE                         R24 0 1
      216 MOVE                             R25 R3
      217 LOADK                            R26 K64 ["::UIPadding"]
      218 DUPTABLE                         R27 K94 [{"PaddingLeft", "PaddingTop"}]
      219 GETIMPORT                        R28 K54 [UDim.new]
      221 LOADN                            R29 0
      222 LOADN                            R30 12
      223 CALL                             R28 2 1
      224 SETTABLEKS                       R28 R27 K76 ["PaddingLeft"]
      226 GETIMPORT                        R28 K54 [UDim.new]
      228 LOADN                            R29 0
      229 LOADN                            R30 8
      230 CALL                             R28 2 1
      231 SETTABLEKS                       R28 R27 K65 ["PaddingTop"]
      233 CALL                             R25 2 -1
      234 SETLIST                          R24 R25 -1 [1]
      236 CALL                             R21 3 -1
      237 SETLIST                          R16 R17 -1 [1]
      239 CALL                             R13 3 1
      240 MOVE                             R14 R3
      241 LOADK                            R15 K95 [".Component-Divider"]
      242 DUPTABLE                         R16 K99 [{["Size"], ["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency"}]
      243 GETIMPORT                        R17 K93 [UDim2.new]
      245 LOADN                            R18 1
      246 LOADN                            R19 0
      247 LOADN                            R20 0
      248 LOADN                            R21 1
      249 CALL                             R17 4 1
      250 SETTABLEKS                       R17 R16 K44 ["Size"]
      252 CALL                             R14 2 1
      253 MOVE                             R15 R3
      254 LOADK                            R16 K100 [".MoreIcon"]
      255 DUPTABLE                         R17 K103 [{["Image"] = "$MoreIcon", ["Size"]}]
      256 GETIMPORT                        R18 K48 [UDim2.fromOffset]
      258 LOADN                            R19 16
      259 LOADN                            R20 16
      260 CALL                             R18 2 1
      261 SETTABLEKS                       R18 R17 K44 ["Size"]
      263 CALL                             R15 2 1
      264 MOVE                             R16 R3
      265 LOADK                            R17 K104 [".CheckboxOnIcon"]
      266 DUPTABLE                         R18 K106 [{["Image"] = "$CheckboxOn", ["Size"]}]
      267 GETIMPORT                        R19 K48 [UDim2.fromOffset]
      269 LOADN                            R20 16
      270 LOADN                            R21 16
      271 CALL                             R19 2 1
      272 SETTABLEKS                       R19 R18 K44 ["Size"]
      274 CALL                             R16 2 1
      275 MOVE                             R17 R3
      276 LOADK                            R18 K107 [".CheckboxOffIcon"]
      277 DUPTABLE                         R19 K109 [{["Image"] = "$CheckboxOff", ["Size"]}]
      278 GETIMPORT                        R20 K48 [UDim2.fromOffset]
      280 LOADN                            R21 16
      281 LOADN                            R22 16
      282 CALL                             R20 2 1
      283 SETTABLEKS                       R20 R19 K44 ["Size"]
      285 CALL                             R17 2 1
      286 MOVE                             R18 R3
      287 LOADK                            R19 K110 [".ErrorIcon"]
      288 DUPTABLE                         R20 K112 [{["Image"] = "$Error", ["Size"]}]
      289 GETIMPORT                        R21 K48 [UDim2.fromOffset]
      291 LOADN                            R22 16
      292 LOADN                            R23 16
      293 CALL                             R21 2 1
      294 SETTABLEKS                       R21 R20 K44 ["Size"]
      296 CALL                             R18 2 1
      297 MOVE                             R19 R3
      298 LOADK                            R20 K113 [".CloseIcon"]
      299 DUPTABLE                         R21 K115 [{["Image"] = "$Close", ["Size"]}]
      300 GETIMPORT                        R22 K48 [UDim2.fromOffset]
      302 LOADN                            R23 16
      303 LOADN                            R24 16
      304 CALL                             R22 2 1
      305 SETTABLEKS                       R22 R21 K44 ["Size"]
      307 CALL                             R19 2 1
      308 MOVE                             R20 R3
      309 LOADK                            R21 K116 [".SettingsIcon"]
      310 DUPTABLE                         R22 K118 [{["Image"] = "$Settings", ["Size"]}]
      311 GETIMPORT                        R23 K48 [UDim2.fromOffset]
      313 LOADN                            R24 16
      314 LOADN                            R25 16
      315 CALL                             R23 2 1
      316 SETTABLEKS                       R23 R22 K44 ["Size"]
      318 CALL                             R20 2 1
      319 MOVE                             R21 R3
      320 LOADK                            R22 K119 [".AddAnnotationIcon"]
      321 DUPTABLE                         R23 K121 [{["Image"] = "$AddAnnotation", ["Size"]}]
      322 GETIMPORT                        R24 K48 [UDim2.fromOffset]
      324 LOADN                            R25 16
      325 LOADN                            R26 16
      326 CALL                             R24 2 1
      327 SETTABLEKS                       R24 R23 K44 ["Size"]
      329 CALL                             R21 2 -1
      330 SETLIST                          R6 R7 -1 [1]
      332 DUPTABLE                         R7 K133 [{["Font"], ["FontBold"], ["FontSizeS"] = 14, ["FontSizeM"] = 16, ["FontSizeL"] = 18, ["Shift100Transparency"] = 0.96, ["Shift200Transparency"] = 0.92}]
      333 GETIMPORT                        R8 K135 [Enum.Font.BuilderSans]
      335 SETTABLEKS                       R8 R7 K28 ["Font"]
      337 GETIMPORT                        R8 K137 [Enum.Font.BuilderSansBold]
      339 SETTABLEKS                       R8 R7 K122 ["FontBold"]
      341 MOVE                             R8 R4
      342 LOADK                            R9 K2 ["PlaceAnnotations"]
      343 MOVE                             R10 R6
      344 MOVE                             R11 R7
      345 CALL                             R8 3 -1
      346 RETURN                           R8 -1
