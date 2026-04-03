MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K17 [{"PARAMETER_PANE_TEXT_COMPONENT_WIDTH", "PARAMETER_PANE_WIDTH", "PARAMETER_PANE_HEADER_TITLE_WIDTH", "PARAMETER_ITEMS_MAX_SCALE_HEIGHT", "PARAMETER_INSERT_ITEM_MENU_WIDTH", "PARAMETER_ITEM_CONTEXT_MENU_WIDTH", "PARAMETER_PANE_POSITION_OFFSET", "PARAMETER_PANE_ITEM_SELECTED_BACKGROUND", "PARAMETER_MENUITEM_TABLE"}]
       15 GETIMPORT                        R3 K20 [UDim.new]
       17 LOADN                            R4 0
       18 LOADN                            R5 82
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K8 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
       22 LOADN                            R3 200
       23 SETTABLEKS                       R3 R2 K9 ["PARAMETER_PANE_WIDTH"]
       25 LOADN                            R3 140
       26 SETTABLEKS                       R3 R2 K10 ["PARAMETER_PANE_HEADER_TITLE_WIDTH"]
       28 LOADK                            R3 K21 [0.8]
       29 SETTABLEKS                       R3 R2 K11 ["PARAMETER_ITEMS_MAX_SCALE_HEIGHT"]
       31 LOADN                            R3 108
       32 SETTABLEKS                       R3 R2 K12 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       34 LOADN                            R3 140
       35 SETTABLEKS                       R3 R2 K13 ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"]
       37 GETIMPORT                        R3 K24 [UDim2.fromOffset]
       39 LOADN                            R4 8
       40 LOADN                            R5 4
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K14 ["PARAMETER_PANE_POSITION_OFFSET"]
       44 DUPTABLE                         R3 K27 [{"Color3", "Transparency"}]
       45 GETIMPORT                        R4 K29 [Color3.fromHex]
       47 LOADK                            R5 K30 ["#657BF4"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K25 ["Color3"]
       51 LOADK                            R4 K31 [0.68]
       52 SETTABLEKS                       R4 R3 K26 ["Transparency"]
       54 SETTABLEKS                       R3 R2 K15 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
       56 GETIMPORT                        R3 K34 [table.freeze]
       58 NEWTABLE                         R4 0 7
       60 GETIMPORT                        R5 K34 [table.freeze]
       62 DUPTABLE                         R6 K37 [{"id", "text"}]
       63 LOADK                            R7 K38 ["String"]
       64 SETTABLEKS                       R7 R6 K35 ["id"]
       66 LOADK                            R7 K39 ["string"]
       67 SETTABLEKS                       R7 R6 K36 ["text"]
       69 CALL                             R5 1 1
       70 GETIMPORT                        R6 K34 [table.freeze]
       72 DUPTABLE                         R7 K37 [{"id", "text"}]
       73 LOADK                            R8 K40 ["Boolean"]
       74 SETTABLEKS                       R8 R7 K35 ["id"]
       76 LOADK                            R8 K41 ["boolean"]
       77 SETTABLEKS                       R8 R7 K36 ["text"]
       79 CALL                             R6 1 1
       80 GETIMPORT                        R7 K34 [table.freeze]
       82 DUPTABLE                         R8 K37 [{"id", "text"}]
       83 LOADK                            R9 K42 ["Number"]
       84 SETTABLEKS                       R9 R8 K35 ["id"]
       86 LOADK                            R9 K43 ["number"]
       87 SETTABLEKS                       R9 R8 K36 ["text"]
       89 CALL                             R7 1 1
       90 GETIMPORT                        R8 K34 [table.freeze]
       92 DUPTABLE                         R9 K37 [{"id", "text"}]
       93 LOADK                            R10 K44 ["Animation"]
       94 SETTABLEKS                       R10 R9 K35 ["id"]
       96 LOADK                            R10 K44 ["Animation"]
       97 SETTABLEKS                       R10 R9 K36 ["text"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K34 [table.freeze]
      102 DUPTABLE                         R10 K37 [{"id", "text"}]
      103 LOADK                            R11 K45 ["Mask"]
      104 SETTABLEKS                       R11 R10 K35 ["id"]
      106 LOADK                            R11 K45 ["Mask"]
      107 SETTABLEKS                       R11 R10 K36 ["text"]
      109 CALL                             R9 1 1
      110 GETIMPORT                        R10 K34 [table.freeze]
      112 DUPTABLE                         R11 K37 [{"id", "text"}]
      113 LOADK                            R12 K46 ["PlayMode"]
      114 SETTABLEKS                       R12 R11 K35 ["id"]
      116 LOADK                            R12 K46 ["PlayMode"]
      117 SETTABLEKS                       R12 R11 K36 ["text"]
      119 CALL                             R10 1 1
      120 GETIMPORT                        R11 K34 [table.freeze]
      122 DUPTABLE                         R12 K37 [{"id", "text"}]
      123 LOADK                            R13 K47 ["InputMode"]
      124 SETTABLEKS                       R13 R12 K35 ["id"]
      126 LOADK                            R13 K47 ["InputMode"]
      127 SETTABLEKS                       R13 R12 K36 ["text"]
      129 CALL                             R11 1 -1
      130 SETLIST                          R4 R5 -1 [1]
      132 CALL                             R3 1 1
      133 SETTABLEKS                       R3 R2 K16 ["PARAMETER_MENUITEM_TABLE"]
      135 RETURN                           R2 1
