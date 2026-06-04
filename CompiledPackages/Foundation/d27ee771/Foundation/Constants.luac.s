MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["ColorMode"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["StateLayerMode"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Enums"]
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
       52 GETTABLEKS                       R9 R2 K20 ["Color"]
       54 GETTABLEKS                       R10 R3 K21 ["Default"]
       56 SETTABLE                         R10 R8 R9
       57 GETTABLEKS                       R9 R2 K22 ["Inverse"]
       59 GETTABLEKS                       R10 R3 K22 ["Inverse"]
       61 SETTABLE                         R10 R8 R9
       62 GETTABLEKS                       R9 R2 K23 ["LightMode"]
       64 GETTABLEKS                       R10 R3 K24 ["Light"]
       66 SETTABLE                         R10 R8 R9
       67 GETTABLEKS                       R9 R2 K25 ["DarkMode"]
       69 GETTABLEKS                       R10 R3 K26 ["Dark"]
       71 SETTABLE                         R10 R8 R9
       72 SETTABLE                         R8 R6 R7
       73 LOADB                            R7 1
       74 NEWTABLE                         R8 4 0
       76 GETTABLEKS                       R9 R2 K20 ["Color"]
       78 GETTABLEKS                       R10 R3 K22 ["Inverse"]
       80 SETTABLE                         R10 R8 R9
       81 GETTABLEKS                       R9 R2 K22 ["Inverse"]
       83 GETTABLEKS                       R10 R3 K21 ["Default"]
       85 SETTABLE                         R10 R8 R9
       86 GETTABLEKS                       R9 R2 K23 ["LightMode"]
       88 GETTABLEKS                       R10 R3 K26 ["Dark"]
       90 SETTABLE                         R10 R8 R9
       91 GETTABLEKS                       R9 R2 K25 ["DarkMode"]
       93 GETTABLEKS                       R10 R3 K24 ["Light"]
       95 SETTABLE                         R10 R8 R9
       96 SETTABLE                         R8 R6 R7
       97 DUPTABLE                         R7 K36 [{"MAX_LAYOUT_ORDER", "MIN_LAYOUT_ORDER", "DISABLED_TRANSPARENCY", "DEFAULT_DELAY_TIME", "SHADOW_IMAGE", "SHADOW_SIZE", "MODAL", "COLOR_MODE_TO_STATE_LAYER_MODE", "INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"}]
       98 LOADK                            R8 K37 [2147483648]
       99 SETTABLEKS                       R8 R7 K27 ["MAX_LAYOUT_ORDER"]
      101 LOADK                            R8 K38 [-2147483648]
      102 SETTABLEKS                       R8 R7 K28 ["MIN_LAYOUT_ORDER"]
      104 LOADK                            R8 K39 [0.5]
      105 SETTABLEKS                       R8 R7 K29 ["DISABLED_TRANSPARENCY"]
      107 LOADK                            R8 K40 [0.15]
      108 SETTABLEKS                       R8 R7 K30 ["DEFAULT_DELAY_TIME"]
      110 LOADK                            R8 K41 ["component_assets/dropshadow_17_8"]
      111 SETTABLEKS                       R8 R7 K31 ["SHADOW_IMAGE"]
      113 LOADN                            R8 16
      114 SETTABLEKS                       R8 R7 K32 ["SHADOW_SIZE"]
      116 DUPTABLE                         R8 K44 [{"DISABLE_SELECTION", "TRAP_FOCUS"}]
      117 DUPTABLE                         R9 K46 [{"Selectable"}]
      118 LOADB                            R10 0
      119 SETTABLEKS                       R10 R9 K45 ["Selectable"]
      121 SETTABLEKS                       R9 R8 K42 ["DISABLE_SELECTION"]
      123 DUPTABLE                         R9 K51 [{"SelectionBehaviorRight", "SelectionBehaviorLeft", "SelectionBehaviorDown", "SelectionBehaviorUp"}]
      124 GETIMPORT                        R10 K54 [Enum.SelectionBehavior.Stop]
      126 SETTABLEKS                       R10 R9 K47 ["SelectionBehaviorRight"]
      128 GETIMPORT                        R10 K54 [Enum.SelectionBehavior.Stop]
      130 SETTABLEKS                       R10 R9 K48 ["SelectionBehaviorLeft"]
      132 GETIMPORT                        R10 K54 [Enum.SelectionBehavior.Stop]
      134 SETTABLEKS                       R10 R9 K49 ["SelectionBehaviorDown"]
      136 GETIMPORT                        R10 K54 [Enum.SelectionBehavior.Stop]
      138 SETTABLEKS                       R10 R9 K50 ["SelectionBehaviorUp"]
      140 SETTABLEKS                       R9 R8 K43 ["TRAP_FOCUS"]
      142 SETTABLEKS                       R8 R7 K33 ["MODAL"]
      144 SETTABLEKS                       R6 R7 K34 ["COLOR_MODE_TO_STATE_LAYER_MODE"]
      146 SETTABLEKS                       R5 R7 K35 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
      148 RETURN                           R7 1
