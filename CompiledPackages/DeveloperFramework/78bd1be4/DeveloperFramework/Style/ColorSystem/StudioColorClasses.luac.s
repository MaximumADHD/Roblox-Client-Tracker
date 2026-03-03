MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Style"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R2 R3 K4 ["Parent"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["SharedFlags"]
       20 GETTABLEKS                       R3 R4 K8 ["getFFlagDevFrameworkFixInputBackground"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["Style"]
       27 GETTABLEKS                       R5 R6 K9 ["Themes"]
       29 GETTABLEKS                       R4 R5 K10 ["FoundationDark"]
       31 CALL                             R3 1 1
       32 MOVE                             R4 R3
       33 LOADN                            R5 1
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K6 [require]
       37 GETTABLEKS                       R8 R0 K2 ["Style"]
       39 GETTABLEKS                       R7 R8 K9 ["Themes"]
       41 GETTABLEKS                       R6 R7 K11 ["FoundationLight"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R5
       45 LOADN                            R7 1
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R10 R6 K12 ["Color"]
       49 GETTABLEKS                       R9 R10 K13 ["Shift"]
       51 GETTABLEKS                       R8 R9 K14 ["Shift_200"]
       53 GETTABLEKS                       R7 R8 K15 ["Color3"]
       55 GETTABLEKS                       R12 R6 K16 ["LightMode"]
       57 GETTABLEKS                       R11 R12 K17 ["Surface"]
       59 GETTABLEKS                       R10 R11 K18 ["Surface_100"]
       61 GETTABLEKS                       R9 R10 K15 ["Color3"]
       63 GETTABLEKS                       R13 R6 K12 ["Color"]
       65 GETTABLEKS                       R12 R13 K13 ["Shift"]
       67 GETTABLEKS                       R11 R12 K14 ["Shift_200"]
       69 GETTABLEKS                       R10 R11 K19 ["Transparency"]
       71 NAMECALL                         R7 R7 K20 ["Lerp"]
       73 CALL                             R7 3 1
       74 GETTABLEKS                       R11 R4 K12 ["Color"]
       76 GETTABLEKS                       R10 R11 K13 ["Shift"]
       78 GETTABLEKS                       R9 R10 K14 ["Shift_200"]
       80 GETTABLEKS                       R8 R9 K15 ["Color3"]
       82 GETTABLEKS                       R13 R4 K21 ["DarkMode"]
       84 GETTABLEKS                       R12 R13 K17 ["Surface"]
       86 GETTABLEKS                       R11 R12 K18 ["Surface_100"]
       88 GETTABLEKS                       R10 R11 K15 ["Color3"]
       90 GETTABLEKS                       R14 R4 K12 ["Color"]
       92 GETTABLEKS                       R13 R14 K13 ["Shift"]
       94 GETTABLEKS                       R12 R13 K14 ["Shift_200"]
       96 GETTABLEKS                       R11 R12 K19 ["Transparency"]
       98 NAMECALL                         R8 R8 K20 ["Lerp"]
      100 CALL                             R8 3 1
      101 GETTABLEKS                       R12 R6 K12 ["Color"]
      103 GETTABLEKS                       R11 R12 K13 ["Shift"]
      105 GETTABLEKS                       R10 R11 K22 ["Shift_300"]
      107 GETTABLEKS                       R9 R10 K15 ["Color3"]
      109 GETTABLEKS                       R14 R6 K16 ["LightMode"]
      111 GETTABLEKS                       R13 R14 K17 ["Surface"]
      113 GETTABLEKS                       R12 R13 K18 ["Surface_100"]
      115 GETTABLEKS                       R11 R12 K15 ["Color3"]
      117 GETTABLEKS                       R15 R6 K12 ["Color"]
      119 GETTABLEKS                       R14 R15 K13 ["Shift"]
      121 GETTABLEKS                       R13 R14 K22 ["Shift_300"]
      123 GETTABLEKS                       R12 R13 K19 ["Transparency"]
      125 NAMECALL                         R9 R9 K20 ["Lerp"]
      127 CALL                             R9 3 1
      128 GETTABLEKS                       R13 R4 K12 ["Color"]
      130 GETTABLEKS                       R12 R13 K13 ["Shift"]
      132 GETTABLEKS                       R11 R12 K22 ["Shift_300"]
      134 GETTABLEKS                       R10 R11 K15 ["Color3"]
      136 GETTABLEKS                       R15 R4 K21 ["DarkMode"]
      138 GETTABLEKS                       R14 R15 K17 ["Surface"]
      140 GETTABLEKS                       R13 R14 K18 ["Surface_100"]
      142 GETTABLEKS                       R12 R13 K15 ["Color3"]
      144 GETTABLEKS                       R16 R4 K12 ["Color"]
      146 GETTABLEKS                       R15 R16 K13 ["Shift"]
      148 GETTABLEKS                       R14 R15 K22 ["Shift_300"]
      150 GETTABLEKS                       R13 R14 K19 ["Transparency"]
      152 NAMECALL                         R10 R10 K20 ["Lerp"]
      154 CALL                             R10 3 1
      155 DUPTABLE                         R11 K36 [{"Background", "Foreground", "Text", "Error", "Success", "Warning", "Action", "Primary", "PrimaryStates", "Secondary", "SecondaryStates", "AlertBackground", "Other"}]
      156 DUPTABLE                         R12 K39 [{"Default", "Paper"}]
      157 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      158 GETTABLEKS                       R15 R1 K43 ["Gray"]
      160 GETTABLEN                        R14 R15 120
      161 SETTABLEKS                       R14 R13 K40 ["Dark"]
      163 GETTABLEKS                       R15 R1 K43 ["Gray"]
      165 GETTABLEN                        R14 R15 40
      166 SETTABLEKS                       R14 R13 K41 ["Light"]
      168 SETTABLEKS                       R13 R12 K37 ["Default"]
      170 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      171 GETTABLEKS                       R15 R1 K43 ["Gray"]
      173 GETTABLEN                        R14 R15 100
      174 SETTABLEKS                       R14 R13 K40 ["Dark"]
      176 GETTABLEKS                       R15 R1 K43 ["Gray"]
      178 GETTABLEN                        R14 R15 30
      179 SETTABLEKS                       R14 R13 K41 ["Light"]
      181 SETTABLEKS                       R13 R12 K38 ["Paper"]
      183 SETTABLEKS                       R12 R11 K23 ["Background"]
      185 DUPTABLE                         R12 K47 [{"Main", "Muted", "Contrast"}]
      186 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      187 GETTABLEKS                       R15 R1 K43 ["Gray"]
      189 GETTABLEN                        R14 R15 90
      190 SETTABLEKS                       R14 R13 K40 ["Dark"]
      192 GETTABLEKS                       R15 R1 K43 ["Gray"]
      194 GETTABLEN                        R14 R15 20
      195 SETTABLEKS                       R14 R13 K41 ["Light"]
      197 SETTABLEKS                       R13 R12 K44 ["Main"]
      199 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      200 GETTABLEKS                       R15 R1 K43 ["Gray"]
      202 GETTABLEN                        R14 R15 110
      203 SETTABLEKS                       R14 R13 K40 ["Dark"]
      205 GETTABLEKS                       R15 R1 K43 ["Gray"]
      207 GETTABLEN                        R14 R15 10
      208 SETTABLEKS                       R14 R13 K41 ["Light"]
      210 SETTABLEKS                       R13 R12 K45 ["Muted"]
      212 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      213 GETTABLEKS                       R15 R1 K43 ["Gray"]
      215 GETTABLEN                        R14 R15 80
      216 SETTABLEKS                       R14 R13 K40 ["Dark"]
      218 GETTABLEKS                       R15 R1 K43 ["Gray"]
      220 GETTABLEN                        R14 R15 40
      221 SETTABLEKS                       R14 R13 K41 ["Light"]
      223 SETTABLEKS                       R13 R12 K46 ["Contrast"]
      225 SETTABLEKS                       R12 R11 K24 ["Foreground"]
      227 DUPTABLE                         R12 K51 [{"Primary", "Secondary", "Contrast", "Link", "LinkHover", "Disabled", "Error", "Success", "Warning"}]
      228 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      229 GETTABLEKS                       R15 R1 K43 ["Gray"]
      231 GETTABLEN                        R14 R15 40
      232 SETTABLEKS                       R14 R13 K40 ["Dark"]
      234 GETTABLEKS                       R15 R1 K43 ["Gray"]
      236 GETTABLEN                        R14 R15 110
      237 SETTABLEKS                       R14 R13 K41 ["Light"]
      239 SETTABLEKS                       R13 R12 K30 ["Primary"]
      241 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      242 GETTABLEKS                       R15 R1 K43 ["Gray"]
      244 GETTABLEN                        R14 R15 60
      245 SETTABLEKS                       R14 R13 K40 ["Dark"]
      247 GETTABLEKS                       R15 R1 K43 ["Gray"]
      249 GETTABLEN                        R14 R15 80
      250 SETTABLEKS                       R14 R13 K41 ["Light"]
      252 SETTABLEKS                       R13 R12 K32 ["Secondary"]
      254 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      255 GETTABLEKS                       R15 R1 K52 ["White"]
      257 LOADN                            R16 0
      258 GETTABLE                         R14 R15 R16
      259 SETTABLEKS                       R14 R13 K40 ["Dark"]
      261 GETTABLEKS                       R15 R1 K52 ["White"]
      263 LOADN                            R16 0
      264 GETTABLE                         R14 R15 R16
      265 SETTABLEKS                       R14 R13 K41 ["Light"]
      267 SETTABLEKS                       R13 R12 K46 ["Contrast"]
      269 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      270 GETTABLEKS                       R15 R1 K53 ["Blue"]
      272 GETTABLEN                        R14 R15 50
      273 SETTABLEKS                       R14 R13 K40 ["Dark"]
      275 GETTABLEKS                       R15 R1 K53 ["Blue"]
      277 GETTABLEN                        R14 R15 80
      278 SETTABLEKS                       R14 R13 K41 ["Light"]
      280 SETTABLEKS                       R13 R12 K48 ["Link"]
      282 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      283 GETTABLEKS                       R15 R1 K53 ["Blue"]
      285 GETTABLEN                        R14 R15 30
      286 SETTABLEKS                       R14 R13 K40 ["Dark"]
      288 GETTABLEKS                       R15 R1 K53 ["Blue"]
      290 GETTABLEN                        R14 R15 100
      291 SETTABLEKS                       R14 R13 K41 ["Light"]
      293 SETTABLEKS                       R13 R12 K49 ["LinkHover"]
      295 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      296 GETTABLEKS                       R15 R1 K43 ["Gray"]
      298 GETTABLEN                        R14 R15 70
      299 SETTABLEKS                       R14 R13 K40 ["Dark"]
      301 GETTABLEKS                       R15 R1 K43 ["Gray"]
      303 GETTABLEN                        R14 R15 60
      304 SETTABLEKS                       R14 R13 K41 ["Light"]
      306 SETTABLEKS                       R13 R12 K50 ["Disabled"]
      308 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      309 GETTABLEKS                       R15 R1 K54 ["Red"]
      311 GETTABLEN                        R14 R15 40
      312 SETTABLEKS                       R14 R13 K40 ["Dark"]
      314 GETTABLEKS                       R15 R1 K54 ["Red"]
      316 GETTABLEN                        R14 R15 90
      317 SETTABLEKS                       R14 R13 K41 ["Light"]
      319 SETTABLEKS                       R13 R12 K26 ["Error"]
      321 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      322 GETTABLEKS                       R15 R1 K55 ["Green"]
      324 GETTABLEN                        R14 R15 50
      325 SETTABLEKS                       R14 R13 K40 ["Dark"]
      327 GETTABLEKS                       R15 R1 K55 ["Green"]
      329 GETTABLEN                        R14 R15 100
      330 SETTABLEKS                       R14 R13 K41 ["Light"]
      332 SETTABLEKS                       R13 R12 K27 ["Success"]
      334 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      335 GETTABLEKS                       R15 R1 K56 ["Yellow"]
      337 GETTABLEN                        R14 R15 70
      338 SETTABLEKS                       R14 R13 K40 ["Dark"]
      340 GETTABLEKS                       R15 R1 K56 ["Yellow"]
      342 GETTABLEN                        R14 R15 100
      343 SETTABLEKS                       R14 R13 K41 ["Light"]
      345 SETTABLEKS                       R13 R12 K28 ["Warning"]
      347 SETTABLEKS                       R12 R11 K25 ["Text"]
      349 DUPTABLE                         R12 K57 [{"Main"}]
      350 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      351 GETTABLEKS                       R15 R1 K54 ["Red"]
      353 GETTABLEN                        R14 R15 50
      354 SETTABLEKS                       R14 R13 K40 ["Dark"]
      356 GETTABLEKS                       R15 R1 K54 ["Red"]
      358 GETTABLEN                        R14 R15 90
      359 SETTABLEKS                       R14 R13 K41 ["Light"]
      361 SETTABLEKS                       R13 R12 K44 ["Main"]
      363 SETTABLEKS                       R12 R11 K26 ["Error"]
      365 DUPTABLE                         R12 K57 [{"Main"}]
      366 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      367 GETTABLEKS                       R15 R1 K55 ["Green"]
      369 GETTABLEN                        R14 R15 60
      370 SETTABLEKS                       R14 R13 K40 ["Dark"]
      372 GETTABLEKS                       R15 R1 K55 ["Green"]
      374 GETTABLEN                        R14 R15 80
      375 SETTABLEKS                       R14 R13 K41 ["Light"]
      377 SETTABLEKS                       R13 R12 K44 ["Main"]
      379 SETTABLEKS                       R12 R11 K27 ["Success"]
      381 DUPTABLE                         R12 K57 [{"Main"}]
      382 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      383 GETTABLEKS                       R15 R1 K56 ["Yellow"]
      385 GETTABLEN                        R14 R15 65
      386 SETTABLEKS                       R14 R13 K40 ["Dark"]
      388 GETTABLEKS                       R15 R1 K56 ["Yellow"]
      390 GETTABLEN                        R14 R15 90
      391 SETTABLEKS                       R14 R13 K41 ["Light"]
      393 SETTABLEKS                       R13 R12 K44 ["Main"]
      395 SETTABLEKS                       R12 R11 K28 ["Warning"]
      397 DUPTABLE                         R12 K63 [{"Hover", "Enabled", "Selected", "Activated", "FocusBorder"}]
      398 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      399 MOVE                             R15 R2
      400 CALL                             R15 0 1
      401 JUMPIFNOT                        R15 ; [+2]
      402 MOVE                             R14 R8
      403 JUMP                             ; [+3]
      404 GETTABLEKS                       R15 R1 K43 ["Gray"]
      406 GETTABLEN                        R14 R15 70
      407 SETTABLEKS                       R14 R13 K40 ["Dark"]
      409 MOVE                             R15 R2
      410 CALL                             R15 0 1
      411 JUMPIFNOT                        R15 ; [+2]
      412 MOVE                             R14 R7
      413 JUMP                             ; [+3]
      414 GETTABLEKS                       R15 R1 K43 ["Gray"]
      416 GETTABLEN                        R14 R15 40
      417 SETTABLEKS                       R14 R13 K41 ["Light"]
      419 SETTABLEKS                       R13 R12 K58 ["Hover"]
      421 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      422 GETTABLEKS                       R15 R1 K43 ["Gray"]
      424 GETTABLEN                        R14 R15 40
      425 SETTABLEKS                       R14 R13 K40 ["Dark"]
      427 GETTABLEKS                       R15 R1 K43 ["Gray"]
      429 GETTABLEN                        R14 R15 80
      430 SETTABLEKS                       R14 R13 K41 ["Light"]
      432 SETTABLEKS                       R13 R12 K59 ["Enabled"]
      434 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      435 GETTABLEKS                       R15 R1 K53 ["Blue"]
      437 GETTABLEN                        R14 R15 90
      438 SETTABLEKS                       R14 R13 K40 ["Dark"]
      440 GETTABLEKS                       R15 R1 K53 ["Blue"]
      442 GETTABLEN                        R14 R15 10
      443 SETTABLEKS                       R14 R13 K41 ["Light"]
      445 SETTABLEKS                       R13 R12 K60 ["Selected"]
      447 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      448 MOVE                             R15 R2
      449 CALL                             R15 0 1
      450 JUMPIFNOT                        R15 ; [+2]
      451 MOVE                             R14 R10
      452 JUMP                             ; [+3]
      453 GETTABLEKS                       R15 R1 K43 ["Gray"]
      455 GETTABLEN                        R14 R15 110
      456 SETTABLEKS                       R14 R13 K40 ["Dark"]
      458 MOVE                             R15 R2
      459 CALL                             R15 0 1
      460 JUMPIFNOT                        R15 ; [+2]
      461 MOVE                             R14 R9
      462 JUMP                             ; [+3]
      463 GETTABLEKS                       R15 R1 K43 ["Gray"]
      465 GETTABLEN                        R14 R15 50
      466 SETTABLEKS                       R14 R13 K41 ["Light"]
      468 SETTABLEKS                       R13 R12 K61 ["Activated"]
      470 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      471 GETTABLEKS                       R15 R1 K53 ["Blue"]
      473 GETTABLEN                        R14 R15 70
      474 SETTABLEKS                       R14 R13 K40 ["Dark"]
      476 GETTABLEKS                       R15 R1 K53 ["Blue"]
      478 GETTABLEN                        R14 R15 70
      479 SETTABLEKS                       R14 R13 K41 ["Light"]
      481 SETTABLEKS                       R13 R12 K62 ["FocusBorder"]
      483 SETTABLEKS                       R12 R11 K29 ["Action"]
      485 DUPTABLE                         R12 K57 [{"Main"}]
      486 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      487 GETTABLEKS                       R15 R1 K53 ["Blue"]
      489 GETTABLEN                        R14 R15 70
      490 SETTABLEKS                       R14 R13 K40 ["Dark"]
      492 GETTABLEKS                       R15 R1 K53 ["Blue"]
      494 GETTABLEN                        R14 R15 70
      495 SETTABLEKS                       R14 R13 K41 ["Light"]
      497 SETTABLEKS                       R13 R12 K44 ["Main"]
      499 SETTABLEKS                       R12 R11 K30 ["Primary"]
      501 DUPTABLE                         R12 K65 [{"HoverBackground"}]
      502 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      503 GETTABLEKS                       R15 R1 K53 ["Blue"]
      505 GETTABLEN                        R14 R15 50
      506 SETTABLEKS                       R14 R13 K40 ["Dark"]
      508 GETTABLEKS                       R15 R1 K53 ["Blue"]
      510 GETTABLEN                        R14 R15 50
      511 SETTABLEKS                       R14 R13 K41 ["Light"]
      513 SETTABLEKS                       R13 R12 K64 ["HoverBackground"]
      515 SETTABLEKS                       R12 R11 K31 ["PrimaryStates"]
      517 DUPTABLE                         R12 K47 [{"Main", "Muted", "Contrast"}]
      518 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      519 GETTABLEKS                       R15 R1 K43 ["Gray"]
      521 GETTABLEN                        R14 R15 70
      522 SETTABLEKS                       R14 R13 K40 ["Dark"]
      524 GETTABLEKS                       R15 R1 K43 ["Gray"]
      526 GETTABLEN                        R14 R15 70
      527 SETTABLEKS                       R14 R13 K41 ["Light"]
      529 SETTABLEKS                       R13 R12 K44 ["Main"]
      531 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      532 GETTABLEKS                       R15 R1 K43 ["Gray"]
      534 GETTABLEN                        R14 R15 110
      535 SETTABLEKS                       R14 R13 K40 ["Dark"]
      537 GETTABLEKS                       R15 R1 K52 ["White"]
      539 LOADN                            R16 0
      540 GETTABLE                         R14 R15 R16
      541 SETTABLEKS                       R14 R13 K41 ["Light"]
      543 SETTABLEKS                       R13 R12 K45 ["Muted"]
      545 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      546 GETTABLEKS                       R15 R1 K43 ["Gray"]
      548 GETTABLEN                        R14 R15 60
      549 SETTABLEKS                       R14 R13 K40 ["Dark"]
      551 GETTABLEKS                       R15 R1 K43 ["Gray"]
      553 GETTABLEN                        R14 R15 70
      554 SETTABLEKS                       R14 R13 K41 ["Light"]
      556 SETTABLEKS                       R13 R12 K46 ["Contrast"]
      558 SETTABLEKS                       R12 R11 K32 ["Secondary"]
      560 DUPTABLE                         R12 K68 [{"HoverBackground", "HoverOutlineBorder", "RestingOutlineBorder"}]
      561 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      562 GETTABLEKS                       R15 R1 K43 ["Gray"]
      564 GETTABLEN                        R14 R15 60
      565 SETTABLEKS                       R14 R13 K40 ["Dark"]
      567 GETTABLEKS                       R15 R1 K43 ["Gray"]
      569 GETTABLEN                        R14 R15 60
      570 SETTABLEKS                       R14 R13 K41 ["Light"]
      572 SETTABLEKS                       R13 R12 K64 ["HoverBackground"]
      574 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      575 GETTABLEKS                       R15 R1 K43 ["Gray"]
      577 GETTABLEN                        R14 R15 120
      578 SETTABLEKS                       R14 R13 K40 ["Dark"]
      580 GETTABLEKS                       R15 R1 K43 ["Gray"]
      582 GETTABLEN                        R14 R15 60
      583 SETTABLEKS                       R14 R13 K41 ["Light"]
      585 SETTABLEKS                       R13 R12 K66 ["HoverOutlineBorder"]
      587 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      588 GETTABLEKS                       R15 R1 K43 ["Gray"]
      590 GETTABLEN                        R14 R15 70
      591 SETTABLEKS                       R14 R13 K40 ["Dark"]
      593 GETTABLEKS                       R15 R1 K43 ["Gray"]
      595 GETTABLEN                        R14 R15 60
      596 SETTABLEKS                       R14 R13 K41 ["Light"]
      598 SETTABLEKS                       R13 R12 K67 ["RestingOutlineBorder"]
      600 SETTABLEKS                       R12 R11 K33 ["SecondaryStates"]
      602 DUPTABLE                         R12 K70 [{"Default", "Error", "Info", "Success", "Warning"}]
      603 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      604 GETTABLEKS                       R15 R1 K43 ["Gray"]
      606 GETTABLEN                        R14 R15 80
      607 SETTABLEKS                       R14 R13 K40 ["Dark"]
      609 GETTABLEKS                       R15 R1 K52 ["White"]
      611 LOADN                            R16 0
      612 GETTABLE                         R14 R15 R16
      613 SETTABLEKS                       R14 R13 K41 ["Light"]
      615 SETTABLEKS                       R13 R12 K37 ["Default"]
      617 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      618 GETTABLEKS                       R15 R1 K54 ["Red"]
      620 GETTABLEN                        R14 R15 80
      621 SETTABLEKS                       R14 R13 K40 ["Dark"]
      623 GETTABLEKS                       R15 R1 K54 ["Red"]
      625 GETTABLEN                        R14 R15 80
      626 SETTABLEKS                       R14 R13 K41 ["Light"]
      628 SETTABLEKS                       R13 R12 K26 ["Error"]
      630 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      631 GETTABLEKS                       R15 R1 K53 ["Blue"]
      633 GETTABLEN                        R14 R15 70
      634 SETTABLEKS                       R14 R13 K40 ["Dark"]
      636 GETTABLEKS                       R15 R1 K53 ["Blue"]
      638 GETTABLEN                        R14 R15 70
      639 SETTABLEKS                       R14 R13 K41 ["Light"]
      641 SETTABLEKS                       R13 R12 K69 ["Info"]
      643 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      644 GETTABLEKS                       R15 R1 K55 ["Green"]
      646 GETTABLEN                        R14 R15 80
      647 SETTABLEKS                       R14 R13 K40 ["Dark"]
      649 GETTABLEKS                       R15 R1 K55 ["Green"]
      651 GETTABLEN                        R14 R15 80
      652 SETTABLEKS                       R14 R13 K41 ["Light"]
      654 SETTABLEKS                       R13 R12 K27 ["Success"]
      656 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      657 GETTABLEKS                       R15 R1 K56 ["Yellow"]
      659 GETTABLEN                        R14 R15 70
      660 SETTABLEKS                       R14 R13 K40 ["Dark"]
      662 GETTABLEKS                       R15 R1 K56 ["Yellow"]
      664 GETTABLEN                        R14 R15 70
      665 SETTABLEKS                       R14 R13 K41 ["Light"]
      667 SETTABLEKS                       R13 R12 K28 ["Warning"]
      669 SETTABLEKS                       R12 R11 K34 ["AlertBackground"]
      671 DUPTABLE                         R12 K73 [{"FilledInputBackground", "Divider"}]
      672 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      673 MOVE                             R15 R2
      674 CALL                             R15 0 1
      675 JUMPIFNOT                        R15 ; [+2]
      676 MOVE                             R14 R8
      677 JUMP                             ; [+3]
      678 GETTABLEKS                       R15 R1 K43 ["Gray"]
      680 GETTABLEN                        R14 R15 70
      681 SETTABLEKS                       R14 R13 K40 ["Dark"]
      683 MOVE                             R15 R2
      684 CALL                             R15 0 1
      685 JUMPIFNOT                        R15 ; [+2]
      686 MOVE                             R14 R7
      687 JUMP                             ; [+3]
      688 GETTABLEKS                       R15 R1 K43 ["Gray"]
      690 GETTABLEN                        R14 R15 20
      691 SETTABLEKS                       R14 R13 K41 ["Light"]
      693 SETTABLEKS                       R13 R12 K71 ["FilledInputBackground"]
      695 DUPTABLE                         R13 K42 [{"Dark", "Light"}]
      696 GETTABLEKS                       R15 R1 K43 ["Gray"]
      698 GETTABLEN                        R14 R15 120
      699 SETTABLEKS                       R14 R13 K40 ["Dark"]
      701 GETTABLEKS                       R15 R1 K43 ["Gray"]
      703 GETTABLEN                        R14 R15 50
      704 SETTABLEKS                       R14 R13 K41 ["Light"]
      706 SETTABLEKS                       R13 R12 K72 ["Divider"]
      708 SETTABLEKS                       R12 R11 K35 ["Other"]
      710 RETURN                           R11 1
