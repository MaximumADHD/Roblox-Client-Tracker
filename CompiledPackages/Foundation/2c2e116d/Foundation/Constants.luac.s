MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ColorMode"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["StateLayerMode"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Enums"]
       32 GETTABLEKS                       R5 R5 K11 ["InputPlacement"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 2 0
       37 GETTABLEKS                       R6 R4 K12 ["Start"]
       39 GETIMPORT                        R7 K16 [Enum.HorizontalAlignment.Right]
       41 SETTABLE                         R7 R5 R6
       42 GETTABLEKS                       R6 R4 K17 ["End"]
       44 GETIMPORT                        R7 K19 [Enum.HorizontalAlignment.Left]
       46 SETTABLE                         R7 R5 R6
       47 NEWTABLE                         R6 2 0
       49 LOADB                            R7 0
       50 NEWTABLE                         R8 4 0
       52 GETTABLEKS                       R9 R1 K20 ["Color"]
       54 GETTABLEKS                       R10 R3 K21 ["Default"]
       56 SETTABLE                         R10 R8 R9
       57 GETTABLEKS                       R9 R1 K22 ["Inverse"]
       59 GETTABLEKS                       R10 R3 K22 ["Inverse"]
       61 SETTABLE                         R10 R8 R9
       62 GETTABLEKS                       R9 R1 K23 ["LightMode"]
       64 GETTABLEKS                       R10 R3 K24 ["Light"]
       66 SETTABLE                         R10 R8 R9
       67 GETTABLEKS                       R9 R1 K25 ["DarkMode"]
       69 GETTABLEKS                       R10 R3 K26 ["Dark"]
       71 SETTABLE                         R10 R8 R9
       72 SETTABLE                         R8 R6 R7
       73 LOADB                            R7 1
       74 NEWTABLE                         R8 4 0
       76 GETTABLEKS                       R9 R1 K20 ["Color"]
       78 GETTABLEKS                       R10 R3 K22 ["Inverse"]
       80 SETTABLE                         R10 R8 R9
       81 GETTABLEKS                       R9 R1 K22 ["Inverse"]
       83 GETTABLEKS                       R10 R3 K21 ["Default"]
       85 SETTABLE                         R10 R8 R9
       86 GETTABLEKS                       R9 R1 K23 ["LightMode"]
       88 GETTABLEKS                       R10 R3 K26 ["Dark"]
       90 SETTABLE                         R10 R8 R9
       91 GETTABLEKS                       R9 R1 K25 ["DarkMode"]
       93 GETTABLEKS                       R10 R3 K24 ["Light"]
       95 SETTABLE                         R10 R8 R9
       96 SETTABLE                         R8 R6 R7
       97 DUPTABLE                         R7 K46 [{["MAX_LAYOUT_ORDER"] = 2147483648, ["MIN_LAYOUT_ORDER"] = -2147483648, ["DISABLED_TRANSPARENCY"] = 0.5, ["DEFAULT_DELAY_TIME"] = 0.15, ["DEFAULT_INPUT_FIELD_WIDTH_PIXELS"] = 400, ["SHADOW_IMAGE"] = "component_assets/dropshadow_17_8", ["SHADOW_SIZE"] = 16, ["MODAL"], ["COLOR_MODE_TO_STATE_LAYER_MODE"], ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"], ["BUILDER_SANS_FONT_ASSET"] = "rbxasset://fonts/families/BuilderSans.json"}]
       98 DUPTABLE                         R8 K49 [{"DISABLE_SELECTION", "TRAP_FOCUS"}]
       99 DUPTABLE                         R9 K52 [{["Selectable"] = False}]
      100 SETTABLEKS                       R9 R8 K47 ["DISABLE_SELECTION"]
      102 DUPTABLE                         R9 K57 [{"SelectionBehaviorRight", "SelectionBehaviorLeft", "SelectionBehaviorDown", "SelectionBehaviorUp"}]
      103 GETIMPORT                        R10 K60 [Enum.SelectionBehavior.Stop]
      105 SETTABLEKS                       R10 R9 K53 ["SelectionBehaviorRight"]
      107 GETIMPORT                        R10 K60 [Enum.SelectionBehavior.Stop]
      109 SETTABLEKS                       R10 R9 K54 ["SelectionBehaviorLeft"]
      111 GETIMPORT                        R10 K60 [Enum.SelectionBehavior.Stop]
      113 SETTABLEKS                       R10 R9 K55 ["SelectionBehaviorDown"]
      115 GETIMPORT                        R10 K60 [Enum.SelectionBehavior.Stop]
      117 SETTABLEKS                       R10 R9 K56 ["SelectionBehaviorUp"]
      119 SETTABLEKS                       R9 R8 K48 ["TRAP_FOCUS"]
      121 SETTABLEKS                       R8 R7 K41 ["MODAL"]
      123 SETTABLEKS                       R6 R7 K42 ["COLOR_MODE_TO_STATE_LAYER_MODE"]
      125 SETTABLEKS                       R5 R7 K43 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
      127 RETURN                           R7 1
