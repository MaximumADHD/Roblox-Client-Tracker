PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StageSelector"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K2 ["Enabled"]
       11 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 GETTABLEKS                       R4 R0 K3 ["ShowMenuIndicator"]
       17 JUMPIFEQKNIL                     R4 ; [+9]
       19 GETUPVAL                         R5 2
       20 CALL                             R5 0 1
       21 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       23 LOADK                            R6 K4 ["Look Composer flag is required"]
       24 GETIMPORT                        R4 K6 [assert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R5 R0 K7 ["Icon"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R0 K8 ["Tooltip"]
       33 JUMPIF                           R5 ; [+6]
       34 LOADK                            R7 K9 ["Stages"]
       35 GETTABLEKS                       R8 R0 K10 ["StageText"]
       37 NAMECALL                         R5 R2 K11 ["getText"]
       39 CALL                             R5 3 1
       40 GETTABLEKS                       R7 R0 K3 ["ShowMenuIndicator"]
       42 JUMPIF                           R7 ; [+1]
       43 JUMPIFNOT                        R4 ; [+2]
       44 LOADNIL                          R6
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R6 R0 K12 ["AnchorPoint"]
       48 GETTABLEKS                       R8 R0 K3 ["ShowMenuIndicator"]
       50 JUMPIF                           R8 ; [+1]
       51 JUMPIFNOT                        R4 ; [+2]
       52 LOADNIL                          R7
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       56 GETTABLEKS                       R9 R0 K3 ["ShowMenuIndicator"]
       58 JUMPIF                           R9 ; [+1]
       59 JUMPIFNOT                        R4 ; [+2]
       60 LOADNIL                          R8
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R8 R0 K14 ["Position"]
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R9 R9 K15 ["createElement"]
       67 GETUPVAL                         R10 5
       68 DUPTABLE                         R11 K28 [{"AnchorPoint", "BackgroundColor", "BackgroundStyle", "IconColor", "IconScaleType", "IconSize", "LeftIcon", "Text", "LayoutOrder", "Size", "Padding", "Position", "TooltipStyle", "TooltipText", "OnClick"}]
       69 GETTABLEKS                       R13 R0 K3 ["ShowMenuIndicator"]
       71 JUMPIFNOT                        R13 ; [+6]
       72 GETIMPORT                        R12 K31 [Vector2.new]
       74 LOADN                            R13 0
       75 LOADN                            R14 0
       76 CALL                             R12 2 1
       77 JUMP                             ; [+1]
       78 MOVE                             R12 R6
       79 SETTABLEKS                       R12 R11 K12 ["AnchorPoint"]
       81 GETTABLEKS                       R13 R0 K32 ["IsSelected"]
       83 JUMPIFNOT                        R13 ; [+3]
       84 GETTABLEKS                       R12 R1 K33 ["ButtonSelectedBackgroundColor"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R12 R1 K16 ["BackgroundColor"]
       89 SETTABLEKS                       R12 R11 K16 ["BackgroundColor"]
       91 LOADK                            R12 K34 ["SubtleBox"]
       92 SETTABLEKS                       R12 R11 K17 ["BackgroundStyle"]
       94 JUMPIFNOT                        R3 ; [+3]
       95 GETTABLEKS                       R12 R1 K18 ["IconColor"]
       97 JUMP                             ; [+2]
       98 GETTABLEKS                       R12 R1 K35 ["IconColorDisabled"]
      100 SETTABLEKS                       R12 R11 K18 ["IconColor"]
      102 GETIMPORT                        R12 K39 [Enum.ScaleType.Stretch]
      104 SETTABLEKS                       R12 R11 K19 ["IconScaleType"]
      106 GETTABLEKS                       R12 R1 K20 ["IconSize"]
      108 SETTABLEKS                       R12 R11 K20 ["IconSize"]
      110 JUMPIFNOT                        R4 ; [+2]
      111 LOADNIL                          R12
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R12 R0 K7 ["Icon"]
      115 SETTABLEKS                       R12 R11 K21 ["LeftIcon"]
      117 JUMPIFNOT                        R4 ; [+2]
      118 LOADK                            R12 K40 [""]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R12
      121 SETTABLEKS                       R12 R11 K22 ["Text"]
      123 SETTABLEKS                       R7 R11 K13 ["LayoutOrder"]
      125 GETIMPORT                        R12 K42 [UDim2.new]
      127 LOADN                            R13 1
      128 LOADN                            R14 0
      129 LOADN                            R15 0
      130 GETTABLEKS                       R16 R1 K43 ["ButtonHeight"]
      132 CALL                             R12 4 1
      133 SETTABLEKS                       R12 R11 K23 ["Size"]
      135 LOADN                            R12 0
      136 SETTABLEKS                       R12 R11 K24 ["Padding"]
      138 GETTABLEKS                       R13 R0 K3 ["ShowMenuIndicator"]
      140 JUMPIFNOT                        R13 ; [+4]
      141 GETIMPORT                        R12 K42 [UDim2.new]
      143 CALL                             R12 0 1
      144 JUMP                             ; [+1]
      145 MOVE                             R12 R8
      146 SETTABLEKS                       R12 R11 K14 ["Position"]
      148 LOADK                            R12 K44 ["NoDelay"]
      149 SETTABLEKS                       R12 R11 K25 ["TooltipStyle"]
      151 SETTABLEKS                       R5 R11 K26 ["TooltipText"]
      153 JUMPIFNOT                        R3 ; [+3]
      154 GETTABLEKS                       R12 R0 K27 ["OnClick"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R12
      158 SETTABLEKS                       R12 R11 K27 ["OnClick"]
      160 CALL                             R9 2 1
      161 JUMPIFNOT                        R4 ; [+96]
      162 GETUPVAL                         R10 4
      163 GETTABLEKS                       R10 R10 K15 ["createElement"]
      165 LOADK                            R11 K45 ["Frame"]
      166 DUPTABLE                         R12 K47 [{"AnchorPoint", "LayoutOrder", "Position", "Size", "BackgroundTransparency"}]
      167 GETTABLEKS                       R14 R0 K3 ["ShowMenuIndicator"]
      169 JUMPIFNOT                        R14 ; [+6]
      170 GETIMPORT                        R13 K31 [Vector2.new]
      172 LOADN                            R14 0
      173 LOADN                            R15 0
      174 CALL                             R13 2 1
      175 JUMP                             ; [+2]
      176 GETTABLEKS                       R13 R0 K12 ["AnchorPoint"]
      178 SETTABLEKS                       R13 R12 K12 ["AnchorPoint"]
      180 GETTABLEKS                       R14 R0 K3 ["ShowMenuIndicator"]
      182 JUMPIFNOT                        R14 ; [+2]
      183 LOADNIL                          R13
      184 JUMP                             ; [+2]
      185 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
      187 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      189 GETTABLEKS                       R14 R0 K3 ["ShowMenuIndicator"]
      191 JUMPIFNOT                        R14 ; [+4]
      192 GETIMPORT                        R13 K42 [UDim2.new]
      194 CALL                             R13 0 1
      195 JUMP                             ; [+2]
      196 GETTABLEKS                       R13 R0 K14 ["Position"]
      198 SETTABLEKS                       R13 R12 K14 ["Position"]
      200 GETIMPORT                        R13 K42 [UDim2.new]
      202 LOADN                            R14 1
      203 LOADN                            R15 0
      204 LOADN                            R16 0
      205 GETTABLEKS                       R17 R1 K43 ["ButtonHeight"]
      207 CALL                             R13 4 1
      208 SETTABLEKS                       R13 R12 K23 ["Size"]
      210 LOADN                            R13 1
      211 SETTABLEKS                       R13 R12 K46 ["BackgroundTransparency"]
      213 DUPTABLE                         R13 K50 [{"Button", "Glyph"}]
      214 SETTABLEKS                       R9 R13 K48 ["Button"]
      216 GETUPVAL                         R14 4
      217 GETTABLEKS                       R14 R14 K15 ["createElement"]
      219 GETUPVAL                         R15 6
      220 GETTABLEKS                       R15 R15 K7 ["Icon"]
      222 DUPTABLE                         R16 K54 [{"name", "size", "AnchorPoint", "Position", "ZIndex"}]
      223 GETTABLEKS                       R17 R0 K7 ["Icon"]
      225 SETTABLEKS                       R17 R16 K51 ["name"]
      227 GETUPVAL                         R17 6
      228 GETTABLEKS                       R17 R17 K55 ["Enums"]
      230 GETTABLEKS                       R17 R17 K20 ["IconSize"]
      232 GETTABLEKS                       R17 R17 K56 ["Medium"]
      234 SETTABLEKS                       R17 R16 K52 ["size"]
      236 GETIMPORT                        R17 K31 [Vector2.new]
      238 LOADK                            R18 K57 [0.5]
      239 LOADK                            R19 K57 [0.5]
      240 CALL                             R17 2 1
      241 SETTABLEKS                       R17 R16 K12 ["AnchorPoint"]
      243 GETIMPORT                        R17 K59 [UDim2.fromScale]
      245 LOADK                            R18 K57 [0.5]
      246 LOADK                            R19 K57 [0.5]
      247 CALL                             R17 2 1
      248 SETTABLEKS                       R17 R16 K14 ["Position"]
      250 LOADN                            R17 2
      251 SETTABLEKS                       R17 R16 K53 ["ZIndex"]
      253 CALL                             R14 2 1
      254 SETTABLEKS                       R14 R13 K49 ["Glyph"]
      256 CALL                             R10 3 1
      257 MOVE                             R9 R10
      258 JUMPIF                           R3 ; [+27]
      259 GETUPVAL                         R10 4
      260 GETTABLEKS                       R10 R10 K15 ["createElement"]
      262 GETUPVAL                         R11 4
      263 GETTABLEKS                       R11 R11 K60 ["Fragment"]
      265 NEWTABLE                         R12 0 0
      267 NEWTABLE                         R13 2 0
      269 SETTABLEKS                       R9 R13 K61 ["IconButton"]
      271 LOADK                            R15 K62 ["%*_Disabled"]
      272 GETTABLEKS                       R17 R0 K10 ["StageText"]
      274 NAMECALL                         R15 R15 K63 ["format"]
      276 CALL                             R15 2 1
      277 MOVE                             R14 R15
      278 GETUPVAL                         R15 4
      279 GETTABLEKS                       R15 R15 K15 ["createElement"]
      281 LOADK                            R16 K64 ["Folder"]
      282 CALL                             R15 1 1
      283 SETTABLE                         R15 R13 R14
      284 CALL                             R10 3 -1
      285 RETURN                           R10 -1
      286 GETTABLEKS                       R10 R0 K3 ["ShowMenuIndicator"]
      288 JUMPIFNOT                        R10 ; [+123]
      289 GETTABLEKS                       R10 R1 K65 ["MenuIndicatorSize"]
      291 DUPTABLE                         R11 K67 [{"IconButton", "MenuIndicator"}]
      292 SETTABLEKS                       R9 R11 K61 ["IconButton"]
      294 GETUPVAL                         R12 4
      295 GETTABLEKS                       R12 R12 K15 ["createElement"]
      297 GETUPVAL                         R13 6
      298 GETTABLEKS                       R13 R13 K68 ["View"]
      300 DUPTABLE                         R14 K70 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "Rotation", "ZIndex"}]
      301 LOADN                            R15 1
      302 SETTABLEKS                       R15 R14 K46 ["BackgroundTransparency"]
      304 GETIMPORT                        R15 K31 [Vector2.new]
      306 LOADN                            R16 1
      307 LOADN                            R17 1
      308 CALL                             R15 2 1
      309 SETTABLEKS                       R15 R14 K12 ["AnchorPoint"]
      311 GETIMPORT                        R15 K42 [UDim2.new]
      313 LOADN                            R16 1
      314 LOADN                            R17 0
      315 LOADN                            R18 1
      316 LOADN                            R19 5
      317 CALL                             R15 4 1
      318 SETTABLEKS                       R15 R14 K14 ["Position"]
      320 GETIMPORT                        R15 K72 [UDim2.fromOffset]
      322 MOVE                             R16 R10
      323 MOVE                             R17 R10
      324 CALL                             R15 2 1
      325 SETTABLEKS                       R15 R14 K23 ["Size"]
      327 LOADN                            R15 211
      328 SETTABLEKS                       R15 R14 K69 ["Rotation"]
      330 LOADN                            R15 2
      331 SETTABLEKS                       R15 R14 K53 ["ZIndex"]
      333 DUPTABLE                         R15 K73 [{"Icon"}]
      334 GETUPVAL                         R16 4
      335 GETTABLEKS                       R16 R16 K15 ["createElement"]
      337 GETUPVAL                         R17 6
      338 GETTABLEKS                       R17 R17 K7 ["Icon"]
      340 DUPTABLE                         R18 K76 [{"name", "variant", "size", "tag"}]
      341 GETUPVAL                         R19 6
      342 GETTABLEKS                       R19 R19 K55 ["Enums"]
      344 GETTABLEKS                       R19 R19 K77 ["IconName"]
      346 GETTABLEKS                       R19 R19 K78 ["CaretSmallDown"]
      348 SETTABLEKS                       R19 R18 K51 ["name"]
      350 GETUPVAL                         R19 6
      351 GETTABLEKS                       R19 R19 K55 ["Enums"]
      353 GETTABLEKS                       R19 R19 K79 ["IconVariant"]
      355 GETTABLEKS                       R19 R19 K80 ["Filled"]
      357 SETTABLEKS                       R19 R18 K74 ["variant"]
      359 GETUPVAL                         R19 6
      360 GETTABLEKS                       R19 R19 K55 ["Enums"]
      362 GETTABLEKS                       R19 R19 K20 ["IconSize"]
      364 GETTABLEKS                       R19 R19 K81 ["XSmall"]
      366 SETTABLEKS                       R19 R18 K52 ["size"]
      368 LOADK                            R19 K82 ["size-full-full content-system-contrast"]
      369 SETTABLEKS                       R19 R18 K75 ["tag"]
      371 CALL                             R16 2 1
      372 SETTABLEKS                       R16 R15 K7 ["Icon"]
      374 CALL                             R12 3 1
      375 SETTABLEKS                       R12 R11 K66 ["MenuIndicator"]
      377 GETUPVAL                         R12 4
      378 GETTABLEKS                       R12 R12 K15 ["createElement"]
      380 GETUPVAL                         R13 6
      381 GETTABLEKS                       R13 R13 K68 ["View"]
      383 DUPTABLE                         R14 K83 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      384 GETTABLEKS                       R15 R0 K13 ["LayoutOrder"]
      386 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      388 GETIMPORT                        R15 K42 [UDim2.new]
      390 LOADN                            R16 1
      391 LOADN                            R17 0
      392 LOADN                            R18 0
      393 GETTABLEKS                       R19 R1 K43 ["ButtonHeight"]
      395 CALL                             R15 4 1
      396 SETTABLEKS                       R15 R14 K23 ["Size"]
      398 GETTABLEKS                       R15 R0 K12 ["AnchorPoint"]
      400 SETTABLEKS                       R15 R14 K12 ["AnchorPoint"]
      402 GETTABLEKS                       R15 R0 K14 ["Position"]
      404 SETTABLEKS                       R15 R14 K14 ["Position"]
      406 LOADN                            R15 1
      407 SETTABLEKS                       R15 R14 K46 ["BackgroundTransparency"]
      409 MOVE                             R15 R11
      410 CALL                             R12 3 -1
      411 RETURN                           R12 -1
      412 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerLookComposer"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["UI"]
       48 GETTABLEKS                       R7 R6 K16 ["IconButton"]
       50 GETTABLEKS                       R8 R2 K17 ["Utility"]
       52 GETTABLEKS                       R8 R8 K18 ["isBuilderIcon"]
       54 GETTABLEKS                       R9 R1 K19 ["ContextServices"]
       56 GETTABLEKS                       R9 R9 K20 ["Localization"]
       58 GETTABLEKS                       R10 R1 K19 ["ContextServices"]
       60 GETTABLEKS                       R10 R10 K21 ["Stylizer"]
       62 DUPCLOSURE                       R11 K22 [PROTO_0]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 RETURN                           R11 1
