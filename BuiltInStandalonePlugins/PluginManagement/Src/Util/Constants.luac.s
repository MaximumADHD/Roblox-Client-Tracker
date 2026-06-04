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
       18 NEWTABLE                         R2 64 0
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
       48 LOADN                            R3 113
       49 SETTABLEKS                       R3 R2 K16 ["MOVED_DIALOG_WIDTH"]
       51 LOADN                            R3 168
       52 SETTABLEKS                       R3 R2 K17 ["MOVED_DIALOG_HEIGHT"]
       54 LOADN                            R3 30
       55 SETTABLEKS                       R3 R2 K18 ["MOVED_DIALOG_TOP_PADDING"]
       57 LOADN                            R3 10
       58 SETTABLEKS                       R3 R2 K19 ["MOVED_DIALOG_INTRA_PADDING"]
       60 LOADN                            R3 20
       61 SETTABLEKS                       R3 R2 K20 ["MOVED_DIALOG_BOTTOM_PADDING"]
       63 LOADN                            R3 20
       64 SETTABLEKS                       R3 R2 K21 ["MOVED_DIALOG_SIDE_PADDING"]
       66 LOADN                            R3 18
       67 SETTABLEKS                       R3 R2 K22 ["MOVED_DIALOG_LABEL_HEIGHT"]
       69 LOADN                            R3 120
       70 SETTABLEKS                       R3 R2 K23 ["MOVED_DIALOG_BUTTON_WIDTH"]
       72 LOADN                            R3 32
       73 SETTABLEKS                       R3 R2 K24 ["MOVED_DIALOG_BUTTON_HEIGHT"]
       75 LOADN                            R3 20
       76 SETTABLEKS                       R3 R2 K25 ["PLUGIN_ENTRY_PADDING"]
       78 LOADN                            R3 5
       79 SETTABLEKS                       R3 R2 K26 ["PLUGIN_VERTICAL_PADDING"]
       81 LOADN                            R3 30
       82 SETTABLEKS                       R3 R2 K27 ["PLUGIN_HORIZONTAL_PADDING"]
       84 LOADN                            R3 60
       85 SETTABLEKS                       R3 R2 K28 ["THUMBNAIL_SIZE"]
       87 MOVE                             R4 R1
       88 CALL                             R4 0 1
       89 JUMPIFNOT                        R4 ; [+2]
       90 LOADN                            R3 20
       91 JUMP                             ; [+1]
       92 LOADN                            R3 30
       93 SETTABLEKS                       R3 R2 K29 ["PLUGIN_NAME_HEIGHT"]
       95 MOVE                             R4 R1
       96 CALL                             R4 0 1
       97 JUMPIFNOT                        R4 ; [+2]
       98 LOADN                            R3 16
       99 JUMP                             ; [+1]
      100 LOADN                            R3 20
      101 SETTABLEKS                       R3 R2 K30 ["PLUGIN_CREATOR_HEIGHT"]
      103 MOVE                             R4 R1
      104 CALL                             R4 0 1
      105 JUMPIFNOT                        R4 ; [+2]
      106 LOADN                            R3 32
      107 JUMP                             ; [+1]
      108 LOADN                            R3 60
      109 SETTABLEKS                       R3 R2 K31 ["PLUGIN_DESCRIPTION_HEIGHT"]
      111 LOADN                            R3 16
      112 SETTABLEKS                       R3 R2 K32 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
      114 MOVE                             R4 R1
      115 CALL                             R4 0 1
      116 JUMPIFNOT                        R4 ; [+2]
      117 LOADN                            R3 24
      118 JUMP                             ; [+1]
      119 LOADN                            R3 30
      120 SETTABLEKS                       R3 R2 K33 ["PLUGIN_UPDATE_HEIGHT"]
      122 LOADN                            R3 40
      123 SETTABLEKS                       R3 R2 K34 ["PLUGIN_ENABLE_WIDTH"]
      125 LOADN                            R3 28
      126 SETTABLEKS                       R3 R2 K35 ["PLUGIN_CONTEXT_WIDTH"]
      128 LOADN                            R3 194
      129 SETTABLEKS                       R3 R2 K36 ["MODERATED_WARNING_WIDTH"]
      131 LOADN                            R3 2
      132 SETTABLEKS                       R3 R2 K37 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      134 MOVE                             R4 R1
      135 CALL                             R4 0 1
      136 JUMPIFNOT                        R4 ; [+25]
      137 LOADN                            R10 2
      138 GETTABLEKS                       R11 R2 K25 ["PLUGIN_ENTRY_PADDING"]
      140 MUL                              R9 R10 R11
      141 LOADN                            R11 4
      142 GETTABLEKS                       R12 R2 K37 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      144 MUL                              R10 R11 R12
      145 ADD                              R8 R9 R10
      146 GETTABLEKS                       R9 R2 K29 ["PLUGIN_NAME_HEIGHT"]
      148 ADD                              R7 R8 R9
      149 GETTABLEKS                       R8 R2 K30 ["PLUGIN_CREATOR_HEIGHT"]
      151 ADD                              R6 R7 R8
      152 GETTABLEKS                       R7 R2 K31 ["PLUGIN_DESCRIPTION_HEIGHT"]
      154 ADD                              R5 R6 R7
      155 GETTABLEKS                       R6 R2 K32 ["PLUGIN_HTTP_REQUEST_OVERVIEW_HEIGHT"]
      157 ADD                              R4 R5 R6
      158 GETTABLEKS                       R5 R2 K33 ["PLUGIN_UPDATE_HEIGHT"]
      160 ADD                              R3 R4 R5
      161 JUMP                             ; [+1]
      162 LOADN                            R3 150
      163 SETTABLEKS                       R3 R2 K38 ["PLUGIN_ENTRY_HEIGHT"]
      165 LOADN                            R3 40
      166 SETTABLEKS                       R3 R2 K39 ["TOGGLE_BUTTON_WIDTH"]
      168 LOADN                            R3 24
      169 SETTABLEKS                       R3 R2 K40 ["TOGGLE_BUTTON_HEIGHT"]
      171 LOADN                            R3 18
      172 SETTABLEKS                       R3 R2 K41 ["HTTP_OVERVIEW_HEIGHT"]
      174 LOADN                            R3 18
      175 SETTABLEKS                       R3 R2 K42 ["HTTP_OVERVIEW_ICON_SIZE"]
      177 LOADN                            R3 32
      178 SETTABLEKS                       R3 R2 K43 ["DETAILS_THUMBNAIL_SIZE"]
      180 LOADN                            R3 170
      181 SETTABLEKS                       R3 R2 K44 ["LIST_ITEM_TITLE_WIDTH"]
      183 DUPTABLE                         R3 K47 [{"HttpService", "ScriptInjection"}]
      184 LOADK                            R4 K45 ["HttpService"]
      185 SETTABLEKS                       R4 R3 K45 ["HttpService"]
      187 LOADK                            R4 K46 ["ScriptInjection"]
      188 SETTABLEKS                       R4 R3 K46 ["ScriptInjection"]
      190 SETTABLEKS                       R3 R2 K48 ["PERMISSION_TYPES"]
      192 LOADN                            R3 12
      193 SETTABLEKS                       R3 R2 K49 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      195 DUPTABLE                         R3 K52 [{"Main", "Detail"}]
      196 LOADK                            R4 K50 ["Main"]
      197 SETTABLEKS                       R4 R3 K50 ["Main"]
      199 LOADK                            R4 K51 ["Detail"]
      200 SETTABLEKS                       R4 R3 K51 ["Detail"]
      202 SETTABLEKS                       R3 R2 K53 ["APP_PAGE"]
      204 LOADN                            R3 30
      205 SETTABLEKS                       R3 R2 K54 ["SUBTITLE_PADDING"]
      207 RETURN                           R2 1
