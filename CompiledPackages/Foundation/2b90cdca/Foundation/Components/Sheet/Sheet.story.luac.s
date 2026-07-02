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
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["createElement"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["Fragment"]
       13 LOADNIL                          R6
       14 DUPTABLE                         R7 K5 [{"Button", "Sheet"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K1 ["createElement"]
       18 GETUPVAL                         R9 2
       19 DUPTABLE                         R10 K9 [{["onActivated"], ["text"] = "Open Sheet"}]
       20 NEWCLOSURE                       R11 P0
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R11 R10 K6 ["onActivated"]
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K3 ["Button"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K1 ["createElement"]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K10 ["Root"]
       33 DUPTABLE                         R10 K16 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       34 SETTABLEKS                       R1 R10 K11 ["isOpen"]
       36 NEWTABLE                         R11 0 2
       38 LOADK                            R12 K17 [0.5]
       39 LOADK                            R13 K18 [0.9]
       40 SETLIST                          R11 R12 2 [1]
       42 SETTABLEKS                       R11 R10 K12 ["snapPoints"]
       44 GETTABLEKS                       R11 R0 K19 ["controls"]
       46 GETTABLEKS                       R11 R11 K13 ["preferCenterSheet"]
       48 SETTABLEKS                       R11 R10 K13 ["preferCenterSheet"]
       50 GETTABLEKS                       R11 R0 K19 ["controls"]
       52 GETTABLEKS                       R11 R11 K14 ["size"]
       54 SETTABLEKS                       R11 R10 K14 ["size"]
       56 NEWCLOSURE                       R11 P1
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R11 R10 K15 ["onClose"]
       60 DUPTABLE                         R11 K23 [{"Header", "Content", "Actions"}]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K1 ["createElement"]
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R13 R13 K20 ["Header"]
       67 LOADNIL                          R14
       68 DUPTABLE                         R15 K28 [{"Padding", "GameIcon", "Text", "Notification"}]
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K1 ["createElement"]
       72 LOADK                            R17 K29 ["UIPadding"]
       73 DUPTABLE                         R18 K33 [{"PaddingTop", "PaddingBottom", "PaddingRight"}]
       74 GETIMPORT                        R19 K36 [UDim.new]
       76 LOADN                            R20 0
       77 GETTABLEKS                       R21 R3 K24 ["Padding"]
       79 GETTABLEKS                       R21 R21 K37 ["Medium"]
       81 CALL                             R19 2 1
       82 SETTABLEKS                       R19 R18 K30 ["PaddingTop"]
       84 GETIMPORT                        R19 K36 [UDim.new]
       86 LOADN                            R20 0
       87 GETTABLEKS                       R21 R3 K24 ["Padding"]
       89 GETTABLEKS                       R21 R21 K37 ["Medium"]
       91 CALL                             R19 2 1
       92 SETTABLEKS                       R19 R18 K31 ["PaddingBottom"]
       94 GETIMPORT                        R19 K36 [UDim.new]
       96 LOADN                            R20 0
       97 GETTABLEKS                       R21 R3 K24 ["Padding"]
       99 GETTABLEKS                       R21 R21 K38 ["Small"]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K32 ["PaddingRight"]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K24 ["Padding"]
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R16 R16 K1 ["createElement"]
      110 GETUPVAL                         R17 4
      111 DUPTABLE                         R18 K43 [{["LayoutOrder"] = 1, ["tag"] = "size-1200 radius-small bg-shift-200"}]
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K25 ["GameIcon"]
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K1 ["createElement"]
      118 GETUPVAL                         R17 5
      119 DUPTABLE                         R18 K46 [{["LayoutOrder"] = 2, ["tag"] = "col fill gap-xsmall auto-xy"}]
      120 DUPTABLE                         R19 K49 [{"Title", "Subtitle"}]
      121 GETUPVAL                         R20 0
      122 GETTABLEKS                       R20 R20 K1 ["createElement"]
      124 GETUPVAL                         R21 6
      125 DUPTABLE                         R22 K52 [{["LayoutOrder"] = 1, ["Text"] = "Sheet Title", ["tag"] = "auto-xy text-title-large text-truncate-split content-emphasis"}]
      126 CALL                             R20 2 1
      127 SETTABLEKS                       R20 R19 K47 ["Title"]
      129 GETUPVAL                         R20 0
      130 GETTABLEKS                       R20 R20 K1 ["createElement"]
      132 GETUPVAL                         R21 6
      133 DUPTABLE                         R22 K55 [{["LayoutOrder"] = 2, ["Text"] = "Subtitle or description goes here", ["tag"] = "auto-xy text-body-small text-truncate-split content-default"}]
      134 CALL                             R20 2 1
      135 SETTABLEKS                       R20 R19 K48 ["Subtitle"]
      137 CALL                             R16 3 1
      138 SETTABLEKS                       R16 R15 K26 ["Text"]
      140 GETUPVAL                         R16 0
      141 GETTABLEKS                       R16 R16 K1 ["createElement"]
      143 GETUPVAL                         R17 7
      144 DUPTABLE                         R18 K59 [{["LayoutOrder"] = 3, ["Size"], ["icon"], ["onActivated"]}]
      145 GETUPVAL                         R19 8
      146 GETTABLEKS                       R19 R19 K60 ["Large"]
      148 SETTABLEKS                       R19 R18 K57 ["Size"]
      150 GETUPVAL                         R19 9
      151 GETTABLEKS                       R19 R19 K61 ["Bell"]
      153 SETTABLEKS                       R19 R18 K58 ["icon"]
      155 DUPCLOSURE                       R19 K62 [PROTO_2]
      156 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      158 CALL                             R16 2 1
      159 SETTABLEKS                       R16 R15 K27 ["Notification"]
      161 CALL                             R12 3 1
      162 SETTABLEKS                       R12 R11 K20 ["Header"]
      164 GETUPVAL                         R12 0
      165 GETTABLEKS                       R12 R12 K1 ["createElement"]
      167 GETUPVAL                         R13 3
      168 GETTABLEKS                       R13 R13 K21 ["Content"]
      170 DUPTABLE                         R14 K64 [{"isContentFullBleed"}]
      171 GETTABLEKS                       R15 R0 K19 ["controls"]
      173 GETTABLEKS                       R15 R15 K63 ["isContentFullBleed"]
      175 SETTABLEKS                       R15 R14 K63 ["isContentFullBleed"]
      177 DUPTABLE                         R15 K77 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      178 GETUPVAL                         R16 0
      179 GETTABLEKS                       R16 R16 K1 ["createElement"]
      181 GETUPVAL                         R17 5
      182 DUPTABLE                         R18 K79 [{["LayoutOrder"] = 2, ["tag"] = "size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"}]
      183 CALL                             R16 2 1
      184 SETTABLEKS                       R16 R15 K65 ["Carousel"]
      186 GETUPVAL                         R16 0
      187 GETTABLEKS                       R16 R16 K1 ["createElement"]
      189 GETUPVAL                         R17 5
      190 DUPTABLE                         R18 K81 [{["tag"] = "row flex-fill items-center gap-medium size-full-0 auto-y", ["LayoutOrder"] = 3}]
      191 DUPTABLE                         R19 K85 [{"Rating", "Active", "Age", "Maturity"}]
      192 GETUPVAL                         R20 0
      193 GETTABLEKS                       R20 R20 K1 ["createElement"]
      195 GETUPVAL                         R21 5
      196 DUPTABLE                         R22 K87 [{["LayoutOrder"] = 1, ["tag"] = "col align-x-center gap-small auto-xy"}]
      197 DUPTABLE                         R23 K90 [{"Label", "Value"}]
      198 GETUPVAL                         R24 0
      199 GETTABLEKS                       R24 R24 K1 ["createElement"]
      201 GETUPVAL                         R25 6
      202 DUPTABLE                         R26 K92 [{["LayoutOrder"] = 1, ["Text"] = "Rating", ["tag"] = "auto-xy text-body-small content-default"}]
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K88 ["Label"]
      206 GETUPVAL                         R24 0
      207 GETTABLEKS                       R24 R24 K1 ["createElement"]
      209 GETUPVAL                         R25 6
      210 DUPTABLE                         R26 K95 [{["LayoutOrder"] = 2, ["Text"] = "94%", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      211 CALL                             R24 2 1
      212 SETTABLEKS                       R24 R23 K89 ["Value"]
      214 CALL                             R20 3 1
      215 SETTABLEKS                       R20 R19 K67 ["Rating"]
      217 GETUPVAL                         R20 0
      218 GETTABLEKS                       R20 R20 K1 ["createElement"]
      220 GETUPVAL                         R21 5
      221 DUPTABLE                         R22 K96 [{["LayoutOrder"] = 3, ["tag"] = "col align-x-center gap-small auto-xy"}]
      222 DUPTABLE                         R23 K90 [{"Label", "Value"}]
      223 GETUPVAL                         R24 0
      224 GETTABLEKS                       R24 R24 K1 ["createElement"]
      226 GETUPVAL                         R25 6
      227 DUPTABLE                         R26 K97 [{["LayoutOrder"] = 1, ["Text"] = "Active", ["tag"] = "auto-xy text-body-small content-default"}]
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K88 ["Label"]
      231 GETUPVAL                         R24 0
      232 GETTABLEKS                       R24 R24 K1 ["createElement"]
      234 GETUPVAL                         R25 6
      235 DUPTABLE                         R26 K99 [{["LayoutOrder"] = 2, ["Text"] = "1.2K", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      236 CALL                             R24 2 1
      237 SETTABLEKS                       R24 R23 K89 ["Value"]
      239 CALL                             R20 3 1
      240 SETTABLEKS                       R20 R19 K82 ["Active"]
      242 GETUPVAL                         R20 0
      243 GETTABLEKS                       R20 R20 K1 ["createElement"]
      245 GETUPVAL                         R21 5
      246 DUPTABLE                         R22 K101 [{["LayoutOrder"] = 5, ["tag"] = "col align-x-center gap-small auto-xy"}]
      247 DUPTABLE                         R23 K90 [{"Label", "Value"}]
      248 GETUPVAL                         R24 0
      249 GETTABLEKS                       R24 R24 K1 ["createElement"]
      251 GETUPVAL                         R25 6
      252 DUPTABLE                         R26 K102 [{["LayoutOrder"] = 1, ["Text"] = "Age", ["tag"] = "auto-xy text-body-small content-default"}]
      253 CALL                             R24 2 1
      254 SETTABLEKS                       R24 R23 K88 ["Label"]
      256 GETUPVAL                         R24 0
      257 GETTABLEKS                       R24 R24 K1 ["createElement"]
      259 GETUPVAL                         R25 6
      260 DUPTABLE                         R26 K104 [{["LayoutOrder"] = 2, ["Text"] = "13+", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K89 ["Value"]
      264 CALL                             R20 3 1
      265 SETTABLEKS                       R20 R19 K83 ["Age"]
      267 GETUPVAL                         R20 0
      268 GETTABLEKS                       R20 R20 K1 ["createElement"]
      270 GETUPVAL                         R21 5
      271 DUPTABLE                         R22 K106 [{["LayoutOrder"] = 7, ["tag"] = "col align-x-center gap-small auto-xy"}]
      272 DUPTABLE                         R23 K90 [{"Label", "Value"}]
      273 GETUPVAL                         R24 0
      274 GETTABLEKS                       R24 R24 K1 ["createElement"]
      276 GETUPVAL                         R25 6
      277 DUPTABLE                         R26 K107 [{["LayoutOrder"] = 1, ["Text"] = "Maturity", ["tag"] = "auto-xy text-body-small content-default"}]
      278 CALL                             R24 2 1
      279 SETTABLEKS                       R24 R23 K88 ["Label"]
      281 GETUPVAL                         R24 0
      282 GETTABLEKS                       R24 R24 K1 ["createElement"]
      284 GETUPVAL                         R25 6
      285 DUPTABLE                         R26 K109 [{["LayoutOrder"] = 2, ["Text"] = "Everyone", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      286 CALL                             R24 2 1
      287 SETTABLEKS                       R24 R23 K89 ["Value"]
      289 CALL                             R20 3 1
      290 SETTABLEKS                       R20 R19 K84 ["Maturity"]
      292 CALL                             R16 3 1
      293 SETTABLEKS                       R16 R15 K66 ["Attributes"]
      295 GETUPVAL                         R16 0
      296 GETTABLEKS                       R16 R16 K1 ["createElement"]
      298 GETUPVAL                         R17 5
      299 DUPTABLE                         R18 K112 [{["LayoutOrder"] = 4, ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small radius-medium bg-shift-200"}]
      300 DUPTABLE                         R19 K116 [{"Icon", "Rating", "Up", "Down"}]
      301 GETUPVAL                         R20 0
      302 GETTABLEKS                       R20 R20 K1 ["createElement"]
      304 GETUPVAL                         R21 10
      305 DUPTABLE                         R22 K118 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      306 GETUPVAL                         R23 9
      307 GETTABLEKS                       R23 R23 K119 ["ThumbUp"]
      309 SETTABLEKS                       R23 R22 K117 ["name"]
      311 GETUPVAL                         R23 11
      312 GETTABLEKS                       R23 R23 K60 ["Large"]
      314 SETTABLEKS                       R23 R22 K14 ["size"]
      316 CALL                             R20 2 1
      317 SETTABLEKS                       R20 R19 K113 ["Icon"]
      319 GETUPVAL                         R20 0
      320 GETTABLEKS                       R20 R20 K1 ["createElement"]
      322 GETUPVAL                         R21 5
      323 DUPTABLE                         R22 K121 [{["LayoutOrder"] = 2, ["tag"] = "col grow auto-xy"}]
      324 DUPTABLE                         R23 K122 [{"Value", "Label"}]
      325 GETUPVAL                         R24 0
      326 GETTABLEKS                       R24 R24 K1 ["createElement"]
      328 GETUPVAL                         R25 6
      329 DUPTABLE                         R26 K124 [{["LayoutOrder"] = 1, ["Text"] = "94%", ["tag"] = "auto-xy text-body-medium content-emphasis"}]
      330 CALL                             R24 2 1
      331 SETTABLEKS                       R24 R23 K89 ["Value"]
      333 GETUPVAL                         R24 0
      334 GETTABLEKS                       R24 R24 K1 ["createElement"]
      336 GETUPVAL                         R25 6
      337 DUPTABLE                         R26 K126 [{["LayoutOrder"] = 2, ["Text"] = "100 VOTES", ["tag"] = "auto-xy text-body-small content-default"}]
      338 CALL                             R24 2 1
      339 SETTABLEKS                       R24 R23 K88 ["Label"]
      341 CALL                             R20 3 1
      342 SETTABLEKS                       R20 R19 K67 ["Rating"]
      344 GETUPVAL                         R20 0
      345 GETTABLEKS                       R20 R20 K1 ["createElement"]
      347 GETUPVAL                         R21 7
      348 DUPTABLE                         R22 K127 [{["LayoutOrder"] = 3, ["icon"], ["size"], ["onActivated"]}]
      349 GETUPVAL                         R23 9
      350 GETTABLEKS                       R23 R23 K119 ["ThumbUp"]
      352 SETTABLEKS                       R23 R22 K58 ["icon"]
      354 GETUPVAL                         R23 8
      355 GETTABLEKS                       R23 R23 K60 ["Large"]
      357 SETTABLEKS                       R23 R22 K14 ["size"]
      359 DUPCLOSURE                       R23 K128 [PROTO_3]
      360 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      362 CALL                             R20 2 1
      363 SETTABLEKS                       R20 R19 K114 ["Up"]
      365 GETUPVAL                         R20 0
      366 GETTABLEKS                       R20 R20 K1 ["createElement"]
      368 GETUPVAL                         R21 7
      369 DUPTABLE                         R22 K129 [{["LayoutOrder"] = 4, ["icon"], ["size"], ["onActivated"]}]
      370 GETUPVAL                         R23 9
      371 GETTABLEKS                       R23 R23 K130 ["ThumbDown"]
      373 SETTABLEKS                       R23 R22 K58 ["icon"]
      375 GETUPVAL                         R23 8
      376 GETTABLEKS                       R23 R23 K60 ["Large"]
      378 SETTABLEKS                       R23 R22 K14 ["size"]
      380 DUPCLOSURE                       R23 K131 [PROTO_4]
      381 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      383 CALL                             R20 2 1
      384 SETTABLEKS                       R20 R19 K115 ["Down"]
      386 CALL                             R16 3 1
      387 SETTABLEKS                       R16 R15 K67 ["Rating"]
      389 GETUPVAL                         R16 0
      390 GETTABLEKS                       R16 R16 K1 ["createElement"]
      392 GETUPVAL                         R17 6
      393 DUPTABLE                         R18 K134 [{["LayoutOrder"] = 5, ["Text"] = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      394 CALL                             R16 2 1
      395 SETTABLEKS                       R16 R15 K68 ["Description"]
      397 GETUPVAL                         R16 0
      398 GETTABLEKS                       R16 R16 K1 ["createElement"]
      400 GETUPVAL                         R17 6
      401 DUPTABLE                         R18 K137 [{["LayoutOrder"] = 6, ["Text"] = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      402 CALL                             R16 2 1
      403 SETTABLEKS                       R16 R15 K69 ["Description2"]
      405 GETUPVAL                         R16 0
      406 GETTABLEKS                       R16 R16 K1 ["createElement"]
      408 GETUPVAL                         R17 6
      409 DUPTABLE                         R18 K139 [{["LayoutOrder"] = 7, ["Text"] = "This sheet is fully responsive and will adapt to different screen sizes and orientations.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      410 CALL                             R16 2 1
      411 SETTABLEKS                       R16 R15 K70 ["Description3"]
      413 GETUPVAL                         R16 0
      414 GETTABLEKS                       R16 R16 K1 ["createElement"]
      416 GETUPVAL                         R17 6
      417 DUPTABLE                         R18 K142 [{["LayoutOrder"] = 8, ["Text"] = "You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      418 CALL                             R16 2 1
      419 SETTABLEKS                       R16 R15 K71 ["Description4"]
      421 GETUPVAL                         R16 0
      422 GETTABLEKS                       R16 R16 K1 ["createElement"]
      424 GETUPVAL                         R17 6
      425 DUPTABLE                         R18 K145 [{["LayoutOrder"] = 9, ["Text"] = "Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      426 CALL                             R16 2 1
      427 SETTABLEKS                       R16 R15 K72 ["Description5"]
      429 GETUPVAL                         R16 0
      430 GETTABLEKS                       R16 R16 K1 ["createElement"]
      432 GETUPVAL                         R17 6
      433 DUPTABLE                         R18 K148 [{["LayoutOrder"] = 10, ["Text"] = "This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      434 CALL                             R16 2 1
      435 SETTABLEKS                       R16 R15 K73 ["Description6"]
      437 GETUPVAL                         R16 0
      438 GETTABLEKS                       R16 R16 K1 ["createElement"]
      440 GETUPVAL                         R17 6
      441 DUPTABLE                         R18 K151 [{["LayoutOrder"] = 11, ["Text"] = "Thank you for checking out this example of a sheet component in Roblox using the Foundation library!", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      442 CALL                             R16 2 1
      443 SETTABLEKS                       R16 R15 K74 ["Description7"]
      445 GETUPVAL                         R16 0
      446 GETTABLEKS                       R16 R16 K1 ["createElement"]
      448 GETUPVAL                         R17 6
      449 DUPTABLE                         R18 K154 [{["LayoutOrder"] = 12, ["Text"] = "Feel free to reach out if you have any questions or need further assistance.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      450 CALL                             R16 2 1
      451 SETTABLEKS                       R16 R15 K75 ["Description8"]
      453 GETUPVAL                         R16 0
      454 GETTABLEKS                       R16 R16 K1 ["createElement"]
      456 GETUPVAL                         R17 6
      457 DUPTABLE                         R18 K157 [{["LayoutOrder"] = 13, ["Text"] = "Happy developing!", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      458 CALL                             R16 2 1
      459 SETTABLEKS                       R16 R15 K76 ["Description9"]
      461 CALL                             R12 3 1
      462 SETTABLEKS                       R12 R11 K21 ["Content"]
      464 GETUPVAL                         R12 0
      465 GETTABLEKS                       R12 R12 K1 ["createElement"]
      467 GETUPVAL                         R13 3
      468 GETTABLEKS                       R13 R13 K22 ["Actions"]
      470 LOADNIL                          R14
      471 DUPTABLE                         R15 K160 [{"SubActions", "Join"}]
      472 GETUPVAL                         R16 0
      473 GETTABLEKS                       R16 R16 K1 ["createElement"]
      475 GETUPVAL                         R17 5
      476 DUPTABLE                         R18 K162 [{["tag"] = "row auto-xy padding-right-small"}]
      477 DUPTABLE                         R19 K165 [{"More", "Invite"}]
      478 GETUPVAL                         R20 0
      479 GETTABLEKS                       R20 R20 K1 ["createElement"]
      481 GETUPVAL                         R21 7
      482 DUPTABLE                         R22 K166 [{["LayoutOrder"] = 1, ["icon"], ["size"], ["onActivated"]}]
      483 GETUPVAL                         R23 9
      484 GETTABLEKS                       R23 R23 K167 ["CircleThreeDotsHorizontal"]
      486 SETTABLEKS                       R23 R22 K58 ["icon"]
      488 GETUPVAL                         R23 8
      489 GETTABLEKS                       R23 R23 K60 ["Large"]
      491 SETTABLEKS                       R23 R22 K14 ["size"]
      493 DUPCLOSURE                       R23 K168 [PROTO_5]
      494 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      496 CALL                             R20 2 1
      497 SETTABLEKS                       R20 R19 K163 ["More"]
      499 GETUPVAL                         R20 0
      500 GETTABLEKS                       R20 R20 K1 ["createElement"]
      502 GETUPVAL                         R21 7
      503 DUPTABLE                         R22 K169 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"]}]
      504 GETUPVAL                         R23 9
      505 GETTABLEKS                       R23 R23 K170 ["PersonArrowFromBottomRight"]
      507 SETTABLEKS                       R23 R22 K58 ["icon"]
      509 GETUPVAL                         R23 8
      510 GETTABLEKS                       R23 R23 K60 ["Large"]
      512 SETTABLEKS                       R23 R22 K14 ["size"]
      514 DUPCLOSURE                       R23 K171 [PROTO_6]
      515 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      517 CALL                             R20 2 1
      518 SETTABLEKS                       R20 R19 K164 ["Invite"]
      520 CALL                             R16 3 1
      521 SETTABLEKS                       R16 R15 K158 ["SubActions"]
      523 GETUPVAL                         R16 0
      524 GETTABLEKS                       R16 R16 K1 ["createElement"]
      526 GETUPVAL                         R17 2
      527 DUPTABLE                         R18 K174 [{["LayoutOrder"] = 3, ["text"] = "Join", ["icon"], ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      528 GETUPVAL                         R19 9
      529 GETTABLEKS                       R19 R19 K175 ["PlayLarge"]
      531 SETTABLEKS                       R19 R18 K58 ["icon"]
      533 GETUPVAL                         R19 8
      534 GETTABLEKS                       R19 R19 K60 ["Large"]
      536 SETTABLEKS                       R19 R18 K14 ["size"]
      538 GETUPVAL                         R19 12
      539 GETTABLEKS                       R19 R19 K176 ["Emphasis"]
      541 SETTABLEKS                       R19 R18 K172 ["variant"]
      543 GETUPVAL                         R19 13
      544 GETTABLEKS                       R19 R19 K177 ["Fill"]
      546 SETTABLEKS                       R19 R18 K173 ["fillBehavior"]
      548 NEWCLOSURE                       R19 P7
      549 CAPTURE                          VAL R2
      550 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      552 CALL                             R16 2 1
      553 SETTABLEKS                       R16 R15 K159 ["Join"]
      555 CALL                             R12 3 1
      556 SETTABLEKS                       R12 R11 K22 ["Actions"]
      558 CALL                             R8 3 1
      559 SETTABLEKS                       R8 R7 K4 ["Sheet"]
      561 CALL                             R4 3 -1
      562 RETURN                           R4 -1

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
       33 JUMPIFNOT                        R1 ; [+83]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K2 ["createElement"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K11 ["Root"]
       40 DUPTABLE                         R10 K19 [{["centerSheetHeight"], ["snapPoints"], ["defaultSnapPointIndex"] = 2, ["preferCenterSheet"], ["size"], ["onClose"]}]
       41 GETTABLEKS                       R11 R0 K20 ["controls"]
       43 GETTABLEKS                       R11 R11 K12 ["centerSheetHeight"]
       45 SETTABLEKS                       R11 R10 K12 ["centerSheetHeight"]
       47 SETTABLEKS                       R3 R10 K13 ["snapPoints"]
       49 GETTABLEKS                       R11 R0 K20 ["controls"]
       51 GETTABLEKS                       R11 R11 K16 ["preferCenterSheet"]
       53 SETTABLEKS                       R11 R10 K16 ["preferCenterSheet"]
       55 GETTABLEKS                       R11 R0 K20 ["controls"]
       57 GETTABLEKS                       R11 R11 K17 ["size"]
       59 SETTABLEKS                       R11 R10 K17 ["size"]
       61 NEWCLOSURE                       R11 P1
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R11 R10 K18 ["onClose"]
       65 DUPTABLE                         R11 K22 [{"Content"}]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K2 ["createElement"]
       69 GETUPVAL                         R13 3
       70 GETTABLEKS                       R13 R13 K21 ["Content"]
       72 DUPTABLE                         R14 K24 [{"isContentFullBleed"}]
       73 GETTABLEKS                       R15 R0 K20 ["controls"]
       75 GETTABLEKS                       R15 R15 K23 ["isContentFullBleed"]
       77 SETTABLEKS                       R15 R14 K23 ["isContentFullBleed"]
       79 DUPTABLE                         R15 K29 [{"Image", "Description", "Description2", "Description3"}]
       80 GETUPVAL                         R16 0
       81 GETTABLEKS                       R16 R16 K2 ["createElement"]
       83 GETUPVAL                         R17 4
       84 DUPTABLE                         R18 K34 [{["LayoutOrder"] = 1, ["tag"] = "size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"}]
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K25 ["Image"]
       88 GETUPVAL                         R16 0
       89 GETTABLEKS                       R16 R16 K2 ["createElement"]
       91 GETUPVAL                         R17 5
       92 DUPTABLE                         R18 K38 [{["LayoutOrder"] = 2, ["Text"] = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K26 ["Description"]
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R16 R16 K2 ["createElement"]
       99 GETUPVAL                         R17 5
      100 DUPTABLE                         R18 K41 [{["LayoutOrder"] = 3, ["Text"] = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K27 ["Description2"]
      104 GETUPVAL                         R16 0
      105 GETTABLEKS                       R16 R16 K2 ["createElement"]
      107 GETUPVAL                         R17 5
      108 DUPTABLE                         R18 K44 [{["LayoutOrder"] = 4, ["Text"] = "This sheet is fully responsive and will adapt to different screen sizes and orientations.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K28 ["Description3"]
      112 CALL                             R12 3 1
      113 SETTABLEKS                       R12 R11 K21 ["Content"]
      115 CALL                             R8 3 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R8
      118 SETTABLEKS                       R8 R7 K5 ["Sheet"]
      120 CALL                             R4 3 -1
      121 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row items-center gap-medium size-full-0 auto-y"}]
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
       23 DUPTABLE                         R7 K15 [{["LayoutOrder"] = 2, ["tag"] = "col fill gap-xsmall auto-xy"}]
       24 DUPTABLE                         R8 K18 [{"Username", "UserId"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K0 ["createElement"]
       28 GETUPVAL                         R10 4
       29 DUPTABLE                         R11 K22 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-medium text-truncate-split content-emphasis"}]
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
       46 DUPTABLE                         R11 K27 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small text-truncate-split content-default"}]
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
       52 JUMPIFNOT                        R1 ; [+129]
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
       89 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 1, ["Text"] = "Account Switcher", ["tag"] = "auto-xy text-heading-small text-truncate-split content-emphasis"}]
       90 CALL                             R18 2 1
       91 SETTABLEKS                       R18 R17 K26 ["Title"]
       93 CALL                             R14 3 1
       94 SETTABLEKS                       R14 R13 K22 ["Header"]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R14 R14 K1 ["createElement"]
       99 GETUPVAL                         R15 3
      100 GETTABLEKS                       R15 R15 K23 ["Content"]
      102 DUPTABLE                         R16 K36 [{"isContentFullBleed"}]
      103 GETTABLEKS                       R17 R0 K21 ["controls"]
      105 GETTABLEKS                       R17 R17 K35 ["isContentFullBleed"]
      107 SETTABLEKS                       R17 R16 K35 ["isContentFullBleed"]
      109 MOVE                             R17 R5
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K23 ["Content"]
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K1 ["createElement"]
      116 GETUPVAL                         R15 3
      117 GETTABLEKS                       R15 R15 K24 ["Actions"]
      119 LOADNIL                          R16
      120 DUPTABLE                         R17 K39 [{"AddAccount", "RemoveAccount"}]
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K1 ["createElement"]
      124 GETUPVAL                         R19 2
      125 DUPTABLE                         R20 K43 [{["LayoutOrder"] = 1, ["text"] = "Add Account", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      126 GETUPVAL                         R21 5
      127 GETTABLEKS                       R21 R21 K44 ["Large"]
      129 SETTABLEKS                       R21 R20 K18 ["size"]
      131 GETUPVAL                         R21 6
      132 GETTABLEKS                       R21 R21 K45 ["Emphasis"]
      134 SETTABLEKS                       R21 R20 K41 ["variant"]
      136 GETUPVAL                         R21 7
      137 GETTABLEKS                       R21 R21 K46 ["Fill"]
      139 SETTABLEKS                       R21 R20 K42 ["fillBehavior"]
      141 NEWCLOSURE                       R21 P2
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R3
      144 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K37 ["AddAccount"]
      149 GETUPVAL                         R18 0
      150 GETTABLEKS                       R18 R18 K1 ["createElement"]
      152 GETUPVAL                         R19 2
      153 DUPTABLE                         R20 K49 [{["LayoutOrder"] = 2, ["text"] = "Remove Account", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      154 GETUPVAL                         R21 5
      155 GETTABLEKS                       R21 R21 K44 ["Large"]
      157 SETTABLEKS                       R21 R20 K18 ["size"]
      159 GETUPVAL                         R21 6
      160 GETTABLEKS                       R21 R21 K50 ["Alert"]
      162 SETTABLEKS                       R21 R20 K41 ["variant"]
      164 GETUPVAL                         R21 7
      165 GETTABLEKS                       R21 R21 K46 ["Fill"]
      167 SETTABLEKS                       R21 R20 K42 ["fillBehavior"]
      169 NEWCLOSURE                       R21 P3
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R3
      172 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K38 ["RemoveAccount"]
      177 CALL                             R14 3 1
      178 SETTABLEKS                       R14 R13 K24 ["Actions"]
      180 CALL                             R10 3 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R10
      183 SETTABLEKS                       R10 R9 K10 ["Sheet"]
      185 CALL                             R6 3 -1
      186 RETURN                           R6 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setContentStartRef"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R1 K2 ["setContentStartRef"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["createElement"]
       23 GETUPVAL                         R4 2
       24 DUPTABLE                         R5 K6 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       25 DUPTABLE                         R6 K9 [{"Notifications", "Analytics"}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K3 ["createElement"]
       29 GETUPVAL                         R8 3
       30 DUPTABLE                         R9 K19 [{["label"] = "Enable notifications", ["isChecked"], ["onActivated"], ["ref"], ["NextSelectionUp"], ["NextSelectionLeft"], ["LayoutOrder"] = 1}]
       31 GETTABLEKS                       R10 R0 K20 ["checkboxStates"]
       33 GETTABLEKS                       R10 R10 K21 ["notifications"]
       35 SETTABLEKS                       R10 R9 K12 ["isChecked"]
       37 GETTABLEKS                       R10 R0 K22 ["toggleCheckbox"]
       39 LOADK                            R11 K21 ["notifications"]
       40 CALL                             R10 1 1
       41 SETTABLEKS                       R10 R9 K13 ["onActivated"]
       43 SETTABLEKS                       R2 R9 K14 ["ref"]
       45 GETTABLEKS                       R10 R1 K23 ["closeAffordanceRef"]
       47 SETTABLEKS                       R10 R9 K15 ["NextSelectionUp"]
       49 GETTABLEKS                       R10 R1 K23 ["closeAffordanceRef"]
       51 SETTABLEKS                       R10 R9 K16 ["NextSelectionLeft"]
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K7 ["Notifications"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K3 ["createElement"]
       59 GETUPVAL                         R8 3
       60 DUPTABLE                         R9 K26 [{["label"] = "Share usage analytics", ["isChecked"], ["onActivated"], ["ref"], ["LayoutOrder"] = 2}]
       61 GETTABLEKS                       R10 R0 K20 ["checkboxStates"]
       63 GETTABLEKS                       R10 R10 K27 ["analytics"]
       65 SETTABLEKS                       R10 R9 K12 ["isChecked"]
       67 GETTABLEKS                       R10 R0 K22 ["toggleCheckbox"]
       69 LOADK                            R11 K27 ["analytics"]
       70 CALL                             R10 1 1
       71 SETTABLEKS                       R10 R9 K13 ["onActivated"]
       73 GETTABLEKS                       R10 R0 K28 ["lastCheckboxRef"]
       75 SETTABLEKS                       R10 R9 K14 ["ref"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K8 ["Analytics"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K4 [{["tag"] = "col gap-medium size-full-0 auto-y"}]
       12 DUPTABLE                         R6 K10 [{"Toolbar", "Image", "Title", "Description", "CloseButton"}]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K1 ["createElement"]
       16 GETUPVAL                         R8 2
       17 DUPTABLE                         R9 K14 [{["LayoutOrder"] = 1, ["tag"] = "row items-center gap-small size-full-0 auto-y"}]
       18 DUPTABLE                         R10 K18 [{"FavoriteButton", "ShareButton", "MoreButton"}]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R11 R11 K1 ["createElement"]
       22 GETUPVAL                         R12 3
       23 DUPTABLE                         R13 K22 [{["LayoutOrder"] = 1, ["icon"], ["size"], ["onActivated"]}]
       24 GETUPVAL                         R14 4
       25 GETTABLEKS                       R14 R14 K23 ["Heart"]
       27 SETTABLEKS                       R14 R13 K19 ["icon"]
       29 GETUPVAL                         R14 5
       30 GETTABLEKS                       R14 R14 K24 ["Large"]
       32 SETTABLEKS                       R14 R13 K20 ["size"]
       34 DUPCLOSURE                       R14 K25 [PROTO_20]
       35 SETTABLEKS                       R14 R13 K21 ["onActivated"]
       37 CALL                             R11 2 1
       38 SETTABLEKS                       R11 R10 K15 ["FavoriteButton"]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K1 ["createElement"]
       43 GETUPVAL                         R12 3
       44 DUPTABLE                         R13 K27 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"]}]
       45 GETUPVAL                         R14 4
       46 GETTABLEKS                       R14 R14 K28 ["ArrowUpRightFromSquare"]
       48 SETTABLEKS                       R14 R13 K19 ["icon"]
       50 GETUPVAL                         R14 5
       51 GETTABLEKS                       R14 R14 K24 ["Large"]
       53 SETTABLEKS                       R14 R13 K20 ["size"]
       55 DUPCLOSURE                       R14 K29 [PROTO_21]
       56 SETTABLEKS                       R14 R13 K21 ["onActivated"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K16 ["ShareButton"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K1 ["createElement"]
       64 GETUPVAL                         R12 3
       65 DUPTABLE                         R13 K33 [{["LayoutOrder"] = 3, ["icon"], ["size"], ["onActivated"], ["ref"], ["NextSelectionRight"]}]
       66 GETUPVAL                         R14 4
       67 GETTABLEKS                       R14 R14 K34 ["CircleThreeDotsHorizontal"]
       69 SETTABLEKS                       R14 R13 K19 ["icon"]
       71 GETUPVAL                         R14 5
       72 GETTABLEKS                       R14 R14 K24 ["Large"]
       74 SETTABLEKS                       R14 R13 K20 ["size"]
       76 DUPCLOSURE                       R14 K35 [PROTO_22]
       77 SETTABLEKS                       R14 R13 K21 ["onActivated"]
       79 SETTABLEKS                       R2 R13 K31 ["ref"]
       81 GETTABLEKS                       R14 R1 K36 ["closeAffordanceRef"]
       83 SETTABLEKS                       R14 R13 K32 ["NextSelectionRight"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K17 ["MoreButton"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K5 ["Toolbar"]
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R7 R7 K1 ["createElement"]
       94 GETUPVAL                         R8 2
       95 DUPTABLE                         R9 K38 [{["LayoutOrder"] = 2, ["tag"] = "size-full-full auto-y aspect-16-9 radius-medium bg-shift-200"}]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K6 ["Image"]
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K1 ["createElement"]
      102 GETUPVAL                         R8 6
      103 DUPTABLE                         R9 K42 [{["LayoutOrder"] = 3, ["Text"] = "Featured Content", ["tag"] = "size-full-0 auto-xy text-heading-small text-align-x-left content-emphasis"}]
      104 CALL                             R7 2 1
      105 SETTABLEKS                       R7 R6 K7 ["Title"]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K1 ["createElement"]
      110 GETUPVAL                         R8 6
      111 DUPTABLE                         R9 K46 [{["LayoutOrder"] = 4, ["Text"] = "This sheet has no header, so the floating CloseAffordance is visible in the top-right. Pressing left on the CloseAffordance navigates to the toolbar, and pressing right on the toolbar navigates back to the CloseAffordance.", ["tag"] = "size-full-0 auto-xy text-body-medium text-wrap text-align-x-left text-align-y-top content-default"}]
      112 CALL                             R7 2 1
      113 SETTABLEKS                       R7 R6 K8 ["Description"]
      115 GETUPVAL                         R7 1
      116 GETTABLEKS                       R7 R7 K1 ["createElement"]
      118 GETUPVAL                         R8 2
      119 DUPTABLE                         R9 K49 [{["LayoutOrder"] = 5, ["tag"] = "row align-x-right size-full-0 auto-y padding-top-medium"}]
      120 DUPTABLE                         R10 K51 [{"Button"}]
      121 GETUPVAL                         R11 1
      122 GETTABLEKS                       R11 R11 K1 ["createElement"]
      124 GETUPVAL                         R12 7
      125 DUPTABLE                         R13 K55 [{["text"] = "Close", ["onActivated"], ["variant"]}]
      126 GETTABLEKS                       R14 R0 K56 ["onClose"]
      128 SETTABLEKS                       R14 R13 K21 ["onActivated"]
      130 GETUPVAL                         R14 8
      131 GETTABLEKS                       R14 R14 K57 ["Emphasis"]
      133 SETTABLEKS                       R14 R13 K54 ["variant"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K50 ["Button"]
      138 CALL                             R7 3 1
      139 SETTABLEKS                       R7 R6 K9 ["CloseButton"]
      141 CALL                             R3 3 -1
      142 RETURN                           R3 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
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
       17 DUPTABLE                         R9 K9 [{["onActivated"], ["text"] = "Open Sheet (Left Navigation)"}]
       18 NEWCLOSURE                       R10 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K3 ["Button"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K1 ["createElement"]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K10 ["Root"]
       31 DUPTABLE                         R9 K15 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
       32 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       34 GETTABLEKS                       R10 R0 K16 ["controls"]
       36 GETTABLEKS                       R10 R10 K12 ["preferCenterSheet"]
       38 SETTABLEKS                       R10 R9 K12 ["preferCenterSheet"]
       40 GETTABLEKS                       R10 R0 K16 ["controls"]
       42 GETTABLEKS                       R10 R10 K13 ["size"]
       44 SETTABLEKS                       R10 R9 K13 ["size"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R10 R9 K14 ["onClose"]
       50 DUPTABLE                         R10 K18 [{"Content"}]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K1 ["createElement"]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R12 R12 K17 ["Content"]
       57 DUPTABLE                         R13 K20 [{"isContentFullBleed"}]
       58 GETTABLEKS                       R14 R0 K16 ["controls"]
       60 GETTABLEKS                       R14 R14 K19 ["isContentFullBleed"]
       62 SETTABLEKS                       R14 R13 K19 ["isContentFullBleed"]
       64 DUPTABLE                         R14 K22 [{"ToolbarContent"}]
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K1 ["createElement"]
       68 GETUPVAL                         R16 3
       69 DUPTABLE                         R17 K23 [{"onClose"}]
       70 NEWCLOSURE                       R18 P2
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R18 R17 K14 ["onClose"]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K21 ["ToolbarContent"]
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K17 ["Content"]
       80 CALL                             R7 3 1
       81 SETTABLEKS                       R7 R6 K4 ["Sheet"]
       83 CALL                             R3 3 -1
       84 RETURN                           R3 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 DUPTABLE                         R4 K6 [{["notifications"] = False, ["analytics"] = False, ["marketing"] = False, ["thirdParty"] = False}]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K7 ["useRef"]
       13 LOADNIL                          R6
       14 CALL                             R5 1 1
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K8 ["createElement"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K9 ["Fragment"]
       24 LOADNIL                          R9
       25 DUPTABLE                         R10 K12 [{"Button", "Sheet"}]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K8 ["createElement"]
       29 GETUPVAL                         R12 2
       30 DUPTABLE                         R13 K16 [{["onActivated"], ["text"] = "Open Sheet (Focus Navigation)"}]
       31 NEWCLOSURE                       R14 P1
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R14 R13 K13 ["onActivated"]
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K10 ["Button"]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K8 ["createElement"]
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R12 R12 K17 ["Root"]
       44 DUPTABLE                         R13 K22 [{"isOpen", "preferCenterSheet", "size", "onClose"}]
       45 SETTABLEKS                       R1 R13 K18 ["isOpen"]
       47 GETTABLEKS                       R14 R0 K23 ["controls"]
       49 GETTABLEKS                       R14 R14 K19 ["preferCenterSheet"]
       51 SETTABLEKS                       R14 R13 K19 ["preferCenterSheet"]
       53 GETTABLEKS                       R14 R0 K23 ["controls"]
       55 GETTABLEKS                       R14 R14 K20 ["size"]
       57 SETTABLEKS                       R14 R13 K20 ["size"]
       59 NEWCLOSURE                       R14 P2
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R14 R13 K21 ["onClose"]
       63 DUPTABLE                         R14 K26 [{"Header", "Content"}]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K8 ["createElement"]
       67 GETUPVAL                         R16 3
       68 GETTABLEKS                       R16 R16 K24 ["Header"]
       70 LOADNIL                          R17
       71 DUPTABLE                         R18 K28 [{"Title"}]
       72 GETUPVAL                         R19 0
       73 GETTABLEKS                       R19 R19 K8 ["createElement"]
       75 GETUPVAL                         R20 4
       76 DUPTABLE                         R21 K35 [{["LayoutOrder"] = 1, ["Text"] = "Settings", ["tag"] = "auto-xy text-heading-small text-truncate-split content-emphasis"}]
       77 CALL                             R19 2 1
       78 SETTABLEKS                       R19 R18 K27 ["Title"]
       80 CALL                             R15 3 1
       81 SETTABLEKS                       R15 R14 K24 ["Header"]
       83 GETUPVAL                         R15 0
       84 GETTABLEKS                       R15 R15 K8 ["createElement"]
       86 GETUPVAL                         R16 3
       87 GETTABLEKS                       R16 R16 K25 ["Content"]
       89 DUPTABLE                         R17 K37 [{"isContentFullBleed"}]
       90 GETTABLEKS                       R18 R0 K23 ["controls"]
       92 GETTABLEKS                       R18 R18 K36 ["isContentFullBleed"]
       94 SETTABLEKS                       R18 R17 K36 ["isContentFullBleed"]
       96 DUPTABLE                         R18 K40 [{"CheckboxContent", "AlignLeft"}]
       97 GETUPVAL                         R19 0
       98 GETTABLEKS                       R19 R19 K8 ["createElement"]
      100 GETUPVAL                         R20 5
      101 DUPTABLE                         R21 K44 [{"checkboxStates", "toggleCheckbox", "lastCheckboxRef"}]
      102 SETTABLEKS                       R3 R21 K41 ["checkboxStates"]
      104 SETTABLEKS                       R6 R21 K42 ["toggleCheckbox"]
      106 SETTABLEKS                       R5 R21 K43 ["lastCheckboxRef"]
      108 CALL                             R19 2 1
      109 SETTABLEKS                       R19 R18 K38 ["CheckboxContent"]
      111 GETUPVAL                         R19 0
      112 GETTABLEKS                       R19 R19 K8 ["createElement"]
      114 GETUPVAL                         R20 6
      115 DUPTABLE                         R21 K46 [{["tag"] = "row align-x-right size-full-0 auto-y padding-top-medium"}]
      116 DUPTABLE                         R22 K47 [{"Button"}]
      117 GETUPVAL                         R23 0
      118 GETTABLEKS                       R23 R23 K8 ["createElement"]
      120 GETUPVAL                         R24 2
      121 DUPTABLE                         R25 K51 [{["text"] = "Close", ["onActivated"], ["variant"], ["NextSelectionUp"]}]
      122 NEWCLOSURE                       R26 P3
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R26 R25 K13 ["onActivated"]
      126 GETUPVAL                         R26 7
      127 GETTABLEKS                       R26 R26 K52 ["Emphasis"]
      129 SETTABLEKS                       R26 R25 K49 ["variant"]
      131 SETTABLEKS                       R5 R25 K50 ["NextSelectionUp"]
      133 CALL                             R23 2 1
      134 SETTABLEKS                       R23 R22 K10 ["Button"]
      136 CALL                             R19 3 1
      137 SETTABLEKS                       R19 R18 K39 ["AlignLeft"]
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K25 ["Content"]
      142 CALL                             R11 3 1
      143 SETTABLEKS                       R11 R10 K11 ["Sheet"]
      145 CALL                             R7 3 -1
      146 RETURN                           R7 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_38:
        0 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Item"]
       11 DUPTABLE                         R5 K6 [{["description"] = "End date", ["trailing"]}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{["tag"] = "auto-xy text-title-medium content-emphasis", ["Text"] = "Tue, Mar 11 at 5:00 AM"}]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K5 ["trailing"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["createElement"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K12 ["Fragment"]
       27 LOADNIL                          R6
       28 DUPTABLE                         R7 K15 [{"Button", "Sheet"}]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K1 ["createElement"]
       32 GETUPVAL                         R9 3
       33 DUPTABLE                         R10 K19 [{["onActivated"], ["text"] = "Open Sheet (FullBleed)"}]
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K13 ["Button"]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K1 ["createElement"]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K20 ["Root"]
       47 DUPTABLE                         R10 K26 [{"isOpen", "snapPoints", "preferCenterSheet", "size", "onClose"}]
       48 SETTABLEKS                       R1 R10 K21 ["isOpen"]
       50 NEWTABLE                         R11 0 2
       52 LOADK                            R12 K27 [0.5]
       53 LOADK                            R13 K28 [0.9]
       54 SETLIST                          R11 R12 2 [1]
       56 SETTABLEKS                       R11 R10 K22 ["snapPoints"]
       58 GETTABLEKS                       R11 R0 K29 ["controls"]
       60 GETTABLEKS                       R11 R11 K23 ["preferCenterSheet"]
       62 SETTABLEKS                       R11 R10 K23 ["preferCenterSheet"]
       64 GETTABLEKS                       R11 R0 K29 ["controls"]
       66 GETTABLEKS                       R11 R11 K24 ["size"]
       68 SETTABLEKS                       R11 R10 K24 ["size"]
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R11 R10 K25 ["onClose"]
       74 DUPTABLE                         R11 K33 [{"FullBleed", "Content", "Actions"}]
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K1 ["createElement"]
       78 GETUPVAL                         R13 4
       79 GETTABLEKS                       R13 R13 K30 ["FullBleed"]
       81 DUPTABLE                         R14 K39 [{["media"] = "component_assets/avatarBG_dark", ["sticky"], ["aspectRatio"] = 1.77777777777778}]
       82 GETTABLEKS                       R15 R0 K29 ["controls"]
       84 GETTABLEKS                       R15 R15 K40 ["stickyFullBleed"]
       86 SETTABLEKS                       R15 R14 K36 ["sticky"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K30 ["FullBleed"]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K1 ["createElement"]
       94 GETUPVAL                         R13 4
       95 GETTABLEKS                       R13 R13 K31 ["Content"]
       97 DUPTABLE                         R14 K42 [{"isContentFullBleed"}]
       98 GETTABLEKS                       R15 R0 K29 ["controls"]
      100 GETTABLEKS                       R15 R15 K41 ["isContentFullBleed"]
      102 SETTABLEKS                       R15 R14 K41 ["isContentFullBleed"]
      104 DUPTABLE                         R15 K45 [{"Body", "List"}]
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K1 ["createElement"]
      108 GETUPVAL                         R17 5
      109 DUPTABLE                         R18 K49 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xlarge size-full-0 auto-y padding-top-small"}]
      110 DUPTABLE                         R19 K54 [{"EventDetails", "Title", "Description", "Rating"}]
      111 GETUPVAL                         R20 0
      112 GETTABLEKS                       R20 R20 K1 ["createElement"]
      114 GETUPVAL                         R21 5
      115 DUPTABLE                         R22 K56 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-0 gap-medium auto-y items-center"}]
      116 DUPTABLE                         R23 K58 [{"GameIcon", "Text"}]
      117 GETUPVAL                         R24 0
      118 GETTABLEKS                       R24 R24 K1 ["createElement"]
      120 GETUPVAL                         R25 6
      121 DUPTABLE                         R26 K60 [{["LayoutOrder"] = 1, ["tag"] = "size-1400 radius-medium bg-shift-200"}]
      122 CALL                             R24 2 1
      123 SETTABLEKS                       R24 R23 K57 ["GameIcon"]
      125 GETUPVAL                         R24 0
      126 GETTABLEKS                       R24 R24 K1 ["createElement"]
      128 GETUPVAL                         R25 5
      129 DUPTABLE                         R26 K63 [{["LayoutOrder"] = 2, ["tag"] = "col fill align-y-center auto-xy"}]
      130 DUPTABLE                         R27 K65 [{"Title", "Subtitle"}]
      131 GETUPVAL                         R28 0
      132 GETTABLEKS                       R28 R28 K1 ["createElement"]
      134 GETUPVAL                         R29 2
      135 DUPTABLE                         R30 K68 [{["LayoutOrder"] = 1, ["Text"] = "Sheet Title", ["tag"] = "auto-xy text-heading-small text-truncate-split content-emphasis"}]
      136 CALL                             R28 2 1
      137 SETTABLEKS                       R28 R27 K51 ["Title"]
      139 GETUPVAL                         R28 0
      140 GETTABLEKS                       R28 R28 K1 ["createElement"]
      142 GETUPVAL                         R29 2
      143 DUPTABLE                         R30 K71 [{["LayoutOrder"] = 2, ["Text"] = "Subtitle or description goes here", ["tag"] = "auto-xy text-label-medium text-truncate-split content-default"}]
      144 CALL                             R28 2 1
      145 SETTABLEKS                       R28 R27 K64 ["Subtitle"]
      147 CALL                             R24 3 1
      148 SETTABLEKS                       R24 R23 K9 ["Text"]
      150 CALL                             R20 3 1
      151 SETTABLEKS                       R20 R19 K50 ["EventDetails"]
      153 GETUPVAL                         R20 0
      154 GETTABLEKS                       R20 R20 K1 ["createElement"]
      156 GETUPVAL                         R21 5
      157 DUPTABLE                         R22 K73 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y gap-medium"}]
      158 DUPTABLE                         R23 K76 [{"Time", "Interest"}]
      159 GETUPVAL                         R24 0
      160 GETTABLEKS                       R24 R24 K1 ["createElement"]
      162 GETUPVAL                         R25 5
      163 DUPTABLE                         R26 K78 [{["LayoutOrder"] = 1, ["tag"] = "row auto-xy gap-xsmall"}]
      164 DUPTABLE                         R27 K80 [{"Clock", "Time"}]
      165 GETUPVAL                         R28 0
      166 GETTABLEKS                       R28 R28 K1 ["createElement"]
      168 GETUPVAL                         R29 7
      169 DUPTABLE                         R30 K82 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      170 GETUPVAL                         R31 8
      171 GETTABLEKS                       R31 R31 K79 ["Clock"]
      173 SETTABLEKS                       R31 R30 K81 ["name"]
      175 GETUPVAL                         R31 9
      176 GETTABLEKS                       R31 R31 K83 ["Small"]
      178 SETTABLEKS                       R31 R30 K24 ["size"]
      180 CALL                             R28 2 1
      181 SETTABLEKS                       R28 R27 K79 ["Clock"]
      183 GETUPVAL                         R28 0
      184 GETTABLEKS                       R28 R28 K1 ["createElement"]
      186 GETUPVAL                         R29 2
      187 DUPTABLE                         R30 K86 [{["LayoutOrder"] = 2, ["Text"] = "In 2 days", ["tag"] = "auto-xy text-body-medium content-emphasis"}]
      188 CALL                             R28 2 1
      189 SETTABLEKS                       R28 R27 K74 ["Time"]
      191 CALL                             R24 3 1
      192 SETTABLEKS                       R24 R23 K74 ["Time"]
      194 GETUPVAL                         R24 0
      195 GETTABLEKS                       R24 R24 K1 ["createElement"]
      197 GETUPVAL                         R25 5
      198 DUPTABLE                         R26 K87 [{["LayoutOrder"] = 2, ["tag"] = "row auto-xy gap-xsmall"}]
      199 DUPTABLE                         R27 K90 [{"People", "PeopleCount"}]
      200 GETUPVAL                         R28 0
      201 GETTABLEKS                       R28 R28 K1 ["createElement"]
      203 GETUPVAL                         R29 7
      204 DUPTABLE                         R30 K82 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      205 GETUPVAL                         R31 8
      206 GETTABLEKS                       R31 R31 K91 ["PersonPlay"]
      208 SETTABLEKS                       R31 R30 K81 ["name"]
      210 GETUPVAL                         R31 9
      211 GETTABLEKS                       R31 R31 K83 ["Small"]
      213 SETTABLEKS                       R31 R30 K24 ["size"]
      215 CALL                             R28 2 1
      216 SETTABLEKS                       R28 R27 K88 ["People"]
      218 GETUPVAL                         R28 0
      219 GETTABLEKS                       R28 R28 K1 ["createElement"]
      221 GETUPVAL                         R29 2
      222 DUPTABLE                         R30 K93 [{["LayoutOrder"] = 2, ["Text"] = "1M Interested", ["tag"] = "auto-xy text-body-medium content-emphasis"}]
      223 CALL                             R28 2 1
      224 SETTABLEKS                       R28 R27 K89 ["PeopleCount"]
      226 CALL                             R24 3 1
      227 SETTABLEKS                       R24 R23 K75 ["Interest"]
      229 CALL                             R20 3 1
      230 SETTABLEKS                       R20 R19 K51 ["Title"]
      232 GETUPVAL                         R20 0
      233 GETTABLEKS                       R20 R20 K1 ["createElement"]
      235 GETUPVAL                         R21 2
      236 DUPTABLE                         R22 K97 [{["LayoutOrder"] = 3, ["Text"] = "Style your look with iconic-inspired pieces and walk the runway to showcase your high-fashion vision. Compete, get inspired, and serve your best moment ✨...more ", ["tag"] = "auto-xy text-body-medium content-default text-wrap text-align-x-left"}]
      237 CALL                             R20 2 1
      238 SETTABLEKS                       R20 R19 K52 ["Description"]
      240 GETUPVAL                         R20 0
      241 GETTABLEKS                       R20 R20 K1 ["createElement"]
      243 GETUPVAL                         R21 5
      244 DUPTABLE                         R22 K100 [{["LayoutOrder"] = 4, ["tag"] = "row size-full-0 auto-y padding-medium gap-medium stroke-default radius-medium align-y-center"}]
      245 DUPTABLE                         R23 K102 [{"IARC", "Description"}]
      246 GETUPVAL                         R24 0
      247 GETTABLEKS                       R24 R24 K1 ["createElement"]
      249 GETUPVAL                         R25 5
      250 DUPTABLE                         R26 K104 [{["tag"] = "size-1000-1300 bg-shift-200"}]
      251 CALL                             R24 2 1
      252 SETTABLEKS                       R24 R23 K101 ["IARC"]
      254 GETUPVAL                         R24 0
      255 GETTABLEKS                       R24 R24 K1 ["createElement"]
      257 GETUPVAL                         R25 2
      258 DUPTABLE                         R26 K107 [{["Text"] = "Strong language, Mild Suggestive Themes • In-Game Purchases (Includes Random Items)", ["tag"] = "auto-xy fill text-align-x-left text-body-small text-wrap"}]
      259 CALL                             R24 2 1
      260 SETTABLEKS                       R24 R23 K52 ["Description"]
      262 CALL                             R20 3 1
      263 SETTABLEKS                       R20 R19 K53 ["Rating"]
      265 CALL                             R16 3 1
      266 SETTABLEKS                       R16 R15 K43 ["Body"]
      268 GETUPVAL                         R16 0
      269 GETTABLEKS                       R16 R16 K1 ["createElement"]
      271 GETUPVAL                         R17 1
      272 GETTABLEKS                       R17 R17 K20 ["Root"]
      274 DUPTABLE                         R18 K110 [{["LayoutOrder"] = 2, ["isContained"], ["hasDivider"]}]
      275 DUPTABLE                         R19 K113 [{["isContained"] = False, ["hasMargin"] = False}]
      276 SETTABLEKS                       R19 R18 K108 ["isContained"]
      278 DUPTABLE                         R19 K116 [{["hasDivider"] = True, ["isInset"] = False}]
      279 SETTABLEKS                       R19 R18 K109 ["hasDivider"]
      281 DUPTABLE                         R19 K125 [{"Start", "End", "End2", "End3", "End4", "End5", "End6", "End7"}]
      282 GETUPVAL                         R20 0
      283 GETTABLEKS                       R20 R20 K1 ["createElement"]
      285 GETUPVAL                         R21 1
      286 GETTABLEKS                       R21 R21 K2 ["Item"]
      288 DUPTABLE                         R22 K128 [{["LayoutOrder"] = -1, ["description"] = "Start date", ["trailing"]}]
      289 GETUPVAL                         R23 0
      290 GETTABLEKS                       R23 R23 K1 ["createElement"]
      292 GETUPVAL                         R24 2
      293 DUPTABLE                         R25 K130 [{["tag"] = "auto-xy text-title-medium content-emphasis", ["Text"] = "Sat, Mar 8 at 8:00 PM"}]
      294 CALL                             R23 2 1
      295 SETTABLEKS                       R23 R22 K5 ["trailing"]
      297 CALL                             R20 2 1
      298 SETTABLEKS                       R20 R19 K117 ["Start"]
      300 SETTABLEKS                       R3 R19 K118 ["End"]
      302 SETTABLEKS                       R3 R19 K119 ["End2"]
      304 SETTABLEKS                       R3 R19 K120 ["End3"]
      306 SETTABLEKS                       R3 R19 K121 ["End4"]
      308 SETTABLEKS                       R3 R19 K122 ["End5"]
      310 SETTABLEKS                       R3 R19 K123 ["End6"]
      312 SETTABLEKS                       R3 R19 K124 ["End7"]
      314 CALL                             R16 3 1
      315 SETTABLEKS                       R16 R15 K44 ["List"]
      317 CALL                             R12 3 1
      318 SETTABLEKS                       R12 R11 K31 ["Content"]
      320 GETUPVAL                         R12 0
      321 GETTABLEKS                       R12 R12 K1 ["createElement"]
      323 GETUPVAL                         R13 4
      324 GETTABLEKS                       R13 R13 K32 ["Actions"]
      326 LOADNIL                          R14
      327 DUPTABLE                         R15 K133 [{"Interested", "Share"}]
      328 GETUPVAL                         R16 0
      329 GETTABLEKS                       R16 R16 K1 ["createElement"]
      331 GETUPVAL                         R17 3
      332 DUPTABLE                         R18 K136 [{["LayoutOrder"] = 1, ["text"] = "Interested", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      333 GETUPVAL                         R19 10
      334 GETTABLEKS                       R19 R19 K137 ["Medium"]
      336 SETTABLEKS                       R19 R18 K24 ["size"]
      338 GETUPVAL                         R19 11
      339 GETTABLEKS                       R19 R19 K138 ["Emphasis"]
      341 SETTABLEKS                       R19 R18 K134 ["variant"]
      343 GETUPVAL                         R19 12
      344 GETTABLEKS                       R19 R19 K139 ["Fill"]
      346 SETTABLEKS                       R19 R18 K135 ["fillBehavior"]
      348 NEWCLOSURE                       R19 P2
      349 CAPTURE                          VAL R2
      350 SETTABLEKS                       R19 R18 K16 ["onActivated"]
      352 CALL                             R16 2 1
      353 SETTABLEKS                       R16 R15 K131 ["Interested"]
      355 GETUPVAL                         R16 0
      356 GETTABLEKS                       R16 R16 K1 ["createElement"]
      358 GETUPVAL                         R17 13
      359 DUPTABLE                         R18 K141 [{["LayoutOrder"] = 2, ["icon"], ["variant"], ["size"], ["onActivated"]}]
      360 GETUPVAL                         R19 8
      361 GETTABLEKS                       R19 R19 K142 ["ArrowThickToRight"]
      363 SETTABLEKS                       R19 R18 K140 ["icon"]
      365 GETUPVAL                         R19 11
      366 GETTABLEKS                       R19 R19 K143 ["Standard"]
      368 SETTABLEKS                       R19 R18 K134 ["variant"]
      370 GETUPVAL                         R19 10
      371 GETTABLEKS                       R19 R19 K137 ["Medium"]
      373 SETTABLEKS                       R19 R18 K24 ["size"]
      375 DUPCLOSURE                       R19 K144 [PROTO_38]
      376 SETTABLEKS                       R19 R18 K16 ["onActivated"]
      378 CALL                             R16 2 1
      379 SETTABLEKS                       R16 R15 K132 ["Share"]
      381 CALL                             R12 3 1
      382 SETTABLEKS                       R12 R11 K32 ["Actions"]
      384 CALL                             R8 3 1
      385 SETTABLEKS                       R8 R7 K14 ["Sheet"]
      387 CALL                             R4 3 -1
      388 RETURN                           R4 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.delay]
        5 LOADN                            R1 2
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["Fragment"]
       16 LOADNIL                          R7
       17 DUPTABLE                         R8 K5 [{"Button", "Sheet"}]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K1 ["createElement"]
       21 GETUPVAL                         R10 1
       22 DUPTABLE                         R11 K9 [{["onActivated"], ["text"] = "Open Sheet With TextInput"}]
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R12 R11 K6 ["onActivated"]
       27 CALL                             R9 2 1
       28 SETTABLEKS                       R9 R8 K3 ["Button"]
       30 JUMPIFNOT                        R1 ; [+120]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K1 ["createElement"]
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K10 ["Root"]
       37 DUPTABLE                         R11 K14 [{"onClose", "preferCenterSheet", "size"}]
       38 NEWCLOSURE                       R12 P1
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R12 R11 K11 ["onClose"]
       42 GETTABLEKS                       R12 R0 K15 ["controls"]
       44 GETTABLEKS                       R12 R12 K12 ["preferCenterSheet"]
       46 SETTABLEKS                       R12 R11 K12 ["preferCenterSheet"]
       48 GETTABLEKS                       R12 R0 K15 ["controls"]
       50 GETTABLEKS                       R12 R12 K13 ["size"]
       52 SETTABLEKS                       R12 R11 K13 ["size"]
       54 DUPTABLE                         R12 K19 [{"Header", "Content", "Actions"}]
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K1 ["createElement"]
       58 GETUPVAL                         R14 2
       59 GETTABLEKS                       R14 R14 K16 ["Header"]
       61 LOADNIL                          R15
       62 DUPTABLE                         R16 K21 [{"Title"}]
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R17 R17 K1 ["createElement"]
       66 GETUPVAL                         R18 3
       67 DUPTABLE                         R19 K28 [{["LayoutOrder"] = 1, ["Text"] = "Enter Your Name", ["tag"] = "text-heading-small content-emphasis auto-xy text-truncate-split"}]
       68 CALL                             R17 2 1
       69 SETTABLEKS                       R17 R16 K20 ["Title"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K16 ["Header"]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K1 ["createElement"]
       77 GETUPVAL                         R14 2
       78 GETTABLEKS                       R14 R14 K17 ["Content"]
       80 DUPTABLE                         R15 K30 [{"isContentFullBleed"}]
       81 GETTABLEKS                       R16 R0 K15 ["controls"]
       83 GETTABLEKS                       R16 R16 K29 ["isContentFullBleed"]
       85 SETTABLEKS                       R16 R15 K29 ["isContentFullBleed"]
       87 DUPTABLE                         R16 K32 [{"TextInput"}]
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R17 R17 K1 ["createElement"]
       91 GETUPVAL                         R18 4
       92 DUPTABLE                         R19 K38 [{["LayoutOrder"] = 1, ["label"] = "Test", ["width"], ["onChanged"], ["text"] = "asdf"}]
       93 GETIMPORT                        R20 K41 [UDim.new]
       95 LOADN                            R21 1
       96 LOADN                            R22 0
       97 CALL                             R20 2 1
       98 SETTABLEKS                       R20 R19 K35 ["width"]
      100 DUPCLOSURE                       R20 K42 [PROTO_42]
      101 SETTABLEKS                       R20 R19 K36 ["onChanged"]
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K31 ["TextInput"]
      106 CALL                             R13 3 1
      107 SETTABLEKS                       R13 R12 K17 ["Content"]
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R13 R13 K1 ["createElement"]
      112 GETUPVAL                         R14 2
      113 GETTABLEKS                       R14 R14 K18 ["Actions"]
      115 LOADNIL                          R15
      116 DUPTABLE                         R16 K44 [{"Submit"}]
      117 GETUPVAL                         R17 0
      118 GETTABLEKS                       R17 R17 K1 ["createElement"]
      120 GETUPVAL                         R18 1
      121 DUPTABLE                         R19 K48 [{["LayoutOrder"] = 1, ["text"] = "Submit", ["size"], ["variant"], ["fillBehavior"], ["isLoading"], ["onActivated"]}]
      122 GETUPVAL                         R20 5
      123 GETTABLEKS                       R20 R20 K49 ["Large"]
      125 SETTABLEKS                       R20 R19 K13 ["size"]
      127 GETUPVAL                         R20 6
      128 GETTABLEKS                       R20 R20 K50 ["Emphasis"]
      130 SETTABLEKS                       R20 R19 K45 ["variant"]
      132 GETUPVAL                         R20 7
      133 GETTABLEKS                       R20 R20 K51 ["Fill"]
      135 SETTABLEKS                       R20 R19 K46 ["fillBehavior"]
      137 SETTABLEKS                       R3 R19 K47 ["isLoading"]
      139 NEWCLOSURE                       R20 P3
      140 CAPTURE                          VAL R4
      141 SETTABLEKS                       R20 R19 K6 ["onActivated"]
      143 CALL                             R17 2 1
      144 SETTABLEKS                       R17 R16 K43 ["Submit"]
      146 CALL                             R13 3 1
      147 SETTABLEKS                       R13 R12 K18 ["Actions"]
      149 CALL                             R9 3 1
      150 JUMPIF                           R9 ; [+1]
      151 LOADNIL                          R9
      152 SETTABLEKS                       R9 R8 K4 ["Sheet"]
      154 CALL                             R5 3 -1
      155 RETURN                           R5 -1

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
       32 GETTABLEKS                       R6 R6 K11 ["Checkbox"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["Dash"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Icon"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["IconButton"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K8 ["Components"]
       58 GETTABLEKS                       R10 R10 K15 ["Image"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K8 ["Components"]
       65 GETTABLEKS                       R11 R11 K16 ["List"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K8 ["Components"]
       72 GETTABLEKS                       R12 R12 K17 ["Sheet"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Components"]
       79 GETTABLEKS                       R13 R13 K18 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K8 ["Components"]
       86 GETTABLEKS                       R14 R14 K19 ["TextInput"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K8 ["Components"]
       93 GETTABLEKS                       R15 R15 K20 ["View"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R1 K21 ["BuilderIcons"]
      100 CALL                             R15 1 1
      101 GETTABLEKS                       R15 R15 K13 ["Icon"]
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K22 ["Enums"]
      107 GETTABLEKS                       R17 R17 K23 ["ButtonVariant"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R0 K22 ["Enums"]
      114 GETTABLEKS                       R18 R18 K24 ["DialogSize"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R19 R0 K22 ["Enums"]
      121 GETTABLEKS                       R19 R19 K25 ["FillBehavior"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R20 R0 K22 ["Enums"]
      128 GETTABLEKS                       R20 R20 K26 ["IconSize"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K6 [require]
      133 GETTABLEKS                       R21 R0 K22 ["Enums"]
      135 GETTABLEKS                       R21 R21 K27 ["InputSize"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K6 [require]
      140 GETTABLEKS                       R22 R0 K28 ["Utility"]
      142 GETTABLEKS                       R22 R22 K29 ["useScaledValue"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K6 [require]
      147 GETTABLEKS                       R23 R0 K8 ["Components"]
      149 GETTABLEKS                       R23 R23 K17 ["Sheet"]
      151 GETTABLEKS                       R23 R23 K30 ["useSheetNavigation"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K6 [require]
      156 GETTABLEKS                       R24 R0 K31 ["Providers"]
      158 GETTABLEKS                       R24 R24 K32 ["Style"]
      160 GETTABLEKS                       R24 R24 K33 ["useTokens"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K6 [require]
      165 GETTABLEKS                       R25 R0 K28 ["Utility"]
      167 GETTABLEKS                       R25 R25 K34 ["Flags"]
      169 CALL                             R24 1 1
      170 DUPCLOSURE                       R25 K35 [PROTO_8]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R18
      185 DUPCLOSURE                       R26 K36 [PROTO_11]
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R12
      192 DUPCLOSURE                       R27 K37 [PROTO_12]
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R12
      198 DUPCLOSURE                       R28 K38 [PROTO_17]
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R18
      207 DUPCLOSURE                       R29 K39 [PROTO_19]
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R5
      212 DUPCLOSURE                       R30 K40 [PROTO_23]
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R16
      222 DUPCLOSURE                       R31 K41 [PROTO_27]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R30
      227 DUPCLOSURE                       R32 K42 [PROTO_34]
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R29
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R16
      236 DUPCLOSURE                       R33 K43 [PROTO_39]
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R12
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R18
      250 CAPTURE                          VAL R8
      251 DUPCLOSURE                       R34 K44 [PROTO_45]
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R4
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R12
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R18
      260 DUPTABLE                         R35 K48 [{["summary"] = "Sheet", ["stories"], ["controls"]}]
      261 NEWTABLE                         R36 0 7
      263 DUPTABLE                         R37 K52 [{["name"] = "Sheet (auto)", ["story"]}]
      264 SETTABLEKS                       R25 R37 K51 ["story"]
      266 DUPTABLE                         R38 K54 [{["name"] = "Sheet (manual sizing based on height prop)", ["story"]}]
      267 SETTABLEKS                       R26 R38 K51 ["story"]
      269 DUPTABLE                         R39 K56 [{["name"] = "Sheet (auto size)", ["story"]}]
      270 SETTABLEKS                       R28 R39 K51 ["story"]
      272 DUPTABLE                         R40 K58 [{["name"] = "Sheet with Focus Navigation", ["story"]}]
      273 SETTABLEKS                       R32 R40 K51 ["story"]
      275 DUPTABLE                         R41 K60 [{["name"] = "Sheet with Left Navigation (No Header)", ["story"]}]
      276 SETTABLEKS                       R31 R41 K51 ["story"]
      278 DUPTABLE                         R42 K62 [{["name"] = "Sheet (with TextInput)", ["story"]}]
      279 SETTABLEKS                       R34 R42 K51 ["story"]
      281 GETTABLEKS                       R44 R24 K63 ["FoundationSheetFullBleed"]
      283 JUMPIFNOT                        R44 ; [+4]
      284 DUPTABLE                         R43 K65 [{["name"] = "Sheet (FullBleed)", ["story"]}]
      285 SETTABLEKS                       R33 R43 K51 ["story"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R43
      289 SETLIST                          R36 R37 7 [1]
      291 SETTABLEKS                       R36 R35 K46 ["stories"]
      293 DUPTABLE                         R36 K73 [{["centerSheetHeight"] = 1, ["preferCenterSheet"] = False, ["size"], ["stickyFullBleed"] = False, ["isContentFullBleed"] = False}]
      294 NEWTABLE                         R37 0 2
      296 GETTABLEKS                       R38 R17 K74 ["Medium"]
      298 GETTABLEKS                       R39 R17 K75 ["Large"]
      300 SETLIST                          R37 R38 2 [1]
      302 SETTABLEKS                       R37 R36 K70 ["size"]
      304 SETTABLEKS                       R36 R35 K47 ["controls"]
      306 RETURN                           R35 1
