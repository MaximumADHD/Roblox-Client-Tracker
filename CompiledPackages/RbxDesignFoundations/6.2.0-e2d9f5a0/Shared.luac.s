PROTO_0:
        0 DUPTABLE                         R1 K14 [{"Ease", "Gap", "Gutter", "IconSize", "InputSize", "LetterSpacing", "Margin", "Padding", "Platform", "Radius", "Size", "Stroke", "Time", "ToggleSize"}]
        1 DUPTABLE                         R2 K20 [{"ExpressiveIn", "ExpressiveOut", "Linear", "StandardIn", "StandardOut"}]
        2 NEWTABLE                         R3 0 4
        4 LOADK                            R4 K21 [0.25]
        5 LOADN                            R5 0
        6 LOADK                            R6 K22 [0.5]
        7 LOADN                            R7 -1
        8 SETLIST                          R3 R4 4 [1]
       10 SETTABLEKS                       R3 R2 K15 ["ExpressiveIn"]
       12 NEWTABLE                         R3 0 4
       14 LOADK                            R4 K21 [0.25]
       15 LOADK                            R5 K23 [1.5]
       16 LOADK                            R6 K22 [0.5]
       17 LOADN                            R7 1
       18 SETLIST                          R3 R4 4 [1]
       20 SETTABLEKS                       R3 R2 K16 ["ExpressiveOut"]
       22 NEWTABLE                         R3 0 4
       24 LOADN                            R4 0
       25 LOADN                            R5 0
       26 LOADN                            R6 1
       27 LOADN                            R7 1
       28 SETLIST                          R3 R4 4 [1]
       30 SETTABLEKS                       R3 R2 K17 ["Linear"]
       32 NEWTABLE                         R3 0 4
       34 LOADK                            R4 K24 [0.8]
       35 LOADN                            R5 0
       36 LOADK                            R6 K25 [0.4]
       37 LOADN                            R7 1
       38 SETLIST                          R3 R4 4 [1]
       40 SETTABLEKS                       R3 R2 K18 ["StandardIn"]
       42 NEWTABLE                         R3 0 4
       44 LOADK                            R4 K26 [0.2]
       45 LOADN                            R5 0
       46 LOADN                            R6 0
       47 LOADN                            R7 1
       48 SETLIST                          R3 R4 4 [1]
       50 SETTABLEKS                       R3 R2 K19 ["StandardOut"]
       52 SETTABLEKS                       R2 R1 K0 ["Ease"]
       54 DUPTABLE                         R2 K36 [{["Large"], ["Medium"], ["None"] = 0, ["Small"], ["XLarge"], ["XSmall"], ["XXLarge"], ["XXSmall"]}]
       55 LOADN                            R4 16
       56 MUL                              R3 R4 R0
       57 SETTABLEKS                       R3 R2 K27 ["Large"]
       59 LOADN                            R4 12
       60 MUL                              R3 R4 R0
       61 SETTABLEKS                       R3 R2 K28 ["Medium"]
       63 LOADN                            R4 8
       64 MUL                              R3 R4 R0
       65 SETTABLEKS                       R3 R2 K31 ["Small"]
       67 LOADN                            R4 20
       68 MUL                              R3 R4 R0
       69 SETTABLEKS                       R3 R2 K32 ["XLarge"]
       71 LOADN                            R4 4
       72 MUL                              R3 R4 R0
       73 SETTABLEKS                       R3 R2 K33 ["XSmall"]
       75 LOADN                            R4 24
       76 MUL                              R3 R4 R0
       77 SETTABLEKS                       R3 R2 K34 ["XXLarge"]
       79 LOADN                            R4 2
       80 MUL                              R3 R4 R0
       81 SETTABLEKS                       R3 R2 K35 ["XXSmall"]
       83 SETTABLEKS                       R2 R1 K1 ["Gap"]
       85 DUPTABLE                         R2 K37 [{["Large"], ["Medium"], ["None"] = 0, ["Small"], ["XLarge"], ["XXLarge"]}]
       86 LOADN                            R4 16
       87 MUL                              R3 R4 R0
       88 SETTABLEKS                       R3 R2 K27 ["Large"]
       90 LOADN                            R4 12
       91 MUL                              R3 R4 R0
       92 SETTABLEKS                       R3 R2 K28 ["Medium"]
       94 LOADN                            R4 8
       95 MUL                              R3 R4 R0
       96 SETTABLEKS                       R3 R2 K31 ["Small"]
       98 LOADN                            R4 20
       99 MUL                              R3 R4 R0
      100 SETTABLEKS                       R3 R2 K32 ["XLarge"]
      102 LOADN                            R4 24
      103 MUL                              R3 R4 R0
      104 SETTABLEKS                       R3 R2 K34 ["XXLarge"]
      106 SETTABLEKS                       R2 R1 K2 ["Gutter"]
      108 DUPTABLE                         R2 K38 [{"Large", "Medium", "Small", "XLarge", "XSmall", "XXLarge"}]
      109 LOADN                            R4 24
      110 MUL                              R3 R4 R0
      111 SETTABLEKS                       R3 R2 K27 ["Large"]
      113 LOADN                            R4 20
      114 MUL                              R3 R4 R0
      115 SETTABLEKS                       R3 R2 K28 ["Medium"]
      117 LOADN                            R4 16
      118 MUL                              R3 R4 R0
      119 SETTABLEKS                       R3 R2 K31 ["Small"]
      121 LOADN                            R4 28
      122 MUL                              R3 R4 R0
      123 SETTABLEKS                       R3 R2 K32 ["XLarge"]
      125 LOADN                            R4 12
      126 MUL                              R3 R4 R0
      127 SETTABLEKS                       R3 R2 K33 ["XSmall"]
      129 LOADN                            R4 32
      130 MUL                              R3 R4 R0
      131 SETTABLEKS                       R3 R2 K34 ["XXLarge"]
      133 SETTABLEKS                       R2 R1 K3 ["IconSize"]
      135 DUPTABLE                         R2 K39 [{"Large", "Medium", "Small", "XSmall"}]
      136 LOADN                            R4 48
      137 MUL                              R3 R4 R0
      138 SETTABLEKS                       R3 R2 K27 ["Large"]
      140 LOADN                            R4 40
      141 MUL                              R3 R4 R0
      142 SETTABLEKS                       R3 R2 K28 ["Medium"]
      144 LOADN                            R4 32
      145 MUL                              R3 R4 R0
      146 SETTABLEKS                       R3 R2 K31 ["Small"]
      148 LOADN                            R4 24
      149 MUL                              R3 R4 R0
      150 SETTABLEKS                       R3 R2 K33 ["XSmall"]
      152 SETTABLEKS                       R2 R1 K4 ["InputSize"]
      154 DUPTABLE                         R2 K45 [{["Default"] = 0, ["Loose"] = 0.01, ["Tight"] = -0.01}]
      155 SETTABLEKS                       R2 R1 K5 ["LetterSpacing"]
      157 DUPTABLE                         R2 K46 [{["Large"], ["Medium"], ["None"] = 0, ["Small"]}]
      158 LOADN                            R4 48
      159 MUL                              R3 R4 R0
      160 SETTABLEKS                       R3 R2 K27 ["Large"]
      162 LOADN                            R4 24
      163 MUL                              R3 R4 R0
      164 SETTABLEKS                       R3 R2 K28 ["Medium"]
      166 LOADN                            R4 20
      167 MUL                              R3 R4 R0
      168 SETTABLEKS                       R3 R2 K31 ["Small"]
      170 SETTABLEKS                       R2 R1 K6 ["Margin"]
      172 DUPTABLE                         R2 K36 [{["Large"], ["Medium"], ["None"] = 0, ["Small"], ["XLarge"], ["XSmall"], ["XXLarge"], ["XXSmall"]}]
      173 LOADN                            R4 16
      174 MUL                              R3 R4 R0
      175 SETTABLEKS                       R3 R2 K27 ["Large"]
      177 LOADN                            R4 12
      178 MUL                              R3 R4 R0
      179 SETTABLEKS                       R3 R2 K28 ["Medium"]
      181 LOADN                            R4 8
      182 MUL                              R3 R4 R0
      183 SETTABLEKS                       R3 R2 K31 ["Small"]
      185 LOADN                            R4 20
      186 MUL                              R3 R4 R0
      187 SETTABLEKS                       R3 R2 K32 ["XLarge"]
      189 LOADN                            R4 4
      190 MUL                              R3 R4 R0
      191 SETTABLEKS                       R3 R2 K33 ["XSmall"]
      193 LOADN                            R4 24
      194 MUL                              R3 R4 R0
      195 SETTABLEKS                       R3 R2 K34 ["XXLarge"]
      197 LOADN                            R4 2
      198 MUL                              R3 R4 R0
      199 SETTABLEKS                       R3 R2 K35 ["XXSmall"]
      201 SETTABLEKS                       R2 R1 K7 ["Padding"]
      203 DUPTABLE                         R2 K51 [{["Base"] = 4, ["Rem"], ["Scale"]}]
      204 LOADN                            R4 8
      205 MUL                              R3 R4 R0
      206 SETTABLEKS                       R3 R2 K49 ["Rem"]
      208 LOADN                            R4 1
      209 MUL                              R3 R4 R0
      210 SETTABLEKS                       R3 R2 K50 ["Scale"]
      212 SETTABLEKS                       R2 R1 K8 ["Platform"]
      214 DUPTABLE                         R2 K53 [{["Circle"], ["Large"], ["Medium"], ["None"] = 0, ["Small"], ["XSmall"]}]
      215 LOADN                            R4 9999
      216 MUL                              R3 R4 R0
      217 SETTABLEKS                       R3 R2 K52 ["Circle"]
      219 LOADN                            R4 16
      220 MUL                              R3 R4 R0
      221 SETTABLEKS                       R3 R2 K27 ["Large"]
      223 LOADN                            R4 8
      224 MUL                              R3 R4 R0
      225 SETTABLEKS                       R3 R2 K28 ["Medium"]
      227 LOADN                            R4 4
      228 MUL                              R3 R4 R0
      229 SETTABLEKS                       R3 R2 K31 ["Small"]
      231 LOADN                            R4 2
      232 MUL                              R3 R4 R0
      233 SETTABLEKS                       R3 R2 K33 ["XSmall"]
      235 SETTABLEKS                       R2 R1 K9 ["Radius"]
      237 NEWTABLE                         R2 64 0
      239 LOADN                            R3 0
      240 SETTABLEKS                       R3 R2 K54 ["Size_0"]
      242 LOADN                            R4 2
      243 MUL                              R3 R4 R0
      244 SETTABLEKS                       R3 R2 K55 ["Size_50"]
      246 LOADN                            R4 4
      247 MUL                              R3 R4 R0
      248 SETTABLEKS                       R3 R2 K56 ["Size_100"]
      250 LOADN                            R4 6
      251 MUL                              R3 R4 R0
      252 SETTABLEKS                       R3 R2 K57 ["Size_150"]
      254 LOADN                            R4 8
      255 MUL                              R3 R4 R0
      256 SETTABLEKS                       R3 R2 K58 ["Size_200"]
      258 LOADN                            R4 10
      259 MUL                              R3 R4 R0
      260 SETTABLEKS                       R3 R2 K59 ["Size_250"]
      262 LOADN                            R4 12
      263 MUL                              R3 R4 R0
      264 SETTABLEKS                       R3 R2 K60 ["Size_300"]
      266 LOADN                            R4 14
      267 MUL                              R3 R4 R0
      268 SETTABLEKS                       R3 R2 K61 ["Size_350"]
      270 LOADN                            R4 16
      271 MUL                              R3 R4 R0
      272 SETTABLEKS                       R3 R2 K62 ["Size_400"]
      274 LOADN                            R4 18
      275 MUL                              R3 R4 R0
      276 SETTABLEKS                       R3 R2 K63 ["Size_450"]
      278 LOADN                            R4 20
      279 MUL                              R3 R4 R0
      280 SETTABLEKS                       R3 R2 K64 ["Size_500"]
      282 LOADN                            R4 22
      283 MUL                              R3 R4 R0
      284 SETTABLEKS                       R3 R2 K65 ["Size_550"]
      286 LOADN                            R4 24
      287 MUL                              R3 R4 R0
      288 SETTABLEKS                       R3 R2 K66 ["Size_600"]
      290 LOADN                            R4 28
      291 MUL                              R3 R4 R0
      292 SETTABLEKS                       R3 R2 K67 ["Size_700"]
      294 LOADN                            R4 32
      295 MUL                              R3 R4 R0
      296 SETTABLEKS                       R3 R2 K68 ["Size_800"]
      298 LOADN                            R4 34
      299 MUL                              R3 R4 R0
      300 SETTABLEKS                       R3 R2 K69 ["Size_850"]
      302 LOADN                            R4 36
      303 MUL                              R3 R4 R0
      304 SETTABLEKS                       R3 R2 K70 ["Size_900"]
      306 LOADN                            R4 40
      307 MUL                              R3 R4 R0
      308 SETTABLEKS                       R3 R2 K71 ["Size_1000"]
      310 LOADN                            R4 44
      311 MUL                              R3 R4 R0
      312 SETTABLEKS                       R3 R2 K72 ["Size_1100"]
      314 LOADN                            R4 48
      315 MUL                              R3 R4 R0
      316 SETTABLEKS                       R3 R2 K73 ["Size_1200"]
      318 LOADN                            R4 52
      319 MUL                              R3 R4 R0
      320 SETTABLEKS                       R3 R2 K74 ["Size_1300"]
      322 LOADN                            R4 56
      323 MUL                              R3 R4 R0
      324 SETTABLEKS                       R3 R2 K75 ["Size_1400"]
      326 LOADN                            R4 60
      327 MUL                              R3 R4 R0
      328 SETTABLEKS                       R3 R2 K76 ["Size_1500"]
      330 LOADN                            R4 64
      331 MUL                              R3 R4 R0
      332 SETTABLEKS                       R3 R2 K77 ["Size_1600"]
      334 LOADN                            R4 68
      335 MUL                              R3 R4 R0
      336 SETTABLEKS                       R3 R2 K78 ["Size_1700"]
      338 LOADN                            R4 72
      339 MUL                              R3 R4 R0
      340 SETTABLEKS                       R3 R2 K79 ["Size_1800"]
      342 LOADN                            R4 76
      343 MUL                              R3 R4 R0
      344 SETTABLEKS                       R3 R2 K80 ["Size_1900"]
      346 LOADN                            R4 80
      347 MUL                              R3 R4 R0
      348 SETTABLEKS                       R3 R2 K81 ["Size_2000"]
      350 LOADN                            R4 84
      351 MUL                              R3 R4 R0
      352 SETTABLEKS                       R3 R2 K82 ["Size_2100"]
      354 LOADN                            R4 88
      355 MUL                              R3 R4 R0
      356 SETTABLEKS                       R3 R2 K83 ["Size_2200"]
      358 LOADN                            R4 92
      359 MUL                              R3 R4 R0
      360 SETTABLEKS                       R3 R2 K84 ["Size_2300"]
      362 LOADN                            R4 96
      363 MUL                              R3 R4 R0
      364 SETTABLEKS                       R3 R2 K85 ["Size_2400"]
      366 LOADN                            R4 100
      367 MUL                              R3 R4 R0
      368 SETTABLEKS                       R3 R2 K86 ["Size_2500"]
      370 LOADN                            R4 104
      371 MUL                              R3 R4 R0
      372 SETTABLEKS                       R3 R2 K87 ["Size_2600"]
      374 LOADN                            R4 108
      375 MUL                              R3 R4 R0
      376 SETTABLEKS                       R3 R2 K88 ["Size_2700"]
      378 LOADN                            R4 112
      379 MUL                              R3 R4 R0
      380 SETTABLEKS                       R3 R2 K89 ["Size_2800"]
      382 LOADN                            R4 116
      383 MUL                              R3 R4 R0
      384 SETTABLEKS                       R3 R2 K90 ["Size_2900"]
      386 LOADN                            R4 120
      387 MUL                              R3 R4 R0
      388 SETTABLEKS                       R3 R2 K91 ["Size_3000"]
      390 SETTABLEKS                       R2 R1 K10 ["Size"]
      392 DUPTABLE                         R2 K96 [{["None"] = 0, ["Standard"], ["Thick"], ["Thicker"], ["Thin"]}]
      393 LOADN                            R4 1
      394 MUL                              R3 R4 R0
      395 SETTABLEKS                       R3 R2 K92 ["Standard"]
      397 LOADK                            R4 K23 [1.5]
      398 MUL                              R3 R4 R0
      399 SETTABLEKS                       R3 R2 K93 ["Thick"]
      401 LOADN                            R4 3
      402 MUL                              R3 R4 R0
      403 SETTABLEKS                       R3 R2 K94 ["Thicker"]
      405 LOADK                            R4 K22 [0.5]
      406 MUL                              R3 R4 R0
      407 SETTABLEKS                       R3 R2 K95 ["Thin"]
      409 SETTABLEKS                       R2 R1 K11 ["Stroke"]
      411 DUPTABLE                         R2 K115 [{["Time_50"] = 0.05, ["Time_100"] = 0.1, ["Time_200"] = 0.2, ["Time_300"] = 0.3, ["Time_400"] = 0.4, ["Time_500"] = 0.5, ["Time_600"] = 0.6, ["Time_700"] = 0.7, ["Time_800"] = 0.8, ["Time_900"] = 0.9, ["Time_1000"] = 1}]
      412 SETTABLEKS                       R2 R1 K12 ["Time"]
      414 DUPTABLE                         R2 K39 [{"Large", "Medium", "Small", "XSmall"}]
      415 LOADN                            R4 28
      416 MUL                              R3 R4 R0
      417 SETTABLEKS                       R3 R2 K27 ["Large"]
      419 LOADN                            R4 24
      420 MUL                              R3 R4 R0
      421 SETTABLEKS                       R3 R2 K28 ["Medium"]
      423 LOADN                            R4 20
      424 MUL                              R3 R4 R0
      425 SETTABLEKS                       R3 R2 K31 ["Small"]
      427 LOADN                            R4 16
      428 MUL                              R3 R4 R0
      429 SETTABLEKS                       R3 R2 K33 ["XSmall"]
      431 SETTABLEKS                       R2 R1 K13 ["ToggleSize"]
      433 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"FontSize", "FontWeight", "LineHeight", "Typography"}]
        1 DUPTABLE                         R2 K36 [{"FontSize_200", "FontSize_250", "FontSize_300", "FontSize_350", "FontSize_400", "FontSize_500", "FontSize_600", "FontSize_700", "FontSize_800", "FontSize_900", "FontSize_1000", "FontSize_1100", "FontSize_1200", "FontSize_1300", "FontSize_1400", "FontSize_1500", "FontSize_1600", "FontSize_1700", "FontSize_1800", "FontSize_1900", "FontSize_2000", "FontSize_2100", "FontSize_2200", "FontSize_2300", "FontSize_2400", "FontSize_2500", "FontSize_2600", "FontSize_2700", "FontSize_2800", "FontSize_2900", "FontSize_3000"}]
        2 LOADN                            R4 10
        3 MUL                              R3 R4 R0
        4 SETTABLEKS                       R3 R2 K5 ["FontSize_200"]
        6 LOADN                            R4 13
        7 MUL                              R3 R4 R0
        8 SETTABLEKS                       R3 R2 K6 ["FontSize_250"]
       10 LOADN                            R4 15
       11 MUL                              R3 R4 R0
       12 SETTABLEKS                       R3 R2 K7 ["FontSize_300"]
       14 LOADN                            R4 18
       15 MUL                              R3 R4 R0
       16 SETTABLEKS                       R3 R2 K8 ["FontSize_350"]
       18 LOADN                            R4 20
       19 MUL                              R3 R4 R0
       20 SETTABLEKS                       R3 R2 K9 ["FontSize_400"]
       22 LOADN                            R4 25
       23 MUL                              R3 R4 R0
       24 SETTABLEKS                       R3 R2 K10 ["FontSize_500"]
       26 LOADN                            R4 30
       27 MUL                              R3 R4 R0
       28 SETTABLEKS                       R3 R2 K11 ["FontSize_600"]
       30 LOADN                            R4 35
       31 MUL                              R3 R4 R0
       32 SETTABLEKS                       R3 R2 K12 ["FontSize_700"]
       34 LOADN                            R4 40
       35 MUL                              R3 R4 R0
       36 SETTABLEKS                       R3 R2 K13 ["FontSize_800"]
       38 LOADN                            R4 45
       39 MUL                              R3 R4 R0
       40 SETTABLEKS                       R3 R2 K14 ["FontSize_900"]
       42 LOADN                            R4 50
       43 MUL                              R3 R4 R0
       44 SETTABLEKS                       R3 R2 K15 ["FontSize_1000"]
       46 LOADN                            R4 55
       47 MUL                              R3 R4 R0
       48 SETTABLEKS                       R3 R2 K16 ["FontSize_1100"]
       50 LOADN                            R4 60
       51 MUL                              R3 R4 R0
       52 SETTABLEKS                       R3 R2 K17 ["FontSize_1200"]
       54 LOADN                            R4 66
       55 MUL                              R3 R4 R0
       56 SETTABLEKS                       R3 R2 K18 ["FontSize_1300"]
       58 LOADN                            R4 71
       59 MUL                              R3 R4 R0
       60 SETTABLEKS                       R3 R2 K19 ["FontSize_1400"]
       62 LOADN                            R4 76
       63 MUL                              R3 R4 R0
       64 SETTABLEKS                       R3 R2 K20 ["FontSize_1500"]
       66 LOADN                            R4 81
       67 MUL                              R3 R4 R0
       68 SETTABLEKS                       R3 R2 K21 ["FontSize_1600"]
       70 LOADN                            R4 86
       71 MUL                              R3 R4 R0
       72 SETTABLEKS                       R3 R2 K22 ["FontSize_1700"]
       74 LOADN                            R4 91
       75 MUL                              R3 R4 R0
       76 SETTABLEKS                       R3 R2 K23 ["FontSize_1800"]
       78 LOADN                            R4 96
       79 MUL                              R3 R4 R0
       80 SETTABLEKS                       R3 R2 K24 ["FontSize_1900"]
       82 LOADN                            R4 101
       83 MUL                              R3 R4 R0
       84 SETTABLEKS                       R3 R2 K25 ["FontSize_2000"]
       86 LOADN                            R4 106
       87 MUL                              R3 R4 R0
       88 SETTABLEKS                       R3 R2 K26 ["FontSize_2100"]
       90 LOADN                            R4 111
       91 MUL                              R3 R4 R0
       92 SETTABLEKS                       R3 R2 K27 ["FontSize_2200"]
       94 LOADN                            R4 116
       95 MUL                              R3 R4 R0
       96 SETTABLEKS                       R3 R2 K28 ["FontSize_2300"]
       98 LOADN                            R4 121
       99 MUL                              R3 R4 R0
      100 SETTABLEKS                       R3 R2 K29 ["FontSize_2400"]
      102 LOADN                            R4 126
      103 MUL                              R3 R4 R0
      104 SETTABLEKS                       R3 R2 K30 ["FontSize_2500"]
      106 LOADN                            R4 131
      107 MUL                              R3 R4 R0
      108 SETTABLEKS                       R3 R2 K31 ["FontSize_2600"]
      110 LOADN                            R4 136
      111 MUL                              R3 R4 R0
      112 SETTABLEKS                       R3 R2 K32 ["FontSize_2700"]
      114 LOADN                            R4 141
      115 MUL                              R3 R4 R0
      116 SETTABLEKS                       R3 R2 K33 ["FontSize_2800"]
      118 LOADN                            R4 146
      119 MUL                              R3 R4 R0
      120 SETTABLEKS                       R3 R2 K34 ["FontSize_2900"]
      122 LOADN                            R4 151
      123 MUL                              R3 R4 R0
      124 SETTABLEKS                       R3 R2 K35 ["FontSize_3000"]
      126 SETTABLEKS                       R2 R1 K0 ["FontSize"]
      128 DUPTABLE                         R2 K49 [{["FontWeight_300"] = "Light", ["FontWeight_400"] = "Regular", ["FontWeight_500"] = "Medium", ["FontWeight_600"] = "SemiBold", ["FontWeight_700"] = "Bold", ["FontWeight_800"] = "ExtraBold"}]
      129 SETTABLEKS                       R2 R1 K1 ["FontWeight"]
      131 DUPTABLE                         R2 K58 [{["LineHeight_100"] = 0.794, ["LineHeight_120"] = 0.952, ["LineHeight_130"] = 1.032, ["LineHeight_140"] = 1.111}]
      132 SETTABLEKS                       R2 R1 K2 ["LineHeight"]
      134 DUPTABLE                         R2 K77 [{"BodyLarge", "BodyMedium", "BodySmall", "CaptionLarge", "CaptionMedium", "CaptionSmall", "DisplayLarge", "DisplayMedium", "DisplaySmall", "HeadingLarge", "HeadingMedium", "HeadingSmall", "LabelLarge", "LabelMedium", "LabelSmall", "TitleLarge", "TitleMedium", "TitleSmall"}]
      135 DUPTABLE                         R3 K82 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.1}]
      136 GETIMPORT                        R4 K84 [Font.new]
      138 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      139 GETIMPORT                        R6 K87 [Enum.FontWeight.Regular]
      141 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      143 CALL                             R4 3 1
      144 SETTABLEKS                       R4 R3 K78 ["Font"]
      146 LOADN                            R5 20
      147 MUL                              R4 R5 R0
      148 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      150 SETTABLEKS                       R3 R2 K59 ["BodyLarge"]
      152 DUPTABLE                         R3 K91 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.111}]
      153 GETIMPORT                        R4 K84 [Font.new]
      155 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      156 GETIMPORT                        R6 K87 [Enum.FontWeight.Regular]
      158 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      160 CALL                             R4 3 1
      161 SETTABLEKS                       R4 R3 K78 ["Font"]
      163 LOADN                            R5 18
      164 MUL                              R4 R5 R0
      165 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      167 SETTABLEKS                       R3 R2 K60 ["BodyMedium"]
      169 DUPTABLE                         R3 K93 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.2}]
      170 GETIMPORT                        R4 K84 [Font.new]
      172 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      173 GETIMPORT                        R6 K87 [Enum.FontWeight.Regular]
      175 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      177 CALL                             R4 3 1
      178 SETTABLEKS                       R4 R3 K78 ["Font"]
      180 LOADN                            R5 15
      181 MUL                              R4 R5 R0
      182 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      184 SETTABLEKS                       R3 R2 K61 ["BodySmall"]
      186 DUPTABLE                         R3 K91 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.111}]
      187 GETIMPORT                        R4 K84 [Font.new]
      189 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      190 GETIMPORT                        R6 K94 [Enum.FontWeight.Medium]
      192 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      194 CALL                             R4 3 1
      195 SETTABLEKS                       R4 R3 K78 ["Font"]
      197 LOADN                            R5 18
      198 MUL                              R4 R5 R0
      199 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      201 SETTABLEKS                       R3 R2 K62 ["CaptionLarge"]
      203 DUPTABLE                         R3 K93 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.2}]
      204 GETIMPORT                        R4 K84 [Font.new]
      206 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      207 GETIMPORT                        R6 K94 [Enum.FontWeight.Medium]
      209 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      211 CALL                             R4 3 1
      212 SETTABLEKS                       R4 R3 K78 ["Font"]
      214 LOADN                            R5 15
      215 MUL                              R4 R5 R0
      216 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      218 SETTABLEKS                       R3 R2 K63 ["CaptionMedium"]
      220 DUPTABLE                         R3 K96 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.077}]
      221 GETIMPORT                        R4 K84 [Font.new]
      223 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      224 GETIMPORT                        R6 K94 [Enum.FontWeight.Medium]
      226 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      228 CALL                             R4 3 1
      229 SETTABLEKS                       R4 R3 K78 ["Font"]
      231 LOADN                            R5 13
      232 MUL                              R4 R5 R0
      233 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      235 SETTABLEKS                       R3 R2 K64 ["CaptionSmall"]
      237 DUPTABLE                         R3 K99 [{["Font"], [2], ["LetterSpacing"] = -0.01, ["LineHeight"] = 0.951}]
      238 GETIMPORT                        R4 K84 [Font.new]
      240 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      241 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      243 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      245 CALL                             R4 3 1
      246 SETTABLEKS                       R4 R3 K78 ["Font"]
      248 LOADN                            R5 101
      249 MUL                              R4 R5 R0
      250 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      252 SETTABLEKS                       R3 R2 K65 ["DisplayLarge"]
      254 DUPTABLE                         R3 K102 [{["Font"], [2], ["LetterSpacing"] = -0.01, ["LineHeight"] = 0.958}]
      255 GETIMPORT                        R4 K84 [Font.new]
      257 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      258 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      260 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      262 CALL                             R4 3 1
      263 SETTABLEKS                       R4 R3 K78 ["Font"]
      265 LOADN                            R5 71
      266 MUL                              R4 R5 R0
      267 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      269 SETTABLEKS                       R3 R2 K66 ["DisplayMedium"]
      271 DUPTABLE                         R3 K104 [{["Font"], [2], ["LetterSpacing"] = -0.01, ["LineHeight"] = 0.96}]
      272 GETIMPORT                        R4 K84 [Font.new]
      274 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      275 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      277 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      279 CALL                             R4 3 1
      280 SETTABLEKS                       R4 R3 K78 ["Font"]
      282 LOADN                            R5 50
      283 MUL                              R4 R5 R0
      284 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      286 SETTABLEKS                       R3 R2 K67 ["DisplaySmall"]
      288 DUPTABLE                         R3 K106 [{["Font"], [2], ["LetterSpacing"] = -0.01, ["LineHeight"] = 0.971}]
      289 GETIMPORT                        R4 K84 [Font.new]
      291 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      292 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      294 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      296 CALL                             R4 3 1
      297 SETTABLEKS                       R4 R3 K78 ["Font"]
      299 LOADN                            R5 35
      300 MUL                              R4 R5 R0
      301 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      303 SETTABLEKS                       R3 R2 K68 ["HeadingLarge"]
      305 DUPTABLE                         R3 K108 [{["Font"], [2], ["LetterSpacing"] = -0.01, ["LineHeight"] = 1.067}]
      306 GETIMPORT                        R4 K84 [Font.new]
      308 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      309 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      311 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      313 CALL                             R4 3 1
      314 SETTABLEKS                       R4 R3 K78 ["Font"]
      316 LOADN                            R5 30
      317 MUL                              R4 R5 R0
      318 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      320 SETTABLEKS                       R3 R2 K69 ["HeadingMedium"]
      322 DUPTABLE                         R3 K104 [{["Font"], [2], ["LetterSpacing"] = -0.01, ["LineHeight"] = 0.96}]
      323 GETIMPORT                        R4 K84 [Font.new]
      325 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      326 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      328 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      330 CALL                             R4 3 1
      331 SETTABLEKS                       R4 R3 K78 ["Font"]
      333 LOADN                            R5 25
      334 MUL                              R4 R5 R0
      335 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      337 SETTABLEKS                       R3 R2 K70 ["HeadingSmall"]
      339 DUPTABLE                         R3 K110 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 0.8}]
      340 GETIMPORT                        R4 K84 [Font.new]
      342 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      343 GETIMPORT                        R6 K94 [Enum.FontWeight.Medium]
      345 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      347 CALL                             R4 3 1
      348 SETTABLEKS                       R4 R3 K78 ["Font"]
      350 LOADN                            R5 20
      351 MUL                              R4 R5 R0
      352 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      354 SETTABLEKS                       R3 R2 K71 ["LabelLarge"]
      356 DUPTABLE                         R3 K112 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 0.778}]
      357 GETIMPORT                        R4 K84 [Font.new]
      359 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      360 GETIMPORT                        R6 K94 [Enum.FontWeight.Medium]
      362 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      364 CALL                             R4 3 1
      365 SETTABLEKS                       R4 R3 K78 ["Font"]
      367 LOADN                            R5 18
      368 MUL                              R4 R5 R0
      369 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      371 SETTABLEKS                       R3 R2 K72 ["LabelMedium"]
      373 DUPTABLE                         R3 K110 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 0.8}]
      374 GETIMPORT                        R4 K84 [Font.new]
      376 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      377 GETIMPORT                        R6 K94 [Enum.FontWeight.Medium]
      379 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      381 CALL                             R4 3 1
      382 SETTABLEKS                       R4 R3 K78 ["Font"]
      384 LOADN                            R5 15
      385 MUL                              R4 R5 R0
      386 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      388 SETTABLEKS                       R3 R2 K73 ["LabelSmall"]
      390 DUPTABLE                         R3 K82 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.1}]
      391 GETIMPORT                        R4 K84 [Font.new]
      393 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      394 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      396 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      398 CALL                             R4 3 1
      399 SETTABLEKS                       R4 R3 K78 ["Font"]
      401 LOADN                            R5 20
      402 MUL                              R4 R5 R0
      403 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      405 SETTABLEKS                       R3 R2 K74 ["TitleLarge"]
      407 DUPTABLE                         R3 K91 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.111}]
      408 GETIMPORT                        R4 K84 [Font.new]
      410 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      411 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      413 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      415 CALL                             R4 3 1
      416 SETTABLEKS                       R4 R3 K78 ["Font"]
      418 LOADN                            R5 18
      419 MUL                              R4 R5 R0
      420 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      422 SETTABLEKS                       R3 R2 K75 ["TitleMedium"]
      424 DUPTABLE                         R3 K93 [{["Font"], [2], ["LetterSpacing"] = 0, ["LineHeight"] = 1.2}]
      425 GETIMPORT                        R4 K84 [Font.new]
      427 LOADK                            R5 K85 ["rbxasset://fonts/families/BuilderSans.json"]
      428 GETIMPORT                        R6 K100 [Enum.FontWeight.Bold]
      430 GETIMPORT                        R7 K90 [Enum.FontStyle.Normal]
      432 CALL                             R4 3 1
      433 SETTABLEKS                       R4 R3 K78 ["Font"]
      435 LOADN                            R5 15
      436 MUL                              R4 R5 R0
      437 SETTABLEKS                       R4 R3 K0 ["FontSize"]
      439 SETTABLEKS                       R3 R2 K76 ["TitleSmall"]
      441 SETTABLEKS                       R2 R1 K3 ["Typography"]
      443 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K12 [{"Black", "Blue", "Gray", "Green", "Magenta", "Orange", "Pink", "Purple", "Red", "Turquoise", "White", "Yellow"}]
        1 DUPTABLE                         R1 K30 [{"Black_0", "Black_03", "Black_05", "Black_10", "Black_15", "Black_20", "Black_30", "Black_40", "Black_50", "Black_60", "Black_70", "Black_80", "Black_85", "Black_90", "Black_95", "Black_97", "Black_100"}]
        2 DUPTABLE                         R2 K34 [{["Color3"], ["Transparency"] = 1}]
        3 GETIMPORT                        R3 K36 [Color3.fromRGB]
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K31 ["Color3"]
       11 SETTABLEKS                       R2 R1 K13 ["Black_0"]
       13 DUPTABLE                         R2 K38 [{["Color3"], ["Transparency"] = 0.97}]
       14 GETIMPORT                        R3 K36 [Color3.fromRGB]
       16 LOADN                            R4 0
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 CALL                             R3 3 1
       20 SETTABLEKS                       R3 R2 K31 ["Color3"]
       22 SETTABLEKS                       R2 R1 K14 ["Black_03"]
       24 DUPTABLE                         R2 K40 [{["Color3"], ["Transparency"] = 0.95}]
       25 GETIMPORT                        R3 K36 [Color3.fromRGB]
       27 LOADN                            R4 0
       28 LOADN                            R5 0
       29 LOADN                            R6 0
       30 CALL                             R3 3 1
       31 SETTABLEKS                       R3 R2 K31 ["Color3"]
       33 SETTABLEKS                       R2 R1 K15 ["Black_05"]
       35 DUPTABLE                         R2 K42 [{["Color3"], ["Transparency"] = 0.9}]
       36 GETIMPORT                        R3 K36 [Color3.fromRGB]
       38 LOADN                            R4 0
       39 LOADN                            R5 0
       40 LOADN                            R6 0
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R2 K31 ["Color3"]
       44 SETTABLEKS                       R2 R1 K16 ["Black_10"]
       46 DUPTABLE                         R2 K44 [{["Color3"], ["Transparency"] = 0.85}]
       47 GETIMPORT                        R3 K36 [Color3.fromRGB]
       49 LOADN                            R4 0
       50 LOADN                            R5 0
       51 LOADN                            R6 0
       52 CALL                             R3 3 1
       53 SETTABLEKS                       R3 R2 K31 ["Color3"]
       55 SETTABLEKS                       R2 R1 K17 ["Black_15"]
       57 DUPTABLE                         R2 K46 [{["Color3"], ["Transparency"] = 0.8}]
       58 GETIMPORT                        R3 K36 [Color3.fromRGB]
       60 LOADN                            R4 0
       61 LOADN                            R5 0
       62 LOADN                            R6 0
       63 CALL                             R3 3 1
       64 SETTABLEKS                       R3 R2 K31 ["Color3"]
       66 SETTABLEKS                       R2 R1 K18 ["Black_20"]
       68 DUPTABLE                         R2 K48 [{["Color3"], ["Transparency"] = 0.7}]
       69 GETIMPORT                        R3 K36 [Color3.fromRGB]
       71 LOADN                            R4 0
       72 LOADN                            R5 0
       73 LOADN                            R6 0
       74 CALL                             R3 3 1
       75 SETTABLEKS                       R3 R2 K31 ["Color3"]
       77 SETTABLEKS                       R2 R1 K19 ["Black_30"]
       79 DUPTABLE                         R2 K50 [{["Color3"], ["Transparency"] = 0.6}]
       80 GETIMPORT                        R3 K36 [Color3.fromRGB]
       82 LOADN                            R4 0
       83 LOADN                            R5 0
       84 LOADN                            R6 0
       85 CALL                             R3 3 1
       86 SETTABLEKS                       R3 R2 K31 ["Color3"]
       88 SETTABLEKS                       R2 R1 K20 ["Black_40"]
       90 DUPTABLE                         R2 K52 [{["Color3"], ["Transparency"] = 0.5}]
       91 GETIMPORT                        R3 K36 [Color3.fromRGB]
       93 LOADN                            R4 0
       94 LOADN                            R5 0
       95 LOADN                            R6 0
       96 CALL                             R3 3 1
       97 SETTABLEKS                       R3 R2 K31 ["Color3"]
       99 SETTABLEKS                       R2 R1 K21 ["Black_50"]
      101 DUPTABLE                         R2 K54 [{["Color3"], ["Transparency"] = 0.4}]
      102 GETIMPORT                        R3 K36 [Color3.fromRGB]
      104 LOADN                            R4 0
      105 LOADN                            R5 0
      106 LOADN                            R6 0
      107 CALL                             R3 3 1
      108 SETTABLEKS                       R3 R2 K31 ["Color3"]
      110 SETTABLEKS                       R2 R1 K22 ["Black_60"]
      112 DUPTABLE                         R2 K56 [{["Color3"], ["Transparency"] = 0.3}]
      113 GETIMPORT                        R3 K36 [Color3.fromRGB]
      115 LOADN                            R4 0
      116 LOADN                            R5 0
      117 LOADN                            R6 0
      118 CALL                             R3 3 1
      119 SETTABLEKS                       R3 R2 K31 ["Color3"]
      121 SETTABLEKS                       R2 R1 K23 ["Black_70"]
      123 DUPTABLE                         R2 K58 [{["Color3"], ["Transparency"] = 0.2}]
      124 GETIMPORT                        R3 K36 [Color3.fromRGB]
      126 LOADN                            R4 0
      127 LOADN                            R5 0
      128 LOADN                            R6 0
      129 CALL                             R3 3 1
      130 SETTABLEKS                       R3 R2 K31 ["Color3"]
      132 SETTABLEKS                       R2 R1 K24 ["Black_80"]
      134 DUPTABLE                         R2 K60 [{["Color3"], ["Transparency"] = 0.15}]
      135 GETIMPORT                        R3 K36 [Color3.fromRGB]
      137 LOADN                            R4 0
      138 LOADN                            R5 0
      139 LOADN                            R6 0
      140 CALL                             R3 3 1
      141 SETTABLEKS                       R3 R2 K31 ["Color3"]
      143 SETTABLEKS                       R2 R1 K25 ["Black_85"]
      145 DUPTABLE                         R2 K62 [{["Color3"], ["Transparency"] = 0.1}]
      146 GETIMPORT                        R3 K36 [Color3.fromRGB]
      148 LOADN                            R4 0
      149 LOADN                            R5 0
      150 LOADN                            R6 0
      151 CALL                             R3 3 1
      152 SETTABLEKS                       R3 R2 K31 ["Color3"]
      154 SETTABLEKS                       R2 R1 K26 ["Black_90"]
      156 DUPTABLE                         R2 K64 [{["Color3"], ["Transparency"] = 0.05}]
      157 GETIMPORT                        R3 K36 [Color3.fromRGB]
      159 LOADN                            R4 0
      160 LOADN                            R5 0
      161 LOADN                            R6 0
      162 CALL                             R3 3 1
      163 SETTABLEKS                       R3 R2 K31 ["Color3"]
      165 SETTABLEKS                       R2 R1 K27 ["Black_95"]
      167 DUPTABLE                         R2 K66 [{["Color3"], ["Transparency"] = 0.03}]
      168 GETIMPORT                        R3 K36 [Color3.fromRGB]
      170 LOADN                            R4 0
      171 LOADN                            R5 0
      172 LOADN                            R6 0
      173 CALL                             R3 3 1
      174 SETTABLEKS                       R3 R2 K31 ["Color3"]
      176 SETTABLEKS                       R2 R1 K28 ["Black_97"]
      178 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      179 GETIMPORT                        R3 K36 [Color3.fromRGB]
      181 LOADN                            R4 0
      182 LOADN                            R5 0
      183 LOADN                            R6 0
      184 CALL                             R3 3 1
      185 SETTABLEKS                       R3 R2 K31 ["Color3"]
      187 SETTABLEKS                       R2 R1 K29 ["Black_100"]
      189 SETTABLEKS                       R1 R0 K0 ["Black"]
      191 DUPTABLE                         R1 K83 [{"Blue_100", "Blue_200", "Blue_300", "Blue_400", "Blue_500", "Blue_600", "Blue_700", "Blue_800", "Blue_900", "Blue_1000", "Blue_1100", "Blue_1200", "Blue_1300", "Blue_1400"}]
      192 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      193 GETIMPORT                        R3 K36 [Color3.fromRGB]
      195 LOADN                            R4 235
      196 LOADN                            R5 241
      197 LOADN                            R6 255
      198 CALL                             R3 3 1
      199 SETTABLEKS                       R3 R2 K31 ["Color3"]
      201 SETTABLEKS                       R2 R1 K69 ["Blue_100"]
      203 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      204 GETIMPORT                        R3 K36 [Color3.fromRGB]
      206 LOADN                            R4 204
      207 LOADN                            R5 221
      208 LOADN                            R6 255
      209 CALL                             R3 3 1
      210 SETTABLEKS                       R3 R2 K31 ["Color3"]
      212 SETTABLEKS                       R2 R1 K70 ["Blue_200"]
      214 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      215 GETIMPORT                        R3 K36 [Color3.fromRGB]
      217 LOADN                            R4 173
      218 LOADN                            R5 201
      219 LOADN                            R6 255
      220 CALL                             R3 3 1
      221 SETTABLEKS                       R3 R2 K31 ["Color3"]
      223 SETTABLEKS                       R2 R1 K71 ["Blue_300"]
      225 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      226 GETIMPORT                        R3 K36 [Color3.fromRGB]
      228 LOADN                            R4 143
      229 LOADN                            R5 180
      230 LOADN                            R6 255
      231 CALL                             R3 3 1
      232 SETTABLEKS                       R3 R2 K31 ["Color3"]
      234 SETTABLEKS                       R2 R1 K72 ["Blue_400"]
      236 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      237 GETIMPORT                        R3 K36 [Color3.fromRGB]
      239 LOADN                            R4 112
      240 LOADN                            R5 160
      241 LOADN                            R6 255
      242 CALL                             R3 3 1
      243 SETTABLEKS                       R3 R2 K31 ["Color3"]
      245 SETTABLEKS                       R2 R1 K73 ["Blue_500"]
      247 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      248 GETIMPORT                        R3 K36 [Color3.fromRGB]
      250 LOADN                            R4 82
      251 LOADN                            R5 139
      252 LOADN                            R6 255
      253 CALL                             R3 3 1
      254 SETTABLEKS                       R3 R2 K31 ["Color3"]
      256 SETTABLEKS                       R2 R1 K74 ["Blue_600"]
      258 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      259 GETIMPORT                        R3 K36 [Color3.fromRGB]
      261 LOADN                            R4 51
      262 LOADN                            R5 95
      263 LOADN                            R6 255
      264 CALL                             R3 3 1
      265 SETTABLEKS                       R3 R2 K31 ["Color3"]
      267 SETTABLEKS                       R2 R1 K75 ["Blue_700"]
      269 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      270 GETIMPORT                        R3 K36 [Color3.fromRGB]
      272 LOADN                            R4 20
      273 LOADN                            R5 70
      274 LOADN                            R6 255
      275 CALL                             R3 3 1
      276 SETTABLEKS                       R3 R2 K31 ["Color3"]
      278 SETTABLEKS                       R2 R1 K76 ["Blue_800"]
      280 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      281 GETIMPORT                        R3 K36 [Color3.fromRGB]
      283 LOADN                            R4 0
      284 LOADN                            R5 53
      285 LOADN                            R6 245
      286 CALL                             R3 3 1
      287 SETTABLEKS                       R3 R2 K31 ["Color3"]
      289 SETTABLEKS                       R2 R1 K77 ["Blue_900"]
      291 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      292 GETIMPORT                        R3 K36 [Color3.fromRGB]
      294 LOADN                            R4 0
      295 LOADN                            R5 45
      296 LOADN                            R6 214
      297 CALL                             R3 3 1
      298 SETTABLEKS                       R3 R2 K31 ["Color3"]
      300 SETTABLEKS                       R2 R1 K78 ["Blue_1000"]
      302 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      303 GETIMPORT                        R3 K36 [Color3.fromRGB]
      305 LOADN                            R4 0
      306 LOADN                            R5 39
      307 LOADN                            R6 184
      308 CALL                             R3 3 1
      309 SETTABLEKS                       R3 R2 K31 ["Color3"]
      311 SETTABLEKS                       R2 R1 K79 ["Blue_1100"]
      313 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      314 GETIMPORT                        R3 K36 [Color3.fromRGB]
      316 LOADN                            R4 0
      317 LOADN                            R5 34
      318 LOADN                            R6 153
      319 CALL                             R3 3 1
      320 SETTABLEKS                       R3 R2 K31 ["Color3"]
      322 SETTABLEKS                       R2 R1 K80 ["Blue_1200"]
      324 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      325 GETIMPORT                        R3 K36 [Color3.fromRGB]
      327 LOADN                            R4 0
      328 LOADN                            R5 27
      329 LOADN                            R6 122
      330 CALL                             R3 3 1
      331 SETTABLEKS                       R3 R2 K31 ["Color3"]
      333 SETTABLEKS                       R2 R1 K81 ["Blue_1300"]
      335 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      336 GETIMPORT                        R3 K36 [Color3.fromRGB]
      338 LOADN                            R4 0
      339 LOADN                            R5 20
      340 LOADN                            R6 92
      341 CALL                             R3 3 1
      342 SETTABLEKS                       R3 R2 K31 ["Color3"]
      344 SETTABLEKS                       R2 R1 K82 ["Blue_1400"]
      346 SETTABLEKS                       R1 R0 K1 ["Blue"]
      348 DUPTABLE                         R1 K96 [{"Gray_100", "Gray_200", "Gray_300", "Gray_400", "Gray_500", "Gray_600", "Gray_700", "Gray_800", "Gray_900", "Gray_1000", "Gray_1100", "Gray_1200"}]
      349 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      350 GETIMPORT                        R3 K36 [Color3.fromRGB]
      352 LOADN                            R4 247
      353 LOADN                            R5 247
      354 LOADN                            R6 248
      355 CALL                             R3 3 1
      356 SETTABLEKS                       R3 R2 K31 ["Color3"]
      358 SETTABLEKS                       R2 R1 K84 ["Gray_100"]
      360 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      361 GETIMPORT                        R3 K36 [Color3.fromRGB]
      363 LOADN                            R4 238
      364 LOADN                            R5 239
      365 LOADN                            R6 241
      366 CALL                             R3 3 1
      367 SETTABLEKS                       R3 R2 K31 ["Color3"]
      369 SETTABLEKS                       R2 R1 K85 ["Gray_200"]
      371 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      372 GETIMPORT                        R3 K36 [Color3.fromRGB]
      374 LOADN                            R4 230
      375 LOADN                            R5 231
      376 LOADN                            R6 234
      377 CALL                             R3 3 1
      378 SETTABLEKS                       R3 R2 K31 ["Color3"]
      380 SETTABLEKS                       R2 R1 K86 ["Gray_300"]
      382 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      383 GETIMPORT                        R3 K36 [Color3.fromRGB]
      385 LOADN                            R4 213
      386 LOADN                            R5 215
      387 LOADN                            R6 221
      388 CALL                             R3 3 1
      389 SETTABLEKS                       R3 R2 K31 ["Color3"]
      391 SETTABLEKS                       R2 R1 K87 ["Gray_400"]
      393 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      394 GETIMPORT                        R3 K36 [Color3.fromRGB]
      396 LOADN                            R4 188
      397 LOADN                            R5 190
      398 LOADN                            R6 200
      399 CALL                             R3 3 1
      400 SETTABLEKS                       R3 R2 K31 ["Color3"]
      402 SETTABLEKS                       R2 R1 K88 ["Gray_500"]
      404 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      405 GETIMPORT                        R3 K36 [Color3.fromRGB]
      407 LOADN                            R4 106
      408 LOADN                            R5 111
      409 LOADN                            R6 129
      410 CALL                             R3 3 1
      411 SETTABLEKS                       R3 R2 K31 ["Color3"]
      413 SETTABLEKS                       R2 R1 K89 ["Gray_600"]
      415 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      416 GETIMPORT                        R3 K36 [Color3.fromRGB]
      418 LOADN                            R4 73
      419 LOADN                            R5 77
      420 LOADN                            R6 90
      421 CALL                             R3 3 1
      422 SETTABLEKS                       R3 R2 K31 ["Color3"]
      424 SETTABLEKS                       R2 R1 K90 ["Gray_700"]
      426 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      427 GETIMPORT                        R3 K36 [Color3.fromRGB]
      429 LOADN                            R4 53
      430 LOADN                            R5 55
      431 LOADN                            R6 65
      432 CALL                             R3 3 1
      433 SETTABLEKS                       R3 R2 K31 ["Color3"]
      435 SETTABLEKS                       R2 R1 K91 ["Gray_800"]
      437 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      438 GETIMPORT                        R3 K36 [Color3.fromRGB]
      440 LOADN                            R4 39
      441 LOADN                            R5 41
      442 LOADN                            R6 48
      443 CALL                             R3 3 1
      444 SETTABLEKS                       R3 R2 K31 ["Color3"]
      446 SETTABLEKS                       R2 R1 K92 ["Gray_900"]
      448 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      449 GETIMPORT                        R3 K36 [Color3.fromRGB]
      451 LOADN                            R4 32
      452 LOADN                            R5 34
      453 LOADN                            R6 39
      454 CALL                             R3 3 1
      455 SETTABLEKS                       R3 R2 K31 ["Color3"]
      457 SETTABLEKS                       R2 R1 K93 ["Gray_1000"]
      459 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      460 GETIMPORT                        R3 K36 [Color3.fromRGB]
      462 LOADN                            R4 25
      463 LOADN                            R5 26
      464 LOADN                            R6 31
      465 CALL                             R3 3 1
      466 SETTABLEKS                       R3 R2 K31 ["Color3"]
      468 SETTABLEKS                       R2 R1 K94 ["Gray_1100"]
      470 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      471 GETIMPORT                        R3 K36 [Color3.fromRGB]
      473 LOADN                            R4 18
      474 LOADN                            R5 18
      475 LOADN                            R6 21
      476 CALL                             R3 3 1
      477 SETTABLEKS                       R3 R2 K31 ["Color3"]
      479 SETTABLEKS                       R2 R1 K95 ["Gray_1200"]
      481 SETTABLEKS                       R1 R0 K2 ["Gray"]
      483 DUPTABLE                         R1 K111 [{"Green_100", "Green_200", "Green_300", "Green_400", "Green_500", "Green_600", "Green_700", "Green_800", "Green_900", "Green_1000", "Green_1100", "Green_1200", "Green_1300", "Green_1400"}]
      484 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      485 GETIMPORT                        R3 K36 [Color3.fromRGB]
      487 LOADN                            R4 208
      488 LOADN                            R5 251
      489 LOADN                            R6 227
      490 CALL                             R3 3 1
      491 SETTABLEKS                       R3 R2 K31 ["Color3"]
      493 SETTABLEKS                       R2 R1 K97 ["Green_100"]
      495 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      496 GETIMPORT                        R3 K36 [Color3.fromRGB]
      498 LOADN                            R4 176
      499 LOADN                            R5 246
      500 LOADN                            R6 208
      501 CALL                             R3 3 1
      502 SETTABLEKS                       R3 R2 K31 ["Color3"]
      504 SETTABLEKS                       R2 R1 K98 ["Green_200"]
      506 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      507 GETIMPORT                        R3 K36 [Color3.fromRGB]
      509 LOADN                            R4 142
      510 LOADN                            R5 233
      511 LOADN                            R6 182
      512 CALL                             R3 3 1
      513 SETTABLEKS                       R3 R2 K31 ["Color3"]
      515 SETTABLEKS                       R2 R1 K99 ["Green_300"]
      517 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      518 GETIMPORT                        R3 K36 [Color3.fromRGB]
      520 LOADN                            R4 101
      521 LOADN                            R5 215
      522 LOADN                            R6 157
      523 CALL                             R3 3 1
      524 SETTABLEKS                       R3 R2 K31 ["Color3"]
      526 SETTABLEKS                       R2 R1 K100 ["Green_400"]
      528 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      529 GETIMPORT                        R3 K36 [Color3.fromRGB]
      531 LOADN                            R4 57
      532 LOADN                            R5 197
      533 LOADN                            R6 130
      534 CALL                             R3 3 1
      535 SETTABLEKS                       R3 R2 K31 ["Color3"]
      537 SETTABLEKS                       R2 R1 K101 ["Green_500"]
      539 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      540 GETIMPORT                        R3 K36 [Color3.fromRGB]
      542 LOADN                            R4 29
      543 LOADN                            R5 177
      544 LOADN                            R6 106
      545 CALL                             R3 3 1
      546 SETTABLEKS                       R3 R2 K31 ["Color3"]
      548 SETTABLEKS                       R2 R1 K102 ["Green_600"]
      550 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      551 GETIMPORT                        R3 K36 [Color3.fromRGB]
      553 LOADN                            R4 12
      554 LOADN                            R5 155
      555 LOADN                            R6 90
      556 CALL                             R3 3 1
      557 SETTABLEKS                       R3 R2 K31 ["Color3"]
      559 SETTABLEKS                       R2 R1 K103 ["Green_700"]
      561 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      562 GETIMPORT                        R3 K36 [Color3.fromRGB]
      564 LOADN                            R4 1
      565 LOADN                            R5 133
      566 LOADN                            R6 75
      567 CALL                             R3 3 1
      568 SETTABLEKS                       R3 R2 K31 ["Color3"]
      570 SETTABLEKS                       R2 R1 K104 ["Green_800"]
      572 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      573 GETIMPORT                        R3 K36 [Color3.fromRGB]
      575 LOADN                            R4 2
      576 LOADN                            R5 114
      577 LOADN                            R6 64
      578 CALL                             R3 3 1
      579 SETTABLEKS                       R3 R2 K31 ["Color3"]
      581 SETTABLEKS                       R2 R1 K105 ["Green_900"]
      583 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      584 GETIMPORT                        R3 K36 [Color3.fromRGB]
      586 LOADN                            R4 1
      587 LOADN                            R5 95
      588 LOADN                            R6 53
      589 CALL                             R3 3 1
      590 SETTABLEKS                       R3 R2 K31 ["Color3"]
      592 SETTABLEKS                       R2 R1 K106 ["Green_1000"]
      594 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      595 GETIMPORT                        R3 K36 [Color3.fromRGB]
      597 LOADN                            R4 0
      598 LOADN                            R5 74
      599 LOADN                            R6 41
      600 CALL                             R3 3 1
      601 SETTABLEKS                       R3 R2 K31 ["Color3"]
      603 SETTABLEKS                       R2 R1 K107 ["Green_1100"]
      605 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      606 GETIMPORT                        R3 K36 [Color3.fromRGB]
      608 LOADN                            R4 1
      609 LOADN                            R5 56
      610 LOADN                            R6 31
      611 CALL                             R3 3 1
      612 SETTABLEKS                       R3 R2 K31 ["Color3"]
      614 SETTABLEKS                       R2 R1 K108 ["Green_1200"]
      616 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      617 GETIMPORT                        R3 K36 [Color3.fromRGB]
      619 LOADN                            R4 10
      620 LOADN                            R5 38
      621 LOADN                            R6 18
      622 CALL                             R3 3 1
      623 SETTABLEKS                       R3 R2 K31 ["Color3"]
      625 SETTABLEKS                       R2 R1 K109 ["Green_1300"]
      627 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      628 GETIMPORT                        R3 K36 [Color3.fromRGB]
      630 LOADN                            R4 0
      631 LOADN                            R5 22
      632 LOADN                            R6 12
      633 CALL                             R3 3 1
      634 SETTABLEKS                       R3 R2 K31 ["Color3"]
      636 SETTABLEKS                       R2 R1 K110 ["Green_1400"]
      638 SETTABLEKS                       R1 R0 K3 ["Green"]
      640 DUPTABLE                         R1 K126 [{"Magenta_100", "Magenta_200", "Magenta_300", "Magenta_400", "Magenta_500", "Magenta_600", "Magenta_700", "Magenta_800", "Magenta_900", "Magenta_1000", "Magenta_1100", "Magenta_1200", "Magenta_1300", "Magenta_1400"}]
      641 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      642 GETIMPORT                        R3 K36 [Color3.fromRGB]
      644 LOADN                            R4 253
      645 LOADN                            R5 232
      646 LOADN                            R6 249
      647 CALL                             R3 3 1
      648 SETTABLEKS                       R3 R2 K31 ["Color3"]
      650 SETTABLEKS                       R2 R1 K112 ["Magenta_100"]
      652 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      653 GETIMPORT                        R3 K36 [Color3.fromRGB]
      655 LOADN                            R4 253
      656 LOADN                            R5 221
      657 LOADN                            R6 253
      658 CALL                             R3 3 1
      659 SETTABLEKS                       R3 R2 K31 ["Color3"]
      661 SETTABLEKS                       R2 R1 K113 ["Magenta_200"]
      663 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      664 GETIMPORT                        R3 K36 [Color3.fromRGB]
      666 LOADN                            R4 245
      667 LOADN                            R5 200
      668 LOADN                            R6 252
      669 CALL                             R3 3 1
      670 SETTABLEKS                       R3 R2 K31 ["Color3"]
      672 SETTABLEKS                       R2 R1 K114 ["Magenta_300"]
      674 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      675 GETIMPORT                        R3 K36 [Color3.fromRGB]
      677 LOADN                            R4 239
      678 LOADN                            R5 170
      679 LOADN                            R6 250
      680 CALL                             R3 3 1
      681 SETTABLEKS                       R3 R2 K31 ["Color3"]
      683 SETTABLEKS                       R2 R1 K115 ["Magenta_400"]
      685 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      686 GETIMPORT                        R3 K36 [Color3.fromRGB]
      688 LOADN                            R4 232
      689 LOADN                            R5 139
      690 LOADN                            R6 248
      691 CALL                             R3 3 1
      692 SETTABLEKS                       R3 R2 K31 ["Color3"]
      694 SETTABLEKS                       R2 R1 K116 ["Magenta_500"]
      696 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      697 GETIMPORT                        R3 K36 [Color3.fromRGB]
      699 LOADN                            R4 223
      700 LOADN                            R5 106
      701 LOADN                            R6 247
      702 CALL                             R3 3 1
      703 SETTABLEKS                       R3 R2 K31 ["Color3"]
      705 SETTABLEKS                       R2 R1 K117 ["Magenta_600"]
      707 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      708 GETIMPORT                        R3 K36 [Color3.fromRGB]
      710 LOADN                            R4 213
      711 LOADN                            R5 64
      712 LOADN                            R6 245
      713 CALL                             R3 3 1
      714 SETTABLEKS                       R3 R2 K31 ["Color3"]
      716 SETTABLEKS                       R2 R1 K118 ["Magenta_700"]
      718 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      719 GETIMPORT                        R3 K36 [Color3.fromRGB]
      721 LOADN                            R4 192
      722 LOADN                            R5 10
      723 LOADN                            R6 232
      724 CALL                             R3 3 1
      725 SETTABLEKS                       R3 R2 K31 ["Color3"]
      727 SETTABLEKS                       R2 R1 K119 ["Magenta_800"]
      729 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      730 GETIMPORT                        R3 K36 [Color3.fromRGB]
      732 LOADN                            R4 165
      733 LOADN                            R5 14
      734 LOADN                            R6 200
      735 CALL                             R3 3 1
      736 SETTABLEKS                       R3 R2 K31 ["Color3"]
      738 SETTABLEKS                       R2 R1 K120 ["Magenta_900"]
      740 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      741 GETIMPORT                        R3 K36 [Color3.fromRGB]
      743 LOADN                            R4 138
      744 LOADN                            R5 12
      745 LOADN                            R6 167
      746 CALL                             R3 3 1
      747 SETTABLEKS                       R3 R2 K31 ["Color3"]
      749 SETTABLEKS                       R2 R1 K121 ["Magenta_1000"]
      751 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      752 GETIMPORT                        R3 K36 [Color3.fromRGB]
      754 LOADN                            R4 110
      755 LOADN                            R5 7
      756 LOADN                            R6 133
      757 CALL                             R3 3 1
      758 SETTABLEKS                       R3 R2 K31 ["Color3"]
      760 SETTABLEKS                       R2 R1 K122 ["Magenta_1100"]
      762 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      763 GETIMPORT                        R3 K36 [Color3.fromRGB]
      765 LOADN                            R4 84
      766 LOADN                            R5 4
      767 LOADN                            R6 103
      768 CALL                             R3 3 1
      769 SETTABLEKS                       R3 R2 K31 ["Color3"]
      771 SETTABLEKS                       R2 R1 K123 ["Magenta_1200"]
      773 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      774 GETIMPORT                        R3 K36 [Color3.fromRGB]
      776 LOADN                            R4 60
      777 LOADN                            R5 2
      778 LOADN                            R6 74
      779 CALL                             R3 3 1
      780 SETTABLEKS                       R3 R2 K31 ["Color3"]
      782 SETTABLEKS                       R2 R1 K124 ["Magenta_1300"]
      784 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      785 GETIMPORT                        R3 K36 [Color3.fromRGB]
      787 LOADN                            R4 35
      788 LOADN                            R5 4
      789 LOADN                            R6 42
      790 CALL                             R3 3 1
      791 SETTABLEKS                       R3 R2 K31 ["Color3"]
      793 SETTABLEKS                       R2 R1 K125 ["Magenta_1400"]
      795 SETTABLEKS                       R1 R0 K4 ["Magenta"]
      797 DUPTABLE                         R1 K141 [{"Orange_100", "Orange_200", "Orange_300", "Orange_400", "Orange_500", "Orange_600", "Orange_700", "Orange_800", "Orange_900", "Orange_1000", "Orange_1100", "Orange_1200", "Orange_1300", "Orange_1400"}]
      798 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      799 GETIMPORT                        R3 K36 [Color3.fromRGB]
      801 LOADN                            R4 253
      802 LOADN                            R5 232
      803 LOADN                            R6 216
      804 CALL                             R3 3 1
      805 SETTABLEKS                       R3 R2 K31 ["Color3"]
      807 SETTABLEKS                       R2 R1 K127 ["Orange_100"]
      809 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      810 GETIMPORT                        R3 K36 [Color3.fromRGB]
      812 LOADN                            R4 252
      813 LOADN                            R5 222
      814 LOADN                            R6 199
      815 CALL                             R3 3 1
      816 SETTABLEKS                       R3 R2 K31 ["Color3"]
      818 SETTABLEKS                       R2 R1 K128 ["Orange_200"]
      820 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      821 GETIMPORT                        R3 K36 [Color3.fromRGB]
      823 LOADN                            R4 251
      824 LOADN                            R5 206
      825 LOADN                            R6 174
      826 CALL                             R3 3 1
      827 SETTABLEKS                       R3 R2 K31 ["Color3"]
      829 SETTABLEKS                       R2 R1 K129 ["Orange_300"]
      831 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      832 GETIMPORT                        R3 K36 [Color3.fromRGB]
      834 LOADN                            R4 251
      835 LOADN                            R5 178
      836 LOADN                            R6 134
      837 CALL                             R3 3 1
      838 SETTABLEKS                       R3 R2 K31 ["Color3"]
      840 SETTABLEKS                       R2 R1 K130 ["Orange_400"]
      842 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      843 GETIMPORT                        R3 K36 [Color3.fromRGB]
      845 LOADN                            R4 250
      846 LOADN                            R5 148
      847 LOADN                            R6 90
      848 CALL                             R3 3 1
      849 SETTABLEKS                       R3 R2 K31 ["Color3"]
      851 SETTABLEKS                       R2 R1 K131 ["Orange_500"]
      853 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      854 GETIMPORT                        R3 K36 [Color3.fromRGB]
      856 LOADN                            R4 245
      857 LOADN                            R5 118
      858 LOADN                            R6 48
      859 CALL                             R3 3 1
      860 SETTABLEKS                       R3 R2 K31 ["Color3"]
      862 SETTABLEKS                       R2 R1 K132 ["Orange_600"]
      864 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      865 GETIMPORT                        R3 K36 [Color3.fromRGB]
      867 LOADN                            R4 220
      868 LOADN                            R5 100
      869 LOADN                            R6 35
      870 CALL                             R3 3 1
      871 SETTABLEKS                       R3 R2 K31 ["Color3"]
      873 SETTABLEKS                       R2 R1 K133 ["Orange_700"]
      875 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      876 GETIMPORT                        R3 K36 [Color3.fromRGB]
      878 LOADN                            R4 192
      879 LOADN                            R5 80
      880 LOADN                            R6 20
      881 CALL                             R3 3 1
      882 SETTABLEKS                       R3 R2 K31 ["Color3"]
      884 SETTABLEKS                       R2 R1 K134 ["Orange_800"]
      886 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      887 GETIMPORT                        R3 K36 [Color3.fromRGB]
      889 LOADN                            R4 169
      890 LOADN                            R5 67
      891 LOADN                            R6 11
      892 CALL                             R3 3 1
      893 SETTABLEKS                       R3 R2 K31 ["Color3"]
      895 SETTABLEKS                       R2 R1 K135 ["Orange_900"]
      897 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      898 GETIMPORT                        R3 K36 [Color3.fromRGB]
      900 LOADN                            R4 144
      901 LOADN                            R5 51
      902 LOADN                            R6 0
      903 CALL                             R3 3 1
      904 SETTABLEKS                       R3 R2 K31 ["Color3"]
      906 SETTABLEKS                       R2 R1 K136 ["Orange_1000"]
      908 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      909 GETIMPORT                        R3 K36 [Color3.fromRGB]
      911 LOADN                            R4 115
      912 LOADN                            R5 40
      913 LOADN                            R6 0
      914 CALL                             R3 3 1
      915 SETTABLEKS                       R3 R2 K31 ["Color3"]
      917 SETTABLEKS                       R2 R1 K137 ["Orange_1100"]
      919 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      920 GETIMPORT                        R3 K36 [Color3.fromRGB]
      922 LOADN                            R4 87
      923 LOADN                            R5 30
      924 LOADN                            R6 0
      925 CALL                             R3 3 1
      926 SETTABLEKS                       R3 R2 K31 ["Color3"]
      928 SETTABLEKS                       R2 R1 K138 ["Orange_1200"]
      930 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      931 GETIMPORT                        R3 K36 [Color3.fromRGB]
      933 LOADN                            R4 60
      934 LOADN                            R5 21
      935 LOADN                            R6 0
      936 CALL                             R3 3 1
      937 SETTABLEKS                       R3 R2 K31 ["Color3"]
      939 SETTABLEKS                       R2 R1 K139 ["Orange_1300"]
      941 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      942 GETIMPORT                        R3 K36 [Color3.fromRGB]
      944 LOADN                            R4 33
      945 LOADN                            R5 13
      946 LOADN                            R6 1
      947 CALL                             R3 3 1
      948 SETTABLEKS                       R3 R2 K31 ["Color3"]
      950 SETTABLEKS                       R2 R1 K140 ["Orange_1400"]
      952 SETTABLEKS                       R1 R0 K5 ["Orange"]
      954 DUPTABLE                         R1 K156 [{"Pink_100", "Pink_200", "Pink_300", "Pink_400", "Pink_500", "Pink_600", "Pink_700", "Pink_800", "Pink_900", "Pink_1000", "Pink_1100", "Pink_1200", "Pink_1300", "Pink_1400"}]
      955 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      956 GETIMPORT                        R3 K36 [Color3.fromRGB]
      958 LOADN                            R4 255
      959 LOADN                            R5 230
      960 LOADN                            R6 242
      961 CALL                             R3 3 1
      962 SETTABLEKS                       R3 R2 K31 ["Color3"]
      964 SETTABLEKS                       R2 R1 K142 ["Pink_100"]
      966 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      967 GETIMPORT                        R3 K36 [Color3.fromRGB]
      969 LOADN                            R4 254
      970 LOADN                            R5 220
      971 LOADN                            R6 236
      972 CALL                             R3 3 1
      973 SETTABLEKS                       R3 R2 K31 ["Color3"]
      975 SETTABLEKS                       R2 R1 K143 ["Pink_200"]
      977 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      978 GETIMPORT                        R3 K36 [Color3.fromRGB]
      980 LOADN                            R4 250
      981 LOADN                            R5 202
      982 LOADN                            R6 224
      983 CALL                             R3 3 1
      984 SETTABLEKS                       R3 R2 K31 ["Color3"]
      986 SETTABLEKS                       R2 R1 K144 ["Pink_300"]
      988 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
      989 GETIMPORT                        R3 K36 [Color3.fromRGB]
      991 LOADN                            R4 247
      992 LOADN                            R5 173
      993 LOADN                            R6 207
      994 CALL                             R3 3 1
      995 SETTABLEKS                       R3 R2 K31 ["Color3"]
      997 SETTABLEKS                       R2 R1 K145 ["Pink_400"]
      999 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1000 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1002 LOADN                            R4 243
     1003 LOADN                            R5 143
     1004 LOADN                            R6 184
     1005 CALL                             R3 3 1
     1006 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1008 SETTABLEKS                       R2 R1 K146 ["Pink_500"]
     1010 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1011 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1013 LOADN                            R4 238
     1014 LOADN                            R5 114
     1015 LOADN                            R6 161
     1016 CALL                             R3 3 1
     1017 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1019 SETTABLEKS                       R2 R1 K147 ["Pink_600"]
     1021 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1022 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1024 LOADN                            R4 231
     1025 LOADN                            R5 78
     1026 LOADN                            R6 144
     1027 CALL                             R3 3 1
     1028 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1030 SETTABLEKS                       R2 R1 K148 ["Pink_700"]
     1032 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1033 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1035 LOADN                            R4 205
     1036 LOADN                            R5 55
     1037 LOADN                            R6 123
     1038 CALL                             R3 3 1
     1039 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1041 SETTABLEKS                       R2 R1 K149 ["Pink_800"]
     1043 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1044 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1046 LOADN                            R4 180
     1047 LOADN                            R5 43
     1048 LOADN                            R6 106
     1049 CALL                             R3 3 1
     1050 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1052 SETTABLEKS                       R2 R1 K150 ["Pink_900"]
     1054 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1055 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1057 LOADN                            R4 153
     1058 LOADN                            R5 29
     1059 LOADN                            R6 88
     1060 CALL                             R3 3 1
     1061 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1063 SETTABLEKS                       R2 R1 K151 ["Pink_1000"]
     1065 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1066 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1068 LOADN                            R4 99
     1069 LOADN                            R5 3
     1070 LOADN                            R6 53
     1071 CALL                             R3 3 1
     1072 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1074 SETTABLEKS                       R2 R1 K152 ["Pink_1100"]
     1076 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1077 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1079 LOADN                            R4 99
     1080 LOADN                            R5 3
     1081 LOADN                            R6 53
     1082 CALL                             R3 3 1
     1083 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1085 SETTABLEKS                       R2 R1 K153 ["Pink_1200"]
     1087 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1088 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1090 LOADN                            R4 70
     1091 LOADN                            R5 4
     1092 LOADN                            R6 36
     1093 CALL                             R3 3 1
     1094 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1096 SETTABLEKS                       R2 R1 K154 ["Pink_1300"]
     1098 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1099 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1101 LOADN                            R4 43
     1102 LOADN                            R5 2
     1103 LOADN                            R6 21
     1104 CALL                             R3 3 1
     1105 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1107 SETTABLEKS                       R2 R1 K155 ["Pink_1400"]
     1109 SETTABLEKS                       R1 R0 K6 ["Pink"]
     1111 DUPTABLE                         R1 K171 [{"Purple_100", "Purple_200", "Purple_300", "Purple_400", "Purple_500", "Purple_600", "Purple_700", "Purple_800", "Purple_900", "Purple_1000", "Purple_1100", "Purple_1200", "Purple_1300", "Purple_1400"}]
     1112 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1113 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1115 LOADN                            R4 241
     1116 LOADN                            R5 231
     1117 LOADN                            R6 255
     1118 CALL                             R3 3 1
     1119 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1121 SETTABLEKS                       R2 R1 K157 ["Purple_100"]
     1123 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1124 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1126 LOADN                            R4 233
     1127 LOADN                            R5 222
     1128 LOADN                            R6 251
     1129 CALL                             R3 3 1
     1130 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1132 SETTABLEKS                       R2 R1 K158 ["Purple_200"]
     1134 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1135 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1137 LOADN                            R4 226
     1138 LOADN                            R5 206
     1139 LOADN                            R6 253
     1140 CALL                             R3 3 1
     1141 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1143 SETTABLEKS                       R2 R1 K159 ["Purple_300"]
     1145 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1146 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1148 LOADN                            R4 212
     1149 LOADN                            R5 181
     1150 LOADN                            R6 252
     1151 CALL                             R3 3 1
     1152 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1154 SETTABLEKS                       R2 R1 K160 ["Purple_400"]
     1156 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1157 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1159 LOADN                            R4 197
     1160 LOADN                            R5 156
     1161 LOADN                            R6 249
     1162 CALL                             R3 3 1
     1163 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1165 SETTABLEKS                       R2 R1 K161 ["Purple_500"]
     1167 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1168 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1170 LOADN                            R4 182
     1171 LOADN                            R5 130
     1172 LOADN                            R6 247
     1173 CALL                             R3 3 1
     1174 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1176 SETTABLEKS                       R2 R1 K162 ["Purple_600"]
     1178 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1179 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1181 LOADN                            R4 167
     1182 LOADN                            R5 102
     1183 LOADN                            R6 245
     1184 CALL                             R3 3 1
     1185 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1187 SETTABLEKS                       R2 R1 K163 ["Purple_700"]
     1189 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1190 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1192 LOADN                            R4 147
     1193 LOADN                            R5 72
     1194 LOADN                            R6 240
     1195 CALL                             R3 3 1
     1196 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1198 SETTABLEKS                       R2 R1 K164 ["Purple_800"]
     1200 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1201 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1203 LOADN                            R4 130
     1204 LOADN                            R5 46
     1205 LOADN                            R6 231
     1206 CALL                             R3 3 1
     1207 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1209 SETTABLEKS                       R2 R1 K165 ["Purple_900"]
     1211 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1212 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1214 LOADN                            R4 108
     1215 LOADN                            R5 33
     1216 LOADN                            R6 198
     1217 CALL                             R3 3 1
     1218 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1220 SETTABLEKS                       R2 R1 K166 ["Purple_1000"]
     1222 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1223 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1225 LOADN                            R4 86
     1226 LOADN                            R5 20
     1227 LOADN                            R6 165
     1228 CALL                             R3 3 1
     1229 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1231 SETTABLEKS                       R2 R1 K167 ["Purple_1100"]
     1233 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1234 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1236 LOADN                            R4 65
     1237 LOADN                            R5 8
     1238 LOADN                            R6 134
     1239 CALL                             R3 3 1
     1240 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1242 SETTABLEKS                       R2 R1 K168 ["Purple_1200"]
     1244 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1245 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1247 LOADN                            R4 45
     1248 LOADN                            R5 4
     1249 LOADN                            R6 96
     1250 CALL                             R3 3 1
     1251 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1253 SETTABLEKS                       R2 R1 K169 ["Purple_1300"]
     1255 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1256 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1258 LOADN                            R4 28
     1259 LOADN                            R5 2
     1260 LOADN                            R6 59
     1261 CALL                             R3 3 1
     1262 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1264 SETTABLEKS                       R2 R1 K170 ["Purple_1400"]
     1266 SETTABLEKS                       R1 R0 K7 ["Purple"]
     1268 DUPTABLE                         R1 K186 [{"Red_100", "Red_200", "Red_300", "Red_400", "Red_500", "Red_600", "Red_700", "Red_800", "Red_900", "Red_1000", "Red_1100", "Red_1200", "Red_1300", "Red_1400"}]
     1269 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1270 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1272 LOADN                            R4 255
     1273 LOADN                            R5 234
     1274 LOADN                            R6 233
     1275 CALL                             R3 3 1
     1276 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1278 SETTABLEKS                       R2 R1 K172 ["Red_100"]
     1280 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1281 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1283 LOADN                            R4 255
     1284 LOADN                            R5 223
     1285 LOADN                            R6 222
     1286 CALL                             R3 3 1
     1287 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1289 SETTABLEKS                       R2 R1 K173 ["Red_200"]
     1291 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1292 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1294 LOADN                            R4 247
     1295 LOADN                            R5 205
     1296 LOADN                            R6 203
     1297 CALL                             R3 3 1
     1298 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1300 SETTABLEKS                       R2 R1 K174 ["Red_300"]
     1302 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1303 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1305 LOADN                            R4 243
     1306 LOADN                            R5 178
     1307 LOADN                            R6 174
     1308 CALL                             R3 3 1
     1309 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1311 SETTABLEKS                       R2 R1 K175 ["Red_400"]
     1313 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1314 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1316 LOADN                            R4 238
     1317 LOADN                            R5 151
     1318 LOADN                            R6 145
     1319 CALL                             R3 3 1
     1320 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1322 SETTABLEKS                       R2 R1 K176 ["Red_500"]
     1324 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1325 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1327 LOADN                            R4 235
     1328 LOADN                            R5 121
     1329 LOADN                            R6 115
     1330 CALL                             R3 3 1
     1331 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1333 SETTABLEKS                       R2 R1 K177 ["Red_600"]
     1335 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1336 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1338 LOADN                            R4 231
     1339 LOADN                            R5 87
     1340 LOADN                            R6 80
     1341 CALL                             R3 3 1
     1342 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1344 SETTABLEKS                       R2 R1 K178 ["Red_700"]
     1346 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1347 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1349 LOADN                            R4 223
     1350 LOADN                            R5 40
     1351 LOADN                            R6 31
     1352 CALL                             R3 3 1
     1353 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1355 SETTABLEKS                       R2 R1 K179 ["Red_800"]
     1357 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1358 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1360 LOADN                            R4 197
     1361 LOADN                            R5 18
     1362 LOADN                            R6 10
     1363 CALL                             R3 3 1
     1364 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1366 SETTABLEKS                       R2 R1 K180 ["Red_900"]
     1368 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1369 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1371 LOADN                            R4 164
     1372 LOADN                            R5 17
     1373 LOADN                            R6 9
     1374 CALL                             R3 3 1
     1375 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1377 SETTABLEKS                       R2 R1 K181 ["Red_1000"]
     1379 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1380 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1382 LOADN                            R4 131
     1383 LOADN                            R5 15
     1384 LOADN                            R6 7
     1385 CALL                             R3 3 1
     1386 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1388 SETTABLEKS                       R2 R1 K182 ["Red_1100"]
     1390 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1391 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1393 LOADN                            R4 100
     1394 LOADN                            R5 12
     1395 LOADN                            R6 5
     1396 CALL                             R3 3 1
     1397 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1399 SETTABLEKS                       R2 R1 K183 ["Red_1200"]
     1401 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1402 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1404 LOADN                            R4 71
     1405 LOADN                            R5 8
     1406 LOADN                            R6 4
     1407 CALL                             R3 3 1
     1408 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1410 SETTABLEKS                       R2 R1 K184 ["Red_1300"]
     1412 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1413 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1415 LOADN                            R4 40
     1416 LOADN                            R5 6
     1417 LOADN                            R6 3
     1418 CALL                             R3 3 1
     1419 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1421 SETTABLEKS                       R2 R1 K185 ["Red_1400"]
     1423 SETTABLEKS                       R1 R0 K8 ["Red"]
     1425 DUPTABLE                         R1 K201 [{"Turquoise_100", "Turquoise_200", "Turquoise_300", "Turquoise_400", "Turquoise_500", "Turquoise_600", "Turquoise_700", "Turquoise_800", "Turquoise_900", "Turquoise_1000", "Turquoise_1100", "Turquoise_1200", "Turquoise_1300", "Turquoise_1400"}]
     1426 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1427 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1429 LOADN                            R4 200
     1430 LOADN                            R5 246
     1431 LOADN                            R6 255
     1432 CALL                             R3 3 1
     1433 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1435 SETTABLEKS                       R2 R1 K187 ["Turquoise_100"]
     1437 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1438 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1440 LOADN                            R4 163
     1441 LOADN                            R5 239
     1442 LOADN                            R6 254
     1443 CALL                             R3 3 1
     1444 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1446 SETTABLEKS                       R2 R1 K188 ["Turquoise_200"]
     1448 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1449 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1451 LOADN                            R4 126
     1452 LOADN                            R5 229
     1453 LOADN                            R6 248
     1454 CALL                             R3 3 1
     1455 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1457 SETTABLEKS                       R2 R1 K189 ["Turquoise_300"]
     1459 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1460 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1462 LOADN                            R4 92
     1463 LOADN                            R5 210
     1464 LOADN                            R6 232
     1465 CALL                             R3 3 1
     1466 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1468 SETTABLEKS                       R2 R1 K190 ["Turquoise_400"]
     1470 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1471 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1473 LOADN                            R4 57
     1474 LOADN                            R5 189
     1475 LOADN                            R6 216
     1476 CALL                             R3 3 1
     1477 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1479 SETTABLEKS                       R2 R1 K191 ["Turquoise_500"]
     1481 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1482 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1484 LOADN                            R4 22
     1485 LOADN                            R5 169
     1486 LOADN                            R6 199
     1487 CALL                             R3 3 1
     1488 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1490 SETTABLEKS                       R2 R1 K192 ["Turquoise_600"]
     1492 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1493 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1495 LOADN                            R4 4
     1496 LOADN                            R5 148
     1497 LOADN                            R6 178
     1498 CALL                             R3 3 1
     1499 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1501 SETTABLEKS                       R2 R1 K193 ["Turquoise_700"]
     1503 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1504 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1506 LOADN                            R4 18
     1507 LOADN                            R5 125
     1508 LOADN                            R6 152
     1509 CALL                             R3 3 1
     1510 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1512 SETTABLEKS                       R2 R1 K194 ["Turquoise_800"]
     1514 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1515 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1517 LOADN                            R4 5
     1518 LOADN                            R5 108
     1519 LOADN                            R6 130
     1520 CALL                             R3 3 1
     1521 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1523 SETTABLEKS                       R2 R1 K195 ["Turquoise_900"]
     1525 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1526 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1528 LOADN                            R4 5
     1529 LOADN                            R5 90
     1530 LOADN                            R6 106
     1531 CALL                             R3 3 1
     1532 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1534 SETTABLEKS                       R2 R1 K196 ["Turquoise_1000"]
     1536 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1537 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1539 LOADN                            R4 4
     1540 LOADN                            R5 71
     1541 LOADN                            R6 84
     1542 CALL                             R3 3 1
     1543 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1545 SETTABLEKS                       R2 R1 K197 ["Turquoise_1100"]
     1547 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1548 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1550 LOADN                            R4 2
     1551 LOADN                            R5 53
     1552 LOADN                            R6 63
     1553 CALL                             R3 3 1
     1554 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1556 SETTABLEKS                       R2 R1 K198 ["Turquoise_1200"]
     1558 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1559 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1561 LOADN                            R4 2
     1562 LOADN                            R5 37
     1563 LOADN                            R6 44
     1564 CALL                             R3 3 1
     1565 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1567 SETTABLEKS                       R2 R1 K199 ["Turquoise_1300"]
     1569 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1570 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1572 LOADN                            R4 2
     1573 LOADN                            R5 20
     1574 LOADN                            R6 24
     1575 CALL                             R3 3 1
     1576 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1578 SETTABLEKS                       R2 R1 K200 ["Turquoise_1400"]
     1580 SETTABLEKS                       R1 R0 K9 ["Turquoise"]
     1582 DUPTABLE                         R1 K219 [{"White_0", "White_03", "White_05", "White_10", "White_15", "White_20", "White_30", "White_40", "White_50", "White_60", "White_70", "White_80", "White_85", "White_90", "White_95", "White_97", "White_100"}]
     1583 DUPTABLE                         R2 K34 [{["Color3"], ["Transparency"] = 1}]
     1584 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1586 LOADN                            R4 255
     1587 LOADN                            R5 255
     1588 LOADN                            R6 255
     1589 CALL                             R3 3 1
     1590 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1592 SETTABLEKS                       R2 R1 K202 ["White_0"]
     1594 DUPTABLE                         R2 K38 [{["Color3"], ["Transparency"] = 0.97}]
     1595 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1597 LOADN                            R4 255
     1598 LOADN                            R5 255
     1599 LOADN                            R6 255
     1600 CALL                             R3 3 1
     1601 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1603 SETTABLEKS                       R2 R1 K203 ["White_03"]
     1605 DUPTABLE                         R2 K40 [{["Color3"], ["Transparency"] = 0.95}]
     1606 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1608 LOADN                            R4 255
     1609 LOADN                            R5 255
     1610 LOADN                            R6 255
     1611 CALL                             R3 3 1
     1612 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1614 SETTABLEKS                       R2 R1 K204 ["White_05"]
     1616 DUPTABLE                         R2 K42 [{["Color3"], ["Transparency"] = 0.9}]
     1617 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1619 LOADN                            R4 255
     1620 LOADN                            R5 255
     1621 LOADN                            R6 255
     1622 CALL                             R3 3 1
     1623 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1625 SETTABLEKS                       R2 R1 K205 ["White_10"]
     1627 DUPTABLE                         R2 K44 [{["Color3"], ["Transparency"] = 0.85}]
     1628 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1630 LOADN                            R4 255
     1631 LOADN                            R5 255
     1632 LOADN                            R6 255
     1633 CALL                             R3 3 1
     1634 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1636 SETTABLEKS                       R2 R1 K206 ["White_15"]
     1638 DUPTABLE                         R2 K46 [{["Color3"], ["Transparency"] = 0.8}]
     1639 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1641 LOADN                            R4 255
     1642 LOADN                            R5 255
     1643 LOADN                            R6 255
     1644 CALL                             R3 3 1
     1645 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1647 SETTABLEKS                       R2 R1 K207 ["White_20"]
     1649 DUPTABLE                         R2 K48 [{["Color3"], ["Transparency"] = 0.7}]
     1650 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1652 LOADN                            R4 255
     1653 LOADN                            R5 255
     1654 LOADN                            R6 255
     1655 CALL                             R3 3 1
     1656 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1658 SETTABLEKS                       R2 R1 K208 ["White_30"]
     1660 DUPTABLE                         R2 K50 [{["Color3"], ["Transparency"] = 0.6}]
     1661 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1663 LOADN                            R4 255
     1664 LOADN                            R5 255
     1665 LOADN                            R6 255
     1666 CALL                             R3 3 1
     1667 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1669 SETTABLEKS                       R2 R1 K209 ["White_40"]
     1671 DUPTABLE                         R2 K52 [{["Color3"], ["Transparency"] = 0.5}]
     1672 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1674 LOADN                            R4 255
     1675 LOADN                            R5 255
     1676 LOADN                            R6 255
     1677 CALL                             R3 3 1
     1678 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1680 SETTABLEKS                       R2 R1 K210 ["White_50"]
     1682 DUPTABLE                         R2 K54 [{["Color3"], ["Transparency"] = 0.4}]
     1683 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1685 LOADN                            R4 255
     1686 LOADN                            R5 255
     1687 LOADN                            R6 255
     1688 CALL                             R3 3 1
     1689 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1691 SETTABLEKS                       R2 R1 K211 ["White_60"]
     1693 DUPTABLE                         R2 K56 [{["Color3"], ["Transparency"] = 0.3}]
     1694 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1696 LOADN                            R4 255
     1697 LOADN                            R5 255
     1698 LOADN                            R6 255
     1699 CALL                             R3 3 1
     1700 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1702 SETTABLEKS                       R2 R1 K212 ["White_70"]
     1704 DUPTABLE                         R2 K58 [{["Color3"], ["Transparency"] = 0.2}]
     1705 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1707 LOADN                            R4 255
     1708 LOADN                            R5 255
     1709 LOADN                            R6 255
     1710 CALL                             R3 3 1
     1711 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1713 SETTABLEKS                       R2 R1 K213 ["White_80"]
     1715 DUPTABLE                         R2 K60 [{["Color3"], ["Transparency"] = 0.15}]
     1716 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1718 LOADN                            R4 255
     1719 LOADN                            R5 255
     1720 LOADN                            R6 255
     1721 CALL                             R3 3 1
     1722 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1724 SETTABLEKS                       R2 R1 K214 ["White_85"]
     1726 DUPTABLE                         R2 K62 [{["Color3"], ["Transparency"] = 0.1}]
     1727 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1729 LOADN                            R4 255
     1730 LOADN                            R5 255
     1731 LOADN                            R6 255
     1732 CALL                             R3 3 1
     1733 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1735 SETTABLEKS                       R2 R1 K215 ["White_90"]
     1737 DUPTABLE                         R2 K64 [{["Color3"], ["Transparency"] = 0.05}]
     1738 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1740 LOADN                            R4 255
     1741 LOADN                            R5 255
     1742 LOADN                            R6 255
     1743 CALL                             R3 3 1
     1744 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1746 SETTABLEKS                       R2 R1 K216 ["White_95"]
     1748 DUPTABLE                         R2 K66 [{["Color3"], ["Transparency"] = 0.03}]
     1749 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1751 LOADN                            R4 255
     1752 LOADN                            R5 255
     1753 LOADN                            R6 255
     1754 CALL                             R3 3 1
     1755 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1757 SETTABLEKS                       R2 R1 K217 ["White_97"]
     1759 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1760 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1762 LOADN                            R4 255
     1763 LOADN                            R5 255
     1764 LOADN                            R6 255
     1765 CALL                             R3 3 1
     1766 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1768 SETTABLEKS                       R2 R1 K218 ["White_100"]
     1770 SETTABLEKS                       R1 R0 K10 ["White"]
     1772 DUPTABLE                         R1 K234 [{"Yellow_100", "Yellow_200", "Yellow_300", "Yellow_400", "Yellow_500", "Yellow_600", "Yellow_700", "Yellow_800", "Yellow_900", "Yellow_1000", "Yellow_1100", "Yellow_1200", "Yellow_1300", "Yellow_1400"}]
     1773 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1774 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1776 LOADN                            R4 253
     1777 LOADN                            R5 236
     1778 LOADN                            R6 193
     1779 CALL                             R3 3 1
     1780 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1782 SETTABLEKS                       R2 R1 K220 ["Yellow_100"]
     1784 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1785 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1787 LOADN                            R4 250
     1788 LOADN                            R5 228
     1789 LOADN                            R6 170
     1790 CALL                             R3 3 1
     1791 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1793 SETTABLEKS                       R2 R1 K221 ["Yellow_200"]
     1795 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1796 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1798 LOADN                            R4 247
     1799 LOADN                            R5 210
     1800 LOADN                            R6 115
     1801 CALL                             R3 3 1
     1802 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1804 SETTABLEKS                       R2 R1 K222 ["Yellow_300"]
     1806 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1807 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1809 LOADN                            R4 242
     1810 LOADN                            R5 186
     1811 LOADN                            R6 42
     1812 CALL                             R3 3 1
     1813 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1815 SETTABLEKS                       R2 R1 K223 ["Yellow_400"]
     1817 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1818 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1820 LOADN                            R4 219
     1821 LOADN                            R5 166
     1822 LOADN                            R6 31
     1823 CALL                             R3 3 1
     1824 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1826 SETTABLEKS                       R2 R1 K224 ["Yellow_500"]
     1828 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1829 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1831 LOADN                            R4 196
     1832 LOADN                            R5 147
     1833 LOADN                            R6 21
     1834 CALL                             R3 3 1
     1835 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1837 SETTABLEKS                       R2 R1 K225 ["Yellow_600"]
     1839 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1840 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1842 LOADN                            R4 174
     1843 LOADN                            R5 128
     1844 LOADN                            R6 11
     1845 CALL                             R3 3 1
     1846 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1848 SETTABLEKS                       R2 R1 K226 ["Yellow_700"]
     1850 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1851 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1853 LOADN                            R4 151
     1854 LOADN                            R5 108
     1855 LOADN                            R6 0
     1856 CALL                             R3 3 1
     1857 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1859 SETTABLEKS                       R2 R1 K227 ["Yellow_800"]
     1861 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1862 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1864 LOADN                            R4 129
     1865 LOADN                            R5 93
     1866 LOADN                            R6 0
     1867 CALL                             R3 3 1
     1868 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1870 SETTABLEKS                       R2 R1 K228 ["Yellow_900"]
     1872 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1873 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1875 LOADN                            R4 107
     1876 LOADN                            R5 76
     1877 LOADN                            R6 0
     1878 CALL                             R3 3 1
     1879 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1881 SETTABLEKS                       R2 R1 K229 ["Yellow_1000"]
     1883 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1884 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1886 LOADN                            R4 83
     1887 LOADN                            R5 61
     1888 LOADN                            R6 2
     1889 CALL                             R3 3 1
     1890 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1892 SETTABLEKS                       R2 R1 K230 ["Yellow_1100"]
     1894 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1895 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1897 LOADN                            R4 63
     1898 LOADN                            R5 45
     1899 LOADN                            R6 1
     1900 CALL                             R3 3 1
     1901 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1903 SETTABLEKS                       R2 R1 K231 ["Yellow_1200"]
     1905 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1906 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1908 LOADN                            R4 44
     1909 LOADN                            R5 31
     1910 LOADN                            R6 0
     1911 CALL                             R3 3 1
     1912 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1914 SETTABLEKS                       R2 R1 K232 ["Yellow_1300"]
     1916 DUPTABLE                         R2 K68 [{["Color3"], ["Transparency"] = 0}]
     1917 GETIMPORT                        R3 K36 [Color3.fromRGB]
     1919 LOADN                            R4 24
     1920 LOADN                            R5 17
     1921 LOADN                            R6 0
     1922 CALL                             R3 3 1
     1923 SETTABLEKS                       R3 R2 K31 ["Color3"]
     1925 SETTABLEKS                       R2 R1 K233 ["Yellow_1400"]
     1927 SETTABLEKS                       R1 R0 K11 ["Yellow"]
     1929 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETTABLEKS                       R1 R0 K0 ["Extended"]
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 CAPTURE                          VAL R2
        6 DUPTABLE                         R4 K7 [{"Tokens", "Typography", "withExtended"}]
        7 SETTABLEKS                       R0 R4 K4 ["Tokens"]
        9 SETTABLEKS                       R1 R4 K5 ["Typography"]
       11 SETTABLEKS                       R3 R4 K6 ["withExtended"]
       13 RETURN                           R4 1
