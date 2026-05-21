MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["FFlagMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 3
       18 DUPTABLE                         R3 K12 [{"name", "markdown", "ast"}]
       19 LOADK                            R4 K13 ["incomplete code block"]
       20 SETTABLEKS                       R4 R3 K9 ["name"]
       22 LOADK                            R4 K14 ["# Assistant Response\n\nHere's some code that I am in middle of writing:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"]
       23 SETTABLEKS                       R4 R3 K10 ["markdown"]
       25 DUPTABLE                         R4 K18 [{"name", "index", "offset", "children"}]
       26 LOADK                            R5 K19 ["ROOT"]
       27 SETTABLEKS                       R5 R4 K9 ["name"]
       29 LOADN                            R5 1
       30 SETTABLEKS                       R5 R4 K15 ["index"]
       32 LOADN                            R5 1
       33 SETTABLEKS                       R5 R4 K16 ["offset"]
       35 NEWTABLE                         R5 0 3
       37 DUPTABLE                         R6 K22 [{"index", "isBlock", "name", "offset", "attributes", "children"}]
       38 LOADN                            R7 1
       39 SETTABLEKS                       R7 R6 K15 ["index"]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K20 ["isBlock"]
       44 LOADK                            R7 K23 ["HEADING"]
       45 SETTABLEKS                       R7 R6 K9 ["name"]
       47 LOADN                            R7 0
       48 SETTABLEKS                       R7 R6 K16 ["offset"]
       50 DUPTABLE                         R7 K25 [{"depth"}]
       51 LOADN                            R8 1
       52 SETTABLEKS                       R8 R7 K24 ["depth"]
       54 SETTABLEKS                       R7 R6 K21 ["attributes"]
       56 NEWTABLE                         R7 0 1
       58 DUPTABLE                         R8 K27 [{"children", "index", "name", "offset", "text"}]
       59 NEWTABLE                         R9 0 0
       61 SETTABLEKS                       R9 R8 K17 ["children"]
       63 LOADN                            R9 1
       64 SETTABLEKS                       R9 R8 K15 ["index"]
       66 LOADK                            R9 K28 ["TEXT"]
       67 SETTABLEKS                       R9 R8 K9 ["name"]
       69 LOADN                            R9 2
       70 SETTABLEKS                       R9 R8 K16 ["offset"]
       72 LOADK                            R9 K29 ["Assistant Response"]
       73 SETTABLEKS                       R9 R8 K26 ["text"]
       75 SETLIST                          R7 R8 1 [1]
       77 SETTABLEKS                       R7 R6 K17 ["children"]
       79 DUPTABLE                         R7 K30 [{"index", "name", "offset", "children"}]
       80 LOADN                            R8 2
       81 SETTABLEKS                       R8 R7 K15 ["index"]
       83 LOADK                            R8 K31 ["PARAGRAPH"]
       84 SETTABLEKS                       R8 R7 K9 ["name"]
       86 LOADN                            R8 22
       87 SETTABLEKS                       R8 R7 K16 ["offset"]
       89 NEWTABLE                         R8 0 1
       91 DUPTABLE                         R9 K27 [{"children", "index", "name", "offset", "text"}]
       92 NEWTABLE                         R10 0 0
       94 SETTABLEKS                       R10 R9 K17 ["children"]
       96 LOADN                            R10 1
       97 SETTABLEKS                       R10 R9 K15 ["index"]
       99 LOADK                            R10 K28 ["TEXT"]
      100 SETTABLEKS                       R10 R9 K9 ["name"]
      102 LOADN                            R10 22
      103 SETTABLEKS                       R10 R9 K16 ["offset"]
      105 LOADK                            R10 K32 ["Here's some code that I am in middle of writing:"]
      106 SETTABLEKS                       R10 R9 K26 ["text"]
      108 SETLIST                          R8 R9 1 [1]
      110 SETTABLEKS                       R8 R7 K17 ["children"]
      112 DUPTABLE                         R8 K33 [{"index", "name", "offset", "attributes", "children", "text"}]
      113 LOADN                            R9 3
      114 SETTABLEKS                       R9 R8 K15 ["index"]
      116 LOADK                            R9 K34 ["CODE_BLOCK"]
      117 SETTABLEKS                       R9 R8 K9 ["name"]
      119 LOADN                            R9 72
      120 SETTABLEKS                       R9 R8 K16 ["offset"]
      122 DUPTABLE                         R9 K36 [{"language"}]
      123 LOADK                            R10 K37 ["lua"]
      124 SETTABLEKS                       R10 R9 K35 ["language"]
      126 SETTABLEKS                       R9 R8 K21 ["attributes"]
      128 NEWTABLE                         R9 0 0
      130 SETTABLEKS                       R9 R8 K17 ["children"]
      132 LOADK                            R9 K38 ["-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"]
      133 SETTABLEKS                       R9 R8 K26 ["text"]
      135 SETLIST                          R5 R6 3 [1]
      137 SETTABLEKS                       R5 R4 K17 ["children"]
      139 SETTABLEKS                       R4 R3 K11 ["ast"]
      141 JUMPIFNOT                        R1 ; [+98]
      142 DUPTABLE                         R4 K12 [{"name", "markdown", "ast"}]
      143 LOADK                            R5 K39 ["incomplete inline code"]
      144 SETTABLEKS                       R5 R4 K9 ["name"]
      146 LOADK                            R5 K40 ["Here's some `inline code that doesn't have an end"]
      147 SETTABLEKS                       R5 R4 K10 ["markdown"]
      149 DUPTABLE                         R5 K18 [{"name", "index", "offset", "children"}]
      150 LOADK                            R6 K19 ["ROOT"]
      151 SETTABLEKS                       R6 R5 K9 ["name"]
      153 LOADN                            R6 1
      154 SETTABLEKS                       R6 R5 K15 ["index"]
      156 LOADN                            R6 1
      157 SETTABLEKS                       R6 R5 K16 ["offset"]
      159 NEWTABLE                         R6 0 1
      161 DUPTABLE                         R7 K18 [{"name", "index", "offset", "children"}]
      162 LOADK                            R8 K31 ["PARAGRAPH"]
      163 SETTABLEKS                       R8 R7 K9 ["name"]
      165 LOADN                            R8 1
      166 SETTABLEKS                       R8 R7 K15 ["index"]
      168 LOADN                            R8 0
      169 SETTABLEKS                       R8 R7 K16 ["offset"]
      171 NEWTABLE                         R8 0 2
      173 DUPTABLE                         R9 K41 [{"name", "index", "offset", "text", "children"}]
      174 LOADK                            R10 K28 ["TEXT"]
      175 SETTABLEKS                       R10 R9 K9 ["name"]
      177 LOADN                            R10 1
      178 SETTABLEKS                       R10 R9 K15 ["index"]
      180 LOADN                            R10 0
      181 SETTABLEKS                       R10 R9 K16 ["offset"]
      183 LOADK                            R10 K42 ["Here's some "]
      184 SETTABLEKS                       R10 R9 K26 ["text"]
      186 NEWTABLE                         R10 0 0
      188 SETTABLEKS                       R10 R9 K17 ["children"]
      190 DUPTABLE                         R10 K43 [{"name", "index", "offset", "attributes", "children"}]
      191 LOADK                            R11 K44 ["STYLED_TEXT"]
      192 SETTABLEKS                       R11 R10 K9 ["name"]
      194 LOADN                            R11 2
      195 SETTABLEKS                       R11 R10 K15 ["index"]
      197 LOADN                            R11 13
      198 SETTABLEKS                       R11 R10 K16 ["offset"]
      200 DUPTABLE                         R11 K46 [{"style"}]
      201 LOADK                            R12 K47 ["INLINE_CODE"]
      202 SETTABLEKS                       R12 R11 K45 ["style"]
      204 SETTABLEKS                       R11 R10 K21 ["attributes"]
      206 NEWTABLE                         R11 0 1
      208 DUPTABLE                         R12 K41 [{"name", "index", "offset", "text", "children"}]
      209 LOADK                            R13 K28 ["TEXT"]
      210 SETTABLEKS                       R13 R12 K9 ["name"]
      212 LOADN                            R13 1
      213 SETTABLEKS                       R13 R12 K15 ["index"]
      215 LOADN                            R13 14
      216 SETTABLEKS                       R13 R12 K16 ["offset"]
      218 LOADK                            R13 K48 ["inline code that doesn't have an end"]
      219 SETTABLEKS                       R13 R12 K26 ["text"]
      221 NEWTABLE                         R13 0 0
      223 SETTABLEKS                       R13 R12 K17 ["children"]
      225 SETLIST                          R11 R12 1 [1]
      227 SETTABLEKS                       R11 R10 K17 ["children"]
      229 SETLIST                          R8 R9 2 [1]
      231 SETTABLEKS                       R8 R7 K17 ["children"]
      233 SETLIST                          R6 R7 1 [1]
      235 SETTABLEKS                       R6 R5 K17 ["children"]
      237 SETTABLEKS                       R5 R4 K11 ["ast"]
      239 JUMP                             ; [+75]
      240 DUPTABLE                         R4 K12 [{"name", "markdown", "ast"}]
      241 LOADK                            R5 K39 ["incomplete inline code"]
      242 SETTABLEKS                       R5 R4 K9 ["name"]
      244 LOADK                            R5 K40 ["Here's some `inline code that doesn't have an end"]
      245 SETTABLEKS                       R5 R4 K10 ["markdown"]
      247 DUPTABLE                         R5 K18 [{"name", "index", "offset", "children"}]
      248 LOADK                            R6 K19 ["ROOT"]
      249 SETTABLEKS                       R6 R5 K9 ["name"]
      251 LOADN                            R6 1
      252 SETTABLEKS                       R6 R5 K15 ["index"]
      254 LOADN                            R6 1
      255 SETTABLEKS                       R6 R5 K16 ["offset"]
      257 NEWTABLE                         R6 0 1
      259 DUPTABLE                         R7 K49 [{"index", "offset", "name", "children"}]
      260 LOADN                            R8 1
      261 SETTABLEKS                       R8 R7 K15 ["index"]
      263 LOADN                            R8 0
      264 SETTABLEKS                       R8 R7 K16 ["offset"]
      266 LOADK                            R8 K31 ["PARAGRAPH"]
      267 SETTABLEKS                       R8 R7 K9 ["name"]
      269 NEWTABLE                         R8 0 2
      271 DUPTABLE                         R9 K27 [{"children", "index", "name", "offset", "text"}]
      272 NEWTABLE                         R10 0 0
      274 SETTABLEKS                       R10 R9 K17 ["children"]
      276 LOADN                            R10 1
      277 SETTABLEKS                       R10 R9 K15 ["index"]
      279 LOADK                            R10 K28 ["TEXT"]
      280 SETTABLEKS                       R10 R9 K9 ["name"]
      282 LOADN                            R10 0
      283 SETTABLEKS                       R10 R9 K16 ["offset"]
      285 LOADK                            R10 K42 ["Here's some "]
      286 SETTABLEKS                       R10 R9 K26 ["text"]
      288 DUPTABLE                         R10 K27 [{"children", "index", "name", "offset", "text"}]
      289 NEWTABLE                         R11 0 0
      291 SETTABLEKS                       R11 R10 K17 ["children"]
      293 LOADN                            R11 2
      294 SETTABLEKS                       R11 R10 K15 ["index"]
      296 LOADK                            R11 K47 ["INLINE_CODE"]
      297 SETTABLEKS                       R11 R10 K9 ["name"]
      299 LOADN                            R11 13
      300 SETTABLEKS                       R11 R10 K16 ["offset"]
      302 LOADK                            R11 K48 ["inline code that doesn't have an end"]
      303 SETTABLEKS                       R11 R10 K26 ["text"]
      305 SETLIST                          R8 R9 2 [1]
      307 SETTABLEKS                       R8 R7 K17 ["children"]
      309 SETLIST                          R6 R7 1 [1]
      311 SETTABLEKS                       R6 R5 K17 ["children"]
      313 SETTABLEKS                       R5 R4 K11 ["ast"]
      315 JUMPIFNOT                        R1 ; [+115]
      316 DUPTABLE                         R5 K12 [{"name", "markdown", "ast"}]
      317 LOADK                            R6 K50 ["overlapping styles"]
      318 SETTABLEKS                       R6 R5 K9 ["name"]
      320 LOADK                            R6 K51 ["Here's some *styling _like* this_ with overlapping styles"]
      321 SETTABLEKS                       R6 R5 K10 ["markdown"]
      323 DUPTABLE                         R6 K18 [{"name", "index", "offset", "children"}]
      324 LOADK                            R7 K19 ["ROOT"]
      325 SETTABLEKS                       R7 R6 K9 ["name"]
      327 LOADN                            R7 1
      328 SETTABLEKS                       R7 R6 K15 ["index"]
      330 LOADN                            R7 1
      331 SETTABLEKS                       R7 R6 K16 ["offset"]
      333 NEWTABLE                         R7 0 1
      335 DUPTABLE                         R8 K49 [{"index", "offset", "name", "children"}]
      336 LOADN                            R9 1
      337 SETTABLEKS                       R9 R8 K15 ["index"]
      339 LOADN                            R9 0
      340 SETTABLEKS                       R9 R8 K16 ["offset"]
      342 LOADK                            R9 K31 ["PARAGRAPH"]
      343 SETTABLEKS                       R9 R8 K9 ["name"]
      345 NEWTABLE                         R9 0 3
      347 DUPTABLE                         R10 K52 [{"index", "children", "name", "offset", "text"}]
      348 LOADN                            R11 1
      349 SETTABLEKS                       R11 R10 K15 ["index"]
      351 NEWTABLE                         R11 0 0
      353 SETTABLEKS                       R11 R10 K17 ["children"]
      355 LOADK                            R11 K28 ["TEXT"]
      356 SETTABLEKS                       R11 R10 K9 ["name"]
      358 LOADN                            R11 0
      359 SETTABLEKS                       R11 R10 K16 ["offset"]
      361 LOADK                            R11 K42 ["Here's some "]
      362 SETTABLEKS                       R11 R10 K26 ["text"]
      364 DUPTABLE                         R11 K53 [{"index", "children", "attributes", "name", "offset"}]
      365 LOADN                            R12 2
      366 SETTABLEKS                       R12 R11 K15 ["index"]
      368 NEWTABLE                         R12 0 1
      370 DUPTABLE                         R13 K52 [{"index", "children", "name", "offset", "text"}]
      371 LOADN                            R14 1
      372 SETTABLEKS                       R14 R13 K15 ["index"]
      374 NEWTABLE                         R14 0 0
      376 SETTABLEKS                       R14 R13 K17 ["children"]
      378 LOADK                            R14 K28 ["TEXT"]
      379 SETTABLEKS                       R14 R13 K9 ["name"]
      381 LOADN                            R14 14
      382 SETTABLEKS                       R14 R13 K16 ["offset"]
      384 LOADK                            R14 K54 ["styling _like"]
      385 SETTABLEKS                       R14 R13 K26 ["text"]
      387 SETLIST                          R12 R13 1 [1]
      389 SETTABLEKS                       R12 R11 K17 ["children"]
      391 DUPTABLE                         R12 K46 [{"style"}]
      392 LOADK                            R13 K55 ["BOLD"]
      393 SETTABLEKS                       R13 R12 K45 ["style"]
      395 SETTABLEKS                       R12 R11 K21 ["attributes"]
      397 LOADK                            R12 K44 ["STYLED_TEXT"]
      398 SETTABLEKS                       R12 R11 K9 ["name"]
      400 LOADN                            R12 13
      401 SETTABLEKS                       R12 R11 K16 ["offset"]
      403 DUPTABLE                         R12 K52 [{"index", "children", "name", "offset", "text"}]
      404 LOADN                            R13 3
      405 SETTABLEKS                       R13 R12 K15 ["index"]
      407 NEWTABLE                         R13 0 0
      409 SETTABLEKS                       R13 R12 K17 ["children"]
      411 LOADK                            R13 K28 ["TEXT"]
      412 SETTABLEKS                       R13 R12 K9 ["name"]
      414 LOADN                            R13 28
      415 SETTABLEKS                       R13 R12 K16 ["offset"]
      417 LOADK                            R13 K56 [" this_ with overlapping styles"]
      418 SETTABLEKS                       R13 R12 K26 ["text"]
      420 SETLIST                          R9 R10 3 [1]
      422 SETTABLEKS                       R9 R8 K17 ["children"]
      424 SETLIST                          R7 R8 1 [1]
      426 SETTABLEKS                       R7 R6 K17 ["children"]
      428 SETTABLEKS                       R6 R5 K11 ["ast"]
      430 JUMP                             ; [+1]
      431 LOADNIL                          R5
      432 SETLIST                          R2 R3 3 [1]
      434 RETURN                           R2 1
