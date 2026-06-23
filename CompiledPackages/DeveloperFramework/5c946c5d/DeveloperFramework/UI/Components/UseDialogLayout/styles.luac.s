MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-UseDialogLayout"]
       18 DUPTABLE                         R4 K12 [{"BackgroundColor3", "BorderSizePixel"}]
       19 LOADK                            R5 K13 ["$ForegroundMain"]
       20 SETTABLEKS                       R5 R4 K10 ["BackgroundColor3"]
       22 LOADN                            R5 0
       23 SETTABLEKS                       R5 R4 K11 ["BorderSizePixel"]
       25 NEWTABLE                         R5 0 10
       27 MOVE                             R6 R1
       28 LOADK                            R7 K14 ["> UIListLayout"]
       29 DUPTABLE                         R8 K16 [{"Padding"}]
       30 LOADK                            R9 K17 ["$IconToContentPadding"]
       31 SETTABLEKS                       R9 R8 K15 ["Padding"]
       33 CALL                             R6 2 1
       34 MOVE                             R7 R1
       35 LOADK                            R8 K18 ["::UIPadding"]
       36 DUPTABLE                         R9 K23 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       37 LOADK                            R10 K24 ["$DialogPadding"]
       38 SETTABLEKS                       R10 R9 K19 ["PaddingBottom"]
       40 LOADK                            R10 K24 ["$DialogPadding"]
       41 SETTABLEKS                       R10 R9 K20 ["PaddingLeft"]
       43 LOADK                            R10 K24 ["$DialogPadding"]
       44 SETTABLEKS                       R10 R9 K21 ["PaddingRight"]
       46 LOADK                            R10 K24 ["$DialogPadding"]
       47 SETTABLEKS                       R10 R9 K22 ["PaddingTop"]
       49 CALL                             R7 2 1
       50 MOVE                             R8 R1
       51 LOADK                            R9 K25 ["> #Icon"]
       52 DUPTABLE                         R10 K28 [{"BackgroundTransparency", "Size"}]
       53 LOADN                            R11 1
       54 SETTABLEKS                       R11 R10 K26 ["BackgroundTransparency"]
       56 LOADK                            R11 K29 ["$IconSize"]
       57 SETTABLEKS                       R11 R10 K27 ["Size"]
       59 CALL                             R8 2 1
       60 MOVE                             R9 R1
       61 LOADK                            R10 K30 [".Confirmation > #Icon"]
       62 DUPTABLE                         R11 K32 [{"Image"}]
       63 LOADK                            R12 K33 ["$SuccessLargeImage"]
       64 SETTABLEKS                       R12 R11 K31 ["Image"]
       66 CALL                             R9 2 1
       67 MOVE                             R10 R1
       68 LOADK                            R11 K34 [".Destructive > #Icon, .Warning > #Icon"]
       69 DUPTABLE                         R12 K32 [{"Image"}]
       70 LOADK                            R13 K35 ["$WarningLargeImage"]
       71 SETTABLEKS                       R13 R12 K31 ["Image"]
       73 CALL                             R10 2 1
       74 MOVE                             R11 R1
       75 LOADK                            R12 K36 [".Error > #Icon"]
       76 DUPTABLE                         R13 K32 [{"Image"}]
       77 LOADK                            R14 K37 ["$ErrorLargeImage"]
       78 SETTABLEKS                       R14 R13 K31 ["Image"]
       80 CALL                             R11 2 1
       81 MOVE                             R12 R1
       82 LOADK                            R13 K38 [".Information > #Icon"]
       83 DUPTABLE                         R14 K32 [{"Image"}]
       84 LOADK                            R15 K39 ["$InformationLargeImage"]
       85 SETTABLEKS                       R15 R14 K31 ["Image"]
       87 CALL                             R12 2 1
       88 MOVE                             R13 R1
       89 LOADK                            R14 K40 [".Question > #Icon"]
       90 DUPTABLE                         R15 K32 [{"Image"}]
       91 LOADK                            R16 K41 ["$QuestionLargeImage"]
       92 SETTABLEKS                       R16 R15 K31 ["Image"]
       94 CALL                             R13 2 1
       95 MOVE                             R14 R1
       96 LOADK                            R15 K42 ["> #Content"]
       97 DUPTABLE                         R16 K43 [{"BackgroundTransparency"}]
       98 LOADN                            R17 1
       99 SETTABLEKS                       R17 R16 K26 ["BackgroundTransparency"]
      101 NEWTABLE                         R17 0 4
      103 MOVE                             R18 R1
      104 LOADK                            R19 K44 ["> UIListLayout, > #Children > UIListLayout"]
      105 DUPTABLE                         R20 K16 [{"Padding"}]
      106 LOADK                            R21 K45 ["$TextToButtonsPadding"]
      107 SETTABLEKS                       R21 R20 K15 ["Padding"]
      109 CALL                             R18 2 1
      110 MOVE                             R19 R1
      111 LOADK                            R20 K46 ["> #Text > UIListLayout"]
      112 DUPTABLE                         R21 K16 [{"Padding"}]
      113 LOADK                            R22 K47 ["$HeadingToBodyPadding"]
      114 SETTABLEKS                       R22 R21 K15 ["Padding"]
      116 CALL                             R19 2 1
      117 MOVE                             R20 R1
      118 LOADK                            R21 K48 ["> #Text, > #Children"]
      119 DUPTABLE                         R22 K43 [{"BackgroundTransparency"}]
      120 LOADN                            R23 1
      121 SETTABLEKS                       R23 R22 K26 ["BackgroundTransparency"]
      123 NEWTABLE                         R23 0 1
      125 MOVE                             R24 R1
      126 LOADK                            R25 K49 [">> TextLabel"]
      127 DUPTABLE                         R26 K56 [{"BackgroundTransparency", "Font", "LineHeight", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
      128 LOADN                            R27 1
      129 SETTABLEKS                       R27 R26 K26 ["BackgroundTransparency"]
      131 LOADK                            R27 K57 ["$BodyFont"]
      132 SETTABLEKS                       R27 R26 K50 ["Font"]
      134 LOADK                            R27 K58 ["$TextLineHeight"]
      135 SETTABLEKS                       R27 R26 K51 ["LineHeight"]
      137 LOADK                            R27 K59 ["$TextPrimary"]
      138 SETTABLEKS                       R27 R26 K52 ["TextColor3"]
      140 LOADK                            R27 K60 ["$TextSize"]
      141 SETTABLEKS                       R27 R26 K53 ["TextSize"]
      143 LOADB                            R27 1
      144 SETTABLEKS                       R27 R26 K54 ["TextWrapped"]
      146 GETIMPORT                        R27 K63 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R27 R26 K55 ["TextXAlignment"]
      150 NEWTABLE                         R27 0 2
      152 MOVE                             R28 R1
      153 LOADK                            R29 K18 ["::UIPadding"]
      154 DUPTABLE                         R30 K64 [{"PaddingBottom", "PaddingTop"}]
      155 LOADK                            R31 K65 ["$TextVerticalPadding"]
      156 SETTABLEKS                       R31 R30 K19 ["PaddingBottom"]
      158 LOADK                            R31 K65 ["$TextVerticalPadding"]
      159 SETTABLEKS                       R31 R30 K22 ["PaddingTop"]
      161 CALL                             R28 2 1
      162 MOVE                             R29 R1
      163 LOADK                            R30 K66 ["#Heading"]
      164 DUPTABLE                         R31 K67 [{"Font"}]
      165 LOADK                            R32 K68 ["$HeadingFont"]
      166 SETTABLEKS                       R32 R31 K50 ["Font"]
      168 CALL                             R29 2 -1
      169 SETLIST                          R27 R28 -1 [1]
      171 CALL                             R24 3 -1
      172 SETLIST                          R23 R24 -1 [1]
      174 CALL                             R20 3 1
      175 MOVE                             R21 R1
      176 LOADK                            R22 K69 ["> #Buttons"]
      177 DUPTABLE                         R23 K43 [{"BackgroundTransparency"}]
      178 LOADN                            R24 1
      179 SETTABLEKS                       R24 R23 K26 ["BackgroundTransparency"]
      181 NEWTABLE                         R24 0 2
      183 MOVE                             R25 R1
      184 LOADK                            R26 K70 ["> #RightAnchoredButtons"]
      185 DUPTABLE                         R27 K43 [{"BackgroundTransparency"}]
      186 LOADN                            R28 1
      187 SETTABLEKS                       R28 R27 K26 ["BackgroundTransparency"]
      189 NEWTABLE                         R28 0 1
      191 MOVE                             R29 R1
      192 LOADK                            R30 K14 ["> UIListLayout"]
      193 DUPTABLE                         R31 K72 [{"HorizontalAlignment", "Padding"}]
      194 GETIMPORT                        R32 K74 [Enum.HorizontalAlignment.Right]
      196 SETTABLEKS                       R32 R31 K71 ["HorizontalAlignment"]
      198 LOADK                            R32 K75 ["$ButtonSpacing"]
      199 SETTABLEKS                       R32 R31 K15 ["Padding"]
      201 CALL                             R29 2 -1
      202 SETLIST                          R28 R29 -1 [1]
      204 CALL                             R25 3 1
      205 MOVE                             R26 R1
      206 LOADK                            R27 K76 ["> TextButton, > #RightAnchoredButtons > TextButton"]
      207 DUPTABLE                         R28 K78 [{"AutoButtonColor", "BorderSizePixel", "Font", "TextSize"}]
      208 LOADB                            R29 0
      209 SETTABLEKS                       R29 R28 K77 ["AutoButtonColor"]
      211 LOADN                            R29 0
      212 SETTABLEKS                       R29 R28 K11 ["BorderSizePixel"]
      214 LOADK                            R29 K79 ["$ButtonFont"]
      215 SETTABLEKS                       R29 R28 K50 ["Font"]
      217 LOADK                            R29 K60 ["$TextSize"]
      218 SETTABLEKS                       R29 R28 K53 ["TextSize"]
      220 NEWTABLE                         R29 0 4
      222 MOVE                             R30 R1
      223 LOADK                            R31 K18 ["::UIPadding"]
      224 DUPTABLE                         R32 K23 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      225 LOADK                            R33 K80 ["$ButtonVerticalPadding"]
      226 SETTABLEKS                       R33 R32 K19 ["PaddingBottom"]
      228 LOADK                            R33 K81 ["$ButtonHorizontalPadding"]
      229 SETTABLEKS                       R33 R32 K20 ["PaddingLeft"]
      231 LOADK                            R33 K81 ["$ButtonHorizontalPadding"]
      232 SETTABLEKS                       R33 R32 K21 ["PaddingRight"]
      234 LOADK                            R33 K80 ["$ButtonVerticalPadding"]
      235 SETTABLEKS                       R33 R32 K22 ["PaddingTop"]
      237 CALL                             R30 2 1
      238 MOVE                             R31 R1
      239 LOADK                            R32 K82 [".Primary"]
      240 DUPTABLE                         R33 K83 [{"BackgroundColor3", "TextColor3"}]
      241 LOADK                            R34 K84 ["$PrimaryMain"]
      242 SETTABLEKS                       R34 R33 K10 ["BackgroundColor3"]
      244 LOADK                            R34 K85 ["$TextContrast"]
      245 SETTABLEKS                       R34 R33 K52 ["TextColor3"]
      247 NEWTABLE                         R34 0 1
      249 MOVE                             R35 R1
      250 LOADK                            R36 K86 [".Enabled :hover"]
      251 DUPTABLE                         R37 K87 [{"BackgroundColor3"}]
      252 LOADK                            R38 K88 ["$PrimaryHoverBackground"]
      253 SETTABLEKS                       R38 R37 K10 ["BackgroundColor3"]
      255 CALL                             R35 2 -1
      256 SETLIST                          R34 R35 -1 [1]
      258 CALL                             R31 3 1
      259 MOVE                             R32 R1
      260 LOADK                            R33 K89 [".Secondary, .Tertiary"]
      261 DUPTABLE                         R34 K83 [{"BackgroundColor3", "TextColor3"}]
      262 LOADK                            R35 K90 ["$SecondaryMain"]
      263 SETTABLEKS                       R35 R34 K10 ["BackgroundColor3"]
      265 LOADK                            R35 K59 ["$TextPrimary"]
      266 SETTABLEKS                       R35 R34 K52 ["TextColor3"]
      268 NEWTABLE                         R35 0 2
      270 MOVE                             R36 R1
      271 LOADK                            R37 K91 ["::UIStroke"]
      272 DUPTABLE                         R38 K94 [{"ApplyStrokeMode", "Color"}]
      273 GETIMPORT                        R39 K96 [Enum.ApplyStrokeMode.Border]
      275 SETTABLEKS                       R39 R38 K92 ["ApplyStrokeMode"]
      277 LOADK                            R39 K97 ["$SecondaryRestingOutlineBorder"]
      278 SETTABLEKS                       R39 R38 K93 ["Color"]
      280 CALL                             R36 2 1
      281 MOVE                             R37 R1
      282 LOADK                            R38 K86 [".Enabled :hover"]
      283 DUPTABLE                         R39 K87 [{"BackgroundColor3"}]
      284 LOADK                            R40 K98 ["$SecondaryHoverBackground"]
      285 SETTABLEKS                       R40 R39 K10 ["BackgroundColor3"]
      287 NEWTABLE                         R40 0 1
      289 MOVE                             R41 R1
      290 LOADK                            R42 K99 ["> UIStroke"]
      291 DUPTABLE                         R43 K100 [{"Color"}]
      292 LOADK                            R44 K101 ["$SecondaryHoverOutlineBorder"]
      293 SETTABLEKS                       R44 R43 K93 ["Color"]
      295 CALL                             R41 2 -1
      296 SETLIST                          R40 R41 -1 [1]
      298 CALL                             R37 3 -1
      299 SETLIST                          R35 R36 -1 [1]
      301 CALL                             R32 3 1
      302 MOVE                             R33 R1
      303 LOADK                            R34 K102 [".Disabled"]
      304 DUPTABLE                         R35 K104 [{"BackgroundTransparency", "TextTransparency"}]
      305 LOADK                            R36 K105 [0.5]
      306 SETTABLEKS                       R36 R35 K26 ["BackgroundTransparency"]
      308 LOADK                            R36 K105 [0.5]
      309 SETTABLEKS                       R36 R35 K103 ["TextTransparency"]
      311 CALL                             R33 2 -1
      312 SETLIST                          R29 R30 -1 [1]
      314 CALL                             R26 3 -1
      315 SETLIST                          R24 R25 -1 [1]
      317 CALL                             R21 3 -1
      318 SETLIST                          R17 R18 -1 [1]
      320 CALL                             R14 3 1
      321 MOVE                             R15 R1
      322 LOADK                            R16 K106 [".Destructive > #Content > #Buttons > #RightAnchoredButtons > .Primary"]
      323 DUPTABLE                         R17 K87 [{"BackgroundColor3"}]
      324 LOADK                            R18 K107 ["$ErrorMain"]
      325 SETTABLEKS                       R18 R17 K10 ["BackgroundColor3"]
      327 CALL                             R15 2 -1
      328 SETLIST                          R5 R6 -1 [1]
      330 DUPTABLE                         R6 K122 [{"BodyFont", "ButtonFont", "ButtonHorizontalPadding", "ButtonSpacing", "ButtonVerticalPadding", "DialogPadding", "HeadingFont", "HeadingToBodyPadding", "IconSize", "IconToContentPadding", "MinimumDialogSize", "TextLineHeight", "TextSize", "TextToButtonsPadding", "TextVerticalPadding"}]
      331 GETIMPORT                        R7 K124 [Enum.Font.SourceSans]
      333 SETTABLEKS                       R7 R6 K108 ["BodyFont"]
      335 GETIMPORT                        R7 K124 [Enum.Font.SourceSans]
      337 SETTABLEKS                       R7 R6 K109 ["ButtonFont"]
      339 GETIMPORT                        R7 K127 [UDim.new]
      341 LOADN                            R8 0
      342 LOADN                            R9 16
      343 CALL                             R7 2 1
      344 SETTABLEKS                       R7 R6 K110 ["ButtonHorizontalPadding"]
      346 GETIMPORT                        R7 K127 [UDim.new]
      348 LOADN                            R8 0
      349 LOADN                            R9 8
      350 CALL                             R7 2 1
      351 SETTABLEKS                       R7 R6 K111 ["ButtonSpacing"]
      353 GETIMPORT                        R7 K127 [UDim.new]
      355 LOADN                            R8 0
      356 LOADN                            R9 6
      357 CALL                             R7 2 1
      358 SETTABLEKS                       R7 R6 K112 ["ButtonVerticalPadding"]
      360 GETIMPORT                        R7 K127 [UDim.new]
      362 LOADN                            R8 0
      363 LOADN                            R9 16
      364 CALL                             R7 2 1
      365 SETTABLEKS                       R7 R6 K113 ["DialogPadding"]
      367 GETIMPORT                        R7 K129 [Enum.Font.SourceSansSemibold]
      369 SETTABLEKS                       R7 R6 K114 ["HeadingFont"]
      371 GETIMPORT                        R7 K127 [UDim.new]
      373 LOADN                            R8 0
      374 LOADN                            R9 8
      375 CALL                             R7 2 1
      376 SETTABLEKS                       R7 R6 K115 ["HeadingToBodyPadding"]
      378 GETIMPORT                        R7 K132 [UDim2.fromOffset]
      380 LOADN                            R8 32
      381 LOADN                            R9 32
      382 CALL                             R7 2 1
      383 SETTABLEKS                       R7 R6 K116 ["IconSize"]
      385 GETIMPORT                        R7 K127 [UDim.new]
      387 LOADN                            R8 0
      388 LOADN                            R9 16
      389 CALL                             R7 2 1
      390 SETTABLEKS                       R7 R6 K117 ["IconToContentPadding"]
      392 GETIMPORT                        R7 K134 [Vector2.new]
      394 LOADN                            R8 144
      395 LOADN                            R9 144
      396 CALL                             R7 2 1
      397 SETTABLEKS                       R7 R6 K118 ["MinimumDialogSize"]
      399 LOADK                            R7 K135 [1.25]
      400 SETTABLEKS                       R7 R6 K119 ["TextLineHeight"]
      402 LOADN                            R7 16
      403 SETTABLEKS                       R7 R6 K53 ["TextSize"]
      405 GETIMPORT                        R7 K127 [UDim.new]
      407 LOADN                            R8 0
      408 LOADN                            R9 16
      409 CALL                             R7 2 1
      410 SETTABLEKS                       R7 R6 K120 ["TextToButtonsPadding"]
      412 GETIMPORT                        R7 K127 [UDim.new]
      414 LOADN                            R8 0
      415 LOADN                            R9 2
      416 CALL                             R7 2 1
      417 SETTABLEKS                       R7 R6 K121 ["TextVerticalPadding"]
      419 CALL                             R2 4 -1
      420 RETURN                           R2 -1
