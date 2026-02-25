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
       18 GETTABLEKS                       R3 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K11 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 200
       26 LOADN                            R6 0
       27 LOADN                            R7 50
       28 CALL                             R3 4 1
       29 GETIMPORT                        R4 K11 [UDim2.new]
       31 LOADN                            R5 0
       32 LOADN                            R6 50
       33 LOADN                            R7 0
       34 LOADN                            R8 50
       35 CALL                             R4 4 1
       36 MOVE                             R5 R2
       37 LOADK                            R6 K12 [".Component-TokenExamples"]
       38 DUPTABLE                         R7 K14 [{"Size"}]
       39 GETIMPORT                        R8 K11 [UDim2.new]
       41 LOADN                            R9 1
       42 LOADN                            R10 0
       43 LOADN                            R11 1
       44 LOADN                            R12 0
       45 CALL                             R8 4 1
       46 SETTABLEKS                       R8 R7 K13 ["Size"]
       48 NEWTABLE                         R8 0 36
       50 MOVE                             R9 R2
       51 LOADK                            R10 K15 [">> TextLabel"]
       52 DUPTABLE                         R11 K21 [{"Size", "AutomaticSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextSize"}]
       53 GETIMPORT                        R12 K11 [UDim2.new]
       55 LOADN                            R13 1
       56 LOADN                            R14 0
       57 LOADN                            R15 1
       58 LOADN                            R16 0
       59 CALL                             R12 4 1
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 GETIMPORT                        R12 K24 [Enum.AutomaticSize.XY]
       64 SETTABLEKS                       R12 R11 K16 ["AutomaticSize"]
       66 GETIMPORT                        R12 K26 [Enum.TextXAlignment.Center]
       68 SETTABLEKS                       R12 R11 K17 ["TextXAlignment"]
       70 GETIMPORT                        R12 K27 [Enum.TextYAlignment.Center]
       72 SETTABLEKS                       R12 R11 K18 ["TextYAlignment"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K19 ["BackgroundTransparency"]
       77 LOADN                            R12 14
       78 SETTABLEKS                       R12 R11 K20 ["TextSize"]
       80 CALL                             R9 2 1
       81 MOVE                             R10 R2
       82 LOADK                            R11 K28 ["> #BackgroundDefault"]
       83 DUPTABLE                         R12 K30 [{"Size", "BackgroundColor3"}]
       84 SETTABLEKS                       R3 R12 K13 ["Size"]
       86 LOADK                            R13 K31 ["$BackgroundDefault"]
       87 SETTABLEKS                       R13 R12 K29 ["BackgroundColor3"]
       89 CALL                             R10 2 1
       90 MOVE                             R11 R2
       91 LOADK                            R12 K32 ["> #BackgroundPaper"]
       92 DUPTABLE                         R13 K30 [{"Size", "BackgroundColor3"}]
       93 SETTABLEKS                       R3 R13 K13 ["Size"]
       95 LOADK                            R14 K33 ["$BackgroundPaper"]
       96 SETTABLEKS                       R14 R13 K29 ["BackgroundColor3"]
       98 CALL                             R11 2 1
       99 MOVE                             R12 R2
      100 LOADK                            R13 K34 ["> #ForegroundMain"]
      101 DUPTABLE                         R14 K30 [{"Size", "BackgroundColor3"}]
      102 SETTABLEKS                       R3 R14 K13 ["Size"]
      104 LOADK                            R15 K35 ["$ForegroundMain"]
      105 SETTABLEKS                       R15 R14 K29 ["BackgroundColor3"]
      107 CALL                             R12 2 1
      108 MOVE                             R13 R2
      109 LOADK                            R14 K36 ["> #ForegroundMuted"]
      110 DUPTABLE                         R15 K30 [{"Size", "BackgroundColor3"}]
      111 SETTABLEKS                       R3 R15 K13 ["Size"]
      113 LOADK                            R16 K37 ["$ForegroundMuted"]
      114 SETTABLEKS                       R16 R15 K29 ["BackgroundColor3"]
      116 CALL                             R13 2 1
      117 MOVE                             R14 R2
      118 LOADK                            R15 K38 ["> #ForegroundContrast"]
      119 DUPTABLE                         R16 K30 [{"Size", "BackgroundColor3"}]
      120 SETTABLEKS                       R3 R16 K13 ["Size"]
      122 LOADK                            R17 K39 ["$ForegroundContrast"]
      123 SETTABLEKS                       R17 R16 K29 ["BackgroundColor3"]
      125 CALL                             R14 2 1
      126 MOVE                             R15 R2
      127 LOADK                            R16 K40 ["> #TextPrimary"]
      128 DUPTABLE                         R17 K42 [{"Size", "TextColor3"}]
      129 SETTABLEKS                       R3 R17 K13 ["Size"]
      131 LOADK                            R18 K43 ["$TextPrimary"]
      132 SETTABLEKS                       R18 R17 K41 ["TextColor3"]
      134 CALL                             R15 2 1
      135 MOVE                             R16 R2
      136 LOADK                            R17 K44 ["> #TextSecondary"]
      137 DUPTABLE                         R18 K42 [{"Size", "TextColor3"}]
      138 SETTABLEKS                       R3 R18 K13 ["Size"]
      140 LOADK                            R19 K45 ["$TextSecondary"]
      141 SETTABLEKS                       R19 R18 K41 ["TextColor3"]
      143 CALL                             R16 2 1
      144 MOVE                             R17 R2
      145 LOADK                            R18 K46 ["> #TextContrast"]
      146 DUPTABLE                         R19 K42 [{"Size", "TextColor3"}]
      147 SETTABLEKS                       R3 R19 K13 ["Size"]
      149 LOADK                            R20 K47 ["$TextContrast"]
      150 SETTABLEKS                       R20 R19 K41 ["TextColor3"]
      152 CALL                             R17 2 1
      153 MOVE                             R18 R2
      154 LOADK                            R19 K48 ["> #TextLink"]
      155 DUPTABLE                         R20 K42 [{"Size", "TextColor3"}]
      156 SETTABLEKS                       R3 R20 K13 ["Size"]
      158 LOADK                            R21 K49 ["$TextLink"]
      159 SETTABLEKS                       R21 R20 K41 ["TextColor3"]
      161 NEWTABLE                         R21 0 1
      163 MOVE                             R22 R2
      164 LOADK                            R23 K50 [":hover"]
      165 DUPTABLE                         R24 K51 [{"TextColor3"}]
      166 LOADK                            R25 K49 ["$TextLink"]
      167 SETTABLEKS                       R25 R24 K41 ["TextColor3"]
      169 CALL                             R22 2 -1
      170 SETLIST                          R21 R22 -1 [1]
      172 CALL                             R18 3 1
      173 MOVE                             R19 R2
      174 LOADK                            R20 K52 ["> #TextDisabled"]
      175 DUPTABLE                         R21 K42 [{"Size", "TextColor3"}]
      176 SETTABLEKS                       R3 R21 K13 ["Size"]
      178 LOADK                            R22 K53 ["$TextDisabled"]
      179 SETTABLEKS                       R22 R21 K41 ["TextColor3"]
      181 CALL                             R19 2 1
      182 MOVE                             R20 R2
      183 LOADK                            R21 K54 ["> #TextError"]
      184 DUPTABLE                         R22 K42 [{"Size", "TextColor3"}]
      185 SETTABLEKS                       R3 R22 K13 ["Size"]
      187 LOADK                            R23 K55 ["$TextError"]
      188 SETTABLEKS                       R23 R22 K41 ["TextColor3"]
      190 CALL                             R20 2 1
      191 MOVE                             R21 R2
      192 LOADK                            R22 K56 ["> #TextSuccess"]
      193 DUPTABLE                         R23 K42 [{"Size", "TextColor3"}]
      194 SETTABLEKS                       R3 R23 K13 ["Size"]
      196 LOADK                            R24 K57 ["$TextSuccess"]
      197 SETTABLEKS                       R24 R23 K41 ["TextColor3"]
      199 CALL                             R21 2 1
      200 MOVE                             R22 R2
      201 LOADK                            R23 K58 ["> #TextWarning"]
      202 DUPTABLE                         R24 K42 [{"Size", "TextColor3"}]
      203 SETTABLEKS                       R3 R24 K13 ["Size"]
      205 LOADK                            R25 K59 ["$TextWarning"]
      206 SETTABLEKS                       R25 R24 K41 ["TextColor3"]
      208 CALL                             R22 2 1
      209 MOVE                             R23 R2
      210 LOADK                            R24 K60 ["> #ErrorMain"]
      211 DUPTABLE                         R25 K30 [{"Size", "BackgroundColor3"}]
      212 SETTABLEKS                       R3 R25 K13 ["Size"]
      214 LOADK                            R26 K61 ["$ErrorMain"]
      215 SETTABLEKS                       R26 R25 K29 ["BackgroundColor3"]
      217 CALL                             R23 2 1
      218 MOVE                             R24 R2
      219 LOADK                            R25 K62 ["> #SuccessMain"]
      220 DUPTABLE                         R26 K30 [{"Size", "BackgroundColor3"}]
      221 SETTABLEKS                       R3 R26 K13 ["Size"]
      223 LOADK                            R27 K63 ["$SuccessMain"]
      224 SETTABLEKS                       R27 R26 K29 ["BackgroundColor3"]
      226 CALL                             R24 2 1
      227 SETLIST                          R8 R9 16 [1]
      229 MOVE                             R9 R2
      230 LOADK                            R10 K64 ["> #WarningMain"]
      231 DUPTABLE                         R11 K30 [{"Size", "BackgroundColor3"}]
      232 SETTABLEKS                       R3 R11 K13 ["Size"]
      234 LOADK                            R12 K65 ["$WarningMain"]
      235 SETTABLEKS                       R12 R11 K29 ["BackgroundColor3"]
      237 CALL                             R9 2 1
      238 MOVE                             R10 R2
      239 LOADK                            R11 K66 ["> #ActionHover"]
      240 DUPTABLE                         R12 K30 [{"Size", "BackgroundColor3"}]
      241 SETTABLEKS                       R3 R12 K13 ["Size"]
      243 LOADK                            R13 K67 ["$ActionEnabled"]
      244 SETTABLEKS                       R13 R12 K29 ["BackgroundColor3"]
      246 NEWTABLE                         R13 0 1
      248 MOVE                             R14 R2
      249 LOADK                            R15 K50 [":hover"]
      250 DUPTABLE                         R16 K68 [{"BackgroundColor3"}]
      251 LOADK                            R17 K69 ["$ActionHover"]
      252 SETTABLEKS                       R17 R16 K29 ["BackgroundColor3"]
      254 CALL                             R14 2 -1
      255 SETLIST                          R13 R14 -1 [1]
      257 CALL                             R10 3 1
      258 MOVE                             R11 R2
      259 LOADK                            R12 K70 ["> #ActionEnabled"]
      260 DUPTABLE                         R13 K30 [{"Size", "BackgroundColor3"}]
      261 SETTABLEKS                       R3 R13 K13 ["Size"]
      263 LOADK                            R14 K67 ["$ActionEnabled"]
      264 SETTABLEKS                       R14 R13 K29 ["BackgroundColor3"]
      266 CALL                             R11 2 1
      267 MOVE                             R12 R2
      268 LOADK                            R13 K71 ["> #ActionSelected"]
      269 DUPTABLE                         R14 K30 [{"Size", "BackgroundColor3"}]
      270 SETTABLEKS                       R3 R14 K13 ["Size"]
      272 LOADK                            R15 K72 ["$ActionSelected"]
      273 SETTABLEKS                       R15 R14 K29 ["BackgroundColor3"]
      275 CALL                             R12 2 1
      276 MOVE                             R13 R2
      277 LOADK                            R14 K73 ["> #ActionActivated"]
      278 DUPTABLE                         R15 K30 [{"Size", "BackgroundColor3"}]
      279 SETTABLEKS                       R3 R15 K13 ["Size"]
      281 LOADK                            R16 K74 ["$ActionActivated"]
      282 SETTABLEKS                       R16 R15 K29 ["BackgroundColor3"]
      284 CALL                             R13 2 1
      285 MOVE                             R14 R2
      286 LOADK                            R15 K75 ["> #ActionFocusBorder"]
      287 DUPTABLE                         R16 K77 [{"Size", "BackgroundColor3", "BorderColor3"}]
      288 SETTABLEKS                       R3 R16 K13 ["Size"]
      290 LOADK                            R17 K67 ["$ActionEnabled"]
      291 SETTABLEKS                       R17 R16 K29 ["BackgroundColor3"]
      293 LOADK                            R17 K78 ["$ActionFocusBorder"]
      294 SETTABLEKS                       R17 R16 K76 ["BorderColor3"]
      296 CALL                             R14 2 1
      297 MOVE                             R15 R2
      298 LOADK                            R16 K79 ["> #PrimaryMain"]
      299 DUPTABLE                         R17 K30 [{"Size", "BackgroundColor3"}]
      300 SETTABLEKS                       R3 R17 K13 ["Size"]
      302 LOADK                            R18 K80 ["$PrimaryMain"]
      303 SETTABLEKS                       R18 R17 K29 ["BackgroundColor3"]
      305 CALL                             R15 2 1
      306 MOVE                             R16 R2
      307 LOADK                            R17 K81 ["> #PrimaryHoverBackground"]
      308 DUPTABLE                         R18 K30 [{"Size", "BackgroundColor3"}]
      309 SETTABLEKS                       R3 R18 K13 ["Size"]
      311 LOADK                            R19 K80 ["$PrimaryMain"]
      312 SETTABLEKS                       R19 R18 K29 ["BackgroundColor3"]
      314 NEWTABLE                         R19 0 1
      316 MOVE                             R20 R2
      317 LOADK                            R21 K50 [":hover"]
      318 DUPTABLE                         R22 K68 [{"BackgroundColor3"}]
      319 LOADK                            R23 K82 ["$PrimaryHoverBackground"]
      320 SETTABLEKS                       R23 R22 K29 ["BackgroundColor3"]
      322 CALL                             R20 2 -1
      323 SETLIST                          R19 R20 -1 [1]
      325 CALL                             R16 3 1
      326 MOVE                             R17 R2
      327 LOADK                            R18 K83 ["> #SecondaryMain"]
      328 DUPTABLE                         R19 K30 [{"Size", "BackgroundColor3"}]
      329 SETTABLEKS                       R3 R19 K13 ["Size"]
      331 LOADK                            R20 K84 ["$SecondaryMain"]
      332 SETTABLEKS                       R20 R19 K29 ["BackgroundColor3"]
      334 CALL                             R17 2 1
      335 MOVE                             R18 R2
      336 LOADK                            R19 K85 ["> #SecondaryMuted"]
      337 DUPTABLE                         R20 K30 [{"Size", "BackgroundColor3"}]
      338 SETTABLEKS                       R3 R20 K13 ["Size"]
      340 LOADK                            R21 K86 ["$SecondaryMuted"]
      341 SETTABLEKS                       R21 R20 K29 ["BackgroundColor3"]
      343 CALL                             R18 2 1
      344 MOVE                             R19 R2
      345 LOADK                            R20 K87 ["> #SecondaryContrast"]
      346 DUPTABLE                         R21 K30 [{"Size", "BackgroundColor3"}]
      347 SETTABLEKS                       R3 R21 K13 ["Size"]
      349 LOADK                            R22 K88 ["$SecondaryContrast"]
      350 SETTABLEKS                       R22 R21 K29 ["BackgroundColor3"]
      352 CALL                             R19 2 1
      353 MOVE                             R20 R2
      354 LOADK                            R21 K89 ["> #SecondaryHoverBackground"]
      355 DUPTABLE                         R22 K30 [{"Size", "BackgroundColor3"}]
      356 SETTABLEKS                       R3 R22 K13 ["Size"]
      358 LOADK                            R23 K84 ["$SecondaryMain"]
      359 SETTABLEKS                       R23 R22 K29 ["BackgroundColor3"]
      361 NEWTABLE                         R23 0 1
      363 MOVE                             R24 R2
      364 LOADK                            R25 K50 [":hover"]
      365 DUPTABLE                         R26 K68 [{"BackgroundColor3"}]
      366 LOADK                            R27 K90 ["$SecondaryHoverBackground"]
      367 SETTABLEKS                       R27 R26 K29 ["BackgroundColor3"]
      369 CALL                             R24 2 -1
      370 SETLIST                          R23 R24 -1 [1]
      372 CALL                             R20 3 1
      373 MOVE                             R21 R2
      374 LOADK                            R22 K91 ["> #SecondaryHoverOutlineBorder"]
      375 DUPTABLE                         R23 K77 [{"Size", "BackgroundColor3", "BorderColor3"}]
      376 SETTABLEKS                       R3 R23 K13 ["Size"]
      378 LOADK                            R24 K84 ["$SecondaryMain"]
      379 SETTABLEKS                       R24 R23 K29 ["BackgroundColor3"]
      381 LOADK                            R24 K92 ["$SecondaryHoverOutlineBorder"]
      382 SETTABLEKS                       R24 R23 K76 ["BorderColor3"]
      384 CALL                             R21 2 1
      385 MOVE                             R22 R2
      386 LOADK                            R23 K93 ["> #SecondaryRestingOutlineBorder"]
      387 DUPTABLE                         R24 K77 [{"Size", "BackgroundColor3", "BorderColor3"}]
      388 SETTABLEKS                       R3 R24 K13 ["Size"]
      390 LOADK                            R25 K84 ["$SecondaryMain"]
      391 SETTABLEKS                       R25 R24 K29 ["BackgroundColor3"]
      393 LOADK                            R25 K94 ["$SecondaryRestingOutlineBorder"]
      394 SETTABLEKS                       R25 R24 K76 ["BorderColor3"]
      396 CALL                             R22 2 1
      397 MOVE                             R23 R2
      398 LOADK                            R24 K95 ["> #FilledInputBackground"]
      399 DUPTABLE                         R25 K30 [{"Size", "BackgroundColor3"}]
      400 SETTABLEKS                       R3 R25 K13 ["Size"]
      402 LOADK                            R26 K96 ["$FilledInputBackground"]
      403 SETTABLEKS                       R26 R25 K29 ["BackgroundColor3"]
      405 CALL                             R23 2 1
      406 MOVE                             R24 R2
      407 LOADK                            R25 K97 ["> #Divider"]
      408 DUPTABLE                         R26 K30 [{"Size", "BackgroundColor3"}]
      409 SETTABLEKS                       R3 R26 K13 ["Size"]
      411 LOADK                            R27 K98 ["$Divider"]
      412 SETTABLEKS                       R27 R26 K29 ["BackgroundColor3"]
      414 CALL                             R24 2 1
      415 SETLIST                          R8 R9 16 [17]
      417 MOVE                             R9 R2
      418 LOADK                            R10 K99 ["> #CheckboxUncheckedImage"]
      419 DUPTABLE                         R11 K101 [{"Size", "Image"}]
      420 SETTABLEKS                       R4 R11 K13 ["Size"]
      422 LOADK                            R12 K102 ["$CheckboxUncheckedImage"]
      423 SETTABLEKS                       R12 R11 K100 ["Image"]
      425 CALL                             R9 2 1
      426 MOVE                             R10 R2
      427 LOADK                            R11 K103 ["> #CheckboxCheckedImage"]
      428 DUPTABLE                         R12 K101 [{"Size", "Image"}]
      429 SETTABLEKS                       R4 R12 K13 ["Size"]
      431 LOADK                            R13 K104 ["$CheckboxCheckedImage"]
      432 SETTABLEKS                       R13 R12 K100 ["Image"]
      434 CALL                             R10 2 1
      435 MOVE                             R11 R2
      436 LOADK                            R12 K105 ["> #CheckboxIndeterminateImage"]
      437 DUPTABLE                         R13 K101 [{"Size", "Image"}]
      438 SETTABLEKS                       R4 R13 K13 ["Size"]
      440 LOADK                            R14 K106 ["$CheckboxIndeterminateImage"]
      441 SETTABLEKS                       R14 R13 K100 ["Image"]
      443 CALL                             R11 2 1
      444 MOVE                             R12 R2
      445 LOADK                            R13 K107 ["> #CheckboxDisabledImage"]
      446 DUPTABLE                         R14 K101 [{"Size", "Image"}]
      447 SETTABLEKS                       R4 R14 K13 ["Size"]
      449 LOADK                            R15 K108 ["$CheckboxDisabledImage"]
      450 SETTABLEKS                       R15 R14 K100 ["Image"]
      452 CALL                             R12 2 -1
      453 SETLIST                          R8 R9 -1 [33]
      455 CALL                             R5 3 -1
      456 RETURN                           R5 -1
