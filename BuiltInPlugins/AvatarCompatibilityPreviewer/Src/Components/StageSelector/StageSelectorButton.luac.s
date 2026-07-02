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
       68 DUPTABLE                         R11 K31 [{["AnchorPoint"], ["BackgroundColor"], ["BackgroundStyle"] = "SubtleBox", ["IconColor"], ["IconScaleType"], ["IconSize"], ["LeftIcon"], ["Text"], ["LayoutOrder"], ["Size"], ["Padding"] = 0, ["Position"], ["TooltipStyle"] = "NoDelay", ["TooltipText"], ["OnClick"]}]
       69 GETTABLEKS                       R13 R0 K3 ["ShowMenuIndicator"]
       71 JUMPIFNOT                        R13 ; [+6]
       72 GETIMPORT                        R12 K34 [Vector2.new]
       74 LOADN                            R13 0
       75 LOADN                            R14 0
       76 CALL                             R12 2 1
       77 JUMP                             ; [+1]
       78 MOVE                             R12 R6
       79 SETTABLEKS                       R12 R11 K12 ["AnchorPoint"]
       81 GETTABLEKS                       R13 R0 K35 ["IsSelected"]
       83 JUMPIFNOT                        R13 ; [+3]
       84 GETTABLEKS                       R12 R1 K36 ["ButtonSelectedBackgroundColor"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R12 R1 K16 ["BackgroundColor"]
       89 SETTABLEKS                       R12 R11 K16 ["BackgroundColor"]
       91 JUMPIFNOT                        R3 ; [+3]
       92 GETTABLEKS                       R12 R1 K19 ["IconColor"]
       94 JUMP                             ; [+2]
       95 GETTABLEKS                       R12 R1 K37 ["IconColorDisabled"]
       97 SETTABLEKS                       R12 R11 K19 ["IconColor"]
       99 GETIMPORT                        R12 K41 [Enum.ScaleType.Stretch]
      101 SETTABLEKS                       R12 R11 K20 ["IconScaleType"]
      103 GETTABLEKS                       R12 R1 K21 ["IconSize"]
      105 SETTABLEKS                       R12 R11 K21 ["IconSize"]
      107 JUMPIFNOT                        R4 ; [+2]
      108 LOADNIL                          R12
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R12 R0 K7 ["Icon"]
      112 SETTABLEKS                       R12 R11 K22 ["LeftIcon"]
      114 JUMPIFNOT                        R4 ; [+2]
      115 LOADK                            R12 K42 [""]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R12
      118 SETTABLEKS                       R12 R11 K23 ["Text"]
      120 SETTABLEKS                       R7 R11 K13 ["LayoutOrder"]
      122 GETIMPORT                        R12 K44 [UDim2.new]
      124 LOADN                            R13 1
      125 LOADN                            R14 0
      126 LOADN                            R15 0
      127 GETTABLEKS                       R16 R1 K45 ["ButtonHeight"]
      129 CALL                             R12 4 1
      130 SETTABLEKS                       R12 R11 K24 ["Size"]
      132 GETTABLEKS                       R13 R0 K3 ["ShowMenuIndicator"]
      134 JUMPIFNOT                        R13 ; [+4]
      135 GETIMPORT                        R12 K44 [UDim2.new]
      137 CALL                             R12 0 1
      138 JUMP                             ; [+1]
      139 MOVE                             R12 R8
      140 SETTABLEKS                       R12 R11 K14 ["Position"]
      142 SETTABLEKS                       R5 R11 K29 ["TooltipText"]
      144 JUMPIFNOT                        R3 ; [+3]
      145 GETTABLEKS                       R12 R0 K30 ["OnClick"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R12
      149 SETTABLEKS                       R12 R11 K30 ["OnClick"]
      151 CALL                             R9 2 1
      152 JUMPIFNOT                        R4 ; [+90]
      153 GETUPVAL                         R10 4
      154 GETTABLEKS                       R10 R10 K15 ["createElement"]
      156 LOADK                            R11 K46 ["Frame"]
      157 DUPTABLE                         R12 K49 [{["AnchorPoint"], ["LayoutOrder"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      158 GETTABLEKS                       R14 R0 K3 ["ShowMenuIndicator"]
      160 JUMPIFNOT                        R14 ; [+6]
      161 GETIMPORT                        R13 K34 [Vector2.new]
      163 LOADN                            R14 0
      164 LOADN                            R15 0
      165 CALL                             R13 2 1
      166 JUMP                             ; [+2]
      167 GETTABLEKS                       R13 R0 K12 ["AnchorPoint"]
      169 SETTABLEKS                       R13 R12 K12 ["AnchorPoint"]
      171 GETTABLEKS                       R14 R0 K3 ["ShowMenuIndicator"]
      173 JUMPIFNOT                        R14 ; [+2]
      174 LOADNIL                          R13
      175 JUMP                             ; [+2]
      176 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
      178 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      180 GETTABLEKS                       R14 R0 K3 ["ShowMenuIndicator"]
      182 JUMPIFNOT                        R14 ; [+4]
      183 GETIMPORT                        R13 K44 [UDim2.new]
      185 CALL                             R13 0 1
      186 JUMP                             ; [+2]
      187 GETTABLEKS                       R13 R0 K14 ["Position"]
      189 SETTABLEKS                       R13 R12 K14 ["Position"]
      191 GETIMPORT                        R13 K44 [UDim2.new]
      193 LOADN                            R14 1
      194 LOADN                            R15 0
      195 LOADN                            R16 0
      196 GETTABLEKS                       R17 R1 K45 ["ButtonHeight"]
      198 CALL                             R13 4 1
      199 SETTABLEKS                       R13 R12 K24 ["Size"]
      201 DUPTABLE                         R13 K52 [{"Button", "Glyph"}]
      202 SETTABLEKS                       R9 R13 K50 ["Button"]
      204 GETUPVAL                         R14 4
      205 GETTABLEKS                       R14 R14 K15 ["createElement"]
      207 GETUPVAL                         R15 6
      208 GETTABLEKS                       R15 R15 K7 ["Icon"]
      210 DUPTABLE                         R16 K57 [{["name"], ["size"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      211 GETTABLEKS                       R17 R0 K7 ["Icon"]
      213 SETTABLEKS                       R17 R16 K53 ["name"]
      215 GETUPVAL                         R17 6
      216 GETTABLEKS                       R17 R17 K58 ["Enums"]
      218 GETTABLEKS                       R17 R17 K21 ["IconSize"]
      220 GETTABLEKS                       R17 R17 K59 ["Medium"]
      222 SETTABLEKS                       R17 R16 K54 ["size"]
      224 GETIMPORT                        R17 K34 [Vector2.new]
      226 LOADK                            R18 K60 [0.5]
      227 LOADK                            R19 K60 [0.5]
      228 CALL                             R17 2 1
      229 SETTABLEKS                       R17 R16 K12 ["AnchorPoint"]
      231 GETIMPORT                        R17 K62 [UDim2.fromScale]
      233 LOADK                            R18 K60 [0.5]
      234 LOADK                            R19 K60 [0.5]
      235 CALL                             R17 2 1
      236 SETTABLEKS                       R17 R16 K14 ["Position"]
      238 CALL                             R14 2 1
      239 SETTABLEKS                       R14 R13 K51 ["Glyph"]
      241 CALL                             R10 3 1
      242 MOVE                             R9 R10
      243 JUMPIF                           R3 ; [+27]
      244 GETUPVAL                         R10 4
      245 GETTABLEKS                       R10 R10 K15 ["createElement"]
      247 GETUPVAL                         R11 4
      248 GETTABLEKS                       R11 R11 K63 ["Fragment"]
      250 NEWTABLE                         R12 0 0
      252 NEWTABLE                         R13 2 0
      254 SETTABLEKS                       R9 R13 K64 ["IconButton"]
      256 LOADK                            R15 K65 ["%*_Disabled"]
      257 GETTABLEKS                       R17 R0 K10 ["StageText"]
      259 NAMECALL                         R15 R15 K66 ["format"]
      261 CALL                             R15 2 1
      262 MOVE                             R14 R15
      263 GETUPVAL                         R15 4
      264 GETTABLEKS                       R15 R15 K15 ["createElement"]
      266 LOADK                            R16 K67 ["Folder"]
      267 CALL                             R15 1 1
      268 SETTABLE                         R15 R13 R14
      269 CALL                             R10 3 -1
      270 RETURN                           R10 -1
      271 GETTABLEKS                       R10 R0 K3 ["ShowMenuIndicator"]
      273 JUMPIFNOT                        R10 ; [+108]
      274 GETTABLEKS                       R10 R1 K68 ["MenuIndicatorSize"]
      276 DUPTABLE                         R11 K70 [{"IconButton", "MenuIndicator"}]
      277 SETTABLEKS                       R9 R11 K64 ["IconButton"]
      279 GETUPVAL                         R12 4
      280 GETTABLEKS                       R12 R12 K15 ["createElement"]
      282 GETUPVAL                         R13 6
      283 GETTABLEKS                       R13 R13 K71 ["View"]
      285 DUPTABLE                         R14 K74 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["Size"], ["Rotation"] = -45, ["ZIndex"] = 2}]
      286 GETIMPORT                        R15 K34 [Vector2.new]
      288 LOADN                            R16 1
      289 LOADN                            R17 1
      290 CALL                             R15 2 1
      291 SETTABLEKS                       R15 R14 K12 ["AnchorPoint"]
      293 GETIMPORT                        R15 K44 [UDim2.new]
      295 LOADN                            R16 1
      296 LOADN                            R17 0
      297 LOADN                            R18 1
      298 LOADN                            R19 5
      299 CALL                             R15 4 1
      300 SETTABLEKS                       R15 R14 K14 ["Position"]
      302 GETIMPORT                        R15 K76 [UDim2.fromOffset]
      304 MOVE                             R16 R10
      305 MOVE                             R17 R10
      306 CALL                             R15 2 1
      307 SETTABLEKS                       R15 R14 K24 ["Size"]
      309 DUPTABLE                         R15 K77 [{"Icon"}]
      310 GETUPVAL                         R16 4
      311 GETTABLEKS                       R16 R16 K15 ["createElement"]
      313 GETUPVAL                         R17 6
      314 GETTABLEKS                       R17 R17 K7 ["Icon"]
      316 DUPTABLE                         R18 K81 [{["name"], ["variant"], ["size"], ["tag"] = "size-full-full content-system-contrast"}]
      317 GETUPVAL                         R19 6
      318 GETTABLEKS                       R19 R19 K58 ["Enums"]
      320 GETTABLEKS                       R19 R19 K82 ["IconName"]
      322 GETTABLEKS                       R19 R19 K83 ["CaretSmallDown"]
      324 SETTABLEKS                       R19 R18 K53 ["name"]
      326 GETUPVAL                         R19 6
      327 GETTABLEKS                       R19 R19 K58 ["Enums"]
      329 GETTABLEKS                       R19 R19 K84 ["IconVariant"]
      331 GETTABLEKS                       R19 R19 K85 ["Filled"]
      333 SETTABLEKS                       R19 R18 K78 ["variant"]
      335 GETUPVAL                         R19 6
      336 GETTABLEKS                       R19 R19 K58 ["Enums"]
      338 GETTABLEKS                       R19 R19 K21 ["IconSize"]
      340 GETTABLEKS                       R19 R19 K86 ["XSmall"]
      342 SETTABLEKS                       R19 R18 K54 ["size"]
      344 CALL                             R16 2 1
      345 SETTABLEKS                       R16 R15 K7 ["Icon"]
      347 CALL                             R12 3 1
      348 SETTABLEKS                       R12 R11 K69 ["MenuIndicator"]
      350 GETUPVAL                         R12 4
      351 GETTABLEKS                       R12 R12 K15 ["createElement"]
      353 GETUPVAL                         R13 6
      354 GETTABLEKS                       R13 R13 K71 ["View"]
      356 DUPTABLE                         R14 K87 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      357 GETTABLEKS                       R15 R0 K13 ["LayoutOrder"]
      359 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      361 GETIMPORT                        R15 K44 [UDim2.new]
      363 LOADN                            R16 1
      364 LOADN                            R17 0
      365 LOADN                            R18 0
      366 GETTABLEKS                       R19 R1 K45 ["ButtonHeight"]
      368 CALL                             R15 4 1
      369 SETTABLEKS                       R15 R14 K24 ["Size"]
      371 GETTABLEKS                       R15 R0 K12 ["AnchorPoint"]
      373 SETTABLEKS                       R15 R14 K12 ["AnchorPoint"]
      375 GETTABLEKS                       R15 R0 K14 ["Position"]
      377 SETTABLEKS                       R15 R14 K14 ["Position"]
      379 MOVE                             R15 R11
      380 CALL                             R12 3 -1
      381 RETURN                           R12 -1
      382 RETURN                           R9 1

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
