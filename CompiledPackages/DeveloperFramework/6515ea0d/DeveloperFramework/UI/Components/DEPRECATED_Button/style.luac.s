PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K0 ["Background"]
        5 SETTABLEKS                       R0 R1 K1 ["BackgroundStyle"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Hover"]
       10 DUPTABLE                         R3 K3 [{"BackgroundStyle"}]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       14 GETTABLEKS                       R4 R4 K5 ["join"]
       16 MOVE                             R5 R0
       17 DUPTABLE                         R6 K7 [{"Color"}]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K8 ["ButtonHover"]
       21 SETTABLEKS                       R7 R6 K6 ["Color"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K1 ["BackgroundStyle"]
       26 SETTABLE                         R3 R1 R2
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K9 ["Disabled"]
       30 DUPTABLE                         R3 K11 [{"BackgroundStyle", "TextColor"}]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       34 GETTABLEKS                       R4 R4 K5 ["join"]
       36 MOVE                             R5 R0
       37 DUPTABLE                         R6 K7 [{"Color"}]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K12 ["ButtonDisabled"]
       41 SETTABLEKS                       R7 R6 K6 ["Color"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K1 ["BackgroundStyle"]
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R4 R4 K13 ["ButtonTextDisabled"]
       49 SETTABLEKS                       R4 R3 K10 ["TextColor"]
       51 SETTABLE                         R3 R1 R2
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K14 ["Pressed"]
       55 DUPTABLE                         R3 K3 [{"BackgroundStyle"}]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       59 GETTABLEKS                       R4 R4 K5 ["join"]
       61 MOVE                             R5 R0
       62 DUPTABLE                         R6 K7 [{"Color"}]
       63 GETUPVAL                         R7 3
       64 GETTABLEKS                       R7 R7 K15 ["ButtonPressed"]
       66 SETTABLEKS                       R7 R6 K6 ["Color"]
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K1 ["BackgroundStyle"]
       71 SETTABLE                         R3 R1 R2
       72 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K0 ["Background"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K2 ["join"]
       10 MOVE                             R3 R0
       11 DUPTABLE                         R4 K4 [{"Color"}]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K5 ["ActionActivated"]
       15 SETTABLEKS                       R5 R4 K3 ["Color"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K6 ["BackgroundStyle"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K7 ["DialogMainButtonText"]
       23 SETTABLEKS                       R2 R1 K8 ["TextColor"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K9 ["Hover"]
       28 DUPTABLE                         R3 K10 [{"BackgroundStyle"}]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
       32 GETTABLEKS                       R4 R4 K2 ["join"]
       34 MOVE                             R5 R0
       35 DUPTABLE                         R6 K4 [{"Color"}]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K11 ["ButtonHover"]
       39 SETTABLEKS                       R7 R6 K3 ["Color"]
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K6 ["BackgroundStyle"]
       44 SETTABLE                         R3 R1 R2
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K12 ["Disabled"]
       48 DUPTABLE                         R3 K13 [{"BackgroundStyle", "TextColor"}]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
       52 GETTABLEKS                       R4 R4 K2 ["join"]
       54 MOVE                             R5 R0
       55 DUPTABLE                         R6 K4 [{"Color"}]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K14 ["DialogMainButtonDisabled"]
       59 SETTABLEKS                       R7 R6 K3 ["Color"]
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K6 ["BackgroundStyle"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K15 ["DialogMainButtonTextDisabled"]
       67 SETTABLEKS                       R4 R3 K8 ["TextColor"]
       69 SETTABLE                         R3 R1 R2
       70 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["deepCopy"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["StyleModifier"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Style"]
       34 GETTABLEKS                       R6 R6 K12 ["StyleKey"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K2 ["UI"]
       41 GETTABLEKS                       R7 R7 K13 ["Components"]
       43 GETTABLEKS                       R7 R7 K14 ["Box"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K2 ["UI"]
       50 GETTABLEKS                       R8 R8 K13 ["Components"]
       52 GETTABLEKS                       R8 R8 K15 ["RoundBox"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R9 K13 ["Components"]
       61 GETTABLEKS                       R9 R9 K16 ["Image"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K2 ["UI"]
       68 GETTABLEKS                       R10 R10 K13 ["Components"]
       70 GETTABLEKS                       R10 R10 K17 ["UIFolderData"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R9 K15 ["RoundBox"]
       77 GETTABLEKS                       R11 R11 K18 ["style"]
       79 CALL                             R10 1 1
       80 MOVE                             R11 R3
       81 MOVE                             R12 R10
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R12 R2 K19 ["Dictionary"]
       85 GETTABLEKS                       R12 R12 K20 ["join"]
       87 MOVE                             R13 R11
       88 DUPTABLE                         R14 K25 [{["BackgroundImage"] = "rbxasset://textures/StudioSharedUI/RoundedLeftBackground.png", ["BorderImage"] = "rbxasset://textures/StudioSharedUI/RoundedLeftBorder.png"}]
       89 CALL                             R12 2 1
       90 GETTABLEKS                       R13 R2 K19 ["Dictionary"]
       92 GETTABLEKS                       R13 R13 K20 ["join"]
       94 MOVE                             R14 R11
       95 DUPTABLE                         R15 K28 [{["BackgroundImage"] = "rbxasset://textures/StudioSharedUI/RoundedCenterBackground.png", ["BorderImage"] = "rbxasset://textures/StudioSharedUI/RoundedCenterBorder.png"}]
       96 CALL                             R13 2 1
       97 GETTABLEKS                       R14 R2 K19 ["Dictionary"]
       99 GETTABLEKS                       R14 R14 K20 ["join"]
      101 MOVE                             R15 R11
      102 DUPTABLE                         R16 K31 [{["BackgroundImage"] = "rbxasset://textures/StudioSharedUI/RoundedRightBackground.png", ["BorderImage"] = "rbxasset://textures/StudioSharedUI/RoundedRightBorder.png"}]
      103 CALL                             R14 2 1
      104 NEWTABLE                         R15 8 0
      106 GETIMPORT                        R16 K35 [Enum.Font.SourceSansBold]
      108 SETTABLEKS                       R16 R15 K33 ["Font"]
      110 SETTABLEKS                       R7 R15 K36 ["Background"]
      112 GETTABLEKS                       R16 R2 K19 ["Dictionary"]
      114 GETTABLEKS                       R16 R16 K20 ["join"]
      116 MOVE                             R17 R11
      117 DUPTABLE                         R18 K39 [{"BorderColor", "Color"}]
      118 GETTABLEKS                       R19 R5 K40 ["MainBackground"]
      120 SETTABLEKS                       R19 R18 K37 ["BorderColor"]
      122 GETTABLEKS                       R19 R5 K41 ["DialogMainButton"]
      124 SETTABLEKS                       R19 R18 K38 ["Color"]
      126 CALL                             R16 2 1
      127 SETTABLEKS                       R16 R15 K42 ["BackgroundStyle"]
      129 GETTABLEKS                       R16 R5 K43 ["DialogMainButtonText"]
      131 SETTABLEKS                       R16 R15 K44 ["TextColor"]
      133 GETTABLEKS                       R16 R4 K45 ["Hover"]
      135 DUPTABLE                         R17 K46 [{"BackgroundStyle"}]
      136 GETTABLEKS                       R18 R2 K19 ["Dictionary"]
      138 GETTABLEKS                       R18 R18 K20 ["join"]
      140 MOVE                             R19 R11
      141 DUPTABLE                         R20 K39 [{"BorderColor", "Color"}]
      142 GETTABLEKS                       R21 R5 K40 ["MainBackground"]
      144 SETTABLEKS                       R21 R20 K37 ["BorderColor"]
      146 GETTABLEKS                       R21 R5 K47 ["DialogMainButtonHover"]
      148 SETTABLEKS                       R21 R20 K38 ["Color"]
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K42 ["BackgroundStyle"]
      153 SETTABLE                         R17 R15 R16
      154 GETTABLEKS                       R16 R4 K48 ["Disabled"]
      156 DUPTABLE                         R17 K49 [{"BackgroundStyle", "TextColor"}]
      157 GETTABLEKS                       R18 R2 K19 ["Dictionary"]
      159 GETTABLEKS                       R18 R18 K20 ["join"]
      161 MOVE                             R19 R11
      162 DUPTABLE                         R20 K39 [{"BorderColor", "Color"}]
      163 GETTABLEKS                       R21 R5 K40 ["MainBackground"]
      165 SETTABLEKS                       R21 R20 K37 ["BorderColor"]
      167 GETTABLEKS                       R21 R5 K50 ["DialogMainButtonDisabled"]
      169 SETTABLEKS                       R21 R20 K38 ["Color"]
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K42 ["BackgroundStyle"]
      174 GETTABLEKS                       R18 R5 K51 ["DialogMainButtonTextDisabled"]
      176 SETTABLEKS                       R18 R17 K44 ["TextColor"]
      178 SETTABLE                         R17 R15 R16
      179 DUPCLOSURE                       R16 K52 [PROTO_0]
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R5
      184 DUPCLOSURE                       R17 K53 [PROTO_1]
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R4
      189 NEWTABLE                         R18 32 0
      191 LOADN                            R19 5
      192 SETTABLEKS                       R19 R18 K54 ["IconPadding"]
      194 GETIMPORT                        R19 K57 [UDim2.fromOffset]
      196 LOADN                            R20 16
      197 LOADN                            R21 16
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K58 ["IconSize"]
      201 LOADN                            R19 0
      202 SETTABLEKS                       R19 R18 K59 ["Padding"]
      204 GETIMPORT                        R19 K62 [Enum.TextXAlignment.Center]
      206 SETTABLEKS                       R19 R18 K60 ["TextXAlignment"]
      208 GETIMPORT                        R19 K64 [Enum.TextYAlignment.Center]
      210 SETTABLEKS                       R19 R18 K63 ["TextYAlignment"]
      212 GETTABLEKS                       R19 R5 K65 ["ButtonText"]
      214 SETTABLEKS                       R19 R18 K44 ["TextColor"]
      216 SETTABLEKS                       R6 R18 K36 ["Background"]
      218 GETTABLEKS                       R19 R2 K19 ["Dictionary"]
      220 GETTABLEKS                       R19 R19 K20 ["join"]
      222 MOVE                             R20 R11
      223 DUPTABLE                         R21 K66 [{"Color"}]
      224 GETTABLEKS                       R22 R5 K67 ["Button"]
      226 SETTABLEKS                       R22 R21 K38 ["Color"]
      228 CALL                             R19 2 1
      229 SETTABLEKS                       R19 R18 K42 ["BackgroundStyle"]
      231 GETTABLEKS                       R19 R4 K45 ["Hover"]
      233 DUPTABLE                         R20 K46 [{"BackgroundStyle"}]
      234 GETTABLEKS                       R21 R2 K19 ["Dictionary"]
      236 GETTABLEKS                       R21 R21 K20 ["join"]
      238 MOVE                             R22 R11
      239 DUPTABLE                         R23 K66 [{"Color"}]
      240 GETTABLEKS                       R24 R5 K68 ["ButtonHover"]
      242 SETTABLEKS                       R24 R23 K38 ["Color"]
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K42 ["BackgroundStyle"]
      247 SETTABLE                         R20 R18 R19
      248 GETTABLEKS                       R19 R4 K48 ["Disabled"]
      250 DUPTABLE                         R20 K49 [{"BackgroundStyle", "TextColor"}]
      251 GETTABLEKS                       R21 R2 K19 ["Dictionary"]
      253 GETTABLEKS                       R21 R21 K20 ["join"]
      255 MOVE                             R22 R11
      256 DUPTABLE                         R23 K66 [{"Color"}]
      257 GETTABLEKS                       R24 R5 K69 ["ButtonDisabled"]
      259 SETTABLEKS                       R24 R23 K38 ["Color"]
      261 CALL                             R21 2 1
      262 SETTABLEKS                       R21 R20 K42 ["BackgroundStyle"]
      264 GETTABLEKS                       R21 R5 K70 ["ButtonTextDisabled"]
      266 SETTABLEKS                       R21 R20 K44 ["TextColor"]
      268 SETTABLE                         R20 R18 R19
      269 GETTABLEKS                       R19 R4 K71 ["Pressed"]
      271 DUPTABLE                         R20 K46 [{"BackgroundStyle"}]
      272 GETTABLEKS                       R21 R2 K19 ["Dictionary"]
      274 GETTABLEKS                       R21 R21 K20 ["join"]
      276 MOVE                             R22 R11
      277 DUPTABLE                         R23 K66 [{"Color"}]
      278 GETTABLEKS                       R24 R5 K72 ["ButtonPressed"]
      280 SETTABLEKS                       R24 R23 K38 ["Color"]
      282 CALL                             R21 2 1
      283 SETTABLEKS                       R21 R20 K42 ["BackgroundStyle"]
      285 SETTABLE                         R20 R18 R19
      286 NEWTABLE                         R19 8 0
      288 SETTABLEKS                       R7 R19 K36 ["Background"]
      290 DUPTABLE                         R20 K66 [{"Color"}]
      291 GETTABLEKS                       R21 R5 K73 ["SubBackground"]
      293 SETTABLEKS                       R21 R20 K38 ["Color"]
      295 SETTABLEKS                       R20 R19 K42 ["BackgroundStyle"]
      297 GETTABLEKS                       R20 R4 K48 ["Disabled"]
      299 DUPTABLE                         R21 K49 [{"BackgroundStyle", "TextColor"}]
      300 DUPTABLE                         R22 K66 [{"Color"}]
      301 GETTABLEKS                       R23 R5 K69 ["ButtonDisabled"]
      303 SETTABLEKS                       R23 R22 K38 ["Color"]
      305 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      307 GETTABLEKS                       R22 R5 K70 ["ButtonTextDisabled"]
      309 SETTABLEKS                       R22 R21 K44 ["TextColor"]
      311 SETTABLE                         R21 R19 R20
      312 GETTABLEKS                       R20 R4 K45 ["Hover"]
      314 DUPTABLE                         R21 K46 [{"BackgroundStyle"}]
      315 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      317 GETTABLEKS                       R22 R22 K20 ["join"]
      319 MOVE                             R23 R11
      320 DUPTABLE                         R24 K66 [{"Color"}]
      321 GETTABLEKS                       R25 R5 K68 ["ButtonHover"]
      323 SETTABLEKS                       R25 R24 K38 ["Color"]
      325 CALL                             R22 2 1
      326 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      328 SETTABLE                         R21 R19 R20
      329 GETTABLEKS                       R20 R4 K71 ["Pressed"]
      331 DUPTABLE                         R21 K49 [{"BackgroundStyle", "TextColor"}]
      332 DUPTABLE                         R22 K66 [{"Color"}]
      333 GETTABLEKS                       R23 R5 K72 ["ButtonPressed"]
      335 SETTABLEKS                       R23 R22 K38 ["Color"]
      337 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      339 GETTABLEKS                       R22 R5 K70 ["ButtonTextDisabled"]
      341 SETTABLEKS                       R22 R21 K44 ["TextColor"]
      343 SETTABLE                         R21 R19 R20
      344 GETTABLEKS                       R20 R4 K74 ["Selected"]
      346 DUPTABLE                         R21 K49 [{"BackgroundStyle", "TextColor"}]
      347 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      349 GETTABLEKS                       R22 R22 K20 ["join"]
      351 MOVE                             R23 R11
      352 DUPTABLE                         R24 K66 [{"Color"}]
      353 GETTABLEKS                       R25 R5 K75 ["ActionActivated"]
      355 SETTABLEKS                       R25 R24 K38 ["Color"]
      357 CALL                             R22 2 1
      358 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      360 GETTABLEKS                       R22 R5 K70 ["ButtonTextDisabled"]
      362 SETTABLEKS                       R22 R21 K44 ["TextColor"]
      364 SETTABLE                         R21 R19 R20
      365 SETTABLEKS                       R19 R18 K76 ["&RoundSubtle"]
      367 MOVE                             R19 R16
      368 MOVE                             R20 R12
      369 CALL                             R19 1 1
      370 SETTABLEKS                       R19 R18 K77 ["&RoundLeft"]
      372 MOVE                             R19 R16
      373 MOVE                             R20 R13
      374 CALL                             R19 1 1
      375 SETTABLEKS                       R19 R18 K78 ["&RoundCenter"]
      377 MOVE                             R19 R16
      378 MOVE                             R20 R14
      379 CALL                             R19 1 1
      380 SETTABLEKS                       R19 R18 K79 ["&RoundRight"]
      382 MOVE                             R19 R17
      383 MOVE                             R20 R12
      384 CALL                             R19 1 1
      385 SETTABLEKS                       R19 R18 K80 ["&RoundLeftActive"]
      387 MOVE                             R19 R17
      388 MOVE                             R20 R13
      389 CALL                             R19 1 1
      390 SETTABLEKS                       R19 R18 K81 ["&RoundCenterActive"]
      392 MOVE                             R19 R17
      393 MOVE                             R20 R14
      394 CALL                             R19 1 1
      395 SETTABLEKS                       R19 R18 K82 ["&RoundRightActive"]
      397 DUPTABLE                         R19 K83 [{"Background"}]
      398 SETTABLEKS                       R7 R19 K36 ["Background"]
      400 SETTABLEKS                       R19 R18 K84 ["&Round"]
      402 SETTABLEKS                       R15 R18 K85 ["&RoundPrimary"]
      404 DUPTABLE                         R19 K88 [{["Background"], ["TextSize"] = 22}]
      405 SETTABLEKS                       R7 R19 K36 ["Background"]
      407 SETTABLEKS                       R19 R18 K89 ["&RoundLargeText"]
      409 GETTABLEKS                       R19 R2 K19 ["Dictionary"]
      411 GETTABLEKS                       R19 R19 K20 ["join"]
      413 MOVE                             R20 R15
      414 DUPTABLE                         R21 K90 [{["Font"], ["TextSize"] = 22}]
      415 GETIMPORT                        R22 K92 [Enum.Font.SourceSans]
      417 SETTABLEKS                       R22 R21 K33 ["Font"]
      419 CALL                             R19 2 1
      420 SETTABLEKS                       R19 R18 K93 ["&RoundLargeTextPrimary"]
      422 NEWTABLE                         R19 8 0
      424 GETIMPORT                        R20 K35 [Enum.Font.SourceSansBold]
      426 SETTABLEKS                       R20 R19 K33 ["Font"]
      428 SETTABLEKS                       R7 R19 K36 ["Background"]
      430 GETTABLEKS                       R20 R2 K19 ["Dictionary"]
      432 GETTABLEKS                       R20 R20 K20 ["join"]
      434 MOVE                             R21 R11
      435 DUPTABLE                         R22 K39 [{"BorderColor", "Color"}]
      436 GETTABLEKS                       R23 R5 K41 ["DialogMainButton"]
      438 SETTABLEKS                       R23 R22 K37 ["BorderColor"]
      440 GETTABLEKS                       R23 R5 K67 ["Button"]
      442 SETTABLEKS                       R23 R22 K38 ["Color"]
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K42 ["BackgroundStyle"]
      447 GETTABLEKS                       R20 R5 K43 ["DialogMainButtonText"]
      449 SETTABLEKS                       R20 R19 K44 ["TextColor"]
      451 GETTABLEKS                       R20 R4 K45 ["Hover"]
      453 DUPTABLE                         R21 K46 [{"BackgroundStyle"}]
      454 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      456 GETTABLEKS                       R22 R22 K20 ["join"]
      458 MOVE                             R23 R11
      459 DUPTABLE                         R24 K39 [{"BorderColor", "Color"}]
      460 GETTABLEKS                       R25 R5 K41 ["DialogMainButton"]
      462 SETTABLEKS                       R25 R24 K37 ["BorderColor"]
      464 GETTABLEKS                       R25 R5 K68 ["ButtonHover"]
      466 SETTABLEKS                       R25 R24 K38 ["Color"]
      468 CALL                             R22 2 1
      469 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      471 SETTABLE                         R21 R19 R20
      472 GETTABLEKS                       R20 R4 K48 ["Disabled"]
      474 DUPTABLE                         R21 K49 [{"BackgroundStyle", "TextColor"}]
      475 GETTABLEKS                       R22 R2 K19 ["Dictionary"]
      477 GETTABLEKS                       R22 R22 K20 ["join"]
      479 MOVE                             R23 R11
      480 DUPTABLE                         R24 K39 [{"BorderColor", "Color"}]
      481 GETTABLEKS                       R25 R5 K41 ["DialogMainButton"]
      483 SETTABLEKS                       R25 R24 K37 ["BorderColor"]
      485 GETTABLEKS                       R25 R5 K69 ["ButtonDisabled"]
      487 SETTABLEKS                       R25 R24 K38 ["Color"]
      489 CALL                             R22 2 1
      490 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      492 GETTABLEKS                       R22 R5 K51 ["DialogMainButtonTextDisabled"]
      494 SETTABLEKS                       R22 R21 K44 ["TextColor"]
      496 SETTABLE                         R21 R19 R20
      497 SETTABLEKS                       R19 R18 K94 ["&RoundActive"]
      499 NEWTABLE                         R19 8 0
      501 SETTABLEKS                       R8 R19 K95 ["Foreground"]
      503 GETIMPORT                        R20 K57 [UDim2.fromOffset]
      505 LOADN                            R21 24
      506 LOADN                            R22 24
      507 CALL                             R20 2 1
      508 SETTABLEKS                       R20 R19 K96 ["Size"]
      510 DUPTABLE                         R20 K98 [{["Image"] = "rbxasset://textures/StudioSharedUI/clear.png", ["Color"]}]
      511 GETTABLEKS                       R21 R5 K99 ["SubText"]
      513 SETTABLEKS                       R21 R20 K38 ["Color"]
      515 SETTABLEKS                       R20 R19 K100 ["ForegroundStyle"]
      517 GETTABLEKS                       R20 R4 K48 ["Disabled"]
      519 DUPTABLE                         R21 K101 [{"ForegroundStyle"}]
      520 DUPTABLE                         R22 K98 [{["Image"] = "rbxasset://textures/StudioSharedUI/clear.png", ["Color"]}]
      521 GETTABLEKS                       R23 R5 K69 ["ButtonDisabled"]
      523 SETTABLEKS                       R23 R22 K38 ["Color"]
      525 SETTABLEKS                       R22 R21 K100 ["ForegroundStyle"]
      527 SETTABLE                         R21 R19 R20
      528 GETTABLEKS                       R20 R4 K45 ["Hover"]
      530 DUPTABLE                         R21 K101 [{"ForegroundStyle"}]
      531 DUPTABLE                         R22 K103 [{["Image"] = "rbxasset://textures/StudioSharedUI/clear-hover.png", ["Color"]}]
      532 GETTABLEKS                       R23 R5 K99 ["SubText"]
      534 SETTABLEKS                       R23 R22 K38 ["Color"]
      536 SETTABLEKS                       R22 R21 K100 ["ForegroundStyle"]
      538 SETTABLE                         R21 R19 R20
      539 SETTABLEKS                       R19 R18 K104 ["&Close"]
      541 NEWTABLE                         R19 4 0
      543 GETIMPORT                        R20 K106 [Enum.Font.BuilderSans]
      545 SETTABLEKS                       R20 R19 K33 ["Font"]
      547 DUPTABLE                         R20 K109 [{["Transparency"] = 1}]
      548 SETTABLEKS                       R20 R19 K42 ["BackgroundStyle"]
      550 GETTABLEKS                       R20 R4 K45 ["Hover"]
      552 DUPTABLE                         R21 K46 [{"BackgroundStyle"}]
      553 DUPTABLE                         R22 K110 [{"Color", "Transparency"}]
      554 GETTABLEKS                       R23 R5 K111 ["ActionSecondaryHover"]
      556 SETTABLEKS                       R23 R22 K38 ["Color"]
      558 GETTABLEKS                       R23 R5 K112 ["ActionSecondaryHoverTransparency"]
      560 SETTABLEKS                       R23 R22 K107 ["Transparency"]
      562 SETTABLEKS                       R22 R21 K42 ["BackgroundStyle"]
      564 SETTABLE                         R21 R19 R20
      565 SETTABLEKS                       R19 R18 K113 ["&ModernDropdown"]
      567 RETURN                           R18 1
