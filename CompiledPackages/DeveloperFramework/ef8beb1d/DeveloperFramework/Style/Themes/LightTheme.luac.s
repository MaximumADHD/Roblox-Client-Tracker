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
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K15 ["SharedFlags"]
       64 GETTABLEKS                       R10 R10 K16 ["getFFlagDevFrameworkFixInputBackground"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 LOADK                            R11 K17 ["Light"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R4 K18 ["Color"]
       72 GETTABLEKS                       R11 R11 K19 ["ActionSoftEmphasis"]
       74 GETTABLEKS                       R11 R11 K20 ["Background"]
       76 GETTABLEKS                       R11 R11 K21 ["Color3"]
       78 GETTABLEKS                       R13 R4 K22 ["LightMode"]
       80 GETTABLEKS                       R13 R13 K23 ["Surface"]
       82 GETTABLEKS                       R13 R13 K24 ["Surface_100"]
       84 GETTABLEKS                       R13 R13 K21 ["Color3"]
       86 GETTABLEKS                       R14 R4 K18 ["Color"]
       88 GETTABLEKS                       R14 R14 K19 ["ActionSoftEmphasis"]
       90 GETTABLEKS                       R14 R14 K20 ["Background"]
       92 GETTABLEKS                       R14 R14 K25 ["Transparency"]
       94 NAMECALL                         R11 R11 K26 ["Lerp"]
       96 CALL                             R11 3 1
       97 GETTABLEKS                       R12 R4 K18 ["Color"]
       99 GETTABLEKS                       R12 R12 K27 ["Shift"]
      101 GETTABLEKS                       R12 R12 K28 ["Shift_200"]
      103 GETTABLEKS                       R12 R12 K21 ["Color3"]
      105 GETTABLEKS                       R14 R4 K22 ["LightMode"]
      107 GETTABLEKS                       R14 R14 K23 ["Surface"]
      109 GETTABLEKS                       R14 R14 K24 ["Surface_100"]
      111 GETTABLEKS                       R14 R14 K21 ["Color3"]
      113 GETTABLEKS                       R15 R4 K18 ["Color"]
      115 GETTABLEKS                       R15 R15 K27 ["Shift"]
      117 GETTABLEKS                       R15 R15 K28 ["Shift_200"]
      119 GETTABLEKS                       R15 R15 K25 ["Transparency"]
      121 NAMECALL                         R12 R12 K26 ["Lerp"]
      123 CALL                             R12 3 1
      124 MOVE                             R13 R2
      125 MOVE                             R14 R10
      126 NEWTABLE                         R15 128 0
      128 GETTABLEKS                       R16 R7 K29 ["Border"]
      130 GETTABLEKS                       R18 R5 K30 ["Gray"]
      132 GETTABLEN                        R17 R18 50
      133 SETTABLE                         R17 R15 R16
      134 GETTABLEKS                       R16 R7 K31 ["BrightText"]
      136 GETTABLEKS                       R17 R6 K32 ["Black"]
      138 SETTABLE                         R17 R15 R16
      139 GETTABLEKS                       R16 R7 K33 ["Button"]
      141 GETTABLEKS                       R17 R6 K34 ["White"]
      143 SETTABLE                         R17 R15 R16
      144 GETTABLEKS                       R16 R7 K35 ["ButtonText"]
      146 GETTABLEKS                       R17 R6 K32 ["Black"]
      148 SETTABLE                         R17 R15 R16
      149 GETTABLEKS                       R16 R7 K36 ["ButtonHover"]
      151 MOVE                             R18 R9
      152 CALL                             R18 0 1
      153 JUMPIFNOT                        R18 ; [+2]
      154 MOVE                             R17 R12
      155 JUMP                             ; [+3]
      156 GETTABLEKS                       R18 R5 K30 ["Gray"]
      158 GETTABLEN                        R17 R18 20
      159 SETTABLE                         R17 R15 R16
      160 GETTABLEKS                       R16 R7 K37 ["ButtonDisabled"]
      162 GETTABLEKS                       R17 R6 K34 ["White"]
      164 SETTABLE                         R17 R15 R16
      165 GETTABLEKS                       R16 R7 K38 ["ButtonTextDisabled"]
      167 GETTABLEKS                       R18 R5 K30 ["Gray"]
      169 GETTABLEN                        R17 R18 60
      170 SETTABLE                         R17 R15 R16
      171 GETTABLEKS                       R16 R7 K39 ["ButtonPressed"]
      173 GETTABLEKS                       R18 R5 K30 ["Gray"]
      175 GETTABLEN                        R17 R18 40
      176 SETTABLE                         R17 R15 R16
      177 GETTABLEKS                       R16 R7 K40 ["ButtonSelected"]
      179 GETTABLEKS                       R18 R5 K30 ["Gray"]
      181 GETTABLEN                        R17 R18 20
      182 SETTABLE                         R17 R15 R16
      183 GETTABLEKS                       R16 R7 K41 ["ImageButtonBackground"]
      185 GETTABLEKS                       R18 R5 K30 ["Gray"]
      187 GETTABLEN                        R17 R18 50
      188 SETTABLE                         R17 R15 R16
      189 GETTABLEKS                       R16 R7 K42 ["ImageButtonHover"]
      191 GETTABLEKS                       R17 R6 K43 ["lighter"]
      193 GETTABLEKS                       R19 R5 K30 ["Gray"]
      195 GETTABLEN                        R18 R19 50
      196 LOADK                            R19 K44 [0.26]
      197 CALL                             R17 2 1
      198 SETTABLE                         R17 R15 R16
      199 GETTABLEKS                       R16 R7 K45 ["Icon"]
      201 GETTABLEKS                       R18 R5 K30 ["Gray"]
      203 GETTABLEN                        R17 R18 60
      204 SETTABLE                         R17 R15 R16
      205 GETTABLEKS                       R16 R7 K46 ["IconBackgroundColor"]
      207 GETTABLEKS                       R17 R6 K47 ["Gray_Lightest"]
      209 SETTABLE                         R17 R15 R16
      210 GETTABLEKS                       R16 R7 K48 ["IconImageColor"]
      212 GETTABLEKS                       R18 R5 K30 ["Gray"]
      214 GETTABLEN                        R17 R18 50
      215 SETTABLE                         R17 R15 R16
      216 GETTABLEKS                       R16 R7 K49 ["ToolbarBackgroundColor"]
      218 GETTABLEKS                       R18 R5 K32 ["Black"]
      220 LOADN                            R19 0
      221 GETTABLE                         R17 R18 R19
      222 SETTABLE                         R17 R15 R16
      223 GETTABLEKS                       R16 R7 K50 ["ToolbarButtonBackgroundColor"]
      225 GETTABLEKS                       R18 R5 K30 ["Gray"]
      227 GETTABLEN                        R17 R18 100
      228 SETTABLE                         R17 R15 R16
      229 GETTABLEKS                       R16 R7 K51 ["CategoryItem"]
      231 GETTABLEKS                       R18 R5 K30 ["Gray"]
      233 GETTABLEN                        R17 R18 30
      234 SETTABLE                         R17 R15 R16
      235 GETTABLEKS                       R16 R7 K52 ["CurrentMarker"]
      237 GETTABLEKS                       R17 R6 K53 ["Blue"]
      239 SETTABLE                         R17 R15 R16
      240 GETTABLEKS                       R16 R7 K54 ["CurrentMarkerSelected"]
      242 GETTABLEKS                       R17 R6 K53 ["Blue"]
      244 SETTABLE                         R17 R15 R16
      245 GETTABLEKS                       R16 R7 K55 ["DialogButton"]
      247 GETTABLEKS                       R17 R6 K34 ["White"]
      249 SETTABLE                         R17 R15 R16
      250 GETTABLEKS                       R16 R7 K56 ["DialogButtonBorder"]
      252 GETTABLEKS                       R17 R6 K57 ["Gray_Light"]
      254 SETTABLE                         R17 R15 R16
      255 GETTABLEKS                       R16 R7 K58 ["DialogButtonHover"]
      257 GETTABLEKS                       R17 R6 K59 ["Blue_Light"]
      259 SETTABLE                         R17 R15 R16
      260 GETTABLEKS                       R16 R7 K60 ["DialogButtonPressed"]
      262 GETTABLEKS                       R18 R5 K30 ["Gray"]
      264 GETTABLEN                        R17 R18 40
      265 SETTABLE                         R17 R15 R16
      266 GETTABLEKS                       R16 R7 K61 ["DialogButtonText"]
      268 GETTABLEKS                       R17 R6 K32 ["Black"]
      270 SETTABLE                         R17 R15 R16
      271 GETTABLEKS                       R16 R7 K62 ["DialogMainButton"]
      273 GETTABLEKS                       R18 R5 K53 ["Blue"]
      275 GETTABLEN                        R17 R18 70
      276 SETTABLE                         R17 R15 R16
      277 GETTABLEKS                       R16 R7 K63 ["DialogMainButtonDisabled"]
      279 GETTABLEKS                       R18 R5 K30 ["Gray"]
      281 GETTABLEN                        R17 R18 40
      282 SETTABLE                         R17 R15 R16
      283 GETTABLEKS                       R16 R7 K64 ["DialogMainButtonHover"]
      285 GETTABLEKS                       R18 R5 K53 ["Blue"]
      287 GETTABLEN                        R17 R18 60
      288 SETTABLE                         R17 R15 R16
      289 GETTABLEKS                       R16 R7 K65 ["DialogMainButtonPressed"]
      291 GETTABLEKS                       R17 R6 K66 ["Blue_Dark"]
      293 SETTABLE                         R17 R15 R16
      294 GETTABLEKS                       R16 R7 K67 ["DialogMainButtonSelected"]
      296 GETTABLEKS                       R17 R6 K66 ["Blue_Dark"]
      298 SETTABLE                         R17 R15 R16
      299 GETTABLEKS                       R16 R7 K68 ["DialogMainButtonText"]
      301 GETTABLEKS                       R17 R6 K34 ["White"]
      303 SETTABLE                         R17 R15 R16
      304 GETTABLEKS                       R16 R7 K69 ["DialogMainButtonTextDisabled"]
      306 GETTABLEKS                       R17 R6 K34 ["White"]
      308 SETTABLE                         R17 R15 R16
      309 GETTABLEKS                       R16 R7 K70 ["DimmedText"]
      311 GETTABLEKS                       R18 R5 K30 ["Gray"]
      313 GETTABLEN                        R17 R18 60
      314 SETTABLE                         R17 R15 R16
      315 GETTABLEKS                       R16 R7 K71 ["Dropdown"]
      317 GETTABLEKS                       R17 R6 K34 ["White"]
      319 SETTABLE                         R17 R15 R16
      320 GETTABLEKS                       R16 R7 K72 ["InputFieldBackground"]
      322 SETTABLE                         R12 R15 R16
      323 GETTABLEKS                       R16 R7 K73 ["InputFieldBackgroundDisabled"]
      325 SETTABLE                         R12 R15 R16
      326 GETTABLEKS                       R16 R7 K74 ["InputFieldBorder"]
      328 GETTABLEKS                       R18 R5 K30 ["Gray"]
      330 GETTABLEN                        R17 R18 40
      331 SETTABLE                         R17 R15 R16
      332 GETTABLEKS                       R16 R7 K75 ["InputFieldBorderDisabled"]
      334 GETTABLEKS                       R18 R5 K30 ["Gray"]
      336 GETTABLEN                        R17 R18 50
      337 SETTABLE                         R17 R15 R16
      338 GETTABLEKS                       R16 R7 K76 ["InputFieldBorderHover"]
      340 GETTABLEKS                       R17 R6 K53 ["Blue"]
      342 SETTABLE                         R17 R15 R16
      343 GETTABLEKS                       R16 R7 K77 ["InputFieldBorderSelected"]
      345 GETTABLEKS                       R18 R5 K53 ["Blue"]
      347 GETTABLEN                        R17 R18 70
      348 SETTABLE                         R17 R15 R16
      349 GETTABLEKS                       R16 R7 K78 ["Item"]
      351 GETTABLEKS                       R17 R6 K34 ["White"]
      353 SETTABLE                         R17 R15 R16
      354 GETTABLEKS                       R16 R7 K79 ["ItemHovered"]
      356 GETTABLEKS                       R17 R6 K30 ["Gray"]
      358 SETTABLE                         R17 R15 R16
      359 GETTABLEKS                       R16 R7 K80 ["ItemSelected"]
      361 GETTABLEKS                       R17 R6 K66 ["Blue_Dark"]
      363 SETTABLE                         R17 R15 R16
      364 GETTABLEKS                       R16 R7 K17 ["Light"]
      366 GETTABLEKS                       R18 R5 K30 ["Gray"]
      368 GETTABLEN                        R17 R18 20
      369 SETTABLE                         R17 R15 R16
      370 GETTABLEKS                       R16 R7 K81 ["MainBackground"]
      372 GETTABLEKS                       R17 R6 K34 ["White"]
      374 SETTABLE                         R17 R15 R16
      375 GETTABLEKS                       R16 R7 K82 ["MainButton"]
      377 GETTABLEKS                       R18 R5 K53 ["Blue"]
      379 GETTABLEN                        R17 R18 10
      380 SETTABLE                         R17 R15 R16
      381 GETTABLEKS                       R16 R7 K83 ["MainTextDisabled"]
      383 GETTABLEKS                       R18 R5 K30 ["Gray"]
      385 GETTABLEN                        R17 R18 60
      386 SETTABLE                         R17 R15 R16
      387 GETTABLEKS                       R16 R7 K84 ["MainTextHover"]
      389 GETTABLEKS                       R17 R6 K32 ["Black"]
      391 SETTABLE                         R17 R15 R16
      392 GETTABLEKS                       R16 R7 K85 ["MainTextSelected"]
      394 GETTABLEKS                       R18 R5 K32 ["Black"]
      396 LOADN                            R19 0
      397 GETTABLE                         R17 R18 R19
      398 SETTABLE                         R17 R15 R16
      399 GETTABLEKS                       R16 R7 K86 ["MenuBarBackground"]
      401 GETTABLEKS                       R17 R6 K47 ["Gray_Lightest"]
      403 SETTABLE                         R17 R15 R16
      404 GETTABLEKS                       R16 R7 K87 ["MenuEntryHighlight"]
      406 SETTABLE                         R11 R15 R16
      407 GETTABLEKS                       R16 R7 K88 ["MenuEntryHover"]
      409 GETTABLEKS                       R17 R6 K57 ["Gray_Light"]
      411 SETTABLE                         R17 R15 R16
      412 GETTABLEKS                       R16 R7 K89 ["Mid"]
      414 GETTABLEKS                       R18 R5 K30 ["Gray"]
      416 GETTABLEN                        R17 R18 20
      417 SETTABLE                         R17 R15 R16
      418 GETTABLEKS                       R16 R7 K90 ["SubBackground"]
      420 GETTABLEKS                       R17 R6 K91 ["Gray_Lighter"]
      422 SETTABLE                         R17 R15 R16
      423 GETTABLEKS                       R16 R7 K92 ["SubBackground2"]
      425 GETTABLEKS                       R17 R6 K47 ["Gray_Lightest"]
      427 SETTABLE                         R17 R15 R16
      428 GETTABLEKS                       R16 R7 K93 ["RadioButtonDisabledImage"]
      430 LOADK                            R17 K94 ["rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot.png"]
      431 SETTABLE                         R17 R15 R16
      432 GETTABLEKS                       R16 R7 K95 ["RibbonTab"]
      434 GETTABLEKS                       R18 R5 K30 ["Gray"]
      436 GETTABLEN                        R17 R18 10
      437 SETTABLE                         R17 R15 R16
      438 GETTABLEKS                       R16 R7 K96 ["ScrollBarBackground"]
      440 GETTABLEKS                       R18 R5 K30 ["Gray"]
      442 GETTABLEN                        R17 R18 20
      443 SETTABLE                         R17 R15 R16
      444 GETTABLEKS                       R16 R7 K97 ["ScrollBar"]
      446 GETTABLEKS                       R17 R6 K57 ["Gray_Light"]
      448 SETTABLE                         R17 R15 R16
      449 GETTABLEKS                       R16 R7 K98 ["SliderKnobColor"]
      451 GETTABLEKS                       R18 R5 K32 ["Black"]
      453 LOADN                            R19 0
      454 GETTABLE                         R17 R18 R19
      455 SETTABLE                         R17 R15 R16
      456 GETTABLEKS                       R16 R7 K99 ["SliderKnobImage"]
      458 LOADK                            R17 K100 ["rbxasset://textures/DeveloperFramework/slider_knob.png"]
      459 SETTABLE                         R17 R15 R16
      460 GETTABLEKS                       R16 R7 K101 ["SliderBackground"]
      462 GETTABLEKS                       R18 R5 K30 ["Gray"]
      464 GETTABLEN                        R17 R18 50
      465 SETTABLE                         R17 R15 R16
      466 GETTABLEKS                       R16 R7 K102 ["SubText"]
      468 GETTABLEKS                       R17 R6 K103 ["Gray_Mid"]
      470 SETTABLE                         R17 R15 R16
      471 GETTABLEKS                       R16 R7 K104 ["Tab"]
      473 GETTABLEKS                       R18 R5 K30 ["Gray"]
      475 GETTABLEN                        R17 R18 10
      476 SETTABLE                         R17 R15 R16
      477 GETTABLEKS                       R16 R7 K105 ["TabHovered"]
      479 GETTABLEKS                       R17 R6 K34 ["White"]
      481 SETTABLE                         R17 R15 R16
      482 GETTABLEKS                       R16 R7 K106 ["TabSelected"]
      484 GETTABLEKS                       R18 R5 K53 ["Blue"]
      486 GETTABLEN                        R17 R18 10
      487 SETTABLE                         R17 R15 R16
      488 GETTABLEKS                       R16 R7 K107 ["TableItem"]
      490 GETTABLEKS                       R17 R6 K47 ["Gray_Lightest"]
      492 SETTABLE                         R17 R15 R16
      493 GETTABLEKS                       R16 R7 K108 ["TableItemSelected"]
      495 GETTABLEKS                       R18 R5 K53 ["Blue"]
      497 GETTABLEN                        R17 R18 50
      498 SETTABLE                         R17 R15 R16
      499 GETTABLEKS                       R16 R7 K109 ["Titlebar"]
      501 GETTABLEKS                       R18 R5 K30 ["Gray"]
      503 GETTABLEN                        R17 R18 30
      504 SETTABLE                         R17 R15 R16
      505 GETTABLEKS                       R16 R7 K110 ["TitlebarText"]
      507 GETTABLEKS                       R17 R6 K32 ["Black"]
      509 SETTABLE                         R17 R15 R16
      510 GETTABLEKS                       R16 R7 K111 ["ToggleOnImage"]
      512 LOADK                            R17 K112 ["rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"]
      513 SETTABLE                         R17 R15 R16
      514 GETTABLEKS                       R16 R7 K113 ["ToggleOffImage"]
      516 LOADK                            R17 K114 ["rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"]
      517 SETTABLE                         R17 R15 R16
      518 GETTABLEKS                       R16 R7 K115 ["ToggleDisabledImage"]
      520 LOADK                            R17 K116 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"]
      521 SETTABLE                         R17 R15 R16
      522 GETTABLEKS                       R16 R7 K117 ["ToggleDisabledAndSelectedImage"]
      524 LOADK                            R17 K118 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_light.png"]
      525 SETTABLE                         R17 R15 R16
      526 GETTABLEKS                       R16 R7 K119 ["CheckboxUncheckedImage"]
      528 LOADK                            R17 K120 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_light.png"]
      529 SETTABLE                         R17 R15 R16
      530 GETTABLEKS                       R16 R7 K121 ["CheckboxCheckedImage"]
      532 LOADK                            R17 K122 ["rbxasset://textures/DeveloperFramework/checkbox_checked_light.png"]
      533 SETTABLE                         R17 R15 R16
      534 GETTABLEKS                       R16 R7 K123 ["CheckboxIndeterminateImage"]
      536 LOADK                            R17 K124 ["rbxasset://textures/DeveloperFramework/checkbox_indeterminate_light.png"]
      537 SETTABLE                         R17 R15 R16
      538 GETTABLEKS                       R16 R7 K125 ["CheckboxDisabledImage"]
      540 LOADK                            R17 K126 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_light.png"]
      541 SETTABLE                         R17 R15 R16
      542 GETTABLEKS                       R16 R7 K127 ["EyeIconOnImage"]
      544 LOADK                            R17 K128 ["rbxasset://textures/DeveloperFramework/UIOn_light.png"]
      545 SETTABLE                         R17 R15 R16
      546 GETTABLEKS                       R16 R7 K129 ["EyeIconOffImage"]
      548 LOADK                            R17 K130 ["rbxasset://textures/DeveloperFramework/UIOff_light.png"]
      549 SETTABLE                         R17 R15 R16
      550 GETTABLEKS                       R16 R7 K131 ["RadioOffImage"]
      552 LOADK                            R17 K132 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOff.png"]
      553 SETTABLE                         R17 R15 R16
      554 GETTABLEKS                       R16 R7 K133 ["RadioOnImage"]
      556 LOADK                            R17 K134 ["rbxasset://studio_svg_textures/Shared/Utility/Light/Standard/RadioOn.png"]
      557 SETTABLE                         R17 R15 R16
      558 GETTABLEKS                       R16 R7 K135 ["CheckedFieldBackgroundHover"]
      560 GETTABLEKS                       R18 R5 K30 ["Gray"]
      562 GETTABLEN                        R17 R18 70
      563 SETTABLE                         R17 R15 R16
      564 GETTABLEKS                       R16 R7 K136 ["ShimmerStart"]
      566 GETTABLEKS                       R17 R6 K91 ["Gray_Lighter"]
      568 SETTABLE                         R17 R15 R16
      569 GETTABLEKS                       R16 R7 K137 ["ShimmerEnd"]
      571 GETTABLEKS                       R17 R6 K91 ["Gray_Lighter"]
      573 SETTABLE                         R17 R15 R16
      574 GETTABLEKS                       R16 R7 K138 ["ResetCameraImage"]
      576 LOADK                            R17 K139 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/CameraReset.png"]
      577 SETTABLE                         R17 R15 R16
      578 GETIMPORT                        R16 K143 [Enum.Font.SourceSans]
      580 SETTABLEKS                       R16 R15 K141 ["Font"]
      582 LOADN                            R16 18
      583 SETTABLEKS                       R16 R15 K144 ["TextSize"]
      585 GETTABLEKS                       R16 R7 K145 ["ActionSecondaryHoverTransparency"]
      587 LOADK                            R17 K146 [0.84]
      588 SETTABLE                         R17 R15 R16
      589 GETTABLEKS                       R16 R7 K147 ["ActionSecondaryHover"]
      591 GETTABLEKS                       R18 R5 K30 ["Gray"]
      593 GETTABLEN                        R17 R18 90
      594 SETTABLE                         R17 R15 R16
      595 GETTABLEKS                       R16 R7 K148 ["DropdownMenuStateLayerBackground"]
      597 GETTABLEKS                       R18 R5 K34 ["White"]
      599 LOADN                            R19 0
      600 GETTABLE                         R17 R18 R19
      601 SETTABLE                         R17 R15 R16
      602 GETTABLEKS                       R16 R7 K149 ["DropdownMenuStateLayerBorderColor"]
      604 GETTABLEKS                       R18 R5 K30 ["Gray"]
      606 GETTABLEN                        R17 R18 10
      607 SETTABLE                         R17 R15 R16
      608 CALL                             R13 2 -1
      609 RETURN                           R13 -1
