MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Style"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETIMPORT                        R2 K1 [script]
       13 GETTABLEKS                       R2 R2 K4 ["Parent"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K8 ["Utility"]
       25 GETTABLEKS                       R2 R2 K9 ["blendColors"]
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K2 ["Style"]
       31 GETTABLEKS                       R4 R4 K10 ["Themes"]
       33 GETTABLEKS                       R4 R4 K11 ["FoundationDark"]
       35 CALL                             R3 1 1
       36 MOVE                             R4 R3
       37 LOADN                            R5 1
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R6 R0 K2 ["Style"]
       43 GETTABLEKS                       R6 R6 K10 ["Themes"]
       45 GETTABLEKS                       R6 R6 K12 ["FoundationLight"]
       47 CALL                             R5 1 1
       48 MOVE                             R6 R5
       49 LOADN                            R7 1
       50 CALL                             R6 1 1
       51 MOVE                             R7 R2
       52 GETTABLEKS                       R8 R6 K13 ["LightMode"]
       54 GETTABLEKS                       R8 R8 K14 ["Surface"]
       56 GETTABLEKS                       R8 R8 K15 ["Surface_100"]
       58 GETTABLEKS                       R9 R6 K16 ["Color"]
       60 GETTABLEKS                       R9 R9 K17 ["Shift"]
       62 GETTABLEKS                       R9 R9 K18 ["Shift_200"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R7 R7 K19 ["Color3"]
       67 MOVE                             R8 R2
       68 GETTABLEKS                       R9 R4 K20 ["DarkMode"]
       70 GETTABLEKS                       R9 R9 K14 ["Surface"]
       72 GETTABLEKS                       R9 R9 K15 ["Surface_100"]
       74 GETTABLEKS                       R10 R4 K16 ["Color"]
       76 GETTABLEKS                       R10 R10 K17 ["Shift"]
       78 GETTABLEKS                       R10 R10 K18 ["Shift_200"]
       80 CALL                             R8 2 1
       81 GETTABLEKS                       R8 R8 K19 ["Color3"]
       83 MOVE                             R9 R2
       84 GETTABLEKS                       R10 R6 K13 ["LightMode"]
       86 GETTABLEKS                       R10 R10 K14 ["Surface"]
       88 GETTABLEKS                       R10 R10 K15 ["Surface_100"]
       90 GETTABLEKS                       R11 R6 K16 ["Color"]
       92 GETTABLEKS                       R11 R11 K17 ["Shift"]
       94 GETTABLEKS                       R11 R11 K21 ["Shift_300"]
       96 CALL                             R9 2 1
       97 GETTABLEKS                       R9 R9 K19 ["Color3"]
       99 MOVE                             R10 R2
      100 GETTABLEKS                       R11 R4 K20 ["DarkMode"]
      102 GETTABLEKS                       R11 R11 K14 ["Surface"]
      104 GETTABLEKS                       R11 R11 K15 ["Surface_100"]
      106 GETTABLEKS                       R12 R4 K16 ["Color"]
      108 GETTABLEKS                       R12 R12 K17 ["Shift"]
      110 GETTABLEKS                       R12 R12 K21 ["Shift_300"]
      112 CALL                             R10 2 1
      113 GETTABLEKS                       R10 R10 K19 ["Color3"]
      115 DUPTABLE                         R11 K35 [{"Background", "Foreground", "Text", "Error", "Success", "Warning", "Action", "Primary", "PrimaryStates", "Secondary", "SecondaryStates", "AlertBackground", "Other"}]
      116 DUPTABLE                         R12 K38 [{"Default", "Paper"}]
      117 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      118 GETTABLEKS                       R15 R1 K42 ["Gray"]
      120 GETTABLEN                        R14 R15 120
      121 SETTABLEKS                       R14 R13 K39 ["Dark"]
      123 GETTABLEKS                       R15 R1 K42 ["Gray"]
      125 GETTABLEN                        R14 R15 40
      126 SETTABLEKS                       R14 R13 K40 ["Light"]
      128 SETTABLEKS                       R13 R12 K36 ["Default"]
      130 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      131 GETTABLEKS                       R15 R1 K42 ["Gray"]
      133 GETTABLEN                        R14 R15 100
      134 SETTABLEKS                       R14 R13 K39 ["Dark"]
      136 GETTABLEKS                       R15 R1 K42 ["Gray"]
      138 GETTABLEN                        R14 R15 30
      139 SETTABLEKS                       R14 R13 K40 ["Light"]
      141 SETTABLEKS                       R13 R12 K37 ["Paper"]
      143 SETTABLEKS                       R12 R11 K22 ["Background"]
      145 DUPTABLE                         R12 K46 [{"Main", "Muted", "Contrast"}]
      146 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      147 GETTABLEKS                       R15 R1 K42 ["Gray"]
      149 GETTABLEN                        R14 R15 90
      150 SETTABLEKS                       R14 R13 K39 ["Dark"]
      152 GETTABLEKS                       R15 R1 K42 ["Gray"]
      154 GETTABLEN                        R14 R15 20
      155 SETTABLEKS                       R14 R13 K40 ["Light"]
      157 SETTABLEKS                       R13 R12 K43 ["Main"]
      159 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      160 GETTABLEKS                       R15 R1 K42 ["Gray"]
      162 GETTABLEN                        R14 R15 110
      163 SETTABLEKS                       R14 R13 K39 ["Dark"]
      165 GETTABLEKS                       R15 R1 K42 ["Gray"]
      167 GETTABLEN                        R14 R15 10
      168 SETTABLEKS                       R14 R13 K40 ["Light"]
      170 SETTABLEKS                       R13 R12 K44 ["Muted"]
      172 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      173 GETTABLEKS                       R15 R1 K42 ["Gray"]
      175 GETTABLEN                        R14 R15 80
      176 SETTABLEKS                       R14 R13 K39 ["Dark"]
      178 GETTABLEKS                       R15 R1 K42 ["Gray"]
      180 GETTABLEN                        R14 R15 40
      181 SETTABLEKS                       R14 R13 K40 ["Light"]
      183 SETTABLEKS                       R13 R12 K45 ["Contrast"]
      185 SETTABLEKS                       R12 R11 K23 ["Foreground"]
      187 DUPTABLE                         R12 K50 [{"Primary", "Secondary", "Contrast", "Link", "LinkHover", "Disabled", "Error", "Success", "Warning"}]
      188 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      189 GETTABLEKS                       R15 R1 K42 ["Gray"]
      191 GETTABLEN                        R14 R15 40
      192 SETTABLEKS                       R14 R13 K39 ["Dark"]
      194 GETTABLEKS                       R15 R1 K42 ["Gray"]
      196 GETTABLEN                        R14 R15 110
      197 SETTABLEKS                       R14 R13 K40 ["Light"]
      199 SETTABLEKS                       R13 R12 K29 ["Primary"]
      201 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      202 GETTABLEKS                       R15 R1 K42 ["Gray"]
      204 GETTABLEN                        R14 R15 60
      205 SETTABLEKS                       R14 R13 K39 ["Dark"]
      207 GETTABLEKS                       R15 R1 K42 ["Gray"]
      209 GETTABLEN                        R14 R15 80
      210 SETTABLEKS                       R14 R13 K40 ["Light"]
      212 SETTABLEKS                       R13 R12 K31 ["Secondary"]
      214 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      215 GETTABLEKS                       R15 R1 K51 ["White"]
      217 LOADN                            R16 0
      218 GETTABLE                         R14 R15 R16
      219 SETTABLEKS                       R14 R13 K39 ["Dark"]
      221 GETTABLEKS                       R15 R1 K51 ["White"]
      223 LOADN                            R16 0
      224 GETTABLE                         R14 R15 R16
      225 SETTABLEKS                       R14 R13 K40 ["Light"]
      227 SETTABLEKS                       R13 R12 K45 ["Contrast"]
      229 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      230 GETTABLEKS                       R15 R1 K52 ["Blue"]
      232 GETTABLEN                        R14 R15 50
      233 SETTABLEKS                       R14 R13 K39 ["Dark"]
      235 GETTABLEKS                       R15 R1 K52 ["Blue"]
      237 GETTABLEN                        R14 R15 80
      238 SETTABLEKS                       R14 R13 K40 ["Light"]
      240 SETTABLEKS                       R13 R12 K47 ["Link"]
      242 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      243 GETTABLEKS                       R15 R1 K52 ["Blue"]
      245 GETTABLEN                        R14 R15 30
      246 SETTABLEKS                       R14 R13 K39 ["Dark"]
      248 GETTABLEKS                       R15 R1 K52 ["Blue"]
      250 GETTABLEN                        R14 R15 100
      251 SETTABLEKS                       R14 R13 K40 ["Light"]
      253 SETTABLEKS                       R13 R12 K48 ["LinkHover"]
      255 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      256 GETTABLEKS                       R15 R1 K42 ["Gray"]
      258 GETTABLEN                        R14 R15 70
      259 SETTABLEKS                       R14 R13 K39 ["Dark"]
      261 GETTABLEKS                       R15 R1 K42 ["Gray"]
      263 GETTABLEN                        R14 R15 60
      264 SETTABLEKS                       R14 R13 K40 ["Light"]
      266 SETTABLEKS                       R13 R12 K49 ["Disabled"]
      268 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      269 GETTABLEKS                       R15 R1 K53 ["Red"]
      271 GETTABLEN                        R14 R15 40
      272 SETTABLEKS                       R14 R13 K39 ["Dark"]
      274 GETTABLEKS                       R15 R1 K53 ["Red"]
      276 GETTABLEN                        R14 R15 90
      277 SETTABLEKS                       R14 R13 K40 ["Light"]
      279 SETTABLEKS                       R13 R12 K25 ["Error"]
      281 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      282 GETTABLEKS                       R15 R1 K54 ["Green"]
      284 GETTABLEN                        R14 R15 50
      285 SETTABLEKS                       R14 R13 K39 ["Dark"]
      287 GETTABLEKS                       R15 R1 K54 ["Green"]
      289 GETTABLEN                        R14 R15 100
      290 SETTABLEKS                       R14 R13 K40 ["Light"]
      292 SETTABLEKS                       R13 R12 K26 ["Success"]
      294 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      295 GETTABLEKS                       R15 R1 K55 ["Yellow"]
      297 GETTABLEN                        R14 R15 70
      298 SETTABLEKS                       R14 R13 K39 ["Dark"]
      300 GETTABLEKS                       R15 R1 K55 ["Yellow"]
      302 GETTABLEN                        R14 R15 100
      303 SETTABLEKS                       R14 R13 K40 ["Light"]
      305 SETTABLEKS                       R13 R12 K27 ["Warning"]
      307 SETTABLEKS                       R12 R11 K24 ["Text"]
      309 DUPTABLE                         R12 K56 [{"Main"}]
      310 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      311 GETTABLEKS                       R15 R1 K53 ["Red"]
      313 GETTABLEN                        R14 R15 50
      314 SETTABLEKS                       R14 R13 K39 ["Dark"]
      316 GETTABLEKS                       R15 R1 K53 ["Red"]
      318 GETTABLEN                        R14 R15 90
      319 SETTABLEKS                       R14 R13 K40 ["Light"]
      321 SETTABLEKS                       R13 R12 K43 ["Main"]
      323 SETTABLEKS                       R12 R11 K25 ["Error"]
      325 DUPTABLE                         R12 K56 [{"Main"}]
      326 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      327 GETTABLEKS                       R15 R1 K54 ["Green"]
      329 GETTABLEN                        R14 R15 60
      330 SETTABLEKS                       R14 R13 K39 ["Dark"]
      332 GETTABLEKS                       R15 R1 K54 ["Green"]
      334 GETTABLEN                        R14 R15 80
      335 SETTABLEKS                       R14 R13 K40 ["Light"]
      337 SETTABLEKS                       R13 R12 K43 ["Main"]
      339 SETTABLEKS                       R12 R11 K26 ["Success"]
      341 DUPTABLE                         R12 K56 [{"Main"}]
      342 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      343 GETTABLEKS                       R15 R1 K55 ["Yellow"]
      345 GETTABLEN                        R14 R15 65
      346 SETTABLEKS                       R14 R13 K39 ["Dark"]
      348 GETTABLEKS                       R15 R1 K55 ["Yellow"]
      350 GETTABLEN                        R14 R15 90
      351 SETTABLEKS                       R14 R13 K40 ["Light"]
      353 SETTABLEKS                       R13 R12 K43 ["Main"]
      355 SETTABLEKS                       R12 R11 K27 ["Warning"]
      357 DUPTABLE                         R12 K62 [{"Hover", "Enabled", "Selected", "Activated", "FocusBorder"}]
      358 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      359 SETTABLEKS                       R8 R13 K39 ["Dark"]
      361 SETTABLEKS                       R7 R13 K40 ["Light"]
      363 SETTABLEKS                       R13 R12 K57 ["Hover"]
      365 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      366 GETTABLEKS                       R15 R1 K42 ["Gray"]
      368 GETTABLEN                        R14 R15 40
      369 SETTABLEKS                       R14 R13 K39 ["Dark"]
      371 GETTABLEKS                       R15 R1 K42 ["Gray"]
      373 GETTABLEN                        R14 R15 80
      374 SETTABLEKS                       R14 R13 K40 ["Light"]
      376 SETTABLEKS                       R13 R12 K58 ["Enabled"]
      378 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      379 GETTABLEKS                       R15 R1 K52 ["Blue"]
      381 GETTABLEN                        R14 R15 90
      382 SETTABLEKS                       R14 R13 K39 ["Dark"]
      384 GETTABLEKS                       R15 R1 K52 ["Blue"]
      386 GETTABLEN                        R14 R15 10
      387 SETTABLEKS                       R14 R13 K40 ["Light"]
      389 SETTABLEKS                       R13 R12 K59 ["Selected"]
      391 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      392 SETTABLEKS                       R10 R13 K39 ["Dark"]
      394 SETTABLEKS                       R9 R13 K40 ["Light"]
      396 SETTABLEKS                       R13 R12 K60 ["Activated"]
      398 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      399 GETTABLEKS                       R15 R1 K52 ["Blue"]
      401 GETTABLEN                        R14 R15 70
      402 SETTABLEKS                       R14 R13 K39 ["Dark"]
      404 GETTABLEKS                       R15 R1 K52 ["Blue"]
      406 GETTABLEN                        R14 R15 70
      407 SETTABLEKS                       R14 R13 K40 ["Light"]
      409 SETTABLEKS                       R13 R12 K61 ["FocusBorder"]
      411 SETTABLEKS                       R12 R11 K28 ["Action"]
      413 DUPTABLE                         R12 K56 [{"Main"}]
      414 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      415 GETTABLEKS                       R15 R1 K52 ["Blue"]
      417 GETTABLEN                        R14 R15 70
      418 SETTABLEKS                       R14 R13 K39 ["Dark"]
      420 GETTABLEKS                       R15 R1 K52 ["Blue"]
      422 GETTABLEN                        R14 R15 70
      423 SETTABLEKS                       R14 R13 K40 ["Light"]
      425 SETTABLEKS                       R13 R12 K43 ["Main"]
      427 SETTABLEKS                       R12 R11 K29 ["Primary"]
      429 DUPTABLE                         R12 K64 [{"HoverBackground"}]
      430 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      431 GETTABLEKS                       R15 R1 K52 ["Blue"]
      433 GETTABLEN                        R14 R15 50
      434 SETTABLEKS                       R14 R13 K39 ["Dark"]
      436 GETTABLEKS                       R15 R1 K52 ["Blue"]
      438 GETTABLEN                        R14 R15 50
      439 SETTABLEKS                       R14 R13 K40 ["Light"]
      441 SETTABLEKS                       R13 R12 K63 ["HoverBackground"]
      443 SETTABLEKS                       R12 R11 K30 ["PrimaryStates"]
      445 DUPTABLE                         R12 K46 [{"Main", "Muted", "Contrast"}]
      446 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      447 GETTABLEKS                       R15 R1 K42 ["Gray"]
      449 GETTABLEN                        R14 R15 70
      450 SETTABLEKS                       R14 R13 K39 ["Dark"]
      452 GETTABLEKS                       R15 R1 K42 ["Gray"]
      454 GETTABLEN                        R14 R15 70
      455 SETTABLEKS                       R14 R13 K40 ["Light"]
      457 SETTABLEKS                       R13 R12 K43 ["Main"]
      459 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      460 GETTABLEKS                       R15 R1 K42 ["Gray"]
      462 GETTABLEN                        R14 R15 110
      463 SETTABLEKS                       R14 R13 K39 ["Dark"]
      465 GETTABLEKS                       R15 R1 K51 ["White"]
      467 LOADN                            R16 0
      468 GETTABLE                         R14 R15 R16
      469 SETTABLEKS                       R14 R13 K40 ["Light"]
      471 SETTABLEKS                       R13 R12 K44 ["Muted"]
      473 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      474 GETTABLEKS                       R15 R1 K42 ["Gray"]
      476 GETTABLEN                        R14 R15 60
      477 SETTABLEKS                       R14 R13 K39 ["Dark"]
      479 GETTABLEKS                       R15 R1 K42 ["Gray"]
      481 GETTABLEN                        R14 R15 70
      482 SETTABLEKS                       R14 R13 K40 ["Light"]
      484 SETTABLEKS                       R13 R12 K45 ["Contrast"]
      486 SETTABLEKS                       R12 R11 K31 ["Secondary"]
      488 DUPTABLE                         R12 K67 [{"HoverBackground", "HoverOutlineBorder", "RestingOutlineBorder"}]
      489 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      490 GETTABLEKS                       R15 R1 K42 ["Gray"]
      492 GETTABLEN                        R14 R15 60
      493 SETTABLEKS                       R14 R13 K39 ["Dark"]
      495 GETTABLEKS                       R15 R1 K42 ["Gray"]
      497 GETTABLEN                        R14 R15 60
      498 SETTABLEKS                       R14 R13 K40 ["Light"]
      500 SETTABLEKS                       R13 R12 K63 ["HoverBackground"]
      502 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      503 GETTABLEKS                       R15 R1 K42 ["Gray"]
      505 GETTABLEN                        R14 R15 120
      506 SETTABLEKS                       R14 R13 K39 ["Dark"]
      508 GETTABLEKS                       R15 R1 K42 ["Gray"]
      510 GETTABLEN                        R14 R15 60
      511 SETTABLEKS                       R14 R13 K40 ["Light"]
      513 SETTABLEKS                       R13 R12 K65 ["HoverOutlineBorder"]
      515 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      516 GETTABLEKS                       R15 R1 K42 ["Gray"]
      518 GETTABLEN                        R14 R15 70
      519 SETTABLEKS                       R14 R13 K39 ["Dark"]
      521 GETTABLEKS                       R15 R1 K42 ["Gray"]
      523 GETTABLEN                        R14 R15 60
      524 SETTABLEKS                       R14 R13 K40 ["Light"]
      526 SETTABLEKS                       R13 R12 K66 ["RestingOutlineBorder"]
      528 SETTABLEKS                       R12 R11 K32 ["SecondaryStates"]
      530 DUPTABLE                         R12 K69 [{"Default", "Error", "Info", "Success", "Warning"}]
      531 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      532 GETTABLEKS                       R15 R1 K42 ["Gray"]
      534 GETTABLEN                        R14 R15 80
      535 SETTABLEKS                       R14 R13 K39 ["Dark"]
      537 GETTABLEKS                       R15 R1 K51 ["White"]
      539 LOADN                            R16 0
      540 GETTABLE                         R14 R15 R16
      541 SETTABLEKS                       R14 R13 K40 ["Light"]
      543 SETTABLEKS                       R13 R12 K36 ["Default"]
      545 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      546 GETTABLEKS                       R15 R1 K53 ["Red"]
      548 GETTABLEN                        R14 R15 80
      549 SETTABLEKS                       R14 R13 K39 ["Dark"]
      551 GETTABLEKS                       R15 R1 K53 ["Red"]
      553 GETTABLEN                        R14 R15 80
      554 SETTABLEKS                       R14 R13 K40 ["Light"]
      556 SETTABLEKS                       R13 R12 K25 ["Error"]
      558 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      559 GETTABLEKS                       R15 R1 K52 ["Blue"]
      561 GETTABLEN                        R14 R15 70
      562 SETTABLEKS                       R14 R13 K39 ["Dark"]
      564 GETTABLEKS                       R15 R1 K52 ["Blue"]
      566 GETTABLEN                        R14 R15 70
      567 SETTABLEKS                       R14 R13 K40 ["Light"]
      569 SETTABLEKS                       R13 R12 K68 ["Info"]
      571 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      572 GETTABLEKS                       R15 R1 K54 ["Green"]
      574 GETTABLEN                        R14 R15 80
      575 SETTABLEKS                       R14 R13 K39 ["Dark"]
      577 GETTABLEKS                       R15 R1 K54 ["Green"]
      579 GETTABLEN                        R14 R15 80
      580 SETTABLEKS                       R14 R13 K40 ["Light"]
      582 SETTABLEKS                       R13 R12 K26 ["Success"]
      584 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      585 GETTABLEKS                       R15 R1 K55 ["Yellow"]
      587 GETTABLEN                        R14 R15 70
      588 SETTABLEKS                       R14 R13 K39 ["Dark"]
      590 GETTABLEKS                       R15 R1 K55 ["Yellow"]
      592 GETTABLEN                        R14 R15 70
      593 SETTABLEKS                       R14 R13 K40 ["Light"]
      595 SETTABLEKS                       R13 R12 K27 ["Warning"]
      597 SETTABLEKS                       R12 R11 K33 ["AlertBackground"]
      599 DUPTABLE                         R12 K72 [{"FilledInputBackground", "Divider"}]
      600 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      601 SETTABLEKS                       R8 R13 K39 ["Dark"]
      603 SETTABLEKS                       R7 R13 K40 ["Light"]
      605 SETTABLEKS                       R13 R12 K70 ["FilledInputBackground"]
      607 DUPTABLE                         R13 K41 [{"Dark", "Light"}]
      608 GETTABLEKS                       R15 R1 K42 ["Gray"]
      610 GETTABLEN                        R14 R15 120
      611 SETTABLEKS                       R14 R13 K39 ["Dark"]
      613 GETTABLEKS                       R15 R1 K42 ["Gray"]
      615 GETTABLEN                        R14 R15 50
      616 SETTABLEKS                       R14 R13 K40 ["Light"]
      618 SETTABLEKS                       R13 R12 K71 ["Divider"]
      620 SETTABLEKS                       R12 R11 K34 ["Other"]
      622 RETURN                           R11 1
