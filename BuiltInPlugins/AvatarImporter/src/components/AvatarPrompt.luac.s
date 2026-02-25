PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["AVATAR_IMPORTER_DEVHUB"]
        5 NAMECALL                         R2 R2 K1 ["GetDocumentationUrl"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{"Name", "Size", "BackgroundColor3"}]
        5 LOADK                            R4 K6 ["AvatarPrompt"]
        6 SETTABLEKS                       R4 R3 K2 ["Name"]
        8 GETIMPORT                        R4 K9 [UDim2.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R3 K3 ["Size"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K10 ["Theme"]
       20 GETIMPORT                        R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
       22 GETIMPORT                        R7 K17 [Enum.StudioStyleGuideModifier.Default]
       24 NAMECALL                         R4 R4 K18 ["GetColor"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K4 ["BackgroundColor3"]
       29 DUPTABLE                         R4 K20 [{"content"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K0 ["createElement"]
       33 LOADK                            R6 K1 ["Frame"]
       34 DUPTABLE                         R7 K23 [{"BackgroundTransparency", "Name", "Position", "Size"}]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K21 ["BackgroundTransparency"]
       38 LOADK                            R8 K24 ["Content"]
       39 SETTABLEKS                       R8 R7 K2 ["Name"]
       41 GETIMPORT                        R8 K9 [UDim2.new]
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 LOADN                            R11 0
       46 LOADN                            R12 0
       47 CALL                             R8 4 1
       48 SETTABLEKS                       R8 R7 K22 ["Position"]
       50 GETIMPORT                        R8 K9 [UDim2.new]
       52 LOADN                            R9 1
       53 LOADN                            R10 0
       54 LOADN                            R11 1
       55 LOADN                            R12 0
       56 CALL                             R8 4 1
       57 SETTABLEKS                       R8 R7 K3 ["Size"]
       59 DUPTABLE                         R8 K28 [{"topDescription", "buttons", "bottomDescription"}]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R9 R10 K0 ["createElement"]
       63 LOADK                            R10 K29 ["TextLabel"]
       64 DUPTABLE                         R11 K36 [{"BackgroundTransparency", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
       65 LOADN                            R12 1
       66 SETTABLEKS                       R12 R11 K21 ["BackgroundTransparency"]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R12 R13 K37 ["FONT"]
       71 SETTABLEKS                       R12 R11 K30 ["Font"]
       73 LOADK                            R12 K38 ["TopDescription"]
       74 SETTABLEKS                       R12 R11 K2 ["Name"]
       76 GETIMPORT                        R12 K9 [UDim2.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 0
       80 LOADN                            R15 0
       81 LOADN                            R16 20
       82 CALL                             R12 4 1
       83 SETTABLEKS                       R12 R11 K22 ["Position"]
       85 GETIMPORT                        R12 K9 [UDim2.new]
       87 LOADN                            R13 1
       88 LOADN                            R14 0
       89 LOADN                            R15 0
       90 LOADN                            R16 18
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K3 ["Size"]
       94 LOADK                            R12 K39 ["Choose the Avatar type you are going to import:"]
       95 SETTABLEKS                       R12 R11 K31 ["Text"]
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R12 R13 K40 ["FONT_SIZE_LARGE"]
      100 SETTABLEKS                       R12 R11 K32 ["TextSize"]
      102 GETIMPORT                        R12 K42 [Enum.TextXAlignment.Center]
      104 SETTABLEKS                       R12 R11 K33 ["TextXAlignment"]
      106 GETIMPORT                        R12 K44 [Enum.TextYAlignment.Top]
      108 SETTABLEKS                       R12 R11 K34 ["TextYAlignment"]
      110 GETUPVAL                         R13 1
      111 GETTABLEKS                       R12 R13 K10 ["Theme"]
      113 GETIMPORT                        R14 K46 [Enum.StudioStyleGuideColor.MainText]
      115 GETIMPORT                        R15 K17 [Enum.StudioStyleGuideModifier.Default]
      117 NAMECALL                         R12 R12 K18 ["GetColor"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K35 ["TextColor3"]
      122 CALL                             R9 2 1
      123 SETTABLEKS                       R9 R8 K25 ["topDescription"]
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R9 R10 K0 ["createElement"]
      128 LOADK                            R10 K1 ["Frame"]
      129 DUPTABLE                         R11 K23 [{"BackgroundTransparency", "Name", "Position", "Size"}]
      130 LOADN                            R12 1
      131 SETTABLEKS                       R12 R11 K21 ["BackgroundTransparency"]
      133 LOADK                            R12 K47 ["Buttons"]
      134 SETTABLEKS                       R12 R11 K2 ["Name"]
      136 GETIMPORT                        R12 K9 [UDim2.new]
      138 LOADN                            R13 0
      139 GETUPVAL                         R15 2
      140 GETTABLEKS                       R14 R15 K48 ["BUTTON_SIDE_PADDING"]
      142 LOADN                            R15 0
      143 GETUPVAL                         R18 2
      144 GETTABLEKS                       R17 R18 K50 ["BUTTON_TOP_PADDING"]
      146 ADDK                             R16 R17 K49 [0]
      147 CALL                             R12 4 1
      148 SETTABLEKS                       R12 R11 K22 ["Position"]
      150 GETIMPORT                        R12 K9 [UDim2.new]
      152 LOADN                            R13 1
      153 GETUPVAL                         R17 2
      154 GETTABLEKS                       R16 R17 K48 ["BUTTON_SIDE_PADDING"]
      156 MINUS                            R15 R16
      157 MULK                             R14 R15 K51 [2]
      158 LOADN                            R15 0
      159 GETUPVAL                         R17 2
      160 GETTABLEKS                       R16 R17 K52 ["BUTTON_HEIGHT"]
      162 CALL                             R12 4 1
      163 SETTABLEKS                       R12 R11 K3 ["Size"]
      165 DUPTABLE                         R12 K58 [{"buttonsListLayout", "rthroButton", "rthroNarrowButton", "r15Button", "customButton"}]
      166 GETUPVAL                         R14 0
      167 GETTABLEKS                       R13 R14 K0 ["createElement"]
      169 LOADK                            R14 K59 ["UIListLayout"]
      170 DUPTABLE                         R15 K63 [{"FillDirection", "Padding", "SortOrder"}]
      171 GETIMPORT                        R16 K65 [Enum.FillDirection.Horizontal]
      173 SETTABLEKS                       R16 R15 K60 ["FillDirection"]
      175 GETIMPORT                        R16 K67 [UDim.new]
      177 LOADN                            R17 0
      178 GETUPVAL                         R19 2
      179 GETTABLEKS                       R18 R19 K68 ["BUTTON_CENTER_PADDING"]
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K61 ["Padding"]
      184 GETIMPORT                        R16 K70 [Enum.SortOrder.LayoutOrder]
      186 SETTABLEKS                       R16 R15 K62 ["SortOrder"]
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K53 ["buttonsListLayout"]
      191 GETUPVAL                         R14 0
      192 GETTABLEKS                       R13 R14 K0 ["createElement"]
      194 GETUPVAL                         R14 3
      195 DUPTABLE                         R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
      196 LOADK                            R16 K77 ["Rthro"]
      197 SETTABLEKS                       R16 R15 K71 ["name"]
      199 GETUPVAL                         R18 2
      200 GETTABLEKS                       R17 R18 K78 ["AVATAR_TYPE"]
      202 GETTABLEKS                       R16 R17 K79 ["RTHRO"]
      204 SETTABLEKS                       R16 R15 K72 ["avatarType"]
      206 GETUPVAL                         R17 4
      207 GETTABLEKS                       R16 R17 K79 ["RTHRO"]
      209 SETTABLEKS                       R16 R15 K73 ["iconOptions"]
      211 GETUPVAL                         R17 2
      212 GETTABLEKS                       R16 R17 K80 ["RTHRO_INFO"]
      214 SETTABLEKS                       R16 R15 K74 ["contextInfo"]
      216 LOADN                            R16 0
      217 SETTABLEKS                       R16 R15 K75 ["layoutOrder"]
      219 CALL                             R13 2 1
      220 SETTABLEKS                       R13 R12 K54 ["rthroButton"]
      222 GETUPVAL                         R14 0
      223 GETTABLEKS                       R13 R14 K0 ["createElement"]
      225 GETUPVAL                         R14 3
      226 DUPTABLE                         R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
      227 LOADK                            R16 K81 ["Rthro Narrow"]
      228 SETTABLEKS                       R16 R15 K71 ["name"]
      230 GETUPVAL                         R18 2
      231 GETTABLEKS                       R17 R18 K78 ["AVATAR_TYPE"]
      233 GETTABLEKS                       R16 R17 K82 ["RTHRO_SLENDER"]
      235 SETTABLEKS                       R16 R15 K72 ["avatarType"]
      237 GETUPVAL                         R17 4
      238 GETTABLEKS                       R16 R17 K83 ["RTHRO_NARROW"]
      240 SETTABLEKS                       R16 R15 K73 ["iconOptions"]
      242 GETUPVAL                         R17 2
      243 GETTABLEKS                       R16 R17 K84 ["RTHRO_SLENDER_INFO"]
      245 SETTABLEKS                       R16 R15 K74 ["contextInfo"]
      247 LOADN                            R16 1
      248 SETTABLEKS                       R16 R15 K75 ["layoutOrder"]
      250 CALL                             R13 2 1
      251 SETTABLEKS                       R13 R12 K55 ["rthroNarrowButton"]
      253 GETUPVAL                         R14 0
      254 GETTABLEKS                       R13 R14 K0 ["createElement"]
      256 GETUPVAL                         R14 3
      257 DUPTABLE                         R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
      258 LOADK                            R16 K85 ["R15"]
      259 SETTABLEKS                       R16 R15 K71 ["name"]
      261 GETUPVAL                         R18 2
      262 GETTABLEKS                       R17 R18 K78 ["AVATAR_TYPE"]
      264 GETTABLEKS                       R16 R17 K85 ["R15"]
      266 SETTABLEKS                       R16 R15 K72 ["avatarType"]
      268 GETUPVAL                         R17 4
      269 GETTABLEKS                       R16 R17 K85 ["R15"]
      271 SETTABLEKS                       R16 R15 K73 ["iconOptions"]
      273 GETUPVAL                         R17 2
      274 GETTABLEKS                       R16 R17 K86 ["R15_INFO"]
      276 SETTABLEKS                       R16 R15 K74 ["contextInfo"]
      278 LOADN                            R16 2
      279 SETTABLEKS                       R16 R15 K75 ["layoutOrder"]
      281 CALL                             R13 2 1
      282 SETTABLEKS                       R13 R12 K56 ["r15Button"]
      284 GETUPVAL                         R14 0
      285 GETTABLEKS                       R13 R14 K0 ["createElement"]
      287 GETUPVAL                         R14 3
      288 DUPTABLE                         R15 K76 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
      289 LOADK                            R16 K87 ["Custom"]
      290 SETTABLEKS                       R16 R15 K71 ["name"]
      292 GETUPVAL                         R18 2
      293 GETTABLEKS                       R17 R18 K78 ["AVATAR_TYPE"]
      295 GETTABLEKS                       R16 R17 K88 ["CUSTOM"]
      297 SETTABLEKS                       R16 R15 K72 ["avatarType"]
      299 GETUPVAL                         R17 4
      300 GETTABLEKS                       R16 R17 K88 ["CUSTOM"]
      302 SETTABLEKS                       R16 R15 K73 ["iconOptions"]
      304 GETUPVAL                         R17 2
      305 GETTABLEKS                       R16 R17 K89 ["CUSTOM_INFO"]
      307 SETTABLEKS                       R16 R15 K74 ["contextInfo"]
      309 LOADN                            R16 3
      310 SETTABLEKS                       R16 R15 K75 ["layoutOrder"]
      312 CALL                             R13 2 1
      313 SETTABLEKS                       R13 R12 K57 ["customButton"]
      315 CALL                             R9 3 1
      316 SETTABLEKS                       R9 R8 K26 ["buttons"]
      318 GETUPVAL                         R10 0
      319 GETTABLEKS                       R9 R10 K0 ["createElement"]
      321 LOADK                            R10 K1 ["Frame"]
      322 DUPTABLE                         R11 K90 [{"BackgroundTransparency", "Position", "Size"}]
      323 LOADN                            R12 1
      324 SETTABLEKS                       R12 R11 K21 ["BackgroundTransparency"]
      326 GETIMPORT                        R12 K9 [UDim2.new]
      328 LOADN                            R13 0
      329 LOADN                            R14 0
      330 LOADN                            R15 0
      331 LOADN                            R16 51
      332 CALL                             R12 4 1
      333 SETTABLEKS                       R12 R11 K22 ["Position"]
      335 GETIMPORT                        R12 K9 [UDim2.new]
      337 LOADN                            R13 1
      338 LOADN                            R14 0
      339 LOADN                            R15 1
      340 LOADN                            R16 205
      341 CALL                             R12 4 1
      342 SETTABLEKS                       R12 R11 K3 ["Size"]
      344 DUPTABLE                         R12 K94 [{"bottomDescriptionListLayout", "requirementsText", "infoLink"}]
      345 GETUPVAL                         R14 0
      346 GETTABLEKS                       R13 R14 K0 ["createElement"]
      348 LOADK                            R14 K59 ["UIListLayout"]
      349 DUPTABLE                         R15 K96 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      350 GETIMPORT                        R16 K98 [Enum.FillDirection.Vertical]
      352 SETTABLEKS                       R16 R15 K60 ["FillDirection"]
      354 GETIMPORT                        R16 K99 [Enum.HorizontalAlignment.Center]
      356 SETTABLEKS                       R16 R15 K95 ["HorizontalAlignment"]
      358 GETIMPORT                        R16 K70 [Enum.SortOrder.LayoutOrder]
      360 SETTABLEKS                       R16 R15 K62 ["SortOrder"]
      362 CALL                             R13 2 1
      363 SETTABLEKS                       R13 R12 K91 ["bottomDescriptionListLayout"]
      365 GETUPVAL                         R14 0
      366 GETTABLEKS                       R13 R14 K0 ["createElement"]
      368 LOADK                            R14 K29 ["TextLabel"]
      369 DUPTABLE                         R15 K100 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
      370 LOADN                            R16 1
      371 SETTABLEKS                       R16 R15 K21 ["BackgroundTransparency"]
      373 GETUPVAL                         R17 2
      374 GETTABLEKS                       R16 R17 K37 ["FONT"]
      376 SETTABLEKS                       R16 R15 K30 ["Font"]
      378 LOADN                            R16 0
      379 SETTABLEKS                       R16 R15 K69 ["LayoutOrder"]
      381 GETIMPORT                        R16 K9 [UDim2.new]
      383 LOADN                            R17 0
      384 GETUPVAL                         R18 5
      385 GETUPVAL                         R20 2
      386 GETTABLEKS                       R19 R20 K101 ["REQUIREMENTS_DESCRIPTION"]
      388 GETUPVAL                         R21 2
      389 GETTABLEKS                       R20 R21 K102 ["FONT_SIZE_SMALL"]
      391 GETUPVAL                         R22 2
      392 GETTABLEKS                       R21 R22 K37 ["FONT"]
      394 CALL                             R18 3 1
      395 LOADN                            R19 0
      396 GETUPVAL                         R21 2
      397 GETTABLEKS                       R20 R21 K102 ["FONT_SIZE_SMALL"]
      399 CALL                             R16 4 1
      400 SETTABLEKS                       R16 R15 K3 ["Size"]
      402 GETUPVAL                         R17 2
      403 GETTABLEKS                       R16 R17 K101 ["REQUIREMENTS_DESCRIPTION"]
      405 SETTABLEKS                       R16 R15 K31 ["Text"]
      407 GETUPVAL                         R17 2
      408 GETTABLEKS                       R16 R17 K102 ["FONT_SIZE_SMALL"]
      410 SETTABLEKS                       R16 R15 K32 ["TextSize"]
      412 GETIMPORT                        R16 K42 [Enum.TextXAlignment.Center]
      414 SETTABLEKS                       R16 R15 K33 ["TextXAlignment"]
      416 GETIMPORT                        R16 K103 [Enum.TextYAlignment.Center]
      418 SETTABLEKS                       R16 R15 K34 ["TextYAlignment"]
      420 GETUPVAL                         R16 6
      421 DUPTABLE                         R17 K106 [{"Light", "Dark"}]
      422 GETIMPORT                        R18 K109 [Color3.fromRGB]
      424 LOADN                            R19 98
      425 LOADN                            R20 98
      426 LOADN                            R21 98
      427 CALL                             R18 3 1
      428 SETTABLEKS                       R18 R17 K104 ["Light"]
      430 GETIMPORT                        R18 K109 [Color3.fromRGB]
      432 LOADN                            R19 204
      433 LOADN                            R20 204
      434 LOADN                            R21 204
      435 CALL                             R18 3 1
      436 SETTABLEKS                       R18 R17 K105 ["Dark"]
      438 CALL                             R16 1 1
      439 SETTABLEKS                       R16 R15 K35 ["TextColor3"]
      441 CALL                             R13 2 1
      442 SETTABLEKS                       R13 R12 K92 ["requirementsText"]
      444 LOADB                            R13 0
      445 SETTABLEKS                       R13 R12 K93 ["infoLink"]
      447 CALL                             R9 3 1
      448 SETTABLEKS                       R9 R8 K27 ["bottomDescription"]
      450 CALL                             R5 3 1
      451 SETTABLEKS                       R5 R4 K19 ["content"]
      453 CALL                             R1 3 -1
      454 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GuiService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["HttpRbxApiService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R0 K12 ["src"]
       32 GETTABLEKS                       R5 R6 K13 ["Assets"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R8 R0 K12 ["src"]
       39 GETTABLEKS                       R7 R8 K14 ["components"]
       41 GETTABLEKS                       R6 R7 K15 ["AvatarButton"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R8 R0 K12 ["src"]
       48 GETTABLEKS                       R7 R8 K16 ["Constants"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K9 [require]
       53 GETTABLEKS                       R10 R0 K12 ["src"]
       55 GETTABLEKS                       R9 R10 K17 ["utils"]
       57 GETTABLEKS                       R8 R9 K18 ["themeConfig"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K9 [require]
       62 GETTABLEKS                       R11 R0 K12 ["src"]
       64 GETTABLEKS                       R10 R11 K17 ["utils"]
       66 GETTABLEKS                       R9 R10 K19 ["getTextWidth"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R10 K21 [settings]
       71 CALL                             R10 0 1
       72 GETTABLEKS                       R9 R10 K22 ["Studio"]
       74 GETTABLEKS                       R10 R3 K23 ["Component"]
       76 LOADK                            R12 K24 ["AvatarPrompt"]
       77 NAMECALL                         R10 R10 K25 ["extend"]
       79 CALL                             R10 2 1
       80 DUPCLOSURE                       R11 K26 [PROTO_1]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 SETTABLEKS                       R11 R10 K27 ["render"]
       90 RETURN                           R10 1
