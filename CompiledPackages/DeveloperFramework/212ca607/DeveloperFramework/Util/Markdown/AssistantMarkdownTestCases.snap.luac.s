MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Util"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 NEWTABLE                         R2 0 3
       19 DUPTABLE                         R3 K12 [{"name", "markdown", "ast"}]
       20 LOADK                            R4 K13 ["incomplete code block"]
       21 SETTABLEKS                       R4 R3 K9 ["name"]
       23 LOADK                            R4 K14 ["# Assistant Response\n\nHere's some code that I am in middle of writing:\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"]
       24 SETTABLEKS                       R4 R3 K10 ["markdown"]
       26 DUPTABLE                         R4 K18 [{"name", "index", "offset", "children"}]
       27 LOADK                            R5 K19 ["ROOT"]
       28 SETTABLEKS                       R5 R4 K9 ["name"]
       30 LOADN                            R5 1
       31 SETTABLEKS                       R5 R4 K15 ["index"]
       33 LOADN                            R5 1
       34 SETTABLEKS                       R5 R4 K16 ["offset"]
       36 NEWTABLE                         R5 0 3
       38 DUPTABLE                         R6 K22 [{"index", "isBlock", "name", "offset", "attributes", "children"}]
       39 LOADN                            R7 1
       40 SETTABLEKS                       R7 R6 K15 ["index"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K20 ["isBlock"]
       45 LOADK                            R7 K23 ["HEADING"]
       46 SETTABLEKS                       R7 R6 K9 ["name"]
       48 LOADN                            R7 0
       49 SETTABLEKS                       R7 R6 K16 ["offset"]
       51 DUPTABLE                         R7 K25 [{"depth"}]
       52 LOADN                            R8 1
       53 SETTABLEKS                       R8 R7 K24 ["depth"]
       55 SETTABLEKS                       R7 R6 K21 ["attributes"]
       57 NEWTABLE                         R7 0 1
       59 DUPTABLE                         R8 K27 [{"children", "index", "name", "offset", "text"}]
       60 NEWTABLE                         R9 0 0
       62 SETTABLEKS                       R9 R8 K17 ["children"]
       64 LOADN                            R9 1
       65 SETTABLEKS                       R9 R8 K15 ["index"]
       67 LOADK                            R9 K28 ["TEXT"]
       68 SETTABLEKS                       R9 R8 K9 ["name"]
       70 LOADN                            R9 2
       71 SETTABLEKS                       R9 R8 K16 ["offset"]
       73 LOADK                            R9 K29 ["Assistant Response"]
       74 SETTABLEKS                       R9 R8 K26 ["text"]
       76 SETLIST                          R7 R8 1 [1]
       78 SETTABLEKS                       R7 R6 K17 ["children"]
       80 DUPTABLE                         R7 K30 [{"index", "name", "offset", "children"}]
       81 LOADN                            R8 2
       82 SETTABLEKS                       R8 R7 K15 ["index"]
       84 LOADK                            R8 K31 ["PARAGRAPH"]
       85 SETTABLEKS                       R8 R7 K9 ["name"]
       87 LOADN                            R8 22
       88 SETTABLEKS                       R8 R7 K16 ["offset"]
       90 NEWTABLE                         R8 0 1
       92 DUPTABLE                         R9 K27 [{"children", "index", "name", "offset", "text"}]
       93 NEWTABLE                         R10 0 0
       95 SETTABLEKS                       R10 R9 K17 ["children"]
       97 LOADN                            R10 1
       98 SETTABLEKS                       R10 R9 K15 ["index"]
      100 LOADK                            R10 K28 ["TEXT"]
      101 SETTABLEKS                       R10 R9 K9 ["name"]
      103 LOADN                            R10 22
      104 SETTABLEKS                       R10 R9 K16 ["offset"]
      106 LOADK                            R10 K32 ["Here's some code that I am in middle of writing:"]
      107 SETTABLEKS                       R10 R9 K26 ["text"]
      109 SETLIST                          R8 R9 1 [1]
      111 SETTABLEKS                       R8 R7 K17 ["children"]
      113 DUPTABLE                         R8 K33 [{"index", "name", "offset", "attributes", "children", "text"}]
      114 LOADN                            R9 3
      115 SETTABLEKS                       R9 R8 K15 ["index"]
      117 LOADK                            R9 K34 ["CODE_BLOCK"]
      118 SETTABLEKS                       R9 R8 K9 ["name"]
      120 LOADN                            R9 72
      121 SETTABLEKS                       R9 R8 K16 ["offset"]
      123 DUPTABLE                         R9 K36 [{"language"}]
      124 LOADK                            R10 K37 ["lua"]
      125 SETTABLEKS                       R10 R9 K35 ["language"]
      127 SETTABLEKS                       R9 R8 K21 ["attributes"]
      129 NEWTABLE                         R9 0 0
      131 SETTABLEKS                       R9 R8 K17 ["children"]
      133 LOADK                            R9 K38 ["-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)"]
      134 SETTABLEKS                       R9 R8 K26 ["text"]
      136 SETLIST                          R5 R6 3 [1]
      138 SETTABLEKS                       R5 R4 K17 ["children"]
      140 SETTABLEKS                       R4 R3 K11 ["ast"]
      142 JUMPIFNOT                        R1 ; [+98]
      143 DUPTABLE                         R4 K12 [{"name", "markdown", "ast"}]
      144 LOADK                            R5 K39 ["incomplete inline code"]
      145 SETTABLEKS                       R5 R4 K9 ["name"]
      147 LOADK                            R5 K40 ["Here's some `inline code that doesn't have an end"]
      148 SETTABLEKS                       R5 R4 K10 ["markdown"]
      150 DUPTABLE                         R5 K18 [{"name", "index", "offset", "children"}]
      151 LOADK                            R6 K19 ["ROOT"]
      152 SETTABLEKS                       R6 R5 K9 ["name"]
      154 LOADN                            R6 1
      155 SETTABLEKS                       R6 R5 K15 ["index"]
      157 LOADN                            R6 1
      158 SETTABLEKS                       R6 R5 K16 ["offset"]
      160 NEWTABLE                         R6 0 1
      162 DUPTABLE                         R7 K18 [{"name", "index", "offset", "children"}]
      163 LOADK                            R8 K31 ["PARAGRAPH"]
      164 SETTABLEKS                       R8 R7 K9 ["name"]
      166 LOADN                            R8 1
      167 SETTABLEKS                       R8 R7 K15 ["index"]
      169 LOADN                            R8 0
      170 SETTABLEKS                       R8 R7 K16 ["offset"]
      172 NEWTABLE                         R8 0 2
      174 DUPTABLE                         R9 K41 [{"name", "index", "offset", "text", "children"}]
      175 LOADK                            R10 K28 ["TEXT"]
      176 SETTABLEKS                       R10 R9 K9 ["name"]
      178 LOADN                            R10 1
      179 SETTABLEKS                       R10 R9 K15 ["index"]
      181 LOADN                            R10 0
      182 SETTABLEKS                       R10 R9 K16 ["offset"]
      184 LOADK                            R10 K42 ["Here's some "]
      185 SETTABLEKS                       R10 R9 K26 ["text"]
      187 NEWTABLE                         R10 0 0
      189 SETTABLEKS                       R10 R9 K17 ["children"]
      191 DUPTABLE                         R10 K43 [{"name", "index", "offset", "attributes", "children"}]
      192 LOADK                            R11 K44 ["STYLED_TEXT"]
      193 SETTABLEKS                       R11 R10 K9 ["name"]
      195 LOADN                            R11 2
      196 SETTABLEKS                       R11 R10 K15 ["index"]
      198 LOADN                            R11 13
      199 SETTABLEKS                       R11 R10 K16 ["offset"]
      201 DUPTABLE                         R11 K46 [{"style"}]
      202 LOADK                            R12 K47 ["INLINE_CODE"]
      203 SETTABLEKS                       R12 R11 K45 ["style"]
      205 SETTABLEKS                       R11 R10 K21 ["attributes"]
      207 NEWTABLE                         R11 0 1
      209 DUPTABLE                         R12 K41 [{"name", "index", "offset", "text", "children"}]
      210 LOADK                            R13 K28 ["TEXT"]
      211 SETTABLEKS                       R13 R12 K9 ["name"]
      213 LOADN                            R13 1
      214 SETTABLEKS                       R13 R12 K15 ["index"]
      216 LOADN                            R13 14
      217 SETTABLEKS                       R13 R12 K16 ["offset"]
      219 LOADK                            R13 K48 ["inline code that doesn't have an end"]
      220 SETTABLEKS                       R13 R12 K26 ["text"]
      222 NEWTABLE                         R13 0 0
      224 SETTABLEKS                       R13 R12 K17 ["children"]
      226 SETLIST                          R11 R12 1 [1]
      228 SETTABLEKS                       R11 R10 K17 ["children"]
      230 SETLIST                          R8 R9 2 [1]
      232 SETTABLEKS                       R8 R7 K17 ["children"]
      234 SETLIST                          R6 R7 1 [1]
      236 SETTABLEKS                       R6 R5 K17 ["children"]
      238 SETTABLEKS                       R5 R4 K11 ["ast"]
      240 JUMP                             ; [+75]
      241 DUPTABLE                         R4 K12 [{"name", "markdown", "ast"}]
      242 LOADK                            R5 K39 ["incomplete inline code"]
      243 SETTABLEKS                       R5 R4 K9 ["name"]
      245 LOADK                            R5 K40 ["Here's some `inline code that doesn't have an end"]
      246 SETTABLEKS                       R5 R4 K10 ["markdown"]
      248 DUPTABLE                         R5 K18 [{"name", "index", "offset", "children"}]
      249 LOADK                            R6 K19 ["ROOT"]
      250 SETTABLEKS                       R6 R5 K9 ["name"]
      252 LOADN                            R6 1
      253 SETTABLEKS                       R6 R5 K15 ["index"]
      255 LOADN                            R6 1
      256 SETTABLEKS                       R6 R5 K16 ["offset"]
      258 NEWTABLE                         R6 0 1
      260 DUPTABLE                         R7 K49 [{"index", "offset", "name", "children"}]
      261 LOADN                            R8 1
      262 SETTABLEKS                       R8 R7 K15 ["index"]
      264 LOADN                            R8 0
      265 SETTABLEKS                       R8 R7 K16 ["offset"]
      267 LOADK                            R8 K31 ["PARAGRAPH"]
      268 SETTABLEKS                       R8 R7 K9 ["name"]
      270 NEWTABLE                         R8 0 2
      272 DUPTABLE                         R9 K27 [{"children", "index", "name", "offset", "text"}]
      273 NEWTABLE                         R10 0 0
      275 SETTABLEKS                       R10 R9 K17 ["children"]
      277 LOADN                            R10 1
      278 SETTABLEKS                       R10 R9 K15 ["index"]
      280 LOADK                            R10 K28 ["TEXT"]
      281 SETTABLEKS                       R10 R9 K9 ["name"]
      283 LOADN                            R10 0
      284 SETTABLEKS                       R10 R9 K16 ["offset"]
      286 LOADK                            R10 K42 ["Here's some "]
      287 SETTABLEKS                       R10 R9 K26 ["text"]
      289 DUPTABLE                         R10 K27 [{"children", "index", "name", "offset", "text"}]
      290 NEWTABLE                         R11 0 0
      292 SETTABLEKS                       R11 R10 K17 ["children"]
      294 LOADN                            R11 2
      295 SETTABLEKS                       R11 R10 K15 ["index"]
      297 LOADK                            R11 K47 ["INLINE_CODE"]
      298 SETTABLEKS                       R11 R10 K9 ["name"]
      300 LOADN                            R11 13
      301 SETTABLEKS                       R11 R10 K16 ["offset"]
      303 LOADK                            R11 K48 ["inline code that doesn't have an end"]
      304 SETTABLEKS                       R11 R10 K26 ["text"]
      306 SETLIST                          R8 R9 2 [1]
      308 SETTABLEKS                       R8 R7 K17 ["children"]
      310 SETLIST                          R6 R7 1 [1]
      312 SETTABLEKS                       R6 R5 K17 ["children"]
      314 SETTABLEKS                       R5 R4 K11 ["ast"]
      316 JUMPIFNOT                        R1 ; [+115]
      317 DUPTABLE                         R5 K12 [{"name", "markdown", "ast"}]
      318 LOADK                            R6 K50 ["overlapping styles"]
      319 SETTABLEKS                       R6 R5 K9 ["name"]
      321 LOADK                            R6 K51 ["Here's some *styling _like* this_ with overlapping styles"]
      322 SETTABLEKS                       R6 R5 K10 ["markdown"]
      324 DUPTABLE                         R6 K18 [{"name", "index", "offset", "children"}]
      325 LOADK                            R7 K19 ["ROOT"]
      326 SETTABLEKS                       R7 R6 K9 ["name"]
      328 LOADN                            R7 1
      329 SETTABLEKS                       R7 R6 K15 ["index"]
      331 LOADN                            R7 1
      332 SETTABLEKS                       R7 R6 K16 ["offset"]
      334 NEWTABLE                         R7 0 1
      336 DUPTABLE                         R8 K49 [{"index", "offset", "name", "children"}]
      337 LOADN                            R9 1
      338 SETTABLEKS                       R9 R8 K15 ["index"]
      340 LOADN                            R9 0
      341 SETTABLEKS                       R9 R8 K16 ["offset"]
      343 LOADK                            R9 K31 ["PARAGRAPH"]
      344 SETTABLEKS                       R9 R8 K9 ["name"]
      346 NEWTABLE                         R9 0 3
      348 DUPTABLE                         R10 K52 [{"index", "children", "name", "offset", "text"}]
      349 LOADN                            R11 1
      350 SETTABLEKS                       R11 R10 K15 ["index"]
      352 NEWTABLE                         R11 0 0
      354 SETTABLEKS                       R11 R10 K17 ["children"]
      356 LOADK                            R11 K28 ["TEXT"]
      357 SETTABLEKS                       R11 R10 K9 ["name"]
      359 LOADN                            R11 0
      360 SETTABLEKS                       R11 R10 K16 ["offset"]
      362 LOADK                            R11 K42 ["Here's some "]
      363 SETTABLEKS                       R11 R10 K26 ["text"]
      365 DUPTABLE                         R11 K53 [{"index", "children", "attributes", "name", "offset"}]
      366 LOADN                            R12 2
      367 SETTABLEKS                       R12 R11 K15 ["index"]
      369 NEWTABLE                         R12 0 1
      371 DUPTABLE                         R13 K52 [{"index", "children", "name", "offset", "text"}]
      372 LOADN                            R14 1
      373 SETTABLEKS                       R14 R13 K15 ["index"]
      375 NEWTABLE                         R14 0 0
      377 SETTABLEKS                       R14 R13 K17 ["children"]
      379 LOADK                            R14 K28 ["TEXT"]
      380 SETTABLEKS                       R14 R13 K9 ["name"]
      382 LOADN                            R14 14
      383 SETTABLEKS                       R14 R13 K16 ["offset"]
      385 LOADK                            R14 K54 ["styling _like"]
      386 SETTABLEKS                       R14 R13 K26 ["text"]
      388 SETLIST                          R12 R13 1 [1]
      390 SETTABLEKS                       R12 R11 K17 ["children"]
      392 DUPTABLE                         R12 K46 [{"style"}]
      393 LOADK                            R13 K55 ["BOLD"]
      394 SETTABLEKS                       R13 R12 K45 ["style"]
      396 SETTABLEKS                       R12 R11 K21 ["attributes"]
      398 LOADK                            R12 K44 ["STYLED_TEXT"]
      399 SETTABLEKS                       R12 R11 K9 ["name"]
      401 LOADN                            R12 13
      402 SETTABLEKS                       R12 R11 K16 ["offset"]
      404 DUPTABLE                         R12 K52 [{"index", "children", "name", "offset", "text"}]
      405 LOADN                            R13 3
      406 SETTABLEKS                       R13 R12 K15 ["index"]
      408 NEWTABLE                         R13 0 0
      410 SETTABLEKS                       R13 R12 K17 ["children"]
      412 LOADK                            R13 K28 ["TEXT"]
      413 SETTABLEKS                       R13 R12 K9 ["name"]
      415 LOADN                            R13 28
      416 SETTABLEKS                       R13 R12 K16 ["offset"]
      418 LOADK                            R13 K56 [" this_ with overlapping styles"]
      419 SETTABLEKS                       R13 R12 K26 ["text"]
      421 SETLIST                          R9 R10 3 [1]
      423 SETTABLEKS                       R9 R8 K17 ["children"]
      425 SETLIST                          R7 R8 1 [1]
      427 SETTABLEKS                       R7 R6 K17 ["children"]
      429 SETTABLEKS                       R6 R5 K11 ["ast"]
      431 JUMP                             ; [+1]
      432 LOADNIL                          R5
      433 SETLIST                          R2 R3 3 [1]
      435 RETURN                           R2 1
