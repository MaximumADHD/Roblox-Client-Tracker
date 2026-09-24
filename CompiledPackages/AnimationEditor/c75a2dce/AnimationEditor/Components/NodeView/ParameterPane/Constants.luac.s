MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K22 [{["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"], ["PARAMETER_PANE_WIDTH"] = 200, ["PARAMETER_PANE_HEADER_TITLE_WIDTH"] = 140, ["PARAMETER_ITEMS_MAX_SCALE_HEIGHT"] = 0.8, ["PARAMETER_INSERT_ITEM_MENU_WIDTH"] = 108, ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"] = 140, ["PARAMETER_PANE_POSITION_OFFSET"], ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"], ["PARAMETER_ENUM_TYPES"], ["PARAMETER_MENUITEM_TABLE"]}]
       15 GETIMPORT                        R3 K25 [UDim.new]
       17 LOADN                            R4 0
       18 LOADN                            R5 82
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K8 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
       22 GETIMPORT                        R3 K28 [UDim2.fromOffset]
       24 LOADN                            R4 8
       25 LOADN                            R5 4
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K18 ["PARAMETER_PANE_POSITION_OFFSET"]
       29 DUPTABLE                         R3 K32 [{["Color3"], ["Transparency"] = 0.68}]
       30 GETIMPORT                        R4 K34 [Color3.fromHex]
       32 LOADK                            R5 K35 ["#657BF4"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K29 ["Color3"]
       36 SETTABLEKS                       R3 R2 K19 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
       38 NEWTABLE                         R3 4 0
       40 GETIMPORT                        R4 K39 [Enum.AnimationNodePlayMode.Loop]
       42 SETTABLEKS                       R4 R3 K40 ["PlayMode"]
       44 GETIMPORT                        R4 K43 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       46 SETTABLEKS                       R4 R3 K44 ["InputMode"]
       48 GETIMPORT                        R4 K47 [Enum.AnimationNodePhaseSync.Synced]
       50 SETTABLEKS                       R4 R3 K48 ["PhaseSync"]
       52 SETTABLEKS                       R3 R2 K20 ["PARAMETER_ENUM_TYPES"]
       54 GETIMPORT                        R3 K51 [table.freeze]
       56 NEWTABLE                         R4 0 7
       58 GETIMPORT                        R5 K51 [table.freeze]
       60 DUPTABLE                         R6 K56 [{["id"] = "String", ["text"] = "string"}]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K51 [table.freeze]
       64 DUPTABLE                         R7 K59 [{["id"] = "Boolean", ["text"] = "boolean"}]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K51 [table.freeze]
       68 DUPTABLE                         R8 K62 [{["id"] = "Number", ["text"] = "number"}]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K51 [table.freeze]
       72 DUPTABLE                         R9 K64 [{["id"] = "Mask", ["text"] = "Mask"}]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K51 [table.freeze]
       76 DUPTABLE                         R10 K65 [{["id"] = "PlayMode", ["text"] = "PlayMode"}]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K51 [table.freeze]
       80 DUPTABLE                         R11 K66 [{["id"] = "InputMode", ["text"] = "InputMode"}]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K51 [table.freeze]
       84 DUPTABLE                         R12 K67 [{["id"] = "PhaseSync", ["text"] = "PhaseSync"}]
       85 CALL                             R11 1 -1
       86 SETLIST                          R4 R5 -1 [1]
       88 CALL                             R3 1 1
       89 SETTABLEKS                       R3 R2 K21 ["PARAMETER_MENUITEM_TABLE"]
       91 RETURN                           R2 1
