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
      119 DUPTABLE                         R18 K46 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall fill auto-xy"}]
      120 DUPTABLE                         R19 K49 [{"Title", "Subtitle"}]
      121 GETUPVAL                         R20 0
      122 GETTABLEKS                       R20 R20 K1 ["createElement"]
      124 GETUPVAL                         R21 6
      125 DUPTABLE                         R22 K52 [{["LayoutOrder"] = 1, ["Text"] = "Sheet Title", ["tag"] = "text-title-large content-emphasis auto-xy text-truncate-split"}]
      126 CALL                             R20 2 1
      127 SETTABLEKS                       R20 R19 K47 ["Title"]
      129 GETUPVAL                         R20 0
      130 GETTABLEKS                       R20 R20 K1 ["createElement"]
      132 GETUPVAL                         R21 6
      133 DUPTABLE                         R22 K55 [{["LayoutOrder"] = 2, ["Text"] = "Subtitle or description goes here", ["tag"] = "text-body-small content-default auto-xy text-truncate-split"}]
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
      170 LOADNIL                          R14
      171 DUPTABLE                         R15 K75 [{"Carousel", "Attributes", "Rating", "Description", "Description2", "Description3", "Description4", "Description5", "Description6", "Description7", "Description8", "Description9"}]
      172 GETUPVAL                         R16 0
      173 GETTABLEKS                       R16 R16 K1 ["createElement"]
      175 GETUPVAL                         R17 5
      176 DUPTABLE                         R18 K77 [{["LayoutOrder"] = 2, ["tag"] = "size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"}]
      177 CALL                             R16 2 1
      178 SETTABLEKS                       R16 R15 K63 ["Carousel"]
      180 GETUPVAL                         R16 0
      181 GETTABLEKS                       R16 R16 K1 ["createElement"]
      183 GETUPVAL                         R17 5
      184 DUPTABLE                         R18 K79 [{["tag"] = "row gap-medium auto-y size-full-0 items-center flex-fill", ["LayoutOrder"] = 3}]
      185 DUPTABLE                         R19 K83 [{"Rating", "Active", "Age", "Maturity"}]
      186 GETUPVAL                         R20 0
      187 GETTABLEKS                       R20 R20 K1 ["createElement"]
      189 GETUPVAL                         R21 5
      190 DUPTABLE                         R22 K85 [{["LayoutOrder"] = 1, ["tag"] = "col gap-small align-x-center auto-xy"}]
      191 DUPTABLE                         R23 K88 [{"Label", "Value"}]
      192 GETUPVAL                         R24 0
      193 GETTABLEKS                       R24 R24 K1 ["createElement"]
      195 GETUPVAL                         R25 6
      196 DUPTABLE                         R26 K90 [{["LayoutOrder"] = 1, ["Text"] = "Rating", ["tag"] = "text-body-small content-default auto-xy"}]
      197 CALL                             R24 2 1
      198 SETTABLEKS                       R24 R23 K86 ["Label"]
      200 GETUPVAL                         R24 0
      201 GETTABLEKS                       R24 R24 K1 ["createElement"]
      203 GETUPVAL                         R25 6
      204 DUPTABLE                         R26 K93 [{["LayoutOrder"] = 2, ["Text"] = "94%", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      205 CALL                             R24 2 1
      206 SETTABLEKS                       R24 R23 K87 ["Value"]
      208 CALL                             R20 3 1
      209 SETTABLEKS                       R20 R19 K65 ["Rating"]
      211 GETUPVAL                         R20 0
      212 GETTABLEKS                       R20 R20 K1 ["createElement"]
      214 GETUPVAL                         R21 5
      215 DUPTABLE                         R22 K94 [{["LayoutOrder"] = 3, ["tag"] = "col gap-small align-x-center auto-xy"}]
      216 DUPTABLE                         R23 K88 [{"Label", "Value"}]
      217 GETUPVAL                         R24 0
      218 GETTABLEKS                       R24 R24 K1 ["createElement"]
      220 GETUPVAL                         R25 6
      221 DUPTABLE                         R26 K95 [{["LayoutOrder"] = 1, ["Text"] = "Active", ["tag"] = "text-body-small content-default auto-xy"}]
      222 CALL                             R24 2 1
      223 SETTABLEKS                       R24 R23 K86 ["Label"]
      225 GETUPVAL                         R24 0
      226 GETTABLEKS                       R24 R24 K1 ["createElement"]
      228 GETUPVAL                         R25 6
      229 DUPTABLE                         R26 K97 [{["LayoutOrder"] = 2, ["Text"] = "1.2K", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      230 CALL                             R24 2 1
      231 SETTABLEKS                       R24 R23 K87 ["Value"]
      233 CALL                             R20 3 1
      234 SETTABLEKS                       R20 R19 K80 ["Active"]
      236 GETUPVAL                         R20 0
      237 GETTABLEKS                       R20 R20 K1 ["createElement"]
      239 GETUPVAL                         R21 5
      240 DUPTABLE                         R22 K99 [{["LayoutOrder"] = 5, ["tag"] = "col gap-small align-x-center auto-xy"}]
      241 DUPTABLE                         R23 K88 [{"Label", "Value"}]
      242 GETUPVAL                         R24 0
      243 GETTABLEKS                       R24 R24 K1 ["createElement"]
      245 GETUPVAL                         R25 6
      246 DUPTABLE                         R26 K100 [{["LayoutOrder"] = 1, ["Text"] = "Age", ["tag"] = "text-body-small content-default auto-xy"}]
      247 CALL                             R24 2 1
      248 SETTABLEKS                       R24 R23 K86 ["Label"]
      250 GETUPVAL                         R24 0
      251 GETTABLEKS                       R24 R24 K1 ["createElement"]
      253 GETUPVAL                         R25 6
      254 DUPTABLE                         R26 K102 [{["LayoutOrder"] = 2, ["Text"] = "13+", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K87 ["Value"]
      258 CALL                             R20 3 1
      259 SETTABLEKS                       R20 R19 K81 ["Age"]
      261 GETUPVAL                         R20 0
      262 GETTABLEKS                       R20 R20 K1 ["createElement"]
      264 GETUPVAL                         R21 5
      265 DUPTABLE                         R22 K104 [{["LayoutOrder"] = 7, ["tag"] = "col gap-small align-x-center auto-xy"}]
      266 DUPTABLE                         R23 K88 [{"Label", "Value"}]
      267 GETUPVAL                         R24 0
      268 GETTABLEKS                       R24 R24 K1 ["createElement"]
      270 GETUPVAL                         R25 6
      271 DUPTABLE                         R26 K105 [{["LayoutOrder"] = 1, ["Text"] = "Maturity", ["tag"] = "text-body-small content-default auto-xy"}]
      272 CALL                             R24 2 1
      273 SETTABLEKS                       R24 R23 K86 ["Label"]
      275 GETUPVAL                         R24 0
      276 GETTABLEKS                       R24 R24 K1 ["createElement"]
      278 GETUPVAL                         R25 6
      279 DUPTABLE                         R26 K107 [{["LayoutOrder"] = 2, ["Text"] = "Everyone", ["tag"] = "text-title-medium content-emphasis auto-xy"}]
      280 CALL                             R24 2 1
      281 SETTABLEKS                       R24 R23 K87 ["Value"]
      283 CALL                             R20 3 1
      284 SETTABLEKS                       R20 R19 K82 ["Maturity"]
      286 CALL                             R16 3 1
      287 SETTABLEKS                       R16 R15 K64 ["Attributes"]
      289 GETUPVAL                         R16 0
      290 GETTABLEKS                       R16 R16 K1 ["createElement"]
      292 GETUPVAL                         R17 5
      293 DUPTABLE                         R18 K110 [{["LayoutOrder"] = 4, ["tag"] = "row radius-medium size-full-0 auto-y gap-small align-y-center bg-shift-200 padding-small"}]
      294 DUPTABLE                         R19 K114 [{"Icon", "Rating", "Up", "Down"}]
      295 GETUPVAL                         R20 0
      296 GETTABLEKS                       R20 R20 K1 ["createElement"]
      298 GETUPVAL                         R21 10
      299 DUPTABLE                         R22 K116 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      300 GETUPVAL                         R23 9
      301 GETTABLEKS                       R23 R23 K117 ["ThumbUp"]
      303 SETTABLEKS                       R23 R22 K115 ["name"]
      305 GETUPVAL                         R23 11
      306 GETTABLEKS                       R23 R23 K60 ["Large"]
      308 SETTABLEKS                       R23 R22 K14 ["size"]
      310 CALL                             R20 2 1
      311 SETTABLEKS                       R20 R19 K111 ["Icon"]
      313 GETUPVAL                         R20 0
      314 GETTABLEKS                       R20 R20 K1 ["createElement"]
      316 GETUPVAL                         R21 5
      317 DUPTABLE                         R22 K119 [{["LayoutOrder"] = 2, ["tag"] = "col grow auto-xy"}]
      318 DUPTABLE                         R23 K120 [{"Value", "Label"}]
      319 GETUPVAL                         R24 0
      320 GETTABLEKS                       R24 R24 K1 ["createElement"]
      322 GETUPVAL                         R25 6
      323 DUPTABLE                         R26 K122 [{["LayoutOrder"] = 1, ["Text"] = "94%", ["tag"] = "text-body-medium content-emphasis auto-xy"}]
      324 CALL                             R24 2 1
      325 SETTABLEKS                       R24 R23 K87 ["Value"]
      327 GETUPVAL                         R24 0
      328 GETTABLEKS                       R24 R24 K1 ["createElement"]
      330 GETUPVAL                         R25 6
      331 DUPTABLE                         R26 K124 [{["LayoutOrder"] = 2, ["Text"] = "100 VOTES", ["tag"] = "text-body-small content-default auto-xy"}]
      332 CALL                             R24 2 1
      333 SETTABLEKS                       R24 R23 K86 ["Label"]
      335 CALL                             R20 3 1
      336 SETTABLEKS                       R20 R19 K65 ["Rating"]
      338 GETUPVAL                         R20 0
      339 GETTABLEKS                       R20 R20 K1 ["createElement"]
      341 GETUPVAL                         R21 7
      342 DUPTABLE                         R22 K125 [{["LayoutOrder"] = 3, ["icon"], ["size"], ["onActivated"]}]
      343 GETUPVAL                         R23 9
      344 GETTABLEKS                       R23 R23 K117 ["ThumbUp"]
      346 SETTABLEKS                       R23 R22 K58 ["icon"]
      348 GETUPVAL                         R23 8
      349 GETTABLEKS                       R23 R23 K60 ["Large"]
      351 SETTABLEKS                       R23 R22 K14 ["size"]
      353 DUPCLOSURE                       R23 K126 [PROTO_3]
      354 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      356 CALL                             R20 2 1
      357 SETTABLEKS                       R20 R19 K112 ["Up"]
      359 GETUPVAL                         R20 0
      360 GETTABLEKS                       R20 R20 K1 ["createElement"]
      362 GETUPVAL                         R21 7
      363 DUPTABLE                         R22 K127 [{["LayoutOrder"] = 4, ["icon"], ["size"], ["onActivated"]}]
      364 GETUPVAL                         R23 9
      365 GETTABLEKS                       R23 R23 K128 ["ThumbDown"]
      367 SETTABLEKS                       R23 R22 K58 ["icon"]
      369 GETUPVAL                         R23 8
      370 GETTABLEKS                       R23 R23 K60 ["Large"]
      372 SETTABLEKS                       R23 R22 K14 ["size"]
      374 DUPCLOSURE                       R23 K129 [PROTO_4]
      375 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      377 CALL                             R20 2 1
      378 SETTABLEKS                       R20 R19 K113 ["Down"]
      380 CALL                             R16 3 1
      381 SETTABLEKS                       R16 R15 K65 ["Rating"]
      383 GETUPVAL                         R16 0
      384 GETTABLEKS                       R16 R16 K1 ["createElement"]
      386 GETUPVAL                         R17 6
      387 DUPTABLE                         R18 K132 [{["LayoutOrder"] = 5, ["Text"] = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      388 CALL                             R16 2 1
      389 SETTABLEKS                       R16 R15 K66 ["Description"]
      391 GETUPVAL                         R16 0
      392 GETTABLEKS                       R16 R16 K1 ["createElement"]
      394 GETUPVAL                         R17 6
      395 DUPTABLE                         R18 K135 [{["LayoutOrder"] = 6, ["Text"] = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      396 CALL                             R16 2 1
      397 SETTABLEKS                       R16 R15 K67 ["Description2"]
      399 GETUPVAL                         R16 0
      400 GETTABLEKS                       R16 R16 K1 ["createElement"]
      402 GETUPVAL                         R17 6
      403 DUPTABLE                         R18 K137 [{["LayoutOrder"] = 7, ["Text"] = "This sheet is fully responsive and will adapt to different screen sizes and orientations.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      404 CALL                             R16 2 1
      405 SETTABLEKS                       R16 R15 K68 ["Description3"]
      407 GETUPVAL                         R16 0
      408 GETTABLEKS                       R16 R16 K1 ["createElement"]
      410 GETUPVAL                         R17 6
      411 DUPTABLE                         R18 K140 [{["LayoutOrder"] = 8, ["Text"] = "You can add as much content as you need inside the sheet, and it will scroll if the content exceeds the available space.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      412 CALL                             R16 2 1
      413 SETTABLEKS                       R16 R15 K69 ["Description4"]
      415 GETUPVAL                         R16 0
      416 GETTABLEKS                       R16 R16 K1 ["createElement"]
      418 GETUPVAL                         R17 6
      419 DUPTABLE                         R18 K143 [{["LayoutOrder"] = 9, ["Text"] = "Sheets are a great way to provide additional context and actions without overwhelming the user with too much information at once.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      420 CALL                             R16 2 1
      421 SETTABLEKS                       R16 R15 K70 ["Description5"]
      423 GETUPVAL                         R16 0
      424 GETTABLEKS                       R16 R16 K1 ["createElement"]
      426 GETUPVAL                         R17 6
      427 DUPTABLE                         R18 K146 [{["LayoutOrder"] = 10, ["Text"] = "This is the last piece of example content inside the sheet. You can customize the appearance and behavior of the sheet to fit your specific use case.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      428 CALL                             R16 2 1
      429 SETTABLEKS                       R16 R15 K71 ["Description6"]
      431 GETUPVAL                         R16 0
      432 GETTABLEKS                       R16 R16 K1 ["createElement"]
      434 GETUPVAL                         R17 6
      435 DUPTABLE                         R18 K149 [{["LayoutOrder"] = 11, ["Text"] = "Thank you for checking out this example of a sheet component in Roblox using the Foundation library!", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      436 CALL                             R16 2 1
      437 SETTABLEKS                       R16 R15 K72 ["Description7"]
      439 GETUPVAL                         R16 0
      440 GETTABLEKS                       R16 R16 K1 ["createElement"]
      442 GETUPVAL                         R17 6
      443 DUPTABLE                         R18 K152 [{["LayoutOrder"] = 12, ["Text"] = "Feel free to reach out if you have any questions or need further assistance.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      444 CALL                             R16 2 1
      445 SETTABLEKS                       R16 R15 K73 ["Description8"]
      447 GETUPVAL                         R16 0
      448 GETTABLEKS                       R16 R16 K1 ["createElement"]
      450 GETUPVAL                         R17 6
      451 DUPTABLE                         R18 K155 [{["LayoutOrder"] = 13, ["Text"] = "Happy developing!", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      452 CALL                             R16 2 1
      453 SETTABLEKS                       R16 R15 K74 ["Description9"]
      455 CALL                             R12 3 1
      456 SETTABLEKS                       R12 R11 K21 ["Content"]
      458 GETUPVAL                         R12 0
      459 GETTABLEKS                       R12 R12 K1 ["createElement"]
      461 GETUPVAL                         R13 3
      462 GETTABLEKS                       R13 R13 K22 ["Actions"]
      464 LOADNIL                          R14
      465 DUPTABLE                         R15 K158 [{"SubActions", "Join"}]
      466 GETUPVAL                         R16 0
      467 GETTABLEKS                       R16 R16 K1 ["createElement"]
      469 GETUPVAL                         R17 5
      470 DUPTABLE                         R18 K160 [{["tag"] = "row auto-xy padding-right-small"}]
      471 DUPTABLE                         R19 K163 [{"More", "Invite"}]
      472 GETUPVAL                         R20 0
      473 GETTABLEKS                       R20 R20 K1 ["createElement"]
      475 GETUPVAL                         R21 7
      476 DUPTABLE                         R22 K164 [{["LayoutOrder"] = 1, ["icon"], ["size"], ["onActivated"]}]
      477 GETUPVAL                         R23 9
      478 GETTABLEKS                       R23 R23 K165 ["CircleThreeDotsHorizontal"]
      480 SETTABLEKS                       R23 R22 K58 ["icon"]
      482 GETUPVAL                         R23 8
      483 GETTABLEKS                       R23 R23 K60 ["Large"]
      485 SETTABLEKS                       R23 R22 K14 ["size"]
      487 DUPCLOSURE                       R23 K166 [PROTO_5]
      488 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      490 CALL                             R20 2 1
      491 SETTABLEKS                       R20 R19 K161 ["More"]
      493 GETUPVAL                         R20 0
      494 GETTABLEKS                       R20 R20 K1 ["createElement"]
      496 GETUPVAL                         R21 7
      497 DUPTABLE                         R22 K167 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"]}]
      498 GETUPVAL                         R23 9
      499 GETTABLEKS                       R23 R23 K168 ["PersonArrowFromBottomRight"]
      501 SETTABLEKS                       R23 R22 K58 ["icon"]
      503 GETUPVAL                         R23 8
      504 GETTABLEKS                       R23 R23 K60 ["Large"]
      506 SETTABLEKS                       R23 R22 K14 ["size"]
      508 DUPCLOSURE                       R23 K169 [PROTO_6]
      509 SETTABLEKS                       R23 R22 K6 ["onActivated"]
      511 CALL                             R20 2 1
      512 SETTABLEKS                       R20 R19 K162 ["Invite"]
      514 CALL                             R16 3 1
      515 SETTABLEKS                       R16 R15 K156 ["SubActions"]
      517 GETUPVAL                         R16 0
      518 GETTABLEKS                       R16 R16 K1 ["createElement"]
      520 GETUPVAL                         R17 2
      521 DUPTABLE                         R18 K172 [{["LayoutOrder"] = 3, ["text"] = "Join", ["icon"], ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      522 GETUPVAL                         R19 9
      523 GETTABLEKS                       R19 R19 K173 ["PlayLarge"]
      525 SETTABLEKS                       R19 R18 K58 ["icon"]
      527 GETUPVAL                         R19 8
      528 GETTABLEKS                       R19 R19 K60 ["Large"]
      530 SETTABLEKS                       R19 R18 K14 ["size"]
      532 GETUPVAL                         R19 12
      533 GETTABLEKS                       R19 R19 K174 ["Emphasis"]
      535 SETTABLEKS                       R19 R18 K170 ["variant"]
      537 GETUPVAL                         R19 13
      538 GETTABLEKS                       R19 R19 K175 ["Fill"]
      540 SETTABLEKS                       R19 R18 K171 ["fillBehavior"]
      542 NEWCLOSURE                       R19 P7
      543 CAPTURE                          VAL R2
      544 SETTABLEKS                       R19 R18 K6 ["onActivated"]
      546 CALL                             R16 2 1
      547 SETTABLEKS                       R16 R15 K157 ["Join"]
      549 CALL                             R12 3 1
      550 SETTABLEKS                       R12 R11 K22 ["Actions"]
      552 CALL                             R8 3 1
      553 SETTABLEKS                       R8 R7 K4 ["Sheet"]
      555 CALL                             R4 3 -1
      556 RETURN                           R4 -1

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
       33 JUMPIFNOT                        R1 ; [+77]
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
       72 LOADNIL                          R14
       73 DUPTABLE                         R15 K27 [{"Image", "Description", "Description2", "Description3"}]
       74 GETUPVAL                         R16 0
       75 GETTABLEKS                       R16 R16 K2 ["createElement"]
       77 GETUPVAL                         R17 4
       78 DUPTABLE                         R18 K32 [{["LayoutOrder"] = 1, ["tag"] = "size-full-full auto-y radius-medium bg-shift-200 aspect-16-9"}]
       79 CALL                             R16 2 1
       80 SETTABLEKS                       R16 R15 K23 ["Image"]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K2 ["createElement"]
       85 GETUPVAL                         R17 5
       86 DUPTABLE                         R18 K36 [{["LayoutOrder"] = 2, ["Text"] = "This is some example content inside of a sheet. Sheets can be used to display additional information or actions related to the current context without navigating away from the current screen.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K24 ["Description"]
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R16 R16 K2 ["createElement"]
       93 GETUPVAL                         R17 5
       94 DUPTABLE                         R18 K39 [{["LayoutOrder"] = 3, ["Text"] = "Sheets can be dismissed by swiping down or tapping outside of the sheet area.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K25 ["Description2"]
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R16 R16 K2 ["createElement"]
      101 GETUPVAL                         R17 5
      102 DUPTABLE                         R18 K42 [{["LayoutOrder"] = 4, ["Text"] = "This sheet is fully responsive and will adapt to different screen sizes and orientations.", ["tag"] = "text-body-medium content-default auto-xy size-full-0 text-align-x-left text-align-y-top text-wrap"}]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K26 ["Description3"]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K21 ["Content"]
      109 CALL                             R8 3 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R8
      112 SETTABLEKS                       R8 R7 K5 ["Sheet"]
      114 CALL                             R4 3 -1
      115 RETURN                           R4 -1

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
       89 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 1, ["Text"] = "Account Switcher", ["tag"] = "auto-xy text-heading-small text-truncate-split content-emphasis"}]
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
      119 GETIMPORT                        R18 K6 [require]
      121 GETTABLEKS                       R19 R0 K26 ["Providers"]
      123 GETTABLEKS                       R19 R19 K27 ["Style"]
      125 GETTABLEKS                       R19 R19 K28 ["useTokens"]
      127 CALL                             R18 1 1
      128 DUPCLOSURE                       R19 K29 [PROTO_8]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R14
      143 DUPCLOSURE                       R20 K30 [PROTO_11]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 DUPCLOSURE                       R21 K31 [PROTO_12]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R9
      156 DUPCLOSURE                       R22 K32 [PROTO_17]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R14
      165 DUPTABLE                         R23 K36 [{["summary"] = "Sheet", ["stories"], ["controls"]}]
      166 NEWTABLE                         R24 0 3
      168 DUPTABLE                         R25 K40 [{["name"] = "Sheet (auto)", ["story"]}]
      169 SETTABLEKS                       R19 R25 K39 ["story"]
      171 DUPTABLE                         R26 K42 [{["name"] = "Sheet (manual sizing based on height prop)", ["story"]}]
      172 SETTABLEKS                       R20 R26 K39 ["story"]
      174 DUPTABLE                         R27 K44 [{["name"] = "Sheet (auto size)", ["story"]}]
      175 SETTABLEKS                       R22 R27 K39 ["story"]
      177 SETLIST                          R24 R25 3 [1]
      179 SETTABLEKS                       R24 R23 K34 ["stories"]
      181 DUPTABLE                         R24 K50 [{["centerSheetHeight"] = 1, ["preferCenterSheet"] = False, ["size"]}]
      182 NEWTABLE                         R25 0 2
      184 GETTABLEKS                       R26 R13 K51 ["Medium"]
      186 GETTABLEKS                       R27 R13 K52 ["Large"]
      188 SETLIST                          R25 R26 2 [1]
      190 SETTABLEKS                       R25 R24 K49 ["size"]
      192 SETTABLEKS                       R24 R23 K35 ["controls"]
      194 RETURN                           R23 1
