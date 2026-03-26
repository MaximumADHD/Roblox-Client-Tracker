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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["dragId"]
        5 JUMPIFEQKNIL                     R0 ; [+68]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["state"]
       10 GETTABLEKS                       R0 R1 K2 ["dragIndex"]
       12 JUMPIFEQKNIL                     R0 ; [+61]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K3 ["props"]
       17 GETTABLEKS                       R1 R0 K4 ["Mouse"]
       19 NAMECALL                         R1 R1 K5 ["__resetCursor"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K0 ["state"]
       25 GETTABLEKS                       R1 R2 K2 ["dragIndex"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K0 ["state"]
       30 GETTABLEKS                       R2 R3 K6 ["oldIndex"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+22]
       34 GETUPVAL                         R1 0
       35 DUPTABLE                         R3 K7 [{"dragId", "dragIndex", "oldIndex"}]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K8 ["None"]
       39 SETTABLEKS                       R4 R3 K1 ["dragId"]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R4 R5 K8 ["None"]
       44 SETTABLEKS                       R4 R3 K2 ["dragIndex"]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R4 R5 K8 ["None"]
       49 SETTABLEKS                       R4 R3 K6 ["oldIndex"]
       51 NAMECALL                         R1 R1 K9 ["setState"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R1 R0 K10 ["ThumbnailAction"]
       57 LOADK                            R2 K11 ["MoveTo"]
       58 DUPTABLE                         R3 K14 [{"thumbnailId", "index"}]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K0 ["state"]
       62 GETTABLEKS                       R4 R5 K1 ["dragId"]
       64 SETTABLEKS                       R4 R3 K12 ["thumbnailId"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R5 R6 K0 ["state"]
       69 GETTABLEKS                       R4 R5 K2 ["dragIndex"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 DUPTABLE                         R1 K7 [{"dragId", "dragIndex", "oldIndex", "deleteThumbnailInfo", "previewThumbnailInfo"}]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["dragId"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["dragIndex"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K4 ["oldIndex"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K5 ["deleteThumbnailInfo"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K6 ["previewThumbnailInfo"]
       22 SETTABLEKS                       R1 R0 K8 ["state"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K9 ["startDragging"]
       28 NEWCLOSURE                       R1 P1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K10 ["dragMove"]
       32 NEWCLOSURE                       R1 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R1 R0 K11 ["stopDragging"]
       37 NEWCLOSURE                       R1 P3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K12 ["promptDeleteThumbnail"]
       41 NEWCLOSURE                       R1 P4
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K13 ["promptPreviewThumbnail"]
       45 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Order"]
        4 GETTABLEKS                       R4 R2 K1 ["Order"]
        6 JUMPIFEQ                         R3 R4 ; [+20]
        8 DUPTABLE                         R5 K5 [{"dragId", "dragIndex", "oldIndex"}]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K6 ["None"]
       12 SETTABLEKS                       R6 R5 K2 ["dragId"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K6 ["None"]
       17 SETTABLEKS                       R6 R5 K3 ["dragIndex"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K6 ["None"]
       22 SETTABLEKS                       R6 R5 K4 ["oldIndex"]
       24 NAMECALL                         R3 R0 K7 ["setState"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ThumbnailAction"]
        3 LOADK                            R1 K1 ["AddNew"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"deleteThumbnailInfo"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["deleteThumbnailInfo"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ThumbnailAction"]
        3 LOADK                            R1 K1 ["Delete"]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"previewThumbnailInfo"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["previewThumbnailInfo"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ThumbnailAction"]
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
       21 GETTABLEKS                       R10 R2 K7 ["Thumbnail"]
       23 GETTABLEKS                       R9 R10 K8 ["DefaultMaxCount"]
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
       41 GETTABLEKS                       R14 R2 K7 ["Thumbnail"]
       43 GETTABLEKS                       R13 R14 K13 ["DefaultSize"]
       45 CALL                             R11 2 1
       46 GETTABLEKS                       R12 R1 K14 ["ErrorMessage"]
       48 GETTABLEKS                       R14 R0 K15 ["state"]
       50 GETTABLEKS                       R13 R14 K16 ["deleteThumbnailInfo"]
       52 GETTABLEKS                       R15 R0 K15 ["state"]
       54 GETTABLEKS                       R14 R15 K17 ["previewThumbnailInfo"]
       56 GETTABLEKS                       R16 R0 K15 ["state"]
       58 GETTABLEKS                       R15 R16 K18 ["dragId"]
       60 GETTABLEKS                       R17 R0 K15 ["state"]
       62 GETTABLEKS                       R16 R17 K19 ["dragIndex"]
       64 JUMPIFNOTEQKNIL                  R15 ; [+2]
       66 LOADB                            R17 0 +1
       67 LOADB                            R17 1
       68 LOADNIL                          R18
       69 LOADNIL                          R19
       70 JUMPIFNOT                        R17 ; [+32]
       71 GETUPVAL                         R22 1
       72 GETTABLEKS                       R21 R22 K20 ["Dictionary"]
       74 GETTABLEKS                       R20 R21 K21 ["join"]
       76 MOVE                             R21 R5
       77 NEWTABLE                         R22 1 0
       79 DUPTABLE                         R23 K23 [{"id"}]
       80 LOADK                            R24 K24 ["DragDestination"]
       81 SETTABLEKS                       R24 R23 K22 ["id"]
       83 SETTABLE                         R23 R22 R15
       84 CALL                             R20 2 1
       85 MOVE                             R18 R20
       86 GETUPVAL                         R22 1
       87 GETTABLEKS                       R21 R22 K25 ["List"]
       89 GETTABLEKS                       R20 R21 K26 ["removeValue"]
       91 MOVE                             R21 R6
       92 MOVE                             R22 R15
       93 CALL                             R20 2 1
       94 MOVE                             R19 R20
       95 FASTCALL3                        TABLE_INSERT R19 R16 R15
       97 MOVE                             R21 R19
       98 MOVE                             R22 R16
       99 MOVE                             R23 R15
      100 GETIMPORT                        R20 K29 [table.insert]
      102 CALL                             R20 3 0
      103 LOADNIL                          R20
      104 GETTABLE                         R21 R5 R15
      105 JUMPIFNOT                        R21 ; [+17]
      106 GETTABLE                         R22 R5 R15
      107 GETTABLEKS                       R21 R22 K30 ["imageId"]
      109 JUMPIFNOT                        R21 ; [+6]
      110 LOADK                            R21 K31 ["rbxassetid://"]
      111 GETTABLE                         R23 R5 R15
      112 GETTABLEKS                       R22 R23 K30 ["imageId"]
      114 CONCAT                           R20 R21 R22
      115 JUMP                             ; [+7]
      116 GETTABLE                         R22 R5 R15
      117 GETTABLEKS                       R21 R22 K32 ["tempId"]
      119 JUMPIFNOT                        R21 ; [+3]
      120 GETTABLE                         R21 R5 R15
      121 GETTABLEKS                       R20 R21 K32 ["tempId"]
      123 LOADNIL                          R21
      124 JUMPIF                           R12 ; [+2]
      125 JUMPIFNOTLT                      R7 R8 ; [+6]
      127 GETTABLEKS                       R22 R2 K33 ["Colors"]
      129 GETTABLEKS                       R21 R22 K34 ["Error"]
      131 JUMP                             ; [+4]
      132 GETTABLEKS                       R22 R2 K7 ["Thumbnail"]
      134 GETTABLEKS                       R21 R22 K35 ["Count"]
      136 DUPTABLE                         R22 K41 [{"DragFolder", "Title", "Notes", "Thumbnails", "Count", "DeleteDialog", "PreviewDialog"}]
      137 GETUPVAL                         R24 2
      138 GETTABLEKS                       R23 R24 K42 ["createElement"]
      140 LOADK                            R24 K43 ["Folder"]
      141 NEWTABLE                         R25 0 0
      143 DUPTABLE                         R26 K45 [{"DragGhost"}]
      144 GETUPVAL                         R28 2
      145 GETTABLEKS                       R27 R28 K42 ["createElement"]
      147 GETUPVAL                         R28 3
      148 DUPTABLE                         R29 K48 [{"Enabled", "Image", "StopDragging", "ThumbnailSize", "Theme"}]
      149 AND                              R30 R4 R17
      150 SETTABLEKS                       R30 R29 K3 ["Enabled"]
      152 SETTABLEKS                       R20 R29 K46 ["Image"]
      154 GETTABLEKS                       R30 R0 K49 ["stopDragging"]
      156 SETTABLEKS                       R30 R29 K47 ["StopDragging"]
      158 SETTABLEKS                       R11 R29 K12 ["ThumbnailSize"]
      160 SETTABLEKS                       R2 R29 K1 ["Theme"]
      162 CALL                             R27 2 1
      163 SETTABLEKS                       R27 R26 K44 ["DragGhost"]
      165 CALL                             R23 3 1
      166 SETTABLEKS                       R23 R22 K36 ["DragFolder"]
      168 JUMPIFNOT                        R10 ; [+51]
      169 GETUPVAL                         R24 2
      170 GETTABLEKS                       R23 R24 K42 ["createElement"]
      172 LOADK                            R24 K50 ["TextLabel"]
      173 GETUPVAL                         R27 1
      174 GETTABLEKS                       R26 R27 K20 ["Dictionary"]
      176 GETTABLEKS                       R25 R26 K21 ["join"]
      178 GETTABLEKS                       R27 R2 K51 ["FontStyle"]
      180 GETTABLEKS                       R26 R27 K52 ["Normal"]
      182 DUPTABLE                         R27 K60 [{"LayoutOrder", "BackgroundTransparency", "BorderSizePixel", "Size", "TextXAlignment", "TextYAlignment", "Text"}]
      183 LOADN                            R28 0
      184 SETTABLEKS                       R28 R27 K53 ["LayoutOrder"]
      186 LOADN                            R28 1
      187 SETTABLEKS                       R28 R27 K54 ["BackgroundTransparency"]
      189 LOADN                            R28 0
      190 SETTABLEKS                       R28 R27 K55 ["BorderSizePixel"]
      192 GETIMPORT                        R28 K63 [UDim2.new]
      194 LOADN                            R29 1
      195 LOADN                            R30 0
      196 LOADN                            R31 0
      197 LOADN                            R32 16
      198 CALL                             R28 4 1
      199 SETTABLEKS                       R28 R27 K56 ["Size"]
      201 GETIMPORT                        R28 K66 [Enum.TextXAlignment.Left]
      203 SETTABLEKS                       R28 R27 K57 ["TextXAlignment"]
      205 GETIMPORT                        R28 K68 [Enum.TextYAlignment.Top]
      207 SETTABLEKS                       R28 R27 K58 ["TextYAlignment"]
      209 GETUPVAL                         R30 4
      210 GETUPVAL                         R31 5
      211 LOADK                            R32 K69 ["TitleThumbnails"]
      212 NAMECALL                         R28 R3 K70 ["getProjectText"]
      214 CALL                             R28 4 1
      215 SETTABLEKS                       R28 R27 K59 ["Text"]
      217 CALL                             R25 2 -1
      218 CALL                             R23 -1 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R23
      221 SETTABLEKS                       R23 R22 K37 ["Title"]
      223 GETTABLEKS                       R23 R1 K38 ["Notes"]
      225 SETTABLEKS                       R23 R22 K38 ["Notes"]
      227 GETUPVAL                         R24 2
      228 GETTABLEKS                       R23 R24 K42 ["createElement"]
      230 GETUPVAL                         R24 6
      231 DUPTABLE                         R25 K77 [{"LayoutOrder", "Thumbnails", "Order", "HoverBarsEnabled", "Enabled", "StartDragging", "DragMove", "PromptPreviewThumbnail", "PromptDeleteThumbnail", "ThumbnailSize", "AddNew", "Theme"}]
      232 LOADN                            R26 2
      233 SETTABLEKS                       R26 R25 K53 ["LayoutOrder"]
      235 JUMPIFNOT                        R17 ; [+2]
      236 MOVE                             R26 R18
      237 JUMPIF                           R26 ; [+1]
      238 MOVE                             R26 R5
      239 SETTABLEKS                       R26 R25 K4 ["Thumbnails"]
      241 JUMPIFNOT                        R17 ; [+2]
      242 MOVE                             R26 R19
      243 JUMPIF                           R26 ; [+1]
      244 MOVE                             R26 R6
      245 SETTABLEKS                       R26 R25 K5 ["Order"]
      247 NOT                              R26 R17
      248 SETTABLEKS                       R26 R25 K71 ["HoverBarsEnabled"]
      250 SETTABLEKS                       R4 R25 K3 ["Enabled"]
      252 GETTABLEKS                       R26 R0 K78 ["startDragging"]
      254 SETTABLEKS                       R26 R25 K72 ["StartDragging"]
      256 GETTABLEKS                       R26 R0 K79 ["dragMove"]
      258 SETTABLEKS                       R26 R25 K73 ["DragMove"]
      260 GETTABLEKS                       R26 R0 K80 ["promptPreviewThumbnail"]
      262 SETTABLEKS                       R26 R25 K74 ["PromptPreviewThumbnail"]
      264 GETTABLEKS                       R26 R0 K81 ["promptDeleteThumbnail"]
      266 SETTABLEKS                       R26 R25 K75 ["PromptDeleteThumbnail"]
      268 SETTABLEKS                       R11 R25 K12 ["ThumbnailSize"]
      270 NEWCLOSURE                       R26 P0
      271 CAPTURE                          VAL R1
      272 SETTABLEKS                       R26 R25 K76 ["AddNew"]
      274 SETTABLEKS                       R2 R25 K1 ["Theme"]
      276 CALL                             R23 2 1
      277 SETTABLEKS                       R23 R22 K4 ["Thumbnails"]
      279 GETUPVAL                         R24 2
      280 GETTABLEKS                       R23 R24 K42 ["createElement"]
      282 LOADK                            R24 K50 ["TextLabel"]
      283 GETUPVAL                         R27 1
      284 GETTABLEKS                       R26 R27 K20 ["Dictionary"]
      286 GETTABLEKS                       R25 R26 K21 ["join"]
      288 GETTABLEKS                       R27 R2 K51 ["FontStyle"]
      290 GETTABLEKS                       R26 R27 K82 ["Smaller"]
      292 DUPTABLE                         R27 K85 [{"LayoutOrder", "Visible", "Size", "BackgroundTransparency", "TextColor3", "Text", "TextXAlignment", "TextYAlignment"}]
      293 LOADN                            R28 3
      294 SETTABLEKS                       R28 R27 K53 ["LayoutOrder"]
      296 SETTABLEKS                       R4 R27 K83 ["Visible"]
      298 GETIMPORT                        R28 K63 [UDim2.new]
      300 LOADN                            R29 1
      301 LOADN                            R30 0
      302 LOADN                            R31 0
      303 LOADN                            R32 20
      304 CALL                             R28 4 1
      305 SETTABLEKS                       R28 R27 K56 ["Size"]
      307 LOADN                            R28 1
      308 SETTABLEKS                       R28 R27 K54 ["BackgroundTransparency"]
      310 SETTABLEKS                       R21 R27 K84 ["TextColor3"]
      312 MOVE                             R28 R12
      313 JUMPIF                           R28 ; [+17]
      314 LOADN                            R29 0
      315 JUMPIFNOTLT                      R29 R8 ; [+6]
      317 MOVE                             R29 R8
      318 LOADK                            R30 K86 ["/"]
      319 MOVE                             R31 R7
      320 CONCAT                           R28 R29 R31
      321 JUMPIF                           R28 ; [+9]
      322 GETUPVAL                         R30 4
      323 GETUPVAL                         R31 5
      324 LOADK                            R32 K87 ["ThumbnailsCount"]
      325 DUPTABLE                         R33 K89 [{"maxThumbnails"}]
      326 SETTABLEKS                       R7 R33 K88 ["maxThumbnails"]
      328 NAMECALL                         R28 R3 K70 ["getProjectText"]
      330 CALL                             R28 5 1
      331 SETTABLEKS                       R28 R27 K59 ["Text"]
      333 GETIMPORT                        R28 K66 [Enum.TextXAlignment.Left]
      335 SETTABLEKS                       R28 R27 K57 ["TextXAlignment"]
      337 GETIMPORT                        R28 K91 [Enum.TextYAlignment.Center]
      339 SETTABLEKS                       R28 R27 K58 ["TextYAlignment"]
      341 CALL                             R25 2 -1
      342 CALL                             R23 -1 1
      343 SETTABLEKS                       R23 R22 K35 ["Count"]
      345 GETUPVAL                         R24 2
      346 GETTABLEKS                       R23 R24 K42 ["createElement"]
      348 GETUPVAL                         R24 7
      349 DUPTABLE                         R25 K94 [{"Enabled", "OnClose", "DeleteThumbnail", "Theme"}]
      350 JUMPIFNOTEQKNIL                  R13 ; [+2]
      352 LOADB                            R26 0 +1
      353 LOADB                            R26 1
      354 SETTABLEKS                       R26 R25 K3 ["Enabled"]
      356 NEWCLOSURE                       R26 P1
      357 CAPTURE                          VAL R0
      358 CAPTURE                          UPVAL U2
      359 SETTABLEKS                       R26 R25 K92 ["OnClose"]
      361 NEWCLOSURE                       R26 P2
      362 CAPTURE                          VAL R1
      363 CAPTURE                          VAL R13
      364 SETTABLEKS                       R26 R25 K93 ["DeleteThumbnail"]
      366 SETTABLEKS                       R2 R25 K1 ["Theme"]
      368 CALL                             R23 2 1
      369 SETTABLEKS                       R23 R22 K39 ["DeleteDialog"]
      371 GETUPVAL                         R24 2
      372 GETTABLEKS                       R23 R24 K42 ["createElement"]
      374 GETUPVAL                         R24 8
      375 DUPTABLE                         R25 K99 [{"AltTextError", "Enabled", "IsVideoAllowed", "OnClose", "Order", "ShowAltText", "StartThumbnailInfo", "Thumbnails", "UpdateAltTexts", "Theme"}]
      376 GETTABLEKS                       R26 R1 K95 ["AltTextError"]
      378 SETTABLEKS                       R26 R25 K95 ["AltTextError"]
      380 JUMPIFNOTEQKNIL                  R14 ; [+2]
      382 LOADB                            R26 0 +1
      383 LOADB                            R26 1
      384 SETTABLEKS                       R26 R25 K3 ["Enabled"]
      386 GETTABLEKS                       R26 R1 K96 ["IsVideoAllowed"]
      388 SETTABLEKS                       R26 R25 K96 ["IsVideoAllowed"]
      390 NEWCLOSURE                       R26 P3
      391 CAPTURE                          VAL R0
      392 CAPTURE                          UPVAL U2
      393 SETTABLEKS                       R26 R25 K92 ["OnClose"]
      395 SETTABLEKS                       R6 R25 K5 ["Order"]
      397 SETTABLEKS                       R9 R25 K10 ["ShowAltText"]
      399 SETTABLEKS                       R14 R25 K97 ["StartThumbnailInfo"]
      401 SETTABLEKS                       R5 R25 K4 ["Thumbnails"]
      403 NEWCLOSURE                       R26 P4
      404 CAPTURE                          VAL R1
      405 SETTABLEKS                       R26 R25 K98 ["UpdateAltTexts"]
      407 SETTABLEKS                       R2 R25 K1 ["Theme"]
      409 CALL                             R23 2 1
      410 SETTABLEKS                       R23 R22 K40 ["PreviewDialog"]
      412 GETUPVAL                         R24 2
      413 GETTABLEKS                       R23 R24 K42 ["createElement"]
      415 GETUPVAL                         R24 9
      416 DUPTABLE                         R25 K103 [{"LayoutOrder", "Layout", "AutomaticSize", "Spacing"}]
      417 GETTABLEKS                       R27 R1 K53 ["LayoutOrder"]
      419 ORK                              R26 R27 K104 [1]
      420 SETTABLEKS                       R26 R25 K53 ["LayoutOrder"]
      422 GETIMPORT                        R26 K107 [Enum.FillDirection.Vertical]
      424 SETTABLEKS                       R26 R25 K100 ["Layout"]
      426 GETIMPORT                        R26 K109 [Enum.AutomaticSize.XY]
      428 SETTABLEKS                       R26 R25 K101 ["AutomaticSize"]
      430 GETIMPORT                        R26 K111 [UDim.new]
      432 LOADN                            R27 0
      433 LOADN                            R28 15
      434 CALL                             R26 2 1
      435 SETTABLEKS                       R26 R25 K102 ["Spacing"]
      437 MOVE                             R26 R22
      438 CALL                             R23 3 -1
      439 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R5 R0 K4 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["prioritize"]
       30 GETTABLEKS                       R6 R0 K2 ["UI"]
       32 GETTABLEKS                       R5 R6 K11 ["Components"]
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
       53 GETIMPORT                        R13 K1 [script]
       55 GETTABLEKS                       R12 R13 K4 ["Parent"]
       57 GETTABLEKS                       R11 R12 K16 ["ThumbnailSet"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETIMPORT                        R14 K1 [script]
       64 GETTABLEKS                       R13 R14 K4 ["Parent"]
       66 GETTABLEKS                       R12 R13 K17 ["DragGhostThumbnail"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETIMPORT                        R15 K1 [script]
       73 GETTABLEKS                       R14 R15 K4 ["Parent"]
       75 GETTABLEKS                       R13 R14 K18 ["DeleteThumbnailDialog"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETIMPORT                        R16 K1 [script]
       82 GETTABLEKS                       R15 R16 K4 ["Parent"]
       84 GETTABLEKS                       R14 R15 K19 ["PreviewThumbnailDialog"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETIMPORT                        R17 K1 [script]
       91 GETTABLEKS                       R16 R17 K4 ["Parent"]
       93 GETTABLEKS                       R15 R16 K20 ["types"]
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
