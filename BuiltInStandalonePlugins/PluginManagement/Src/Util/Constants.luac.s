MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADN                            R1 250
        4 SETTABLEKS                       R1 R0 K0 ["HEADER_TITLE_WIDTH"]
        6 LOADN                            R1 100
        7 SETTABLEKS                       R1 R0 K1 ["HEADER_UPDATE_WIDTH"]
        9 LOADN                            R1 20
       10 SETTABLEKS                       R1 R0 K2 ["HEADER_LEFT_PADDING"]
       12 LOADN                            R1 234
       13 SETTABLEKS                       R1 R0 K3 ["HEADER_RIGHT_PADDING"]
       15 LOADN                            R1 20
       16 SETTABLEKS                       R1 R0 K4 ["HEADER_TOP_PADDING"]
       18 LOADN                            R1 30
       19 SETTABLEKS                       R1 R0 K5 ["HEADER_BUTTON_SIZE"]
       21 LOADN                            R1 18
       22 SETTABLEKS                       R1 R0 K6 ["HEADER_MESSAGE_LINE_HEIGHT"]
       24 GETTABLEKS                       R2 R0 K5 ["HEADER_BUTTON_SIZE"]
       26 GETTABLEKS                       R3 R0 K4 ["HEADER_TOP_PADDING"]
       28 ADD                              R1 R2 R3
       29 SETTABLEKS                       R1 R0 K7 ["HEADER_HEIGHT"]
       31 LOADN                            R1 113
       32 SETTABLEKS                       R1 R0 K8 ["MOVED_DIALOG_WIDTH"]
       34 LOADN                            R1 168
       35 SETTABLEKS                       R1 R0 K9 ["MOVED_DIALOG_HEIGHT"]
       37 LOADN                            R1 30
       38 SETTABLEKS                       R1 R0 K10 ["MOVED_DIALOG_TOP_PADDING"]
       40 LOADN                            R1 10
       41 SETTABLEKS                       R1 R0 K11 ["MOVED_DIALOG_INTRA_PADDING"]
       43 LOADN                            R1 20
       44 SETTABLEKS                       R1 R0 K12 ["MOVED_DIALOG_BOTTOM_PADDING"]
       46 LOADN                            R1 20
       47 SETTABLEKS                       R1 R0 K13 ["MOVED_DIALOG_SIDE_PADDING"]
       49 LOADN                            R1 18
       50 SETTABLEKS                       R1 R0 K14 ["MOVED_DIALOG_LABEL_HEIGHT"]
       52 LOADN                            R1 120
       53 SETTABLEKS                       R1 R0 K15 ["MOVED_DIALOG_BUTTON_WIDTH"]
       55 LOADN                            R1 32
       56 SETTABLEKS                       R1 R0 K16 ["MOVED_DIALOG_BUTTON_HEIGHT"]
       58 LOADN                            R1 5
       59 SETTABLEKS                       R1 R0 K17 ["PLUGIN_VERTICAL_PADDING"]
       61 LOADN                            R1 30
       62 SETTABLEKS                       R1 R0 K18 ["PLUGIN_HORIZONTAL_PADDING"]
       64 LOADN                            R1 60
       65 SETTABLEKS                       R1 R0 K19 ["THUMBNAIL_SIZE"]
       67 LOADN                            R1 150
       68 SETTABLEKS                       R1 R0 K20 ["PLUGIN_ENTRY_HEIGHT"]
       70 LOADN                            R1 30
       71 SETTABLEKS                       R1 R0 K21 ["PLUGIN_NAME_HEIGHT"]
       73 LOADN                            R1 20
       74 SETTABLEKS                       R1 R0 K22 ["PLUGIN_CREATOR_HEIGHT"]
       76 LOADN                            R1 60
       77 SETTABLEKS                       R1 R0 K23 ["PLUGIN_DESCRIPTION_HEIGHT"]
       79 LOADN                            R1 30
       80 SETTABLEKS                       R1 R0 K24 ["PLUGIN_UPDATE_HEIGHT"]
       82 LOADN                            R1 40
       83 SETTABLEKS                       R1 R0 K25 ["PLUGIN_ENABLE_WIDTH"]
       85 LOADN                            R1 28
       86 SETTABLEKS                       R1 R0 K26 ["PLUGIN_CONTEXT_WIDTH"]
       88 LOADN                            R1 194
       89 SETTABLEKS                       R1 R0 K27 ["MODERATED_WARNING_WIDTH"]
       91 LOADN                            R1 40
       92 SETTABLEKS                       R1 R0 K28 ["TOGGLE_BUTTON_WIDTH"]
       94 LOADN                            R1 24
       95 SETTABLEKS                       R1 R0 K29 ["TOGGLE_BUTTON_HEIGHT"]
       97 LOADN                            R1 18
       98 SETTABLEKS                       R1 R0 K30 ["HTTP_OVERVIEW_HEIGHT"]
      100 LOADN                            R1 18
      101 SETTABLEKS                       R1 R0 K31 ["HTTP_OVERVIEW_ICON_SIZE"]
      103 LOADN                            R1 32
      104 SETTABLEKS                       R1 R0 K32 ["DETAILS_THUMBNAIL_SIZE"]
      106 LOADN                            R1 170
      107 SETTABLEKS                       R1 R0 K33 ["LIST_ITEM_TITLE_WIDTH"]
      109 DUPTABLE                         R1 K36 [{"HttpService", "ScriptInjection"}]
      110 LOADK                            R2 K34 ["HttpService"]
      111 SETTABLEKS                       R2 R1 K34 ["HttpService"]
      113 LOADK                            R2 K35 ["ScriptInjection"]
      114 SETTABLEKS                       R2 R1 K35 ["ScriptInjection"]
      116 SETTABLEKS                       R1 R0 K37 ["PERMISSION_TYPES"]
      118 LOADN                            R1 12
      119 SETTABLEKS                       R1 R0 K38 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      121 DUPTABLE                         R1 K41 [{"Main", "Detail"}]
      122 LOADK                            R2 K39 ["Main"]
      123 SETTABLEKS                       R2 R1 K39 ["Main"]
      125 LOADK                            R2 K40 ["Detail"]
      126 SETTABLEKS                       R2 R1 K40 ["Detail"]
      128 SETTABLEKS                       R1 R0 K42 ["APP_PAGE"]
      130 LOADN                            R1 30
      131 SETTABLEKS                       R1 R0 K43 ["SUBTITLE_PADDING"]
      133 LOADN                            R1 20
      134 SETTABLEKS                       R1 R0 K44 ["PLUGIN_ENTRY_PADDING"]
      136 RETURN                           R0 1
