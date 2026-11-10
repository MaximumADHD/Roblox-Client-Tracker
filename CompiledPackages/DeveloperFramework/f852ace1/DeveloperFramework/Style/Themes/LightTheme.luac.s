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
       22 GETTABLEKS                       R4 R4 K9 ["Themes"]
       24 GETTABLEKS                       R4 R4 K10 ["FoundationLight"]
       26 CALL                             R3 1 1
       27 MOVE                             R4 R3
       28 LOADN                            R5 1
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K2 ["Style"]
       34 GETTABLEKS                       R6 R6 K11 ["ColorSystem"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K2 ["Style"]
       41 GETTABLEKS                       R7 R7 K12 ["Colors"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K2 ["Style"]
       48 GETTABLEKS                       R8 R8 K13 ["StyleKey"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K2 ["Style"]
       55 GETTABLEKS                       R9 R9 K11 ["ColorSystem"]
       57 GETTABLEKS                       R9 R9 K14 ["getStudioColorClassTheme"]
       59 CALL                             R8 1 1
       60 MOVE                             R9 R8
       61 LOADK                            R10 K15 ["Light"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R4 K16 ["Color"]
       65 GETTABLEKS                       R10 R10 K17 ["ActionSoftEmphasis"]
       67 GETTABLEKS                       R10 R10 K18 ["Background"]
       69 GETTABLEKS                       R10 R10 K19 ["Color3"]
       71 GETTABLEKS                       R12 R4 K20 ["LightMode"]
       73 GETTABLEKS                       R12 R12 K21 ["Surface"]
       75 GETTABLEKS                       R12 R12 K22 ["Surface_100"]
       77 GETTABLEKS                       R12 R12 K19 ["Color3"]
       79 GETTABLEKS                       R13 R4 K16 ["Color"]
       81 GETTABLEKS                       R13 R13 K17 ["ActionSoftEmphasis"]
       83 GETTABLEKS                       R13 R13 K18 ["Background"]
       85 GETTABLEKS                       R13 R13 K23 ["Transparency"]
       87 NAMECALL                         R10 R10 K24 ["Lerp"]
       89 CALL                             R10 3 1
       90 GETTABLEKS                       R11 R4 K16 ["Color"]
       92 GETTABLEKS                       R11 R11 K25 ["Shift"]
       94 GETTABLEKS                       R11 R11 K26 ["Shift_200"]
       96 GETTABLEKS                       R11 R11 K19 ["Color3"]
       98 GETTABLEKS                       R13 R4 K20 ["LightMode"]
      100 GETTABLEKS                       R13 R13 K21 ["Surface"]
      102 GETTABLEKS                       R13 R13 K22 ["Surface_100"]
      104 GETTABLEKS                       R13 R13 K19 ["Color3"]
      106 GETTABLEKS                       R14 R4 K16 ["Color"]
      108 GETTABLEKS                       R14 R14 K25 ["Shift"]
      110 GETTABLEKS                       R14 R14 K26 ["Shift_200"]
      112 GETTABLEKS                       R14 R14 K23 ["Transparency"]
      114 NAMECALL                         R11 R11 K24 ["Lerp"]
      116 CALL                             R11 3 1
      117 MOVE                             R12 R2
      118 MOVE                             R13 R9
      119 NEWTABLE                         R14 128 0
      121 GETTABLEKS                       R15 R7 K27 ["Border"]
      123 GETTABLEKS                       R17 R5 K28 ["Gray"]
      125 GETTABLEN                        R16 R17 50
      126 SETTABLE                         R16 R14 R15
      127 GETTABLEKS                       R15 R7 K29 ["BrightText"]
      129 GETTABLEKS                       R16 R6 K30 ["Black"]
      131 SETTABLE                         R16 R14 R15
      132 GETTABLEKS                       R15 R7 K31 ["Button"]
      134 GETTABLEKS                       R16 R6 K32 ["White"]
      136 SETTABLE                         R16 R14 R15
      137 GETTABLEKS                       R15 R7 K33 ["ButtonText"]
      139 GETTABLEKS                       R16 R6 K30 ["Black"]
      141 SETTABLE                         R16 R14 R15
      142 GETTABLEKS                       R15 R7 K34 ["ButtonHover"]
      144 SETTABLE                         R11 R14 R15
      145 GETTABLEKS                       R15 R7 K35 ["ButtonDisabled"]
      147 GETTABLEKS                       R16 R6 K32 ["White"]
      149 SETTABLE                         R16 R14 R15
      150 GETTABLEKS                       R15 R7 K36 ["ButtonTextDisabled"]
      152 GETTABLEKS                       R17 R5 K28 ["Gray"]
      154 GETTABLEN                        R16 R17 60
      155 SETTABLE                         R16 R14 R15
      156 GETTABLEKS                       R15 R7 K37 ["ButtonPressed"]
      158 GETTABLEKS                       R17 R5 K28 ["Gray"]
      160 GETTABLEN                        R16 R17 40
      161 SETTABLE                         R16 R14 R15
      162 GETTABLEKS                       R15 R7 K38 ["ButtonSelected"]
      164 GETTABLEKS                       R17 R5 K28 ["Gray"]
      166 GETTABLEN                        R16 R17 20
      167 SETTABLE                         R16 R14 R15
      168 GETTABLEKS                       R15 R7 K39 ["ImageButtonBackground"]
      170 GETTABLEKS                       R17 R5 K28 ["Gray"]
      172 GETTABLEN                        R16 R17 50
      173 SETTABLE                         R16 R14 R15
      174 GETTABLEKS                       R15 R7 K40 ["ImageButtonHover"]
      176 GETTABLEKS                       R16 R6 K41 ["lighter"]
      178 GETTABLEKS                       R18 R5 K28 ["Gray"]
      180 GETTABLEN                        R17 R18 50
      181 LOADK                            R18 K42 [0.26]
      182 CALL                             R16 2 1
      183 SETTABLE                         R16 R14 R15
      184 GETTABLEKS                       R15 R7 K43 ["Icon"]
      186 GETTABLEKS                       R17 R5 K28 ["Gray"]
      188 GETTABLEN                        R16 R17 60
      189 SETTABLE                         R16 R14 R15
      190 GETTABLEKS                       R15 R7 K44 ["IconBackgroundColor"]
      192 GETTABLEKS                       R16 R6 K45 ["Gray_Lightest"]
      194 SETTABLE                         R16 R14 R15
      195 GETTABLEKS                       R15 R7 K46 ["IconImageColor"]
      197 GETTABLEKS                       R17 R5 K28 ["Gray"]
      199 GETTABLEN                        R16 R17 50
      200 SETTABLE                         R16 R14 R15
      201 GETTABLEKS                       R15 R7 K47 ["ToolbarBackgroundColor"]
      203 GETTABLEKS                       R17 R5 K30 ["Black"]
      205 LOADN                            R18 0
      206 GETTABLE                         R16 R17 R18
      207 SETTABLE                         R16 R14 R15
      208 GETTABLEKS                       R15 R7 K48 ["ToolbarButtonBackgroundColor"]
      210 GETTABLEKS                       R17 R5 K28 ["Gray"]
      212 GETTABLEN                        R16 R17 100
      213 SETTABLE                         R16 R14 R15
      214 GETTABLEKS                       R15 R7 K49 ["CategoryItem"]
      216 GETTABLEKS                       R17 R5 K28 ["Gray"]
      218 GETTABLEN                        R16 R17 30
      219 SETTABLE                         R16 R14 R15
      220 GETTABLEKS                       R15 R7 K50 ["CurrentMarker"]
      222 GETTABLEKS                       R16 R6 K51 ["Blue"]
      224 SETTABLE                         R16 R14 R15
      225 GETTABLEKS                       R15 R7 K52 ["CurrentMarkerSelected"]
      227 GETTABLEKS                       R16 R6 K51 ["Blue"]
      229 SETTABLE                         R16 R14 R15
      230 GETTABLEKS                       R15 R7 K53 ["DialogButton"]
      232 GETTABLEKS                       R16 R6 K32 ["White"]
      234 SETTABLE                         R16 R14 R15
      235 GETTABLEKS                       R15 R7 K54 ["DialogButtonBorder"]
      237 GETTABLEKS                       R16 R6 K55 ["Gray_Light"]
      239 SETTABLE                         R16 R14 R15
      240 GETTABLEKS                       R15 R7 K56 ["DialogButtonHover"]
      242 GETTABLEKS                       R16 R6 K57 ["Blue_Light"]
      244 SETTABLE                         R16 R14 R15
      245 GETTABLEKS                       R15 R7 K58 ["DialogButtonPressed"]
      247 GETTABLEKS                       R17 R5 K28 ["Gray"]
      249 GETTABLEN                        R16 R17 40
      250 SETTABLE                         R16 R14 R15
      251 GETTABLEKS                       R15 R7 K59 ["DialogButtonText"]
      253 GETTABLEKS                       R16 R6 K30 ["Black"]
      255 SETTABLE                         R16 R14 R15
      256 GETTABLEKS                       R15 R7 K60 ["DialogMainButton"]
      258 GETTABLEKS                       R17 R5 K51 ["Blue"]
      260 GETTABLEN                        R16 R17 70
      261 SETTABLE                         R16 R14 R15
      262 GETTABLEKS                       R15 R7 K61 ["DialogMainButtonDisabled"]
      264 GETTABLEKS                       R17 R5 K28 ["Gray"]
      266 GETTABLEN                        R16 R17 40
      267 SETTABLE                         R16 R14 R15
      268 GETTABLEKS                       R15 R7 K62 ["DialogMainButtonHover"]
      270 GETTABLEKS                       R17 R5 K51 ["Blue"]
      272 GETTABLEN                        R16 R17 60
      273 SETTABLE                         R16 R14 R15
      274 GETTABLEKS                       R15 R7 K63 ["DialogMainButtonPressed"]
      276 GETTABLEKS                       R16 R6 K64 ["Blue_Dark"]
      278 SETTABLE                         R16 R14 R15
      279 GETTABLEKS                       R15 R7 K65 ["DialogMainButtonSelected"]
      281 GETTABLEKS                       R16 R6 K64 ["Blue_Dark"]
      283 SETTABLE                         R16 R14 R15
      284 GETTABLEKS                       R15 R7 K66 ["DialogMainButtonText"]
      286 GETTABLEKS                       R16 R6 K32 ["White"]
      288 SETTABLE                         R16 R14 R15
      289 GETTABLEKS                       R15 R7 K67 ["DialogMainButtonTextDisabled"]
      291 GETTABLEKS                       R16 R6 K32 ["White"]
      293 SETTABLE                         R16 R14 R15
      294 GETTABLEKS                       R15 R7 K68 ["DimmedText"]
      296 GETTABLEKS                       R17 R5 K28 ["Gray"]
      298 GETTABLEN                        R16 R17 60
      299 SETTABLE                         R16 R14 R15
      300 GETTABLEKS                       R15 R7 K69 ["Dropdown"]
      302 GETTABLEKS                       R16 R6 K32 ["White"]
      304 SETTABLE                         R16 R14 R15
      305 GETTABLEKS                       R15 R7 K70 ["InputFieldBackground"]
      307 SETTABLE                         R11 R14 R15
      308 GETTABLEKS                       R15 R7 K71 ["InputFieldBackgroundDisabled"]
      310 SETTABLE                         R11 R14 R15
      311 GETTABLEKS                       R15 R7 K72 ["InputFieldBorder"]
      313 GETTABLEKS                       R17 R5 K28 ["Gray"]
      315 GETTABLEN                        R16 R17 40
      316 SETTABLE                         R16 R14 R15
      317 GETTABLEKS                       R15 R7 K73 ["InputFieldBorderDisabled"]
      319 GETTABLEKS                       R17 R5 K28 ["Gray"]
      321 GETTABLEN                        R16 R17 50
      322 SETTABLE                         R16 R14 R15
      323 GETTABLEKS                       R15 R7 K74 ["InputFieldBorderHover"]
      325 GETTABLEKS                       R16 R6 K51 ["Blue"]
      327 SETTABLE                         R16 R14 R15
      328 GETTABLEKS                       R15 R7 K75 ["InputFieldBorderSelected"]
      330 GETTABLEKS                       R17 R5 K51 ["Blue"]
      332 GETTABLEN                        R16 R17 70
      333 SETTABLE                         R16 R14 R15
      334 GETTABLEKS                       R15 R7 K76 ["Item"]
      336 GETTABLEKS                       R16 R6 K32 ["White"]
      338 SETTABLE                         R16 R14 R15
      339 GETTABLEKS                       R15 R7 K77 ["ItemHovered"]
      341 GETTABLEKS                       R16 R6 K28 ["Gray"]
      343 SETTABLE                         R16 R14 R15
      344 GETTABLEKS                       R15 R7 K78 ["ItemSelected"]
      346 GETTABLEKS                       R16 R6 K64 ["Blue_Dark"]
      348 SETTABLE                         R16 R14 R15
      349 GETTABLEKS                       R15 R7 K15 ["Light"]
      351 GETTABLEKS                       R17 R5 K28 ["Gray"]
      353 GETTABLEN                        R16 R17 20
      354 SETTABLE                         R16 R14 R15
      355 GETTABLEKS                       R15 R7 K79 ["MainBackground"]
      357 GETTABLEKS                       R16 R6 K32 ["White"]
      359 SETTABLE                         R16 R14 R15
      360 GETTABLEKS                       R15 R7 K80 ["MainButton"]
      362 GETTABLEKS                       R17 R5 K51 ["Blue"]
      364 GETTABLEN                        R16 R17 10
      365 SETTABLE                         R16 R14 R15
      366 GETTABLEKS                       R15 R7 K81 ["MainTextDisabled"]
      368 GETTABLEKS                       R17 R5 K28 ["Gray"]
      370 GETTABLEN                        R16 R17 60
      371 SETTABLE                         R16 R14 R15
      372 GETTABLEKS                       R15 R7 K82 ["MainTextHover"]
      374 GETTABLEKS                       R16 R6 K30 ["Black"]
      376 SETTABLE                         R16 R14 R15
      377 GETTABLEKS                       R15 R7 K83 ["MainTextSelected"]
      379 GETTABLEKS                       R17 R5 K30 ["Black"]
      381 LOADN                            R18 0
      382 GETTABLE                         R16 R17 R18
      383 SETTABLE                         R16 R14 R15
      384 GETTABLEKS                       R15 R7 K84 ["MenuBarBackground"]
      386 GETTABLEKS                       R16 R6 K45 ["Gray_Lightest"]
      388 SETTABLE                         R16 R14 R15
      389 GETTABLEKS                       R15 R7 K85 ["MenuEntryHighlight"]
      391 SETTABLE                         R10 R14 R15
      392 GETTABLEKS                       R15 R7 K86 ["MenuEntryHover"]
      394 GETTABLEKS                       R16 R6 K55 ["Gray_Light"]
      396 SETTABLE                         R16 R14 R15
      397 GETTABLEKS                       R15 R7 K87 ["Mid"]
      399 GETTABLEKS                       R17 R5 K28 ["Gray"]
      401 GETTABLEN                        R16 R17 20
      402 SETTABLE                         R16 R14 R15
      403 GETTABLEKS                       R15 R7 K88 ["SubBackground"]
      405 GETTABLEKS                       R16 R6 K89 ["Gray_Lighter"]
      407 SETTABLE                         R16 R14 R15
      408 GETTABLEKS                       R15 R7 K90 ["SubBackground2"]
      410 GETTABLEKS                       R16 R6 K45 ["Gray_Lightest"]
      412 SETTABLE                         R16 R14 R15
      413 GETTABLEKS                       R15 R7 K91 ["RadioButtonDisabledImage"]
      415 LOADK                            R16 K92 ["rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png"]
      416 SETTABLE                         R16 R14 R15
      417 GETTABLEKS                       R15 R7 K93 ["RibbonTab"]
      419 GETTABLEKS                       R17 R5 K28 ["Gray"]
      421 GETTABLEN                        R16 R17 10
      422 SETTABLE                         R16 R14 R15
      423 GETTABLEKS                       R15 R7 K94 ["ScrollBarBackground"]
      425 GETTABLEKS                       R17 R5 K28 ["Gray"]
      427 GETTABLEN                        R16 R17 20
      428 SETTABLE                         R16 R14 R15
      429 GETTABLEKS                       R15 R7 K95 ["ScrollBar"]
      431 GETTABLEKS                       R16 R6 K55 ["Gray_Light"]
      433 SETTABLE                         R16 R14 R15
      434 GETTABLEKS                       R15 R7 K96 ["SliderKnobColor"]
      436 GETTABLEKS                       R17 R5 K30 ["Black"]
      438 LOADN                            R18 0
      439 GETTABLE                         R16 R17 R18
      440 SETTABLE                         R16 R14 R15
      441 GETTABLEKS                       R15 R7 K97 ["SliderKnobImage"]
      443 LOADK                            R16 K98 ["rbxasset://textures/DeveloperFramework/slider_knob.png"]
      444 SETTABLE                         R16 R14 R15
      445 GETTABLEKS                       R15 R7 K99 ["SliderBackground"]
      447 GETTABLEKS                       R17 R5 K28 ["Gray"]
      449 GETTABLEN                        R16 R17 50
      450 SETTABLE                         R16 R14 R15
      451 GETTABLEKS                       R15 R7 K100 ["SubText"]
      453 GETTABLEKS                       R16 R6 K101 ["Gray_Mid"]
      455 SETTABLE                         R16 R14 R15
      456 GETTABLEKS                       R15 R7 K102 ["Tab"]
      458 GETTABLEKS                       R17 R5 K28 ["Gray"]
      460 GETTABLEN                        R16 R17 10
      461 SETTABLE                         R16 R14 R15
      462 GETTABLEKS                       R15 R7 K103 ["TabHovered"]
      464 GETTABLEKS                       R16 R6 K32 ["White"]
      466 SETTABLE                         R16 R14 R15
      467 GETTABLEKS                       R15 R7 K104 ["TabSelected"]
      469 GETTABLEKS                       R17 R5 K51 ["Blue"]
      471 GETTABLEN                        R16 R17 10
      472 SETTABLE                         R16 R14 R15
      473 GETTABLEKS                       R15 R7 K105 ["TableItem"]
      475 GETTABLEKS                       R16 R6 K45 ["Gray_Lightest"]
      477 SETTABLE                         R16 R14 R15
      478 GETTABLEKS                       R15 R7 K106 ["TableItemSelected"]
      480 GETTABLEKS                       R17 R5 K51 ["Blue"]
      482 GETTABLEN                        R16 R17 50
      483 SETTABLE                         R16 R14 R15
      484 GETTABLEKS                       R15 R7 K107 ["Titlebar"]
      486 GETTABLEKS                       R17 R5 K28 ["Gray"]
      488 GETTABLEN                        R16 R17 30
      489 SETTABLE                         R16 R14 R15
      490 GETTABLEKS                       R15 R7 K108 ["TitlebarText"]
      492 GETTABLEKS                       R16 R6 K30 ["Black"]
      494 SETTABLE                         R16 R14 R15
      495 GETTABLEKS                       R15 R7 K109 ["ToggleOnImage"]
      497 LOADK                            R16 K110 ["rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"]
      498 SETTABLE                         R16 R14 R15
      499 GETTABLEKS                       R15 R7 K111 ["ToggleOffImage"]
      501 LOADK                            R16 K112 ["rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"]
      502 SETTABLE                         R16 R14 R15
      503 GETTABLEKS                       R15 R7 K113 ["ToggleDisabledImage"]
      505 LOADK                            R16 K114 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"]
      506 SETTABLE                         R16 R14 R15
      507 GETTABLEKS                       R15 R7 K115 ["ToggleDisabledAndSelectedImage"]
      509 LOADK                            R16 K116 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_light.png"]
      510 SETTABLE                         R16 R14 R15
      511 GETTABLEKS                       R15 R7 K117 ["CheckboxUncheckedImage"]
      513 LOADK                            R16 K118 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_light.png"]
      514 SETTABLE                         R16 R14 R15
      515 GETTABLEKS                       R15 R7 K119 ["CheckboxCheckedImage"]
      517 LOADK                            R16 K120 ["rbxasset://textures/DeveloperFramework/checkbox_checked_light.png"]
      518 SETTABLE                         R16 R14 R15
      519 GETTABLEKS                       R15 R7 K121 ["CheckboxIndeterminateImage"]
      521 LOADK                            R16 K122 ["rbxasset://textures/DeveloperFramework/checkbox_indeterminate_light.png"]
      522 SETTABLE                         R16 R14 R15
      523 GETTABLEKS                       R15 R7 K123 ["CheckboxDisabledImage"]
      525 LOADK                            R16 K124 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_light.png"]
      526 SETTABLE                         R16 R14 R15
      527 GETTABLEKS                       R15 R7 K125 ["EyeIconOnImage"]
      529 LOADK                            R16 K126 ["rbxasset://textures/DeveloperFramework/UIOn_light.png"]
      530 SETTABLE                         R16 R14 R15
      531 GETTABLEKS                       R15 R7 K127 ["EyeIconOffImage"]
      533 LOADK                            R16 K128 ["rbxasset://textures/DeveloperFramework/UIOff_light.png"]
      534 SETTABLE                         R16 R14 R15
      535 GETTABLEKS                       R15 R7 K129 ["RadioOffImage"]
      537 LOADK                            R16 K130 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOff.png"]
      538 SETTABLE                         R16 R14 R15
      539 GETTABLEKS                       R15 R7 K131 ["RadioOnImage"]
      541 LOADK                            R16 K132 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOn.png"]
      542 SETTABLE                         R16 R14 R15
      543 GETTABLEKS                       R15 R7 K133 ["CheckedFieldBackgroundHover"]
      545 GETTABLEKS                       R17 R5 K28 ["Gray"]
      547 GETTABLEN                        R16 R17 70
      548 SETTABLE                         R16 R14 R15
      549 GETTABLEKS                       R15 R7 K134 ["ShimmerStart"]
      551 GETTABLEKS                       R16 R6 K89 ["Gray_Lighter"]
      553 SETTABLE                         R16 R14 R15
      554 GETTABLEKS                       R15 R7 K135 ["ShimmerEnd"]
      556 GETTABLEKS                       R16 R6 K89 ["Gray_Lighter"]
      558 SETTABLE                         R16 R14 R15
      559 GETTABLEKS                       R15 R7 K136 ["ResetCameraImage"]
      561 LOADK                            R16 K137 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
      562 SETTABLE                         R16 R14 R15
      563 GETIMPORT                        R15 K141 [Enum.Font.SourceSans]
      565 SETTABLEKS                       R15 R14 K139 ["Font"]
      567 LOADN                            R15 18
      568 SETTABLEKS                       R15 R14 K142 ["TextSize"]
      570 GETTABLEKS                       R15 R7 K143 ["ActionSecondaryHoverTransparency"]
      572 LOADK                            R16 K144 [0.84]
      573 SETTABLE                         R16 R14 R15
      574 GETTABLEKS                       R15 R7 K145 ["ActionSecondaryHover"]
      576 GETTABLEKS                       R17 R5 K28 ["Gray"]
      578 GETTABLEN                        R16 R17 90
      579 SETTABLE                         R16 R14 R15
      580 GETTABLEKS                       R15 R7 K146 ["DropdownMenuStateLayerBackground"]
      582 GETTABLEKS                       R17 R5 K32 ["White"]
      584 LOADN                            R18 0
      585 GETTABLE                         R16 R17 R18
      586 SETTABLE                         R16 R14 R15
      587 GETTABLEKS                       R15 R7 K147 ["DropdownMenuStateLayerBorderColor"]
      589 GETTABLEKS                       R17 R5 K28 ["Gray"]
      591 GETTABLEN                        R16 R17 10
      592 SETTABLE                         R16 R14 R15
      593 CALL                             R12 2 -1
      594 RETURN                           R12 -1
