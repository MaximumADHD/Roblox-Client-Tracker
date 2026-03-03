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
       35 DUPCLOSURE                       R4 K11 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R5 K12 [PROTO_3]
       38 CAPTURE                          VAL R2
       39 DUPCLOSURE                       R6 K13 [PROTO_5]
       40 DUPTABLE                         R7 K38 [{"Standard", "Large", "Selectors", "close", "colors", "copy", "delete", "dimensions", "duplicate", "edit", "fonts", "gridpattern", "palette", "more", "new", "open", "paste", "remove", "sizes", "set", "typography", "arrowUp", "arrowDown", "onboarding"}]
       41 DUPTABLE                         R8 K42 [{"DesignSheet", "TokenSheet", "ThemeSheet"}]
       42 LOADK                            R10 K43 ["StyleEditor"]
       43 LOADK                            R11 K14 ["Standard"]
       44 LOADK                            R12 K44 ["StyleSheetDesign"]
       45 NEWCLOSURE                       R9 P3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R10
       48 CAPTURE                          VAL R11
       49 CAPTURE                          VAL R12
       50 SETTABLEKS                       R9 R8 K39 ["DesignSheet"]
       52 LOADK                            R10 K43 ["StyleEditor"]
       53 LOADK                            R11 K14 ["Standard"]
       54 LOADK                            R12 K45 ["StyleSheetToken"]
       55 NEWCLOSURE                       R9 P3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R12
       60 SETTABLEKS                       R9 R8 K40 ["TokenSheet"]
       62 LOADK                            R10 K43 ["StyleEditor"]
       63 LOADK                            R11 K14 ["Standard"]
       64 LOADK                            R12 K46 ["StyleSheetTheme"]
       65 NEWCLOSURE                       R9 P3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R12
       70 SETTABLEKS                       R9 R8 K41 ["ThemeSheet"]
       72 SETTABLEKS                       R8 R7 K14 ["Standard"]
       74 DUPTABLE                         R8 K47 [{"StyleEditor"}]
       75 LOADK                            R10 K48 ["WidgetIcons"]
       76 LOADK                            R11 K15 ["Large"]
       77 LOADK                            R12 K43 ["StyleEditor"]
       78 NEWCLOSURE                       R9 P4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R12
       83 SETTABLEKS                       R9 R8 K43 ["StyleEditor"]
       85 SETTABLEKS                       R8 R7 K15 ["Large"]
       87 DUPTABLE                         R8 K57 [{"Class", "Child", "Descendant", "Enumerator", "GuiState", "Name", "PseudoInstance", "Tag"}]
       88 LOADK                            R10 K43 ["StyleEditor"]
       89 LOADK                            R11 K14 ["Standard"]
       90 LOADK                            R12 K58 ["UI"]
       91 NEWCLOSURE                       R9 P3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 SETTABLEKS                       R9 R8 K49 ["Class"]
       98 LOADK                            R10 K43 ["StyleEditor"]
       99 LOADK                            R11 K14 ["Standard"]
      100 LOADK                            R12 K59 ["StyleSheetChild"]
      101 NEWCLOSURE                       R9 P3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R12
      106 SETTABLEKS                       R9 R8 K50 ["Child"]
      108 LOADK                            R10 K43 ["StyleEditor"]
      109 LOADK                            R11 K14 ["Standard"]
      110 LOADK                            R12 K60 ["StyleSheetDescendant"]
      111 NEWCLOSURE                       R9 P3
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 SETTABLEKS                       R9 R8 K51 ["Descendant"]
      118 LOADK                            R10 K43 ["StyleEditor"]
      119 LOADK                            R11 K14 ["Standard"]
      120 LOADK                            R12 K61 ["StyleSheetEnumerator"]
      121 NEWCLOSURE                       R9 P3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R12
      126 SETTABLEKS                       R9 R8 K52 ["Enumerator"]
      128 LOADK                            R10 K43 ["StyleEditor"]
      129 LOADK                            R11 K14 ["Standard"]
      130 LOADK                            R12 K62 ["StyleSheetGuiState"]
      131 NEWCLOSURE                       R9 P3
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R9 R8 K53 ["GuiState"]
      138 LOADK                            R10 K43 ["StyleEditor"]
      139 LOADK                            R11 K14 ["Standard"]
      140 LOADK                            R12 K63 ["StyleSheetName"]
      141 NEWCLOSURE                       R9 P3
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R9 R8 K54 ["Name"]
      148 LOADK                            R10 K43 ["StyleEditor"]
      149 LOADK                            R11 K14 ["Standard"]
      150 LOADK                            R12 K64 ["StyleSheetPseudoInstance"]
      151 NEWCLOSURE                       R9 P3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 SETTABLEKS                       R9 R8 K55 ["PseudoInstance"]
      158 LOADK                            R10 K65 ["TagEditor"]
      159 LOADK                            R11 K14 ["Standard"]
      160 LOADK                            R12 K56 ["Tag"]
      161 NEWCLOSURE                       R9 P3
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 SETTABLEKS                       R9 R8 K56 ["Tag"]
      168 SETTABLEKS                       R8 R7 K16 ["Selectors"]
      170 LOADK                            R9 K66 ["Navigation"]
      171 LOADK                            R10 K14 ["Standard"]
      172 LOADK                            R11 K67 ["CloseWidget"]
      173 NEWCLOSURE                       R8 P4
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R11
      178 SETTABLEKS                       R8 R7 K17 ["close"]
      180 LOADK                            R9 K43 ["StyleEditor"]
      181 LOADK                            R10 K15 ["Large"]
      182 LOADK                            R11 K68 ["Color"]
      183 NEWCLOSURE                       R8 P3
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R11
      188 SETTABLEKS                       R8 R7 K18 ["colors"]
      190 LOADK                            R9 K69 ["Clipboard"]
      191 LOADK                            R10 K14 ["Standard"]
      192 LOADK                            R11 K70 ["Copy"]
      193 NEWCLOSURE                       R8 P4
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R11
      198 SETTABLEKS                       R8 R7 K19 ["copy"]
      200 LOADK                            R9 K65 ["TagEditor"]
      201 LOADK                            R10 K14 ["Standard"]
      202 LOADK                            R11 K71 ["Tag_Delete"]
      203 NEWCLOSURE                       R8 P3
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R11
      208 SETTABLEKS                       R8 R7 K20 ["delete"]
      210 LOADK                            R9 K43 ["StyleEditor"]
      211 LOADK                            R10 K14 ["Standard"]
      212 LOADK                            R11 K72 ["Size"]
      213 NEWCLOSURE                       R8 P3
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R11
      218 SETTABLEKS                       R8 R7 K21 ["dimensions"]
      220 LOADK                            R9 K69 ["Clipboard"]
      221 LOADK                            R10 K14 ["Standard"]
      222 LOADK                            R11 K73 ["Duplicate"]
      223 NEWCLOSURE                       R8 P4
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R11
      228 SETTABLEKS                       R8 R7 K22 ["duplicate"]
      230 LOADK                            R9 K65 ["TagEditor"]
      231 LOADK                            R10 K14 ["Standard"]
      232 LOADK                            R11 K74 ["Tag_Edit"]
      233 NEWCLOSURE                       R8 P3
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R11
      238 SETTABLEKS                       R8 R7 K23 ["edit"]
      240 LOADK                            R9 K43 ["StyleEditor"]
      241 LOADK                            R10 K14 ["Standard"]
      242 LOADK                            R11 K75 ["Typography"]
      243 NEWCLOSURE                       R8 P3
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R11
      248 SETTABLEKS                       R8 R7 K24 ["fonts"]
      250 LOADK                            R9 K43 ["StyleEditor"]
      251 LOADK                            R10 K14 ["Standard"]
      252 LOADK                            R11 K76 ["GridPattern"]
      253 NEWCLOSURE                       R8 P3
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R9
      256 CAPTURE                          VAL R10
      257 CAPTURE                          VAL R11
      258 SETTABLEKS                       R8 R7 K25 ["gridpattern"]
      260 LOADK                            R9 K43 ["StyleEditor"]
      261 LOADK                            R10 K15 ["Large"]
      262 LOADK                            R11 K68 ["Color"]
      263 NEWCLOSURE                       R8 P3
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R11
      268 SETTABLEKS                       R8 R7 K26 ["palette"]
      270 LOADK                            R9 K43 ["StyleEditor"]
      271 LOADK                            R10 K14 ["Standard"]
      272 LOADK                            R11 K77 ["More"]
      273 NEWCLOSURE                       R8 P3
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R9
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R11
      278 SETTABLEKS                       R8 R7 K27 ["more"]
      280 LOADK                            R9 K43 ["StyleEditor"]
      281 LOADK                            R10 K14 ["Standard"]
      282 LOADK                            R11 K78 ["InsertS"]
      283 NEWCLOSURE                       R8 P3
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R9
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R11
      288 SETTABLEKS                       R8 R7 K28 ["new"]
      290 LOADK                            R9 K43 ["StyleEditor"]
      291 LOADK                            R10 K14 ["Standard"]
      292 LOADK                            R11 K79 ["QuickOpen"]
      293 NEWCLOSURE                       R8 P3
      294 CAPTURE                          VAL R2
      295 CAPTURE                          VAL R9
      296 CAPTURE                          VAL R10
      297 CAPTURE                          VAL R11
      298 SETTABLEKS                       R8 R7 K29 ["open"]
      300 LOADK                            R9 K69 ["Clipboard"]
      301 LOADK                            R10 K14 ["Standard"]
      302 LOADK                            R11 K80 ["Paste"]
      303 NEWCLOSURE                       R8 P4
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R9
      306 CAPTURE                          VAL R10
      307 CAPTURE                          VAL R11
      308 SETTABLEKS                       R8 R7 K30 ["paste"]
      310 LOADK                            R9 K65 ["TagEditor"]
      311 LOADK                            R10 K14 ["Standard"]
      312 LOADK                            R11 K81 ["Tag_Remove"]
      313 NEWCLOSURE                       R8 P3
      314 CAPTURE                          VAL R2
      315 CAPTURE                          VAL R9
      316 CAPTURE                          VAL R10
      317 CAPTURE                          VAL R11
      318 SETTABLEKS                       R8 R7 K31 ["remove"]
      320 LOADK                            R9 K43 ["StyleEditor"]
      321 LOADK                            R10 K14 ["Standard"]
      322 LOADK                            R11 K72 ["Size"]
      323 NEWCLOSURE                       R8 P3
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R9
      326 CAPTURE                          VAL R10
      327 CAPTURE                          VAL R11
      328 SETTABLEKS                       R8 R7 K32 ["sizes"]
      330 LOADK                            R9 K65 ["TagEditor"]
      331 LOADK                            R10 K14 ["Standard"]
      332 LOADK                            R11 K82 ["Tag_Add"]
      333 NEWCLOSURE                       R8 P3
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R9
      336 CAPTURE                          VAL R10
      337 CAPTURE                          VAL R11
      338 SETTABLEKS                       R8 R7 K33 ["set"]
      340 LOADK                            R9 K43 ["StyleEditor"]
      341 LOADK                            R10 K14 ["Standard"]
      342 LOADK                            R11 K75 ["Typography"]
      343 NEWCLOSURE                       R8 P3
      344 CAPTURE                          VAL R2
      345 CAPTURE                          VAL R9
      346 CAPTURE                          VAL R10
      347 CAPTURE                          VAL R11
      348 SETTABLEKS                       R8 R7 K34 ["typography"]
      350 LOADK                            R9 K66 ["Navigation"]
      351 LOADK                            R10 K14 ["Standard"]
      352 LOADK                            R11 K83 ["ArrowUp"]
      353 NEWCLOSURE                       R8 P4
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R9
      356 CAPTURE                          VAL R10
      357 CAPTURE                          VAL R11
      358 SETTABLEKS                       R8 R7 K35 ["arrowUp"]
      360 LOADK                            R9 K66 ["Navigation"]
      361 LOADK                            R10 K14 ["Standard"]
      362 LOADK                            R11 K84 ["ArrowDown"]
      363 NEWCLOSURE                       R8 P4
      364 CAPTURE                          VAL R2
      365 CAPTURE                          VAL R9
      366 CAPTURE                          VAL R10
      367 CAPTURE                          VAL R11
      368 SETTABLEKS                       R8 R7 K36 ["arrowDown"]
      370 LOADK                            R9 K37 ["onboarding"]
      371 NEWCLOSURE                       R8 P5
      372 CAPTURE                          VAL R9
      373 SETTABLEKS                       R8 R7 K37 ["onboarding"]
      375 JUMPIFNOT                        R3 ; [+10]
      376 LOADK                            R9 K43 ["StyleEditor"]
      377 LOADK                            R10 K14 ["Standard"]
      378 LOADK                            R11 K85 ["AddNoBorder"]
      379 NEWCLOSURE                       R8 P3
      380 CAPTURE                          VAL R2
      381 CAPTURE                          VAL R9
      382 CAPTURE                          VAL R10
      383 CAPTURE                          VAL R11
      384 SETTABLEKS                       R8 R7 K86 ["insert"]
      386 RETURN                           R7 1
