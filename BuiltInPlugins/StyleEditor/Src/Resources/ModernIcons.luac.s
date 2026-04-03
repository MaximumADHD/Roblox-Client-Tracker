PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Lua/%*/%*/%*/%*.png"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R7 3
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 5 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Shared/%*/%*/%*/%*.png"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R7 3
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 5 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

PROTO_4:
        0 LOADK                            R1 K0 ["rbxasset://textures/StyleEditor/%*.png"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 RETURN                           R0 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K8 ["getStudioTheme"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Flags"]
       31 GETTABLEKS                       R4 R5 K10 ["getFFlagStyleQuery"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 GETIMPORT                        R4 K4 [require]
       37 GETTABLEKS                       R7 R0 K5 ["Src"]
       39 GETTABLEKS                       R6 R7 K9 ["Flags"]
       41 GETTABLEKS                       R5 R6 K11 ["getFFlagStyleEditorSupportTransitions"]
       43 CALL                             R4 1 1
       44 CALL                             R4 0 1
       45 DUPCLOSURE                       R5 K12 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R6 K13 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 DUPCLOSURE                       R7 K14 [PROTO_5]
       50 DUPTABLE                         R8 K40 [{"Standard", "Large", "Selectors", "close", "colors", "copy", "delete", "dimensions", "duplicate", "edit", "fonts", "gridpattern", "palette", "more", "new", "open", "paste", "remove", "sizes", "set", "typography", "arrowUp", "arrowDown", "insert", "onboarding"}]
       51 DUPTABLE                         R9 K44 [{"DesignSheet", "TokenSheet", "ThemeSheet"}]
       52 LOADK                            R11 K45 ["StyleEditor"]
       53 LOADK                            R12 K15 ["Standard"]
       54 LOADK                            R13 K46 ["StyleSheetDesign"]
       55 NEWCLOSURE                       R10 P3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R13
       60 SETTABLEKS                       R10 R9 K41 ["DesignSheet"]
       62 LOADK                            R11 K45 ["StyleEditor"]
       63 LOADK                            R12 K15 ["Standard"]
       64 LOADK                            R13 K47 ["StyleSheetToken"]
       65 NEWCLOSURE                       R10 P3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R13
       70 SETTABLEKS                       R10 R9 K42 ["TokenSheet"]
       72 LOADK                            R11 K45 ["StyleEditor"]
       73 LOADK                            R12 K15 ["Standard"]
       74 LOADK                            R13 K48 ["StyleSheetTheme"]
       75 NEWCLOSURE                       R10 P3
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R13
       80 SETTABLEKS                       R10 R9 K43 ["ThemeSheet"]
       82 SETTABLEKS                       R9 R8 K15 ["Standard"]
       84 DUPTABLE                         R9 K49 [{"StyleEditor"}]
       85 LOADK                            R11 K50 ["WidgetIcons"]
       86 LOADK                            R12 K16 ["Large"]
       87 LOADK                            R13 K45 ["StyleEditor"]
       88 NEWCLOSURE                       R10 P4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R13
       93 SETTABLEKS                       R10 R9 K45 ["StyleEditor"]
       95 SETTABLEKS                       R9 R8 K16 ["Large"]
       97 DUPTABLE                         R9 K59 [{"Class", "Child", "Descendant", "Enumerator", "GuiState", "Name", "PseudoInstance", "Tag"}]
       98 LOADK                            R11 K45 ["StyleEditor"]
       99 LOADK                            R12 K15 ["Standard"]
      100 LOADK                            R13 K60 ["UI"]
      101 NEWCLOSURE                       R10 P3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R13
      106 SETTABLEKS                       R10 R9 K51 ["Class"]
      108 LOADK                            R11 K45 ["StyleEditor"]
      109 LOADK                            R12 K15 ["Standard"]
      110 LOADK                            R13 K61 ["StyleSheetChild"]
      111 NEWCLOSURE                       R10 P3
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R13
      116 SETTABLEKS                       R10 R9 K52 ["Child"]
      118 LOADK                            R11 K45 ["StyleEditor"]
      119 LOADK                            R12 K15 ["Standard"]
      120 LOADK                            R13 K62 ["StyleSheetDescendant"]
      121 NEWCLOSURE                       R10 P3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R13
      126 SETTABLEKS                       R10 R9 K53 ["Descendant"]
      128 LOADK                            R11 K45 ["StyleEditor"]
      129 LOADK                            R12 K15 ["Standard"]
      130 LOADK                            R13 K63 ["StyleSheetEnumerator"]
      131 NEWCLOSURE                       R10 P3
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R13
      136 SETTABLEKS                       R10 R9 K54 ["Enumerator"]
      138 LOADK                            R11 K45 ["StyleEditor"]
      139 LOADK                            R12 K15 ["Standard"]
      140 LOADK                            R13 K64 ["StyleSheetGuiState"]
      141 NEWCLOSURE                       R10 P3
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 SETTABLEKS                       R10 R9 K55 ["GuiState"]
      148 LOADK                            R11 K45 ["StyleEditor"]
      149 LOADK                            R12 K15 ["Standard"]
      150 LOADK                            R13 K65 ["StyleSheetName"]
      151 NEWCLOSURE                       R10 P3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R13
      156 SETTABLEKS                       R10 R9 K56 ["Name"]
      158 LOADK                            R11 K45 ["StyleEditor"]
      159 LOADK                            R12 K15 ["Standard"]
      160 LOADK                            R13 K66 ["StyleSheetPseudoInstance"]
      161 NEWCLOSURE                       R10 P3
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R13
      166 SETTABLEKS                       R10 R9 K57 ["PseudoInstance"]
      168 LOADK                            R11 K67 ["TagEditor"]
      169 LOADK                            R12 K15 ["Standard"]
      170 LOADK                            R13 K58 ["Tag"]
      171 NEWCLOSURE                       R10 P3
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R13
      176 SETTABLEKS                       R10 R9 K58 ["Tag"]
      178 SETTABLEKS                       R9 R8 K17 ["Selectors"]
      180 LOADK                            R10 K68 ["Navigation"]
      181 LOADK                            R11 K15 ["Standard"]
      182 LOADK                            R12 K69 ["CloseWidget"]
      183 NEWCLOSURE                       R9 P4
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R12
      188 SETTABLEKS                       R9 R8 K18 ["close"]
      190 LOADK                            R10 K45 ["StyleEditor"]
      191 LOADK                            R11 K16 ["Large"]
      192 LOADK                            R12 K70 ["Color"]
      193 NEWCLOSURE                       R9 P3
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R12
      198 SETTABLEKS                       R9 R8 K19 ["colors"]
      200 LOADK                            R10 K71 ["Clipboard"]
      201 LOADK                            R11 K15 ["Standard"]
      202 LOADK                            R12 K72 ["Copy"]
      203 NEWCLOSURE                       R9 P4
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R10
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R12
      208 SETTABLEKS                       R9 R8 K20 ["copy"]
      210 LOADK                            R10 K67 ["TagEditor"]
      211 LOADK                            R11 K15 ["Standard"]
      212 LOADK                            R12 K73 ["Tag_Delete"]
      213 NEWCLOSURE                       R9 P3
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R12
      218 SETTABLEKS                       R9 R8 K21 ["delete"]
      220 LOADK                            R10 K45 ["StyleEditor"]
      221 LOADK                            R11 K15 ["Standard"]
      222 LOADK                            R12 K74 ["Size"]
      223 NEWCLOSURE                       R9 P3
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R12
      228 SETTABLEKS                       R9 R8 K22 ["dimensions"]
      230 LOADK                            R10 K71 ["Clipboard"]
      231 LOADK                            R11 K15 ["Standard"]
      232 LOADK                            R12 K75 ["Duplicate"]
      233 NEWCLOSURE                       R9 P4
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R10
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R12
      238 SETTABLEKS                       R9 R8 K23 ["duplicate"]
      240 LOADK                            R10 K67 ["TagEditor"]
      241 LOADK                            R11 K15 ["Standard"]
      242 LOADK                            R12 K76 ["Tag_Edit"]
      243 NEWCLOSURE                       R9 P3
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R12
      248 SETTABLEKS                       R9 R8 K24 ["edit"]
      250 LOADK                            R10 K45 ["StyleEditor"]
      251 LOADK                            R11 K15 ["Standard"]
      252 LOADK                            R12 K77 ["Typography"]
      253 NEWCLOSURE                       R9 P3
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R11
      257 CAPTURE                          VAL R12
      258 SETTABLEKS                       R9 R8 K25 ["fonts"]
      260 LOADK                            R10 K45 ["StyleEditor"]
      261 LOADK                            R11 K15 ["Standard"]
      262 LOADK                            R12 K78 ["GridPattern"]
      263 NEWCLOSURE                       R9 P3
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R10
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R12
      268 SETTABLEKS                       R9 R8 K26 ["gridpattern"]
      270 LOADK                            R10 K45 ["StyleEditor"]
      271 LOADK                            R11 K16 ["Large"]
      272 LOADK                            R12 K70 ["Color"]
      273 NEWCLOSURE                       R9 P3
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R10
      276 CAPTURE                          VAL R11
      277 CAPTURE                          VAL R12
      278 SETTABLEKS                       R9 R8 K27 ["palette"]
      280 LOADK                            R10 K45 ["StyleEditor"]
      281 LOADK                            R11 K15 ["Standard"]
      282 LOADK                            R12 K79 ["More"]
      283 NEWCLOSURE                       R9 P3
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R11
      287 CAPTURE                          VAL R12
      288 SETTABLEKS                       R9 R8 K28 ["more"]
      290 LOADK                            R10 K45 ["StyleEditor"]
      291 LOADK                            R11 K15 ["Standard"]
      292 LOADK                            R12 K80 ["InsertS"]
      293 NEWCLOSURE                       R9 P3
      294 CAPTURE                          VAL R2
      295 CAPTURE                          VAL R10
      296 CAPTURE                          VAL R11
      297 CAPTURE                          VAL R12
      298 SETTABLEKS                       R9 R8 K29 ["new"]
      300 LOADK                            R10 K45 ["StyleEditor"]
      301 LOADK                            R11 K15 ["Standard"]
      302 LOADK                            R12 K81 ["QuickOpen"]
      303 NEWCLOSURE                       R9 P3
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R10
      306 CAPTURE                          VAL R11
      307 CAPTURE                          VAL R12
      308 SETTABLEKS                       R9 R8 K30 ["open"]
      310 LOADK                            R10 K71 ["Clipboard"]
      311 LOADK                            R11 K15 ["Standard"]
      312 LOADK                            R12 K82 ["Paste"]
      313 NEWCLOSURE                       R9 P4
      314 CAPTURE                          VAL R2
      315 CAPTURE                          VAL R10
      316 CAPTURE                          VAL R11
      317 CAPTURE                          VAL R12
      318 SETTABLEKS                       R9 R8 K31 ["paste"]
      320 LOADK                            R10 K67 ["TagEditor"]
      321 LOADK                            R11 K15 ["Standard"]
      322 LOADK                            R12 K83 ["Tag_Remove"]
      323 NEWCLOSURE                       R9 P3
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R10
      326 CAPTURE                          VAL R11
      327 CAPTURE                          VAL R12
      328 SETTABLEKS                       R9 R8 K32 ["remove"]
      330 LOADK                            R10 K45 ["StyleEditor"]
      331 LOADK                            R11 K15 ["Standard"]
      332 LOADK                            R12 K74 ["Size"]
      333 NEWCLOSURE                       R9 P3
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R10
      336 CAPTURE                          VAL R11
      337 CAPTURE                          VAL R12
      338 SETTABLEKS                       R9 R8 K33 ["sizes"]
      340 LOADK                            R10 K67 ["TagEditor"]
      341 LOADK                            R11 K15 ["Standard"]
      342 LOADK                            R12 K84 ["Tag_Add"]
      343 NEWCLOSURE                       R9 P3
      344 CAPTURE                          VAL R2
      345 CAPTURE                          VAL R10
      346 CAPTURE                          VAL R11
      347 CAPTURE                          VAL R12
      348 SETTABLEKS                       R9 R8 K34 ["set"]
      350 LOADK                            R10 K45 ["StyleEditor"]
      351 LOADK                            R11 K15 ["Standard"]
      352 LOADK                            R12 K77 ["Typography"]
      353 NEWCLOSURE                       R9 P3
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R10
      356 CAPTURE                          VAL R11
      357 CAPTURE                          VAL R12
      358 SETTABLEKS                       R9 R8 K35 ["typography"]
      360 LOADK                            R10 K68 ["Navigation"]
      361 LOADK                            R11 K15 ["Standard"]
      362 LOADK                            R12 K85 ["ArrowUp"]
      363 NEWCLOSURE                       R9 P4
      364 CAPTURE                          VAL R2
      365 CAPTURE                          VAL R10
      366 CAPTURE                          VAL R11
      367 CAPTURE                          VAL R12
      368 SETTABLEKS                       R9 R8 K36 ["arrowUp"]
      370 LOADK                            R10 K68 ["Navigation"]
      371 LOADK                            R11 K15 ["Standard"]
      372 LOADK                            R12 K86 ["ArrowDown"]
      373 NEWCLOSURE                       R9 P4
      374 CAPTURE                          VAL R2
      375 CAPTURE                          VAL R10
      376 CAPTURE                          VAL R11
      377 CAPTURE                          VAL R12
      378 SETTABLEKS                       R9 R8 K37 ["arrowDown"]
      380 JUMPIF                           R3 ; [+1]
      381 JUMPIFNOT                        R4 ; [+9]
      382 LOADK                            R10 K45 ["StyleEditor"]
      383 LOADK                            R11 K15 ["Standard"]
      384 LOADK                            R12 K87 ["AddNoBorder"]
      385 NEWCLOSURE                       R9 P3
      386 CAPTURE                          VAL R2
      387 CAPTURE                          VAL R10
      388 CAPTURE                          VAL R11
      389 CAPTURE                          VAL R12
      390 JUMP                             ; [+1]
      391 LOADNIL                          R9
      392 SETTABLEKS                       R9 R8 K38 ["insert"]
      394 LOADK                            R10 K39 ["onboarding"]
      395 NEWCLOSURE                       R9 P5
      396 CAPTURE                          VAL R10
      397 SETTABLEKS                       R9 R8 K39 ["onboarding"]
      399 RETURN                           R8 1
