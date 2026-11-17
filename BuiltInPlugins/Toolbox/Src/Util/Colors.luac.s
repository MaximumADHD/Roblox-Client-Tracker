MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["wrapStrictTable"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 64 0
       20 GETIMPORT                        R3 K10 [Color3.fromRGB]
       22 LOADN                            R4 0
       23 LOADN                            R5 162
       24 LOADN                            R6 255
       25 CALL                             R3 3 1
       26 SETTABLEKS                       R3 R2 K11 ["BLUE_PRIMARY"]
       28 GETIMPORT                        R3 K10 [Color3.fromRGB]
       30 LOADN                            R4 153
       31 LOADN                            R5 218
       32 LOADN                            R6 255
       33 CALL                             R3 3 1
       34 SETTABLEKS                       R3 R2 K12 ["BLUE_DISABLED"]
       36 GETIMPORT                        R3 K10 [Color3.fromRGB]
       38 LOADN                            R4 25
       39 LOADN                            R5 25
       40 LOADN                            R6 25
       41 CALL                             R3 3 1
       42 SETTABLEKS                       R3 R2 K13 ["GRAY_1"]
       44 GETIMPORT                        R3 K10 [Color3.fromRGB]
       46 LOADN                            R4 117
       47 LOADN                            R5 117
       48 LOADN                            R6 117
       49 CALL                             R3 3 1
       50 SETTABLEKS                       R3 R2 K14 ["GRAY_2"]
       52 GETIMPORT                        R3 K10 [Color3.fromRGB]
       54 LOADN                            R4 184
       55 LOADN                            R5 184
       56 LOADN                            R6 184
       57 CALL                             R3 3 1
       58 SETTABLEKS                       R3 R2 K15 ["GRAY_3"]
       60 GETIMPORT                        R3 K10 [Color3.fromRGB]
       62 LOADN                            R4 242
       63 LOADN                            R5 242
       64 LOADN                            R6 242
       65 CALL                             R3 3 1
       66 SETTABLEKS                       R3 R2 K16 ["GRAY_5"]
       68 GETIMPORT                        R3 K10 [Color3.fromRGB]
       70 LOADN                            R4 245
       71 LOADN                            R5 245
       72 LOADN                            R6 245
       73 CALL                             R3 3 1
       74 SETTABLEKS                       R3 R2 K17 ["GRAY_6"]
       76 GETIMPORT                        R3 K10 [Color3.fromRGB]
       78 LOADN                            R4 255
       79 LOADN                            R5 255
       80 LOADN                            R6 255
       81 CALL                             R3 3 1
       82 SETTABLEKS                       R3 R2 K18 ["WHITE"]
       84 GETIMPORT                        R3 K10 [Color3.fromRGB]
       86 LOADN                            R4 0
       87 LOADN                            R5 0
       88 LOADN                            R6 0
       89 CALL                             R3 3 1
       90 SETTABLEKS                       R3 R2 K19 ["BLACK"]
       92 GETIMPORT                        R3 K10 [Color3.fromRGB]
       94 LOADN                            R4 242
       95 LOADN                            R5 242
       96 LOADN                            R6 242
       97 CALL                             R3 3 1
       98 SETTABLEKS                       R3 R2 K20 ["HEADER_BACKGROUND_COLOR"]
      100 GETIMPORT                        R3 K10 [Color3.fromRGB]
      102 LOADN                            R4 184
      103 LOADN                            R5 184
      104 LOADN                            R6 184
      105 CALL                             R3 3 1
      106 SETTABLEKS                       R3 R2 K21 ["HEADER_BORDER_COLOR"]
      108 GETIMPORT                        R3 K10 [Color3.fromRGB]
      110 LOADN                            R4 227
      111 LOADN                            R5 227
      112 LOADN                            R6 227
      113 CALL                             R3 3 1
      114 SETTABLEKS                       R3 R2 K22 ["FOOTER_BACKGROUND_COLOR"]
      116 GETIMPORT                        R3 K10 [Color3.fromRGB]
      118 LOADN                            R4 184
      119 LOADN                            R5 184
      120 LOADN                            R6 184
      121 CALL                             R3 3 1
      122 SETTABLEKS                       R3 R2 K23 ["FOOTER_BORDER_COLOR"]
      124 GETIMPORT                        R3 K10 [Color3.fromRGB]
      126 LOADN                            R4 65
      127 LOADN                            R5 105
      128 LOADN                            R6 225
      129 CALL                             R3 3 1
      130 SETTABLEKS                       R3 R2 K24 ["LIGHT_ASSETNAME_TEXT_COLOR"]
      132 GETIMPORT                        R3 K10 [Color3.fromRGB]
      134 LOADN                            R4 34
      135 LOADN                            R5 34
      136 LOADN                            R6 34
      137 CALL                             R3 3 1
      138 SETTABLEKS                       R3 R2 K25 ["DARK_BORDER_COLOR"]
      140 GETIMPORT                        R3 K10 [Color3.fromRGB]
      142 LOADN                            R4 41
      143 LOADN                            R5 41
      144 LOADN                            R6 41
      145 CALL                             R3 3 1
      146 SETTABLEKS                       R3 R2 K26 ["DARK_SCROLL_BAR_BACKGROUND_COLOR"]
      148 GETIMPORT                        R3 K10 [Color3.fromRGB]
      150 LOADN                            R4 53
      151 LOADN                            R5 53
      152 LOADN                            R6 53
      153 CALL                             R3 3 1
      154 SETTABLEKS                       R3 R2 K27 ["DARK_BACKGROUND_COLOR"]
      156 GETIMPORT                        R3 K10 [Color3.fromRGB]
      158 LOADN                            R4 46
      159 LOADN                            R5 46
      160 LOADN                            R6 46
      161 CALL                             R3 3 1
      162 SETTABLEKS                       R3 R2 K28 ["DARK_MAIN_SECTION_COLOR"]
      164 GETIMPORT                        R3 K10 [Color3.fromRGB]
      166 LOADN                            R4 56
      167 LOADN                            R5 56
      168 LOADN                            R6 56
      169 CALL                             R3 3 1
      170 SETTABLEKS                       R3 R2 K29 ["DARK_SCROLL_BAR_COLOR"]
      172 GETIMPORT                        R3 K10 [Color3.fromRGB]
      174 LOADN                            R4 85
      175 LOADN                            R5 85
      176 LOADN                            R6 85
      177 CALL                             R3 3 1
      178 SETTABLEKS                       R3 R2 K30 ["DARK_DISABLED_TEXT_COLOR"]
      180 GETIMPORT                        R3 K10 [Color3.fromRGB]
      182 LOADN                            R4 102
      183 LOADN                            R5 102
      184 LOADN                            R6 102
      185 CALL                             R3 3 1
      186 SETTABLEKS                       R3 R2 K31 ["DARK_DIMMER_TEXT_COLOR"]
      188 GETIMPORT                        R3 K10 [Color3.fromRGB]
      190 LOADN                            R4 170
      191 LOADN                            R5 170
      192 LOADN                            R6 170
      193 CALL                             R3 3 1
      194 SETTABLEKS                       R3 R2 K32 ["DARK_TITLE_COLOR"]
      196 GETIMPORT                        R3 K10 [Color3.fromRGB]
      198 LOADN                            R4 204
      199 LOADN                            R5 204
      200 LOADN                            R6 204
      201 CALL                             R3 3 1
      202 SETTABLEKS                       R3 R2 K33 ["DARK_MAIN_TEXT_COLOR"]
      204 GETIMPORT                        R3 K10 [Color3.fromRGB]
      206 LOADN                            R4 37
      207 LOADN                            R5 37
      208 LOADN                            R6 37
      209 CALL                             R3 3 1
      210 SETTABLEKS                       R3 R2 K34 ["DARK_RIBBON_BAR_ICON_HOVER_COLOR"]
      212 GETIMPORT                        R3 K10 [Color3.fromRGB]
      214 LOADN                            R4 11
      215 LOADN                            R5 90
      216 LOADN                            R6 175
      217 CALL                             R3 3 1
      218 SETTABLEKS                       R3 R2 K35 ["DARK_WIDGET_SELECTED_COLOR"]
      220 GETIMPORT                        R3 K10 [Color3.fromRGB]
      222 LOADN                            R4 66
      223 LOADN                            R5 66
      224 LOADN                            R6 66
      225 CALL                             R3 3 1
      226 SETTABLEKS                       R3 R2 K36 ["DARK_WIDGET_HOVER_COLOR"]
      228 GETIMPORT                        R3 K10 [Color3.fromRGB]
      230 LOADN                            R4 58
      231 LOADN                            R5 58
      232 LOADN                            R6 58
      233 CALL                             R3 3 1
      234 SETTABLEKS                       R3 R2 K37 ["DARK_GREY_BUTTON_DEFAULT_COLOR"]
      236 GETIMPORT                        R3 K10 [Color3.fromRGB]
      238 LOADN                            R4 82
      239 LOADN                            R5 168
      240 LOADN                            R6 70
      241 CALL                             R3 3 1
      242 SETTABLEKS                       R3 R2 K38 ["VOTING_GREEN"]
      244 GETIMPORT                        R3 K10 [Color3.fromRGB]
      246 LOADN                            R4 206
      247 LOADN                            R5 100
      248 LOADN                            R6 91
      249 CALL                             R3 3 1
      250 SETTABLEKS                       R3 R2 K39 ["VOTING_RED"]
      252 GETIMPORT                        R3 K41 [Color3.new]
      254 LOADN                            R4 0
      255 LOADK                            R5 K42 [0.7]
      256 LOADN                            R6 0
      257 CALL                             R3 3 1
      258 SETTABLEKS                       R3 R2 K43 ["INSTALL_GREEN"]
      260 GETIMPORT                        R3 K41 [Color3.new]
      262 LOADK                            R4 K44 [0.9]
      263 LOADN                            R5 0
      264 LOADN                            R6 0
      265 CALL                             R3 3 1
      266 SETTABLEKS                       R3 R2 K45 ["INSTALL_RED"]
      268 GETIMPORT                        R3 K10 [Color3.fromRGB]
      270 LOADN                            R4 60
      271 LOADN                            R5 60
      272 LOADN                            R6 60
      273 CALL                             R3 3 1
      274 SETTABLEKS                       R3 R2 K46 ["BUTTON_CTA_BG_DISABLED_DARK"]
      276 GETIMPORT                        R3 K10 [Color3.fromRGB]
      278 LOADN                            R4 244
      279 LOADN                            R5 100
      280 LOADN                            R6 93
      281 CALL                             R3 3 1
      282 SETTABLEKS                       R3 R2 K47 ["WARNING_TEXT_COLOR"]
      284 MOVE                             R3 R1
      285 MOVE                             R4 R2
      286 LOADK                            R5 K48 ["Colors"]
      287 CALL                             R3 2 -1
      288 RETURN                           R3 -1
