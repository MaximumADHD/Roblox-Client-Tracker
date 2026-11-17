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
      135 MOVE                             R24 R5
      136 FASTPCALL                        pcall 1 ; [+2]
      137 GETIMPORT                        R23 K35 [pcall]
      139 CALL                             R23 1 2
      140 JUMPIFNOT                        R23 ; [+39]
      141 GETTABLEKS                       R25 R4 K36 ["maxTextWidth"]
      143 NEWTABLE                         R26 0 5
      145 MOVE                             R29 R8
      146 LOADK                            R30 K37 ["Now"]
      147 NAMECALL                         R27 R24 K38 ["getText"]
      149 CALL                             R27 3 1
      150 MOVE                             R30 R9
      151 LOADK                            R31 K39 ["Minutes"]
      152 DUPTABLE                         R32 K42 [{["minutes"] = "88"}]
      153 NAMECALL                         R28 R24 K38 ["getText"]
      155 CALL                             R28 4 1
      156 MOVE                             R31 R9
      157 LOADK                            R32 K43 ["Hours"]
      158 DUPTABLE                         R33 K45 [{["hours"] = "88"}]
      159 NAMECALL                         R29 R24 K38 ["getText"]
      161 CALL                             R29 4 1
      162 MOVE                             R32 R9
      163 LOADK                            R33 K46 ["Days"]
      164 DUPTABLE                         R34 K48 [{["days"] = "88"}]
      165 NAMECALL                         R30 R24 K38 ["getText"]
      167 CALL                             R30 4 1
      168 MOVE                             R33 R9
      169 LOADK                            R34 K49 ["Weeks"]
      170 DUPTABLE                         R35 K51 [{["weeks"] = "88"}]
      171 NAMECALL                         R31 R24 K38 ["getText"]
      173 CALL                             R31 4 -1
      174 SETLIST                          R26 R27 -1 [1]
      176 MOVE                             R27 R19
      177 MOVE                             R28 R10
      178 CALL                             R25 3 1
      179 MOVE                             R22 R25
      180 ADD                              R28 R13 R18
      181 ADD                              R27 R28 R22
      182 FASTCALL2                        MATH_MAX R17 R27 ; [+4]
      184 MOVE                             R26 R17
      185 GETIMPORT                        R25 K54 [math.max]
      187 CALL                             R25 2 1
      188 SUB                              R27 R11 R12
      189 SUB                              R26 R27 R14
      190 LOADN                            R31 4
      191 MUL                              R30 R31 R12
      192 SUB                              R29 R26 R30
      193 SUB                              R28 R29 R15
      194 SUB                              R27 R28 R25
      195 MOVE                             R28 R7
      196 LOADK                            R29 K55 [".Component-InnerNotificationCard"]
      197 DUPTABLE                         R30 K62 [{["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"]}]
      198 GETIMPORT                        R31 K65 [UDim2.new]
      200 LOADN                            R32 0
      201 MOVE                             R33 R26
      202 LOADN                            R34 0
      203 LOADN                            R35 0
      204 CALL                             R31 4 1
      205 SETTABLEKS                       R31 R30 K60 ["Size"]
      207 GETIMPORT                        R31 K68 [Enum.AutomaticSize.Y]
      209 SETTABLEKS                       R31 R30 K61 ["AutomaticSize"]
      211 NEWTABLE                         R31 0 1
      213 MOVE                             R32 R7
      214 LOADK                            R33 K69 ["> #InnerCard"]
      215 DUPTABLE                         R34 K72 [{["Size"], ["TextTransparency"] = 1}]
      216 GETIMPORT                        R35 K74 [UDim2.fromScale]
      218 LOADN                            R36 1
      219 LOADN                            R37 1
      220 CALL                             R35 2 1
      221 SETTABLEKS                       R35 R34 K60 ["Size"]
      223 NEWTABLE                         R35 0 7
      225 MOVE                             R36 R7
      226 LOADK                            R37 K75 ["::UIPadding"]
      227 DUPTABLE                         R38 K81 [{["PaddingLeft"] = "$Margin", ["PaddingRight"] = "$Margin", ["PaddingTop"] = "$Margin", ["PaddingBottom"] = "$Margin"}]
      228 CALL                             R36 2 1
      229 MOVE                             R37 R7
      230 LOADK                            R38 K82 ["::UIListLayout"]
      231 DUPTABLE                         R39 K86 [{["FillDirection"], ["SortOrder"], ["Padding"] = "$Margin"}]
      232 GETIMPORT                        R40 K88 [Enum.FillDirection.Horizontal]
      234 SETTABLEKS                       R40 R39 K83 ["FillDirection"]
      236 GETIMPORT                        R40 K90 [Enum.SortOrder.LayoutOrder]
      238 SETTABLEKS                       R40 R39 K84 ["SortOrder"]
      240 CALL                             R37 2 1
      241 MOVE                             R38 R7
      242 LOADK                            R39 K91 ["::UICorner"]
      243 DUPTABLE                         R40 K94 [{["CornerRadius"] = "$CardBorderRadius"}]
      244 CALL                             R38 2 1
      245 MOVE                             R39 R7
      246 LOADK                            R40 K95 ["> .Component-NotificationCard-User"]
      247 NEWTABLE                         R41 0 0
      249 NEWTABLE                         R42 0 1
      251 MOVE                             R43 R7
      252 LOADK                            R44 K91 ["::UICorner"]
      253 DUPTABLE                         R45 K96 [{"CornerRadius"}]
      254 GETIMPORT                        R46 K98 [UDim.new]
      256 LOADN                            R47 1
      257 LOADN                            R48 0
      258 CALL                             R46 2 1
      259 SETTABLEKS                       R46 R45 K92 ["CornerRadius"]
      261 CALL                             R43 2 -1
      262 SETLIST                          R42 R43 -1 [1]
      264 CALL                             R39 3 1
      265 MOVE                             R40 R7
      266 LOADK                            R41 K99 ["> #Icon"]
      267 DUPTABLE                         R42 K102 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"] = "$CardIconSize"}]
      268 CALL                             R40 2 1
      269 MOVE                             R41 R7
      270 LOADK                            R42 K103 ["> #Content"]
      271 DUPTABLE                         R43 K104 [{["BackgroundTransparency"] = 1, ["Size"]}]
      272 GETIMPORT                        R44 K65 [UDim2.new]
      274 LOADN                            R45 0
      275 MOVE                             R46 R27
      276 LOADN                            R47 0
      277 LOADN                            R48 0
      278 CALL                             R44 4 1
      279 SETTABLEKS                       R44 R43 K60 ["Size"]
      281 NEWTABLE                         R44 0 1
      283 MOVE                             R45 R7
      284 LOADK                            R46 K75 ["::UIPadding"]
      285 DUPTABLE                         R47 K105 [{"PaddingLeft"}]
      286 GETIMPORT                        R48 K98 [UDim.new]
      288 LOADN                            R49 0
      289 SUB                              R50 R16 R12
      290 CALL                             R48 2 1
      291 SETTABLEKS                       R48 R47 K76 ["PaddingLeft"]
      293 CALL                             R45 2 -1
      294 SETLIST                          R44 R45 -1 [1]
      296 CALL                             R41 3 1
      297 MOVE                             R42 R7
      298 LOADK                            R43 K106 ["> #Status"]
      299 DUPTABLE                         R44 K107 [{["Size"], ["BackgroundTransparency"] = 1}]
      300 GETIMPORT                        R45 K65 [UDim2.new]
      302 LOADN                            R46 0
      303 MOVE                             R47 R25
      304 LOADN                            R48 1
      305 LOADN                            R49 0
      306 CALL                             R45 4 1
      307 SETTABLEKS                       R45 R44 K60 ["Size"]
      309 CALL                             R42 2 -1
      310 SETLIST                          R35 R36 -1 [1]
      312 CALL                             R32 3 -1
      313 SETLIST                          R31 R32 -1 [1]
      315 CALL                             R28 3 -1
      316 RETURN                           R28 -1
