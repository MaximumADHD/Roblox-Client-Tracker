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
      139 JUMPIFNOT                        R23 ; [+51]
      140 GETTABLEKS                       R25 R4 K36 ["maxTextWidth"]
      142 NEWTABLE                         R26 0 5
      144 MOVE                             R29 R8
      145 LOADK                            R30 K37 ["Now"]
      146 NAMECALL                         R27 R24 K38 ["getText"]
      148 CALL                             R27 3 1
      149 MOVE                             R30 R9
      150 LOADK                            R31 K39 ["Minutes"]
      151 DUPTABLE                         R32 K41 [{"minutes"}]
      152 LOADK                            R33 K42 ["88"]
      153 SETTABLEKS                       R33 R32 K40 ["minutes"]
      155 NAMECALL                         R28 R24 K38 ["getText"]
      157 CALL                             R28 4 1
      158 MOVE                             R31 R9
      159 LOADK                            R32 K43 ["Hours"]
      160 DUPTABLE                         R33 K45 [{"hours"}]
      161 LOADK                            R34 K42 ["88"]
      162 SETTABLEKS                       R34 R33 K44 ["hours"]
      164 NAMECALL                         R29 R24 K38 ["getText"]
      166 CALL                             R29 4 1
      167 MOVE                             R32 R9
      168 LOADK                            R33 K46 ["Days"]
      169 DUPTABLE                         R34 K48 [{"days"}]
      170 LOADK                            R35 K42 ["88"]
      171 SETTABLEKS                       R35 R34 K47 ["days"]
      173 NAMECALL                         R30 R24 K38 ["getText"]
      175 CALL                             R30 4 1
      176 MOVE                             R33 R9
      177 LOADK                            R34 K49 ["Weeks"]
      178 DUPTABLE                         R35 K51 [{"weeks"}]
      179 LOADK                            R36 K42 ["88"]
      180 SETTABLEKS                       R36 R35 K50 ["weeks"]
      182 NAMECALL                         R31 R24 K38 ["getText"]
      184 CALL                             R31 4 -1
      185 SETLIST                          R26 R27 -1 [1]
      187 MOVE                             R27 R19
      188 MOVE                             R28 R10
      189 CALL                             R25 3 1
      190 MOVE                             R22 R25
      191 ADD                              R28 R13 R18
      192 ADD                              R27 R28 R22
      193 FASTCALL2                        MATH_MAX R17 R27 ; [+4]
      195 MOVE                             R26 R17
      196 GETIMPORT                        R25 K54 [math.max]
      198 CALL                             R25 2 1
      199 SUB                              R27 R11 R12
      200 SUB                              R26 R27 R14
      201 LOADN                            R31 4
      202 MUL                              R30 R31 R12
      203 SUB                              R29 R26 R30
      204 SUB                              R28 R29 R15
      205 SUB                              R27 R28 R25
      206 MOVE                             R28 R7
      207 LOADK                            R29 K55 [".Component-InnerNotificationCard"]
      208 DUPTABLE                         R30 K60 [{"BackgroundColor3", "BorderSizePixel", "Size", "AutomaticSize"}]
      209 LOADK                            R31 K61 ["$BackgroundPaper"]
      210 SETTABLEKS                       R31 R30 K56 ["BackgroundColor3"]
      212 LOADN                            R31 0
      213 SETTABLEKS                       R31 R30 K57 ["BorderSizePixel"]
      215 GETIMPORT                        R31 K64 [UDim2.new]
      217 LOADN                            R32 0
      218 MOVE                             R33 R26
      219 LOADN                            R34 0
      220 LOADN                            R35 0
      221 CALL                             R31 4 1
      222 SETTABLEKS                       R31 R30 K58 ["Size"]
      224 GETIMPORT                        R31 K67 [Enum.AutomaticSize.Y]
      226 SETTABLEKS                       R31 R30 K59 ["AutomaticSize"]
      228 NEWTABLE                         R31 0 1
      230 MOVE                             R32 R7
      231 LOADK                            R33 K68 ["> #InnerCard"]
      232 DUPTABLE                         R34 K70 [{"Size", "TextTransparency"}]
      233 GETIMPORT                        R35 K72 [UDim2.fromScale]
      235 LOADN                            R36 1
      236 LOADN                            R37 1
      237 CALL                             R35 2 1
      238 SETTABLEKS                       R35 R34 K58 ["Size"]
      240 LOADN                            R35 1
      241 SETTABLEKS                       R35 R34 K69 ["TextTransparency"]
      243 NEWTABLE                         R35 0 7
      245 MOVE                             R36 R7
      246 LOADK                            R37 K73 ["::UIPadding"]
      247 DUPTABLE                         R38 K78 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      248 LOADK                            R39 K79 ["$Margin"]
      249 SETTABLEKS                       R39 R38 K74 ["PaddingLeft"]
      251 LOADK                            R39 K79 ["$Margin"]
      252 SETTABLEKS                       R39 R38 K75 ["PaddingRight"]
      254 LOADK                            R39 K79 ["$Margin"]
      255 SETTABLEKS                       R39 R38 K76 ["PaddingTop"]
      257 LOADK                            R39 K79 ["$Margin"]
      258 SETTABLEKS                       R39 R38 K77 ["PaddingBottom"]
      260 CALL                             R36 2 1
      261 MOVE                             R37 R7
      262 LOADK                            R38 K80 ["::UIListLayout"]
      263 DUPTABLE                         R39 K84 [{"FillDirection", "SortOrder", "Padding"}]
      264 GETIMPORT                        R40 K86 [Enum.FillDirection.Horizontal]
      266 SETTABLEKS                       R40 R39 K81 ["FillDirection"]
      268 GETIMPORT                        R40 K88 [Enum.SortOrder.LayoutOrder]
      270 SETTABLEKS                       R40 R39 K82 ["SortOrder"]
      272 LOADK                            R40 K79 ["$Margin"]
      273 SETTABLEKS                       R40 R39 K83 ["Padding"]
      275 CALL                             R37 2 1
      276 MOVE                             R38 R7
      277 LOADK                            R39 K89 ["::UICorner"]
      278 DUPTABLE                         R40 K91 [{"CornerRadius"}]
      279 LOADK                            R41 K92 ["$CardBorderRadius"]
      280 SETTABLEKS                       R41 R40 K90 ["CornerRadius"]
      282 CALL                             R38 2 1
      283 MOVE                             R39 R7
      284 LOADK                            R40 K93 ["> .Component-NotificationCard-User"]
      285 NEWTABLE                         R41 0 0
      287 NEWTABLE                         R42 0 1
      289 MOVE                             R43 R7
      290 LOADK                            R44 K89 ["::UICorner"]
      291 DUPTABLE                         R45 K91 [{"CornerRadius"}]
      292 GETIMPORT                        R46 K95 [UDim.new]
      294 LOADN                            R47 1
      295 LOADN                            R48 0
      296 CALL                             R46 2 1
      297 SETTABLEKS                       R46 R45 K90 ["CornerRadius"]
      299 CALL                             R43 2 -1
      300 SETLIST                          R42 R43 -1 [1]
      302 CALL                             R39 3 1
      303 MOVE                             R40 R7
      304 LOADK                            R41 K96 ["> #Icon"]
      305 DUPTABLE                         R42 K98 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
      306 LOADN                            R43 1
      307 SETTABLEKS                       R43 R42 K97 ["BackgroundTransparency"]
      309 LOADN                            R43 0
      310 SETTABLEKS                       R43 R42 K57 ["BorderSizePixel"]
      312 LOADK                            R43 K99 ["$CardIconSize"]
      313 SETTABLEKS                       R43 R42 K58 ["Size"]
      315 CALL                             R40 2 1
      316 MOVE                             R41 R7
      317 LOADK                            R42 K100 ["> #Content"]
      318 DUPTABLE                         R43 K101 [{"BackgroundTransparency", "Size"}]
      319 LOADN                            R44 1
      320 SETTABLEKS                       R44 R43 K97 ["BackgroundTransparency"]
      322 GETIMPORT                        R44 K64 [UDim2.new]
      324 LOADN                            R45 0
      325 MOVE                             R46 R27
      326 LOADN                            R47 0
      327 LOADN                            R48 0
      328 CALL                             R44 4 1
      329 SETTABLEKS                       R44 R43 K58 ["Size"]
      331 NEWTABLE                         R44 0 1
      333 MOVE                             R45 R7
      334 LOADK                            R46 K73 ["::UIPadding"]
      335 DUPTABLE                         R47 K102 [{"PaddingLeft"}]
      336 GETIMPORT                        R48 K95 [UDim.new]
      338 LOADN                            R49 0
      339 SUB                              R50 R16 R12
      340 CALL                             R48 2 1
      341 SETTABLEKS                       R48 R47 K74 ["PaddingLeft"]
      343 CALL                             R45 2 -1
      344 SETLIST                          R44 R45 -1 [1]
      346 CALL                             R41 3 1
      347 MOVE                             R42 R7
      348 LOADK                            R43 K103 ["> #Status"]
      349 DUPTABLE                         R44 K104 [{"Size", "BackgroundTransparency"}]
      350 GETIMPORT                        R45 K64 [UDim2.new]
      352 LOADN                            R46 0
      353 MOVE                             R47 R25
      354 LOADN                            R48 1
      355 LOADN                            R49 0
      356 CALL                             R45 4 1
      357 SETTABLEKS                       R45 R44 K58 ["Size"]
      359 LOADN                            R45 1
      360 SETTABLEKS                       R45 R44 K97 ["BackgroundTransparency"]
      362 CALL                             R42 2 -1
      363 SETLIST                          R35 R36 -1 [1]
      365 CALL                             R32 3 -1
      366 SETLIST                          R31 R32 -1 [1]
      368 CALL                             R28 3 -1
      369 RETURN                           R28 -1
