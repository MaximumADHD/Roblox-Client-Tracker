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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K8 ["getStudioTheme"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Flags"]
       31 GETTABLEKS                       R4 R4 K10 ["getFFlagStyleQuery"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 GETIMPORT                        R4 K4 [require]
       37 GETTABLEKS                       R5 R0 K5 ["Src"]
       39 GETTABLEKS                       R5 R5 K9 ["Flags"]
       41 GETTABLEKS                       R5 R5 K11 ["getFFlagStyleEditorSupportTransitions"]
       43 CALL                             R4 1 1
       44 CALL                             R4 0 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K9 ["Flags"]
       51 GETTABLEKS                       R6 R6 K12 ["getFFlagStyleEditorTransitionsIcon"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K13 [PROTO_1]
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R7 K14 [PROTO_3]
       57 CAPTURE                          VAL R2
       58 DUPCLOSURE                       R8 K15 [PROTO_5]
       59 DUPTABLE                         R9 K42 [{"Standard", "Large", "Selectors", "close", "colors", "copy", "delete", "dimensions", "duplicate", "edit", "fonts", "gridpattern", "palette", "more", "new", "open", "paste", "remove", "sizes", "set", "typography", "arrowUp", "arrowDown", "insert", "stylingTransition", "onboarding"}]
       60 DUPTABLE                         R10 K46 [{"DesignSheet", "TokenSheet", "ThemeSheet"}]
       61 LOADK                            R12 K47 ["StyleEditor"]
       62 LOADK                            R13 K16 ["Standard"]
       63 LOADK                            R14 K48 ["StyleSheetDesign"]
       64 NEWCLOSURE                       R11 P3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R14
       69 SETTABLEKS                       R11 R10 K43 ["DesignSheet"]
       71 LOADK                            R12 K47 ["StyleEditor"]
       72 LOADK                            R13 K16 ["Standard"]
       73 LOADK                            R14 K49 ["StyleSheetToken"]
       74 NEWCLOSURE                       R11 P3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R14
       79 SETTABLEKS                       R11 R10 K44 ["TokenSheet"]
       81 LOADK                            R12 K47 ["StyleEditor"]
       82 LOADK                            R13 K16 ["Standard"]
       83 LOADK                            R14 K50 ["StyleSheetTheme"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R14
       89 SETTABLEKS                       R11 R10 K45 ["ThemeSheet"]
       91 SETTABLEKS                       R10 R9 K16 ["Standard"]
       93 DUPTABLE                         R10 K51 [{"StyleEditor"}]
       94 LOADK                            R12 K52 ["WidgetIcons"]
       95 LOADK                            R13 K17 ["Large"]
       96 LOADK                            R14 K47 ["StyleEditor"]
       97 NEWCLOSURE                       R11 P4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R14
      102 SETTABLEKS                       R11 R10 K47 ["StyleEditor"]
      104 SETTABLEKS                       R10 R9 K17 ["Large"]
      106 DUPTABLE                         R10 K61 [{"Class", "Child", "Descendant", "Enumerator", "GuiState", "Name", "PseudoInstance", "Tag"}]
      107 LOADK                            R12 K47 ["StyleEditor"]
      108 LOADK                            R13 K16 ["Standard"]
      109 LOADK                            R14 K62 ["UI"]
      110 NEWCLOSURE                       R11 P3
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R14
      115 SETTABLEKS                       R11 R10 K53 ["Class"]
      117 LOADK                            R12 K47 ["StyleEditor"]
      118 LOADK                            R13 K16 ["Standard"]
      119 LOADK                            R14 K63 ["StyleSheetChild"]
      120 NEWCLOSURE                       R11 P3
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R11 R10 K54 ["Child"]
      127 LOADK                            R12 K47 ["StyleEditor"]
      128 LOADK                            R13 K16 ["Standard"]
      129 LOADK                            R14 K64 ["StyleSheetDescendant"]
      130 NEWCLOSURE                       R11 P3
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R14
      135 SETTABLEKS                       R11 R10 K55 ["Descendant"]
      137 LOADK                            R12 K47 ["StyleEditor"]
      138 LOADK                            R13 K16 ["Standard"]
      139 LOADK                            R14 K65 ["StyleSheetEnumerator"]
      140 NEWCLOSURE                       R11 P3
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 SETTABLEKS                       R11 R10 K56 ["Enumerator"]
      147 LOADK                            R12 K47 ["StyleEditor"]
      148 LOADK                            R13 K16 ["Standard"]
      149 LOADK                            R14 K66 ["StyleSheetGuiState"]
      150 NEWCLOSURE                       R11 P3
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R11 R10 K57 ["GuiState"]
      157 LOADK                            R12 K47 ["StyleEditor"]
      158 LOADK                            R13 K16 ["Standard"]
      159 LOADK                            R14 K67 ["StyleSheetName"]
      160 NEWCLOSURE                       R11 P3
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R14
      165 SETTABLEKS                       R11 R10 K58 ["Name"]
      167 LOADK                            R12 K47 ["StyleEditor"]
      168 LOADK                            R13 K16 ["Standard"]
      169 LOADK                            R14 K68 ["StyleSheetPseudoInstance"]
      170 NEWCLOSURE                       R11 P3
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R14
      175 SETTABLEKS                       R11 R10 K59 ["PseudoInstance"]
      177 LOADK                            R12 K69 ["TagEditor"]
      178 LOADK                            R13 K16 ["Standard"]
      179 LOADK                            R14 K60 ["Tag"]
      180 NEWCLOSURE                       R11 P3
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R14
      185 SETTABLEKS                       R11 R10 K60 ["Tag"]
      187 SETTABLEKS                       R10 R9 K18 ["Selectors"]
      189 LOADK                            R11 K70 ["Navigation"]
      190 LOADK                            R12 K16 ["Standard"]
      191 LOADK                            R13 K71 ["CloseWidget"]
      192 NEWCLOSURE                       R10 P4
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R13
      197 SETTABLEKS                       R10 R9 K19 ["close"]
      199 LOADK                            R11 K47 ["StyleEditor"]
      200 LOADK                            R12 K17 ["Large"]
      201 LOADK                            R13 K72 ["Color"]
      202 NEWCLOSURE                       R10 P3
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R13
      207 SETTABLEKS                       R10 R9 K20 ["colors"]
      209 LOADK                            R11 K73 ["Clipboard"]
      210 LOADK                            R12 K16 ["Standard"]
      211 LOADK                            R13 K74 ["Copy"]
      212 NEWCLOSURE                       R10 P4
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R13
      217 SETTABLEKS                       R10 R9 K21 ["copy"]
      219 LOADK                            R11 K69 ["TagEditor"]
      220 LOADK                            R12 K16 ["Standard"]
      221 LOADK                            R13 K75 ["Tag_Delete"]
      222 NEWCLOSURE                       R10 P3
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R13
      227 SETTABLEKS                       R10 R9 K22 ["delete"]
      229 LOADK                            R11 K47 ["StyleEditor"]
      230 LOADK                            R12 K16 ["Standard"]
      231 LOADK                            R13 K76 ["Size"]
      232 NEWCLOSURE                       R10 P3
      233 CAPTURE                          VAL R2
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R13
      237 SETTABLEKS                       R10 R9 K23 ["dimensions"]
      239 LOADK                            R11 K73 ["Clipboard"]
      240 LOADK                            R12 K16 ["Standard"]
      241 LOADK                            R13 K77 ["Duplicate"]
      242 NEWCLOSURE                       R10 P4
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R13
      247 SETTABLEKS                       R10 R9 K24 ["duplicate"]
      249 LOADK                            R11 K69 ["TagEditor"]
      250 LOADK                            R12 K16 ["Standard"]
      251 LOADK                            R13 K78 ["Tag_Edit"]
      252 NEWCLOSURE                       R10 P3
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R12
      256 CAPTURE                          VAL R13
      257 SETTABLEKS                       R10 R9 K25 ["edit"]
      259 LOADK                            R11 K47 ["StyleEditor"]
      260 LOADK                            R12 K16 ["Standard"]
      261 LOADK                            R13 K79 ["Typography"]
      262 NEWCLOSURE                       R10 P3
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R13
      267 SETTABLEKS                       R10 R9 K26 ["fonts"]
      269 LOADK                            R11 K47 ["StyleEditor"]
      270 LOADK                            R12 K16 ["Standard"]
      271 LOADK                            R13 K80 ["GridPattern"]
      272 NEWCLOSURE                       R10 P3
      273 CAPTURE                          VAL R2
      274 CAPTURE                          VAL R11
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R13
      277 SETTABLEKS                       R10 R9 K27 ["gridpattern"]
      279 LOADK                            R11 K47 ["StyleEditor"]
      280 LOADK                            R12 K17 ["Large"]
      281 LOADK                            R13 K72 ["Color"]
      282 NEWCLOSURE                       R10 P3
      283 CAPTURE                          VAL R2
      284 CAPTURE                          VAL R11
      285 CAPTURE                          VAL R12
      286 CAPTURE                          VAL R13
      287 SETTABLEKS                       R10 R9 K28 ["palette"]
      289 LOADK                            R11 K47 ["StyleEditor"]
      290 LOADK                            R12 K16 ["Standard"]
      291 LOADK                            R13 K81 ["More"]
      292 NEWCLOSURE                       R10 P3
      293 CAPTURE                          VAL R2
      294 CAPTURE                          VAL R11
      295 CAPTURE                          VAL R12
      296 CAPTURE                          VAL R13
      297 SETTABLEKS                       R10 R9 K29 ["more"]
      299 LOADK                            R11 K47 ["StyleEditor"]
      300 LOADK                            R12 K16 ["Standard"]
      301 LOADK                            R13 K82 ["InsertS"]
      302 NEWCLOSURE                       R10 P3
      303 CAPTURE                          VAL R2
      304 CAPTURE                          VAL R11
      305 CAPTURE                          VAL R12
      306 CAPTURE                          VAL R13
      307 SETTABLEKS                       R10 R9 K30 ["new"]
      309 LOADK                            R11 K47 ["StyleEditor"]
      310 LOADK                            R12 K16 ["Standard"]
      311 LOADK                            R13 K83 ["QuickOpen"]
      312 NEWCLOSURE                       R10 P3
      313 CAPTURE                          VAL R2
      314 CAPTURE                          VAL R11
      315 CAPTURE                          VAL R12
      316 CAPTURE                          VAL R13
      317 SETTABLEKS                       R10 R9 K31 ["open"]
      319 LOADK                            R11 K73 ["Clipboard"]
      320 LOADK                            R12 K16 ["Standard"]
      321 LOADK                            R13 K84 ["Paste"]
      322 NEWCLOSURE                       R10 P4
      323 CAPTURE                          VAL R2
      324 CAPTURE                          VAL R11
      325 CAPTURE                          VAL R12
      326 CAPTURE                          VAL R13
      327 SETTABLEKS                       R10 R9 K32 ["paste"]
      329 LOADK                            R11 K69 ["TagEditor"]
      330 LOADK                            R12 K16 ["Standard"]
      331 LOADK                            R13 K85 ["Tag_Remove"]
      332 NEWCLOSURE                       R10 P3
      333 CAPTURE                          VAL R2
      334 CAPTURE                          VAL R11
      335 CAPTURE                          VAL R12
      336 CAPTURE                          VAL R13
      337 SETTABLEKS                       R10 R9 K33 ["remove"]
      339 LOADK                            R11 K47 ["StyleEditor"]
      340 LOADK                            R12 K16 ["Standard"]
      341 LOADK                            R13 K76 ["Size"]
      342 NEWCLOSURE                       R10 P3
      343 CAPTURE                          VAL R2
      344 CAPTURE                          VAL R11
      345 CAPTURE                          VAL R12
      346 CAPTURE                          VAL R13
      347 SETTABLEKS                       R10 R9 K34 ["sizes"]
      349 LOADK                            R11 K69 ["TagEditor"]
      350 LOADK                            R12 K16 ["Standard"]
      351 LOADK                            R13 K86 ["Tag_Add"]
      352 NEWCLOSURE                       R10 P3
      353 CAPTURE                          VAL R2
      354 CAPTURE                          VAL R11
      355 CAPTURE                          VAL R12
      356 CAPTURE                          VAL R13
      357 SETTABLEKS                       R10 R9 K35 ["set"]
      359 LOADK                            R11 K47 ["StyleEditor"]
      360 LOADK                            R12 K16 ["Standard"]
      361 LOADK                            R13 K79 ["Typography"]
      362 NEWCLOSURE                       R10 P3
      363 CAPTURE                          VAL R2
      364 CAPTURE                          VAL R11
      365 CAPTURE                          VAL R12
      366 CAPTURE                          VAL R13
      367 SETTABLEKS                       R10 R9 K36 ["typography"]
      369 LOADK                            R11 K70 ["Navigation"]
      370 LOADK                            R12 K16 ["Standard"]
      371 LOADK                            R13 K87 ["ArrowUp"]
      372 NEWCLOSURE                       R10 P4
      373 CAPTURE                          VAL R2
      374 CAPTURE                          VAL R11
      375 CAPTURE                          VAL R12
      376 CAPTURE                          VAL R13
      377 SETTABLEKS                       R10 R9 K37 ["arrowUp"]
      379 LOADK                            R11 K70 ["Navigation"]
      380 LOADK                            R12 K16 ["Standard"]
      381 LOADK                            R13 K88 ["ArrowDown"]
      382 NEWCLOSURE                       R10 P4
      383 CAPTURE                          VAL R2
      384 CAPTURE                          VAL R11
      385 CAPTURE                          VAL R12
      386 CAPTURE                          VAL R13
      387 SETTABLEKS                       R10 R9 K38 ["arrowDown"]
      389 JUMPIF                           R3 ; [+1]
      390 JUMPIFNOT                        R4 ; [+9]
      391 LOADK                            R11 K47 ["StyleEditor"]
      392 LOADK                            R12 K16 ["Standard"]
      393 LOADK                            R13 K89 ["AddNoBorder"]
      394 NEWCLOSURE                       R10 P3
      395 CAPTURE                          VAL R2
      396 CAPTURE                          VAL R11
      397 CAPTURE                          VAL R12
      398 CAPTURE                          VAL R13
      399 JUMP                             ; [+1]
      400 LOADNIL                          R10
      401 SETTABLEKS                       R10 R9 K39 ["insert"]
      403 MOVE                             R11 R5
      404 CALL                             R11 0 1
      405 JUMPIFNOT                        R11 ; [+9]
      406 LOADK                            R11 K47 ["StyleEditor"]
      407 LOADK                            R12 K16 ["Standard"]
      408 LOADK                            R13 K90 ["StylingTransition"]
      409 NEWCLOSURE                       R10 P3
      410 CAPTURE                          VAL R2
      411 CAPTURE                          VAL R11
      412 CAPTURE                          VAL R12
      413 CAPTURE                          VAL R13
      414 JUMP                             ; [+1]
      415 LOADNIL                          R10
      416 SETTABLEKS                       R10 R9 K40 ["stylingTransition"]
      418 LOADK                            R11 K41 ["onboarding"]
      419 NEWCLOSURE                       R10 P5
      420 CAPTURE                          VAL R11
      421 SETTABLEKS                       R10 R9 K41 ["onboarding"]
      423 RETURN                           R9 1
