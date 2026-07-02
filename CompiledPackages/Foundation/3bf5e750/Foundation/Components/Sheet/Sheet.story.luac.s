PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       11 LOADNIL                          R5
       12 DUPTABLE                         R6 K5 [{"Button", "Sheet"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["createElement"]
       16 GETUPVAL                         R8 1
       17 DUPTABLE                         R9 K9 [{["onActivated"], ["text"] = "Open Sheet"}]
       18 NEWCLOSURE                       R10 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K3 ["Button"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K1 ["createElement"]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K10 ["Root"]
       31 DUPTABLE                         R9 K16 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       32 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       34 NEWTABLE                         R10 0 2
       36 LOADK                            R11 K17 [0.5]
       37 LOADK                            R12 K18 [0.9]
       38 SETLIST                          R10 R11 2 [1]
       40 SETTABLEKS                       R10 R9 K12 ["snapPoints"]
       42 GETTABLEKS                       R10 R0 K19 ["controls"]
       44 GETTABLEKS                       R10 R10 K13 ["preferCenterSheet"]
       46 SETTABLEKS                       R10 R9 K13 ["preferCenterSheet"]
       48 GETTABLEKS                       R10 R0 K19 ["controls"]
       50 GETTABLEKS                       R10 R10 K14 ["size"]
       52 SETTABLEKS                       R10 R9 K14 ["size"]
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R10 R9 K15 ["onClose"]
       58 DUPTABLE                         R10 K23 [{"Header", "Content", "Actions"}]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K1 ["createElement"]
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K20 ["Header"]
       65 LOADNIL                          R13
       66 DUPTABLE                         R14 K27 [{"GameIcon", "Text", "Notification"}]
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R15 R15 K1 ["createElement"]
       70 GETUPVAL                         R16 3
       71 DUPTABLE                         R17 K32 [{["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small bg-shift-200"}]
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K24 ["GameIcon"]
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R15 R15 K1 ["createElement"]
       78 GETUPVAL                         R16 4
       79 DUPTABLE                         R17 K35 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall fill auto-xy"}]
       80 DUPTABLE                         R18 K38 [{"Title", "Subtitle"}]
       81 GETUPVAL                         R19 0
       82 GETTABLEKS                       R19 R19 K1 ["createElement"]
       84 GETUPVAL                         R20 5
       85 DUPTABLE                         R21 K41 [{["LayoutOrder"] = 1, ["Text"] = "Sheet Title", ["tag"] = "text-title-large content-emphasis auto-xy text-truncate-split"}]
       86 CALL                             R19 2 1
       87 SETTABLEKS                       R19 R18 K36 ["Title"]
       89 GETUPVAL                         R19 0
       90 GETTABLEKS                       R19 R19 K1 ["createElement"]
       92 GETUPVAL                         R20 5
       93 DUPTABLE                         R21 K44 [{["LayoutOrder"] = 2, ["Text"] = "Subtitle or description goes here", ["tag"] = "text-body-small content-default auto-xy text-truncate-split"}]
       94 CALL                             R19 2 1
       95 SETTABLEKS                       R19 R18 K37 ["Subtitle"]
       97 CALL                             R15 3 1
       98 SETTABLEKS                       R15 R14 K25 ["Text"]
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R15 R15 K1 ["createElement"]
      103 GETUPVAL                         R16 6
      104 DUPTABLE                         R17 K48 [{["LayoutOrder"] = 3, ["Size"], ["icon"], ["onActivated"]}]
      105 GETUPVAL                         R18 7
      106 GETTABLEKS                       R18 R18 K49 ["Large"]
      108 SETTABLEKS                       R18 R17 K46 ["Size"]
      110 GETUPVAL                         R18 8
      111 GETTABLEKS                       R18 R18 K50 ["Bell"]
      113 SETTABLEKS                       R18 R17 K47 ["icon"]
      115 DUPCLOSURE                       R18 K51 [PROTO_2]
      116 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K26 ["Notification"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K20 ["Header"]
      124 GETUPVAL                         R11 0
      125 GETTABLEKS                       R11 R11 K1 ["createElement"]
      127 GETUPVAL                         R12 2
      128 GETTABLEKS                       R12 R12 K21 ["Content"]
      130 LOADNIL                          R13
      131 DUPTABLE                         R14 K64 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K1 ["createElement"]
      135 GETUPVAL                         R16 4
      136 DUPTABLE                         R17 K66 [{["LayoutOrder"] = 2, ["tag"] = "size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"}]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K52 ["Carousel"]
      140 GETUPVAL                         R15 0
      141 GETTABLEKS                       R15 R15 K1 ["createElement"]
      143 GETUPVAL                         R16 4
      144 DUPTABLE                         R17 K68 [{["tag"] = "row gap-medium auto-y size-full-0 items-center flex-fill", ["LayoutOrder"] = 3}]
      145 DUPTABLE                         R18 K72 [{"Rating", "Active", "Age", "Maturity"}]
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R19 R19 K1 ["createElement"]
      149 GETUPVAL                         R20 4
      150 DUPTABLE                         R21 K74 [{["LayoutOrder"] = 1, ["tag"] = "col gap-small align-x-center auto-xy"}]
      151 DUPTABLE                         R22 K77 [{"Label", "Value"}]
      152 GETUPVAL                         R23 0
      153 GETTABLEKS                       R23 R23 K1 ["createElement"]
      155 GETUPVAL                         R24 5
      156 DUPTABLE                         R25 K79 [{["LayoutOrder"] = 1, ["Text"] = "Rating", ["tag"] = "text-body-small content-default auto-xy"}]
      157 CALL                             R23 2 1
      158 SETTABLEKS                       R23 R22 K75 ["Label"]
      160 GETUPVAL                         R23 0
      161 GETTABLEKS                       R23 R23 K1 ["createElement"]
      163 GETUPVAL                         R24 5
      164 DUPTABLE                         R25 K82 [{["LayoutOrder"] = 2, ["Text"] = "94%", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      165 CALL                             R23 2 1
      166 SETTABLEKS                       R23 R22 K76 ["Value"]
      168 CALL                             R19 3 1
      169 SETTABLEKS                       R19 R18 K54 ["Rating"]
      171 GETUPVAL                         R19 0
      172 GETTABLEKS                       R19 R19 K1 ["createElement"]
      174 GETUPVAL                         R20 4
      175 DUPTABLE                         R21 K83 [{["LayoutOrder"] = 3, ["tag"] = "col gap-small align-x-center auto-xy"}]
      176 DUPTABLE                         R22 K77 [{"Label", "Value"}]
      177 GETUPVAL                         R23 0
      178 GETTABLEKS                       R23 R23 K1 ["createElement"]
      180 GETUPVAL                         R24 5
      181 DUPTABLE                         R25 K84 [{["LayoutOrder"] = 1, ["Text"] = "Active", ["tag"] = "text-body-small content-default auto-xy"}]
      182 CALL                             R23 2 1
      183 SETTABLEKS                       R23 R22 K75 ["Label"]
      185 GETUPVAL                         R23 0
      186 GETTABLEKS                       R23 R23 K1 ["createElement"]
      188 GETUPVAL                         R24 5
      189 DUPTABLE                         R25 K86 [{["LayoutOrder"] = 2, ["Text"] = "1.2K", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      190 CALL                             R23 2 1
      191 SETTABLEKS                       R23 R22 K76 ["Value"]
      193 CALL                             R19 3 1
      194 SETTABLEKS                       R19 R18 K69 ["Active"]
      196 GETUPVAL                         R19 0
      197 GETTABLEKS                       R19 R19 K1 ["createElement"]
      199 GETUPVAL                         R20 4
      200 DUPTABLE                         R21 K88 [{["LayoutOrder"] = 5, ["tag"] = "col gap-small align-x-center auto-xy"}]
      201 DUPTABLE                         R22 K77 [{"Label", "Value"}]
      202 GETUPVAL                         R23 0
      203 GETTABLEKS                       R23 R23 K1 ["createElement"]
      205 GETUPVAL                         R24 5
      206 DUPTABLE                         R25 K89 [{["LayoutOrder"] = 1, ["Text"] = "Age", ["tag"] = "text-body-small content-default auto-xy"}]
      207 CALL                             R23 2 1
      208 SETTABLEKS                       R23 R22 K75 ["Label"]
      210 GETUPVAL                         R23 0
      211 GETTABLEKS                       R23 R23 K1 ["createElement"]
      213 GETUPVAL                         R24 5
      214 DUPTABLE                         R25 K91 [{["LayoutOrder"] = 2, ["Text"] = "13+", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      215 CALL                             R23 2 1
      216 SETTABLEKS                       R23 R22 K76 ["Value"]
      218 CALL                             R19 3 1
      219 SETTABLEKS                       R19 R18 K70 ["Age"]
      221 GETUPVAL                         R19 0
      222 GETTABLEKS                       R19 R19 K1 ["createElement"]
      224 GETUPVAL                         R20 4
      225 DUPTABLE                         R21 K93 [{["LayoutOrder"] = 7, ["tag"] = "col gap-small align-x-center auto-xy"}]
      226 DUPTABLE                         R22 K77 [{"Label", "Value"}]
      227 GETUPVAL                         R23 0
      228 GETTABLEKS                       R23 R23 K1 ["createElement"]
      230 GETUPVAL                         R24 5
      231 DUPTABLE                         R25 K94 [{["LayoutOrder"] = 1, ["Text"] = "Maturity", ["tag"] = "text-body-small content-default auto-xy"}]
      232 CALL                             R23 2 1
      233 SETTABLEKS                       R23 R22 K75 ["Label"]
      235 GETUPVAL                         R23 0
      236 GETTABLEKS                       R23 R23 K1 ["createElement"]
      238 GETUPVAL                         R24 5
      239 DUPTABLE                         R25 K96 [{["LayoutOrder"] = 2, ["Text"] = "Everyone", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      240 CALL                             R23 2 1
      241 SETTABLEKS                       R23 R22 K76 ["Value"]
      243 CALL                             R19 3 1
      244 SETTABLEKS                       R19 R18 K71 ["Maturity"]
      246 CALL                             R15 3 1
      247 SETTABLEKS                       R15 R14 K53 ["Attributes"]
      249 GETUPVAL                         R15 0
      250 GETTABLEKS                       R15 R15 K1 ["createElement"]
      252 GETUPVAL                         R16 4
      253 DUPTABLE                         R17 K99 [{["LayoutOrder"] = 4, ["tag"] = "row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"}]
      254 DUPTABLE                         R18 K103 [{"Icon", "Rating", "Up", "Down"}]
      255 GETUPVAL                         R19 0
      256 GETTABLEKS                       R19 R19 K1 ["createElement"]
      258 GETUPVAL                         R20 9
      259 DUPTABLE                         R21 K105 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      260 GETUPVAL                         R22 8
      261 GETTABLEKS                       R22 R22 K106 ["ThumbUp"]
      263 SETTABLEKS                       R22 R21 K104 ["name"]
      265 GETUPVAL                         R22 10
      266 GETTABLEKS                       R22 R22 K49 ["Large"]
      268 SETTABLEKS                       R22 R21 K14 ["size"]
      270 CALL                             R19 2 1
      271 SETTABLEKS                       R19 R18 K100 ["Icon"]
      273 GETUPVAL                         R19 0
      274 GETTABLEKS                       R19 R19 K1 ["createElement"]
      276 GETUPVAL                         R20 4
      277 DUPTABLE                         R21 K108 [{["LayoutOrder"] = 2, ["tag"] = "col grow auto-xy"}]
      278 DUPTABLE                         R22 K109 [{"Value", "Label"}]
      279 GETUPVAL                         R23 0
      280 GETTABLEKS                       R23 R23 K1 ["createElement"]
      282 GETUPVAL                         R24 5
      283 DUPTABLE                         R25 K111 [{["LayoutOrder"] = 1, ["Text"] = "94%", ["tag"] = "text-body-medium content-emphasis auto-xy"}]
      284 CALL                             R23 2 1
      285 SETTABLEKS                       R23 R22 K76 ["Value"]
      287 GETUPVAL                         R23 0
      288 GETTABLEKS                       R23 R23 K1 ["createElement"]
      290 GETUPVAL                         R24 5
      291 DUPTABLE                         R25 K113 [{["LayoutOrder"] = 2, ["Text"] = "100 VOTES", ["tag"] = "text-body-small content-default auto-xy"}]
      292 CALL                             R23 2 1
      293 SETTABLEKS                       R23 R22 K75 ["Label"]
      295 CALL                             R19 3 1
      296 SETTABLEKS                       R19 R18 K54 ["Rating"]
      298 GETUPVAL                         R19 0
      299 GETTABLEKS                       R19 R19 K1 ["createElement"]
      301 GETUPVAL                         R20 6
      302 DUPTABLE                         R21 K114 [{["LayoutOrder"] = 3, ["icon"], ["size"], ["onActivated"]}]
      303 GETUPVAL                         R22 8
      304 GETTABLEKS                       R22 R22 K106 ["ThumbUp"]
      306 SETTABLEKS                       R22 R21 K47 ["icon"]
      308 GETUPVAL                         R22 7
      309 GETTABLEKS                       R22 R22 K49 ["Large"]
      311 SETTABLEKS                       R22 R21 K14 ["size"]
      313 DUPCLOSURE                       R22 K115 [PROTO_3]
      314 SETTABLEKS                       R22 R21 K6 ["onActivated"]
      316 CALL                             R19 2 1
      317 SETTABLEKS                       R19 R18 K101 ["Up"]
      319 GETUPVAL                         R19 0
      320 GETTABLEKS                       R19 R19 K1 ["createElement"]
      322 GETUPVAL                         R20 6
      323 DUPTABLE                         R21 K116 [{["LayoutOrder"] = 4, ["icon"], ["size"], ["onActivated"]}]
      324 GETUPVAL                         R22 8
      325 GETTABLEKS                       R22 R22 K117 ["ThumbDown"]
      327 SETTABLEKS                       R22 R21 K47 ["icon"]
      329 GETUPVAL                         R22 7
      330 GETTABLEKS                       R22 R22 K49 ["Large"]
      332 SETTABLEKS                       R22 R21 K14 ["size"]
      334 DUPCLOSURE                       R22 K118 [PROTO_4]
      335 SETTABLEKS                       R22 R21 K6 ["onActivated"]
      337 CALL                             R19 2 1
      338 SETTABLEKS                       R19 R18 K102 ["Down"]
      340 CALL                             R15 3 1
      341 SETTABLEKS                       R15 R14 K54 ["Rating"]
      343 GETUPVAL                         R15 0
      344 GETTABLEKS                       R15 R15 K1 ["createElement"]
      346 GETUPVAL                         R16 5
      347 DUPTABLE                         R17 K121 [{["LayoutOrder"] = 5, ["Text"] = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      348 CALL                             R15 2 1
      349 SETTABLEKS                       R15 R14 K55 ["Description"]
      351 GETUPVAL                         R15 0
      352 GETTABLEKS                       R15 R15 K1 ["createElement"]
      354 GETUPVAL                         R16 5
      355 DUPTABLE                         R17 K124 [{["LayoutOrder"] = 6, ["Text"] = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      356 CALL                             R15 2 1
      357 SETTABLEKS                       R15 R14 K56 ["Description2"]
      359 GETUPVAL                         R15 0
      360 GETTABLEKS                       R15 R15 K1 ["createElement"]
      362 GETUPVAL                         R16 5
      363 DUPTABLE                         R17 K126 [{["LayoutOrder"] = 7, ["Text"] = "This sheet is fully responsive and will adapt to different screen sizes and orientations.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      364 CALL                             R15 2 1
      365 SETTABLEKS                       R15 R14 K57 ["Description3"]
      367 GETUPVAL                         R15 0
      368 GETTABLEKS                       R15 R15 K1 ["createElement"]
      370 GETUPVAL                         R16 5
      371 DUPTABLE                         R17 K129 [{["LayoutOrder"] = 8, ["Text"] = "You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      372 CALL                             R15 2 1
      373 SETTABLEKS                       R15 R14 K58 ["Description4"]
      375 GETUPVAL                         R15 0
      376 GETTABLEKS                       R15 R15 K1 ["createElement"]
      378 GETUPVAL                         R16 5
      379 DUPTABLE                         R17 K132 [{["LayoutOrder"] = 9, ["Text"] = "Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      380 CALL                             R15 2 1
      381 SETTABLEKS                       R15 R14 K59 ["Description5"]
      383 GETUPVAL                         R15 0
      384 GETTABLEKS                       R15 R15 K1 ["createElement"]
      386 GETUPVAL                         R16 5
      387 DUPTABLE                         R17 K135 [{["LayoutOrder"] = 10, ["Text"] = "This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      388 CALL                             R15 2 1
      389 SETTABLEKS                       R15 R14 K60 ["Description6"]
      391 GETUPVAL                         R15 0
      392 GETTABLEKS                       R15 R15 K1 ["createElement"]
      394 GETUPVAL                         R16 5
      395 DUPTABLE                         R17 K138 [{["LayoutOrder"] = 11, ["Text"] = "Thank you for checking out this example of a sheet component in Roblox using the Foundation library!", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      396 CALL                             R15 2 1
      397 SETTABLEKS                       R15 R14 K61 ["Description7"]
      399 GETUPVAL                         R15 0
      400 GETTABLEKS                       R15 R15 K1 ["createElement"]
      402 GETUPVAL                         R16 5
      403 DUPTABLE                         R17 K141 [{["LayoutOrder"] = 12, ["Text"] = "Feel free to reach out if you have any questions or need further assistance.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      404 CALL                             R15 2 1
      405 SETTABLEKS                       R15 R14 K62 ["Description8"]
      407 GETUPVAL                         R15 0
      408 GETTABLEKS                       R15 R15 K1 ["createElement"]
      410 GETUPVAL                         R16 5
      411 DUPTABLE                         R17 K144 [{["LayoutOrder"] = 13, ["Text"] = "Happy developing!", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      412 CALL                             R15 2 1
      413 SETTABLEKS                       R15 R14 K63 ["Description9"]
      415 CALL                             R11 3 1
      416 SETTABLEKS                       R11 R10 K21 ["Content"]
      418 GETUPVAL                         R11 0
      419 GETTABLEKS                       R11 R11 K1 ["createElement"]
      421 GETUPVAL                         R12 2
      422 GETTABLEKS                       R12 R12 K22 ["Actions"]
      424 LOADNIL                          R13
      425 DUPTABLE                         R14 K148 [{"More", "Invite", "Join"}]
      426 GETUPVAL                         R15 0
      427 GETTABLEKS                       R15 R15 K1 ["createElement"]
      429 GETUPVAL                         R16 6
      430 DUPTABLE                         R17 K149 [{["LayoutOrder"] = 1, ["icon"], ["size"], ["onActivated"]}]
      431 GETUPVAL                         R18 8
      432 GETTABLEKS                       R18 R18 K150 ["CircleThreeDotsHorizontal"]
      434 SETTABLEKS                       R18 R17 K47 ["icon"]
      436 GETUPVAL                         R18 7
      437 GETTABLEKS                       R18 R18 K49 ["Large"]
      439 SETTABLEKS                       R18 R17 K14 ["size"]
      441 DUPCLOSURE                       R18 K151 [PROTO_5]
      442 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      444 CALL                             R15 2 1
      445 SETTABLEKS                       R15 R14 K145 ["More"]
      447 GETUPVAL                         R15 0
      448 GETTABLEKS                       R15 R15 K1 ["createElement"]
      450 GETUPVAL                         R16 6
      451 DUPTABLE                         R17 K152 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"]}]
      452 GETUPVAL                         R18 8
      453 GETTABLEKS                       R18 R18 K153 ["PersonArrowFromBottomRight"]
      455 SETTABLEKS                       R18 R17 K47 ["icon"]
      457 GETUPVAL                         R18 7
      458 GETTABLEKS                       R18 R18 K49 ["Large"]
      460 SETTABLEKS                       R18 R17 K14 ["size"]
      462 DUPCLOSURE                       R18 K154 [PROTO_6]
      463 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      465 CALL                             R15 2 1
      466 SETTABLEKS                       R15 R14 K146 ["Invite"]
      468 GETUPVAL                         R15 0
      469 GETTABLEKS                       R15 R15 K1 ["createElement"]
      471 GETUPVAL                         R16 1
      472 DUPTABLE                         R17 K157 [{["LayoutOrder"] = 3, ["text"] = "Join", ["icon"], ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      473 GETUPVAL                         R18 8
      474 GETTABLEKS                       R18 R18 K158 ["PlayLarge"]
      476 SETTABLEKS                       R18 R17 K47 ["icon"]
      478 GETUPVAL                         R18 7
      479 GETTABLEKS                       R18 R18 K49 ["Large"]
      481 SETTABLEKS                       R18 R17 K14 ["size"]
      483 GETUPVAL                         R18 11
      484 GETTABLEKS                       R18 R18 K159 ["Emphasis"]
      486 SETTABLEKS                       R18 R17 K155 ["variant"]
      488 GETUPVAL                         R18 12
      489 GETTABLEKS                       R18 R18 K160 ["Fill"]
      491 SETTABLEKS                       R18 R17 K156 ["fillBehavior"]
      493 NEWCLOSURE                       R18 P7
      494 CAPTURE                          VAL R2
      495 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      497 CALL                             R15 2 1
      498 SETTABLEKS                       R15 R14 K147 ["Join"]
      500 CALL                             R11 3 1
      501 SETTABLEKS                       R11 R10 K22 ["Actions"]
      503 CALL                             R7 3 1
      504 SETTABLEKS                       R7 R6 K4 ["Sheet"]
      506 CALL                             R3 3 -1
      507 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K1 [0.2]
        8 GETUPVAL                         R5 1
        9 LOADN                            R6 300
       10 CALL                             R5 1 -1
       11 SETLIST                          R3 R4 -1 [1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K2 ["createElement"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K3 ["Fragment"]
       19 LOADNIL                          R6
       20 DUPTABLE                         R7 K6 [{"Button", "Sheet"}]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K2 ["createElement"]
       24 GETUPVAL                         R9 2
       25 DUPTABLE                         R10 K10 [{["onActivated"], ["text"] = "Open Sheet (Manual)"}]
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R11 R10 K7 ["onActivated"]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K4 ["Button"]
       33 JUMPIFNOT                        R1 ; [+71]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K2 ["createElement"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K11 ["Root"]
       40 DUPTABLE                         R10 K18 [{["snapPoints"], ["defaultSnapPointIndex"] = 2, ["preferCenterSheet"], ["size"], ["onClose"]}]
       41 SETTABLEKS                       R3 R10 K12 ["snapPoints"]
       43 GETTABLEKS                       R11 R0 K19 ["controls"]
       45 GETTABLEKS                       R11 R11 K15 ["preferCenterSheet"]
       47 SETTABLEKS                       R11 R10 K15 ["preferCenterSheet"]
       49 GETTABLEKS                       R11 R0 K19 ["controls"]
       51 GETTABLEKS                       R11 R11 K16 ["size"]
       53 SETTABLEKS                       R11 R10 K16 ["size"]
       55 NEWCLOSURE                       R11 P1
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R11 R10 K17 ["onClose"]
       59 DUPTABLE                         R11 K21 [{"Content"}]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K2 ["createElement"]
       63 GETUPVAL                         R13 3
       64 GETTABLEKS                       R13 R13 K20 ["Content"]
       66 LOADNIL                          R14
       67 DUPTABLE                         R15 K26 [{"Image", "Description", "Description2", "Description3"}]
       68 GETUPVAL                         R16 0
       69 GETTABLEKS                       R16 R16 K2 ["createElement"]
       71 GETUPVAL                         R17 4
       72 DUPTABLE                         R18 K31 [{["LayoutOrder"] = 1, ["tag"] = "size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"}]
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K22 ["Image"]
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K2 ["createElement"]
       79 GETUPVAL                         R17 5
       80 DUPTABLE                         R18 K35 [{["LayoutOrder"] = 2, ["Text"] = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
       81 CALL                             R16 2 1
       82 SETTABLEKS                       R16 R15 K23 ["Description"]
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R16 R16 K2 ["createElement"]
       87 GETUPVAL                         R17 5
       88 DUPTABLE                         R18 K38 [{["LayoutOrder"] = 3, ["Text"] = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K24 ["Description2"]
       92 GETUPVAL                         R16 0
       93 GETTABLEKS                       R16 R16 K2 ["createElement"]
       95 GETUPVAL                         R17 5
       96 DUPTABLE                         R18 K41 [{["LayoutOrder"] = 4, ["Text"] = "This sheet is fully responsive and will adapt to different screen sizes and orientations.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K25 ["Description3"]
      100 CALL                             R12 3 1
      101 SETTABLEKS                       R12 R11 K20 ["Content"]
      103 CALL                             R8 3 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R8
      106 SETTABLEKS                       R8 R7 K5 ["Sheet"]
      108 CALL                             R4 3 -1
      109 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row gap-medium size-full-0 auto-y items-center"}]
        5 DUPTABLE                         R4 K6 [{"Avatar", "Info"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K10 [{["size"], ["userId"] = 24813339}]
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R8 R8 K11 ["Large"]
       14 SETTABLEKS                       R8 R7 K7 ["size"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K4 ["Avatar"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 1
       23 DUPTABLE                         R7 K15 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall fill auto-xy"}]
       24 DUPTABLE                         R8 K18 [{"Username", "UserId"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K0 ["createElement"]
       28 GETUPVAL                         R10 4
       29 DUPTABLE                         R11 K22 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-body-medium content-emphasis auto-xy text-truncate-split"}]
       30 LOADK                            R13 K23 ["User #%*"]
       31 GETTABLEKS                       R15 R0 K24 ["index"]
       33 NAMECALL                         R13 R13 K25 ["format"]
       35 CALL                             R13 2 1
       36 MOVE                             R12 R13
       37 SETTABLEKS                       R12 R11 K20 ["Text"]
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K16 ["Username"]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K0 ["createElement"]
       45 GETUPVAL                         R10 4
       46 DUPTABLE                         R11 K27 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "text-body-small content-default auto-xy text-truncate-split"}]
       47 LOADK                            R13 K28 ["@user%*"]
       48 GETTABLEKS                       R15 R0 K24 ["index"]
       50 NAMECALL                         R13 R13 K25 ["format"]
       52 CALL                             R13 2 1
       53 MOVE                             R12 R13
       54 SETTABLEKS                       R12 R11 K20 ["Text"]
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K17 ["UserId"]
       59 CALL                             R5 3 1
       60 SETTABLEKS                       R5 R4 K5 ["Info"]
       62 CALL                             R1 3 -1
       63 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R4 1
        3 SUBK                             R3 R4 K0 [1]
        4 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [math.max]
        8 CALL                             R1 2 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADN                            R4 1
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 0
       12 LOADN                            R8 1
       13 MOVE                             R6 R3
       14 LOADN                            R7 1
       15 FORNPREP                         R6
       16 MOVE                             R10 R5
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K1 ["createElement"]
       20 GETUPVAL                         R12 1
       21 DUPTABLE                         R13 K4 [{"index", "key"}]
       22 SETTABLEKS                       R8 R13 K2 ["index"]
       24 SETTABLEKS                       R8 R13 K3 ["key"]
       26 CALL                             R11 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R9 K7 [table.insert]
       30 CALL                             R9 -1 0
       31 FORNLOOP                         R6
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K8 ["Fragment"]
       38 LOADNIL                          R8
       39 DUPTABLE                         R9 K11 [{"Button", "Sheet"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K1 ["createElement"]
       43 GETUPVAL                         R11 2
       44 DUPTABLE                         R12 K15 [{["onActivated"], ["text"] = "Open Sheet (Auto Size)"}]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R13 R12 K12 ["onActivated"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K9 ["Button"]
       52 JUMPIFNOT                        R1 ; [+123]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K1 ["createElement"]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R11 R11 K16 ["Root"]
       59 DUPTABLE                         R12 K20 [{"preferCenterSheet", "size", "onClose"}]
       60 GETTABLEKS                       R13 R0 K21 ["controls"]
       62 GETTABLEKS                       R13 R13 K17 ["preferCenterSheet"]
       64 SETTABLEKS                       R13 R12 K17 ["preferCenterSheet"]
       66 GETTABLEKS                       R13 R0 K21 ["controls"]
       68 GETTABLEKS                       R13 R13 K18 ["size"]
       70 SETTABLEKS                       R13 R12 K18 ["size"]
       72 NEWCLOSURE                       R13 P1
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R13 R12 K19 ["onClose"]
       76 DUPTABLE                         R13 K25 [{"Header", "Content", "Actions"}]
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K1 ["createElement"]
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K22 ["Header"]
       83 LOADNIL                          R16
       84 DUPTABLE                         R17 K27 [{"Title"}]
       85 GETUPVAL                         R18 0
       86 GETTABLEKS                       R18 R18 K1 ["createElement"]
       88 GETUPVAL                         R19 4
       89 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 1, ["Text"] = "Account Switcher", ["tag"] = "text-heading-large content-emphasis auto-xy text-truncate-split"}]
       90 CALL                             R18 2 1
       91 SETTABLEKS                       R18 R17 K26 ["Title"]
       93 CALL                             R14 3 1
       94 SETTABLEKS                       R14 R13 K22 ["Header"]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R14 R14 K1 ["createElement"]
       99 GETUPVAL                         R15 3
      100 GETTABLEKS                       R15 R15 K23 ["Content"]
      102 LOADNIL                          R16
      103 MOVE                             R17 R5
      104 CALL                             R14 3 1
      105 SETTABLEKS                       R14 R13 K23 ["Content"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K1 ["createElement"]
      110 GETUPVAL                         R15 3
      111 GETTABLEKS                       R15 R15 K24 ["Actions"]
      113 LOADNIL                          R16
      114 DUPTABLE                         R17 K37 [{"AddAccount", "RemoveAccount"}]
      115 GETUPVAL                         R18 0
      116 GETTABLEKS                       R18 R18 K1 ["createElement"]
      118 GETUPVAL                         R19 2
      119 DUPTABLE                         R20 K41 [{["LayoutOrder"] = 1, ["text"] = "Add Account", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      120 GETUPVAL                         R21 5
      121 GETTABLEKS                       R21 R21 K42 ["Large"]
      123 SETTABLEKS                       R21 R20 K18 ["size"]
      125 GETUPVAL                         R21 6
      126 GETTABLEKS                       R21 R21 K43 ["Emphasis"]
      128 SETTABLEKS                       R21 R20 K39 ["variant"]
      130 GETUPVAL                         R21 7
      131 GETTABLEKS                       R21 R21 K44 ["Fill"]
      133 SETTABLEKS                       R21 R20 K40 ["fillBehavior"]
      135 NEWCLOSURE                       R21 P2
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R3
      138 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K35 ["AddAccount"]
      143 GETUPVAL                         R18 0
      144 GETTABLEKS                       R18 R18 K1 ["createElement"]
      146 GETUPVAL                         R19 2
      147 DUPTABLE                         R20 K47 [{["LayoutOrder"] = 2, ["text"] = "Remove Account", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      148 GETUPVAL                         R21 5
      149 GETTABLEKS                       R21 R21 K42 ["Large"]
      151 SETTABLEKS                       R21 R20 K18 ["size"]
      153 GETUPVAL                         R21 6
      154 GETTABLEKS                       R21 R21 K48 ["Alert"]
      156 SETTABLEKS                       R21 R20 K39 ["variant"]
      158 GETUPVAL                         R21 7
      159 GETTABLEKS                       R21 R21 K44 ["Fill"]
      161 SETTABLEKS                       R21 R20 K40 ["fillBehavior"]
      163 NEWCLOSURE                       R21 P3
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K36 ["RemoveAccount"]
      171 CALL                             R14 3 1
      172 SETTABLEKS                       R14 R13 K24 ["Actions"]
      174 CALL                             R10 3 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R10
      177 SETTABLEKS                       R10 R9 K10 ["Sheet"]
      179 CALL                             R6 3 -1
      180 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Avatar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Button"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Icon"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["IconButton"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Image"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K14 ["Sheet"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K15 ["Text"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R11 K16 ["View"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R1 K17 ["BuilderIcons"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R11 R11 K11 ["Icon"]
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K18 ["Enums"]
       81 GETTABLEKS                       R13 R13 K19 ["ButtonVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K18 ["Enums"]
       88 GETTABLEKS                       R14 R14 K20 ["DialogSize"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K18 ["Enums"]
       95 GETTABLEKS                       R15 R15 K21 ["FillBehavior"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K18 ["Enums"]
      102 GETTABLEKS                       R16 R16 K22 ["IconSize"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K18 ["Enums"]
      109 GETTABLEKS                       R17 R17 K23 ["InputSize"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K24 ["Utility"]
      116 GETTABLEKS                       R18 R18 K25 ["useScaledValue"]
      118 CALL                             R17 1 1
      119 DUPCLOSURE                       R18 K26 [PROTO_8]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R14
      133 DUPCLOSURE                       R19 K27 [PROTO_11]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 DUPCLOSURE                       R20 K28 [PROTO_12]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R9
      146 DUPCLOSURE                       R21 K29 [PROTO_17]
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R14
      155 DUPTABLE                         R22 K33 [{["summary"] = "Sheet", ["stories"], ["controls"]}]
      156 NEWTABLE                         R23 0 3
      158 DUPTABLE                         R24 K37 [{["name"] = "Sheet (auto)", ["story"]}]
      159 SETTABLEKS                       R18 R24 K36 ["story"]
      161 DUPTABLE                         R25 K39 [{["name"] = "Sheet (manual)", ["story"]}]
      162 SETTABLEKS                       R19 R25 K36 ["story"]
      164 DUPTABLE                         R26 K41 [{["name"] = "Sheet (auto size)", ["story"]}]
      165 SETTABLEKS                       R21 R26 K36 ["story"]
      167 SETLIST                          R23 R24 3 [1]
      169 SETTABLEKS                       R23 R22 K31 ["stories"]
      171 DUPTABLE                         R23 K45 [{["preferCenterSheet"] = False, ["size"]}]
      172 NEWTABLE                         R24 0 2
      174 GETTABLEKS                       R25 R13 K46 ["Medium"]
      176 GETTABLEKS                       R26 R13 K47 ["Large"]
      178 SETLIST                          R24 R25 2 [1]
      180 SETTABLEKS                       R24 R23 K44 ["size"]
      182 SETTABLEKS                       R23 R22 K32 ["controls"]
      184 RETURN                           R22 1
