PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K0 ["Background"]
        5 SETTABLEKS                       R0 R1 K1 ["BackgroundStyle"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["Hover"]
       10 DUPTABLE                         R3 K3 [{"BackgroundStyle"}]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       14 GETTABLEKS                       R4 R5 K5 ["join"]
       16 MOVE                             R5 R0
       17 DUPTABLE                         R6 K7 [{"Color"}]
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K8 ["ButtonHover"]
       21 SETTABLEKS                       R7 R6 K6 ["Color"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K1 ["BackgroundStyle"]
       26 SETTABLE                         R3 R1 R2
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K9 ["Disabled"]
       30 DUPTABLE                         R3 K11 [{"BackgroundStyle", "TextColor"}]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       34 GETTABLEKS                       R4 R5 K5 ["join"]
       36 MOVE                             R5 R0
       37 DUPTABLE                         R6 K7 [{"Color"}]
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R7 R8 K12 ["ButtonDisabled"]
       41 SETTABLEKS                       R7 R6 K6 ["Color"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K1 ["BackgroundStyle"]
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R4 R5 K13 ["ButtonTextDisabled"]
       49 SETTABLEKS                       R4 R3 K10 ["TextColor"]
       51 SETTABLE                         R3 R1 R2
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K14 ["Pressed"]
       55 DUPTABLE                         R3 K3 [{"BackgroundStyle"}]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       59 GETTABLEKS                       R4 R5 K5 ["join"]
       61 MOVE                             R5 R0
       62 DUPTABLE                         R6 K7 [{"Color"}]
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R7 R8 K15 ["ButtonPressed"]
       66 SETTABLEKS                       R7 R6 K6 ["Color"]
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K1 ["BackgroundStyle"]
       71 SETTABLE                         R3 R1 R2
       72 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K0 ["Background"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["Dictionary"]
        8 GETTABLEKS                       R2 R3 K2 ["join"]
       10 MOVE                             R3 R0
       11 DUPTABLE                         R4 K4 [{"Color"}]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K5 ["ActionActivated"]
       15 SETTABLEKS                       R5 R4 K3 ["Color"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K6 ["BackgroundStyle"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K7 ["DialogMainButtonText"]
       23 SETTABLEKS                       R2 R1 K8 ["TextColor"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R2 R3 K9 ["Hover"]
       28 DUPTABLE                         R3 K10 [{"BackgroundStyle"}]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
       32 GETTABLEKS                       R4 R5 K2 ["join"]
       34 MOVE                             R5 R0
       35 DUPTABLE                         R6 K4 [{"Color"}]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R7 R8 K11 ["ButtonHover"]
       39 SETTABLEKS                       R7 R6 K3 ["Color"]
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K6 ["BackgroundStyle"]
       44 SETTABLE                         R3 R1 R2
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R2 R3 K12 ["Disabled"]
       48 DUPTABLE                         R3 K13 [{"BackgroundStyle", "TextColor"}]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
       52 GETTABLEKS                       R4 R5 K2 ["join"]
       54 MOVE                             R5 R0
       55 DUPTABLE                         R6 K4 [{"Color"}]
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K14 ["DialogMainButtonDisabled"]
       59 SETTABLEKS                       R7 R6 K3 ["Color"]
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K6 ["BackgroundStyle"]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R4 R5 K15 ["DialogMainButtonTextDisabled"]
       67 SETTABLEKS                       R4 R3 K8 ["TextColor"]
       69 SETTABLE                         R3 R1 R2
       70 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R4 R0 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["deepCopy"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K7 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["StyleModifier"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Style"]
       34 GETTABLEKS                       R6 R7 K12 ["StyleKey"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R9 R0 K2 ["UI"]
       41 GETTABLEKS                       R8 R9 K13 ["Components"]
       43 GETTABLEKS                       R7 R8 K14 ["Box"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K2 ["UI"]
       50 GETTABLEKS                       R9 R10 K13 ["Components"]
       52 GETTABLEKS                       R8 R9 K15 ["RoundBox"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R11 R0 K2 ["UI"]
       59 GETTABLEKS                       R10 R11 K13 ["Components"]
       61 GETTABLEKS                       R9 R10 K16 ["Image"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R12 R0 K2 ["UI"]
       68 GETTABLEKS                       R11 R12 K13 ["Components"]
       70 GETTABLEKS                       R10 R11 K17 ["UIFolderData"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R12 R9 K15 ["RoundBox"]
       77 GETTABLEKS                       R11 R12 K18 ["style"]
       79 CALL                             R10 1 1
       80 MOVE                             R11 R3
       81 MOVE                             R12 R10
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R13 R2 K19 ["Dictionary"]
       85 GETTABLEKS                       R12 R13 K20 ["join"]
       87 MOVE                             R13 R11
       88 DUPTABLE                         R14 K23 [{"BackgroundImage", "BorderImage"}]
       89 LOADK                            R15 K24 ["rbxasset://textures/StudioSharedUI/RoundedLeftBackground.png"]
       90 SETTABLEKS                       R15 R14 K21 ["BackgroundImage"]
       92 LOADK                            R15 K25 ["rbxasset://textures/StudioSharedUI/RoundedLeftBorder.png"]
       93 SETTABLEKS                       R15 R14 K22 ["BorderImage"]
       95 CALL                             R12 2 1
       96 GETTABLEKS                       R14 R2 K19 ["Dictionary"]
       98 GETTABLEKS                       R13 R14 K20 ["join"]
      100 MOVE                             R14 R11
      101 DUPTABLE                         R15 K23 [{"BackgroundImage", "BorderImage"}]
      102 LOADK                            R16 K26 ["rbxasset://textures/StudioSharedUI/RoundedCenterBackground.png"]
      103 SETTABLEKS                       R16 R15 K21 ["BackgroundImage"]
      105 LOADK                            R16 K27 ["rbxasset://textures/StudioSharedUI/RoundedCenterBorder.png"]
      106 SETTABLEKS                       R16 R15 K22 ["BorderImage"]
      108 CALL                             R13 2 1
      109 GETTABLEKS                       R15 R2 K19 ["Dictionary"]
      111 GETTABLEKS                       R14 R15 K20 ["join"]
      113 MOVE                             R15 R11
      114 DUPTABLE                         R16 K23 [{"BackgroundImage", "BorderImage"}]
      115 LOADK                            R17 K28 ["rbxasset://textures/StudioSharedUI/RoundedRightBackground.png"]
      116 SETTABLEKS                       R17 R16 K21 ["BackgroundImage"]
      118 LOADK                            R17 K29 ["rbxasset://textures/StudioSharedUI/RoundedRightBorder.png"]
      119 SETTABLEKS                       R17 R16 K22 ["BorderImage"]
      121 CALL                             R14 2 1
      122 NEWTABLE                         R15 8 0
      124 GETIMPORT                        R16 K33 [Enum.Font.SourceSansBold]
      126 SETTABLEKS                       R16 R15 K31 ["Font"]
      128 SETTABLEKS                       R7 R15 K34 ["Background"]
      130 GETTABLEKS                       R17 R2 K19 ["Dictionary"]
      132 GETTABLEKS                       R16 R17 K20 ["join"]
      134 MOVE                             R17 R11
      135 DUPTABLE                         R18 K37 [{"BorderColor", "Color"}]
      136 GETTABLEKS                       R19 R5 K38 ["MainBackground"]
      138 SETTABLEKS                       R19 R18 K35 ["BorderColor"]
      140 GETTABLEKS                       R19 R5 K39 ["DialogMainButton"]
      142 SETTABLEKS                       R19 R18 K36 ["Color"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K40 ["BackgroundStyle"]
      147 GETTABLEKS                       R16 R5 K41 ["DialogMainButtonText"]
      149 SETTABLEKS                       R16 R15 K42 ["TextColor"]
      151 GETTABLEKS                       R16 R4 K43 ["Hover"]
      153 DUPTABLE                         R17 K44 [{"BackgroundStyle"}]
      154 GETTABLEKS                       R19 R2 K19 ["Dictionary"]
      156 GETTABLEKS                       R18 R19 K20 ["join"]
      158 MOVE                             R19 R11
      159 DUPTABLE                         R20 K37 [{"BorderColor", "Color"}]
      160 GETTABLEKS                       R21 R5 K38 ["MainBackground"]
      162 SETTABLEKS                       R21 R20 K35 ["BorderColor"]
      164 GETTABLEKS                       R21 R5 K45 ["DialogMainButtonHover"]
      166 SETTABLEKS                       R21 R20 K36 ["Color"]
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K40 ["BackgroundStyle"]
      171 SETTABLE                         R17 R15 R16
      172 GETTABLEKS                       R16 R4 K46 ["Disabled"]
      174 DUPTABLE                         R17 K47 [{"BackgroundStyle", "TextColor"}]
      175 GETTABLEKS                       R19 R2 K19 ["Dictionary"]
      177 GETTABLEKS                       R18 R19 K20 ["join"]
      179 MOVE                             R19 R11
      180 DUPTABLE                         R20 K37 [{"BorderColor", "Color"}]
      181 GETTABLEKS                       R21 R5 K38 ["MainBackground"]
      183 SETTABLEKS                       R21 R20 K35 ["BorderColor"]
      185 GETTABLEKS                       R21 R5 K48 ["DialogMainButtonDisabled"]
      187 SETTABLEKS                       R21 R20 K36 ["Color"]
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K40 ["BackgroundStyle"]
      192 GETTABLEKS                       R18 R5 K49 ["DialogMainButtonTextDisabled"]
      194 SETTABLEKS                       R18 R17 K42 ["TextColor"]
      196 SETTABLE                         R17 R15 R16
      197 DUPCLOSURE                       R16 K50 [PROTO_0]
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R5
      202 DUPCLOSURE                       R17 K51 [PROTO_1]
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R4
      207 NEWTABLE                         R18 32 0
      209 LOADN                            R19 5
      210 SETTABLEKS                       R19 R18 K52 ["IconPadding"]
      212 GETIMPORT                        R19 K55 [UDim2.fromOffset]
      214 LOADN                            R20 16
      215 LOADN                            R21 16
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K56 ["IconSize"]
      219 LOADN                            R19 0
      220 SETTABLEKS                       R19 R18 K57 ["Padding"]
      222 GETIMPORT                        R19 K60 [Enum.TextXAlignment.Center]
      224 SETTABLEKS                       R19 R18 K58 ["TextXAlignment"]
      226 GETIMPORT                        R19 K62 [Enum.TextYAlignment.Center]
      228 SETTABLEKS                       R19 R18 K61 ["TextYAlignment"]
      230 GETTABLEKS                       R19 R5 K63 ["ButtonText"]
      232 SETTABLEKS                       R19 R18 K42 ["TextColor"]
      234 SETTABLEKS                       R6 R18 K34 ["Background"]
      236 GETTABLEKS                       R20 R2 K19 ["Dictionary"]
      238 GETTABLEKS                       R19 R20 K20 ["join"]
      240 MOVE                             R20 R11
      241 DUPTABLE                         R21 K64 [{"Color"}]
      242 GETTABLEKS                       R22 R5 K65 ["Button"]
      244 SETTABLEKS                       R22 R21 K36 ["Color"]
      246 CALL                             R19 2 1
      247 SETTABLEKS                       R19 R18 K40 ["BackgroundStyle"]
      249 GETTABLEKS                       R19 R4 K43 ["Hover"]
      251 DUPTABLE                         R20 K44 [{"BackgroundStyle"}]
      252 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      254 GETTABLEKS                       R21 R22 K20 ["join"]
      256 MOVE                             R22 R11
      257 DUPTABLE                         R23 K64 [{"Color"}]
      258 GETTABLEKS                       R24 R5 K66 ["ButtonHover"]
      260 SETTABLEKS                       R24 R23 K36 ["Color"]
      262 CALL                             R21 2 1
      263 SETTABLEKS                       R21 R20 K40 ["BackgroundStyle"]
      265 SETTABLE                         R20 R18 R19
      266 GETTABLEKS                       R19 R4 K46 ["Disabled"]
      268 DUPTABLE                         R20 K47 [{"BackgroundStyle", "TextColor"}]
      269 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      271 GETTABLEKS                       R21 R22 K20 ["join"]
      273 MOVE                             R22 R11
      274 DUPTABLE                         R23 K64 [{"Color"}]
      275 GETTABLEKS                       R24 R5 K67 ["ButtonDisabled"]
      277 SETTABLEKS                       R24 R23 K36 ["Color"]
      279 CALL                             R21 2 1
      280 SETTABLEKS                       R21 R20 K40 ["BackgroundStyle"]
      282 GETTABLEKS                       R21 R5 K68 ["ButtonTextDisabled"]
      284 SETTABLEKS                       R21 R20 K42 ["TextColor"]
      286 SETTABLE                         R20 R18 R19
      287 GETTABLEKS                       R19 R4 K69 ["Pressed"]
      289 DUPTABLE                         R20 K44 [{"BackgroundStyle"}]
      290 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      292 GETTABLEKS                       R21 R22 K20 ["join"]
      294 MOVE                             R22 R11
      295 DUPTABLE                         R23 K64 [{"Color"}]
      296 GETTABLEKS                       R24 R5 K70 ["ButtonPressed"]
      298 SETTABLEKS                       R24 R23 K36 ["Color"]
      300 CALL                             R21 2 1
      301 SETTABLEKS                       R21 R20 K40 ["BackgroundStyle"]
      303 SETTABLE                         R20 R18 R19
      304 NEWTABLE                         R19 8 0
      306 SETTABLEKS                       R7 R19 K34 ["Background"]
      308 DUPTABLE                         R20 K64 [{"Color"}]
      309 GETTABLEKS                       R21 R5 K71 ["SubBackground"]
      311 SETTABLEKS                       R21 R20 K36 ["Color"]
      313 SETTABLEKS                       R20 R19 K40 ["BackgroundStyle"]
      315 GETTABLEKS                       R20 R4 K46 ["Disabled"]
      317 DUPTABLE                         R21 K47 [{"BackgroundStyle", "TextColor"}]
      318 DUPTABLE                         R22 K64 [{"Color"}]
      319 GETTABLEKS                       R23 R5 K67 ["ButtonDisabled"]
      321 SETTABLEKS                       R23 R22 K36 ["Color"]
      323 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      325 GETTABLEKS                       R22 R5 K68 ["ButtonTextDisabled"]
      327 SETTABLEKS                       R22 R21 K42 ["TextColor"]
      329 SETTABLE                         R21 R19 R20
      330 GETTABLEKS                       R20 R4 K43 ["Hover"]
      332 DUPTABLE                         R21 K44 [{"BackgroundStyle"}]
      333 GETTABLEKS                       R23 R2 K19 ["Dictionary"]
      335 GETTABLEKS                       R22 R23 K20 ["join"]
      337 MOVE                             R23 R11
      338 DUPTABLE                         R24 K64 [{"Color"}]
      339 GETTABLEKS                       R25 R5 K66 ["ButtonHover"]
      341 SETTABLEKS                       R25 R24 K36 ["Color"]
      343 CALL                             R22 2 1
      344 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      346 SETTABLE                         R21 R19 R20
      347 GETTABLEKS                       R20 R4 K69 ["Pressed"]
      349 DUPTABLE                         R21 K47 [{"BackgroundStyle", "TextColor"}]
      350 DUPTABLE                         R22 K64 [{"Color"}]
      351 GETTABLEKS                       R23 R5 K70 ["ButtonPressed"]
      353 SETTABLEKS                       R23 R22 K36 ["Color"]
      355 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      357 GETTABLEKS                       R22 R5 K68 ["ButtonTextDisabled"]
      359 SETTABLEKS                       R22 R21 K42 ["TextColor"]
      361 SETTABLE                         R21 R19 R20
      362 GETTABLEKS                       R20 R4 K72 ["Selected"]
      364 DUPTABLE                         R21 K47 [{"BackgroundStyle", "TextColor"}]
      365 GETTABLEKS                       R23 R2 K19 ["Dictionary"]
      367 GETTABLEKS                       R22 R23 K20 ["join"]
      369 MOVE                             R23 R11
      370 DUPTABLE                         R24 K64 [{"Color"}]
      371 GETTABLEKS                       R25 R5 K73 ["ActionActivated"]
      373 SETTABLEKS                       R25 R24 K36 ["Color"]
      375 CALL                             R22 2 1
      376 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      378 GETTABLEKS                       R22 R5 K68 ["ButtonTextDisabled"]
      380 SETTABLEKS                       R22 R21 K42 ["TextColor"]
      382 SETTABLE                         R21 R19 R20
      383 SETTABLEKS                       R19 R18 K74 ["&RoundSubtle"]
      385 MOVE                             R19 R16
      386 MOVE                             R20 R12
      387 CALL                             R19 1 1
      388 SETTABLEKS                       R19 R18 K75 ["&RoundLeft"]
      390 MOVE                             R19 R16
      391 MOVE                             R20 R13
      392 CALL                             R19 1 1
      393 SETTABLEKS                       R19 R18 K76 ["&RoundCenter"]
      395 MOVE                             R19 R16
      396 MOVE                             R20 R14
      397 CALL                             R19 1 1
      398 SETTABLEKS                       R19 R18 K77 ["&RoundRight"]
      400 MOVE                             R19 R17
      401 MOVE                             R20 R12
      402 CALL                             R19 1 1
      403 SETTABLEKS                       R19 R18 K78 ["&RoundLeftActive"]
      405 MOVE                             R19 R17
      406 MOVE                             R20 R13
      407 CALL                             R19 1 1
      408 SETTABLEKS                       R19 R18 K79 ["&RoundCenterActive"]
      410 MOVE                             R19 R17
      411 MOVE                             R20 R14
      412 CALL                             R19 1 1
      413 SETTABLEKS                       R19 R18 K80 ["&RoundRightActive"]
      415 DUPTABLE                         R19 K81 [{"Background"}]
      416 SETTABLEKS                       R7 R19 K34 ["Background"]
      418 SETTABLEKS                       R19 R18 K82 ["&Round"]
      420 SETTABLEKS                       R15 R18 K83 ["&RoundPrimary"]
      422 DUPTABLE                         R19 K85 [{"Background", "TextSize"}]
      423 SETTABLEKS                       R7 R19 K34 ["Background"]
      425 LOADN                            R20 22
      426 SETTABLEKS                       R20 R19 K84 ["TextSize"]
      428 SETTABLEKS                       R19 R18 K86 ["&RoundLargeText"]
      430 GETTABLEKS                       R20 R2 K19 ["Dictionary"]
      432 GETTABLEKS                       R19 R20 K20 ["join"]
      434 MOVE                             R20 R15
      435 DUPTABLE                         R21 K87 [{"Font", "TextSize"}]
      436 GETIMPORT                        R22 K89 [Enum.Font.SourceSans]
      438 SETTABLEKS                       R22 R21 K31 ["Font"]
      440 LOADN                            R22 22
      441 SETTABLEKS                       R22 R21 K84 ["TextSize"]
      443 CALL                             R19 2 1
      444 SETTABLEKS                       R19 R18 K90 ["&RoundLargeTextPrimary"]
      446 NEWTABLE                         R19 8 0
      448 GETIMPORT                        R20 K33 [Enum.Font.SourceSansBold]
      450 SETTABLEKS                       R20 R19 K31 ["Font"]
      452 SETTABLEKS                       R7 R19 K34 ["Background"]
      454 GETTABLEKS                       R21 R2 K19 ["Dictionary"]
      456 GETTABLEKS                       R20 R21 K20 ["join"]
      458 MOVE                             R21 R11
      459 DUPTABLE                         R22 K37 [{"BorderColor", "Color"}]
      460 GETTABLEKS                       R23 R5 K39 ["DialogMainButton"]
      462 SETTABLEKS                       R23 R22 K35 ["BorderColor"]
      464 GETTABLEKS                       R23 R5 K65 ["Button"]
      466 SETTABLEKS                       R23 R22 K36 ["Color"]
      468 CALL                             R20 2 1
      469 SETTABLEKS                       R20 R19 K40 ["BackgroundStyle"]
      471 GETTABLEKS                       R20 R5 K41 ["DialogMainButtonText"]
      473 SETTABLEKS                       R20 R19 K42 ["TextColor"]
      475 GETTABLEKS                       R20 R4 K43 ["Hover"]
      477 DUPTABLE                         R21 K44 [{"BackgroundStyle"}]
      478 GETTABLEKS                       R23 R2 K19 ["Dictionary"]
      480 GETTABLEKS                       R22 R23 K20 ["join"]
      482 MOVE                             R23 R11
      483 DUPTABLE                         R24 K37 [{"BorderColor", "Color"}]
      484 GETTABLEKS                       R25 R5 K39 ["DialogMainButton"]
      486 SETTABLEKS                       R25 R24 K35 ["BorderColor"]
      488 GETTABLEKS                       R25 R5 K66 ["ButtonHover"]
      490 SETTABLEKS                       R25 R24 K36 ["Color"]
      492 CALL                             R22 2 1
      493 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      495 SETTABLE                         R21 R19 R20
      496 GETTABLEKS                       R20 R4 K46 ["Disabled"]
      498 DUPTABLE                         R21 K47 [{"BackgroundStyle", "TextColor"}]
      499 GETTABLEKS                       R23 R2 K19 ["Dictionary"]
      501 GETTABLEKS                       R22 R23 K20 ["join"]
      503 MOVE                             R23 R11
      504 DUPTABLE                         R24 K37 [{"BorderColor", "Color"}]
      505 GETTABLEKS                       R25 R5 K39 ["DialogMainButton"]
      507 SETTABLEKS                       R25 R24 K35 ["BorderColor"]
      509 GETTABLEKS                       R25 R5 K67 ["ButtonDisabled"]
      511 SETTABLEKS                       R25 R24 K36 ["Color"]
      513 CALL                             R22 2 1
      514 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      516 GETTABLEKS                       R22 R5 K49 ["DialogMainButtonTextDisabled"]
      518 SETTABLEKS                       R22 R21 K42 ["TextColor"]
      520 SETTABLE                         R21 R19 R20
      521 SETTABLEKS                       R19 R18 K91 ["&RoundActive"]
      523 NEWTABLE                         R19 8 0
      525 SETTABLEKS                       R8 R19 K92 ["Foreground"]
      527 GETIMPORT                        R20 K55 [UDim2.fromOffset]
      529 LOADN                            R21 24
      530 LOADN                            R22 24
      531 CALL                             R20 2 1
      532 SETTABLEKS                       R20 R19 K93 ["Size"]
      534 DUPTABLE                         R20 K94 [{"Image", "Color"}]
      535 LOADK                            R21 K95 ["rbxasset://textures/StudioSharedUI/clear.png"]
      536 SETTABLEKS                       R21 R20 K16 ["Image"]
      538 GETTABLEKS                       R21 R5 K96 ["SubText"]
      540 SETTABLEKS                       R21 R20 K36 ["Color"]
      542 SETTABLEKS                       R20 R19 K97 ["ForegroundStyle"]
      544 GETTABLEKS                       R20 R4 K46 ["Disabled"]
      546 DUPTABLE                         R21 K98 [{"ForegroundStyle"}]
      547 DUPTABLE                         R22 K94 [{"Image", "Color"}]
      548 LOADK                            R23 K95 ["rbxasset://textures/StudioSharedUI/clear.png"]
      549 SETTABLEKS                       R23 R22 K16 ["Image"]
      551 GETTABLEKS                       R23 R5 K67 ["ButtonDisabled"]
      553 SETTABLEKS                       R23 R22 K36 ["Color"]
      555 SETTABLEKS                       R22 R21 K97 ["ForegroundStyle"]
      557 SETTABLE                         R21 R19 R20
      558 GETTABLEKS                       R20 R4 K43 ["Hover"]
      560 DUPTABLE                         R21 K98 [{"ForegroundStyle"}]
      561 DUPTABLE                         R22 K94 [{"Image", "Color"}]
      562 LOADK                            R23 K99 ["rbxasset://textures/StudioSharedUI/clear-hover.png"]
      563 SETTABLEKS                       R23 R22 K16 ["Image"]
      565 GETTABLEKS                       R23 R5 K96 ["SubText"]
      567 SETTABLEKS                       R23 R22 K36 ["Color"]
      569 SETTABLEKS                       R22 R21 K97 ["ForegroundStyle"]
      571 SETTABLE                         R21 R19 R20
      572 SETTABLEKS                       R19 R18 K100 ["&Close"]
      574 NEWTABLE                         R19 4 0
      576 GETIMPORT                        R20 K102 [Enum.Font.BuilderSans]
      578 SETTABLEKS                       R20 R19 K31 ["Font"]
      580 DUPTABLE                         R20 K104 [{"Transparency"}]
      581 LOADN                            R21 1
      582 SETTABLEKS                       R21 R20 K103 ["Transparency"]
      584 SETTABLEKS                       R20 R19 K40 ["BackgroundStyle"]
      586 GETTABLEKS                       R20 R4 K43 ["Hover"]
      588 DUPTABLE                         R21 K44 [{"BackgroundStyle"}]
      589 DUPTABLE                         R22 K105 [{"Color", "Transparency"}]
      590 GETTABLEKS                       R23 R5 K106 ["ActionSecondaryHover"]
      592 SETTABLEKS                       R23 R22 K36 ["Color"]
      594 GETTABLEKS                       R23 R5 K107 ["ActionSecondaryHoverTransparency"]
      596 SETTABLEKS                       R23 R22 K103 ["Transparency"]
      598 SETTABLEKS                       R22 R21 K40 ["BackgroundStyle"]
      600 SETTABLE                         R21 R19 R20
      601 SETTABLEKS                       R19 R18 K108 ["&ModernDropdown"]
      603 RETURN                           R18 1
