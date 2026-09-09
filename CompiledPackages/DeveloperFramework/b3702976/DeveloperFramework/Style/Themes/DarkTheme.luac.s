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
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K15 ["SharedFlags"]
       64 GETTABLEKS                       R10 R10 K16 ["getFFlagDevFrameworkFixInputBackground"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 LOADK                            R11 K17 ["Dark"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R7 K18 ["Color"]
       72 GETTABLEKS                       R11 R11 K19 ["ActionSoftEmphasis"]
       74 GETTABLEKS                       R11 R11 K20 ["Background"]
       76 GETTABLEKS                       R11 R11 K21 ["Color3"]
       78 GETTABLEKS                       R13 R7 K22 ["DarkMode"]
       80 GETTABLEKS                       R13 R13 K23 ["Surface"]
       82 GETTABLEKS                       R13 R13 K24 ["Surface_100"]
       84 GETTABLEKS                       R13 R13 K21 ["Color3"]
       86 GETTABLEKS                       R14 R7 K18 ["Color"]
       88 GETTABLEKS                       R14 R14 K19 ["ActionSoftEmphasis"]
       90 GETTABLEKS                       R14 R14 K20 ["Background"]
       92 GETTABLEKS                       R14 R14 K25 ["Transparency"]
       94 NAMECALL                         R11 R11 K26 ["Lerp"]
       96 CALL                             R11 3 1
       97 GETTABLEKS                       R12 R7 K18 ["Color"]
       99 GETTABLEKS                       R12 R12 K27 ["Shift"]
      101 GETTABLEKS                       R12 R12 K28 ["Shift_200"]
      103 GETTABLEKS                       R12 R12 K21 ["Color3"]
      105 GETTABLEKS                       R14 R7 K22 ["DarkMode"]
      107 GETTABLEKS                       R14 R14 K23 ["Surface"]
      109 GETTABLEKS                       R14 R14 K24 ["Surface_100"]
      111 GETTABLEKS                       R14 R14 K21 ["Color3"]
      113 GETTABLEKS                       R15 R7 K18 ["Color"]
      115 GETTABLEKS                       R15 R15 K27 ["Shift"]
      117 GETTABLEKS                       R15 R15 K28 ["Shift_200"]
      119 GETTABLEKS                       R15 R15 K25 ["Transparency"]
      121 NAMECALL                         R12 R12 K26 ["Lerp"]
      123 CALL                             R12 3 1
      124 MOVE                             R13 R2
      125 MOVE                             R14 R10
      126 NEWTABLE                         R15 128 0
      128 GETTABLEKS                       R16 R5 K29 ["Border"]
      130 GETTABLEKS                       R18 R3 K30 ["Gray"]
      132 GETTABLEN                        R17 R18 80
      133 SETTABLE                         R17 R15 R16
      134 GETTABLEKS                       R16 R5 K31 ["BrightText"]
      136 GETTABLEKS                       R17 R4 K32 ["White"]
      138 SETTABLE                         R17 R15 R16
      139 GETTABLEKS                       R16 R5 K33 ["Button"]
      141 GETTABLEKS                       R17 R4 K30 ["Gray"]
      143 SETTABLE                         R17 R15 R16
      144 GETTABLEKS                       R16 R5 K34 ["ButtonText"]
      146 GETTABLEKS                       R18 R3 K30 ["Gray"]
      148 GETTABLEN                        R17 R18 10
      149 SETTABLE                         R17 R15 R16
      150 GETTABLEKS                       R16 R5 K35 ["ButtonHover"]
      152 MOVE                             R18 R9
      153 CALL                             R18 0 1
      154 JUMPIFNOT                        R18 ; [+2]
      155 MOVE                             R17 R12
      156 JUMP                             ; [+6]
      157 GETTABLEKS                       R17 R4 K36 ["lighter"]
      159 GETTABLEKS                       R18 R4 K30 ["Gray"]
      161 LOADK                            R19 K37 [0.26]
      162 CALL                             R17 2 1
      163 SETTABLE                         R17 R15 R16
      164 GETTABLEKS                       R16 R5 K38 ["ButtonDisabled"]
      166 GETTABLEKS                       R17 R4 K36 ["lighter"]
      168 GETTABLEKS                       R18 R4 K39 ["Black"]
      170 LOADK                            R19 K37 [0.26]
      171 CALL                             R17 2 1
      172 SETTABLE                         R17 R15 R16
      173 GETTABLEKS                       R16 R5 K40 ["ButtonTextDisabled"]
      175 GETTABLEKS                       R18 R3 K30 ["Gray"]
      177 GETTABLEN                        R17 R18 60
      178 SETTABLE                         R17 R15 R16
      179 GETTABLEKS                       R16 R5 K41 ["ButtonPressed"]
      181 GETTABLEKS                       R17 R4 K36 ["lighter"]
      183 GETTABLEKS                       R18 R4 K39 ["Black"]
      185 LOADK                            R19 K42 [0.16]
      186 CALL                             R17 2 1
      187 SETTABLE                         R17 R15 R16
      188 GETTABLEKS                       R16 R5 K43 ["ButtonSelected"]
      190 GETTABLEKS                       R17 R4 K44 ["Blue"]
      192 SETTABLE                         R17 R15 R16
      193 GETTABLEKS                       R16 R5 K45 ["ImageButtonBackground"]
      195 GETTABLEKS                       R17 R4 K46 ["Gray_Mid"]
      197 SETTABLE                         R17 R15 R16
      198 GETTABLEKS                       R16 R5 K47 ["ImageButtonHover"]
      200 GETTABLEKS                       R17 R4 K36 ["lighter"]
      202 GETTABLEKS                       R18 R4 K46 ["Gray_Mid"]
      204 LOADK                            R19 K37 [0.26]
      205 CALL                             R17 2 1
      206 SETTABLE                         R17 R15 R16
      207 GETTABLEKS                       R16 R5 K48 ["Icon"]
      209 GETTABLEKS                       R18 R3 K30 ["Gray"]
      211 GETTABLEN                        R17 R18 60
      212 SETTABLE                         R17 R15 R16
      213 GETTABLEKS                       R16 R5 K49 ["IconBackgroundColor"]
      215 GETTABLEKS                       R18 R3 K30 ["Gray"]
      217 GETTABLEN                        R17 R18 120
      218 SETTABLE                         R17 R15 R16
      219 GETTABLEKS                       R16 R5 K50 ["IconImageColor"]
      221 GETTABLEKS                       R18 R3 K30 ["Gray"]
      223 GETTABLEN                        R17 R18 70
      224 SETTABLE                         R17 R15 R16
      225 GETTABLEKS                       R16 R5 K51 ["ToolbarBackgroundColor"]
      227 GETTABLEKS                       R18 R3 K39 ["Black"]
      229 LOADN                            R19 0
      230 GETTABLE                         R17 R18 R19
      231 SETTABLE                         R17 R15 R16
      232 GETTABLEKS                       R16 R5 K52 ["ToolbarButtonBackgroundColor"]
      234 GETTABLEKS                       R18 R3 K30 ["Gray"]
      236 GETTABLEN                        R17 R18 110
      237 SETTABLE                         R17 R15 R16
      238 GETTABLEKS                       R16 R5 K53 ["CategoryItem"]
      240 GETTABLEKS                       R18 R3 K30 ["Gray"]
      242 GETTABLEN                        R17 R18 100
      243 SETTABLE                         R17 R15 R16
      244 GETTABLEKS                       R16 R5 K54 ["CurrentMarker"]
      246 GETTABLEKS                       R17 R4 K30 ["Gray"]
      248 SETTABLE                         R17 R15 R16
      249 GETTABLEKS                       R16 R5 K55 ["CurrentMarkerSelected"]
      251 GETTABLEKS                       R18 R3 K44 ["Blue"]
      253 GETTABLEN                        R17 R18 70
      254 SETTABLE                         R17 R15 R16
      255 GETTABLEKS                       R16 R5 K56 ["DialogButton"]
      257 GETTABLEKS                       R17 R4 K30 ["Gray"]
      259 SETTABLE                         R17 R15 R16
      260 GETTABLEKS                       R16 R5 K57 ["DialogButtonBorder"]
      262 GETTABLEKS                       R17 R4 K30 ["Gray"]
      264 SETTABLE                         R17 R15 R16
      265 GETTABLEKS                       R16 R5 K58 ["DialogButtonHover"]
      267 GETTABLEKS                       R17 R4 K30 ["Gray"]
      269 SETTABLE                         R17 R15 R16
      270 GETTABLEKS                       R16 R5 K59 ["DialogButtonPressed"]
      272 GETTABLEKS                       R18 R3 K30 ["Gray"]
      274 GETTABLEN                        R17 R18 10
      275 SETTABLE                         R17 R15 R16
      276 GETTABLEKS                       R16 R5 K60 ["DialogButtonText"]
      278 GETTABLEKS                       R18 R3 K30 ["Gray"]
      280 GETTABLEN                        R17 R18 10
      281 SETTABLE                         R17 R15 R16
      282 GETTABLEKS                       R16 R5 K61 ["DialogMainButton"]
      284 GETTABLEKS                       R18 R3 K44 ["Blue"]
      286 GETTABLEN                        R17 R18 70
      287 SETTABLE                         R17 R15 R16
      288 GETTABLEKS                       R16 R5 K62 ["DialogMainButtonDisabled"]
      290 GETTABLEKS                       R17 R4 K30 ["Gray"]
      292 SETTABLE                         R17 R15 R16
      293 GETTABLEKS                       R16 R5 K63 ["DialogMainButtonHover"]
      295 GETTABLEKS                       R18 R3 K44 ["Blue"]
      297 GETTABLEN                        R17 R18 60
      298 SETTABLE                         R17 R15 R16
      299 GETTABLEKS                       R16 R5 K64 ["DialogMainButtonPressed"]
      301 GETTABLEKS                       R17 R4 K65 ["Blue_Dark"]
      303 SETTABLE                         R17 R15 R16
      304 GETTABLEKS                       R16 R5 K66 ["DialogMainButtonSelected"]
      306 GETTABLEKS                       R17 R4 K65 ["Blue_Dark"]
      308 SETTABLE                         R17 R15 R16
      309 GETTABLEKS                       R16 R5 K67 ["DialogMainButtonText"]
      311 GETTABLEKS                       R18 R3 K30 ["Gray"]
      313 GETTABLEN                        R17 R18 10
      314 SETTABLE                         R17 R15 R16
      315 GETTABLEKS                       R16 R5 K68 ["DialogMainButtonTextDisabled"]
      317 GETTABLEKS                       R18 R3 K30 ["Gray"]
      319 GETTABLEN                        R17 R18 60
      320 SETTABLE                         R17 R15 R16
      321 GETTABLEKS                       R16 R5 K69 ["DimmedText"]
      323 GETTABLEKS                       R17 R4 K36 ["lighter"]
      325 GETTABLEKS                       R18 R4 K39 ["Black"]
      327 LOADK                            R19 K70 [0.6]
      328 CALL                             R17 2 1
      329 SETTABLE                         R17 R15 R16
      330 GETTABLEKS                       R16 R5 K71 ["Dropdown"]
      332 GETTABLEKS                       R17 R4 K72 ["Slate"]
      334 SETTABLE                         R17 R15 R16
      335 GETTABLEKS                       R16 R5 K73 ["InputFieldBackground"]
      337 SETTABLE                         R12 R15 R16
      338 GETTABLEKS                       R16 R5 K74 ["InputFieldBackgroundDisabled"]
      340 SETTABLE                         R12 R15 R16
      341 GETTABLEKS                       R16 R5 K75 ["InputFieldBorder"]
      343 GETTABLEKS                       R18 R3 K30 ["Gray"]
      345 GETTABLEN                        R17 R18 110
      346 SETTABLE                         R17 R15 R16
      347 GETTABLEKS                       R16 R5 K76 ["InputFieldBorderDisabled"]
      349 GETTABLEKS                       R18 R3 K30 ["Gray"]
      351 GETTABLEN                        R17 R18 100
      352 SETTABLE                         R17 R15 R16
      353 GETTABLEKS                       R16 R5 K77 ["InputFieldBorderHover"]
      355 GETTABLEKS                       R18 R3 K30 ["Gray"]
      357 GETTABLEN                        R17 R18 80
      358 SETTABLE                         R17 R15 R16
      359 GETTABLEKS                       R16 R5 K78 ["InputFieldBorderSelected"]
      361 GETTABLEKS                       R18 R3 K44 ["Blue"]
      363 GETTABLEN                        R17 R18 70
      364 SETTABLE                         R17 R15 R16
      365 GETTABLEKS                       R16 R5 K79 ["Item"]
      367 GETTABLEKS                       R17 R4 K72 ["Slate"]
      369 SETTABLE                         R17 R15 R16
      370 GETTABLEKS                       R16 R5 K80 ["ItemHovered"]
      372 GETTABLEKS                       R17 R4 K30 ["Gray"]
      374 SETTABLE                         R17 R15 R16
      375 GETTABLEKS                       R16 R5 K81 ["ItemSelected"]
      377 GETTABLEKS                       R17 R4 K65 ["Blue_Dark"]
      379 SETTABLE                         R17 R15 R16
      380 GETTABLEKS                       R16 R5 K82 ["Light"]
      382 GETTABLEKS                       R18 R3 K32 ["White"]
      384 LOADN                            R19 0
      385 GETTABLE                         R17 R18 R19
      386 SETTABLE                         R17 R15 R16
      387 GETTABLEKS                       R16 R5 K83 ["MainBackground"]
      389 GETTABLEKS                       R18 R3 K30 ["Gray"]
      391 GETTABLEN                        R17 R18 110
      392 SETTABLE                         R17 R15 R16
      393 GETTABLEKS                       R16 R5 K84 ["MainButton"]
      395 GETTABLEKS                       R17 R4 K44 ["Blue"]
      397 SETTABLE                         R17 R15 R16
      398 GETTABLEKS                       R16 R5 K85 ["MainTextDisabled"]
      400 GETTABLEKS                       R18 R3 K30 ["Gray"]
      402 GETTABLEN                        R17 R18 70
      403 SETTABLE                         R17 R15 R16
      404 GETTABLEKS                       R16 R5 K86 ["MainTextHover"]
      406 GETTABLEKS                       R18 R3 K30 ["Gray"]
      408 GETTABLEN                        R17 R18 60
      409 SETTABLE                         R17 R15 R16
      410 GETTABLEKS                       R16 R5 K87 ["MainTextSelected"]
      412 GETTABLEKS                       R17 R4 K32 ["White"]
      414 SETTABLE                         R17 R15 R16
      415 GETTABLEKS                       R16 R5 K88 ["MenuBarBackground"]
      417 GETTABLEKS                       R18 R3 K30 ["Gray"]
      419 GETTABLEN                        R17 R18 100
      420 SETTABLE                         R17 R15 R16
      421 GETTABLEKS                       R16 R5 K89 ["MenuEntryHighlight"]
      423 SETTABLE                         R11 R15 R16
      424 GETTABLEKS                       R16 R5 K90 ["MenuEntryHover"]
      426 GETTABLEKS                       R18 R3 K30 ["Gray"]
      428 GETTABLEN                        R17 R18 110
      429 SETTABLE                         R17 R15 R16
      430 GETTABLEKS                       R16 R5 K91 ["Mid"]
      432 GETTABLEKS                       R18 R3 K30 ["Gray"]
      434 GETTABLEN                        R17 R18 110
      435 SETTABLE                         R17 R15 R16
      436 GETTABLEKS                       R16 R5 K92 ["SubBackground"]
      438 GETTABLEKS                       R17 R4 K30 ["Gray"]
      440 SETTABLE                         R17 R15 R16
      441 GETTABLEKS                       R16 R5 K93 ["SubBackground2"]
      443 GETTABLEKS                       R17 R4 K94 ["Carbon"]
      445 SETTABLE                         R17 R15 R16
      446 GETTABLEKS                       R16 R5 K95 ["RadioButtonDisabledImage"]
      448 LOADK                            R17 K96 ["rbxasset://textures/StudioSharedUI/radio_selected_disabled_dot_dark.png"]
      449 SETTABLE                         R17 R15 R16
      450 GETTABLEKS                       R16 R5 K97 ["RibbonTab"]
      452 GETTABLEKS                       R18 R3 K30 ["Gray"]
      454 GETTABLEN                        R17 R18 120
      455 SETTABLE                         R17 R15 R16
      456 GETTABLEKS                       R16 R5 K98 ["ScrollBarBackground"]
      458 GETTABLEKS                       R18 R3 K30 ["Gray"]
      460 GETTABLEN                        R17 R18 100
      461 SETTABLE                         R17 R15 R16
      462 GETTABLEKS                       R16 R5 K99 ["ScrollBar"]
      464 GETTABLEKS                       R18 R3 K30 ["Gray"]
      466 GETTABLEN                        R17 R18 80
      467 SETTABLE                         R17 R15 R16
      468 GETTABLEKS                       R16 R5 K100 ["SliderKnobColor"]
      470 GETTABLEKS                       R18 R3 K32 ["White"]
      472 LOADN                            R19 0
      473 GETTABLE                         R17 R18 R19
      474 SETTABLE                         R17 R15 R16
      475 GETTABLEKS                       R16 R5 K101 ["SliderKnobImage"]
      477 LOADK                            R17 K102 ["rbxasset://textures/DeveloperFramework/slider_knob.png"]
      478 SETTABLE                         R17 R15 R16
      479 GETTABLEKS                       R16 R5 K103 ["SliderBackground"]
      481 GETTABLEKS                       R18 R3 K30 ["Gray"]
      483 GETTABLEN                        R17 R18 80
      484 SETTABLE                         R17 R15 R16
      485 GETTABLEKS                       R16 R5 K104 ["SubText"]
      487 GETTABLEKS                       R18 R3 K30 ["Gray"]
      489 GETTABLEN                        R17 R18 40
      490 SETTABLE                         R17 R15 R16
      491 GETTABLEKS                       R16 R5 K105 ["Tab"]
      493 GETTABLEKS                       R18 R3 K30 ["Gray"]
      495 GETTABLEN                        R17 R18 100
      496 SETTABLE                         R17 R15 R16
      497 GETTABLEKS                       R16 R5 K106 ["TabHovered"]
      499 GETTABLEKS                       R18 R3 K30 ["Gray"]
      501 GETTABLEN                        R17 R18 120
      502 SETTABLE                         R17 R15 R16
      503 GETTABLEKS                       R16 R5 K107 ["TabSelected"]
      505 GETTABLEKS                       R18 R3 K30 ["Gray"]
      507 GETTABLEN                        R17 R18 110
      508 SETTABLE                         R17 R15 R16
      509 GETTABLEKS                       R16 R5 K108 ["TableItem"]
      511 GETTABLEKS                       R17 R4 K72 ["Slate"]
      513 SETTABLE                         R17 R15 R16
      514 GETTABLEKS                       R16 R5 K109 ["TableItemSelected"]
      516 GETTABLEKS                       R18 R3 K44 ["Blue"]
      518 GETTABLEN                        R17 R18 70
      519 SETTABLE                         R17 R15 R16
      520 GETTABLEKS                       R16 R5 K110 ["Titlebar"]
      522 GETTABLEKS                       R18 R3 K30 ["Gray"]
      524 GETTABLEN                        R17 R18 100
      525 SETTABLE                         R17 R15 R16
      526 GETTABLEKS                       R16 R5 K111 ["TitlebarText"]
      528 GETTABLEKS                       R18 R3 K30 ["Gray"]
      530 GETTABLEN                        R17 R18 30
      531 SETTABLE                         R17 R15 R16
      532 GETTABLEKS                       R16 R5 K112 ["ToggleOnImage"]
      534 LOADK                            R17 K113 ["rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"]
      535 SETTABLE                         R17 R15 R16
      536 GETTABLEKS                       R16 R5 K114 ["ToggleOffImage"]
      538 LOADK                            R17 K115 ["rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"]
      539 SETTABLE                         R17 R15 R16
      540 GETTABLEKS                       R16 R5 K116 ["ToggleDisabledImage"]
      542 LOADK                            R17 K117 ["rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"]
      543 SETTABLE                         R17 R15 R16
      544 GETTABLEKS                       R16 R5 K118 ["ToggleDisabledAndSelectedImage"]
      546 LOADK                            R17 K119 ["rbxasset://textures/RoactStudioWidgets/toggle_on_disable_dark.png"]
      547 SETTABLE                         R17 R15 R16
      548 GETTABLEKS                       R16 R5 K120 ["CheckboxUncheckedImage"]
      550 LOADK                            R17 K121 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_dark.png"]
      551 SETTABLE                         R17 R15 R16
      552 GETTABLEKS                       R16 R5 K122 ["CheckboxCheckedImage"]
      554 LOADK                            R17 K123 ["rbxasset://textures/DeveloperFramework/checkbox_checked_dark.png"]
      555 SETTABLE                         R17 R15 R16
      556 GETTABLEKS                       R16 R5 K124 ["CheckboxIndeterminateImage"]
      558 LOADK                            R17 K125 ["rbxasset://textures/DeveloperFramework/checkbox_indeterminate_dark.png"]
      559 SETTABLE                         R17 R15 R16
      560 GETTABLEKS                       R16 R5 K126 ["CheckboxDisabledImage"]
      562 LOADK                            R17 K127 ["rbxasset://textures/DeveloperFramework/checkbox_unchecked_disabled_dark.png"]
      563 SETTABLE                         R17 R15 R16
      564 GETTABLEKS                       R16 R5 K128 ["EyeIconOnImage"]
      566 LOADK                            R17 K129 ["rbxasset://textures/DeveloperFramework/UIOn_dark.png"]
      567 SETTABLE                         R17 R15 R16
      568 GETTABLEKS                       R16 R5 K130 ["EyeIconOffImage"]
      570 LOADK                            R17 K131 ["rbxasset://textures/DeveloperFramework/UIOff_dark.png"]
      571 SETTABLE                         R17 R15 R16
      572 GETTABLEKS                       R16 R5 K132 ["RadioOffImage"]
      574 LOADK                            R17 K133 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOff.png"]
      575 SETTABLE                         R17 R15 R16
      576 GETTABLEKS                       R16 R5 K134 ["RadioOnImage"]
      578 LOADK                            R17 K135 ["rbxasset://studio_svg_textures/Shared/Utility/Dark/Standard/RadioOn.png"]
      579 SETTABLE                         R17 R15 R16
      580 GETTABLEKS                       R16 R5 K136 ["CheckedFieldBackgroundHover"]
      582 GETTABLEKS                       R18 R3 K30 ["Gray"]
      584 GETTABLEN                        R17 R18 110
      585 SETTABLE                         R17 R15 R16
      586 GETTABLEKS                       R16 R5 K137 ["ShimmerStart"]
      588 GETTABLEKS                       R17 R4 K30 ["Gray"]
      590 SETTABLE                         R17 R15 R16
      591 GETTABLEKS                       R16 R5 K138 ["ShimmerEnd"]
      593 GETTABLEKS                       R17 R4 K30 ["Gray"]
      595 SETTABLE                         R17 R15 R16
      596 GETTABLEKS                       R16 R5 K139 ["ResetCameraImage"]
      598 LOADK                            R17 K140 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Dark/Large/CameraReset.png"]
      599 SETTABLE                         R17 R15 R16
      600 GETIMPORT                        R16 K144 [Enum.Font.SourceSans]
      602 SETTABLEKS                       R16 R15 K142 ["Font"]
      604 LOADN                            R16 18
      605 SETTABLEKS                       R16 R15 K145 ["TextSize"]
      607 GETTABLEKS                       R16 R5 K146 ["ActionSecondaryHoverTransparency"]
      609 LOADK                            R17 K147 [0.84]
      610 SETTABLE                         R17 R15 R16
      611 GETTABLEKS                       R16 R5 K148 ["ActionSecondaryHover"]
      613 GETTABLEKS                       R18 R3 K30 ["Gray"]
      615 GETTABLEN                        R17 R18 50
      616 SETTABLE                         R17 R15 R16
      617 GETTABLEKS                       R16 R5 K149 ["DropdownMenuStateLayerBackground"]
      619 GETTABLEKS                       R18 R3 K30 ["Gray"]
      621 GETTABLEN                        R17 R18 90
      622 SETTABLE                         R17 R15 R16
      623 GETTABLEKS                       R16 R5 K150 ["DropdownMenuStateLayerBorderColor"]
      625 GETTABLEKS                       R18 R3 K30 ["Gray"]
      627 GETTABLEN                        R17 R18 80
      628 SETTABLE                         R17 R15 R16
      629 CALL                             R13 2 -1
      630 RETURN                           R13 -1
