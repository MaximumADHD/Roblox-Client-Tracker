MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K21 [{["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"], ["PARAMETER_PANE_WIDTH"] = 200, ["PARAMETER_PANE_HEADER_TITLE_WIDTH"] = 140, ["PARAMETER_ITEMS_MAX_SCALE_HEIGHT"] = 0.8, ["PARAMETER_INSERT_ITEM_MENU_WIDTH"] = 108, ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"] = 140, ["PARAMETER_PANE_POSITION_OFFSET"], ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"], ["PARAMETER_MENUITEM_TABLE"]}]
       15 GETIMPORT                        R3 K24 [UDim.new]
       17 LOADN                            R4 0
       18 LOADN                            R5 82
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K8 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
       22 GETIMPORT                        R3 K27 [UDim2.fromOffset]
       24 LOADN                            R4 8
       25 LOADN                            R5 4
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K18 ["PARAMETER_PANE_POSITION_OFFSET"]
       29 DUPTABLE                         R3 K31 [{["Color3"], ["Transparency"] = 0.68}]
       30 GETIMPORT                        R4 K33 [Color3.fromHex]
       32 LOADK                            R5 K34 ["#657BF4"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K28 ["Color3"]
       36 SETTABLEKS                       R3 R2 K19 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
       38 GETIMPORT                        R3 K37 [table.freeze]
       40 NEWTABLE                         R4 0 3
       42 GETIMPORT                        R5 K37 [table.freeze]
       44 DUPTABLE                         R6 K42 [{["id"] = "String", ["text"] = "string"}]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K37 [table.freeze]
       48 DUPTABLE                         R7 K45 [{["id"] = "Boolean", ["text"] = "boolean"}]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K37 [table.freeze]
       52 DUPTABLE                         R8 K48 [{["id"] = "Number", ["text"] = "number"}]
       53 CALL                             R7 1 -1
       54 SETLIST                          R4 R5 -1 [1]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K20 ["PARAMETER_MENUITEM_TABLE"]
       59 RETURN                           R2 1
