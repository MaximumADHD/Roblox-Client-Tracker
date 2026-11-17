PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["AVATAR_IMPORTER_DEVHUB"]
        5 NAMECALL                         R2 R2 K1 ["GetDocumentationUrl"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K6 [{["Name"] = "AvatarPrompt", ["Size"], ["BackgroundColor3"]}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 1
       10 LOADN                            R8 0
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K4 ["Size"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K10 ["Theme"]
       17 GETIMPORT                        R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
       19 GETIMPORT                        R7 K17 [Enum.StudioStyleGuideModifier.Default]
       21 NAMECALL                         R4 R4 K18 ["GetColor"]
       23 CALL                             R4 3 1
       24 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       26 DUPTABLE                         R4 K20 [{"content"}]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 LOADK                            R6 K1 ["Frame"]
       31 DUPTABLE                         R7 K25 [{["BackgroundTransparency"] = 1, ["Name"] = "Content", ["Position"], ["Size"]}]
       32 GETIMPORT                        R8 K9 [UDim2.new]
       34 LOADN                            R9 0
       35 LOADN                            R10 0
       36 LOADN                            R11 0
       37 LOADN                            R12 0
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K24 ["Position"]
       41 GETIMPORT                        R8 K9 [UDim2.new]
       43 LOADN                            R9 1
       44 LOADN                            R10 0
       45 LOADN                            R11 1
       46 LOADN                            R12 0
       47 CALL                             R8 4 1
       48 SETTABLEKS                       R8 R7 K4 ["Size"]
       50 DUPTABLE                         R8 K29 [{"topDescription", "buttons", "bottomDescription"}]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K0 ["createElement"]
       54 LOADK                            R10 K30 ["TextLabel"]
       55 DUPTABLE                         R11 K39 [{["BackgroundTransparency"] = 1, ["Font"], ["Name"] = "TopDescription", ["Position"], ["Size"], ["Text"] = "Choose the Avatar type you are going to import:", ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R12 R12 K40 ["FONT"]
       59 SETTABLEKS                       R12 R11 K31 ["Font"]
       61 GETIMPORT                        R12 K9 [UDim2.new]
       63 LOADN                            R13 0
       64 LOADN                            R14 0
       65 LOADN                            R15 0
       66 LOADN                            R16 20
       67 CALL                             R12 4 1
       68 SETTABLEKS                       R12 R11 K24 ["Position"]
       70 GETIMPORT                        R12 K9 [UDim2.new]
       72 LOADN                            R13 1
       73 LOADN                            R14 0
       74 LOADN                            R15 0
       75 LOADN                            R16 18
       76 CALL                             R12 4 1
       77 SETTABLEKS                       R12 R11 K4 ["Size"]
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K41 ["FONT_SIZE_LARGE"]
       82 SETTABLEKS                       R12 R11 K35 ["TextSize"]
       84 GETIMPORT                        R12 K43 [Enum.TextXAlignment.Center]
       86 SETTABLEKS                       R12 R11 K36 ["TextXAlignment"]
       88 GETIMPORT                        R12 K45 [Enum.TextYAlignment.Top]
       90 SETTABLEKS                       R12 R11 K37 ["TextYAlignment"]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K10 ["Theme"]
       95 GETIMPORT                        R14 K47 [Enum.StudioStyleGuideColor.MainText]
       97 GETIMPORT                        R15 K17 [Enum.StudioStyleGuideModifier.Default]
       99 NAMECALL                         R12 R12 K18 ["GetColor"]
      101 CALL                             R12 3 1
      102 SETTABLEKS                       R12 R11 K38 ["TextColor3"]
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K26 ["topDescription"]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K0 ["createElement"]
      110 LOADK                            R10 K1 ["Frame"]
      111 DUPTABLE                         R11 K49 [{["BackgroundTransparency"] = 1, ["Name"] = "Buttons", ["Position"], ["Size"]}]
      112 GETIMPORT                        R12 K9 [UDim2.new]
      114 LOADN                            R13 0
      115 GETUPVAL                         R14 2
      116 GETTABLEKS                       R14 R14 K50 ["BUTTON_SIDE_PADDING"]
      118 LOADN                            R15 0
      119 GETUPVAL                         R17 2
      120 GETTABLEKS                       R17 R17 K52 ["BUTTON_TOP_PADDING"]
      122 ADDK                             R16 R17 K51 [0]
      123 CALL                             R12 4 1
      124 SETTABLEKS                       R12 R11 K24 ["Position"]
      126 GETIMPORT                        R12 K9 [UDim2.new]
      128 LOADN                            R13 1
      129 GETUPVAL                         R16 2
      130 GETTABLEKS                       R16 R16 K50 ["BUTTON_SIDE_PADDING"]
      132 MINUS                            R15 R16
      133 MULK                             R14 R15 K53 [2]
      134 LOADN                            R15 0
      135 GETUPVAL                         R16 2
      136 GETTABLEKS                       R16 R16 K54 ["BUTTON_HEIGHT"]
      138 CALL                             R12 4 1
      139 SETTABLEKS                       R12 R11 K4 ["Size"]
      141 DUPTABLE                         R12 K60 [{"buttonsListLayout", "rthroButton", "rthroNarrowButton", "r15Button", "customButton"}]
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K0 ["createElement"]
      145 LOADK                            R14 K61 ["UIListLayout"]
      146 DUPTABLE                         R15 K65 [{"FillDirection", "Padding", "SortOrder"}]
      147 GETIMPORT                        R16 K67 [Enum.FillDirection.Horizontal]
      149 SETTABLEKS                       R16 R15 K62 ["FillDirection"]
      151 GETIMPORT                        R16 K69 [UDim.new]
      153 LOADN                            R17 0
      154 GETUPVAL                         R18 2
      155 GETTABLEKS                       R18 R18 K70 ["BUTTON_CENTER_PADDING"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K63 ["Padding"]
      160 GETIMPORT                        R16 K72 [Enum.SortOrder.LayoutOrder]
      162 SETTABLEKS                       R16 R15 K64 ["SortOrder"]
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K55 ["buttonsListLayout"]
      167 GETUPVAL                         R13 0
      168 GETTABLEKS                       R13 R13 K0 ["createElement"]
      170 GETUPVAL                         R14 3
      171 DUPTABLE                         R15 K79 [{["name"] = "Rthro", ["avatarType"], ["iconOptions"], ["contextInfo"], ["layoutOrder"] = 0}]
      172 GETUPVAL                         R16 2
      173 GETTABLEKS                       R16 R16 K80 ["AVATAR_TYPE"]
      175 GETTABLEKS                       R16 R16 K81 ["RTHRO"]
      177 SETTABLEKS                       R16 R15 K75 ["avatarType"]
      179 GETUPVAL                         R16 4
      180 GETTABLEKS                       R16 R16 K81 ["RTHRO"]
      182 SETTABLEKS                       R16 R15 K76 ["iconOptions"]
      184 GETUPVAL                         R16 2
      185 GETTABLEKS                       R16 R16 K82 ["RTHRO_INFO"]
      187 SETTABLEKS                       R16 R15 K77 ["contextInfo"]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R12 K56 ["rthroButton"]
      192 GETUPVAL                         R13 0
      193 GETTABLEKS                       R13 R13 K0 ["createElement"]
      195 GETUPVAL                         R14 3
      196 DUPTABLE                         R15 K84 [{["name"] = "Rthro Narrow", ["avatarType"], ["iconOptions"], ["contextInfo"], ["layoutOrder"] = 1}]
      197 GETUPVAL                         R16 2
      198 GETTABLEKS                       R16 R16 K80 ["AVATAR_TYPE"]
      200 GETTABLEKS                       R16 R16 K85 ["RTHRO_SLENDER"]
      202 SETTABLEKS                       R16 R15 K75 ["avatarType"]
      204 GETUPVAL                         R16 4
      205 GETTABLEKS                       R16 R16 K86 ["RTHRO_NARROW"]
      207 SETTABLEKS                       R16 R15 K76 ["iconOptions"]
      209 GETUPVAL                         R16 2
      210 GETTABLEKS                       R16 R16 K87 ["RTHRO_SLENDER_INFO"]
      212 SETTABLEKS                       R16 R15 K77 ["contextInfo"]
      214 CALL                             R13 2 1
      215 SETTABLEKS                       R13 R12 K57 ["rthroNarrowButton"]
      217 GETUPVAL                         R13 0
      218 GETTABLEKS                       R13 R13 K0 ["createElement"]
      220 GETUPVAL                         R14 3
      221 DUPTABLE                         R15 K89 [{["name"] = "R15", ["avatarType"], ["iconOptions"], ["contextInfo"], ["layoutOrder"] = 2}]
      222 GETUPVAL                         R16 2
      223 GETTABLEKS                       R16 R16 K80 ["AVATAR_TYPE"]
      225 GETTABLEKS                       R16 R16 K88 ["R15"]
      227 SETTABLEKS                       R16 R15 K75 ["avatarType"]
      229 GETUPVAL                         R16 4
      230 GETTABLEKS                       R16 R16 K88 ["R15"]
      232 SETTABLEKS                       R16 R15 K76 ["iconOptions"]
      234 GETUPVAL                         R16 2
      235 GETTABLEKS                       R16 R16 K90 ["R15_INFO"]
      237 SETTABLEKS                       R16 R15 K77 ["contextInfo"]
      239 CALL                             R13 2 1
      240 SETTABLEKS                       R13 R12 K58 ["r15Button"]
      242 GETUPVAL                         R13 0
      243 GETTABLEKS                       R13 R13 K0 ["createElement"]
      245 GETUPVAL                         R14 3
      246 DUPTABLE                         R15 K93 [{["name"] = "Custom", ["avatarType"], ["iconOptions"], ["contextInfo"], ["layoutOrder"] = 3}]
      247 GETUPVAL                         R16 2
      248 GETTABLEKS                       R16 R16 K80 ["AVATAR_TYPE"]
      250 GETTABLEKS                       R16 R16 K94 ["CUSTOM"]
      252 SETTABLEKS                       R16 R15 K75 ["avatarType"]
      254 GETUPVAL                         R16 4
      255 GETTABLEKS                       R16 R16 K94 ["CUSTOM"]
      257 SETTABLEKS                       R16 R15 K76 ["iconOptions"]
      259 GETUPVAL                         R16 2
      260 GETTABLEKS                       R16 R16 K95 ["CUSTOM_INFO"]
      262 SETTABLEKS                       R16 R15 K77 ["contextInfo"]
      264 CALL                             R13 2 1
      265 SETTABLEKS                       R13 R12 K59 ["customButton"]
      267 CALL                             R9 3 1
      268 SETTABLEKS                       R9 R8 K27 ["buttons"]
      270 GETUPVAL                         R9 0
      271 GETTABLEKS                       R9 R9 K0 ["createElement"]
      273 LOADK                            R10 K1 ["Frame"]
      274 DUPTABLE                         R11 K96 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      275 GETIMPORT                        R12 K9 [UDim2.new]
      277 LOADN                            R13 0
      278 LOADN                            R14 0
      279 LOADN                            R15 0
      280 LOADN                            R16 307
      281 CALL                             R12 4 1
      282 SETTABLEKS                       R12 R11 K24 ["Position"]
      284 GETIMPORT                        R12 K9 [UDim2.new]
      286 LOADN                            R13 1
      287 LOADN                            R14 0
      288 LOADN                            R15 1
      289 LOADN                            R16 -307
      290 CALL                             R12 4 1
      291 SETTABLEKS                       R12 R11 K4 ["Size"]
      293 DUPTABLE                         R12 K101 [{["bottomDescriptionListLayout"], ["requirementsText"], ["infoLink"] = False}]
      294 GETUPVAL                         R13 0
      295 GETTABLEKS                       R13 R13 K0 ["createElement"]
      297 LOADK                            R14 K61 ["UIListLayout"]
      298 DUPTABLE                         R15 K103 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      299 GETIMPORT                        R16 K105 [Enum.FillDirection.Vertical]
      301 SETTABLEKS                       R16 R15 K62 ["FillDirection"]
      303 GETIMPORT                        R16 K106 [Enum.HorizontalAlignment.Center]
      305 SETTABLEKS                       R16 R15 K102 ["HorizontalAlignment"]
      307 GETIMPORT                        R16 K72 [Enum.SortOrder.LayoutOrder]
      309 SETTABLEKS                       R16 R15 K64 ["SortOrder"]
      311 CALL                             R13 2 1
      312 SETTABLEKS                       R13 R12 K97 ["bottomDescriptionListLayout"]
      314 GETUPVAL                         R13 0
      315 GETTABLEKS                       R13 R13 K0 ["createElement"]
      317 LOADK                            R14 K30 ["TextLabel"]
      318 DUPTABLE                         R15 K107 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 0, ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
      319 GETUPVAL                         R16 2
      320 GETTABLEKS                       R16 R16 K40 ["FONT"]
      322 SETTABLEKS                       R16 R15 K31 ["Font"]
      324 GETIMPORT                        R16 K9 [UDim2.new]
      326 LOADN                            R17 0
      327 GETUPVAL                         R18 5
      328 GETUPVAL                         R19 2
      329 GETTABLEKS                       R19 R19 K108 ["REQUIREMENTS_DESCRIPTION"]
      331 GETUPVAL                         R20 2
      332 GETTABLEKS                       R20 R20 K109 ["FONT_SIZE_SMALL"]
      334 GETUPVAL                         R21 2
      335 GETTABLEKS                       R21 R21 K40 ["FONT"]
      337 CALL                             R18 3 1
      338 LOADN                            R19 0
      339 GETUPVAL                         R20 2
      340 GETTABLEKS                       R20 R20 K109 ["FONT_SIZE_SMALL"]
      342 CALL                             R16 4 1
      343 SETTABLEKS                       R16 R15 K4 ["Size"]
      345 GETUPVAL                         R16 2
      346 GETTABLEKS                       R16 R16 K108 ["REQUIREMENTS_DESCRIPTION"]
      348 SETTABLEKS                       R16 R15 K33 ["Text"]
      350 GETUPVAL                         R16 2
      351 GETTABLEKS                       R16 R16 K109 ["FONT_SIZE_SMALL"]
      353 SETTABLEKS                       R16 R15 K35 ["TextSize"]
      355 GETIMPORT                        R16 K43 [Enum.TextXAlignment.Center]
      357 SETTABLEKS                       R16 R15 K36 ["TextXAlignment"]
      359 GETIMPORT                        R16 K110 [Enum.TextYAlignment.Center]
      361 SETTABLEKS                       R16 R15 K37 ["TextYAlignment"]
      363 GETUPVAL                         R16 6
      364 DUPTABLE                         R17 K113 [{"Light", "Dark"}]
      365 GETIMPORT                        R18 K116 [Color3.fromRGB]
      367 LOADN                            R19 98
      368 LOADN                            R20 98
      369 LOADN                            R21 98
      370 CALL                             R18 3 1
      371 SETTABLEKS                       R18 R17 K111 ["Light"]
      373 GETIMPORT                        R18 K116 [Color3.fromRGB]
      375 LOADN                            R19 204
      376 LOADN                            R20 204
      377 LOADN                            R21 204
      378 CALL                             R18 3 1
      379 SETTABLEKS                       R18 R17 K112 ["Dark"]
      381 CALL                             R16 1 1
      382 SETTABLEKS                       R16 R15 K38 ["TextColor3"]
      384 CALL                             R13 2 1
      385 SETTABLEKS                       R13 R12 K98 ["requirementsText"]
      387 CALL                             R9 3 1
      388 SETTABLEKS                       R9 R8 K28 ["bottomDescription"]
      390 CALL                             R5 3 1
      391 SETTABLEKS                       R5 R4 K19 ["content"]
      393 CALL                             R1 3 -1
      394 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GuiService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["HttpRbxApiService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K12 ["src"]
       32 GETTABLEKS                       R5 R5 K13 ["Assets"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K12 ["src"]
       39 GETTABLEKS                       R6 R6 K14 ["components"]
       41 GETTABLEKS                       R6 R6 K15 ["AvatarButton"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R7 R0 K12 ["src"]
       48 GETTABLEKS                       R7 R7 K16 ["Constants"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K9 [require]
       53 GETTABLEKS                       R8 R0 K12 ["src"]
       55 GETTABLEKS                       R8 R8 K17 ["utils"]
       57 GETTABLEKS                       R8 R8 K18 ["themeConfig"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K9 [require]
       62 GETTABLEKS                       R9 R0 K12 ["src"]
       64 GETTABLEKS                       R9 R9 K17 ["utils"]
       66 GETTABLEKS                       R9 R9 K19 ["getTextWidth"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K21 [settings]
       71 CALL                             R9 0 1
       72 GETTABLEKS                       R9 R9 K22 ["Studio"]
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
