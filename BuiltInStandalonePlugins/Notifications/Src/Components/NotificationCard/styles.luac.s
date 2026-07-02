MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["PluginStyles"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["TraySize"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K7 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Util"]
       42 GETTABLEKS                       R5 R5 K12 ["TextUtils"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K7 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Util"]
       51 GETTABLEKS                       R6 R6 K13 ["LocalizationInstance"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K7 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K14 ["TimeConstants"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R1 K15 ["Styling"]
       65 GETTABLEKS                       R7 R7 K16 ["createStyleRule"]
       67 GETTABLEKS                       R8 R6 K17 ["LOCALE_SCOPE_LONG"]
       69 GETTABLEKS                       R9 R6 K18 ["LOCALE_SCOPE"]
       71 LOADK                            R12 K19 ["FontPrimary"]
       72 NAMECALL                         R10 R2 K20 ["GetAttribute"]
       74 CALL                             R10 2 1
       75 GETTABLEKS                       R12 R3 K22 ["TRAY_WIDTH"]
       77 ADDK                             R11 R12 K21 [2]
       78 LOADK                            R14 K23 ["Margin"]
       79 NAMECALL                         R12 R2 K20 ["GetAttribute"]
       81 CALL                             R12 2 1
       82 GETTABLEKS                       R12 R12 K24 ["Offset"]
       84 LOADK                            R15 K25 ["MarginSmall"]
       85 NAMECALL                         R13 R2 K20 ["GetAttribute"]
       87 CALL                             R13 2 1
       88 GETTABLEKS                       R13 R13 K24 ["Offset"]
       90 LOADK                            R16 K26 ["ScrollBarGutter"]
       91 NAMECALL                         R14 R2 K20 ["GetAttribute"]
       93 CALL                             R14 2 1
       94 LOADK                            R17 K27 ["CardIconSize"]
       95 NAMECALL                         R15 R2 K20 ["GetAttribute"]
       97 CALL                             R15 2 1
       98 GETTABLEKS                       R15 R15 K28 ["Width"]
      100 GETTABLEKS                       R15 R15 K24 ["Offset"]
      102 LOADK                            R18 K29 ["CardIconTextMargin"]
      103 NAMECALL                         R16 R2 K20 ["GetAttribute"]
      105 CALL                             R16 2 1
      106 GETTABLEKS                       R16 R16 K24 ["Offset"]
      108 LOADK                            R19 K30 ["CardStatusMinWidth"]
      109 NAMECALL                         R17 R2 K20 ["GetAttribute"]
      111 CALL                             R17 2 1
      112 LOADK                            R20 K31 ["CardStatusIndicatorSize"]
      113 NAMECALL                         R18 R2 K20 ["GetAttribute"]
      115 CALL                             R18 2 1
      116 GETTABLEKS                       R18 R18 K28 ["Width"]
      118 GETTABLEKS                       R18 R18 K24 ["Offset"]
      120 LOADK                            R21 K32 ["CardElapsedTimeTextSize"]
      121 NAMECALL                         R19 R2 K20 ["GetAttribute"]
      123 CALL                             R19 2 1
      124 LOADK                            R22 K33 ["CardSubjectTextSize"]
      125 NAMECALL                         R20 R2 K20 ["GetAttribute"]
      127 CALL                             R20 2 1
      128 SUB                              R22 R20 R19
      129 DIVK                             R21 R22 K21 [2]
      130 LOADN                            R22 0
      131 JUMPIFNOTLT                      R21 R22 ; [+2]
      133 LOADN                            R21 0
      134 LOADN                            R22 0
      135 GETIMPORT                        R23 K35 [pcall]
      137 MOVE                             R24 R5
      138 CALL                             R23 1 2
      139 JUMPIFNOT                        R23 ; [+39]
      140 GETTABLEKS                       R25 R4 K36 ["maxTextWidth"]
      142 NEWTABLE                         R26 0 5
      144 MOVE                             R29 R8
      145 LOADK                            R30 K37 ["Now"]
      146 NAMECALL                         R27 R24 K38 ["getText"]
      148 CALL                             R27 3 1
      149 MOVE                             R30 R9
      150 LOADK                            R31 K39 ["Minutes"]
      151 DUPTABLE                         R32 K42 [{["minutes"] = "88"}]
      152 NAMECALL                         R28 R24 K38 ["getText"]
      154 CALL                             R28 4 1
      155 MOVE                             R31 R9
      156 LOADK                            R32 K43 ["Hours"]
      157 DUPTABLE                         R33 K45 [{["hours"] = "88"}]
      158 NAMECALL                         R29 R24 K38 ["getText"]
      160 CALL                             R29 4 1
      161 MOVE                             R32 R9
      162 LOADK                            R33 K46 ["Days"]
      163 DUPTABLE                         R34 K48 [{["days"] = "88"}]
      164 NAMECALL                         R30 R24 K38 ["getText"]
      166 CALL                             R30 4 1
      167 MOVE                             R33 R9
      168 LOADK                            R34 K49 ["Weeks"]
      169 DUPTABLE                         R35 K51 [{["weeks"] = "88"}]
      170 NAMECALL                         R31 R24 K38 ["getText"]
      172 CALL                             R31 4 -1
      173 SETLIST                          R26 R27 -1 [1]
      175 MOVE                             R27 R19
      176 MOVE                             R28 R10
      177 CALL                             R25 3 1
      178 MOVE                             R22 R25
      179 ADD                              R28 R13 R18
      180 ADD                              R27 R28 R22
      181 FASTCALL2                        MATH_MAX R17 R27 ; [+4]
      183 MOVE                             R26 R17
      184 GETIMPORT                        R25 K54 [math.max]
      186 CALL                             R25 2 1
      187 SUB                              R27 R11 R12
      188 SUB                              R26 R27 R14
      189 LOADN                            R31 4
      190 MUL                              R30 R31 R12
      191 SUB                              R29 R26 R30
      192 SUB                              R28 R29 R15
      193 SUB                              R27 R28 R25
      194 MOVE                             R28 R7
      195 LOADK                            R29 K55 [".Component-InnerNotificationCard"]
      196 DUPTABLE                         R30 K62 [{["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"]}]
      197 GETIMPORT                        R31 K65 [UDim2.new]
      199 LOADN                            R32 0
      200 MOVE                             R33 R26
      201 LOADN                            R34 0
      202 LOADN                            R35 0
      203 CALL                             R31 4 1
      204 SETTABLEKS                       R31 R30 K60 ["Size"]
      206 GETIMPORT                        R31 K68 [Enum.AutomaticSize.Y]
      208 SETTABLEKS                       R31 R30 K61 ["AutomaticSize"]
      210 NEWTABLE                         R31 0 1
      212 MOVE                             R32 R7
      213 LOADK                            R33 K69 ["> #InnerCard"]
      214 DUPTABLE                         R34 K72 [{["Size"], ["TextTransparency"] = 1}]
      215 GETIMPORT                        R35 K74 [UDim2.fromScale]
      217 LOADN                            R36 1
      218 LOADN                            R37 1
      219 CALL                             R35 2 1
      220 SETTABLEKS                       R35 R34 K60 ["Size"]
      222 NEWTABLE                         R35 0 7
      224 MOVE                             R36 R7
      225 LOADK                            R37 K75 ["::UIPadding"]
      226 DUPTABLE                         R38 K81 [{["PaddingLeft"] = "$Margin", ["PaddingRight"] = "$Margin", ["PaddingTop"] = "$Margin", ["PaddingBottom"] = "$Margin"}]
      227 CALL                             R36 2 1
      228 MOVE                             R37 R7
      229 LOADK                            R38 K82 ["::UIListLayout"]
      230 DUPTABLE                         R39 K86 [{["FillDirection"], ["SortOrder"], ["Padding"] = "$Margin"}]
      231 GETIMPORT                        R40 K88 [Enum.FillDirection.Horizontal]
      233 SETTABLEKS                       R40 R39 K83 ["FillDirection"]
      235 GETIMPORT                        R40 K90 [Enum.SortOrder.LayoutOrder]
      237 SETTABLEKS                       R40 R39 K84 ["SortOrder"]
      239 CALL                             R37 2 1
      240 MOVE                             R38 R7
      241 LOADK                            R39 K91 ["::UICorner"]
      242 DUPTABLE                         R40 K94 [{["CornerRadius"] = "$CardBorderRadius"}]
      243 CALL                             R38 2 1
      244 MOVE                             R39 R7
      245 LOADK                            R40 K95 ["> .Component-NotificationCard-User"]
      246 NEWTABLE                         R41 0 0
      248 NEWTABLE                         R42 0 1
      250 MOVE                             R43 R7
      251 LOADK                            R44 K91 ["::UICorner"]
      252 DUPTABLE                         R45 K96 [{"CornerRadius"}]
      253 GETIMPORT                        R46 K98 [UDim.new]
      255 LOADN                            R47 1
      256 LOADN                            R48 0
      257 CALL                             R46 2 1
      258 SETTABLEKS                       R46 R45 K92 ["CornerRadius"]
      260 CALL                             R43 2 -1
      261 SETLIST                          R42 R43 -1 [1]
      263 CALL                             R39 3 1
      264 MOVE                             R40 R7
      265 LOADK                            R41 K99 ["> #Icon"]
      266 DUPTABLE                         R42 K102 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"] = "$CardIconSize"}]
      267 CALL                             R40 2 1
      268 MOVE                             R41 R7
      269 LOADK                            R42 K103 ["> #Content"]
      270 DUPTABLE                         R43 K104 [{["BackgroundTransparency"] = 1, ["Size"]}]
      271 GETIMPORT                        R44 K65 [UDim2.new]
      273 LOADN                            R45 0
      274 MOVE                             R46 R27
      275 LOADN                            R47 0
      276 LOADN                            R48 0
      277 CALL                             R44 4 1
      278 SETTABLEKS                       R44 R43 K60 ["Size"]
      280 NEWTABLE                         R44 0 1
      282 MOVE                             R45 R7
      283 LOADK                            R46 K75 ["::UIPadding"]
      284 DUPTABLE                         R47 K105 [{"PaddingLeft"}]
      285 GETIMPORT                        R48 K98 [UDim.new]
      287 LOADN                            R49 0
      288 SUB                              R50 R16 R12
      289 CALL                             R48 2 1
      290 SETTABLEKS                       R48 R47 K76 ["PaddingLeft"]
      292 CALL                             R45 2 -1
      293 SETLIST                          R44 R45 -1 [1]
      295 CALL                             R41 3 1
      296 MOVE                             R42 R7
      297 LOADK                            R43 K106 ["> #Status"]
      298 DUPTABLE                         R44 K107 [{["Size"], ["BackgroundTransparency"] = 1}]
      299 GETIMPORT                        R45 K65 [UDim2.new]
      301 LOADN                            R46 0
      302 MOVE                             R47 R25
      303 LOADN                            R48 1
      304 LOADN                            R49 0
      305 CALL                             R45 4 1
      306 SETTABLEKS                       R45 R44 K60 ["Size"]
      308 CALL                             R42 2 -1
      309 SETLIST                          R35 R36 -1 [1]
      311 CALL                             R32 3 -1
      312 SETLIST                          R31 R32 -1 [1]
      314 CALL                             R28 3 -1
      315 RETURN                           R28 -1
