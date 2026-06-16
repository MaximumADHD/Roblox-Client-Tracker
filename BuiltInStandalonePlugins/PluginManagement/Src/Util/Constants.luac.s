MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioFixPluginManagementTextClipping"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 32 0
       20 LOADN                            R3 250
       21 SETTABLEKS                       R3 R2 K8 ["HEADER_TITLE_WIDTH"]
       23 LOADN                            R3 100
       24 SETTABLEKS                       R3 R2 K9 ["HEADER_UPDATE_WIDTH"]
       26 LOADN                            R3 20
       27 SETTABLEKS                       R3 R2 K10 ["HEADER_LEFT_PADDING"]
       29 LOADN                            R3 234
       30 SETTABLEKS                       R3 R2 K11 ["HEADER_RIGHT_PADDING"]
       32 LOADN                            R3 20
       33 SETTABLEKS                       R3 R2 K12 ["HEADER_TOP_PADDING"]
       35 LOADN                            R3 30
       36 SETTABLEKS                       R3 R2 K13 ["HEADER_BUTTON_SIZE"]
       38 LOADN                            R3 18
       39 SETTABLEKS                       R3 R2 K14 ["HEADER_MESSAGE_LINE_HEIGHT"]
       41 GETTABLEKS                       R4 R2 K13 ["HEADER_BUTTON_SIZE"]
       43 GETTABLEKS                       R5 R2 K12 ["HEADER_TOP_PADDING"]
       45 ADD                              R3 R4 R5
       46 SETTABLEKS                       R3 R2 K15 ["HEADER_HEIGHT"]
       48 LOADN                            R3 20
       49 SETTABLEKS                       R3 R2 K16 ["PLUGIN_ENTRY_PADDING"]
       51 LOADN                            R3 5
       52 SETTABLEKS                       R3 R2 K17 ["PLUGIN_VERTICAL_PADDING"]
       54 LOADN                            R3 30
       55 SETTABLEKS                       R3 R2 K18 ["PLUGIN_HORIZONTAL_PADDING"]
       57 LOADN                            R3 60
       58 SETTABLEKS                       R3 R2 K19 ["THUMBNAIL_SIZE"]
       60 MOVE                             R4 R1
       61 CALL                             R4 0 1
       62 JUMPIFNOT                        R4 ; [+2]
       63 LOADN                            R3 20
       64 JUMP                             ; [+1]
       65 LOADN                            R3 30
       66 SETTABLEKS                       R3 R2 K20 ["PLUGIN_NAME_HEIGHT"]
       68 MOVE                             R4 R1
       69 CALL                             R4 0 1
       70 JUMPIFNOT                        R4 ; [+2]
       71 LOADN                            R3 16
       72 JUMP                             ; [+1]
       73 LOADN                            R3 20
       74 SETTABLEKS                       R3 R2 K21 ["PLUGIN_CREATOR_HEIGHT"]
       76 MOVE                             R4 R1
       77 CALL                             R4 0 1
       78 JUMPIFNOT                        R4 ; [+2]
       79 LOADN                            R3 32
       80 JUMP                             ; [+1]
       81 LOADN                            R3 60
       82 SETTABLEKS                       R3 R2 K22 ["PLUGIN_DESCRIPTION_HEIGHT"]
       84 LOADN                            R3 16
       85 SETTABLEKS                       R3 R2 K23 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
       87 MOVE                             R4 R1
       88 CALL                             R4 0 1
       89 JUMPIFNOT                        R4 ; [+2]
       90 LOADN                            R3 24
       91 JUMP                             ; [+1]
       92 LOADN                            R3 30
       93 SETTABLEKS                       R3 R2 K24 ["PLUGIN_UPDATE_HEIGHT"]
       95 LOADN                            R3 40
       96 SETTABLEKS                       R3 R2 K25 ["PLUGIN_ENABLE_WIDTH"]
       98 LOADN                            R3 28
       99 SETTABLEKS                       R3 R2 K26 ["PLUGIN_CONTEXT_WIDTH"]
      101 LOADN                            R3 194
      102 SETTABLEKS                       R3 R2 K27 ["MODERATED_WARNING_WIDTH"]
      104 LOADN                            R3 2
      105 SETTABLEKS                       R3 R2 K28 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      107 MOVE                             R4 R1
      108 CALL                             R4 0 1
      109 JUMPIFNOT                        R4 ; [+25]
      110 LOADN                            R10 2
      111 GETTABLEKS                       R11 R2 K16 ["PLUGIN_ENTRY_PADDING"]
      113 MUL                              R9 R10 R11
      114 LOADN                            R11 4
      115 GETTABLEKS                       R12 R2 K28 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      117 MUL                              R10 R11 R12
      118 ADD                              R8 R9 R10
      119 GETTABLEKS                       R9 R2 K20 ["PLUGIN_NAME_HEIGHT"]
      121 ADD                              R7 R8 R9
      122 GETTABLEKS                       R8 R2 K21 ["PLUGIN_CREATOR_HEIGHT"]
      124 ADD                              R6 R7 R8
      125 GETTABLEKS                       R7 R2 K22 ["PLUGIN_DESCRIPTION_HEIGHT"]
      127 ADD                              R5 R6 R7
      128 GETTABLEKS                       R6 R2 K23 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
      130 ADD                              R4 R5 R6
      131 GETTABLEKS                       R5 R2 K24 ["PLUGIN_UPDATE_HEIGHT"]
      133 ADD                              R3 R4 R5
      134 JUMP                             ; [+1]
      135 LOADN                            R3 150
      136 SETTABLEKS                       R3 R2 K29 ["PLUGIN_ENTRY_HEIGHT"]
      138 LOADN                            R3 40
      139 SETTABLEKS                       R3 R2 K30 ["TOGGLE_BUTTON_WIDTH"]
      141 LOADN                            R3 24
      142 SETTABLEKS                       R3 R2 K31 ["TOGGLE_BUTTON_HEIGHT"]
      144 LOADN                            R3 18
      145 SETTABLEKS                       R3 R2 K32 ["HTTP_OVERVIEW_HEIGHT"]
      147 LOADN                            R3 18
      148 SETTABLEKS                       R3 R2 K33 ["HTTP_OVERVIEW_ICON_SIZE"]
      150 LOADN                            R3 32
      151 SETTABLEKS                       R3 R2 K34 ["DETAILS_THUMBNAIL_SIZE"]
      153 LOADN                            R3 170
      154 SETTABLEKS                       R3 R2 K35 ["LIST_ITEM_TITLE_WIDTH"]
      156 DUPTABLE                         R3 K38 [{"HttpService", "ScriptInjection"}]
      157 LOADK                            R4 K36 ["HttpService"]
      158 SETTABLEKS                       R4 R3 K36 ["HttpService"]
      160 LOADK                            R4 K37 ["ScriptInjection"]
      161 SETTABLEKS                       R4 R3 K37 ["ScriptInjection"]
      163 SETTABLEKS                       R3 R2 K39 ["PERMISSION_TYPES"]
      165 LOADN                            R3 12
      166 SETTABLEKS                       R3 R2 K40 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      168 DUPTABLE                         R3 K43 [{"Main", "Detail"}]
      169 LOADK                            R4 K41 ["Main"]
      170 SETTABLEKS                       R4 R3 K41 ["Main"]
      172 LOADK                            R4 K42 ["Detail"]
      173 SETTABLEKS                       R4 R3 K42 ["Detail"]
      175 SETTABLEKS                       R3 R2 K44 ["APP_PAGE"]
      177 LOADN                            R3 30
      178 SETTABLEKS                       R3 R2 K45 ["SUBTITLE_PADDING"]
      180 RETURN                           R2 1
