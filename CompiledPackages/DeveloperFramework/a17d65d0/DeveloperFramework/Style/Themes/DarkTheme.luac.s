MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Style"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K9 ["SharedFlags"]
       22 GETTABLEKS                       R4 R5 K10 ["getFFlagDevFrameworkShimmerImprovements"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["Style"]
       29 GETTABLEKS                       R5 R6 K11 ["ColorSystem"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K2 ["Style"]
       36 GETTABLEKS                       R6 R7 K12 ["Colors"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K2 ["Style"]
       43 GETTABLEKS                       R7 R8 K13 ["StyleKey"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K2 ["Style"]
       50 GETTABLEKS                       R9 R10 K14 ["Themes"]
       52 GETTABLEKS                       R8 R9 K15 ["FoundationDark"]
       54 CALL                             R7 1 1
       55 MOVE                             R8 R7
       56 LOADN                            R9 1
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R12 R0 K2 ["Style"]
       62 GETTABLEKS                       R11 R12 K11 ["ColorSystem"]
       64 GETTABLEKS                       R10 R11 K16 ["getStudioColorClassTheme"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R12 R0 K9 ["SharedFlags"]
       71 GETTABLEKS                       R11 R12 K17 ["getFFlagDevFrameworkFixInputBackground"]
       73 CALL                             R10 1 1
       74 MOVE                             R11 R9
       75 LOADK                            R12 K18 ["Dark"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R15 R8 K19 ["Color"]
       79 GETTABLEKS                       R14 R15 K20 ["ActionSoftEmphasis"]
       81 GETTABLEKS                       R13 R14 K21 ["Background"]
       83 GETTABLEKS                       R12 R13 K22 ["Color3"]
       85 GETTABLEKS                       R17 R8 K23 ["DarkMode"]
       87 GETTABLEKS                       R16 R17 K24 ["Surface"]
       89 GETTABLEKS                       R15 R16 K25 ["Surface_100"]
       91 GETTABLEKS                       R14 R15 K22 ["Color3"]
       93 GETTABLEKS                       R18 R8 K19 ["Color"]
       95 GETTABLEKS                       R17 R18 K20 ["ActionSoftEmphasis"]
       97 GETTABLEKS                       R16 R17 K21 ["Background"]
       99 GETTABLEKS                       R15 R16 K26 ["Transparency"]
      101 NAMECALL                         R12 R12 K27 ["Lerp"]
      103 CALL                             R12 3 1
      104 GETTABLEKS                       R16 R8 K19 ["Color"]
      106 GETTABLEKS                       R15 R16 K28 ["Shift"]
      108 GETTABLEKS                       R14 R15 K29 ["Shift_200"]
      110 GETTABLEKS                       R13 R14 K22 ["Color3"]
      112 GETTABLEKS                       R18 R8 K23 ["DarkMode"]
      114 GETTABLEKS                       R17 R18 K24 ["Surface"]
      116 GETTABLEKS                       R16 R17 K25 ["Surface_100"]
      118 GETTABLEKS                       R15 R16 K22 ["Color3"]
      120 GETTABLEKS                       R19 R8 K19 ["Color"]
      122 GETTABLEKS                       R18 R19 K28 ["Shift"]
      124 GETTABLEKS                       R17 R18 K29 ["Shift_200"]
      126 GETTABLEKS                       R16 R17 K26 ["Transparency"]
      128 NAMECALL                         R13 R13 K27 ["Lerp"]
      130 CALL                             R13 3 1
      131 MOVE                             R14 R2
      132 MOVE                             R15 R11
      133 NEWTABLE                         R16 128 0
      135 GETTABLEKS                       R17 R6 K30 ["Border"]
      137 GETTABLEKS                       R19 R4 K31 ["Gray"]
      139 GETTABLEN                        R18 R19 80
      140 SETTABLE                         R18 R16 R17
      141 GETTABLEKS                       R17 R6 K32 ["BrightText"]
      143 GETTABLEKS                       R18 R5 K33 ["White"]
      145 SETTABLE                         R18 R16 R17
      146 GETTABLEKS                       R17 R6 K34 ["Button"]
      148 GETTABLEKS                       R18 R5 K31 ["Gray"]
      150 SETTABLE                         R18 R16 R17
      151 GETTABLEKS                       R17 R6 K35 ["ButtonText"]
      153 GETTABLEKS                       R19 R4 K31 ["Gray"]
      155 GETTABLEN                        R18 R19 10
      156 SETTABLE                         R18 R16 R17
      157 GETTABLEKS                       R17 R6 K36 ["ButtonHover"]
      159 MOVE                             R19 R10
      160 CALL                             R19 0 1
      161 JUMPIFNOT                        R19 ; [+2]
      162 MOVE                             R18 R13
      163 JUMP                             ; [+6]
      164 GETTABLEKS                       R18 R5 K37 ["lighter"]
      166 GETTABLEKS                       R19 R5 K31 ["Gray"]
      168 LOADK                            R20 K38 [0.26]
      169 CALL                             R18 2 1
      170 SETTABLE                         R18 R16 R17
      171 GETTABLEKS                       R17 R6 K39 ["ButtonDisabled"]
      173 GETTABLEKS                       R18 R5 K37 ["lighter"]
      175 GETTABLEKS                       R19 R5 K40 ["Black"]
      177 LOADK                            R20 K38 [0.26]
      178 CALL                             R18 2 1
      179 SETTABLE                         R18 R16 R17
      180 GETTABLEKS                       R17 R6 K41 ["ButtonTextDisabled"]
      182 GETTABLEKS                       R19 R4 K31 ["Gray"]
      184 GETTABLEN                        R18 R19 60
      185 SETTABLE                         R18 R16 R17
      186 GETTABLEKS                       R17 R6 K42 ["ButtonPressed"]
      188 GETTABLEKS                       R18 R5 K37 ["lighter"]
      190 GETTABLEKS                       R19 R5 K40 ["Black"]
      192 LOADK                            R20 K43 [0.16]
      193 CALL                             R18 2 1
      194 SETTABLE                         R18 R16 R17
      195 GETTABLEKS                       R17 R6 K44 ["ButtonSelected"]
      197 GETTABLEKS                       R18 R5 K45 ["Blue"]
      199 SETTABLE                         R18 R16 R17
      200 GETTABLEKS                       R17 R6 K46 ["ImageButtonBackground"]
      202 GETTABLEKS                       R18 R5 K47 ["Gray_Mid"]
      204 SETTABLE                         R18 R16 R17
      205 GETTABLEKS                       R17 R6 K48 ["ImageButtonHover"]
      207 GETTABLEKS                       R18 R5 K37 ["lighter"]
      209 GETTABLEKS                       R19 R5 K47 ["Gray_Mid"]
      211 LOADK                            R20 K38 [0.26]
      212 CALL                             R18 2 1
      213 SETTABLE                         R18 R16 R17
      214 GETTABLEKS                       R17 R6 K49 ["Icon"]
      216 GETTABLEKS                       R19 R4 K31 ["Gray"]
      218 GETTABLEN                        R18 R19 60
      219 SETTABLE                         R18 R16 R17
      220 GETTABLEKS                       R17 R6 K50 ["IconBackgroundColor"]
      222 GETTABLEKS                       R19 R4 K31 ["Gray"]
      224 GETTABLEN                        R18 R19 120
      225 SETTABLE                         R18 R16 R17
      226 GETTABLEKS                       R17 R6 K51 ["IconImageColor"]
      228 GETTABLEKS                       R19 R4 K31 ["Gray"]
      230 GETTABLEN                        R18 R19 70
      231 SETTABLE                         R18 R16 R17
      232 GETTABLEKS                       R17 R6 K52 ["ToolbarBackgroundColor"]
      234 GETTABLEKS                       R19 R4 K40 ["Black"]
      236 LOADN                            R20 0
      237 GETTABLE                         R18 R19 R20
      238 SETTABLE                         R18 R16 R17
      239 GETTABLEKS                       R17 R6 K53 ["ToolbarButtonBackgroundColor"]
      241 GETTABLEKS                       R19 R4 K31 ["Gray"]
      243 GETTABLEN                        R18 R19 110
      244 SETTABLE                         R18 R16 R17
      245 GETTABLEKS                       R17 R6 K54 ["CategoryItem"]
      247 GETTABLEKS                       R19 R4 K31 ["Gray"]
      249 GETTABLEN                        R18 R19 100
      250 SETTABLE                         R18 R16 R17
      251 GETTABLEKS                       R17 R6 K55 ["CurrentMarker"]
      253 GETTABLEKS                       R18 R5 K31 ["Gray"]
      255 SETTABLE                         R18 R16 R17
      256 GETTABLEKS                       R17 R6 K56 ["CurrentMarkerSelected"]
      258 GETTABLEKS                       R19 R4 K45 ["Blue"]
      260 GETTABLEN                        R18 R19 70
      261 SETTABLE                         R18 R16 R17
      262 GETTABLEKS                       R17 R6 K57 ["DialogButton"]
      264 GETTABLEKS                       R18 R5 K31 ["Gray"]
      266 SETTABLE                         R18 R16 R17
      267 GETTABLEKS                       R17 R6 K58 ["DialogButtonBorder"]
      269 GETTABLEKS                       R18 R5 K31 ["Gray"]
      271 SETTABLE                         R18 R16 R17
      272 GETTABLEKS                       R17 R6 K59 ["DialogButtonHover"]
      274 GETTABLEKS                       R18 R5 K31 ["Gray"]
      276 SETTABLE                         R18 R16 R17
      277 GETTABLEKS                       R17 R6 K60 ["DialogButtonPressed"]
      279 GETTABLEKS                       R19 R4 K31 ["Gray"]
      281 GETTABLEN                        R18 R19 10
      282 SETTABLE                         R18 R16 R17
      283 GETTABLEKS                       R17 R6 K61 ["DialogButtonText"]
      285 GETTABLEKS                       R19 R4 K31 ["Gray"]
      287 GETTABLEN                        R18 R19 10
      288 SETTABLE                         R18 R16 R17
      289 GETTABLEKS                       R17 R6 K62 ["DialogMainButton"]
      291 GETTABLEKS                       R19 R4 K45 ["Blue"]
      293 GETTABLEN                        R18 R19 70
      294 SETTABLE                         R18 R16 R17
      295 GETTABLEKS                       R17 R6 K63 ["DialogMainButtonDisabled"]
      297 GETTABLEKS                       R18 R5 K31 ["Gray"]
      299 SETTABLE                         R18 R16 R17
      300 GETTABLEKS                       R17 R6 K64 ["DialogMainButtonHover"]
      302 GETTABLEKS                       R19 R4 K45 ["Blue"]
      304 GETTABLEN                        R18 R19 60
      305 SETTABLE                         R18 R16 R17
      306 GETTABLEKS                       R17 R6 K65 ["DialogMainButtonPressed"]
      308 GETTABLEKS                       R18 R5 K66 ["Blue_Dark"]
      310 SETTABLE                         R18 R16 R17
      311 GETTABLEKS                       R17 R6 K67 ["DialogMainButtonSelected"]
      313 GETTABLEKS                       R18 R5 K66 ["Blue_Dark"]
      315 SETTABLE                         R18 R16 R17
      316 GETTABLEKS                       R17 R6 K68 ["DialogMainButtonText"]
      318 GETTABLEKS                       R19 R4 K31 ["Gray"]
      320 GETTABLEN                        R18 R19 10
      321 SETTABLE                         R18 R16 R17
      322 GETTABLEKS                       R17 R6 K69 ["DialogMainButtonTextDisabled"]
      324 GETTABLEKS                       R19 R4 K31 ["Gray"]
      326 GETTABLEN                        R18 R19 60
      327 SETTABLE                         R18 R16 R17
      328 GETTABLEKS                       R17 R6 K70 ["DimmedText"]
      330 GETTABLEKS                       R18 R5 K37 ["lighter"]
      332 GETTABLEKS                       R19 R5 K40 ["Black"]
      334 LOADK                            R20 K71 [0.6]
      335 CALL                             R18 2 1
      336 SETTABLE                         R18 R16 R17
      337 GETTABLEKS                       R17 R6 K72 ["Dropdown"]
      339 GETTABLEKS                       R18 R5 K73 ["Slate"]
      341 SETTABLE                         R18 R16 R17
      342 GETTABLEKS                       R17 R6 K74 ["InputFieldBackground"]
      344 SETTABLE                         R13 R16 R17
      345 GETTABLEKS                       R17 R6 K75 ["InputFieldBackgroundDisabled"]
      347 SETTABLE                         R13 R16 R17
      348 GETTABLEKS                       R17 R6 K76 ["InputFieldBorder"]
      350 GETTABLEKS                       R19 R4 K31 ["Gray"]
      352 GETTABLEN                        R18 R19 110
      353 SETTABLE                         R18 R16 R17
      354 GETTABLEKS                       R17 R6 K77 ["InputFieldBorderDisabled"]
      356 GETTABLEKS                       R19 R4 K31 ["Gray"]
      358 GETTABLEN                        R18 R19 100
      359 SETTABLE                         R18 R16 R17
      360 GETTABLEKS                       R17 R6 K78 ["InputFieldBorderHover"]
      362 GETTABLEKS                       R19 R4 K31 ["Gray"]
      364 GETTABLEN                        R18 R19 80
      365 SETTABLE                         R18 R16 R17
      366 GETTABLEKS                       R17 R6 K79 ["InputFieldBorderSelected"]
      368 GETTABLEKS                       R19 R4 K45 ["Blue"]
      370 GETTABLEN                        R18 R19 70
      371 SETTABLE                         R18 R16 R17
      372 GETTABLEKS                       R17 R6 K80 ["Item"]
      374 GETTABLEKS                       R18 R5 K73 ["Slate"]
      376 SETTABLE                         R18 R16 R17
      377 GETTABLEKS                       R17 R6 K81 ["ItemHovered"]
      379 GETTABLEKS                       R18 R5 K31 ["Gray"]
      381 SETTABLE                         R18 R16 R17
      382 GETTABLEKS                       R17 R6 K82 ["ItemSelected"]
      384 GETTABLEKS                       R18 R5 K66 ["Blue_Dark"]
      386 SETTABLE                         R18 R16 R17
      387 GETTABLEKS                       R17 R6 K83 ["Light"]
      389 GETTABLEKS                       R19 R4 K33 ["White"]
      391 LOADN                            R20 0
      392 GETTABLE                         R18 R19 R20
      393 SETTABLE                         R18 R16 R17
      394 GETTABLEKS                       R17 R6 K84 ["MainBackground"]
      396 GETTABLEKS                       R19 R4 K31 ["Gray"]
      398 GETTABLEN                        R18 R19 110
      399 SETTABLE                         R18 R16 R17
      400 GETTABLEKS                       R17 R6 K85 ["MainButton"]
      402 GETTABLEKS                       R18 R5 K45 ["Blue"]
      404 SETTABLE                         R18 R16 R17
      405 GETTABLEKS                       R17 R6 K86 ["MainTextDisabled"]
      407 GETTABLEKS                       R19 R4 K31 ["Gray"]
      409 GETTABLEN                        R18 R19 70
      410 SETTABLE                         R18 R16 R17
      411 GETTABLEKS                       R17 R6 K87 ["MainTextHover"]
      413 GETTABLEKS                       R19 R4 K31 ["Gray"]
      415 GETTABLEN                        R18 R19 60
      416 SETTABLE                         R18 R16 R17
      417 GETTABLEKS                       R17 R6 K88 ["MainTextSelected"]
      419 GETTABLEKS                       R18 R5 K33 ["White"]
      421 SETTABLE                         R18 R16 R17
      422 GETTABLEKS                       R17 R6 K89 ["MenuBarBackground"]
      424 GETTABLEKS                       R19 R4 K31 ["Gray"]
      426 GETTABLEN                        R18 R19 100
      427 SETTABLE                         R18 R16 R17
      428 GETTABLEKS                       R17 R6 K90 ["MenuEntryHighlight"]
      430 SETTABLE                         R12 R16 R17
      431 GETTABLEKS                       R17 R6 K91 ["MenuEntryHover"]
      433 GETTABLEKS                       R19 R4 K31 ["Gray"]
      435 GETTABLEN                        R18 R19 110
      436 SETTABLE                         R18 R16 R17
      437 GETTABLEKS                       R17 R6 K92 ["Mid"]
      439 GETTABLEKS                       R19 R4 K31 ["Gray"]
      441 GETTABLEN                        R18 R19 110
      442 SETTABLE                         R18 R16 R17
      443 GETTABLEKS                       R17 R6 K93 ["SubBackground"]
      445 GETTABLEKS                       R18 R5 K31 ["Gray"]
      447 SETTABLE                         R18 R16 R17
      448 GETTABLEKS                       R17 R6 K94 ["SubBackground2"]
      450 GETTABLEKS                       R18 R5 K95 ["Carbon"]
      452 SETTABLE                         R18 R16 R17
      453 GETTABLEKS                       R17 R6 K96 ["RadioButtonDisabledImage"]
      455 LOADK                            R18 K97 ["rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png"]
      456 SETTABLE                         R18 R16 R17
      457 GETTABLEKS                       R17 R6 K98 ["RibbonTab"]
      459 GETTABLEKS                       R19 R4 K31 ["Gray"]
      461 GETTABLEN                        R18 R19 120
      462 SETTABLE                         R18 R16 R17
      463 GETTABLEKS                       R17 R6 K99 ["ScrollBarBackground"]
      465 GETTABLEKS                       R19 R4 K31 ["Gray"]
      467 GETTABLEN                        R18 R19 100
      468 SETTABLE                         R18 R16 R17
      469 GETTABLEKS                       R17 R6 K100 ["ScrollBar"]
      471 GETTABLEKS                       R19 R4 K31 ["Gray"]
      473 GETTABLEN                        R18 R19 80
      474 SETTABLE                         R18 R16 R17
      475 GETTABLEKS                       R17 R6 K101 ["SliderKnobColor"]
      477 GETTABLEKS                       R19 R4 K33 ["White"]
      479 LOADN                            R20 0
      480 GETTABLE                         R18 R19 R20
      481 SETTABLE                         R18 R16 R17
      482 GETTABLEKS                       R17 R6 K102 ["SliderKnobImage"]
      484 LOADK                            R18 K103 ["rbxasset://textures/DeveloperFramework/slider_knob.png"]
      485 SETTABLE                         R18 R16 R17
      486 GETTABLEKS                       R17 R6 K104 ["SliderBackground"]
      488 GETTABLEKS                       R19 R4 K31 ["Gray"]
      490 GETTABLEN                        R18 R19 80
      491 SETTABLE                         R18 R16 R17
      492 GETTABLEKS                       R17 R6 K105 ["SubText"]
      494 GETTABLEKS                       R19 R4 K31 ["Gray"]
      496 GETTABLEN                        R18 R19 40
      497 SETTABLE                         R18 R16 R17
      498 GETTABLEKS                       R17 R6 K106 ["Tab"]
      500 GETTABLEKS                       R19 R4 K31 ["Gray"]
      502 GETTABLEN                        R18 R19 100
      503 SETTABLE                         R18 R16 R17
      504 GETTABLEKS                       R17 R6 K107 ["TabHovered"]
      506 GETTABLEKS                       R19 R4 K31 ["Gray"]
      508 GETTABLEN                        R18 R19 120
      509 SETTABLE                         R18 R16 R17
      510 GETTABLEKS                       R17 R6 K108 ["TabSelected"]
      512 GETTABLEKS                       R19 R4 K31 ["Gray"]
      514 GETTABLEN                        R18 R19 110
      515 SETTABLE                         R18 R16 R17
      516 GETTABLEKS                       R17 R6 K109 ["TableItem"]
      518 GETTABLEKS                       R18 R5 K73 ["Slate"]
      520 SETTABLE                         R18 R16 R17
      521 GETTABLEKS                       R17 R6 K110 ["TableItemSelected"]
      523 GETTABLEKS                       R19 R4 K45 ["Blue"]
      525 GETTABLEN                        R18 R19 70
      526 SETTABLE                         R18 R16 R17
      527 GETTABLEKS                       R17 R6 K111 ["Titlebar"]
      529 GETTABLEKS                       R19 R4 K31 ["Gray"]
      531 GETTABLEN                        R18 R19 100
      532 SETTABLE                         R18 R16 R17
      533 GETTABLEKS                       R17 R6 K112 ["TitlebarText"]
      535 GETTABLEKS                       R19 R4 K31 ["Gray"]
      537 GETTABLEN                        R18 R19 30
      538 SETTABLE                         R18 R16 R17
      539 GETTABLEKS                       R17 R6 K113 ["ToggleOnImage"]
      541 LOADK                            R18 K114 ["rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"]
      542 SETTABLE                         R18 R16 R17
      543 GETTABLEKS                       R17 R6 K115 ["ToggleOffImage"]
      545 LOADK                            R18 K116 ["rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"]
      546 SETTABLE                         R18 R16 R17
      547 GETTABLEKS                       R17 R6 K117 ["ToggleDisabledImage"]
      549 LOADK                            R18 K118 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"]
      550 SETTABLE                         R18 R16 R17
      551 GETTABLEKS                       R17 R6 K119 ["ToggleDisabledAndSelectedImage"]
      553 LOADK                            R18 K120 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_dark.png"]
      554 SETTABLE                         R18 R16 R17
      555 GETTABLEKS                       R17 R6 K121 ["CheckboxUncheckedImage"]
      557 LOADK                            R18 K122 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_dark.png"]
      558 SETTABLE                         R18 R16 R17
      559 GETTABLEKS                       R17 R6 K123 ["CheckboxCheckedImage"]
      561 LOADK                            R18 K124 ["rbxasset://textures/DeveloperFramework/checkbox_checked_dark.png"]
      562 SETTABLE                         R18 R16 R17
      563 GETTABLEKS                       R17 R6 K125 ["CheckboxIndeterminateImage"]
      565 LOADK                            R18 K126 ["rbxasset://textures/DeveloperFramework/checkbox_indeterminate_dark.png"]
      566 SETTABLE                         R18 R16 R17
      567 GETTABLEKS                       R17 R6 K127 ["CheckboxDisabledImage"]
      569 LOADK                            R18 K128 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_dark.png"]
      570 SETTABLE                         R18 R16 R17
      571 GETTABLEKS                       R17 R6 K129 ["EyeIconOnImage"]
      573 LOADK                            R18 K130 ["rbxasset://textures/DeveloperFramework/UIOn_dark.png"]
      574 SETTABLE                         R18 R16 R17
      575 GETTABLEKS                       R17 R6 K131 ["EyeIconOffImage"]
      577 LOADK                            R18 K132 ["rbxasset://textures/DeveloperFramework/UIOff_dark.png"]
      578 SETTABLE                         R18 R16 R17
      579 GETTABLEKS                       R17 R6 K133 ["RadioOffImage"]
      581 LOADK                            R18 K134 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOff.png"]
      582 SETTABLE                         R18 R16 R17
      583 GETTABLEKS                       R17 R6 K135 ["RadioOnImage"]
      585 LOADK                            R18 K136 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOn.png"]
      586 SETTABLE                         R18 R16 R17
      587 GETTABLEKS                       R17 R6 K137 ["CheckedFieldBackgroundHover"]
      589 GETTABLEKS                       R19 R4 K31 ["Gray"]
      591 GETTABLEN                        R18 R19 110
      592 SETTABLE                         R18 R16 R17
      593 GETTABLEKS                       R17 R6 K138 ["ShimmerStart"]
      595 MOVE                             R19 R3
      596 CALL                             R19 0 1
      597 JUMPIFNOT                        R19 ; [+3]
      598 GETTABLEKS                       R18 R5 K31 ["Gray"]
      600 JUMP                             ; [+2]
      601 GETTABLEKS                       R18 R5 K139 ["Gray_Light"]
      603 SETTABLE                         R18 R16 R17
      604 GETTABLEKS                       R17 R6 K140 ["ShimmerEnd"]
      606 MOVE                             R19 R3
      607 CALL                             R19 0 1
      608 JUMPIFNOT                        R19 ; [+3]
      609 GETTABLEKS                       R18 R5 K31 ["Gray"]
      611 JUMP                             ; [+2]
      612 GETTABLEKS                       R18 R5 K141 ["Gray_Lighter"]
      614 SETTABLE                         R18 R16 R17
      615 GETTABLEKS                       R17 R6 K142 ["ResetCameraImage"]
      617 LOADK                            R18 K143 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
      618 SETTABLE                         R18 R16 R17
      619 GETIMPORT                        R17 K147 [Enum.Font.SourceSans]
      621 SETTABLEKS                       R17 R16 K145 ["Font"]
      623 LOADN                            R17 18
      624 SETTABLEKS                       R17 R16 K148 ["TextSize"]
      626 GETTABLEKS                       R17 R6 K149 ["ActionSecondaryHoverTransparency"]
      628 LOADK                            R18 K150 [0.84]
      629 SETTABLE                         R18 R16 R17
      630 GETTABLEKS                       R17 R6 K151 ["ActionSecondaryHover"]
      632 GETTABLEKS                       R19 R4 K31 ["Gray"]
      634 GETTABLEN                        R18 R19 50
      635 SETTABLE                         R18 R16 R17
      636 GETTABLEKS                       R17 R6 K152 ["DropdownMenuStateLayerBackground"]
      638 GETTABLEKS                       R19 R4 K31 ["Gray"]
      640 GETTABLEN                        R18 R19 90
      641 SETTABLE                         R18 R16 R17
      642 GETTABLEKS                       R17 R6 K153 ["DropdownMenuStateLayerBorderColor"]
      644 GETTABLEKS                       R19 R4 K31 ["Gray"]
      646 GETTABLEN                        R18 R19 80
      647 SETTABLE                         R18 R16 R17
      648 CALL                             R14 2 -1
      649 RETURN                           R14 -1
