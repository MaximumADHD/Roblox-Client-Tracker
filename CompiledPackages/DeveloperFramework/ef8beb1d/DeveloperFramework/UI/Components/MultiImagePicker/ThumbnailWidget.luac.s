PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"dragId", "dragIndex", "oldIndex"}]
        2 GETTABLEKS                       R4 R0 K4 ["thumbnailId"]
        4 SETTABLEKS                       R4 R3 K0 ["dragId"]
        6 GETTABLEKS                       R4 R0 K5 ["index"]
        8 SETTABLEKS                       R4 R3 K1 ["dragIndex"]
       10 GETTABLEKS                       R5 R0 K5 ["index"]
       12 ORK                              R4 R5 K6 []
       13 SETTABLEKS                       R4 R3 K2 ["oldIndex"]
       15 NAMECALL                         R1 R1 K7 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"dragIndex"}]
        2 GETTABLEKS                       R4 R0 K2 ["index"]
        4 SETTABLEKS                       R4 R3 K0 ["dragIndex"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["dragId"]
        5 JUMPIFEQKNIL                     R0 ; [+68]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["state"]
       10 GETTABLEKS                       R0 R0 K2 ["dragIndex"]
       12 JUMPIFEQKNIL                     R0 ; [+61]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["props"]
       17 GETTABLEKS                       R1 R0 K4 ["Mouse"]
       19 NAMECALL                         R1 R1 K5 ["__resetCursor"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["state"]
       25 GETTABLEKS                       R1 R1 K2 ["dragIndex"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["state"]
       30 GETTABLEKS                       R2 R2 K6 ["oldIndex"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+22]
       34 GETUPVAL                         R1 0
       35 DUPTABLE                         R3 K7 [{"dragId", "dragIndex", "oldIndex"}]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K8 ["None"]
       39 SETTABLEKS                       R4 R3 K1 ["dragId"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K8 ["None"]
       44 SETTABLEKS                       R4 R3 K2 ["dragIndex"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K8 ["None"]
       49 SETTABLEKS                       R4 R3 K6 ["oldIndex"]
       51 NAMECALL                         R1 R1 K9 ["setState"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R1 R0 K10 ["ThumbnailAction"]
       57 LOADK                            R2 K11 ["MoveTo"]
       58 DUPTABLE                         R3 K14 [{"thumbnailId", "index"}]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K0 ["state"]
       62 GETTABLEKS                       R4 R4 K1 ["dragId"]
       64 SETTABLEKS                       R4 R3 K12 ["thumbnailId"]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K0 ["state"]
       69 GETTABLEKS                       R4 R4 K2 ["dragIndex"]
       71 SETTABLEKS                       R4 R3 K13 ["index"]
       73 CALL                             R1 2 0
       74 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"deleteThumbnailInfo"}]
        2 SETTABLEKS                       R0 R3 K0 ["deleteThumbnailInfo"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"previewThumbnailInfo"}]
        2 SETTABLEKS                       R0 R3 K0 ["previewThumbnailInfo"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 DUPTABLE                         R1 K8 [{["dragId"] = , ["dragIndex"] = , ["oldIndex"] = , ["deleteThumbnailInfo"] = , ["previewThumbnailInfo"] = }]
        7 SETTABLEKS                       R1 R0 K9 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K10 ["startDragging"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K11 ["dragMove"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R1 R0 K12 ["stopDragging"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K13 ["promptDeleteThumbnail"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K14 ["promptPreviewThumbnail"]
       30 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Order"]
        4 GETTABLEKS                       R4 R2 K1 ["Order"]
        6 JUMPIFEQ                         R3 R4 ; [+20]
        8 DUPTABLE                         R5 K5 [{"dragId", "dragIndex", "oldIndex"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K6 ["None"]
       12 SETTABLEKS                       R6 R5 K2 ["dragId"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K6 ["None"]
       17 SETTABLEKS                       R6 R5 K3 ["dragIndex"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K6 ["None"]
       22 SETTABLEKS                       R6 R5 K4 ["oldIndex"]
       24 NAMECALL                         R3 R0 K7 ["setState"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ThumbnailAction"]
        3 LOADK                            R1 K1 ["AddNew"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"deleteThumbnailInfo"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["deleteThumbnailInfo"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ThumbnailAction"]
        3 LOADK                            R1 K1 ["Delete"]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"previewThumbnailInfo"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["previewThumbnailInfo"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ThumbnailAction"]
        3 LOADK                            R2 K1 ["UpdateAltTexts"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Enabled"]
        8 GETTABLEKS                       R5 R1 K4 ["Thumbnails"]
       10 JUMPIF                           R5 ; [+2]
       11 NEWTABLE                         R5 0 0
       13 GETTABLEKS                       R6 R1 K5 ["Order"]
       15 JUMPIF                           R6 ; [+2]
       16 NEWTABLE                         R6 0 0
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R8 R1 K6 ["MaxThumbnails"]
       21 GETTABLEKS                       R9 R2 K7 ["Thumbnail"]
       23 GETTABLEKS                       R9 R9 K8 ["DefaultMaxCount"]
       25 CALL                             R7 2 1
       26 LENGTH                           R9 R6
       27 ORK                              R8 R9 K9 [0]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R10 R1 K10 ["ShowAltText"]
       31 LOADB                            R11 1
       32 CALL                             R9 2 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R11 R1 K11 ["ShowTitle"]
       36 LOADB                            R12 1
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R12 R1 K12 ["ThumbnailSize"]
       41 GETTABLEKS                       R13 R2 K7 ["Thumbnail"]
       43 GETTABLEKS                       R13 R13 K13 ["DefaultSize"]
       45 CALL                             R11 2 1
       46 GETTABLEKS                       R12 R1 K14 ["ErrorMessage"]
       48 GETTABLEKS                       R13 R0 K15 ["state"]
       50 GETTABLEKS                       R13 R13 K16 ["deleteThumbnailInfo"]
       52 GETTABLEKS                       R14 R0 K15 ["state"]
       54 GETTABLEKS                       R14 R14 K17 ["previewThumbnailInfo"]
       56 GETTABLEKS                       R15 R0 K15 ["state"]
       58 GETTABLEKS                       R15 R15 K18 ["dragId"]
       60 GETTABLEKS                       R16 R0 K15 ["state"]
       62 GETTABLEKS                       R16 R16 K19 ["dragIndex"]
       64 JUMPIFNOTEQKNIL                  R15 ; [+2]
       66 LOADB                            R17 0 +1
       67 LOADB                            R17 1
       68 LOADNIL                          R18
       69 LOADNIL                          R19
       70 JUMPIFNOT                        R17 ; [+29]
       71 GETUPVAL                         R20 1
       72 GETTABLEKS                       R20 R20 K20 ["Dictionary"]
       74 GETTABLEKS                       R20 R20 K21 ["join"]
       76 MOVE                             R21 R5
       77 NEWTABLE                         R22 1 0
       79 DUPTABLE                         R23 K24 [{["id"] = "DragDestination"}]
       80 SETTABLE                         R23 R22 R15
       81 CALL                             R20 2 1
       82 MOVE                             R18 R20
       83 GETUPVAL                         R20 1
       84 GETTABLEKS                       R20 R20 K25 ["List"]
       86 GETTABLEKS                       R20 R20 K26 ["removeValue"]
       88 MOVE                             R21 R6
       89 MOVE                             R22 R15
       90 CALL                             R20 2 1
       91 MOVE                             R19 R20
       92 FASTCALL3                        TABLE_INSERT R19 R16 R15
       94 MOVE                             R21 R19
       95 MOVE                             R22 R16
       96 MOVE                             R23 R15
       97 GETIMPORT                        R20 K29 [table.insert]
       99 CALL                             R20 3 0
      100 LOADNIL                          R20
      101 GETTABLE                         R21 R5 R15
      102 JUMPIFNOT                        R21 ; [+17]
      103 GETTABLE                         R21 R5 R15
      104 GETTABLEKS                       R21 R21 K30 ["imageId"]
      106 JUMPIFNOT                        R21 ; [+6]
      107 LOADK                            R21 K31 ["rbxassetid://"]
      108 GETTABLE                         R22 R5 R15
      109 GETTABLEKS                       R22 R22 K30 ["imageId"]
      111 CONCAT                           R20 R21 R22
      112 JUMP                             ; [+7]
      113 GETTABLE                         R21 R5 R15
      114 GETTABLEKS                       R21 R21 K32 ["tempId"]
      116 JUMPIFNOT                        R21 ; [+3]
      117 GETTABLE                         R21 R5 R15
      118 GETTABLEKS                       R20 R21 K32 ["tempId"]
      120 LOADNIL                          R21
      121 JUMPIF                           R12 ; [+2]
      122 JUMPIFNOTLT                      R7 R8 ; [+6]
      124 GETTABLEKS                       R22 R2 K33 ["Colors"]
      126 GETTABLEKS                       R21 R22 K34 ["Error"]
      128 JUMP                             ; [+4]
      129 GETTABLEKS                       R22 R2 K7 ["Thumbnail"]
      131 GETTABLEKS                       R21 R22 K35 ["Count"]
      133 DUPTABLE                         R22 K41 [{"DragFolder", "Title", "Notes", "Thumbnails", "Count", "DeleteDialog", "PreviewDialog"}]
      134 GETUPVAL                         R23 2
      135 GETTABLEKS                       R23 R23 K42 ["createElement"]
      137 LOADK                            R24 K43 ["Folder"]
      138 NEWTABLE                         R25 0 0
      140 DUPTABLE                         R26 K45 [{"DragGhost"}]
      141 GETUPVAL                         R27 2
      142 GETTABLEKS                       R27 R27 K42 ["createElement"]
      144 GETUPVAL                         R28 3
      145 DUPTABLE                         R29 K48 [{"Enabled", "Image", "StopDragging", "ThumbnailSize", "Theme"}]
      146 AND                              R30 R4 R17
      147 SETTABLEKS                       R30 R29 K3 ["Enabled"]
      149 SETTABLEKS                       R20 R29 K46 ["Image"]
      151 GETTABLEKS                       R30 R0 K49 ["stopDragging"]
      153 SETTABLEKS                       R30 R29 K47 ["StopDragging"]
      155 SETTABLEKS                       R11 R29 K12 ["ThumbnailSize"]
      157 SETTABLEKS                       R2 R29 K1 ["Theme"]
      159 CALL                             R27 2 1
      160 SETTABLEKS                       R27 R26 K44 ["DragGhost"]
      162 CALL                             R23 3 1
      163 SETTABLEKS                       R23 R22 K36 ["DragFolder"]
      165 JUMPIFNOT                        R10 ; [+42]
      166 GETUPVAL                         R23 2
      167 GETTABLEKS                       R23 R23 K42 ["createElement"]
      169 LOADK                            R24 K50 ["TextLabel"]
      170 GETUPVAL                         R25 1
      171 GETTABLEKS                       R25 R25 K20 ["Dictionary"]
      173 GETTABLEKS                       R25 R25 K21 ["join"]
      175 GETTABLEKS                       R26 R2 K51 ["FontStyle"]
      177 GETTABLEKS                       R26 R26 K52 ["Normal"]
      179 DUPTABLE                         R27 K61 [{["LayoutOrder"] = 0, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
      180 GETIMPORT                        R28 K64 [UDim2.new]
      182 LOADN                            R29 1
      183 LOADN                            R30 0
      184 LOADN                            R31 0
      185 LOADN                            R32 16
      186 CALL                             R28 4 1
      187 SETTABLEKS                       R28 R27 K57 ["Size"]
      189 GETIMPORT                        R28 K67 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R28 R27 K58 ["TextXAlignment"]
      193 GETIMPORT                        R28 K69 [Enum.TextYAlignment.Top]
      195 SETTABLEKS                       R28 R27 K59 ["TextYAlignment"]
      197 GETUPVAL                         R30 4
      198 GETUPVAL                         R31 5
      199 LOADK                            R32 K70 ["TitleThumbnails"]
      200 NAMECALL                         R28 R3 K71 ["getProjectText"]
      202 CALL                             R28 4 1
      203 SETTABLEKS                       R28 R27 K60 ["Text"]
      205 CALL                             R25 2 -1
      206 CALL                             R23 -1 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R23
      209 SETTABLEKS                       R23 R22 K37 ["Title"]
      211 GETTABLEKS                       R23 R1 K38 ["Notes"]
      213 SETTABLEKS                       R23 R22 K38 ["Notes"]
      215 GETUPVAL                         R23 2
      216 GETTABLEKS                       R23 R23 K42 ["createElement"]
      218 GETUPVAL                         R24 6
      219 DUPTABLE                         R25 K79 [{["LayoutOrder"] = 2, ["Thumbnails"], ["Order"], ["HoverBarsEnabled"], ["Enabled"], ["StartDragging"], ["DragMove"], ["PromptPreviewThumbnail"], ["PromptDeleteThumbnail"], ["ThumbnailSize"], ["AddNew"], ["Theme"]}]
      220 JUMPIFNOT                        R17 ; [+2]
      221 MOVE                             R26 R18
      222 JUMPIF                           R26 ; [+1]
      223 MOVE                             R26 R5
      224 SETTABLEKS                       R26 R25 K4 ["Thumbnails"]
      226 JUMPIFNOT                        R17 ; [+2]
      227 MOVE                             R26 R19
      228 JUMPIF                           R26 ; [+1]
      229 MOVE                             R26 R6
      230 SETTABLEKS                       R26 R25 K5 ["Order"]
      232 NOT                              R26 R17
      233 SETTABLEKS                       R26 R25 K73 ["HoverBarsEnabled"]
      235 SETTABLEKS                       R4 R25 K3 ["Enabled"]
      237 GETTABLEKS                       R26 R0 K80 ["startDragging"]
      239 SETTABLEKS                       R26 R25 K74 ["StartDragging"]
      241 GETTABLEKS                       R26 R0 K81 ["dragMove"]
      243 SETTABLEKS                       R26 R25 K75 ["DragMove"]
      245 GETTABLEKS                       R26 R0 K82 ["promptPreviewThumbnail"]
      247 SETTABLEKS                       R26 R25 K76 ["PromptPreviewThumbnail"]
      249 GETTABLEKS                       R26 R0 K83 ["promptDeleteThumbnail"]
      251 SETTABLEKS                       R26 R25 K77 ["PromptDeleteThumbnail"]
      253 SETTABLEKS                       R11 R25 K12 ["ThumbnailSize"]
      255 NEWCLOSURE                       R26 P0
      256 CAPTURE                          VAL R1
      257 SETTABLEKS                       R26 R25 K78 ["AddNew"]
      259 SETTABLEKS                       R2 R25 K1 ["Theme"]
      261 CALL                             R23 2 1
      262 SETTABLEKS                       R23 R22 K4 ["Thumbnails"]
      264 GETUPVAL                         R23 2
      265 GETTABLEKS                       R23 R23 K42 ["createElement"]
      267 LOADK                            R24 K50 ["TextLabel"]
      268 GETUPVAL                         R25 1
      269 GETTABLEKS                       R25 R25 K20 ["Dictionary"]
      271 GETTABLEKS                       R25 R25 K21 ["join"]
      273 GETTABLEKS                       R26 R2 K51 ["FontStyle"]
      275 GETTABLEKS                       R26 R26 K84 ["Smaller"]
      277 DUPTABLE                         R27 K88 [{["LayoutOrder"] = 3, ["Visible"], ["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["TextXAlignment"], ["TextYAlignment"]}]
      278 SETTABLEKS                       R4 R27 K86 ["Visible"]
      280 GETIMPORT                        R28 K64 [UDim2.new]
      282 LOADN                            R29 1
      283 LOADN                            R30 0
      284 LOADN                            R31 0
      285 LOADN                            R32 20
      286 CALL                             R28 4 1
      287 SETTABLEKS                       R28 R27 K57 ["Size"]
      289 SETTABLEKS                       R21 R27 K87 ["TextColor3"]
      291 MOVE                             R28 R12
      292 JUMPIF                           R28 ; [+17]
      293 LOADN                            R29 0
      294 JUMPIFNOTLT                      R29 R8 ; [+6]
      296 MOVE                             R29 R8
      297 LOADK                            R30 K89 ["/"]
      298 MOVE                             R31 R7
      299 CONCAT                           R28 R29 R31
      300 JUMPIF                           R28 ; [+9]
      301 GETUPVAL                         R30 4
      302 GETUPVAL                         R31 5
      303 LOADK                            R32 K90 ["ThumbnailsCount"]
      304 DUPTABLE                         R33 K92 [{"maxThumbnails"}]
      305 SETTABLEKS                       R7 R33 K91 ["maxThumbnails"]
      307 NAMECALL                         R28 R3 K71 ["getProjectText"]
      309 CALL                             R28 5 1
      310 SETTABLEKS                       R28 R27 K60 ["Text"]
      312 GETIMPORT                        R28 K67 [Enum.TextXAlignment.Left]
      314 SETTABLEKS                       R28 R27 K58 ["TextXAlignment"]
      316 GETIMPORT                        R28 K94 [Enum.TextYAlignment.Center]
      318 SETTABLEKS                       R28 R27 K59 ["TextYAlignment"]
      320 CALL                             R25 2 -1
      321 CALL                             R23 -1 1
      322 SETTABLEKS                       R23 R22 K35 ["Count"]
      324 GETUPVAL                         R23 2
      325 GETTABLEKS                       R23 R23 K42 ["createElement"]
      327 GETUPVAL                         R24 7
      328 DUPTABLE                         R25 K97 [{"Enabled", "OnClose", "DeleteThumbnail", "Theme"}]
      329 JUMPIFNOTEQKNIL                  R13 ; [+2]
      331 LOADB                            R26 0 +1
      332 LOADB                            R26 1
      333 SETTABLEKS                       R26 R25 K3 ["Enabled"]
      335 NEWCLOSURE                       R26 P1
      336 CAPTURE                          VAL R0
      337 CAPTURE                          UPVAL U2
      338 SETTABLEKS                       R26 R25 K95 ["OnClose"]
      340 NEWCLOSURE                       R26 P2
      341 CAPTURE                          VAL R1
      342 CAPTURE                          VAL R13
      343 SETTABLEKS                       R26 R25 K96 ["DeleteThumbnail"]
      345 SETTABLEKS                       R2 R25 K1 ["Theme"]
      347 CALL                             R23 2 1
      348 SETTABLEKS                       R23 R22 K39 ["DeleteDialog"]
      350 GETUPVAL                         R23 2
      351 GETTABLEKS                       R23 R23 K42 ["createElement"]
      353 GETUPVAL                         R24 8
      354 DUPTABLE                         R25 K102 [{"AltTextError", "Enabled", "IsVideoAllowed", "OnClose", "Order", "ShowAltText", "StartThumbnailInfo", "Thumbnails", "UpdateAltTexts", "Theme"}]
      355 GETTABLEKS                       R26 R1 K98 ["AltTextError"]
      357 SETTABLEKS                       R26 R25 K98 ["AltTextError"]
      359 JUMPIFNOTEQKNIL                  R14 ; [+2]
      361 LOADB                            R26 0 +1
      362 LOADB                            R26 1
      363 SETTABLEKS                       R26 R25 K3 ["Enabled"]
      365 GETTABLEKS                       R26 R1 K99 ["IsVideoAllowed"]
      367 SETTABLEKS                       R26 R25 K99 ["IsVideoAllowed"]
      369 NEWCLOSURE                       R26 P3
      370 CAPTURE                          VAL R0
      371 CAPTURE                          UPVAL U2
      372 SETTABLEKS                       R26 R25 K95 ["OnClose"]
      374 SETTABLEKS                       R6 R25 K5 ["Order"]
      376 SETTABLEKS                       R9 R25 K10 ["ShowAltText"]
      378 SETTABLEKS                       R14 R25 K100 ["StartThumbnailInfo"]
      380 SETTABLEKS                       R5 R25 K4 ["Thumbnails"]
      382 NEWCLOSURE                       R26 P4
      383 CAPTURE                          VAL R1
      384 SETTABLEKS                       R26 R25 K101 ["UpdateAltTexts"]
      386 SETTABLEKS                       R2 R25 K1 ["Theme"]
      388 CALL                             R23 2 1
      389 SETTABLEKS                       R23 R22 K40 ["PreviewDialog"]
      391 GETUPVAL                         R23 2
      392 GETTABLEKS                       R23 R23 K42 ["createElement"]
      394 GETUPVAL                         R24 9
      395 DUPTABLE                         R25 K106 [{"LayoutOrder", "Layout", "AutomaticSize", "Spacing"}]
      396 GETTABLEKS                       R27 R1 K53 ["LayoutOrder"]
      398 ORK                              R26 R27 K55 [1]
      399 SETTABLEKS                       R26 R25 K53 ["LayoutOrder"]
      401 GETIMPORT                        R26 K109 [Enum.FillDirection.Vertical]
      403 SETTABLEKS                       R26 R25 K103 ["Layout"]
      405 GETIMPORT                        R26 K111 [Enum.AutomaticSize.XY]
      407 SETTABLEKS                       R26 R25 K104 ["AutomaticSize"]
      409 GETIMPORT                        R26 K113 [UDim.new]
      411 LOADN                            R27 0
      412 LOADN                            R28 15
      413 CALL                             R26 2 1
      414 SETTABLEKS                       R26 R25 K105 ["Spacing"]
      416 MOVE                             R26 R22
      417 CALL                             R23 3 -1
      418 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K4 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["prioritize"]
       30 GETTABLEKS                       R5 R0 K2 ["UI"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["ContextServices"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K14 ["withContext"]
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K15 ["Resources"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETIMPORT                        R11 K1 [script]
       55 GETTABLEKS                       R11 R11 K4 ["Parent"]
       57 GETTABLEKS                       R11 R11 K16 ["ThumbnailSet"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETIMPORT                        R12 K1 [script]
       64 GETTABLEKS                       R12 R12 K4 ["Parent"]
       66 GETTABLEKS                       R12 R12 K17 ["DragGhostThumbnail"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETIMPORT                        R13 K1 [script]
       73 GETTABLEKS                       R13 R13 K4 ["Parent"]
       75 GETTABLEKS                       R13 R13 K18 ["DeleteThumbnailDialog"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETIMPORT                        R14 K1 [script]
       82 GETTABLEKS                       R14 R14 K4 ["Parent"]
       84 GETTABLEKS                       R14 R14 K19 ["PreviewThumbnailDialog"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETIMPORT                        R15 K1 [script]
       91 GETTABLEKS                       R15 R15 K4 ["Parent"]
       93 GETTABLEKS                       R15 R15 K20 ["types"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R9 K21 ["LOCALIZATION_PROJECT_NAME"]
       98 GETIMPORT                        R16 K23 [game]
      100 LOADK                            R18 K24 ["DevFrameworkMultiImageRenameFix"]
      101 LOADB                            R19 0
      102 NAMECALL                         R16 R16 K25 ["DefineFastFlag"]
      104 CALL                             R16 3 1
      105 JUMPIFNOT                        R16 ; [+2]
      106 LOADK                            R17 K26 ["MultiImagePicker"]
      107 JUMP                             ; [+1]
      108 LOADK                            R17 K27 ["MulitImagePicker"]
      109 GETTABLEKS                       R18 R1 K28 ["PureComponent"]
      111 LOADK                            R20 K29 ["ThumbnailWidget"]
      112 NAMECALL                         R18 R18 K30 ["extend"]
      114 CALL                             R18 2 1
      115 DUPCLOSURE                       R19 K31 [PROTO_5]
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R19 R18 K32 ["init"]
      119 DUPCLOSURE                       R19 K33 [PROTO_6]
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R19 R18 K34 ["didUpdate"]
      123 DUPCLOSURE                       R19 K35 [PROTO_12]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R6
      134 SETTABLEKS                       R19 R18 K36 ["render"]
      136 MOVE                             R19 R8
      137 DUPTABLE                         R20 K39 [{"Localization", "Mouse"}]
      138 GETTABLEKS                       R21 R7 K37 ["Localization"]
      140 SETTABLEKS                       R21 R20 K37 ["Localization"]
      142 GETTABLEKS                       R21 R7 K38 ["Mouse"]
      144 SETTABLEKS                       R21 R20 K38 ["Mouse"]
      146 CALL                             R19 1 1
      147 MOVE                             R20 R18
      148 CALL                             R19 1 1
      149 MOVE                             R18 R19
      150 RETURN                           R18 1
