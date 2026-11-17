MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADN                            R1 250
        4 SETTABLEKS                       R1 R0 K0 ["HEADER_TITLE_WIDTH"]
        6 LOADN                            R1 100
        7 SETTABLEKS                       R1 R0 K1 ["HEADER_UPDATE_WIDTH"]
        9 LOADN                            R1 20
       10 SETTABLEKS                       R1 R0 K2 ["HEADER_LEFT_PADDING"]
       12 LOADN                            R1 -22
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
       31 LOADN                            R1 20
       32 SETTABLEKS                       R1 R0 K8 ["PLUGIN_ENTRY_PADDING"]
       34 LOADN                            R1 5
       35 SETTABLEKS                       R1 R0 K9 ["PLUGIN_VERTICAL_PADDING"]
       37 LOADN                            R1 30
       38 SETTABLEKS                       R1 R0 K10 ["PLUGIN_HORIZONTAL_PADDING"]
       40 LOADN                            R1 60
       41 SETTABLEKS                       R1 R0 K11 ["THUMBNAIL_SIZE"]
       43 LOADN                            R1 20
       44 SETTABLEKS                       R1 R0 K12 ["PLUGIN_NAME_HEIGHT"]
       46 LOADN                            R1 16
       47 SETTABLEKS                       R1 R0 K13 ["PLUGIN_CREATOR_HEIGHT"]
       49 LOADN                            R1 32
       50 SETTABLEKS                       R1 R0 K14 ["PLUGIN_DESCRIPTION_HEIGHT"]
       52 LOADN                            R1 16
       53 SETTABLEKS                       R1 R0 K15 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       55 LOADN                            R1 24
       56 SETTABLEKS                       R1 R0 K16 ["PLUGIN_UPDATE_HEIGHT"]
       58 LOADN                            R1 40
       59 SETTABLEKS                       R1 R0 K17 ["PLUGIN_ENABLE_WIDTH"]
       61 LOADN                            R1 28
       62 SETTABLEKS                       R1 R0 K18 ["PLUGIN_CONTEXT_WIDTH"]
       64 LOADN                            R1 194
       65 SETTABLEKS                       R1 R0 K19 ["MODERATED_WARNING_WIDTH"]
       67 LOADN                            R1 2
       68 SETTABLEKS                       R1 R0 K20 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
       70 LOADN                            R8 2
       71 GETTABLEKS                       R9 R0 K8 ["PLUGIN_ENTRY_PADDING"]
       73 MUL                              R7 R8 R9
       74 LOADN                            R9 4
       75 GETTABLEKS                       R10 R0 K20 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
       77 MUL                              R8 R9 R10
       78 ADD                              R6 R7 R8
       79 GETTABLEKS                       R7 R0 K12 ["PLUGIN_NAME_HEIGHT"]
       81 ADD                              R5 R6 R7
       82 GETTABLEKS                       R6 R0 K13 ["PLUGIN_CREATOR_HEIGHT"]
       84 ADD                              R4 R5 R6
       85 GETTABLEKS                       R5 R0 K14 ["PLUGIN_DESCRIPTION_HEIGHT"]
       87 ADD                              R3 R4 R5
       88 GETTABLEKS                       R4 R0 K15 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       90 ADD                              R2 R3 R4
       91 GETTABLEKS                       R3 R0 K16 ["PLUGIN_UPDATE_HEIGHT"]
       93 ADD                              R1 R2 R3
       94 SETTABLEKS                       R1 R0 K21 ["PLUGIN_ENTRY_HEIGHT"]
       96 LOADN                            R1 40
       97 SETTABLEKS                       R1 R0 K22 ["TOGGLE_BUTTON_WIDTH"]
       99 LOADN                            R1 24
      100 SETTABLEKS                       R1 R0 K23 ["TOGGLE_BUTTON_HEIGHT"]
      102 LOADN                            R1 18
      103 SETTABLEKS                       R1 R0 K24 ["HTTP_OVERVIEW_ICON_SIZE"]
      105 LOADN                            R1 32
      106 SETTABLEKS                       R1 R0 K25 ["DETAILS_THUMBNAIL_SIZE"]
      108 LOADN                            R1 170
      109 SETTABLEKS                       R1 R0 K26 ["LIST_ITEM_TITLE_WIDTH"]
      111 DUPTABLE                         R1 K29 [{["HttpService"] = "HttpService", ["ScriptInjection"] = "ScriptInjection"}]
      112 SETTABLEKS                       R1 R0 K30 ["PERMISSION_TYPES"]
      114 LOADN                            R1 12
      115 SETTABLEKS                       R1 R0 K31 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      117 DUPTABLE                         R1 K34 [{["Main"] = "Main", ["Detail"] = "Detail"}]
      118 SETTABLEKS                       R1 R0 K35 ["APP_PAGE"]
      120 LOADN                            R1 30
      121 SETTABLEKS                       R1 R0 K36 ["SUBTITLE_PADDING"]
      123 RETURN                           R0 1
