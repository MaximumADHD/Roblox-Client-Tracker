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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["getFFlagAnimGraphUIParametersPanePosition"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K24 [{["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"], ["PARAMETER_PANE_WIDTH"], ["PARAMETER_PANE_MIN_WIDTH"] = 250, ["PARAMETER_PANE_HEADER_TITLE_WIDTH"] = 140, ["PARAMETER_ITEMS_MAX_SCALE_HEIGHT"] = 0.8, ["PARAMETER_INSERT_ITEM_MENU_WIDTH"] = 108, ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"] = 140, ["PARAMETER_PANE_POSITION_OFFSET"], ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"], ["PARAMETER_MENUITEM_TABLE"]}]
       22 GETIMPORT                        R4 K27 [UDim.new]
       24 LOADN                            R5 0
       25 LOADN                            R6 82
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K10 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
       29 MOVE                             R5 R2
       30 CALL                             R5 0 1
       31 JUMPIFNOT                        R5 ; [+2]
       32 LOADN                            R4 300
       33 JUMP                             ; [+1]
       34 LOADN                            R4 200
       35 SETTABLEKS                       R4 R3 K11 ["PARAMETER_PANE_WIDTH"]
       37 MOVE                             R5 R2
       38 CALL                             R5 0 1
       39 JUMPIFNOT                        R5 ; [+6]
       40 GETIMPORT                        R4 K30 [UDim2.fromOffset]
       42 LOADN                            R5 12
       43 LOADN                            R6 12
       44 CALL                             R4 2 1
       45 JUMP                             ; [+5]
       46 GETIMPORT                        R4 K30 [UDim2.fromOffset]
       48 LOADN                            R5 8
       49 LOADN                            R6 4
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R3 K21 ["PARAMETER_PANE_POSITION_OFFSET"]
       53 DUPTABLE                         R4 K34 [{["Color3"], ["Transparency"] = 0.68}]
       54 GETIMPORT                        R5 K36 [Color3.fromHex]
       56 LOADK                            R6 K37 ["#657BF4"]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K31 ["Color3"]
       60 SETTABLEKS                       R4 R3 K22 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
       62 GETIMPORT                        R4 K40 [table.freeze]
       64 NEWTABLE                         R5 0 3
       66 GETIMPORT                        R6 K40 [table.freeze]
       68 DUPTABLE                         R7 K45 [{["id"] = "String", ["text"] = "string"}]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K40 [table.freeze]
       72 DUPTABLE                         R8 K48 [{["id"] = "Boolean", ["text"] = "boolean"}]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K40 [table.freeze]
       76 DUPTABLE                         R9 K51 [{["id"] = "Number", ["text"] = "number"}]
       77 CALL                             R8 1 -1
       78 SETLIST                          R5 R6 -1 [1]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K23 ["PARAMETER_MENUITEM_TABLE"]
       83 RETURN                           R3 1
