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
       14 DUPTABLE                         R2 K18 [{"PARAMETER_PANE_TEXT_COMPONENT_WIDTH", "PARAMETER_PANE_WIDTH", "PARAMETER_PANE_HEADER_TITLE_WIDTH", "PARAMETER_ITEMS_MAX_SCALE_HEIGHT", "PARAMETER_INSERT_ITEM_MENU_WIDTH", "PARAMETER_ITEM_CONTEXT_MENU_WIDTH", "PARAMETER_PANE_POSITION_OFFSET", "PARAMETER_PANE_ITEM_SELECTED_BACKGROUND", "PARAMETER_ENUM_TYPES", "PARAMETER_MENUITEM_TABLE"}]
       15 GETIMPORT                        R3 K21 [UDim.new]
       17 LOADN                            R4 0
       18 LOADN                            R5 82
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K8 ["PARAMETER_PANE_TEXT_COMPONENT_WIDTH"]
       22 LOADN                            R3 200
       23 SETTABLEKS                       R3 R2 K9 ["PARAMETER_PANE_WIDTH"]
       25 LOADN                            R3 140
       26 SETTABLEKS                       R3 R2 K10 ["PARAMETER_PANE_HEADER_TITLE_WIDTH"]
       28 LOADK                            R3 K22 [0.8]
       29 SETTABLEKS                       R3 R2 K11 ["PARAMETER_ITEMS_MAX_SCALE_HEIGHT"]
       31 LOADN                            R3 108
       32 SETTABLEKS                       R3 R2 K12 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       34 LOADN                            R3 140
       35 SETTABLEKS                       R3 R2 K13 ["PARAMETER_ITEM_CONTEXT_MENU_WIDTH"]
       37 GETIMPORT                        R3 K25 [UDim2.fromOffset]
       39 LOADN                            R4 8
       40 LOADN                            R5 4
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K14 ["PARAMETER_PANE_POSITION_OFFSET"]
       44 DUPTABLE                         R3 K28 [{"Color3", "Transparency"}]
       45 GETIMPORT                        R4 K30 [Color3.fromHex]
       47 LOADK                            R5 K31 ["#657BF4"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K26 ["Color3"]
       51 LOADK                            R4 K32 [0.68]
       52 SETTABLEKS                       R4 R3 K27 ["Transparency"]
       54 SETTABLEKS                       R3 R2 K15 ["PARAMETER_PANE_ITEM_SELECTED_BACKGROUND"]
       56 NEWTABLE                         R3 4 0
       58 GETIMPORT                        R4 K36 [Enum.AnimationNodePlayMode.Loop]
       60 SETTABLEKS                       R4 R3 K37 ["PlayMode"]
       62 GETIMPORT                        R4 K40 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       64 SETTABLEKS                       R4 R3 K41 ["InputMode"]
       66 GETIMPORT                        R4 K44 [Enum.AnimationNodePhaseSync.Synced]
       68 SETTABLEKS                       R4 R3 K45 ["PhaseSync"]
       70 SETTABLEKS                       R3 R2 K16 ["PARAMETER_ENUM_TYPES"]
       72 GETIMPORT                        R3 K48 [table.freeze]
       74 NEWTABLE                         R4 0 7
       76 GETIMPORT                        R5 K48 [table.freeze]
       78 DUPTABLE                         R6 K51 [{"id", "text"}]
       79 LOADK                            R7 K52 ["String"]
       80 SETTABLEKS                       R7 R6 K49 ["id"]
       82 LOADK                            R7 K53 ["string"]
       83 SETTABLEKS                       R7 R6 K50 ["text"]
       85 CALL                             R5 1 1
       86 GETIMPORT                        R6 K48 [table.freeze]
       88 DUPTABLE                         R7 K51 [{"id", "text"}]
       89 LOADK                            R8 K54 ["Boolean"]
       90 SETTABLEKS                       R8 R7 K49 ["id"]
       92 LOADK                            R8 K55 ["boolean"]
       93 SETTABLEKS                       R8 R7 K50 ["text"]
       95 CALL                             R6 1 1
       96 GETIMPORT                        R7 K48 [table.freeze]
       98 DUPTABLE                         R8 K51 [{"id", "text"}]
       99 LOADK                            R9 K56 ["Number"]
      100 SETTABLEKS                       R9 R8 K49 ["id"]
      102 LOADK                            R9 K57 ["number"]
      103 SETTABLEKS                       R9 R8 K50 ["text"]
      105 CALL                             R7 1 1
      106 GETIMPORT                        R8 K48 [table.freeze]
      108 DUPTABLE                         R9 K51 [{"id", "text"}]
      109 LOADK                            R10 K58 ["Mask"]
      110 SETTABLEKS                       R10 R9 K49 ["id"]
      112 LOADK                            R10 K58 ["Mask"]
      113 SETTABLEKS                       R10 R9 K50 ["text"]
      115 CALL                             R8 1 1
      116 GETIMPORT                        R9 K48 [table.freeze]
      118 DUPTABLE                         R10 K51 [{"id", "text"}]
      119 LOADK                            R11 K37 ["PlayMode"]
      120 SETTABLEKS                       R11 R10 K49 ["id"]
      122 LOADK                            R11 K37 ["PlayMode"]
      123 SETTABLEKS                       R11 R10 K50 ["text"]
      125 CALL                             R9 1 1
      126 GETIMPORT                        R10 K48 [table.freeze]
      128 DUPTABLE                         R11 K51 [{"id", "text"}]
      129 LOADK                            R12 K41 ["InputMode"]
      130 SETTABLEKS                       R12 R11 K49 ["id"]
      132 LOADK                            R12 K41 ["InputMode"]
      133 SETTABLEKS                       R12 R11 K50 ["text"]
      135 CALL                             R10 1 1
      136 GETIMPORT                        R11 K48 [table.freeze]
      138 DUPTABLE                         R12 K51 [{"id", "text"}]
      139 LOADK                            R13 K45 ["PhaseSync"]
      140 SETTABLEKS                       R13 R12 K49 ["id"]
      142 LOADK                            R13 K45 ["PhaseSync"]
      143 SETTABLEKS                       R13 R12 K50 ["text"]
      145 CALL                             R11 1 -1
      146 SETLIST                          R4 R5 -1 [1]
      148 CALL                             R3 1 1
      149 SETTABLEKS                       R3 R2 K17 ["PARAMETER_MENUITEM_TABLE"]
      151 RETURN                           R2 1
