MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 2
        3 LOADK                            R1 K0 ["MarkAllAsRead"]
        4 LOADK                            R2 K1 ["Settings"]
        5 SETLIST                          R0 R1 2 [1]
        7 GETIMPORT                        R1 K5 [Enum.Font.SourceSans]
        9 LENGTH                           R2 R0
       10 MULK                             R3 R2 K6 [36]
       11 SUBK                             R4 R3 K7 [2]
       12 DIV                              R5 R4 R2
       13 DUPTABLE                         R6 K19 [{"MENU_OPTIONS", "BORDER_SIZE", "HORIZONTAL_BUFFER", "LEFT_RIGHT_BUTTON_PADDING", "TEXT_FONT", "TEXT_SIZE", "NUMBER_OF_OPTIONS", "TOTAL_MENU_HEIGHT", "TEXT_WIDTH_PADDING", "INNER_MENU_HEIGHT", "BUTTON_HEIGHT"}]
       14 SETTABLEKS                       R0 R6 K8 ["MENU_OPTIONS"]
       16 LOADN                            R7 1
       17 SETTABLEKS                       R7 R6 K9 ["BORDER_SIZE"]
       19 LOADN                            R7 4
       20 SETTABLEKS                       R7 R6 K10 ["HORIZONTAL_BUFFER"]
       22 LOADN                            R7 8
       23 SETTABLEKS                       R7 R6 K11 ["LEFT_RIGHT_BUTTON_PADDING"]
       25 SETTABLEKS                       R1 R6 K12 ["TEXT_FONT"]
       27 LOADN                            R7 18
       28 SETTABLEKS                       R7 R6 K13 ["TEXT_SIZE"]
       30 SETTABLEKS                       R2 R6 K14 ["NUMBER_OF_OPTIONS"]
       32 SETTABLEKS                       R3 R6 K15 ["TOTAL_MENU_HEIGHT"]
       34 LOADN                            R7 20
       35 SETTABLEKS                       R7 R6 K16 ["TEXT_WIDTH_PADDING"]
       37 SETTABLEKS                       R4 R6 K17 ["INNER_MENU_HEIGHT"]
       39 SETTABLEKS                       R5 R6 K18 ["BUTTON_HEIGHT"]
       41 RETURN                           R6 1
