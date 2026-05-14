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
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 15
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 ["Frame"]
       26 DUPTABLE                         R7 K13 [{"BorderSizePixel"}]
       27 LOADN                            R8 0
       28 SETTABLEKS                       R8 R7 K12 ["BorderSizePixel"]
       30 CALL                             R5 2 1
       31 MOVE                             R6 R2
       32 LOADK                            R7 K14 ["GuiButton"]
       33 DUPTABLE                         R8 K16 [{"AutoButtonColor"}]
       34 LOADB                            R9 0
       35 SETTABLEKS                       R9 R8 K15 ["AutoButtonColor"]
       37 CALL                             R6 2 1
       38 MOVE                             R7 R2
       39 LOADK                            R8 K17 ["TextLabel"]
       40 DUPTABLE                         R9 K22 [{"TextColor3", "Font", "TextSize", "AutomaticSize"}]
       41 LOADK                            R10 K23 ["$TextPrimary"]
       42 SETTABLEKS                       R10 R9 K18 ["TextColor3"]
       44 LOADK                            R10 K24 ["$Font"]
       45 SETTABLEKS                       R10 R9 K19 ["Font"]
       47 LOADK                            R10 K25 ["$FontSizeM"]
       48 SETTABLEKS                       R10 R9 K20 ["TextSize"]
       50 GETIMPORT                        R10 K28 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R10 R9 K21 ["AutomaticSize"]
       54 NEWTABLE                         R10 0 1
       56 MOVE                             R11 R2
       57 LOADK                            R12 K29 [".Disabled"]
       58 DUPTABLE                         R13 K31 [{"TextTransparency"}]
       59 LOADK                            R14 K32 [0.4]
       60 SETTABLEKS                       R14 R13 K30 ["TextTransparency"]
       62 CALL                             R11 2 -1
       63 SETLIST                          R10 R11 -1 [1]
       65 CALL                             R7 3 1
       66 MOVE                             R8 R2
       67 LOADK                            R9 K33 ["TextButton"]
       68 DUPTABLE                         R10 K34 [{"TextColor3", "Font", "TextSize"}]
       69 LOADK                            R11 K23 ["$TextPrimary"]
       70 SETTABLEKS                       R11 R10 K18 ["TextColor3"]
       72 LOADK                            R11 K24 ["$Font"]
       73 SETTABLEKS                       R11 R10 K19 ["Font"]
       75 LOADK                            R11 K25 ["$FontSizeM"]
       76 SETTABLEKS                       R11 R10 K20 ["TextSize"]
       78 CALL                             R8 2 1
       79 MOVE                             R9 R2
       80 LOADK                            R10 K35 [".Component-Avatar"]
       81 DUPTABLE                         R11 K37 [{"Size"}]
       82 GETIMPORT                        R12 K40 [UDim2.fromOffset]
       84 LOADN                            R13 32
       85 LOADN                            R14 32
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K36 ["Size"]
       89 NEWTABLE                         R12 0 1
       91 MOVE                             R13 R2
       92 LOADK                            R14 K41 ["::UICorner"]
       93 DUPTABLE                         R15 K43 [{"CornerRadius"}]
       94 GETIMPORT                        R16 K46 [UDim.new]
       96 LOADN                            R17 1
       97 LOADN                            R18 0
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K42 ["CornerRadius"]
      101 CALL                             R13 2 -1
      102 SETLIST                          R12 R13 -1 [1]
      104 CALL                             R9 3 1
      105 MOVE                             R10 R2
      106 LOADK                            R11 K47 [".Component-Dropdown"]
      107 DUPTABLE                         R12 K49 [{"BackgroundColor3"}]
      108 LOADK                            R13 K50 ["$ForegroundContrast"]
      109 SETTABLEKS                       R13 R12 K48 ["BackgroundColor3"]
      111 NEWTABLE                         R13 0 3
      113 MOVE                             R14 R2
      114 LOADK                            R15 K51 ["::UIStroke"]
      115 DUPTABLE                         R16 K54 [{"Thickness", "Color"}]
      116 LOADN                            R17 1
      117 SETTABLEKS                       R17 R16 K52 ["Thickness"]
      119 LOADK                            R17 K55 ["$ForegroundMain"]
      120 SETTABLEKS                       R17 R16 K53 ["Color"]
      122 CALL                             R14 2 1
      123 MOVE                             R15 R2
      124 LOADK                            R16 K56 ["::UIPadding"]
      125 DUPTABLE                         R17 K59 [{"PaddingTop", "PaddingBottom"}]
      126 GETIMPORT                        R18 K46 [UDim.new]
      128 LOADN                            R19 0
      129 LOADN                            R20 4
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K57 ["PaddingTop"]
      133 GETIMPORT                        R18 K46 [UDim.new]
      135 LOADN                            R19 0
      136 LOADN                            R20 4
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K58 ["PaddingBottom"]
      140 CALL                             R15 2 1
      141 MOVE                             R16 R2
      142 LOADK                            R17 K41 ["::UICorner"]
      143 DUPTABLE                         R18 K43 [{"CornerRadius"}]
      144 GETIMPORT                        R19 K46 [UDim.new]
      146 LOADN                            R20 0
      147 LOADN                            R21 4
      148 CALL                             R19 2 1
      149 SETTABLEKS                       R19 R18 K42 ["CornerRadius"]
      151 CALL                             R16 2 -1
      152 SETLIST                          R13 R14 -1 [1]
      154 CALL                             R10 3 1
      155 MOVE                             R11 R2
      156 LOADK                            R12 K60 [".Component-DropdownItem"]
      157 DUPTABLE                         R13 K62 [{"BorderSizePixel", "BackgroundColor3", "TextColor3", "Size", "AutomaticSize", "TextXAlignment"}]
      158 LOADN                            R14 0
      159 SETTABLEKS                       R14 R13 K12 ["BorderSizePixel"]
      161 LOADK                            R14 K50 ["$ForegroundContrast"]
      162 SETTABLEKS                       R14 R13 K48 ["BackgroundColor3"]
      164 LOADK                            R14 K23 ["$TextPrimary"]
      165 SETTABLEKS                       R14 R13 K18 ["TextColor3"]
      167 GETIMPORT                        R14 K64 [UDim2.fromScale]
      169 LOADN                            R15 1
      170 LOADN                            R16 0
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R13 K36 ["Size"]
      174 GETIMPORT                        R14 K28 [Enum.AutomaticSize.XY]
      176 SETTABLEKS                       R14 R13 K21 ["AutomaticSize"]
      178 GETIMPORT                        R14 K66 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R14 R13 K61 ["TextXAlignment"]
      182 NEWTABLE                         R14 0 5
      184 MOVE                             R15 R2
      185 LOADK                            R16 K56 ["::UIPadding"]
      186 DUPTABLE                         R17 K69 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      187 GETIMPORT                        R18 K46 [UDim.new]
      189 LOADN                            R19 0
      190 LOADN                            R20 10
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K67 ["PaddingRight"]
      194 GETIMPORT                        R18 K46 [UDim.new]
      196 LOADN                            R19 0
      197 LOADN                            R20 10
      198 CALL                             R18 2 1
      199 SETTABLEKS                       R18 R17 K68 ["PaddingLeft"]
      201 GETIMPORT                        R18 K46 [UDim.new]
      203 LOADN                            R19 0
      204 LOADN                            R20 5
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K57 ["PaddingTop"]
      208 GETIMPORT                        R18 K46 [UDim.new]
      210 LOADN                            R19 0
      211 LOADN                            R20 5
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K58 ["PaddingBottom"]
      215 CALL                             R15 2 1
      216 MOVE                             R16 R2
      217 LOADK                            R17 K70 [":hover"]
      218 DUPTABLE                         R18 K49 [{"BackgroundColor3"}]
      219 LOADK                            R19 K71 ["$SecondaryHoverBackground"]
      220 SETTABLEKS                       R19 R18 K48 ["BackgroundColor3"]
      222 CALL                             R16 2 1
      223 MOVE                             R17 R2
      224 LOADK                            R18 K72 [":press"]
      225 DUPTABLE                         R19 K49 [{"BackgroundColor3"}]
      226 LOADK                            R20 K73 ["$ActionActivated"]
      227 SETTABLEKS                       R20 R19 K48 ["BackgroundColor3"]
      229 CALL                             R17 2 1
      230 MOVE                             R18 R2
      231 LOADK                            R19 K74 [".Delete"]
      232 DUPTABLE                         R20 K75 [{"TextColor3"}]
      233 LOADK                            R21 K76 ["$ErrorMain"]
      234 SETTABLEKS                       R21 R20 K18 ["TextColor3"]
      236 CALL                             R18 2 1
      237 MOVE                             R19 R2
      238 LOADK                            R20 K77 [".SectionTitle"]
      239 DUPTABLE                         R21 K79 [{"Size", "FontSize", "TextColor3", "Font"}]
      240 GETIMPORT                        R22 K80 [UDim2.new]
      242 LOADN                            R23 0
      243 LOADN                            R24 200
      244 LOADN                            R25 0
      245 LOADN                            R26 0
      246 CALL                             R22 4 1
      247 SETTABLEKS                       R22 R21 K36 ["Size"]
      249 LOADK                            R22 K81 ["$FontSizeS"]
      250 SETTABLEKS                       R22 R21 K78 ["FontSize"]
      252 LOADK                            R22 K82 ["$TextSecondary"]
      253 SETTABLEKS                       R22 R21 K18 ["TextColor3"]
      255 LOADK                            R22 K83 ["$FontBold"]
      256 SETTABLEKS                       R22 R21 K19 ["Font"]
      258 NEWTABLE                         R22 0 1
      260 MOVE                             R23 R2
      261 LOADK                            R24 K56 ["::UIPadding"]
      262 DUPTABLE                         R25 K84 [{"PaddingLeft", "PaddingTop"}]
      263 GETIMPORT                        R26 K46 [UDim.new]
      265 LOADN                            R27 0
      266 LOADN                            R28 12
      267 CALL                             R26 2 1
      268 SETTABLEKS                       R26 R25 K68 ["PaddingLeft"]
      270 GETIMPORT                        R26 K46 [UDim.new]
      272 LOADN                            R27 0
      273 LOADN                            R28 8
      274 CALL                             R26 2 1
      275 SETTABLEKS                       R26 R25 K57 ["PaddingTop"]
      277 CALL                             R23 2 -1
      278 SETLIST                          R22 R23 -1 [1]
      280 CALL                             R19 3 -1
      281 SETLIST                          R14 R15 -1 [1]
      283 CALL                             R11 3 1
      284 MOVE                             R12 R2
      285 LOADK                            R13 K85 [".Component-Divider"]
      286 DUPTABLE                         R14 K87 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      287 GETIMPORT                        R15 K80 [UDim2.new]
      289 LOADN                            R16 1
      290 LOADN                            R17 0
      291 LOADN                            R18 0
      292 LOADN                            R19 1
      293 CALL                             R15 4 1
      294 SETTABLEKS                       R15 R14 K36 ["Size"]
      296 LOADK                            R15 K88 ["$SemanticColorDivider"]
      297 SETTABLEKS                       R15 R14 K48 ["BackgroundColor3"]
      299 LOADK                            R15 K89 ["$SemanticColorDividerTransparency"]
      300 SETTABLEKS                       R15 R14 K86 ["BackgroundTransparency"]
      302 CALL                             R12 2 1
      303 MOVE                             R13 R2
      304 LOADK                            R14 K90 [".MoreIcon"]
      305 DUPTABLE                         R15 K92 [{"Image", "Size"}]
      306 LOADK                            R16 K93 ["$MoreIcon"]
      307 SETTABLEKS                       R16 R15 K91 ["Image"]
      309 GETIMPORT                        R16 K40 [UDim2.fromOffset]
      311 LOADN                            R17 16
      312 LOADN                            R18 16
      313 CALL                             R16 2 1
      314 SETTABLEKS                       R16 R15 K36 ["Size"]
      316 CALL                             R13 2 1
      317 MOVE                             R14 R2
      318 LOADK                            R15 K94 [".CheckboxOnIcon"]
      319 DUPTABLE                         R16 K92 [{"Image", "Size"}]
      320 LOADK                            R17 K95 ["$CheckboxOn"]
      321 SETTABLEKS                       R17 R16 K91 ["Image"]
      323 GETIMPORT                        R17 K40 [UDim2.fromOffset]
      325 LOADN                            R18 16
      326 LOADN                            R19 16
      327 CALL                             R17 2 1
      328 SETTABLEKS                       R17 R16 K36 ["Size"]
      330 CALL                             R14 2 1
      331 MOVE                             R15 R2
      332 LOADK                            R16 K96 [".CheckboxOffIcon"]
      333 DUPTABLE                         R17 K92 [{"Image", "Size"}]
      334 LOADK                            R18 K97 ["$CheckboxOff"]
      335 SETTABLEKS                       R18 R17 K91 ["Image"]
      337 GETIMPORT                        R18 K40 [UDim2.fromOffset]
      339 LOADN                            R19 16
      340 LOADN                            R20 16
      341 CALL                             R18 2 1
      342 SETTABLEKS                       R18 R17 K36 ["Size"]
      344 CALL                             R15 2 1
      345 MOVE                             R16 R2
      346 LOADK                            R17 K98 [".ErrorIcon"]
      347 DUPTABLE                         R18 K92 [{"Image", "Size"}]
      348 LOADK                            R19 K99 ["$Error"]
      349 SETTABLEKS                       R19 R18 K91 ["Image"]
      351 GETIMPORT                        R19 K40 [UDim2.fromOffset]
      353 LOADN                            R20 16
      354 LOADN                            R21 16
      355 CALL                             R19 2 1
      356 SETTABLEKS                       R19 R18 K36 ["Size"]
      358 CALL                             R16 2 1
      359 MOVE                             R17 R2
      360 LOADK                            R18 K100 [".CloseIcon"]
      361 DUPTABLE                         R19 K92 [{"Image", "Size"}]
      362 LOADK                            R20 K101 ["$Close"]
      363 SETTABLEKS                       R20 R19 K91 ["Image"]
      365 GETIMPORT                        R20 K40 [UDim2.fromOffset]
      367 LOADN                            R21 16
      368 LOADN                            R22 16
      369 CALL                             R20 2 1
      370 SETTABLEKS                       R20 R19 K36 ["Size"]
      372 CALL                             R17 2 1
      373 MOVE                             R18 R2
      374 LOADK                            R19 K102 [".SettingsIcon"]
      375 DUPTABLE                         R20 K92 [{"Image", "Size"}]
      376 LOADK                            R21 K103 ["$Settings"]
      377 SETTABLEKS                       R21 R20 K91 ["Image"]
      379 GETIMPORT                        R21 K40 [UDim2.fromOffset]
      381 LOADN                            R22 16
      382 LOADN                            R23 16
      383 CALL                             R21 2 1
      384 SETTABLEKS                       R21 R20 K36 ["Size"]
      386 CALL                             R18 2 1
      387 MOVE                             R19 R2
      388 LOADK                            R20 K104 [".AddAnnotationIcon"]
      389 DUPTABLE                         R21 K92 [{"Image", "Size"}]
      390 LOADK                            R22 K105 ["$AddAnnotation"]
      391 SETTABLEKS                       R22 R21 K91 ["Image"]
      393 GETIMPORT                        R22 K40 [UDim2.fromOffset]
      395 LOADN                            R23 16
      396 LOADN                            R24 16
      397 CALL                             R22 2 1
      398 SETTABLEKS                       R22 R21 K36 ["Size"]
      400 CALL                             R19 2 -1
      401 SETLIST                          R4 R5 -1 [1]
      403 DUPTABLE                         R5 K112 [{"Font", "FontBold", "FontSizeS", "FontSizeM", "FontSizeL", "Shift100Transparency", "Shift200Transparency"}]
      404 GETIMPORT                        R6 K114 [Enum.Font.BuilderSans]
      406 SETTABLEKS                       R6 R5 K19 ["Font"]
      408 GETIMPORT                        R6 K116 [Enum.Font.BuilderSansBold]
      410 SETTABLEKS                       R6 R5 K106 ["FontBold"]
      412 LOADN                            R6 14
      413 SETTABLEKS                       R6 R5 K107 ["FontSizeS"]
      415 LOADN                            R6 16
      416 SETTABLEKS                       R6 R5 K108 ["FontSizeM"]
      418 LOADN                            R6 18
      419 SETTABLEKS                       R6 R5 K109 ["FontSizeL"]
      421 LOADK                            R6 K117 [0.96]
      422 SETTABLEKS                       R6 R5 K110 ["Shift100Transparency"]
      424 LOADK                            R6 K118 [0.92]
      425 SETTABLEKS                       R6 R5 K111 ["Shift200Transparency"]
      427 MOVE                             R6 R3
      428 LOADK                            R7 K2 ["PlaceAnnotations"]
      429 MOVE                             R8 R4
      430 MOVE                             R9 R5
      431 CALL                             R6 3 -1
      432 RETURN                           R6 -1
