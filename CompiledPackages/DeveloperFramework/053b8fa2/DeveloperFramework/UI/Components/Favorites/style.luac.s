MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["Image"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["StyleModifier"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Style"]
       29 GETTABLEKS                       R4 R4 K12 ["StyleKey"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K15 [Color3.fromRGB]
       34 LOADN                            R5 246
       35 LOADN                            R6 183
       36 LOADN                            R7 2
       37 CALL                             R4 3 1
       38 DUPTABLE                         R5 K18 [{"Foreground", "ForegroundStyle"}]
       39 SETTABLEKS                       R1 R5 K16 ["Foreground"]
       41 DUPTABLE                         R6 K20 [{"Color", "Image"}]
       42 SETTABLEKS                       R4 R6 K19 ["Color"]
       44 LOADK                            R7 K21 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
       45 SETTABLEKS                       R7 R6 K8 ["Image"]
       47 SETTABLEKS                       R6 R5 K17 ["ForegroundStyle"]
       49 DUPTABLE                         R6 K28 [{"ElementPadding", "Size", "IconSize", "Button", "Spacing", "Text"}]
       50 GETIMPORT                        R7 K31 [UDim.new]
       52 LOADN                            R8 0
       53 LOADN                            R9 5
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K22 ["ElementPadding"]
       57 GETIMPORT                        R7 K33 [UDim2.new]
       59 LOADN                            R8 1
       60 LOADN                            R9 0
       61 LOADN                            R10 0
       62 LOADN                            R11 20
       63 CALL                             R7 4 1
       64 SETTABLEKS                       R7 R6 K23 ["Size"]
       66 GETIMPORT                        R7 K35 [UDim2.fromOffset]
       68 LOADN                            R8 14
       69 LOADN                            R9 14
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K24 ["IconSize"]
       73 DUPTABLE                         R7 K38 [{"Filled", "Unfilled"}]
       74 SETTABLEKS                       R5 R7 K36 ["Filled"]
       76 NEWTABLE                         R8 4 0
       78 SETTABLEKS                       R1 R8 K16 ["Foreground"]
       80 DUPTABLE                         R9 K20 [{"Color", "Image"}]
       81 GETTABLEKS                       R10 R3 K39 ["MainText"]
       83 SETTABLEKS                       R10 R9 K19 ["Color"]
       85 LOADK                            R10 K40 ["rbxasset://textures/DeveloperFramework/Favorites/star_stroke_white.png"]
       86 SETTABLEKS                       R10 R9 K8 ["Image"]
       88 SETTABLEKS                       R9 R8 K17 ["ForegroundStyle"]
       90 GETTABLEKS                       R9 R2 K41 ["Hover"]
       92 DUPTABLE                         R10 K42 [{"ForegroundStyle"}]
       93 DUPTABLE                         R11 K20 [{"Color", "Image"}]
       94 SETTABLEKS                       R4 R11 K19 ["Color"]
       96 LOADK                            R12 K43 ["rbxasset://textures/StudioToolbox/AssetPreview/star_filled.png"]
       97 SETTABLEKS                       R12 R11 K8 ["Image"]
       99 SETTABLEKS                       R11 R10 K17 ["ForegroundStyle"]
      101 SETTABLE                         R10 R8 R9
      102 SETTABLEKS                       R8 R7 K37 ["Unfilled"]
      104 SETTABLEKS                       R7 R6 K25 ["Button"]
      106 LOADN                            R7 5
      107 SETTABLEKS                       R7 R6 K26 ["Spacing"]
      109 DUPTABLE                         R7 K47 [{"Font", "TextColor", "TextSize"}]
      110 GETIMPORT                        R8 K50 [Enum.Font.SourceSans]
      112 SETTABLEKS                       R8 R7 K44 ["Font"]
      114 GETTABLEKS                       R8 R3 K39 ["MainText"]
      116 SETTABLEKS                       R8 R7 K45 ["TextColor"]
      118 LOADN                            R8 18
      119 SETTABLEKS                       R8 R7 K46 ["TextSize"]
      121 SETTABLEKS                       R7 R6 K27 ["Text"]
      123 RETURN                           R6 1
