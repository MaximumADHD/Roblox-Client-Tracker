MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADK                            R2 K9 ["# Heading with _italic_ text\n\n\\# Not a heading.\n\nSome paragraph text with some *bold*, _italic_, ~strike~ text, and a `code *snippet_`.\nSome basic content in the same paragraph.\n\nSome basic content in a separate paragraph.\n\n| Heading A | Heading B |\n| --- | --- |\n| Content A | Content B <br> with a newline |\n| Content C | - |\n\n## Code block\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\n\nlocal foo = {}\nfor i=1, 10 do\n  foo.bar = i\nend\n\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))\n```\n\n---\n\nNon-lua code block:\n\n```ruby\nclass Integer\n  def fact\n    (1..self).reduce(:*) || 1\n  end\nend\n```\n\n### Really sub-heading with a [link](http://example.com)\n\n1. Number list one\n  a. Sub-list one with a [link](http://example.com)\n  b. Sub-list *two*\n2. Number list two\n3. Number list three\n\n***\n\n- Bullet one\n* Bullet two with an [[action]] and a [link](http://example.com)\n\nSome\n> quoted text\n\nSome <div style=\"color: #fff\">custom tag with a <span>span inside</span></div>.\n\n<div>\n  Multiline\n\n  <b>bold text</b>\n\n  * A list element with <span>a tag</span>.\n</div>\n\nAn ![Image](rbxassetid://123456)\n\n"]
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K10 ["# Heading with _italic_ text\n\n\\# Not a heading.\n\nSome paragraph text with some *bold*, _italic_, ~strike~ text, and a `code *snippet_`.\nSome basic content in the same paragraph.\n\nSome basic content in a separate paragraph.\n\n| Heading A | Heading B |\n| --- | --- |\n| Content A | Content B <br> with a newline |\n| Content C | - |\n\n## Code block\n\n```lua\n-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\n\nlocal foo = {}\nfor i=1, 10 do\n  foo.bar = i\nend\n\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))\n```\n\n---\n\nNon-lua code block:\n\n```ruby\nclass Integer\n  def fact\n    (1..self).reduce(:*) || 1\n  end\nend\n```\n\n### Really sub-heading with a [link](http://example.com)\n\n1. Number list one\n  a. Sub-list one with a [link](http://example.com)\n  b. Sub-list *two*\n2. Number list two\n3. Number list three\n\n===\n\n- Bullet one\n* Bullet two with an [[action]] and a [link](http://example.com)\n\nSome\n> quoted text\n\nSome <div style=\"color: #fff\">custom tag with a <span>span inside</span></div>.\n\n<div>\n  Multiline\n\n  <b>bold text</b>\n\n  * A list element with <span>a tag</span>.\n</div>\n\nAn ![Image](rbxassetid://123456)\n\n"]
       21 DUPTABLE                         R3 K14 [{"children", "name", "offset"}]
       22 NEWTABLE                         R4 0 21
       24 DUPTABLE                         R5 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
       25 DUPTABLE                         R6 K19 [{"depth"}]
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K18 ["depth"]
       29 SETTABLEKS                       R6 R5 K15 ["attributes"]
       31 NEWTABLE                         R6 0 3
       33 DUPTABLE                         R7 K21 [{"name", "offset", "text"}]
       34 LOADK                            R8 K22 ["TEXT"]
       35 SETTABLEKS                       R8 R7 K12 ["name"]
       37 LOADN                            R8 2
       38 SETTABLEKS                       R8 R7 K13 ["offset"]
       40 LOADK                            R8 K23 ["Heading with "]
       41 SETTABLEKS                       R8 R7 K20 ["text"]
       43 DUPTABLE                         R8 K24 [{"attributes", "children", "name", "offset"}]
       44 DUPTABLE                         R9 K26 [{"style"}]
       45 LOADK                            R10 K27 ["ITALIC"]
       46 SETTABLEKS                       R10 R9 K25 ["style"]
       48 SETTABLEKS                       R9 R8 K15 ["attributes"]
       50 NEWTABLE                         R9 0 1
       52 DUPTABLE                         R10 K21 [{"name", "offset", "text"}]
       53 LOADK                            R11 K22 ["TEXT"]
       54 SETTABLEKS                       R11 R10 K12 ["name"]
       56 LOADN                            R11 17
       57 SETTABLEKS                       R11 R10 K13 ["offset"]
       59 LOADK                            R11 K28 ["italic"]
       60 SETTABLEKS                       R11 R10 K20 ["text"]
       62 SETLIST                          R9 R10 1 [1]
       64 SETTABLEKS                       R9 R8 K11 ["children"]
       66 LOADK                            R9 K29 ["STYLED_TEXT"]
       67 SETTABLEKS                       R9 R8 K12 ["name"]
       69 LOADN                            R9 16
       70 SETTABLEKS                       R9 R8 K13 ["offset"]
       72 DUPTABLE                         R9 K21 [{"name", "offset", "text"}]
       73 LOADK                            R10 K22 ["TEXT"]
       74 SETTABLEKS                       R10 R9 K12 ["name"]
       76 LOADN                            R10 24
       77 SETTABLEKS                       R10 R9 K13 ["offset"]
       79 LOADK                            R10 K30 [" text"]
       80 SETTABLEKS                       R10 R9 K20 ["text"]
       82 SETLIST                          R6 R7 3 [1]
       84 SETTABLEKS                       R6 R5 K11 ["children"]
       86 LOADB                            R6 1
       87 SETTABLEKS                       R6 R5 K16 ["isBlock"]
       89 LOADK                            R6 K31 ["HEADING"]
       90 SETTABLEKS                       R6 R5 K12 ["name"]
       92 LOADN                            R6 0
       93 SETTABLEKS                       R6 R5 K13 ["offset"]
       95 DUPTABLE                         R6 K14 [{"children", "name", "offset"}]
       96 NEWTABLE                         R7 0 1
       98 DUPTABLE                         R8 K21 [{"name", "offset", "text"}]
       99 LOADK                            R9 K22 ["TEXT"]
      100 SETTABLEKS                       R9 R8 K12 ["name"]
      102 LOADN                            R9 30
      103 SETTABLEKS                       R9 R8 K13 ["offset"]
      105 LOADK                            R9 K32 ["# Not a heading."]
      106 SETTABLEKS                       R9 R8 K20 ["text"]
      108 SETLIST                          R7 R8 1 [1]
      110 SETTABLEKS                       R7 R6 K11 ["children"]
      112 LOADK                            R7 K33 ["PARAGRAPH"]
      113 SETTABLEKS                       R7 R6 K12 ["name"]
      115 LOADN                            R7 30
      116 SETTABLEKS                       R7 R6 K13 ["offset"]
      118 DUPTABLE                         R7 K14 [{"children", "name", "offset"}]
      119 NEWTABLE                         R8 0 9
      121 DUPTABLE                         R9 K21 [{"name", "offset", "text"}]
      122 LOADK                            R10 K22 ["TEXT"]
      123 SETTABLEKS                       R10 R9 K12 ["name"]
      125 LOADN                            R10 49
      126 SETTABLEKS                       R10 R9 K13 ["offset"]
      128 LOADK                            R10 K34 ["Some paragraph text with some "]
      129 SETTABLEKS                       R10 R9 K20 ["text"]
      131 DUPTABLE                         R10 K24 [{"attributes", "children", "name", "offset"}]
      132 DUPTABLE                         R11 K26 [{"style"}]
      133 LOADK                            R12 K35 ["BOLD"]
      134 SETTABLEKS                       R12 R11 K25 ["style"]
      136 SETTABLEKS                       R11 R10 K15 ["attributes"]
      138 NEWTABLE                         R11 0 1
      140 DUPTABLE                         R12 K21 [{"name", "offset", "text"}]
      141 LOADK                            R13 K22 ["TEXT"]
      142 SETTABLEKS                       R13 R12 K12 ["name"]
      144 LOADN                            R13 81
      145 SETTABLEKS                       R13 R12 K13 ["offset"]
      147 LOADK                            R13 K36 ["bold"]
      148 SETTABLEKS                       R13 R12 K20 ["text"]
      150 SETLIST                          R11 R12 1 [1]
      152 SETTABLEKS                       R11 R10 K11 ["children"]
      154 LOADK                            R11 K29 ["STYLED_TEXT"]
      155 SETTABLEKS                       R11 R10 K12 ["name"]
      157 LOADN                            R11 80
      158 SETTABLEKS                       R11 R10 K13 ["offset"]
      160 DUPTABLE                         R11 K21 [{"name", "offset", "text"}]
      161 LOADK                            R12 K22 ["TEXT"]
      162 SETTABLEKS                       R12 R11 K12 ["name"]
      164 LOADN                            R12 86
      165 SETTABLEKS                       R12 R11 K13 ["offset"]
      167 LOADK                            R12 K37 [", "]
      168 SETTABLEKS                       R12 R11 K20 ["text"]
      170 DUPTABLE                         R12 K24 [{"attributes", "children", "name", "offset"}]
      171 DUPTABLE                         R13 K26 [{"style"}]
      172 LOADK                            R14 K27 ["ITALIC"]
      173 SETTABLEKS                       R14 R13 K25 ["style"]
      175 SETTABLEKS                       R13 R12 K15 ["attributes"]
      177 NEWTABLE                         R13 0 1
      179 DUPTABLE                         R14 K21 [{"name", "offset", "text"}]
      180 LOADK                            R15 K22 ["TEXT"]
      181 SETTABLEKS                       R15 R14 K12 ["name"]
      183 LOADN                            R15 89
      184 SETTABLEKS                       R15 R14 K13 ["offset"]
      186 LOADK                            R15 K28 ["italic"]
      187 SETTABLEKS                       R15 R14 K20 ["text"]
      189 SETLIST                          R13 R14 1 [1]
      191 SETTABLEKS                       R13 R12 K11 ["children"]
      193 LOADK                            R13 K29 ["STYLED_TEXT"]
      194 SETTABLEKS                       R13 R12 K12 ["name"]
      196 LOADN                            R13 88
      197 SETTABLEKS                       R13 R12 K13 ["offset"]
      199 DUPTABLE                         R13 K21 [{"name", "offset", "text"}]
      200 LOADK                            R14 K22 ["TEXT"]
      201 SETTABLEKS                       R14 R13 K12 ["name"]
      203 LOADN                            R14 96
      204 SETTABLEKS                       R14 R13 K13 ["offset"]
      206 LOADK                            R14 K37 [", "]
      207 SETTABLEKS                       R14 R13 K20 ["text"]
      209 DUPTABLE                         R14 K24 [{"attributes", "children", "name", "offset"}]
      210 DUPTABLE                         R15 K26 [{"style"}]
      211 LOADK                            R16 K38 ["STRIKE"]
      212 SETTABLEKS                       R16 R15 K25 ["style"]
      214 SETTABLEKS                       R15 R14 K15 ["attributes"]
      216 NEWTABLE                         R15 0 1
      218 DUPTABLE                         R16 K21 [{"name", "offset", "text"}]
      219 LOADK                            R17 K22 ["TEXT"]
      220 SETTABLEKS                       R17 R16 K12 ["name"]
      222 LOADN                            R17 99
      223 SETTABLEKS                       R17 R16 K13 ["offset"]
      225 LOADK                            R17 K39 ["strike"]
      226 SETTABLEKS                       R17 R16 K20 ["text"]
      228 SETLIST                          R15 R16 1 [1]
      230 SETTABLEKS                       R15 R14 K11 ["children"]
      232 LOADK                            R15 K29 ["STYLED_TEXT"]
      233 SETTABLEKS                       R15 R14 K12 ["name"]
      235 LOADN                            R15 98
      236 SETTABLEKS                       R15 R14 K13 ["offset"]
      238 DUPTABLE                         R15 K21 [{"name", "offset", "text"}]
      239 LOADK                            R16 K22 ["TEXT"]
      240 SETTABLEKS                       R16 R15 K12 ["name"]
      242 LOADN                            R16 106
      243 SETTABLEKS                       R16 R15 K13 ["offset"]
      245 LOADK                            R16 K40 [" text, and a "]
      246 SETTABLEKS                       R16 R15 K20 ["text"]
      248 JUMPIFNOT                        R1 ; [+30]
      249 DUPTABLE                         R16 K41 [{"name", "attributes", "offset", "children"}]
      250 LOADK                            R17 K29 ["STYLED_TEXT"]
      251 SETTABLEKS                       R17 R16 K12 ["name"]
      253 DUPTABLE                         R17 K26 [{"style"}]
      254 LOADK                            R18 K42 ["INLINE_CODE"]
      255 SETTABLEKS                       R18 R17 K25 ["style"]
      257 SETTABLEKS                       R17 R16 K15 ["attributes"]
      259 LOADN                            R17 119
      260 SETTABLEKS                       R17 R16 K13 ["offset"]
      262 NEWTABLE                         R17 0 1
      264 DUPTABLE                         R18 K21 [{"name", "offset", "text"}]
      265 LOADK                            R19 K22 ["TEXT"]
      266 SETTABLEKS                       R19 R18 K12 ["name"]
      268 LOADN                            R19 120
      269 SETTABLEKS                       R19 R18 K13 ["offset"]
      271 LOADK                            R19 K43 ["code *snippet_"]
      272 SETTABLEKS                       R19 R18 K20 ["text"]
      274 SETLIST                          R17 R18 1 [1]
      276 SETTABLEKS                       R17 R16 K11 ["children"]
      278 JUMP                             ; [+10]
      279 DUPTABLE                         R16 K21 [{"name", "offset", "text"}]
      280 LOADK                            R17 K42 ["INLINE_CODE"]
      281 SETTABLEKS                       R17 R16 K12 ["name"]
      283 LOADN                            R17 119
      284 SETTABLEKS                       R17 R16 K13 ["offset"]
      286 LOADK                            R17 K43 ["code *snippet_"]
      287 SETTABLEKS                       R17 R16 K20 ["text"]
      289 DUPTABLE                         R17 K21 [{"name", "offset", "text"}]
      290 LOADK                            R18 K22 ["TEXT"]
      291 SETTABLEKS                       R18 R17 K12 ["name"]
      293 LOADN                            R18 135
      294 SETTABLEKS                       R18 R17 K13 ["offset"]
      296 LOADK                            R18 K44 [".\nSome basic content in the same paragraph."]
      297 SETTABLEKS                       R18 R17 K20 ["text"]
      299 SETLIST                          R8 R9 9 [1]
      301 SETTABLEKS                       R8 R7 K11 ["children"]
      303 LOADK                            R8 K33 ["PARAGRAPH"]
      304 SETTABLEKS                       R8 R7 K12 ["name"]
      306 LOADN                            R8 49
      307 SETTABLEKS                       R8 R7 K13 ["offset"]
      309 DUPTABLE                         R8 K14 [{"children", "name", "offset"}]
      310 NEWTABLE                         R9 0 1
      312 DUPTABLE                         R10 K21 [{"name", "offset", "text"}]
      313 LOADK                            R11 K22 ["TEXT"]
      314 SETTABLEKS                       R11 R10 K12 ["name"]
      316 LOADN                            R11 179
      317 SETTABLEKS                       R11 R10 K13 ["offset"]
      319 LOADK                            R11 K45 ["Some basic content in a separate paragraph."]
      320 SETTABLEKS                       R11 R10 K20 ["text"]
      322 SETLIST                          R9 R10 1 [1]
      324 SETTABLEKS                       R9 R8 K11 ["children"]
      326 LOADK                            R9 K33 ["PARAGRAPH"]
      327 SETTABLEKS                       R9 R8 K12 ["name"]
      329 LOADN                            R9 179
      330 SETTABLEKS                       R9 R8 K13 ["offset"]
      332 DUPTABLE                         R9 K14 [{"children", "name", "offset"}]
      333 NEWTABLE                         R10 0 3
      335 DUPTABLE                         R11 K46 [{"children", "isBlock", "name", "offset"}]
      336 NEWTABLE                         R12 0 2
      338 DUPTABLE                         R13 K14 [{"children", "name", "offset"}]
      339 NEWTABLE                         R14 0 1
      341 DUPTABLE                         R15 K21 [{"name", "offset", "text"}]
      342 LOADK                            R16 K22 ["TEXT"]
      343 SETTABLEKS                       R16 R15 K12 ["name"]
      345 LOADN                            R16 226
      346 SETTABLEKS                       R16 R15 K13 ["offset"]
      348 LOADK                            R16 K47 ["Heading A"]
      349 SETTABLEKS                       R16 R15 K20 ["text"]
      351 SETLIST                          R14 R15 1 [1]
      353 SETTABLEKS                       R14 R13 K11 ["children"]
      355 LOADK                            R14 K48 ["TABLE_CELL"]
      356 SETTABLEKS                       R14 R13 K12 ["name"]
      358 LOADN                            R14 226
      359 SETTABLEKS                       R14 R13 K13 ["offset"]
      361 DUPTABLE                         R14 K14 [{"children", "name", "offset"}]
      362 NEWTABLE                         R15 0 1
      364 DUPTABLE                         R16 K21 [{"name", "offset", "text"}]
      365 LOADK                            R17 K22 ["TEXT"]
      366 SETTABLEKS                       R17 R16 K12 ["name"]
      368 LOADN                            R17 238
      369 SETTABLEKS                       R17 R16 K13 ["offset"]
      371 LOADK                            R17 K49 ["Heading B"]
      372 SETTABLEKS                       R17 R16 K20 ["text"]
      374 SETLIST                          R15 R16 1 [1]
      376 SETTABLEKS                       R15 R14 K11 ["children"]
      378 LOADK                            R15 K48 ["TABLE_CELL"]
      379 SETTABLEKS                       R15 R14 K12 ["name"]
      381 LOADN                            R15 238
      382 SETTABLEKS                       R15 R14 K13 ["offset"]
      384 SETLIST                          R12 R13 2 [1]
      386 SETTABLEKS                       R12 R11 K11 ["children"]
      388 LOADB                            R12 1
      389 SETTABLEKS                       R12 R11 K16 ["isBlock"]
      391 LOADK                            R12 K50 ["TABLE_HEADER"]
      392 SETTABLEKS                       R12 R11 K12 ["name"]
      394 LOADN                            R12 224
      395 SETTABLEKS                       R12 R11 K13 ["offset"]
      397 DUPTABLE                         R12 K46 [{"children", "isBlock", "name", "offset"}]
      398 NEWTABLE                         R13 0 2
      400 DUPTABLE                         R14 K14 [{"children", "name", "offset"}]
      401 NEWTABLE                         R15 0 1
      403 DUPTABLE                         R16 K21 [{"name", "offset", "text"}]
      404 LOADK                            R17 K22 ["TEXT"]
      405 SETTABLEKS                       R17 R16 K12 ["name"]
      407 LOADN                            R17 10
      408 SETTABLEKS                       R17 R16 K13 ["offset"]
      410 LOADK                            R17 K51 ["Content A"]
      411 SETTABLEKS                       R17 R16 K20 ["text"]
      413 SETLIST                          R15 R16 1 [1]
      415 SETTABLEKS                       R15 R14 K11 ["children"]
      417 LOADK                            R15 K48 ["TABLE_CELL"]
      418 SETTABLEKS                       R15 R14 K12 ["name"]
      420 LOADN                            R15 10
      421 SETTABLEKS                       R15 R14 K13 ["offset"]
      423 DUPTABLE                         R15 K14 [{"children", "name", "offset"}]
      424 NEWTABLE                         R16 0 3
      426 DUPTABLE                         R17 K21 [{"name", "offset", "text"}]
      427 LOADK                            R18 K22 ["TEXT"]
      428 SETTABLEKS                       R18 R17 K12 ["name"]
      430 LOADN                            R18 22
      431 SETTABLEKS                       R18 R17 K13 ["offset"]
      433 LOADK                            R18 K52 ["Content B "]
      434 SETTABLEKS                       R18 R17 K20 ["text"]
      436 DUPTABLE                         R18 K53 [{"name", "offset"}]
      437 LOADK                            R19 K54 ["BREAK"]
      438 SETTABLEKS                       R19 R18 K12 ["name"]
      440 LOADN                            R19 33
      441 SETTABLEKS                       R19 R18 K13 ["offset"]
      443 DUPTABLE                         R19 K21 [{"name", "offset", "text"}]
      444 LOADK                            R20 K22 ["TEXT"]
      445 SETTABLEKS                       R20 R19 K12 ["name"]
      447 LOADN                            R20 37
      448 SETTABLEKS                       R20 R19 K13 ["offset"]
      450 LOADK                            R20 K55 [" with a newline"]
      451 SETTABLEKS                       R20 R19 K20 ["text"]
      453 SETLIST                          R16 R17 3 [1]
      455 SETTABLEKS                       R16 R15 K11 ["children"]
      457 LOADK                            R16 K48 ["TABLE_CELL"]
      458 SETTABLEKS                       R16 R15 K12 ["name"]
      460 LOADN                            R16 22
      461 SETTABLEKS                       R16 R15 K13 ["offset"]
      463 SETLIST                          R13 R14 2 [1]
      465 SETTABLEKS                       R13 R12 K11 ["children"]
      467 LOADB                            R13 1
      468 SETTABLEKS                       R13 R12 K16 ["isBlock"]
      470 LOADK                            R13 K56 ["TABLE_ROW"]
      471 SETTABLEKS                       R13 R12 K12 ["name"]
      473 LOADN                            R13 8
      474 SETTABLEKS                       R13 R12 K13 ["offset"]
      476 DUPTABLE                         R13 K46 [{"children", "isBlock", "name", "offset"}]
      477 NEWTABLE                         R14 0 2
      479 DUPTABLE                         R15 K14 [{"children", "name", "offset"}]
      480 NEWTABLE                         R16 0 1
      482 DUPTABLE                         R17 K21 [{"name", "offset", "text"}]
      483 LOADK                            R18 K22 ["TEXT"]
      484 SETTABLEKS                       R18 R17 K12 ["name"]
      486 LOADN                            R18 56
      487 SETTABLEKS                       R18 R17 K13 ["offset"]
      489 LOADK                            R18 K57 ["Content C"]
      490 SETTABLEKS                       R18 R17 K20 ["text"]
      492 SETLIST                          R16 R17 1 [1]
      494 SETTABLEKS                       R16 R15 K11 ["children"]
      496 LOADK                            R16 K48 ["TABLE_CELL"]
      497 SETTABLEKS                       R16 R15 K12 ["name"]
      499 LOADN                            R16 56
      500 SETTABLEKS                       R16 R15 K13 ["offset"]
      502 DUPTABLE                         R16 K14 [{"children", "name", "offset"}]
      503 NEWTABLE                         R17 0 1
      505 DUPTABLE                         R18 K21 [{"name", "offset", "text"}]
      506 LOADK                            R19 K22 ["TEXT"]
      507 SETTABLEKS                       R19 R18 K12 ["name"]
      509 LOADN                            R19 68
      510 SETTABLEKS                       R19 R18 K13 ["offset"]
      512 LOADK                            R19 K58 ["-"]
      513 SETTABLEKS                       R19 R18 K20 ["text"]
      515 SETLIST                          R17 R18 1 [1]
      517 SETTABLEKS                       R17 R16 K11 ["children"]
      519 LOADK                            R17 K48 ["TABLE_CELL"]
      520 SETTABLEKS                       R17 R16 K12 ["name"]
      522 LOADN                            R17 68
      523 SETTABLEKS                       R17 R16 K13 ["offset"]
      525 SETLIST                          R14 R15 2 [1]
      527 SETTABLEKS                       R14 R13 K11 ["children"]
      529 LOADB                            R14 1
      530 SETTABLEKS                       R14 R13 K16 ["isBlock"]
      532 LOADK                            R14 K56 ["TABLE_ROW"]
      533 SETTABLEKS                       R14 R13 K12 ["name"]
      535 LOADN                            R14 54
      536 SETTABLEKS                       R14 R13 K13 ["offset"]
      538 SETLIST                          R10 R11 3 [1]
      540 SETTABLEKS                       R10 R9 K11 ["children"]
      542 LOADK                            R10 K59 ["TABLE"]
      543 SETTABLEKS                       R10 R9 K12 ["name"]
      545 LOADN                            R10 224
      546 SETTABLEKS                       R10 R9 K13 ["offset"]
      548 DUPTABLE                         R10 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      549 DUPTABLE                         R11 K19 [{"depth"}]
      550 LOADN                            R12 2
      551 SETTABLEKS                       R12 R11 K18 ["depth"]
      553 SETTABLEKS                       R11 R10 K15 ["attributes"]
      555 NEWTABLE                         R11 0 1
      557 DUPTABLE                         R12 K21 [{"name", "offset", "text"}]
      558 LOADK                            R13 K22 ["TEXT"]
      559 SETTABLEKS                       R13 R12 K12 ["name"]
      561 LOADN                            R13 76
      562 SETTABLEKS                       R13 R12 K13 ["offset"]
      564 LOADK                            R13 K60 ["Code block"]
      565 SETTABLEKS                       R13 R12 K20 ["text"]
      567 SETLIST                          R11 R12 1 [1]
      569 SETTABLEKS                       R11 R10 K11 ["children"]
      571 LOADB                            R11 1
      572 SETTABLEKS                       R11 R10 K16 ["isBlock"]
      574 LOADK                            R11 K31 ["HEADING"]
      575 SETTABLEKS                       R11 R10 K12 ["name"]
      577 LOADN                            R11 73
      578 SETTABLEKS                       R11 R10 K13 ["offset"]
      580 DUPTABLE                         R11 K61 [{"attributes", "name", "offset", "text"}]
      581 DUPTABLE                         R12 K63 [{"language"}]
      582 LOADK                            R13 K64 ["lua"]
      583 SETTABLEKS                       R13 R12 K62 ["language"]
      585 SETTABLEKS                       R12 R11 K15 ["attributes"]
      587 LOADK                            R12 K65 ["CODE_BLOCK"]
      588 SETTABLEKS                       R12 R11 K12 ["name"]
      590 LOADN                            R12 88
      591 SETTABLEKS                       R12 R11 K13 ["offset"]
      593 LOADK                            R12 K66 ["-- factorial function\nfunction fact(n)\n  if n == 0 then\n    -- comment\n    return 1\n  else\n    return n * fact(n-1)\n  end\nend\n\nlocal foo = {}\nfor i=1, 10 do\n  foo.bar = i\nend\n\nprint(\"enter a number:\")\na = io.read(\"*number\")\nprint(fact(a))"]
      594 SETTABLEKS                       R12 R11 K20 ["text"]
      596 DUPTABLE                         R12 K67 [{"isBlock", "name", "offset"}]
      597 LOADB                            R13 1
      598 SETTABLEKS                       R13 R12 K16 ["isBlock"]
      600 LOADK                            R13 K68 ["DIVIDER"]
      601 SETTABLEKS                       R13 R12 K12 ["name"]
      603 LOADN                            R13 83
      604 SETTABLEKS                       R13 R12 K13 ["offset"]
      606 DUPTABLE                         R13 K14 [{"children", "name", "offset"}]
      607 NEWTABLE                         R14 0 1
      609 DUPTABLE                         R15 K21 [{"name", "offset", "text"}]
      610 LOADK                            R16 K22 ["TEXT"]
      611 SETTABLEKS                       R16 R15 K12 ["name"]
      613 LOADN                            R16 88
      614 SETTABLEKS                       R16 R15 K13 ["offset"]
      616 LOADK                            R16 K69 ["Non-lua code block:"]
      617 SETTABLEKS                       R16 R15 K20 ["text"]
      619 SETLIST                          R14 R15 1 [1]
      621 SETTABLEKS                       R14 R13 K11 ["children"]
      623 LOADK                            R14 K33 ["PARAGRAPH"]
      624 SETTABLEKS                       R14 R13 K12 ["name"]
      626 LOADN                            R14 88
      627 SETTABLEKS                       R14 R13 K13 ["offset"]
      629 DUPTABLE                         R14 K61 [{"attributes", "name", "offset", "text"}]
      630 DUPTABLE                         R15 K63 [{"language"}]
      631 LOADK                            R16 K70 ["ruby"]
      632 SETTABLEKS                       R16 R15 K62 ["language"]
      634 SETTABLEKS                       R15 R14 K15 ["attributes"]
      636 LOADK                            R15 K65 ["CODE_BLOCK"]
      637 SETTABLEKS                       R15 R14 K12 ["name"]
      639 LOADN                            R15 109
      640 SETTABLEKS                       R15 R14 K13 ["offset"]
      642 LOADK                            R15 K71 ["class Integer\n  def fact\n    (1..self).reduce(:*) || 1\n  end\nend"]
      643 SETTABLEKS                       R15 R14 K20 ["text"]
      645 DUPTABLE                         R15 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      646 DUPTABLE                         R16 K19 [{"depth"}]
      647 LOADN                            R17 3
      648 SETTABLEKS                       R17 R16 K18 ["depth"]
      650 SETTABLEKS                       R16 R15 K15 ["attributes"]
      652 NEWTABLE                         R16 0 2
      654 DUPTABLE                         R17 K21 [{"name", "offset", "text"}]
      655 LOADK                            R18 K22 ["TEXT"]
      656 SETTABLEKS                       R18 R17 K12 ["name"]
      658 LOADN                            R18 191
      659 SETTABLEKS                       R18 R17 K13 ["offset"]
      661 LOADK                            R18 K72 ["Really sub-heading with a "]
      662 SETTABLEKS                       R18 R17 K20 ["text"]
      664 DUPTABLE                         R18 K74 [{"name", "offset", "text", "url", "attributes"}]
      665 LOADK                            R19 K75 ["LINK"]
      666 SETTABLEKS                       R19 R18 K12 ["name"]
      668 LOADN                            R19 218
      669 SETTABLEKS                       R19 R18 K13 ["offset"]
      671 LOADK                            R19 K76 ["link"]
      672 SETTABLEKS                       R19 R18 K20 ["text"]
      674 JUMPIF                           R1 ; [+2]
      675 LOADK                            R19 K77 ["http://example.com"]
      676 JUMP                             ; [+1]
      677 LOADNIL                          R19
      678 SETTABLEKS                       R19 R18 K73 ["url"]
      680 JUMPIFNOT                        R1 ; [+5]
      681 DUPTABLE                         R19 K78 [{"url"}]
      682 LOADK                            R20 K77 ["http://example.com"]
      683 SETTABLEKS                       R20 R19 K73 ["url"]
      685 JUMP                             ; [+1]
      686 LOADNIL                          R19
      687 SETTABLEKS                       R19 R18 K15 ["attributes"]
      689 SETLIST                          R16 R17 2 [1]
      691 SETTABLEKS                       R16 R15 K11 ["children"]
      693 LOADB                            R16 1
      694 SETTABLEKS                       R16 R15 K16 ["isBlock"]
      696 LOADK                            R16 K31 ["HEADING"]
      697 SETTABLEKS                       R16 R15 K12 ["name"]
      699 LOADN                            R16 187
      700 SETTABLEKS                       R16 R15 K13 ["offset"]
      702 DUPTABLE                         R16 K24 [{"attributes", "children", "name", "offset"}]
      703 DUPTABLE                         R17 K19 [{"depth"}]
      704 LOADN                            R18 0
      705 SETTABLEKS                       R18 R17 K18 ["depth"]
      707 SETTABLEKS                       R17 R16 K15 ["attributes"]
      709 NEWTABLE                         R17 0 4
      711 DUPTABLE                         R18 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      712 DUPTABLE                         R19 K80 [{"depth", "prefix"}]
      713 LOADN                            R20 0
      714 SETTABLEKS                       R20 R19 K18 ["depth"]
      716 LOADK                            R20 K81 ["1"]
      717 SETTABLEKS                       R20 R19 K79 ["prefix"]
      719 SETTABLEKS                       R19 R18 K15 ["attributes"]
      721 NEWTABLE                         R19 0 1
      723 DUPTABLE                         R20 K21 [{"name", "offset", "text"}]
      724 LOADK                            R21 K22 ["TEXT"]
      725 SETTABLEKS                       R21 R20 K12 ["name"]
      727 LOADN                            R21 248
      728 SETTABLEKS                       R21 R20 K13 ["offset"]
      730 LOADK                            R21 K82 ["Number list one"]
      731 SETTABLEKS                       R21 R20 K20 ["text"]
      733 SETLIST                          R19 R20 1 [1]
      735 SETTABLEKS                       R19 R18 K11 ["children"]
      737 LOADB                            R19 1
      738 SETTABLEKS                       R19 R18 K16 ["isBlock"]
      740 LOADK                            R19 K83 ["LIST_ITEM"]
      741 SETTABLEKS                       R19 R18 K12 ["name"]
      743 LOADN                            R19 245
      744 SETTABLEKS                       R19 R18 K13 ["offset"]
      746 DUPTABLE                         R19 K24 [{"attributes", "children", "name", "offset"}]
      747 DUPTABLE                         R20 K19 [{"depth"}]
      748 LOADN                            R21 2
      749 SETTABLEKS                       R21 R20 K18 ["depth"]
      751 SETTABLEKS                       R20 R19 K15 ["attributes"]
      753 NEWTABLE                         R20 0 2
      755 DUPTABLE                         R21 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      756 DUPTABLE                         R22 K80 [{"depth", "prefix"}]
      757 LOADN                            R23 2
      758 SETTABLEKS                       R23 R22 K18 ["depth"]
      760 LOADK                            R23 K84 ["a"]
      761 SETTABLEKS                       R23 R22 K79 ["prefix"]
      763 SETTABLEKS                       R22 R21 K15 ["attributes"]
      765 NEWTABLE                         R22 0 2
      767 DUPTABLE                         R23 K21 [{"name", "offset", "text"}]
      768 LOADK                            R24 K22 ["TEXT"]
      769 SETTABLEKS                       R24 R23 K12 ["name"]
      771 LOADN                            R24 13
      772 SETTABLEKS                       R24 R23 K13 ["offset"]
      774 LOADK                            R24 K85 ["Sub-list one with a "]
      775 SETTABLEKS                       R24 R23 K20 ["text"]
      777 DUPTABLE                         R24 K74 [{"name", "offset", "text", "url", "attributes"}]
      778 LOADK                            R25 K75 ["LINK"]
      779 SETTABLEKS                       R25 R24 K12 ["name"]
      781 LOADN                            R25 34
      782 SETTABLEKS                       R25 R24 K13 ["offset"]
      784 LOADK                            R25 K76 ["link"]
      785 SETTABLEKS                       R25 R24 K20 ["text"]
      787 JUMPIF                           R1 ; [+2]
      788 LOADK                            R25 K77 ["http://example.com"]
      789 JUMP                             ; [+1]
      790 LOADNIL                          R25
      791 SETTABLEKS                       R25 R24 K73 ["url"]
      793 JUMPIFNOT                        R1 ; [+5]
      794 DUPTABLE                         R25 K78 [{"url"}]
      795 LOADK                            R26 K77 ["http://example.com"]
      796 SETTABLEKS                       R26 R25 K73 ["url"]
      798 JUMP                             ; [+1]
      799 LOADNIL                          R25
      800 SETTABLEKS                       R25 R24 K15 ["attributes"]
      802 SETLIST                          R22 R23 2 [1]
      804 SETTABLEKS                       R22 R21 K11 ["children"]
      806 LOADB                            R22 1
      807 SETTABLEKS                       R22 R21 K16 ["isBlock"]
      809 LOADK                            R22 K83 ["LIST_ITEM"]
      810 SETTABLEKS                       R22 R21 K12 ["name"]
      812 LOADN                            R22 8
      813 SETTABLEKS                       R22 R21 K13 ["offset"]
      815 DUPTABLE                         R22 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      816 DUPTABLE                         R23 K80 [{"depth", "prefix"}]
      817 LOADN                            R24 2
      818 SETTABLEKS                       R24 R23 K18 ["depth"]
      820 LOADK                            R24 K86 ["b"]
      821 SETTABLEKS                       R24 R23 K79 ["prefix"]
      823 SETTABLEKS                       R23 R22 K15 ["attributes"]
      825 NEWTABLE                         R23 0 2
      827 DUPTABLE                         R24 K21 [{"name", "offset", "text"}]
      828 LOADK                            R25 K22 ["TEXT"]
      829 SETTABLEKS                       R25 R24 K12 ["name"]
      831 LOADN                            R25 65
      832 SETTABLEKS                       R25 R24 K13 ["offset"]
      834 LOADK                            R25 K87 ["Sub-list "]
      835 SETTABLEKS                       R25 R24 K20 ["text"]
      837 DUPTABLE                         R25 K24 [{"attributes", "children", "name", "offset"}]
      838 DUPTABLE                         R26 K26 [{"style"}]
      839 LOADK                            R27 K35 ["BOLD"]
      840 SETTABLEKS                       R27 R26 K25 ["style"]
      842 SETTABLEKS                       R26 R25 K15 ["attributes"]
      844 NEWTABLE                         R26 0 1
      846 DUPTABLE                         R27 K21 [{"name", "offset", "text"}]
      847 LOADK                            R28 K22 ["TEXT"]
      848 SETTABLEKS                       R28 R27 K12 ["name"]
      850 LOADN                            R28 76
      851 SETTABLEKS                       R28 R27 K13 ["offset"]
      853 LOADK                            R28 K88 ["two"]
      854 SETTABLEKS                       R28 R27 K20 ["text"]
      856 SETLIST                          R26 R27 1 [1]
      858 SETTABLEKS                       R26 R25 K11 ["children"]
      860 LOADK                            R26 K29 ["STYLED_TEXT"]
      861 SETTABLEKS                       R26 R25 K12 ["name"]
      863 LOADN                            R26 75
      864 SETTABLEKS                       R26 R25 K13 ["offset"]
      866 SETLIST                          R23 R24 2 [1]
      868 SETTABLEKS                       R23 R22 K11 ["children"]
      870 LOADB                            R23 1
      871 SETTABLEKS                       R23 R22 K16 ["isBlock"]
      873 LOADK                            R23 K83 ["LIST_ITEM"]
      874 SETTABLEKS                       R23 R22 K12 ["name"]
      876 LOADN                            R23 60
      877 SETTABLEKS                       R23 R22 K13 ["offset"]
      879 SETLIST                          R20 R21 2 [1]
      881 SETTABLEKS                       R20 R19 K11 ["children"]
      883 LOADK                            R20 K89 ["LIST"]
      884 SETTABLEKS                       R20 R19 K12 ["name"]
      886 LOADN                            R20 8
      887 SETTABLEKS                       R20 R19 K13 ["offset"]
      889 DUPTABLE                         R20 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      890 DUPTABLE                         R21 K80 [{"depth", "prefix"}]
      891 LOADN                            R22 0
      892 SETTABLEKS                       R22 R21 K18 ["depth"]
      894 LOADK                            R22 K90 ["2"]
      895 SETTABLEKS                       R22 R21 K79 ["prefix"]
      897 SETTABLEKS                       R21 R20 K15 ["attributes"]
      899 NEWTABLE                         R21 0 1
      901 DUPTABLE                         R22 K21 [{"name", "offset", "text"}]
      902 LOADK                            R23 K22 ["TEXT"]
      903 SETTABLEKS                       R23 R22 K12 ["name"]
      905 LOADN                            R23 83
      906 SETTABLEKS                       R23 R22 K13 ["offset"]
      908 LOADK                            R23 K91 ["Number list two"]
      909 SETTABLEKS                       R23 R22 K20 ["text"]
      911 SETLIST                          R21 R22 1 [1]
      913 SETTABLEKS                       R21 R20 K11 ["children"]
      915 LOADB                            R21 1
      916 SETTABLEKS                       R21 R20 K16 ["isBlock"]
      918 LOADK                            R21 K83 ["LIST_ITEM"]
      919 SETTABLEKS                       R21 R20 K12 ["name"]
      921 LOADN                            R21 80
      922 SETTABLEKS                       R21 R20 K13 ["offset"]
      924 DUPTABLE                         R21 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      925 DUPTABLE                         R22 K80 [{"depth", "prefix"}]
      926 LOADN                            R23 0
      927 SETTABLEKS                       R23 R22 K18 ["depth"]
      929 LOADK                            R23 K92 ["3"]
      930 SETTABLEKS                       R23 R22 K79 ["prefix"]
      932 SETTABLEKS                       R22 R21 K15 ["attributes"]
      934 NEWTABLE                         R22 0 1
      936 DUPTABLE                         R23 K21 [{"name", "offset", "text"}]
      937 LOADK                            R24 K22 ["TEXT"]
      938 SETTABLEKS                       R24 R23 K12 ["name"]
      940 LOADN                            R24 102
      941 SETTABLEKS                       R24 R23 K13 ["offset"]
      943 LOADK                            R24 K93 ["Number list three"]
      944 SETTABLEKS                       R24 R23 K20 ["text"]
      946 SETLIST                          R22 R23 1 [1]
      948 SETTABLEKS                       R22 R21 K11 ["children"]
      950 LOADB                            R22 1
      951 SETTABLEKS                       R22 R21 K16 ["isBlock"]
      953 LOADK                            R22 K83 ["LIST_ITEM"]
      954 SETTABLEKS                       R22 R21 K12 ["name"]
      956 LOADN                            R22 99
      957 SETTABLEKS                       R22 R21 K13 ["offset"]
      959 SETLIST                          R17 R18 4 [1]
      961 SETTABLEKS                       R17 R16 K11 ["children"]
      963 LOADK                            R17 K89 ["LIST"]
      964 SETTABLEKS                       R17 R16 K12 ["name"]
      966 LOADN                            R17 245
      967 SETTABLEKS                       R17 R16 K13 ["offset"]
      969 DUPTABLE                         R17 K67 [{"isBlock", "name", "offset"}]
      970 LOADB                            R18 1
      971 SETTABLEKS                       R18 R17 K16 ["isBlock"]
      973 JUMPIFNOT                        R1 ; [+2]
      974 LOADK                            R18 K68 ["DIVIDER"]
      975 JUMP                             ; [+1]
      976 LOADK                            R18 K94 ["DIVIDER_2"]
      977 SETTABLEKS                       R18 R17 K12 ["name"]
      979 LOADN                            R18 121
      980 SETTABLEKS                       R18 R17 K13 ["offset"]
      982 DUPTABLE                         R18 K24 [{"attributes", "children", "name", "offset"}]
      983 DUPTABLE                         R19 K19 [{"depth"}]
      984 LOADN                            R20 0
      985 SETTABLEKS                       R20 R19 K18 ["depth"]
      987 SETTABLEKS                       R19 R18 K15 ["attributes"]
      989 NEWTABLE                         R19 0 2
      991 DUPTABLE                         R20 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
      992 DUPTABLE                         R21 K80 [{"depth", "prefix"}]
      993 LOADN                            R22 0
      994 SETTABLEKS                       R22 R21 K18 ["depth"]
      996 LOADK                            R22 K95 ["- "]
      997 SETTABLEKS                       R22 R21 K79 ["prefix"]
      999 SETTABLEKS                       R21 R20 K15 ["attributes"]
     1001 NEWTABLE                         R21 0 1
     1003 DUPTABLE                         R22 K21 [{"name", "offset", "text"}]
     1004 LOADK                            R23 K22 ["TEXT"]
     1005 SETTABLEKS                       R23 R22 K12 ["name"]
     1007 LOADN                            R23 129
     1008 SETTABLEKS                       R23 R22 K13 ["offset"]
     1010 LOADK                            R23 K96 ["Bullet one"]
     1011 SETTABLEKS                       R23 R22 K20 ["text"]
     1013 SETLIST                          R21 R22 1 [1]
     1015 SETTABLEKS                       R21 R20 K11 ["children"]
     1017 LOADB                            R21 1
     1018 SETTABLEKS                       R21 R20 K16 ["isBlock"]
     1020 LOADK                            R21 K83 ["LIST_ITEM"]
     1021 SETTABLEKS                       R21 R20 K12 ["name"]
     1023 LOADN                            R21 126
     1024 SETTABLEKS                       R21 R20 K13 ["offset"]
     1026 DUPTABLE                         R21 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
     1027 DUPTABLE                         R22 K80 [{"depth", "prefix"}]
     1028 LOADN                            R23 0
     1029 SETTABLEKS                       R23 R22 K18 ["depth"]
     1031 LOADK                            R23 K97 ["* "]
     1032 SETTABLEKS                       R23 R22 K79 ["prefix"]
     1034 SETTABLEKS                       R22 R21 K15 ["attributes"]
     1036 NEWTABLE                         R22 0 4
     1038 DUPTABLE                         R23 K21 [{"name", "offset", "text"}]
     1039 LOADK                            R24 K22 ["TEXT"]
     1040 SETTABLEKS                       R24 R23 K12 ["name"]
     1042 LOADN                            R24 142
     1043 SETTABLEKS                       R24 R23 K13 ["offset"]
     1045 LOADK                            R24 K98 ["Bullet two with an "]
     1046 SETTABLEKS                       R24 R23 K20 ["text"]
     1048 DUPTABLE                         R24 K21 [{"name", "offset", "text"}]
     1049 LOADK                            R25 K99 ["ACTION"]
     1050 SETTABLEKS                       R25 R24 K12 ["name"]
     1052 LOADN                            R25 161
     1053 SETTABLEKS                       R25 R24 K13 ["offset"]
     1055 LOADK                            R25 K100 ["[[action]]"]
     1056 SETTABLEKS                       R25 R24 K20 ["text"]
     1058 DUPTABLE                         R25 K21 [{"name", "offset", "text"}]
     1059 LOADK                            R26 K22 ["TEXT"]
     1060 SETTABLEKS                       R26 R25 K12 ["name"]
     1062 LOADN                            R26 171
     1063 SETTABLEKS                       R26 R25 K13 ["offset"]
     1065 LOADK                            R26 K101 [" and a "]
     1066 SETTABLEKS                       R26 R25 K20 ["text"]
     1068 DUPTABLE                         R26 K74 [{"name", "offset", "text", "url", "attributes"}]
     1069 LOADK                            R27 K75 ["LINK"]
     1070 SETTABLEKS                       R27 R26 K12 ["name"]
     1072 LOADN                            R27 178
     1073 SETTABLEKS                       R27 R26 K13 ["offset"]
     1075 LOADK                            R27 K76 ["link"]
     1076 SETTABLEKS                       R27 R26 K20 ["text"]
     1078 JUMPIF                           R1 ; [+2]
     1079 LOADK                            R27 K77 ["http://example.com"]
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R27
     1082 SETTABLEKS                       R27 R26 K73 ["url"]
     1084 JUMPIFNOT                        R1 ; [+5]
     1085 DUPTABLE                         R27 K78 [{"url"}]
     1086 LOADK                            R28 K77 ["http://example.com"]
     1087 SETTABLEKS                       R28 R27 K73 ["url"]
     1089 JUMP                             ; [+1]
     1090 LOADNIL                          R27
     1091 SETTABLEKS                       R27 R26 K15 ["attributes"]
     1093 SETLIST                          R22 R23 4 [1]
     1095 SETTABLEKS                       R22 R21 K11 ["children"]
     1097 LOADB                            R22 1
     1098 SETTABLEKS                       R22 R21 K16 ["isBlock"]
     1100 LOADK                            R22 K83 ["LIST_ITEM"]
     1101 SETTABLEKS                       R22 R21 K12 ["name"]
     1103 LOADN                            R22 139
     1104 SETTABLEKS                       R22 R21 K13 ["offset"]
     1106 SETLIST                          R19 R20 2 [1]
     1108 SETTABLEKS                       R19 R18 K11 ["children"]
     1110 LOADK                            R19 K89 ["LIST"]
     1111 SETTABLEKS                       R19 R18 K12 ["name"]
     1113 LOADN                            R19 126
     1114 SETTABLEKS                       R19 R18 K13 ["offset"]
     1116 DUPTABLE                         R19 K14 [{"children", "name", "offset"}]
     1117 NEWTABLE                         R20 0 1
     1119 DUPTABLE                         R21 K21 [{"name", "offset", "text"}]
     1120 LOADK                            R22 K22 ["TEXT"]
     1121 SETTABLEKS                       R22 R21 K12 ["name"]
     1123 LOADN                            R22 205
     1124 SETTABLEKS                       R22 R21 K13 ["offset"]
     1126 LOADK                            R22 K102 ["Some"]
     1127 SETTABLEKS                       R22 R21 K20 ["text"]
     1129 SETLIST                          R20 R21 1 [1]
     1131 SETTABLEKS                       R20 R19 K11 ["children"]
     1133 LOADK                            R20 K33 ["PARAGRAPH"]
     1134 SETTABLEKS                       R20 R19 K12 ["name"]
     1136 LOADN                            R20 205
     1137 SETTABLEKS                       R20 R19 K13 ["offset"]
     1139 DUPTABLE                         R20 K46 [{"children", "isBlock", "name", "offset"}]
     1140 NEWTABLE                         R21 0 1
     1142 DUPTABLE                         R22 K21 [{"name", "offset", "text"}]
     1143 LOADK                            R23 K22 ["TEXT"]
     1144 SETTABLEKS                       R23 R22 K12 ["name"]
     1146 LOADN                            R23 212
     1147 SETTABLEKS                       R23 R22 K13 ["offset"]
     1149 LOADK                            R23 K103 ["quoted text"]
     1150 SETTABLEKS                       R23 R22 K20 ["text"]
     1152 SETLIST                          R21 R22 1 [1]
     1154 SETTABLEKS                       R21 R20 K11 ["children"]
     1156 LOADB                            R21 1
     1157 SETTABLEKS                       R21 R20 K16 ["isBlock"]
     1159 LOADK                            R21 K104 ["QUOTE"]
     1160 SETTABLEKS                       R21 R20 K12 ["name"]
     1162 LOADN                            R21 210
     1163 SETTABLEKS                       R21 R20 K13 ["offset"]
     1165 SETLIST                          R4 R5 16 [1]
     1167 DUPTABLE                         R5 K14 [{"children", "name", "offset"}]
     1168 NEWTABLE                         R6 0 1
     1170 DUPTABLE                         R7 K21 [{"name", "offset", "text"}]
     1171 LOADK                            R8 K22 ["TEXT"]
     1172 SETTABLEKS                       R8 R7 K12 ["name"]
     1174 LOADN                            R8 225
     1175 SETTABLEKS                       R8 R7 K13 ["offset"]
     1177 LOADK                            R8 K105 ["Some "]
     1178 SETTABLEKS                       R8 R7 K20 ["text"]
     1180 SETLIST                          R6 R7 1 [1]
     1182 SETTABLEKS                       R6 R5 K11 ["children"]
     1184 LOADK                            R6 K33 ["PARAGRAPH"]
     1185 SETTABLEKS                       R6 R5 K12 ["name"]
     1187 LOADN                            R6 225
     1188 SETTABLEKS                       R6 R5 K13 ["offset"]
     1190 DUPTABLE                         R6 K106 [{"attributes", "children", "name", "offset", "text"}]
     1191 DUPTABLE                         R7 K26 [{"style"}]
     1192 LOADK                            R8 K107 ["color: #fff"]
     1193 SETTABLEKS                       R8 R7 K25 ["style"]
     1195 SETTABLEKS                       R7 R6 K15 ["attributes"]
     1197 NEWTABLE                         R7 0 2
     1199 DUPTABLE                         R8 K14 [{"children", "name", "offset"}]
     1200 NEWTABLE                         R9 0 1
     1202 DUPTABLE                         R10 K21 [{"name", "offset", "text"}]
     1203 LOADK                            R11 K22 ["TEXT"]
     1204 SETTABLEKS                       R11 R10 K12 ["name"]
     1206 LOADN                            R11 0
     1207 SETTABLEKS                       R11 R10 K13 ["offset"]
     1209 LOADK                            R11 K108 ["custom tag with a "]
     1210 SETTABLEKS                       R11 R10 K20 ["text"]
     1212 SETLIST                          R9 R10 1 [1]
     1214 SETTABLEKS                       R9 R8 K11 ["children"]
     1216 LOADK                            R9 K33 ["PARAGRAPH"]
     1217 SETTABLEKS                       R9 R8 K12 ["name"]
     1219 LOADN                            R9 0
     1220 SETTABLEKS                       R9 R8 K13 ["offset"]
     1222 DUPTABLE                         R9 K109 [{"children", "name", "offset", "text"}]
     1223 NEWTABLE                         R10 0 1
     1225 DUPTABLE                         R11 K14 [{"children", "name", "offset"}]
     1226 NEWTABLE                         R12 0 1
     1228 DUPTABLE                         R13 K21 [{"name", "offset", "text"}]
     1229 LOADK                            R14 K22 ["TEXT"]
     1230 SETTABLEKS                       R14 R13 K12 ["name"]
     1232 LOADN                            R14 24
     1233 SETTABLEKS                       R14 R13 K13 ["offset"]
     1235 LOADK                            R14 K110 ["span inside"]
     1236 SETTABLEKS                       R14 R13 K20 ["text"]
     1238 SETLIST                          R12 R13 1 [1]
     1240 SETTABLEKS                       R12 R11 K11 ["children"]
     1242 LOADK                            R12 K33 ["PARAGRAPH"]
     1243 SETTABLEKS                       R12 R11 K12 ["name"]
     1245 LOADN                            R12 24
     1246 SETTABLEKS                       R12 R11 K13 ["offset"]
     1248 SETLIST                          R10 R11 1 [1]
     1250 SETTABLEKS                       R10 R9 K11 ["children"]
     1252 LOADK                            R10 K111 ["TAG"]
     1253 SETTABLEKS                       R10 R9 K12 ["name"]
     1255 LOADN                            R10 18
     1256 SETTABLEKS                       R10 R9 K13 ["offset"]
     1258 LOADK                            R10 K112 ["span"]
     1259 SETTABLEKS                       R10 R9 K20 ["text"]
     1261 SETLIST                          R7 R8 2 [1]
     1263 SETTABLEKS                       R7 R6 K11 ["children"]
     1265 LOADK                            R7 K111 ["TAG"]
     1266 SETTABLEKS                       R7 R6 K12 ["name"]
     1268 LOADN                            R7 231
     1269 SETTABLEKS                       R7 R6 K13 ["offset"]
     1271 LOADK                            R7 K113 ["div"]
     1272 SETTABLEKS                       R7 R6 K20 ["text"]
     1274 DUPTABLE                         R7 K14 [{"children", "name", "offset"}]
     1275 NEWTABLE                         R8 0 1
     1277 DUPTABLE                         R9 K21 [{"name", "offset", "text"}]
     1278 LOADK                            R10 K22 ["TEXT"]
     1279 SETTABLEKS                       R10 R9 K12 ["name"]
     1281 LOADN                            R10 48
     1282 SETTABLEKS                       R10 R9 K13 ["offset"]
     1284 LOADK                            R10 K114 ["."]
     1285 SETTABLEKS                       R10 R9 K20 ["text"]
     1287 SETLIST                          R8 R9 1 [1]
     1289 SETTABLEKS                       R8 R7 K11 ["children"]
     1291 LOADK                            R8 K33 ["PARAGRAPH"]
     1292 SETTABLEKS                       R8 R7 K12 ["name"]
     1294 LOADN                            R8 48
     1295 SETTABLEKS                       R8 R7 K13 ["offset"]
     1297 DUPTABLE                         R8 K109 [{"children", "name", "offset", "text"}]
     1298 NEWTABLE                         R9 0 3
     1300 DUPTABLE                         R10 K14 [{"children", "name", "offset"}]
     1301 NEWTABLE                         R11 0 1
     1303 DUPTABLE                         R12 K109 [{"children", "name", "offset", "text"}]
     1304 NEWTABLE                         R13 0 0
     1306 SETTABLEKS                       R13 R12 K11 ["children"]
     1308 LOADK                            R13 K22 ["TEXT"]
     1309 SETTABLEKS                       R13 R12 K12 ["name"]
     1311 LOADN                            R13 56
     1312 SETTABLEKS                       R13 R12 K13 ["offset"]
     1314 LOADK                            R13 K115 ["Multiline"]
     1315 SETTABLEKS                       R13 R12 K20 ["text"]
     1317 SETLIST                          R11 R12 1 [1]
     1319 SETTABLEKS                       R11 R10 K11 ["children"]
     1321 LOADK                            R11 K33 ["PARAGRAPH"]
     1322 SETTABLEKS                       R11 R10 K12 ["name"]
     1324 LOADN                            R11 56
     1325 SETTABLEKS                       R11 R10 K13 ["offset"]
     1327 DUPTABLE                         R11 K116 [{"children", "attributes", "name", "offset", "text"}]
     1328 NEWTABLE                         R12 0 1
     1330 DUPTABLE                         R13 K14 [{"children", "name", "offset"}]
     1331 NEWTABLE                         R14 0 1
     1333 DUPTABLE                         R15 K21 [{"name", "offset", "text"}]
     1334 LOADK                            R16 K22 ["TEXT"]
     1335 SETTABLEKS                       R16 R15 K12 ["name"]
     1337 LOADN                            R16 71
     1338 SETTABLEKS                       R16 R15 K13 ["offset"]
     1340 LOADK                            R16 K117 ["bold text"]
     1341 SETTABLEKS                       R16 R15 K20 ["text"]
     1343 SETLIST                          R14 R15 1 [1]
     1345 SETTABLEKS                       R14 R13 K11 ["children"]
     1347 LOADK                            R14 K33 ["PARAGRAPH"]
     1348 SETTABLEKS                       R14 R13 K12 ["name"]
     1350 LOADN                            R14 71
     1351 SETTABLEKS                       R14 R13 K13 ["offset"]
     1353 SETLIST                          R12 R13 1 [1]
     1355 SETTABLEKS                       R12 R11 K11 ["children"]
     1357 NEWTABLE                         R12 0 0
     1359 SETTABLEKS                       R12 R11 K15 ["attributes"]
     1361 LOADK                            R12 K111 ["TAG"]
     1362 SETTABLEKS                       R12 R11 K12 ["name"]
     1364 LOADN                            R12 68
     1365 SETTABLEKS                       R12 R11 K13 ["offset"]
     1367 LOADK                            R12 K86 ["b"]
     1368 SETTABLEKS                       R12 R11 K20 ["text"]
     1370 DUPTABLE                         R12 K24 [{"attributes", "children", "name", "offset"}]
     1371 DUPTABLE                         R13 K19 [{"depth"}]
     1372 LOADN                            R14 0
     1373 SETTABLEKS                       R14 R13 K18 ["depth"]
     1375 SETTABLEKS                       R13 R12 K15 ["attributes"]
     1377 NEWTABLE                         R13 0 1
     1379 DUPTABLE                         R14 K17 [{"attributes", "children", "isBlock", "name", "offset"}]
     1380 DUPTABLE                         R15 K80 [{"depth", "prefix"}]
     1381 LOADN                            R16 0
     1382 SETTABLEKS                       R16 R15 K18 ["depth"]
     1384 LOADK                            R16 K97 ["* "]
     1385 SETTABLEKS                       R16 R15 K79 ["prefix"]
     1387 SETTABLEKS                       R15 R14 K15 ["attributes"]
     1389 NEWTABLE                         R15 0 3
     1391 DUPTABLE                         R16 K109 [{"children", "name", "offset", "text"}]
     1392 NEWTABLE                         R17 0 0
     1394 SETTABLEKS                       R17 R16 K11 ["children"]
     1396 LOADK                            R17 K22 ["TEXT"]
     1397 SETTABLEKS                       R17 R16 K12 ["name"]
     1399 LOADN                            R17 88
     1400 SETTABLEKS                       R17 R16 K13 ["offset"]
     1402 LOADK                            R17 K118 ["A list element with "]
     1403 SETTABLEKS                       R17 R16 K20 ["text"]
     1405 DUPTABLE                         R17 K116 [{"children", "attributes", "name", "offset", "text"}]
     1406 NEWTABLE                         R18 0 1
     1408 DUPTABLE                         R19 K14 [{"children", "name", "offset"}]
     1409 NEWTABLE                         R20 0 1
     1411 DUPTABLE                         R21 K109 [{"children", "name", "offset", "text"}]
     1412 NEWTABLE                         R22 0 0
     1414 SETTABLEKS                       R22 R21 K11 ["children"]
     1416 LOADK                            R22 K22 ["TEXT"]
     1417 SETTABLEKS                       R22 R21 K12 ["name"]
     1419 LOADN                            R22 114
     1420 SETTABLEKS                       R22 R21 K13 ["offset"]
     1422 LOADK                            R22 K119 ["a tag"]
     1423 SETTABLEKS                       R22 R21 K20 ["text"]
     1425 SETLIST                          R20 R21 1 [1]
     1427 SETTABLEKS                       R20 R19 K11 ["children"]
     1429 LOADK                            R20 K33 ["PARAGRAPH"]
     1430 SETTABLEKS                       R20 R19 K12 ["name"]
     1432 LOADN                            R20 114
     1433 SETTABLEKS                       R20 R19 K13 ["offset"]
     1435 SETLIST                          R18 R19 1 [1]
     1437 SETTABLEKS                       R18 R17 K11 ["children"]
     1439 NEWTABLE                         R18 0 0
     1441 SETTABLEKS                       R18 R17 K15 ["attributes"]
     1443 LOADK                            R18 K111 ["TAG"]
     1444 SETTABLEKS                       R18 R17 K12 ["name"]
     1446 LOADN                            R18 108
     1447 SETTABLEKS                       R18 R17 K13 ["offset"]
     1449 LOADK                            R18 K112 ["span"]
     1450 SETTABLEKS                       R18 R17 K20 ["text"]
     1452 DUPTABLE                         R18 K109 [{"children", "name", "offset", "text"}]
     1453 NEWTABLE                         R19 0 0
     1455 SETTABLEKS                       R19 R18 K11 ["children"]
     1457 LOADK                            R19 K22 ["TEXT"]
     1458 SETTABLEKS                       R19 R18 K12 ["name"]
     1460 LOADN                            R19 126
     1461 SETTABLEKS                       R19 R18 K13 ["offset"]
     1463 LOADK                            R19 K114 ["."]
     1464 SETTABLEKS                       R19 R18 K20 ["text"]
     1466 SETLIST                          R15 R16 3 [1]
     1468 SETTABLEKS                       R15 R14 K11 ["children"]
     1470 LOADB                            R15 1
     1471 SETTABLEKS                       R15 R14 K16 ["isBlock"]
     1473 LOADK                            R15 K83 ["LIST_ITEM"]
     1474 SETTABLEKS                       R15 R14 K12 ["name"]
     1476 LOADN                            R15 85
     1477 SETTABLEKS                       R15 R14 K13 ["offset"]
     1479 SETLIST                          R13 R14 1 [1]
     1481 SETTABLEKS                       R13 R12 K11 ["children"]
     1483 LOADK                            R13 K89 ["LIST"]
     1484 SETTABLEKS                       R13 R12 K12 ["name"]
     1486 LOADN                            R13 85
     1487 SETTABLEKS                       R13 R12 K13 ["offset"]
     1489 SETLIST                          R9 R10 3 [1]
     1491 SETTABLEKS                       R9 R8 K11 ["children"]
     1493 LOADK                            R9 K111 ["TAG"]
     1494 SETTABLEKS                       R9 R8 K12 ["name"]
     1496 LOADN                            R9 51
     1497 SETTABLEKS                       R9 R8 K13 ["offset"]
     1499 LOADK                            R9 K113 ["div"]
     1500 SETTABLEKS                       R9 R8 K20 ["text"]
     1502 DUPTABLE                         R9 K120 [{"name", "offset", "children"}]
     1503 LOADK                            R21 K33 ["PARAGRAPH"]
     1504 SETTABLEKS                       R21 R9 K12 ["name"]
     1506 LOADN                            R21 135
     1507 SETTABLEKS                       R21 R9 K13 ["offset"]
     1509 NEWTABLE                         R21 0 2
     1511 DUPTABLE                         R22 K21 [{"name", "offset", "text"}]
     1512 LOADK                            R23 K22 ["TEXT"]
     1513 SETTABLEKS                       R23 R22 K12 ["name"]
     1515 LOADN                            R23 135
     1516 SETTABLEKS                       R23 R22 K13 ["offset"]
     1518 LOADK                            R23 K121 ["An "]
     1519 SETTABLEKS                       R23 R22 K20 ["text"]
     1521 DUPTABLE                         R23 K122 [{"children", "name", "offset", "text", "url", "attributes"}]
     1522 NEWTABLE                         R24 0 0
     1524 SETTABLEKS                       R24 R23 K11 ["children"]
     1526 LOADK                            R24 K123 ["IMAGE"]
     1527 SETTABLEKS                       R24 R23 K12 ["name"]
     1529 LOADN                            R24 139
     1530 SETTABLEKS                       R24 R23 K13 ["offset"]
     1532 LOADK                            R24 K124 ["Image"]
     1533 SETTABLEKS                       R24 R23 K20 ["text"]
     1535 JUMPIF                           R1 ; [+2]
     1536 LOADK                            R24 K125 ["rbxassetid://123456"]
     1537 JUMP                             ; [+1]
     1538 LOADNIL                          R24
     1539 SETTABLEKS                       R24 R23 K73 ["url"]
     1541 JUMPIFNOT                        R1 ; [+5]
     1542 DUPTABLE                         R24 K78 [{"url"}]
     1543 LOADK                            R25 K125 ["rbxassetid://123456"]
     1544 SETTABLEKS                       R25 R24 K73 ["url"]
     1546 JUMP                             ; [+1]
     1547 LOADNIL                          R24
     1548 SETTABLEKS                       R24 R23 K15 ["attributes"]
     1550 SETLIST                          R21 R22 2 [1]
     1552 SETTABLEKS                       R21 R9 K11 ["children"]
     1554 SETLIST                          R4 R5 5 [17]
     1556 SETTABLEKS                       R4 R3 K11 ["children"]
     1558 LOADK                            R4 K126 ["ROOT"]
     1559 SETTABLEKS                       R4 R3 K12 ["name"]
     1561 LOADN                            R4 1
     1562 SETTABLEKS                       R4 R3 K13 ["offset"]
     1564 DUPTABLE                         R4 K129 [{"markdown", "ast"}]
     1565 SETTABLEKS                       R2 R4 K127 ["markdown"]
     1567 SETTABLEKS                       R3 R4 K128 ["ast"]
     1569 RETURN                           R4 1
