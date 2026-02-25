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
       27 GETTABLEKS                       R7 R0 K2 ["Style"]
       29 GETTABLEKS                       R6 R7 K11 ["Themes"]
       31 GETTABLEKS                       R5 R6 K12 ["FoundationLight"]
       33 CALL                             R4 1 1
       34 MOVE                             R5 R4
       35 LOADN                            R6 1
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K2 ["Style"]
       41 GETTABLEKS                       R7 R8 K13 ["ColorSystem"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K2 ["Style"]
       48 GETTABLEKS                       R8 R9 K14 ["Colors"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K2 ["Style"]
       55 GETTABLEKS                       R9 R10 K15 ["StyleKey"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R12 R0 K2 ["Style"]
       62 GETTABLEKS                       R11 R12 K13 ["ColorSystem"]
       64 GETTABLEKS                       R10 R11 K16 ["getStudioColorClassTheme"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R12 R0 K9 ["SharedFlags"]
       71 GETTABLEKS                       R11 R12 K17 ["getFFlagDevFrameworkFixInputBackground"]
       73 CALL                             R10 1 1
       74 MOVE                             R11 R9
       75 LOADK                            R12 K18 ["Light"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R15 R5 K19 ["Color"]
       79 GETTABLEKS                       R14 R15 K20 ["ActionSoftEmphasis"]
       81 GETTABLEKS                       R13 R14 K21 ["Background"]
       83 GETTABLEKS                       R12 R13 K22 ["Color3"]
       85 GETTABLEKS                       R17 R5 K23 ["LightMode"]
       87 GETTABLEKS                       R16 R17 K24 ["Surface"]
       89 GETTABLEKS                       R15 R16 K25 ["Surface_100"]
       91 GETTABLEKS                       R14 R15 K22 ["Color3"]
       93 GETTABLEKS                       R18 R5 K19 ["Color"]
       95 GETTABLEKS                       R17 R18 K20 ["ActionSoftEmphasis"]
       97 GETTABLEKS                       R16 R17 K21 ["Background"]
       99 GETTABLEKS                       R15 R16 K26 ["Transparency"]
      101 NAMECALL                         R12 R12 K27 ["Lerp"]
      103 CALL                             R12 3 1
      104 GETTABLEKS                       R16 R5 K19 ["Color"]
      106 GETTABLEKS                       R15 R16 K28 ["Shift"]
      108 GETTABLEKS                       R14 R15 K29 ["Shift_200"]
      110 GETTABLEKS                       R13 R14 K22 ["Color3"]
      112 GETTABLEKS                       R18 R5 K23 ["LightMode"]
      114 GETTABLEKS                       R17 R18 K24 ["Surface"]
      116 GETTABLEKS                       R16 R17 K25 ["Surface_100"]
      118 GETTABLEKS                       R15 R16 K22 ["Color3"]
      120 GETTABLEKS                       R19 R5 K19 ["Color"]
      122 GETTABLEKS                       R18 R19 K28 ["Shift"]
      124 GETTABLEKS                       R17 R18 K29 ["Shift_200"]
      126 GETTABLEKS                       R16 R17 K26 ["Transparency"]
      128 NAMECALL                         R13 R13 K27 ["Lerp"]
      130 CALL                             R13 3 1
      131 MOVE                             R14 R2
      132 MOVE                             R15 R11
      133 NEWTABLE                         R16 128 0
      135 GETTABLEKS                       R17 R8 K30 ["Border"]
      137 GETTABLEKS                       R19 R6 K31 ["Gray"]
      139 GETTABLEN                        R18 R19 50
      140 SETTABLE                         R18 R16 R17
      141 GETTABLEKS                       R17 R8 K32 ["BrightText"]
      143 GETTABLEKS                       R18 R7 K33 ["Black"]
      145 SETTABLE                         R18 R16 R17
      146 GETTABLEKS                       R17 R8 K34 ["Button"]
      148 GETTABLEKS                       R18 R7 K35 ["White"]
      150 SETTABLE                         R18 R16 R17
      151 GETTABLEKS                       R17 R8 K36 ["ButtonText"]
      153 GETTABLEKS                       R18 R7 K33 ["Black"]
      155 SETTABLE                         R18 R16 R17
      156 GETTABLEKS                       R17 R8 K37 ["ButtonHover"]
      158 MOVE                             R19 R10
      159 CALL                             R19 0 1
      160 JUMPIFNOT                        R19 ; [+2]
      161 MOVE                             R18 R13
      162 JUMP                             ; [+3]
      163 GETTABLEKS                       R19 R6 K31 ["Gray"]
      165 GETTABLEN                        R18 R19 20
      166 SETTABLE                         R18 R16 R17
      167 GETTABLEKS                       R17 R8 K38 ["ButtonDisabled"]
      169 GETTABLEKS                       R18 R7 K35 ["White"]
      171 SETTABLE                         R18 R16 R17
      172 GETTABLEKS                       R17 R8 K39 ["ButtonTextDisabled"]
      174 GETTABLEKS                       R19 R6 K31 ["Gray"]
      176 GETTABLEN                        R18 R19 60
      177 SETTABLE                         R18 R16 R17
      178 GETTABLEKS                       R17 R8 K40 ["ButtonPressed"]
      180 GETTABLEKS                       R19 R6 K31 ["Gray"]
      182 GETTABLEN                        R18 R19 40
      183 SETTABLE                         R18 R16 R17
      184 GETTABLEKS                       R17 R8 K41 ["ButtonSelected"]
      186 GETTABLEKS                       R19 R6 K31 ["Gray"]
      188 GETTABLEN                        R18 R19 20
      189 SETTABLE                         R18 R16 R17
      190 GETTABLEKS                       R17 R8 K42 ["ImageButtonBackground"]
      192 GETTABLEKS                       R19 R6 K31 ["Gray"]
      194 GETTABLEN                        R18 R19 50
      195 SETTABLE                         R18 R16 R17
      196 GETTABLEKS                       R17 R8 K43 ["ImageButtonHover"]
      198 GETTABLEKS                       R18 R7 K44 ["lighter"]
      200 GETTABLEKS                       R20 R6 K31 ["Gray"]
      202 GETTABLEN                        R19 R20 50
      203 LOADK                            R20 K45 [0.26]
      204 CALL                             R18 2 1
      205 SETTABLE                         R18 R16 R17
      206 GETTABLEKS                       R17 R8 K46 ["Icon"]
      208 GETTABLEKS                       R19 R6 K31 ["Gray"]
      210 GETTABLEN                        R18 R19 60
      211 SETTABLE                         R18 R16 R17
      212 GETTABLEKS                       R17 R8 K47 ["IconBackgroundColor"]
      214 GETTABLEKS                       R18 R7 K48 ["Gray_Lightest"]
      216 SETTABLE                         R18 R16 R17
      217 GETTABLEKS                       R17 R8 K49 ["IconImageColor"]
      219 GETTABLEKS                       R19 R6 K31 ["Gray"]
      221 GETTABLEN                        R18 R19 50
      222 SETTABLE                         R18 R16 R17
      223 GETTABLEKS                       R17 R8 K50 ["ToolbarBackgroundColor"]
      225 GETTABLEKS                       R19 R6 K33 ["Black"]
      227 LOADN                            R20 0
      228 GETTABLE                         R18 R19 R20
      229 SETTABLE                         R18 R16 R17
      230 GETTABLEKS                       R17 R8 K51 ["ToolbarButtonBackgroundColor"]
      232 GETTABLEKS                       R19 R6 K31 ["Gray"]
      234 GETTABLEN                        R18 R19 100
      235 SETTABLE                         R18 R16 R17
      236 GETTABLEKS                       R17 R8 K52 ["CategoryItem"]
      238 GETTABLEKS                       R19 R6 K31 ["Gray"]
      240 GETTABLEN                        R18 R19 30
      241 SETTABLE                         R18 R16 R17
      242 GETTABLEKS                       R17 R8 K53 ["CurrentMarker"]
      244 GETTABLEKS                       R18 R7 K54 ["Blue"]
      246 SETTABLE                         R18 R16 R17
      247 GETTABLEKS                       R17 R8 K55 ["CurrentMarkerSelected"]
      249 GETTABLEKS                       R18 R7 K54 ["Blue"]
      251 SETTABLE                         R18 R16 R17
      252 GETTABLEKS                       R17 R8 K56 ["DialogButton"]
      254 GETTABLEKS                       R18 R7 K35 ["White"]
      256 SETTABLE                         R18 R16 R17
      257 GETTABLEKS                       R17 R8 K57 ["DialogButtonBorder"]
      259 GETTABLEKS                       R18 R7 K58 ["Gray_Light"]
      261 SETTABLE                         R18 R16 R17
      262 GETTABLEKS                       R17 R8 K59 ["DialogButtonHover"]
      264 GETTABLEKS                       R18 R7 K60 ["Blue_Light"]
      266 SETTABLE                         R18 R16 R17
      267 GETTABLEKS                       R17 R8 K61 ["DialogButtonPressed"]
      269 GETTABLEKS                       R19 R6 K31 ["Gray"]
      271 GETTABLEN                        R18 R19 40
      272 SETTABLE                         R18 R16 R17
      273 GETTABLEKS                       R17 R8 K62 ["DialogButtonText"]
      275 GETTABLEKS                       R18 R7 K33 ["Black"]
      277 SETTABLE                         R18 R16 R17
      278 GETTABLEKS                       R17 R8 K63 ["DialogMainButton"]
      280 GETTABLEKS                       R19 R6 K54 ["Blue"]
      282 GETTABLEN                        R18 R19 70
      283 SETTABLE                         R18 R16 R17
      284 GETTABLEKS                       R17 R8 K64 ["DialogMainButtonDisabled"]
      286 GETTABLEKS                       R19 R6 K31 ["Gray"]
      288 GETTABLEN                        R18 R19 40
      289 SETTABLE                         R18 R16 R17
      290 GETTABLEKS                       R17 R8 K65 ["DialogMainButtonHover"]
      292 GETTABLEKS                       R19 R6 K54 ["Blue"]
      294 GETTABLEN                        R18 R19 60
      295 SETTABLE                         R18 R16 R17
      296 GETTABLEKS                       R17 R8 K66 ["DialogMainButtonPressed"]
      298 GETTABLEKS                       R18 R7 K67 ["Blue_Dark"]
      300 SETTABLE                         R18 R16 R17
      301 GETTABLEKS                       R17 R8 K68 ["DialogMainButtonSelected"]
      303 GETTABLEKS                       R18 R7 K67 ["Blue_Dark"]
      305 SETTABLE                         R18 R16 R17
      306 GETTABLEKS                       R17 R8 K69 ["DialogMainButtonText"]
      308 GETTABLEKS                       R18 R7 K35 ["White"]
      310 SETTABLE                         R18 R16 R17
      311 GETTABLEKS                       R17 R8 K70 ["DialogMainButtonTextDisabled"]
      313 GETTABLEKS                       R18 R7 K35 ["White"]
      315 SETTABLE                         R18 R16 R17
      316 GETTABLEKS                       R17 R8 K71 ["DimmedText"]
      318 GETTABLEKS                       R19 R6 K31 ["Gray"]
      320 GETTABLEN                        R18 R19 60
      321 SETTABLE                         R18 R16 R17
      322 GETTABLEKS                       R17 R8 K72 ["Dropdown"]
      324 GETTABLEKS                       R18 R7 K35 ["White"]
      326 SETTABLE                         R18 R16 R17
      327 GETTABLEKS                       R17 R8 K73 ["InputFieldBackground"]
      329 SETTABLE                         R13 R16 R17
      330 GETTABLEKS                       R17 R8 K74 ["InputFieldBackgroundDisabled"]
      332 SETTABLE                         R13 R16 R17
      333 GETTABLEKS                       R17 R8 K75 ["InputFieldBorder"]
      335 GETTABLEKS                       R19 R6 K31 ["Gray"]
      337 GETTABLEN                        R18 R19 40
      338 SETTABLE                         R18 R16 R17
      339 GETTABLEKS                       R17 R8 K76 ["InputFieldBorderDisabled"]
      341 GETTABLEKS                       R19 R6 K31 ["Gray"]
      343 GETTABLEN                        R18 R19 50
      344 SETTABLE                         R18 R16 R17
      345 GETTABLEKS                       R17 R8 K77 ["InputFieldBorderHover"]
      347 GETTABLEKS                       R18 R7 K54 ["Blue"]
      349 SETTABLE                         R18 R16 R17
      350 GETTABLEKS                       R17 R8 K78 ["InputFieldBorderSelected"]
      352 GETTABLEKS                       R19 R6 K54 ["Blue"]
      354 GETTABLEN                        R18 R19 70
      355 SETTABLE                         R18 R16 R17
      356 GETTABLEKS                       R17 R8 K79 ["Item"]
      358 GETTABLEKS                       R18 R7 K35 ["White"]
      360 SETTABLE                         R18 R16 R17
      361 GETTABLEKS                       R17 R8 K80 ["ItemHovered"]
      363 GETTABLEKS                       R18 R7 K31 ["Gray"]
      365 SETTABLE                         R18 R16 R17
      366 GETTABLEKS                       R17 R8 K81 ["ItemSelected"]
      368 GETTABLEKS                       R18 R7 K67 ["Blue_Dark"]
      370 SETTABLE                         R18 R16 R17
      371 GETTABLEKS                       R17 R8 K18 ["Light"]
      373 GETTABLEKS                       R19 R6 K31 ["Gray"]
      375 GETTABLEN                        R18 R19 20
      376 SETTABLE                         R18 R16 R17
      377 GETTABLEKS                       R17 R8 K82 ["MainBackground"]
      379 GETTABLEKS                       R18 R7 K35 ["White"]
      381 SETTABLE                         R18 R16 R17
      382 GETTABLEKS                       R17 R8 K83 ["MainButton"]
      384 GETTABLEKS                       R19 R6 K54 ["Blue"]
      386 GETTABLEN                        R18 R19 10
      387 SETTABLE                         R18 R16 R17
      388 GETTABLEKS                       R17 R8 K84 ["MainTextDisabled"]
      390 GETTABLEKS                       R19 R6 K31 ["Gray"]
      392 GETTABLEN                        R18 R19 60
      393 SETTABLE                         R18 R16 R17
      394 GETTABLEKS                       R17 R8 K85 ["MainTextHover"]
      396 GETTABLEKS                       R18 R7 K33 ["Black"]
      398 SETTABLE                         R18 R16 R17
      399 GETTABLEKS                       R17 R8 K86 ["MainTextSelected"]
      401 GETTABLEKS                       R19 R6 K33 ["Black"]
      403 LOADN                            R20 0
      404 GETTABLE                         R18 R19 R20
      405 SETTABLE                         R18 R16 R17
      406 GETTABLEKS                       R17 R8 K87 ["MenuBarBackground"]
      408 GETTABLEKS                       R18 R7 K48 ["Gray_Lightest"]
      410 SETTABLE                         R18 R16 R17
      411 GETTABLEKS                       R17 R8 K88 ["MenuEntryHighlight"]
      413 SETTABLE                         R12 R16 R17
      414 GETTABLEKS                       R17 R8 K89 ["MenuEntryHover"]
      416 GETTABLEKS                       R18 R7 K58 ["Gray_Light"]
      418 SETTABLE                         R18 R16 R17
      419 GETTABLEKS                       R17 R8 K90 ["Mid"]
      421 GETTABLEKS                       R19 R6 K31 ["Gray"]
      423 GETTABLEN                        R18 R19 20
      424 SETTABLE                         R18 R16 R17
      425 GETTABLEKS                       R17 R8 K91 ["SubBackground"]
      427 GETTABLEKS                       R18 R7 K92 ["Gray_Lighter"]
      429 SETTABLE                         R18 R16 R17
      430 GETTABLEKS                       R17 R8 K93 ["SubBackground2"]
      432 GETTABLEKS                       R18 R7 K48 ["Gray_Lightest"]
      434 SETTABLE                         R18 R16 R17
      435 GETTABLEKS                       R17 R8 K94 ["RadioButtonDisabledImage"]
      437 LOADK                            R18 K95 ["rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png"]
      438 SETTABLE                         R18 R16 R17
      439 GETTABLEKS                       R17 R8 K96 ["RibbonTab"]
      441 GETTABLEKS                       R19 R6 K31 ["Gray"]
      443 GETTABLEN                        R18 R19 10
      444 SETTABLE                         R18 R16 R17
      445 GETTABLEKS                       R17 R8 K97 ["ScrollBarBackground"]
      447 GETTABLEKS                       R19 R6 K31 ["Gray"]
      449 GETTABLEN                        R18 R19 20
      450 SETTABLE                         R18 R16 R17
      451 GETTABLEKS                       R17 R8 K98 ["ScrollBar"]
      453 GETTABLEKS                       R18 R7 K58 ["Gray_Light"]
      455 SETTABLE                         R18 R16 R17
      456 GETTABLEKS                       R17 R8 K99 ["SliderKnobColor"]
      458 GETTABLEKS                       R19 R6 K33 ["Black"]
      460 LOADN                            R20 0
      461 GETTABLE                         R18 R19 R20
      462 SETTABLE                         R18 R16 R17
      463 GETTABLEKS                       R17 R8 K100 ["SliderKnobImage"]
      465 LOADK                            R18 K101 ["rbxasset://textures/DeveloperFramework/slider_knob.png"]
      466 SETTABLE                         R18 R16 R17
      467 GETTABLEKS                       R17 R8 K102 ["SliderBackground"]
      469 GETTABLEKS                       R19 R6 K31 ["Gray"]
      471 GETTABLEN                        R18 R19 50
      472 SETTABLE                         R18 R16 R17
      473 GETTABLEKS                       R17 R8 K103 ["SubText"]
      475 GETTABLEKS                       R18 R7 K104 ["Gray_Mid"]
      477 SETTABLE                         R18 R16 R17
      478 GETTABLEKS                       R17 R8 K105 ["Tab"]
      480 GETTABLEKS                       R19 R6 K31 ["Gray"]
      482 GETTABLEN                        R18 R19 10
      483 SETTABLE                         R18 R16 R17
      484 GETTABLEKS                       R17 R8 K106 ["TabHovered"]
      486 GETTABLEKS                       R18 R7 K35 ["White"]
      488 SETTABLE                         R18 R16 R17
      489 GETTABLEKS                       R17 R8 K107 ["TabSelected"]
      491 GETTABLEKS                       R19 R6 K54 ["Blue"]
      493 GETTABLEN                        R18 R19 10
      494 SETTABLE                         R18 R16 R17
      495 GETTABLEKS                       R17 R8 K108 ["TableItem"]
      497 GETTABLEKS                       R18 R7 K48 ["Gray_Lightest"]
      499 SETTABLE                         R18 R16 R17
      500 GETTABLEKS                       R17 R8 K109 ["TableItemSelected"]
      502 GETTABLEKS                       R19 R6 K54 ["Blue"]
      504 GETTABLEN                        R18 R19 50
      505 SETTABLE                         R18 R16 R17
      506 GETTABLEKS                       R17 R8 K110 ["Titlebar"]
      508 GETTABLEKS                       R19 R6 K31 ["Gray"]
      510 GETTABLEN                        R18 R19 30
      511 SETTABLE                         R18 R16 R17
      512 GETTABLEKS                       R17 R8 K111 ["TitlebarText"]
      514 GETTABLEKS                       R18 R7 K33 ["Black"]
      516 SETTABLE                         R18 R16 R17
      517 GETTABLEKS                       R17 R8 K112 ["ToggleOnImage"]
      519 LOADK                            R18 K113 ["rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"]
      520 SETTABLE                         R18 R16 R17
      521 GETTABLEKS                       R17 R8 K114 ["ToggleOffImage"]
      523 LOADK                            R18 K115 ["rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"]
      524 SETTABLE                         R18 R16 R17
      525 GETTABLEKS                       R17 R8 K116 ["ToggleDisabledImage"]
      527 LOADK                            R18 K117 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"]
      528 SETTABLE                         R18 R16 R17
      529 GETTABLEKS                       R17 R8 K118 ["ToggleDisabledAndSelectedImage"]
      531 LOADK                            R18 K119 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_light.png"]
      532 SETTABLE                         R18 R16 R17
      533 GETTABLEKS                       R17 R8 K120 ["CheckboxUncheckedImage"]
      535 LOADK                            R18 K121 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_light.png"]
      536 SETTABLE                         R18 R16 R17
      537 GETTABLEKS                       R17 R8 K122 ["CheckboxCheckedImage"]
      539 LOADK                            R18 K123 ["rbxasset://textures/DeveloperFramework/checkbox_checked_light.png"]
      540 SETTABLE                         R18 R16 R17
      541 GETTABLEKS                       R17 R8 K124 ["CheckboxIndeterminateImage"]
      543 LOADK                            R18 K125 ["rbxasset://textures/DeveloperFramework/checkbox_indeterminate_light.png"]
      544 SETTABLE                         R18 R16 R17
      545 GETTABLEKS                       R17 R8 K126 ["CheckboxDisabledImage"]
      547 LOADK                            R18 K127 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_light.png"]
      548 SETTABLE                         R18 R16 R17
      549 GETTABLEKS                       R17 R8 K128 ["EyeIconOnImage"]
      551 LOADK                            R18 K129 ["rbxasset://textures/DeveloperFramework/UIOn_light.png"]
      552 SETTABLE                         R18 R16 R17
      553 GETTABLEKS                       R17 R8 K130 ["EyeIconOffImage"]
      555 LOADK                            R18 K131 ["rbxasset://textures/DeveloperFramework/UIOff_light.png"]
      556 SETTABLE                         R18 R16 R17
      557 GETTABLEKS                       R17 R8 K132 ["RadioOffImage"]
      559 LOADK                            R18 K133 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOff.png"]
      560 SETTABLE                         R18 R16 R17
      561 GETTABLEKS                       R17 R8 K134 ["RadioOnImage"]
      563 LOADK                            R18 K135 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOn.png"]
      564 SETTABLE                         R18 R16 R17
      565 GETTABLEKS                       R17 R8 K136 ["CheckedFieldBackgroundHover"]
      567 GETTABLEKS                       R19 R6 K31 ["Gray"]
      569 GETTABLEN                        R18 R19 70
      570 SETTABLE                         R18 R16 R17
      571 GETTABLEKS                       R17 R8 K137 ["ShimmerStart"]
      573 MOVE                             R19 R3
      574 CALL                             R19 0 1
      575 JUMPIFNOT                        R19 ; [+3]
      576 GETTABLEKS                       R18 R7 K92 ["Gray_Lighter"]
      578 JUMP                             ; [+2]
      579 GETTABLEKS                       R18 R7 K58 ["Gray_Light"]
      581 SETTABLE                         R18 R16 R17
      582 GETTABLEKS                       R17 R8 K138 ["ShimmerEnd"]
      584 GETTABLEKS                       R18 R7 K92 ["Gray_Lighter"]
      586 SETTABLE                         R18 R16 R17
      587 GETTABLEKS                       R17 R8 K139 ["ResetCameraImage"]
      589 LOADK                            R18 K140 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
      590 SETTABLE                         R18 R16 R17
      591 GETIMPORT                        R17 K144 [Enum.Font.SourceSans]
      593 SETTABLEKS                       R17 R16 K142 ["Font"]
      595 LOADN                            R17 18
      596 SETTABLEKS                       R17 R16 K145 ["TextSize"]
      598 GETTABLEKS                       R17 R8 K146 ["ActionSecondaryHoverTransparency"]
      600 LOADK                            R18 K147 [0.84]
      601 SETTABLE                         R18 R16 R17
      602 GETTABLEKS                       R17 R8 K148 ["ActionSecondaryHover"]
      604 GETTABLEKS                       R19 R6 K31 ["Gray"]
      606 GETTABLEN                        R18 R19 90
      607 SETTABLE                         R18 R16 R17
      608 GETTABLEKS                       R17 R8 K149 ["DropdownMenuStateLayerBackground"]
      610 GETTABLEKS                       R19 R6 K35 ["White"]
      612 LOADN                            R20 0
      613 GETTABLE                         R18 R19 R20
      614 SETTABLE                         R18 R16 R17
      615 GETTABLEKS                       R17 R8 K150 ["DropdownMenuStateLayerBorderColor"]
      617 GETTABLEKS                       R19 R6 K31 ["Gray"]
      619 GETTABLEN                        R18 R19 10
      620 SETTABLE                         R18 R16 R17
      621 CALL                             R14 2 -1
      622 RETURN                           R14 -1
