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
       13 DUPTABLE                         R6 K24 [{["MENU_OPTIONS"], ["BORDER_SIZE"] = 1, ["HORIZONTAL_BUFFER"] = 4, ["LEFT_RIGHT_BUTTON_PADDING"] = 8, ["TEXT_FONT"], ["TEXT_SIZE"] = 18, ["NUMBER_OF_OPTIONS"], ["TOTAL_MENU_HEIGHT"], ["TEXT_WIDTH_PADDING"] = 20, ["INNER_MENU_HEIGHT"], ["BUTTON_HEIGHT"]}]
       14 SETTABLEKS                       R0 R6 K8 ["MENU_OPTIONS"]
       16 SETTABLEKS                       R1 R6 K15 ["TEXT_FONT"]
       18 SETTABLEKS                       R2 R6 K18 ["NUMBER_OF_OPTIONS"]
       20 SETTABLEKS                       R3 R6 K19 ["TOTAL_MENU_HEIGHT"]
       22 SETTABLEKS                       R4 R6 K22 ["INNER_MENU_HEIGHT"]
       24 SETTABLEKS                       R5 R6 K23 ["BUTTON_HEIGHT"]
       26 RETURN                           R6 1
