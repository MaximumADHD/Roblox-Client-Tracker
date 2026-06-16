MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 NEWTABLE                         R1 32 0
       11 LOADN                            R2 250
       12 SETTABLEKS                       R2 R1 K3 ["HEADER_TITLE_WIDTH"]
       14 LOADN                            R2 100
       15 SETTABLEKS                       R2 R1 K4 ["HEADER_UPDATE_WIDTH"]
       17 LOADN                            R2 20
       18 SETTABLEKS                       R2 R1 K5 ["HEADER_LEFT_PADDING"]
       20 LOADN                            R2 234
       21 SETTABLEKS                       R2 R1 K6 ["HEADER_RIGHT_PADDING"]
       23 LOADN                            R2 20
       24 SETTABLEKS                       R2 R1 K7 ["HEADER_TOP_PADDING"]
       26 LOADN                            R2 30
       27 SETTABLEKS                       R2 R1 K8 ["HEADER_BUTTON_SIZE"]
       29 LOADN                            R2 18
       30 SETTABLEKS                       R2 R1 K9 ["HEADER_MESSAGE_LINE_HEIGHT"]
       32 GETTABLEKS                       R3 R1 K8 ["HEADER_BUTTON_SIZE"]
       34 GETTABLEKS                       R4 R1 K7 ["HEADER_TOP_PADDING"]
       36 ADD                              R2 R3 R4
       37 SETTABLEKS                       R2 R1 K10 ["HEADER_HEIGHT"]
       39 LOADN                            R2 20
       40 SETTABLEKS                       R2 R1 K11 ["PLUGIN_ENTRY_PADDING"]
       42 LOADN                            R2 5
       43 SETTABLEKS                       R2 R1 K12 ["PLUGIN_VERTICAL_PADDING"]
       45 LOADN                            R2 30
       46 SETTABLEKS                       R2 R1 K13 ["PLUGIN_HORIZONTAL_PADDING"]
       48 LOADN                            R2 60
       49 SETTABLEKS                       R2 R1 K14 ["THUMBNAIL_SIZE"]
       51 LOADN                            R2 20
       52 SETTABLEKS                       R2 R1 K15 ["PLUGIN_NAME_HEIGHT"]
       54 LOADN                            R2 16
       55 SETTABLEKS                       R2 R1 K16 ["PLUGIN_CREATOR_HEIGHT"]
       57 LOADN                            R2 32
       58 SETTABLEKS                       R2 R1 K17 ["PLUGIN_DESCRIPTION_HEIGHT"]
       60 LOADN                            R2 16
       61 SETTABLEKS                       R2 R1 K18 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       63 LOADN                            R2 24
       64 SETTABLEKS                       R2 R1 K19 ["PLUGIN_UPDATE_HEIGHT"]
       66 LOADN                            R2 40
       67 SETTABLEKS                       R2 R1 K20 ["PLUGIN_ENABLE_WIDTH"]
       69 LOADN                            R2 28
       70 SETTABLEKS                       R2 R1 K21 ["PLUGIN_CONTEXT_WIDTH"]
       72 LOADN                            R2 194
       73 SETTABLEKS                       R2 R1 K22 ["MODERATED_WARNING_WIDTH"]
       75 LOADN                            R2 2
       76 SETTABLEKS                       R2 R1 K23 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
       78 LOADN                            R9 2
       79 GETTABLEKS                       R10 R1 K11 ["PLUGIN_ENTRY_PADDING"]
       81 MUL                              R8 R9 R10
       82 LOADN                            R10 4
       83 GETTABLEKS                       R11 R1 K23 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
       85 MUL                              R9 R10 R11
       86 ADD                              R7 R8 R9
       87 GETTABLEKS                       R8 R1 K15 ["PLUGIN_NAME_HEIGHT"]
       89 ADD                              R6 R7 R8
       90 GETTABLEKS                       R7 R1 K16 ["PLUGIN_CREATOR_HEIGHT"]
       92 ADD                              R5 R6 R7
       93 GETTABLEKS                       R6 R1 K17 ["PLUGIN_DESCRIPTION_HEIGHT"]
       95 ADD                              R4 R5 R6
       96 GETTABLEKS                       R5 R1 K18 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       98 ADD                              R3 R4 R5
       99 GETTABLEKS                       R4 R1 K19 ["PLUGIN_UPDATE_HEIGHT"]
      101 ADD                              R2 R3 R4
      102 SETTABLEKS                       R2 R1 K24 ["PLUGIN_ENTRY_HEIGHT"]
      104 LOADN                            R2 40
      105 SETTABLEKS                       R2 R1 K25 ["TOGGLE_BUTTON_WIDTH"]
      107 LOADN                            R2 24
      108 SETTABLEKS                       R2 R1 K26 ["TOGGLE_BUTTON_HEIGHT"]
      110 LOADN                            R2 18
      111 SETTABLEKS                       R2 R1 K27 ["HTTP_OVERVIEW_HEIGHT"]
      113 LOADN                            R2 18
      114 SETTABLEKS                       R2 R1 K28 ["HTTP_OVERVIEW_ICON_SIZE"]
      116 LOADN                            R2 32
      117 SETTABLEKS                       R2 R1 K29 ["DETAILS_THUMBNAIL_SIZE"]
      119 LOADN                            R2 170
      120 SETTABLEKS                       R2 R1 K30 ["LIST_ITEM_TITLE_WIDTH"]
      122 DUPTABLE                         R2 K33 [{"HttpService", "ScriptInjection"}]
      123 LOADK                            R3 K31 ["HttpService"]
      124 SETTABLEKS                       R3 R2 K31 ["HttpService"]
      126 LOADK                            R3 K32 ["ScriptInjection"]
      127 SETTABLEKS                       R3 R2 K32 ["ScriptInjection"]
      129 SETTABLEKS                       R2 R1 K34 ["PERMISSION_TYPES"]
      131 LOADN                            R2 12
      132 SETTABLEKS                       R2 R1 K35 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      134 DUPTABLE                         R2 K38 [{"Main", "Detail"}]
      135 LOADK                            R3 K36 ["Main"]
      136 SETTABLEKS                       R3 R2 K36 ["Main"]
      138 LOADK                            R3 K37 ["Detail"]
      139 SETTABLEKS                       R3 R2 K37 ["Detail"]
      141 SETTABLEKS                       R2 R1 K39 ["APP_PAGE"]
      143 LOADN                            R2 30
      144 SETTABLEKS                       R2 R1 K40 ["SUBTITLE_PADDING"]
      146 RETURN                           R1 1
