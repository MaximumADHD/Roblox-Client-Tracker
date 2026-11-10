MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Style"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K2 ["Style"]
       22 GETTABLEKS                       R4 R4 K9 ["ColorSystem"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["Style"]
       29 GETTABLEKS                       R5 R5 K10 ["Colors"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K2 ["Style"]
       36 GETTABLEKS                       R6 R6 K11 ["StyleKey"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K2 ["Style"]
       43 GETTABLEKS                       R7 R7 K12 ["Themes"]
       45 GETTABLEKS                       R7 R7 K13 ["FoundationDark"]
       47 CALL                             R6 1 1
       48 MOVE                             R7 R6
       49 LOADN                            R8 1
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K2 ["Style"]
       55 GETTABLEKS                       R9 R9 K9 ["ColorSystem"]
       57 GETTABLEKS                       R9 R9 K14 ["getStudioColorClassTheme"]
       59 CALL                             R8 1 1
       60 MOVE                             R9 R8
       61 LOADK                            R10 K15 ["Dark"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R7 K16 ["Color"]
       65 GETTABLEKS                       R10 R10 K17 ["ActionSoftEmphasis"]
       67 GETTABLEKS                       R10 R10 K18 ["Background"]
       69 GETTABLEKS                       R10 R10 K19 ["Color3"]
       71 GETTABLEKS                       R12 R7 K20 ["DarkMode"]
       73 GETTABLEKS                       R12 R12 K21 ["Surface"]
       75 GETTABLEKS                       R12 R12 K22 ["Surface_100"]
       77 GETTABLEKS                       R12 R12 K19 ["Color3"]
       79 GETTABLEKS                       R13 R7 K16 ["Color"]
       81 GETTABLEKS                       R13 R13 K17 ["ActionSoftEmphasis"]
       83 GETTABLEKS                       R13 R13 K18 ["Background"]
       85 GETTABLEKS                       R13 R13 K23 ["Transparency"]
       87 NAMECALL                         R10 R10 K24 ["Lerp"]
       89 CALL                             R10 3 1
       90 GETTABLEKS                       R11 R7 K16 ["Color"]
       92 GETTABLEKS                       R11 R11 K25 ["Shift"]
       94 GETTABLEKS                       R11 R11 K26 ["Shift_200"]
       96 GETTABLEKS                       R11 R11 K19 ["Color3"]
       98 GETTABLEKS                       R13 R7 K20 ["DarkMode"]
      100 GETTABLEKS                       R13 R13 K21 ["Surface"]
      102 GETTABLEKS                       R13 R13 K22 ["Surface_100"]
      104 GETTABLEKS                       R13 R13 K19 ["Color3"]
      106 GETTABLEKS                       R14 R7 K16 ["Color"]
      108 GETTABLEKS                       R14 R14 K25 ["Shift"]
      110 GETTABLEKS                       R14 R14 K26 ["Shift_200"]
      112 GETTABLEKS                       R14 R14 K23 ["Transparency"]
      114 NAMECALL                         R11 R11 K24 ["Lerp"]
      116 CALL                             R11 3 1
      117 MOVE                             R12 R2
      118 MOVE                             R13 R9
      119 NEWTABLE                         R14 128 0
      121 GETTABLEKS                       R15 R5 K27 ["Border"]
      123 GETTABLEKS                       R17 R3 K28 ["Gray"]
      125 GETTABLEN                        R16 R17 80
      126 SETTABLE                         R16 R14 R15
      127 GETTABLEKS                       R15 R5 K29 ["BrightText"]
      129 GETTABLEKS                       R16 R4 K30 ["White"]
      131 SETTABLE                         R16 R14 R15
      132 GETTABLEKS                       R15 R5 K31 ["Button"]
      134 GETTABLEKS                       R16 R4 K28 ["Gray"]
      136 SETTABLE                         R16 R14 R15
      137 GETTABLEKS                       R15 R5 K32 ["ButtonText"]
      139 GETTABLEKS                       R17 R3 K28 ["Gray"]
      141 GETTABLEN                        R16 R17 10
      142 SETTABLE                         R16 R14 R15
      143 GETTABLEKS                       R15 R5 K33 ["ButtonHover"]
      145 SETTABLE                         R11 R14 R15
      146 GETTABLEKS                       R15 R5 K34 ["ButtonDisabled"]
      148 GETTABLEKS                       R16 R4 K35 ["lighter"]
      150 GETTABLEKS                       R17 R4 K36 ["Black"]
      152 LOADK                            R18 K37 [0.26]
      153 CALL                             R16 2 1
      154 SETTABLE                         R16 R14 R15
      155 GETTABLEKS                       R15 R5 K38 ["ButtonTextDisabled"]
      157 GETTABLEKS                       R17 R3 K28 ["Gray"]
      159 GETTABLEN                        R16 R17 60
      160 SETTABLE                         R16 R14 R15
      161 GETTABLEKS                       R15 R5 K39 ["ButtonPressed"]
      163 GETTABLEKS                       R16 R4 K35 ["lighter"]
      165 GETTABLEKS                       R17 R4 K36 ["Black"]
      167 LOADK                            R18 K40 [0.16]
      168 CALL                             R16 2 1
      169 SETTABLE                         R16 R14 R15
      170 GETTABLEKS                       R15 R5 K41 ["ButtonSelected"]
      172 GETTABLEKS                       R16 R4 K42 ["Blue"]
      174 SETTABLE                         R16 R14 R15
      175 GETTABLEKS                       R15 R5 K43 ["ImageButtonBackground"]
      177 GETTABLEKS                       R16 R4 K44 ["Gray_Mid"]
      179 SETTABLE                         R16 R14 R15
      180 GETTABLEKS                       R15 R5 K45 ["ImageButtonHover"]
      182 GETTABLEKS                       R16 R4 K35 ["lighter"]
      184 GETTABLEKS                       R17 R4 K44 ["Gray_Mid"]
      186 LOADK                            R18 K37 [0.26]
      187 CALL                             R16 2 1
      188 SETTABLE                         R16 R14 R15
      189 GETTABLEKS                       R15 R5 K46 ["Icon"]
      191 GETTABLEKS                       R17 R3 K28 ["Gray"]
      193 GETTABLEN                        R16 R17 60
      194 SETTABLE                         R16 R14 R15
      195 GETTABLEKS                       R15 R5 K47 ["IconBackgroundColor"]
      197 GETTABLEKS                       R17 R3 K28 ["Gray"]
      199 GETTABLEN                        R16 R17 120
      200 SETTABLE                         R16 R14 R15
      201 GETTABLEKS                       R15 R5 K48 ["IconImageColor"]
      203 GETTABLEKS                       R17 R3 K28 ["Gray"]
      205 GETTABLEN                        R16 R17 70
      206 SETTABLE                         R16 R14 R15
      207 GETTABLEKS                       R15 R5 K49 ["ToolbarBackgroundColor"]
      209 GETTABLEKS                       R17 R3 K36 ["Black"]
      211 LOADN                            R18 0
      212 GETTABLE                         R16 R17 R18
      213 SETTABLE                         R16 R14 R15
      214 GETTABLEKS                       R15 R5 K50 ["ToolbarButtonBackgroundColor"]
      216 GETTABLEKS                       R17 R3 K28 ["Gray"]
      218 GETTABLEN                        R16 R17 110
      219 SETTABLE                         R16 R14 R15
      220 GETTABLEKS                       R15 R5 K51 ["CategoryItem"]
      222 GETTABLEKS                       R17 R3 K28 ["Gray"]
      224 GETTABLEN                        R16 R17 100
      225 SETTABLE                         R16 R14 R15
      226 GETTABLEKS                       R15 R5 K52 ["CurrentMarker"]
      228 GETTABLEKS                       R16 R4 K28 ["Gray"]
      230 SETTABLE                         R16 R14 R15
      231 GETTABLEKS                       R15 R5 K53 ["CurrentMarkerSelected"]
      233 GETTABLEKS                       R17 R3 K42 ["Blue"]
      235 GETTABLEN                        R16 R17 70
      236 SETTABLE                         R16 R14 R15
      237 GETTABLEKS                       R15 R5 K54 ["DialogButton"]
      239 GETTABLEKS                       R16 R4 K28 ["Gray"]
      241 SETTABLE                         R16 R14 R15
      242 GETTABLEKS                       R15 R5 K55 ["DialogButtonBorder"]
      244 GETTABLEKS                       R16 R4 K28 ["Gray"]
      246 SETTABLE                         R16 R14 R15
      247 GETTABLEKS                       R15 R5 K56 ["DialogButtonHover"]
      249 GETTABLEKS                       R16 R4 K28 ["Gray"]
      251 SETTABLE                         R16 R14 R15
      252 GETTABLEKS                       R15 R5 K57 ["DialogButtonPressed"]
      254 GETTABLEKS                       R17 R3 K28 ["Gray"]
      256 GETTABLEN                        R16 R17 10
      257 SETTABLE                         R16 R14 R15
      258 GETTABLEKS                       R15 R5 K58 ["DialogButtonText"]
      260 GETTABLEKS                       R17 R3 K28 ["Gray"]
      262 GETTABLEN                        R16 R17 10
      263 SETTABLE                         R16 R14 R15
      264 GETTABLEKS                       R15 R5 K59 ["DialogMainButton"]
      266 GETTABLEKS                       R17 R3 K42 ["Blue"]
      268 GETTABLEN                        R16 R17 70
      269 SETTABLE                         R16 R14 R15
      270 GETTABLEKS                       R15 R5 K60 ["DialogMainButtonDisabled"]
      272 GETTABLEKS                       R16 R4 K28 ["Gray"]
      274 SETTABLE                         R16 R14 R15
      275 GETTABLEKS                       R15 R5 K61 ["DialogMainButtonHover"]
      277 GETTABLEKS                       R17 R3 K42 ["Blue"]
      279 GETTABLEN                        R16 R17 60
      280 SETTABLE                         R16 R14 R15
      281 GETTABLEKS                       R15 R5 K62 ["DialogMainButtonPressed"]
      283 GETTABLEKS                       R16 R4 K63 ["Blue_Dark"]
      285 SETTABLE                         R16 R14 R15
      286 GETTABLEKS                       R15 R5 K64 ["DialogMainButtonSelected"]
      288 GETTABLEKS                       R16 R4 K63 ["Blue_Dark"]
      290 SETTABLE                         R16 R14 R15
      291 GETTABLEKS                       R15 R5 K65 ["DialogMainButtonText"]
      293 GETTABLEKS                       R17 R3 K28 ["Gray"]
      295 GETTABLEN                        R16 R17 10
      296 SETTABLE                         R16 R14 R15
      297 GETTABLEKS                       R15 R5 K66 ["DialogMainButtonTextDisabled"]
      299 GETTABLEKS                       R17 R3 K28 ["Gray"]
      301 GETTABLEN                        R16 R17 60
      302 SETTABLE                         R16 R14 R15
      303 GETTABLEKS                       R15 R5 K67 ["DimmedText"]
      305 GETTABLEKS                       R16 R4 K35 ["lighter"]
      307 GETTABLEKS                       R17 R4 K36 ["Black"]
      309 LOADK                            R18 K68 [0.6]
      310 CALL                             R16 2 1
      311 SETTABLE                         R16 R14 R15
      312 GETTABLEKS                       R15 R5 K69 ["Dropdown"]
      314 GETTABLEKS                       R16 R4 K70 ["Slate"]
      316 SETTABLE                         R16 R14 R15
      317 GETTABLEKS                       R15 R5 K71 ["InputFieldBackground"]
      319 SETTABLE                         R11 R14 R15
      320 GETTABLEKS                       R15 R5 K72 ["InputFieldBackgroundDisabled"]
      322 SETTABLE                         R11 R14 R15
      323 GETTABLEKS                       R15 R5 K73 ["InputFieldBorder"]
      325 GETTABLEKS                       R17 R3 K28 ["Gray"]
      327 GETTABLEN                        R16 R17 110
      328 SETTABLE                         R16 R14 R15
      329 GETTABLEKS                       R15 R5 K74 ["InputFieldBorderDisabled"]
      331 GETTABLEKS                       R17 R3 K28 ["Gray"]
      333 GETTABLEN                        R16 R17 100
      334 SETTABLE                         R16 R14 R15
      335 GETTABLEKS                       R15 R5 K75 ["InputFieldBorderHover"]
      337 GETTABLEKS                       R17 R3 K28 ["Gray"]
      339 GETTABLEN                        R16 R17 80
      340 SETTABLE                         R16 R14 R15
      341 GETTABLEKS                       R15 R5 K76 ["InputFieldBorderSelected"]
      343 GETTABLEKS                       R17 R3 K42 ["Blue"]
      345 GETTABLEN                        R16 R17 70
      346 SETTABLE                         R16 R14 R15
      347 GETTABLEKS                       R15 R5 K77 ["Item"]
      349 GETTABLEKS                       R16 R4 K70 ["Slate"]
      351 SETTABLE                         R16 R14 R15
      352 GETTABLEKS                       R15 R5 K78 ["ItemHovered"]
      354 GETTABLEKS                       R16 R4 K28 ["Gray"]
      356 SETTABLE                         R16 R14 R15
      357 GETTABLEKS                       R15 R5 K79 ["ItemSelected"]
      359 GETTABLEKS                       R16 R4 K63 ["Blue_Dark"]
      361 SETTABLE                         R16 R14 R15
      362 GETTABLEKS                       R15 R5 K80 ["Light"]
      364 GETTABLEKS                       R17 R3 K30 ["White"]
      366 LOADN                            R18 0
      367 GETTABLE                         R16 R17 R18
      368 SETTABLE                         R16 R14 R15
      369 GETTABLEKS                       R15 R5 K81 ["MainBackground"]
      371 GETTABLEKS                       R17 R3 K28 ["Gray"]
      373 GETTABLEN                        R16 R17 110
      374 SETTABLE                         R16 R14 R15
      375 GETTABLEKS                       R15 R5 K82 ["MainButton"]
      377 GETTABLEKS                       R16 R4 K42 ["Blue"]
      379 SETTABLE                         R16 R14 R15
      380 GETTABLEKS                       R15 R5 K83 ["MainTextDisabled"]
      382 GETTABLEKS                       R17 R3 K28 ["Gray"]
      384 GETTABLEN                        R16 R17 70
      385 SETTABLE                         R16 R14 R15
      386 GETTABLEKS                       R15 R5 K84 ["MainTextHover"]
      388 GETTABLEKS                       R17 R3 K28 ["Gray"]
      390 GETTABLEN                        R16 R17 60
      391 SETTABLE                         R16 R14 R15
      392 GETTABLEKS                       R15 R5 K85 ["MainTextSelected"]
      394 GETTABLEKS                       R16 R4 K30 ["White"]
      396 SETTABLE                         R16 R14 R15
      397 GETTABLEKS                       R15 R5 K86 ["MenuBarBackground"]
      399 GETTABLEKS                       R17 R3 K28 ["Gray"]
      401 GETTABLEN                        R16 R17 100
      402 SETTABLE                         R16 R14 R15
      403 GETTABLEKS                       R15 R5 K87 ["MenuEntryHighlight"]
      405 SETTABLE                         R10 R14 R15
      406 GETTABLEKS                       R15 R5 K88 ["MenuEntryHover"]
      408 GETTABLEKS                       R17 R3 K28 ["Gray"]
      410 GETTABLEN                        R16 R17 110
      411 SETTABLE                         R16 R14 R15
      412 GETTABLEKS                       R15 R5 K89 ["Mid"]
      414 GETTABLEKS                       R17 R3 K28 ["Gray"]
      416 GETTABLEN                        R16 R17 110
      417 SETTABLE                         R16 R14 R15
      418 GETTABLEKS                       R15 R5 K90 ["SubBackground"]
      420 GETTABLEKS                       R16 R4 K28 ["Gray"]
      422 SETTABLE                         R16 R14 R15
      423 GETTABLEKS                       R15 R5 K91 ["SubBackground2"]
      425 GETTABLEKS                       R16 R4 K92 ["Carbon"]
      427 SETTABLE                         R16 R14 R15
      428 GETTABLEKS                       R15 R5 K93 ["RadioButtonDisabledImage"]
      430 LOADK                            R16 K94 ["rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png"]
      431 SETTABLE                         R16 R14 R15
      432 GETTABLEKS                       R15 R5 K95 ["RibbonTab"]
      434 GETTABLEKS                       R17 R3 K28 ["Gray"]
      436 GETTABLEN                        R16 R17 120
      437 SETTABLE                         R16 R14 R15
      438 GETTABLEKS                       R15 R5 K96 ["ScrollBarBackground"]
      440 GETTABLEKS                       R17 R3 K28 ["Gray"]
      442 GETTABLEN                        R16 R17 100
      443 SETTABLE                         R16 R14 R15
      444 GETTABLEKS                       R15 R5 K97 ["ScrollBar"]
      446 GETTABLEKS                       R17 R3 K28 ["Gray"]
      448 GETTABLEN                        R16 R17 80
      449 SETTABLE                         R16 R14 R15
      450 GETTABLEKS                       R15 R5 K98 ["SliderKnobColor"]
      452 GETTABLEKS                       R17 R3 K30 ["White"]
      454 LOADN                            R18 0
      455 GETTABLE                         R16 R17 R18
      456 SETTABLE                         R16 R14 R15
      457 GETTABLEKS                       R15 R5 K99 ["SliderKnobImage"]
      459 LOADK                            R16 K100 ["rbxasset://textures/DeveloperFramework/slider_knob.png"]
      460 SETTABLE                         R16 R14 R15
      461 GETTABLEKS                       R15 R5 K101 ["SliderBackground"]
      463 GETTABLEKS                       R17 R3 K28 ["Gray"]
      465 GETTABLEN                        R16 R17 80
      466 SETTABLE                         R16 R14 R15
      467 GETTABLEKS                       R15 R5 K102 ["SubText"]
      469 GETTABLEKS                       R17 R3 K28 ["Gray"]
      471 GETTABLEN                        R16 R17 40
      472 SETTABLE                         R16 R14 R15
      473 GETTABLEKS                       R15 R5 K103 ["Tab"]
      475 GETTABLEKS                       R17 R3 K28 ["Gray"]
      477 GETTABLEN                        R16 R17 100
      478 SETTABLE                         R16 R14 R15
      479 GETTABLEKS                       R15 R5 K104 ["TabHovered"]
      481 GETTABLEKS                       R17 R3 K28 ["Gray"]
      483 GETTABLEN                        R16 R17 120
      484 SETTABLE                         R16 R14 R15
      485 GETTABLEKS                       R15 R5 K105 ["TabSelected"]
      487 GETTABLEKS                       R17 R3 K28 ["Gray"]
      489 GETTABLEN                        R16 R17 110
      490 SETTABLE                         R16 R14 R15
      491 GETTABLEKS                       R15 R5 K106 ["TableItem"]
      493 GETTABLEKS                       R16 R4 K70 ["Slate"]
      495 SETTABLE                         R16 R14 R15
      496 GETTABLEKS                       R15 R5 K107 ["TableItemSelected"]
      498 GETTABLEKS                       R17 R3 K42 ["Blue"]
      500 GETTABLEN                        R16 R17 70
      501 SETTABLE                         R16 R14 R15
      502 GETTABLEKS                       R15 R5 K108 ["Titlebar"]
      504 GETTABLEKS                       R17 R3 K28 ["Gray"]
      506 GETTABLEN                        R16 R17 100
      507 SETTABLE                         R16 R14 R15
      508 GETTABLEKS                       R15 R5 K109 ["TitlebarText"]
      510 GETTABLEKS                       R17 R3 K28 ["Gray"]
      512 GETTABLEN                        R16 R17 30
      513 SETTABLE                         R16 R14 R15
      514 GETTABLEKS                       R15 R5 K110 ["ToggleOnImage"]
      516 LOADK                            R16 K111 ["rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"]
      517 SETTABLE                         R16 R14 R15
      518 GETTABLEKS                       R15 R5 K112 ["ToggleOffImage"]
      520 LOADK                            R16 K113 ["rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"]
      521 SETTABLE                         R16 R14 R15
      522 GETTABLEKS                       R15 R5 K114 ["ToggleDisabledImage"]
      524 LOADK                            R16 K115 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"]
      525 SETTABLE                         R16 R14 R15
      526 GETTABLEKS                       R15 R5 K116 ["ToggleDisabledAndSelectedImage"]
      528 LOADK                            R16 K117 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_dark.png"]
      529 SETTABLE                         R16 R14 R15
      530 GETTABLEKS                       R15 R5 K118 ["CheckboxUncheckedImage"]
      532 LOADK                            R16 K119 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_dark.png"]
      533 SETTABLE                         R16 R14 R15
      534 GETTABLEKS                       R15 R5 K120 ["CheckboxCheckedImage"]
      536 LOADK                            R16 K121 ["rbxasset://textures/DeveloperFramework/checkbox_checked_dark.png"]
      537 SETTABLE                         R16 R14 R15
      538 GETTABLEKS                       R15 R5 K122 ["CheckboxIndeterminateImage"]
      540 LOADK                            R16 K123 ["rbxasset://textures/DeveloperFramework/checkbox_indeterminate_dark.png"]
      541 SETTABLE                         R16 R14 R15
      542 GETTABLEKS                       R15 R5 K124 ["CheckboxDisabledImage"]
      544 LOADK                            R16 K125 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_dark.png"]
      545 SETTABLE                         R16 R14 R15
      546 GETTABLEKS                       R15 R5 K126 ["EyeIconOnImage"]
      548 LOADK                            R16 K127 ["rbxasset://textures/DeveloperFramework/UIOn_dark.png"]
      549 SETTABLE                         R16 R14 R15
      550 GETTABLEKS                       R15 R5 K128 ["EyeIconOffImage"]
      552 LOADK                            R16 K129 ["rbxasset://textures/DeveloperFramework/UIOff_dark.png"]
      553 SETTABLE                         R16 R14 R15
      554 GETTABLEKS                       R15 R5 K130 ["RadioOffImage"]
      556 LOADK                            R16 K131 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOff.png"]
      557 SETTABLE                         R16 R14 R15
      558 GETTABLEKS                       R15 R5 K132 ["RadioOnImage"]
      560 LOADK                            R16 K133 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOn.png"]
      561 SETTABLE                         R16 R14 R15
      562 GETTABLEKS                       R15 R5 K134 ["CheckedFieldBackgroundHover"]
      564 GETTABLEKS                       R17 R3 K28 ["Gray"]
      566 GETTABLEN                        R16 R17 110
      567 SETTABLE                         R16 R14 R15
      568 GETTABLEKS                       R15 R5 K135 ["ShimmerStart"]
      570 GETTABLEKS                       R16 R4 K28 ["Gray"]
      572 SETTABLE                         R16 R14 R15
      573 GETTABLEKS                       R15 R5 K136 ["ShimmerEnd"]
      575 GETTABLEKS                       R16 R4 K28 ["Gray"]
      577 SETTABLE                         R16 R14 R15
      578 GETTABLEKS                       R15 R5 K137 ["ResetCameraImage"]
      580 LOADK                            R16 K138 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
      581 SETTABLE                         R16 R14 R15
      582 GETIMPORT                        R15 K142 [Enum.Font.SourceSans]
      584 SETTABLEKS                       R15 R14 K140 ["Font"]
      586 LOADN                            R15 18
      587 SETTABLEKS                       R15 R14 K143 ["TextSize"]
      589 GETTABLEKS                       R15 R5 K144 ["ActionSecondaryHoverTransparency"]
      591 LOADK                            R16 K145 [0.84]
      592 SETTABLE                         R16 R14 R15
      593 GETTABLEKS                       R15 R5 K146 ["ActionSecondaryHover"]
      595 GETTABLEKS                       R17 R3 K28 ["Gray"]
      597 GETTABLEN                        R16 R17 50
      598 SETTABLE                         R16 R14 R15
      599 GETTABLEKS                       R15 R5 K147 ["DropdownMenuStateLayerBackground"]
      601 GETTABLEKS                       R17 R3 K28 ["Gray"]
      603 GETTABLEN                        R16 R17 90
      604 SETTABLE                         R16 R14 R15
      605 GETTABLEKS                       R15 R5 K148 ["DropdownMenuStateLayerBorderColor"]
      607 GETTABLEKS                       R17 R3 K28 ["Gray"]
      609 GETTABLEN                        R16 R17 80
      610 SETTABLE                         R16 R14 R15
      611 CALL                             R12 2 -1
      612 RETURN                           R12 -1
