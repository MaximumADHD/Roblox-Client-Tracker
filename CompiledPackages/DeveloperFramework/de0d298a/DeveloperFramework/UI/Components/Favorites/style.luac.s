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
       41 DUPTABLE                         R6 K21 [{["Color"], ["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"}]
       42 SETTABLEKS                       R4 R6 K19 ["Color"]
       44 SETTABLEKS                       R6 R5 K17 ["ForegroundStyle"]
       46 DUPTABLE                         R6 K29 [{["ElementPadding"], ["Size"], ["IconSize"], ["Button"], ["Spacing"] = 5, ["Text"]}]
       47 GETIMPORT                        R7 K32 [UDim.new]
       49 LOADN                            R8 0
       50 LOADN                            R9 5
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K22 ["ElementPadding"]
       54 GETIMPORT                        R7 K34 [UDim2.new]
       56 LOADN                            R8 1
       57 LOADN                            R9 0
       58 LOADN                            R10 0
       59 LOADN                            R11 20
       60 CALL                             R7 4 1
       61 SETTABLEKS                       R7 R6 K23 ["Size"]
       63 GETIMPORT                        R7 K36 [UDim2.fromOffset]
       65 LOADN                            R8 14
       66 LOADN                            R9 14
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K24 ["IconSize"]
       70 DUPTABLE                         R7 K39 [{"Filled", "Unfilled"}]
       71 SETTABLEKS                       R5 R7 K37 ["Filled"]
       73 NEWTABLE                         R8 4 0
       75 SETTABLEKS                       R1 R8 K16 ["Foreground"]
       77 DUPTABLE                         R9 K41 [{["Color"], ["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_stroke_white.png"}]
       78 GETTABLEKS                       R10 R3 K42 ["MainText"]
       80 SETTABLEKS                       R10 R9 K19 ["Color"]
       82 SETTABLEKS                       R9 R8 K17 ["ForegroundStyle"]
       84 GETTABLEKS                       R9 R2 K43 ["Hover"]
       86 DUPTABLE                         R10 K44 [{"ForegroundStyle"}]
       87 DUPTABLE                         R11 K46 [{["Color"], ["Image"] = "rbxasset://textures/StudioToolbox/AssetPreview/star_filled.png"}]
       88 SETTABLEKS                       R4 R11 K19 ["Color"]
       90 SETTABLEKS                       R11 R10 K17 ["ForegroundStyle"]
       92 SETTABLE                         R10 R8 R9
       93 SETTABLEKS                       R8 R7 K38 ["Unfilled"]
       95 SETTABLEKS                       R7 R6 K25 ["Button"]
       97 DUPTABLE                         R7 K51 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
       98 GETIMPORT                        R8 K54 [Enum.Font.SourceSans]
      100 SETTABLEKS                       R8 R7 K47 ["Font"]
      102 GETTABLEKS                       R8 R3 K42 ["MainText"]
      104 SETTABLEKS                       R8 R7 K48 ["TextColor"]
      106 SETTABLEKS                       R7 R6 K28 ["Text"]
      108 RETURN                           R6 1
