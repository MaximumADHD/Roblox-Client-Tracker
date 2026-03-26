MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"PARAMETER_PANE_TEXT_COMPONENT_WIDTH", "PARAMETER_PANE_WIDTH", "PARAMETER_PANE_HEADER_TITLE_WIDTH", "PARAMETER_INSERT_ITEM_MENU_WIDTH", "PARAMETER_PANE_POSITION_OFFSET", "PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"}]
        2 GETIMPORT                        R1 K9 [UDim.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 82
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
        9 LOADN                            R1 200
       10 SETTABLEKS                       R1 R0 K1 ["PARAMETER_PANE_WIDTH"]
       12 LOADN                            R1 140
       13 SETTABLEKS                       R1 R0 K2 ["PARAMETER_PANE_HEADER_TITLE_WIDTH"]
       15 LOADN                            R1 108
       16 SETTABLEKS                       R1 R0 K3 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       18 GETIMPORT                        R1 K11 [UDim2.new]
       20 LOADN                            R2 0
       21 LOADN                            R3 13
       22 LOADN                            R4 0
       23 LOADN                            R5 8
       24 CALL                             R1 4 1
       25 SETTABLEKS                       R1 R0 K4 ["PARAMETER_PANE_POSITION_OFFSET"]
       27 DUPTABLE                         R1 K14 [{"Color3", "Transparency"}]
       28 GETIMPORT                        R2 K16 [Color3.fromHex]
       30 LOADK                            R3 K17 ["#657BF4"]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K12 ["Color3"]
       34 LOADK                            R2 K18 [0.68]
       35 SETTABLEKS                       R2 R1 K13 ["Transparency"]
       37 SETTABLEKS                       R1 R0 K5 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
       39 RETURN                           R0 1
