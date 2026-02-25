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
       25 DUPCLOSURE                       R3 K9 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R4 K10 [PROTO_3]
       28 CAPTURE                          VAL R2
       29 DUPCLOSURE                       R5 K11 [PROTO_5]
       30 DUPTABLE                         R6 K36 [{"Standard", "Large", "Selectors", "close", "colors", "copy", "delete", "dimensions", "duplicate", "edit", "fonts", "gridpattern", "palette", "more", "new", "open", "paste", "remove", "sizes", "set", "typography", "arrowUp", "arrowDown", "onboarding"}]
       31 DUPTABLE                         R7 K40 [{"DesignSheet", "TokenSheet", "ThemeSheet"}]
       32 LOADK                            R9 K41 ["StyleEditor"]
       33 LOADK                            R10 K12 ["Standard"]
       34 LOADK                            R11 K42 ["StyleSheetDesign"]
       35 NEWCLOSURE                       R8 P3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R10
       39 CAPTURE                          VAL R11
       40 SETTABLEKS                       R8 R7 K37 ["DesignSheet"]
       42 LOADK                            R9 K41 ["StyleEditor"]
       43 LOADK                            R10 K12 ["Standard"]
       44 LOADK                            R11 K43 ["StyleSheetToken"]
       45 NEWCLOSURE                       R8 P3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R11
       50 SETTABLEKS                       R8 R7 K38 ["TokenSheet"]
       52 LOADK                            R9 K41 ["StyleEditor"]
       53 LOADK                            R10 K12 ["Standard"]
       54 LOADK                            R11 K44 ["StyleSheetTheme"]
       55 NEWCLOSURE                       R8 P3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R11
       60 SETTABLEKS                       R8 R7 K39 ["ThemeSheet"]
       62 SETTABLEKS                       R7 R6 K12 ["Standard"]
       64 DUPTABLE                         R7 K45 [{"StyleEditor"}]
       65 LOADK                            R9 K46 ["WidgetIcons"]
       66 LOADK                            R10 K13 ["Large"]
       67 LOADK                            R11 K41 ["StyleEditor"]
       68 NEWCLOSURE                       R8 P4
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R8 R7 K41 ["StyleEditor"]
       75 SETTABLEKS                       R7 R6 K13 ["Large"]
       77 DUPTABLE                         R7 K55 [{"Class", "Child", "Descendant", "Enumerator", "GuiState", "Name", "PseudoInstance", "Tag"}]
       78 LOADK                            R9 K41 ["StyleEditor"]
       79 LOADK                            R10 K12 ["Standard"]
       80 LOADK                            R11 K56 ["UI"]
       81 NEWCLOSURE                       R8 P3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R8 R7 K47 ["Class"]
       88 LOADK                            R9 K41 ["StyleEditor"]
       89 LOADK                            R10 K12 ["Standard"]
       90 LOADK                            R11 K57 ["StyleSheetChild"]
       91 NEWCLOSURE                       R8 P3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 SETTABLEKS                       R8 R7 K48 ["Child"]
       98 LOADK                            R9 K41 ["StyleEditor"]
       99 LOADK                            R10 K12 ["Standard"]
      100 LOADK                            R11 K58 ["StyleSheetDescendant"]
      101 NEWCLOSURE                       R8 P3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R11
      106 SETTABLEKS                       R8 R7 K49 ["Descendant"]
      108 LOADK                            R9 K41 ["StyleEditor"]
      109 LOADK                            R10 K12 ["Standard"]
      110 LOADK                            R11 K59 ["StyleSheetEnumerator"]
      111 NEWCLOSURE                       R8 P3
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 SETTABLEKS                       R8 R7 K50 ["Enumerator"]
      118 LOADK                            R9 K41 ["StyleEditor"]
      119 LOADK                            R10 K12 ["Standard"]
      120 LOADK                            R11 K60 ["StyleSheetGuiState"]
      121 NEWCLOSURE                       R8 P3
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 SETTABLEKS                       R8 R7 K51 ["GuiState"]
      128 LOADK                            R9 K41 ["StyleEditor"]
      129 LOADK                            R10 K12 ["Standard"]
      130 LOADK                            R11 K61 ["StyleSheetName"]
      131 NEWCLOSURE                       R8 P3
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 SETTABLEKS                       R8 R7 K52 ["Name"]
      138 LOADK                            R9 K41 ["StyleEditor"]
      139 LOADK                            R10 K12 ["Standard"]
      140 LOADK                            R11 K62 ["StyleSheetPseudoInstance"]
      141 NEWCLOSURE                       R8 P3
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R11
      146 SETTABLEKS                       R8 R7 K53 ["PseudoInstance"]
      148 LOADK                            R9 K63 ["TagEditor"]
      149 LOADK                            R10 K12 ["Standard"]
      150 LOADK                            R11 K54 ["Tag"]
      151 NEWCLOSURE                       R8 P3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R11
      156 SETTABLEKS                       R8 R7 K54 ["Tag"]
      158 SETTABLEKS                       R7 R6 K14 ["Selectors"]
      160 LOADK                            R8 K64 ["Navigation"]
      161 LOADK                            R9 K12 ["Standard"]
      162 LOADK                            R10 K65 ["CloseWidget"]
      163 NEWCLOSURE                       R7 P4
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R10
      168 SETTABLEKS                       R7 R6 K15 ["close"]
      170 LOADK                            R8 K41 ["StyleEditor"]
      171 LOADK                            R9 K13 ["Large"]
      172 LOADK                            R10 K66 ["Color"]
      173 NEWCLOSURE                       R7 P3
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R10
      178 SETTABLEKS                       R7 R6 K16 ["colors"]
      180 LOADK                            R8 K67 ["Clipboard"]
      181 LOADK                            R9 K12 ["Standard"]
      182 LOADK                            R10 K68 ["Copy"]
      183 NEWCLOSURE                       R7 P4
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R10
      188 SETTABLEKS                       R7 R6 K17 ["copy"]
      190 LOADK                            R8 K63 ["TagEditor"]
      191 LOADK                            R9 K12 ["Standard"]
      192 LOADK                            R10 K69 ["Tag_Delete"]
      193 NEWCLOSURE                       R7 P3
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R10
      198 SETTABLEKS                       R7 R6 K18 ["delete"]
      200 LOADK                            R8 K41 ["StyleEditor"]
      201 LOADK                            R9 K12 ["Standard"]
      202 LOADK                            R10 K70 ["Size"]
      203 NEWCLOSURE                       R7 P3
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R10
      208 SETTABLEKS                       R7 R6 K19 ["dimensions"]
      210 LOADK                            R8 K67 ["Clipboard"]
      211 LOADK                            R9 K12 ["Standard"]
      212 LOADK                            R10 K71 ["Duplicate"]
      213 NEWCLOSURE                       R7 P4
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R10
      218 SETTABLEKS                       R7 R6 K20 ["duplicate"]
      220 LOADK                            R8 K63 ["TagEditor"]
      221 LOADK                            R9 K12 ["Standard"]
      222 LOADK                            R10 K72 ["Tag_Edit"]
      223 NEWCLOSURE                       R7 P3
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R10
      228 SETTABLEKS                       R7 R6 K21 ["edit"]
      230 LOADK                            R8 K41 ["StyleEditor"]
      231 LOADK                            R9 K12 ["Standard"]
      232 LOADK                            R10 K73 ["Typography"]
      233 NEWCLOSURE                       R7 P3
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R10
      238 SETTABLEKS                       R7 R6 K22 ["fonts"]
      240 LOADK                            R8 K41 ["StyleEditor"]
      241 LOADK                            R9 K12 ["Standard"]
      242 LOADK                            R10 K74 ["GridPattern"]
      243 NEWCLOSURE                       R7 P3
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R10
      248 SETTABLEKS                       R7 R6 K23 ["gridpattern"]
      250 LOADK                            R8 K41 ["StyleEditor"]
      251 LOADK                            R9 K13 ["Large"]
      252 LOADK                            R10 K66 ["Color"]
      253 NEWCLOSURE                       R7 P3
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R10
      258 SETTABLEKS                       R7 R6 K24 ["palette"]
      260 LOADK                            R8 K41 ["StyleEditor"]
      261 LOADK                            R9 K12 ["Standard"]
      262 LOADK                            R10 K75 ["More"]
      263 NEWCLOSURE                       R7 P3
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R10
      268 SETTABLEKS                       R7 R6 K25 ["more"]
      270 LOADK                            R8 K41 ["StyleEditor"]
      271 LOADK                            R9 K12 ["Standard"]
      272 LOADK                            R10 K76 ["InsertS"]
      273 NEWCLOSURE                       R7 P3
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R9
      277 CAPTURE                          VAL R10
      278 SETTABLEKS                       R7 R6 K26 ["new"]
      280 LOADK                            R8 K41 ["StyleEditor"]
      281 LOADK                            R9 K12 ["Standard"]
      282 LOADK                            R10 K77 ["QuickOpen"]
      283 NEWCLOSURE                       R7 P3
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R8
      286 CAPTURE                          VAL R9
      287 CAPTURE                          VAL R10
      288 SETTABLEKS                       R7 R6 K27 ["open"]
      290 LOADK                            R8 K67 ["Clipboard"]
      291 LOADK                            R9 K12 ["Standard"]
      292 LOADK                            R10 K78 ["Paste"]
      293 NEWCLOSURE                       R7 P4
      294 CAPTURE                          VAL R2
      295 CAPTURE                          VAL R8
      296 CAPTURE                          VAL R9
      297 CAPTURE                          VAL R10
      298 SETTABLEKS                       R7 R6 K28 ["paste"]
      300 LOADK                            R8 K63 ["TagEditor"]
      301 LOADK                            R9 K12 ["Standard"]
      302 LOADK                            R10 K79 ["Tag_Remove"]
      303 NEWCLOSURE                       R7 P3
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R8
      306 CAPTURE                          VAL R9
      307 CAPTURE                          VAL R10
      308 SETTABLEKS                       R7 R6 K29 ["remove"]
      310 LOADK                            R8 K41 ["StyleEditor"]
      311 LOADK                            R9 K12 ["Standard"]
      312 LOADK                            R10 K70 ["Size"]
      313 NEWCLOSURE                       R7 P3
      314 CAPTURE                          VAL R2
      315 CAPTURE                          VAL R8
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R10
      318 SETTABLEKS                       R7 R6 K30 ["sizes"]
      320 LOADK                            R8 K63 ["TagEditor"]
      321 LOADK                            R9 K12 ["Standard"]
      322 LOADK                            R10 K80 ["Tag_Add"]
      323 NEWCLOSURE                       R7 P3
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R8
      326 CAPTURE                          VAL R9
      327 CAPTURE                          VAL R10
      328 SETTABLEKS                       R7 R6 K31 ["set"]
      330 LOADK                            R8 K41 ["StyleEditor"]
      331 LOADK                            R9 K12 ["Standard"]
      332 LOADK                            R10 K73 ["Typography"]
      333 NEWCLOSURE                       R7 P3
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R8
      336 CAPTURE                          VAL R9
      337 CAPTURE                          VAL R10
      338 SETTABLEKS                       R7 R6 K32 ["typography"]
      340 LOADK                            R8 K64 ["Navigation"]
      341 LOADK                            R9 K12 ["Standard"]
      342 LOADK                            R10 K81 ["ArrowUp"]
      343 NEWCLOSURE                       R7 P4
      344 CAPTURE                          VAL R2
      345 CAPTURE                          VAL R8
      346 CAPTURE                          VAL R9
      347 CAPTURE                          VAL R10
      348 SETTABLEKS                       R7 R6 K33 ["arrowUp"]
      350 LOADK                            R8 K64 ["Navigation"]
      351 LOADK                            R9 K12 ["Standard"]
      352 LOADK                            R10 K82 ["ArrowDown"]
      353 NEWCLOSURE                       R7 P4
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R8
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R10
      358 SETTABLEKS                       R7 R6 K34 ["arrowDown"]
      360 LOADK                            R8 K35 ["onboarding"]
      361 NEWCLOSURE                       R7 P5
      362 CAPTURE                          VAL R8
      363 SETTABLEKS                       R7 R6 K35 ["onboarding"]
      365 RETURN                           R6 1
