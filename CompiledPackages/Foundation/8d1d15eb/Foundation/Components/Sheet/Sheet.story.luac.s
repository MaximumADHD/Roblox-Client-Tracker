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
       57 LOADNIL                          R13
       58 DUPTABLE                         R14 K20 [{"ToolbarContent"}]
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K1 ["createElement"]
       62 GETUPVAL                         R16 3
       63 DUPTABLE                         R17 K21 [{"onClose"}]
       64 NEWCLOSURE                       R18 P2
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R18 R17 K14 ["onClose"]
       68 CALL                             R15 2 1
       69 SETTABLEKS                       R15 R14 K19 ["ToolbarContent"]
       71 CALL                             R11 3 1
       72 SETTABLEKS                       R11 R10 K17 ["Content"]
       74 CALL                             R7 3 1
       75 SETTABLEKS                       R7 R6 K4 ["Sheet"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1

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
       89 LOADNIL                          R17
       90 DUPTABLE                         R18 K38 [{"CheckboxContent", "AlignLeft"}]
       91 GETUPVAL                         R19 0
       92 GETTABLEKS                       R19 R19 K8 ["createElement"]
       94 GETUPVAL                         R20 5
       95 DUPTABLE                         R21 K42 [{"checkboxStates", "toggleCheckbox", "lastCheckboxRef"}]
       96 SETTABLEKS                       R3 R21 K39 ["checkboxStates"]
       98 SETTABLEKS                       R6 R21 K40 ["toggleCheckbox"]
      100 SETTABLEKS                       R5 R21 K41 ["lastCheckboxRef"]
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K36 ["CheckboxContent"]
      105 GETUPVAL                         R19 0
      106 GETTABLEKS                       R19 R19 K8 ["createElement"]
      108 GETUPVAL                         R20 6
      109 DUPTABLE                         R21 K44 [{["tag"] = "row align-x-right size-full-0 auto-y padding-top-medium"}]
      110 DUPTABLE                         R22 K45 [{"Button"}]
      111 GETUPVAL                         R23 0
      112 GETTABLEKS                       R23 R23 K8 ["createElement"]
      114 GETUPVAL                         R24 2
      115 DUPTABLE                         R25 K49 [{["text"] = "Close", ["onActivated"], ["variant"], ["NextSelectionUp"]}]
      116 NEWCLOSURE                       R26 P3
      117 CAPTURE                          VAL R2
      118 SETTABLEKS                       R26 R25 K13 ["onActivated"]
      120 GETUPVAL                         R26 7
      121 GETTABLEKS                       R26 R26 K50 ["Emphasis"]
      123 SETTABLEKS                       R26 R25 K47 ["variant"]
      125 SETTABLEKS                       R5 R25 K48 ["NextSelectionUp"]
      127 CALL                             R23 2 1
      128 SETTABLEKS                       R23 R22 K10 ["Button"]
      130 CALL                             R19 3 1
      131 SETTABLEKS                       R19 R18 K37 ["AlignLeft"]
      133 CALL                             R15 3 1
      134 SETTABLEKS                       R15 R14 K25 ["Content"]
      136 CALL                             R11 3 1
      137 SETTABLEKS                       R11 R10 K11 ["Sheet"]
      139 CALL                             R7 3 -1
      140 RETURN                           R7 -1

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
        0 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K2 [task.delay]
        5 LOADN                            R1 2
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_40:
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
       30 JUMPIFNOT                        R1 ; [+114]
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
       80 LOADNIL                          R15
       81 DUPTABLE                         R16 K30 [{"TextInput"}]
       82 GETUPVAL                         R17 0
       83 GETTABLEKS                       R17 R17 K1 ["createElement"]
       85 GETUPVAL                         R18 4
       86 DUPTABLE                         R19 K36 [{["LayoutOrder"] = 1, ["label"] = "Test", ["width"], ["onChanged"], ["text"] = "asdf"}]
       87 GETIMPORT                        R20 K39 [UDim.new]
       89 LOADN                            R21 1
       90 LOADN                            R22 0
       91 CALL                             R20 2 1
       92 SETTABLEKS                       R20 R19 K33 ["width"]
       94 DUPCLOSURE                       R20 K40 [PROTO_37]
       95 SETTABLEKS                       R20 R19 K34 ["onChanged"]
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K29 ["TextInput"]
      100 CALL                             R13 3 1
      101 SETTABLEKS                       R13 R12 K17 ["Content"]
      103 GETUPVAL                         R13 0
      104 GETTABLEKS                       R13 R13 K1 ["createElement"]
      106 GETUPVAL                         R14 2
      107 GETTABLEKS                       R14 R14 K18 ["Actions"]
      109 LOADNIL                          R15
      110 DUPTABLE                         R16 K42 [{"Submit"}]
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R17 R17 K1 ["createElement"]
      114 GETUPVAL                         R18 1
      115 DUPTABLE                         R19 K46 [{["LayoutOrder"] = 1, ["text"] = "Submit", ["size"], ["variant"], ["fillBehavior"], ["isLoading"], ["onActivated"]}]
      116 GETUPVAL                         R20 5
      117 GETTABLEKS                       R20 R20 K47 ["Large"]
      119 SETTABLEKS                       R20 R19 K13 ["size"]
      121 GETUPVAL                         R20 6
      122 GETTABLEKS                       R20 R20 K48 ["Emphasis"]
      124 SETTABLEKS                       R20 R19 K43 ["variant"]
      126 GETUPVAL                         R20 7
      127 GETTABLEKS                       R20 R20 K49 ["Fill"]
      129 SETTABLEKS                       R20 R19 K44 ["fillBehavior"]
      131 SETTABLEKS                       R3 R19 K45 ["isLoading"]
      133 NEWCLOSURE                       R20 P3
      134 CAPTURE                          VAL R4
      135 SETTABLEKS                       R20 R19 K6 ["onActivated"]
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K41 ["Submit"]
      140 CALL                             R13 3 1
      141 SETTABLEKS                       R13 R12 K18 ["Actions"]
      143 CALL                             R9 3 1
      144 JUMPIF                           R9 ; [+1]
      145 LOADNIL                          R9
      146 SETTABLEKS                       R9 R8 K4 ["Sheet"]
      148 CALL                             R5 3 -1
      149 RETURN                           R5 -1

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
       65 GETTABLEKS                       R11 R11 K16 ["Sheet"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K8 ["Components"]
       72 GETTABLEKS                       R12 R12 K17 ["Text"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Components"]
       79 GETTABLEKS                       R13 R13 K18 ["TextInput"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K8 ["Components"]
       86 GETTABLEKS                       R14 R14 K19 ["View"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R1 K20 ["BuilderIcons"]
       93 CALL                             R14 1 1
       94 GETTABLEKS                       R14 R14 K13 ["Icon"]
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K21 ["Enums"]
      100 GETTABLEKS                       R16 R16 K22 ["ButtonVariant"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K21 ["Enums"]
      107 GETTABLEKS                       R17 R17 K23 ["DialogSize"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R0 K21 ["Enums"]
      114 GETTABLEKS                       R18 R18 K24 ["FillBehavior"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R19 R0 K21 ["Enums"]
      121 GETTABLEKS                       R19 R19 K25 ["IconSize"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R20 R0 K21 ["Enums"]
      128 GETTABLEKS                       R20 R20 K26 ["InputSize"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K6 [require]
      133 GETTABLEKS                       R21 R0 K27 ["Utility"]
      135 GETTABLEKS                       R21 R21 K28 ["useScaledValue"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K6 [require]
      140 GETTABLEKS                       R22 R0 K8 ["Components"]
      142 GETTABLEKS                       R22 R22 K16 ["Sheet"]
      144 GETTABLEKS                       R22 R22 K29 ["useSheetNavigation"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K6 [require]
      149 GETTABLEKS                       R23 R0 K30 ["Providers"]
      151 GETTABLEKS                       R23 R23 K31 ["Style"]
      153 GETTABLEKS                       R23 R23 K32 ["useTokens"]
      155 CALL                             R22 1 1
      156 DUPCLOSURE                       R23 K33 [PROTO_8]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R17
      171 DUPCLOSURE                       R24 K34 [PROTO_11]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R11
      178 DUPCLOSURE                       R25 K35 [PROTO_12]
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R11
      184 DUPCLOSURE                       R26 K36 [PROTO_17]
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R17
      193 DUPCLOSURE                       R27 K37 [PROTO_19]
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R5
      198 DUPCLOSURE                       R28 K38 [PROTO_23]
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R15
      208 DUPCLOSURE                       R29 K39 [PROTO_27]
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R28
      213 DUPCLOSURE                       R30 K40 [PROTO_34]
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R11
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R15
      222 DUPCLOSURE                       R31 K41 [PROTO_40]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R17
      231 DUPTABLE                         R32 K45 [{["summary"] = "Sheet", ["stories"], ["controls"]}]
      232 NEWTABLE                         R33 0 6
      234 DUPTABLE                         R34 K49 [{["name"] = "Sheet (auto)", ["story"]}]
      235 SETTABLEKS                       R23 R34 K48 ["story"]
      237 DUPTABLE                         R35 K51 [{["name"] = "Sheet (manual sizing based on height prop)", ["story"]}]
      238 SETTABLEKS                       R24 R35 K48 ["story"]
      240 DUPTABLE                         R36 K53 [{["name"] = "Sheet (auto size)", ["story"]}]
      241 SETTABLEKS                       R26 R36 K48 ["story"]
      243 DUPTABLE                         R37 K55 [{["name"] = "Sheet with Focus Navigation", ["story"]}]
      244 SETTABLEKS                       R30 R37 K48 ["story"]
      246 DUPTABLE                         R38 K57 [{["name"] = "Sheet with Left Navigation (No Header)", ["story"]}]
      247 SETTABLEKS                       R29 R38 K48 ["story"]
      249 DUPTABLE                         R39 K59 [{["name"] = "Sheet (with TextInput)", ["story"]}]
      250 SETTABLEKS                       R31 R39 K48 ["story"]
      252 SETLIST                          R33 R34 6 [1]
      254 SETTABLEKS                       R33 R32 K43 ["stories"]
      256 DUPTABLE                         R33 K65 [{["centerSheetHeight"] = 1, ["preferCenterSheet"] = False, ["size"]}]
      257 NEWTABLE                         R34 0 2
      259 GETTABLEKS                       R35 R16 K66 ["Medium"]
      261 GETTABLEKS                       R36 R16 K67 ["Large"]
      263 SETLIST                          R34 R35 2 [1]
      265 SETTABLEKS                       R34 R33 K64 ["size"]
      267 SETTABLEKS                       R33 R32 K44 ["controls"]
      269 RETURN                           R32 1
