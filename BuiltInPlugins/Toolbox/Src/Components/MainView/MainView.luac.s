PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Network"]
        5 GETTABLEKS                       R0 R0 K2 ["networkInterface"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["Settings"]
       12 LOADK                            R3 K4 ["Plugin"]
       13 NAMECALL                         R1 R1 K5 ["get"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K6 ["nextPage"]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["headerHeight"]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R0 K1 ["containerWidth"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K3 ["scrollingFrameRef"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K4 ["requestNextPage"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Position"]
        4 JUMPIF                           R2 ; [+7]
        5 GETIMPORT                        R2 K4 [UDim2.new]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R1 K5 ["Size"]
       14 JUMPIF                           R3 ; [+7]
       15 GETIMPORT                        R3 K4 [UDim2.new]
       17 LOADN                            R4 1
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 CALL                             R3 4 1
       22 GETTABLEKS                       R4 R1 K6 ["categoryName"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K7 ["categoryIsFont"]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R7 R1 K9 ["isLoading"]
       31 ORK                              R6 R7 K8 [False]
       32 GETTABLEKS                       R8 R1 K11 ["maxWidth"]
       34 ORK                              R7 R8 K10 [0]
       35 GETTABLEKS                       R8 R1 K12 ["networkErrors"]
       37 JUMPIF                           R8 ; [+2]
       38 NEWTABLE                         R8 0 0
       40 LENGTH                           R10 R8
       41 GETTABLE                         R9 R8 R10
       42 GETTABLEKS                       R10 R1 K13 ["includeUnverifiedCreators"]
       44 LOADN                            R14 2
       45 GETUPVAL                         R15 1
       46 GETTABLEKS                       R15 R15 K14 ["MAIN_VIEW_PADDING"]
       48 MUL                              R13 R14 R15
       49 SUB                              R12 R7 R13
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K15 ["SCROLLBAR_PADDING"]
       53 SUB                              R11 R12 R13
       54 GETTABLEKS                       R12 R1 K16 ["creator"]
       56 JUMPIFNOT                        R12 ; [+4]
       57 GETTABLEKS                       R12 R1 K16 ["creator"]
       59 GETTABLEKS                       R12 R12 K17 ["Name"]
       61 GETTABLEKS                       R13 R1 K18 ["searchTerm"]
       63 LOADB                            R14 0
       64 LOADNIL                          R15
       65 LOADNIL                          R16
       66 LOADNIL                          R17
       67 LOADB                            R18 1
       68 JUMPIFEQKB                       R10 TRUE ; [+42]
       70 LOADB                            R18 1
       71 JUMPIFNOTEQKNIL                  R12 ; [+39]
       73 GETUPVAL                         R19 2
       74 CALL                             R19 0 1
       75 JUMPIFNOT                        R19 ; [+8]
       76 LOADB                            R18 1
       77 GETIMPORT                        R19 K20 [next]
       79 GETTABLEKS                       R20 R1 K21 ["creatorTargetIds"]
       81 CALL                             R19 1 1
       82 JUMPIFNOTEQKNIL                  R19 ; [+28]
       84 GETUPVAL                         R19 2
       85 CALL                             R19 0 1
       86 JUMPIFNOT                        R19 ; [+8]
       87 LOADB                            R18 1
       88 GETIMPORT                        R19 K20 [next]
       90 GETTABLEKS                       R20 R1 K22 ["groupTargetIds"]
       92 CALL                             R19 1 1
       93 JUMPIFNOTEQKNIL                  R19 ; [+17]
       95 LOADB                            R18 1
       96 GETTABLEKS                       R19 R1 K23 ["audioSearchInfo"]
       98 JUMPIFNOTEQKNIL                  R19 ; [+12]
      100 LOADB                            R18 1
      101 GETTABLEKS                       R19 R1 K24 ["additionalAudioSearchInfo"]
      103 JUMPIFNOTEQKNIL                  R19 ; [+7]
      105 GETTABLEKS                       R19 R1 K25 ["uiSortIntent"]
      107 JUMPIFNOTEQKNIL                  R19 ; [+2]
      109 LOADB                            R18 0 +1
      110 LOADB                            R18 1
      111 MOVE                             R17 R18
      112 LENGTH                           R18 R13
      113 LOADN                            R19 0
      114 JUMPIFLT                         R19 R18 ; [+2]
      116 LOADB                            R14 0 +1
      117 LOADB                            R14 1
      118 LOADB                            R18 0
      119 GETTABLEKS                       R19 R1 K26 ["correctionState"]
      121 GETUPVAL                         R20 3
      122 GETTABLEKS                       R20 R20 K27 ["AutocorrectResponseState"]
      124 GETTABLEKS                       R20 R20 K28 ["CorrectionAvailable"]
      126 JUMPIFNOTEQ                      R19 R20 ; [+7]
      128 GETTABLEKS                       R19 R1 K29 ["correctedQuery"]
      130 JUMPIFNOTEQKS                    R19 K30 [""] ; [+2]
      132 LOADB                            R18 0 +1
      133 LOADB                            R18 1
      134 LOADB                            R19 0
      135 GETTABLEKS                       R20 R1 K26 ["correctionState"]
      137 GETUPVAL                         R21 3
      138 GETTABLEKS                       R21 R21 K27 ["AutocorrectResponseState"]
      140 GETTABLEKS                       R21 R21 K31 ["CorrectionAccepted"]
      142 JUMPIFNOTEQ                      R20 R21 ; [+7]
      144 GETTABLEKS                       R20 R1 K32 ["userQuery"]
      146 JUMPIFNOTEQKS                    R20 K30 [""] ; [+2]
      148 LOADB                            R19 0 +1
      149 LOADB                            R19 1
      150 OR                               R20 R18 R19
      151 GETUPVAL                         R21 4
      152 GETTABLEKS                       R21 R21 K33 ["calculateMainViewHeaderHeight"]
      154 MOVE                             R22 R17
      155 LOADNIL                          R23
      156 LOADNIL                          R24
      157 LOADNIL                          R25
      158 MOVE                             R26 R14
      159 MOVE                             R27 R20
      160 CALL                             R21 6 2
      161 MOVE                             R15 R21
      162 MOVE                             R16 R22
      163 GETTABLEKS                       R21 R1 K34 ["tryOpenAssetConfig"]
      165 SETTABLEKS                       R11 R0 K35 ["containerWidth"]
      167 SETTABLEKS                       R15 R0 K36 ["headerHeight"]
      169 GETUPVAL                         R22 5
      170 GETTABLEKS                       R22 R22 K37 ["join"]
      172 DUPTABLE                         R23 K40 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      173 SETTABLEKS                       R2 R23 K1 ["Position"]
      175 SETTABLEKS                       R3 R23 K5 ["Size"]
      177 LOADN                            R24 1
      178 SETTABLEKS                       R24 R23 K38 ["BackgroundTransparency"]
      180 LOADN                            R24 0
      181 SETTABLEKS                       R24 R23 K39 ["BorderSizePixel"]
      183 GETTABLEKS                       R24 R1 K41 ["WrapperProps"]
      185 CALL                             R22 2 1
      186 GETUPVAL                         R23 6
      187 GETTABLEKS                       R23 R23 K42 ["createElement"]
      189 GETUPVAL                         R24 7
      190 MOVE                             R25 R22
      191 DUPTABLE                         R26 K47 [{"ScrollingFrame", "AssetGridContainerNew", "LoadingIndicator", "NetworkError"}]
      192 GETUPVAL                         R27 6
      193 GETTABLEKS                       R27 R27 K42 ["createElement"]
      195 LOADK                            R28 K48 ["Frame"]
      196 DUPTABLE                         R29 K49 [{"BackgroundTransparency", "Size"}]
      197 LOADN                            R30 1
      198 SETTABLEKS                       R30 R29 K38 ["BackgroundTransparency"]
      200 GETIMPORT                        R30 K4 [UDim2.new]
      202 LOADN                            R31 1
      203 LOADN                            R32 0
      204 LOADN                            R33 1
      205 LOADN                            R34 0
      206 CALL                             R30 4 1
      207 SETTABLEKS                       R30 R29 K5 ["Size"]
      209 DUPTABLE                         R30 K52 [{"UIPadding", "Header"}]
      210 GETUPVAL                         R31 6
      211 GETTABLEKS                       R31 R31 K42 ["createElement"]
      213 LOADK                            R32 K50 ["UIPadding"]
      214 DUPTABLE                         R33 K57 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      215 GETIMPORT                        R34 K59 [UDim.new]
      217 LOADN                            R35 0
      218 GETUPVAL                         R36 1
      219 GETTABLEKS                       R36 R36 K14 ["MAIN_VIEW_PADDING"]
      221 CALL                             R34 2 1
      222 SETTABLEKS                       R34 R33 K53 ["PaddingBottom"]
      224 GETIMPORT                        R34 K59 [UDim.new]
      226 LOADN                            R35 0
      227 GETUPVAL                         R36 1
      228 GETTABLEKS                       R36 R36 K14 ["MAIN_VIEW_PADDING"]
      230 CALL                             R34 2 1
      231 SETTABLEKS                       R34 R33 K54 ["PaddingLeft"]
      233 GETIMPORT                        R34 K59 [UDim.new]
      235 LOADN                            R35 0
      236 GETUPVAL                         R36 1
      237 GETTABLEKS                       R36 R36 K14 ["MAIN_VIEW_PADDING"]
      239 CALL                             R34 2 1
      240 SETTABLEKS                       R34 R33 K55 ["PaddingRight"]
      242 GETIMPORT                        R34 K59 [UDim.new]
      244 LOADN                            R35 0
      245 GETUPVAL                         R36 1
      246 GETTABLEKS                       R36 R36 K14 ["MAIN_VIEW_PADDING"]
      248 CALL                             R34 2 1
      249 SETTABLEKS                       R34 R33 K56 ["PaddingTop"]
      251 CALL                             R31 2 1
      252 SETTABLEKS                       R31 R30 K50 ["UIPadding"]
      254 GETUPVAL                         R31 6
      255 GETTABLEKS                       R31 R31 K42 ["createElement"]
      257 GETUPVAL                         R32 8
      258 DUPTABLE                         R33 K62 [{"containerWidth", "showTags", "onBackToHome", "headerHeight"}]
      259 SETTABLEKS                       R11 R33 K35 ["containerWidth"]
      261 OR                               R34 R17 R14
      262 SETTABLEKS                       R34 R33 K60 ["showTags"]
      264 GETTABLEKS                       R34 R1 K61 ["onBackToHome"]
      266 SETTABLEKS                       R34 R33 K61 ["onBackToHome"]
      268 SETTABLEKS                       R15 R33 K36 ["headerHeight"]
      270 CALL                             R31 2 1
      271 SETTABLEKS                       R31 R30 K51 ["Header"]
      273 CALL                             R27 3 1
      274 SETTABLEKS                       R27 R26 K43 ["ScrollingFrame"]
      276 JUMPIFNOT                        R5 ; [+48]
      277 GETUPVAL                         R27 6
      278 GETTABLEKS                       R27 R27 K42 ["createElement"]
      280 GETUPVAL                         R28 9
      281 DUPTABLE                         R29 K67 [{"CategoryName", "IncludeUnverifiedCreators", "NoResultsPosition", "Position", "Size", "TryOpenAssetConfig"}]
      282 SETTABLEKS                       R4 R29 K63 ["CategoryName"]
      284 SETTABLEKS                       R10 R29 K64 ["IncludeUnverifiedCreators"]
      286 GETIMPORT                        R30 K4 [UDim2.new]
      288 LOADN                            R31 0
      289 LOADN                            R32 0
      290 LOADN                            R33 0
      291 GETUPVAL                         R35 2
      292 CALL                             R35 0 1
      293 JUMPIFNOT                        R35 ; [+4]
      294 LOADN                            R36 16
      295 ADD                              R35 R36 R15
      296 ADD                              R34 R35 R16
      297 JUMP                             ; [+2]
      298 LOADN                            R35 16
      299 ADD                              R34 R35 R15
      300 CALL                             R30 4 1
      301 SETTABLEKS                       R30 R29 K65 ["NoResultsPosition"]
      303 GETIMPORT                        R30 K4 [UDim2.new]
      305 LOADN                            R31 0
      306 LOADN                            R32 0
      307 LOADN                            R33 0
      308 ADD                              R34 R15 R16
      309 CALL                             R30 4 1
      310 SETTABLEKS                       R30 R29 K1 ["Position"]
      312 GETIMPORT                        R30 K4 [UDim2.new]
      314 LOADN                            R31 1
      315 LOADN                            R32 0
      316 LOADN                            R33 1
      317 SUB                              R34 R15 R16
      318 CALL                             R30 4 1
      319 SETTABLEKS                       R30 R29 K5 ["Size"]
      321 SETTABLEKS                       R21 R29 K66 ["TryOpenAssetConfig"]
      323 CALL                             R27 2 1
      324 JUMP                             ; [+61]
      325 GETUPVAL                         R27 6
      326 GETTABLEKS                       R27 R27 K42 ["createElement"]
      328 GETUPVAL                         R28 10
      329 DUPTABLE                         R29 K71 [{"NoResultsPosition", "OnSearchByCreator", "ParentAbsoluteSize", "ParentAbsolutePosition", "Position", "Size", "TryOpenAssetConfig"}]
      330 GETIMPORT                        R30 K4 [UDim2.new]
      332 LOADN                            R31 0
      333 LOADN                            R32 0
      334 LOADN                            R33 0
      335 GETUPVAL                         R35 2
      336 CALL                             R35 0 1
      337 JUMPIFNOT                        R35 ; [+4]
      338 LOADN                            R36 16
      339 ADD                              R35 R36 R15
      340 ADD                              R34 R35 R16
      341 JUMP                             ; [+2]
      342 LOADN                            R35 16
      343 ADD                              R34 R35 R15
      344 CALL                             R30 4 1
      345 SETTABLEKS                       R30 R29 K65 ["NoResultsPosition"]
      347 GETUPVAL                         R31 11
      348 CALL                             R31 0 1
      349 JUMPIFNOT                        R31 ; [+3]
      350 GETTABLEKS                       R30 R1 K68 ["OnSearchByCreator"]
      352 JUMP                             ; [+1]
      353 LOADNIL                          R30
      354 SETTABLEKS                       R30 R29 K68 ["OnSearchByCreator"]
      356 GETTABLEKS                       R30 R1 K72 ["AbsoluteSize"]
      358 SETTABLEKS                       R30 R29 K69 ["ParentAbsoluteSize"]
      360 GETTABLEKS                       R30 R1 K73 ["AbsolutePosition"]
      362 SETTABLEKS                       R30 R29 K70 ["ParentAbsolutePosition"]
      364 GETIMPORT                        R30 K4 [UDim2.new]
      366 LOADN                            R31 0
      367 LOADN                            R32 0
      368 LOADN                            R33 0
      369 ADD                              R34 R15 R16
      370 CALL                             R30 4 1
      371 SETTABLEKS                       R30 R29 K1 ["Position"]
      373 GETIMPORT                        R30 K4 [UDim2.new]
      375 LOADN                            R31 1
      376 LOADN                            R32 0
      377 LOADN                            R33 1
      378 MINUS                            R35 R15
      379 SUB                              R34 R35 R16
      380 CALL                             R30 4 1
      381 SETTABLEKS                       R30 R29 K5 ["Size"]
      383 SETTABLEKS                       R21 R29 K66 ["TryOpenAssetConfig"]
      385 CALL                             R27 2 1
      386 SETTABLEKS                       R27 R26 K44 ["AssetGridContainerNew"]
      388 MOVE                             R27 R6
      389 JUMPIFNOT                        R27 ; [+36]
      390 NOT                              R27 R5
      391 JUMPIFNOT                        R27 ; [+34]
      392 GETUPVAL                         R27 6
      393 GETTABLEKS                       R27 R27 K42 ["createElement"]
      395 GETUPVAL                         R28 12
      396 DUPTABLE                         R29 K76 [{"AnchorPoint", "Position", "Size", "ZIndex"}]
      397 GETIMPORT                        R30 K78 [Vector2.new]
      399 LOADK                            R31 K79 [0.5]
      400 LOADN                            R32 1
      401 CALL                             R30 2 1
      402 SETTABLEKS                       R30 R29 K74 ["AnchorPoint"]
      404 GETIMPORT                        R30 K4 [UDim2.new]
      406 LOADK                            R31 K79 [0.5]
      407 LOADN                            R32 0
      408 LOADN                            R33 1
      409 LOADN                            R34 240
      410 CALL                             R30 4 1
      411 SETTABLEKS                       R30 R29 K1 ["Position"]
      413 GETIMPORT                        R30 K4 [UDim2.new]
      415 LOADN                            R31 0
      416 LOADN                            R32 92
      417 LOADN                            R33 0
      418 LOADN                            R34 24
      419 CALL                             R30 4 1
      420 SETTABLEKS                       R30 R29 K5 ["Size"]
      422 LOADN                            R30 3
      423 SETTABLEKS                       R30 R29 K75 ["ZIndex"]
      425 CALL                             R27 2 1
      426 SETTABLEKS                       R27 R26 K45 ["LoadingIndicator"]
      428 LOADB                            R27 0
      429 SETTABLEKS                       R27 R26 K46 ["NetworkError"]
      431 CALL                             R23 3 -1
      432 RETURN                           R23 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["pageInfo"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 DUPTABLE                         R4 K14 [{"isLoading", "networkErrors", "audioSearchInfo", "additionalAudioSearchInfo", "categoryName", "searchTerm", "creator", "creatorTargetIds", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent", "correctionState"}]
       16 GETTABLEKS                       R6 R2 K2 ["isLoading"]
       18 ORK                              R5 R6 K15 [False]
       19 SETTABLEKS                       R5 R4 K2 ["isLoading"]
       21 GETTABLEKS                       R5 R0 K3 ["networkErrors"]
       23 JUMPIF                           R5 ; [+2]
       24 NEWTABLE                         R5 0 0
       26 SETTABLEKS                       R5 R4 K3 ["networkErrors"]
       28 GETTABLEKS                       R5 R3 K4 ["audioSearchInfo"]
       30 SETTABLEKS                       R5 R4 K4 ["audioSearchInfo"]
       32 GETTABLEKS                       R5 R3 K5 ["additionalAudioSearchInfo"]
       34 SETTABLEKS                       R5 R4 K5 ["additionalAudioSearchInfo"]
       36 GETTABLEKS                       R5 R3 K6 ["categoryName"]
       38 JUMPIF                           R5 ; [+5]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K16 ["DEFAULT"]
       42 GETTABLEKS                       R5 R5 K17 ["name"]
       44 SETTABLEKS                       R5 R4 K6 ["categoryName"]
       46 GETTABLEKS                       R6 R3 K7 ["searchTerm"]
       48 ORK                              R5 R6 K18 [""]
       49 SETTABLEKS                       R5 R4 K7 ["searchTerm"]
       51 GETTABLEKS                       R5 R3 K8 ["creator"]
       53 SETTABLEKS                       R5 R4 K8 ["creator"]
       55 GETUPVAL                         R6 1
       56 CALL                             R6 0 1
       57 JUMPIFNOT                        R6 ; [+13]
       58 GETTABLEKS                       R6 R3 K9 ["creatorTargetIds"]
       60 JUMPIFNOT                        R6 ; [+10]
       61 GETTABLEKS                       R6 R3 K9 ["creatorTargetIds"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K19 ["None"]
       66 JUMPIFEQ                         R6 R7 ; [+4]
       68 GETTABLEKS                       R5 R3 K9 ["creatorTargetIds"]
       70 JUMP                             ; [+2]
       71 NEWTABLE                         R5 0 0
       73 SETTABLEKS                       R5 R4 K9 ["creatorTargetIds"]
       75 GETUPVAL                         R6 1
       76 CALL                             R6 0 1
       77 JUMPIFNOT                        R6 ; [+13]
       78 GETTABLEKS                       R6 R3 K10 ["groupTargetIds"]
       80 JUMPIFNOT                        R6 ; [+10]
       81 GETTABLEKS                       R6 R3 K10 ["groupTargetIds"]
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K19 ["None"]
       86 JUMPIFEQ                         R6 R7 ; [+4]
       88 GETTABLEKS                       R5 R3 K10 ["groupTargetIds"]
       90 JUMP                             ; [+2]
       91 NEWTABLE                         R5 0 0
       93 SETTABLEKS                       R5 R4 K10 ["groupTargetIds"]
       95 GETTABLEKS                       R5 R3 K11 ["includeUnverifiedCreators"]
       97 SETTABLEKS                       R5 R4 K11 ["includeUnverifiedCreators"]
       99 GETTABLEKS                       R5 R3 K12 ["uiSortIntent"]
      101 SETTABLEKS                       R5 R4 K12 ["uiSortIntent"]
      103 GETTABLEKS                       R5 R3 K13 ["correctionState"]
      105 SETTABLEKS                       R5 R4 K13 ["correctionState"]
      107 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"nextPage"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["nextPage"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R2 K12 ["Cryo"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K9 [require]
       36 GETTABLEKS                       R7 R2 K13 ["Framework"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R8 R1 K14 ["Src"]
       43 GETTABLEKS                       R8 R8 K15 ["Util"]
       45 GETTABLEKS                       R8 R8 K16 ["Constants"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K9 [require]
       50 GETTABLEKS                       R9 R1 K14 ["Src"]
       52 GETTABLEKS                       R9 R9 K15 ["Util"]
       54 GETTABLEKS                       R9 R9 K17 ["Layouter"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K9 [require]
       59 GETTABLEKS                       R10 R1 K14 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Types"]
       63 GETTABLEKS                       R10 R10 K19 ["Category"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K9 [require]
       68 GETTABLEKS                       R11 R2 K13 ["Framework"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R10 R10 K20 ["ContextServices"]
       73 GETTABLEKS                       R11 R10 K21 ["withContext"]
       75 GETIMPORT                        R12 K9 [require]
       77 GETTABLEKS                       R13 R1 K14 ["Src"]
       79 GETTABLEKS                       R13 R13 K20 ["ContextServices"]
       81 GETTABLEKS                       R13 R13 K22 ["Settings"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K9 [require]
       86 GETTABLEKS                       R14 R1 K14 ["Src"]
       88 GETTABLEKS                       R14 R14 K20 ["ContextServices"]
       90 GETTABLEKS                       R14 R14 K23 ["NetworkContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K9 [require]
       95 GETTABLEKS                       R15 R1 K14 ["Src"]
       97 GETTABLEKS                       R15 R15 K24 ["Components"]
       99 GETTABLEKS                       R15 R15 K25 ["AssetGridContainer"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K9 [require]
      104 GETTABLEKS                       R16 R1 K14 ["Src"]
      106 GETTABLEKS                       R16 R16 K24 ["Components"]
      108 GETTABLEKS                       R16 R16 K26 ["InfoBanner"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETTABLEKS                       R17 R1 K14 ["Src"]
      115 GETTABLEKS                       R17 R17 K24 ["Components"]
      117 GETTABLEKS                       R17 R17 K27 ["NoResultsDetail"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K9 [require]
      122 GETTABLEKS                       R18 R2 K28 ["Dash"]
      124 CALL                             R17 1 1
      125 GETTABLEKS                       R18 R6 K29 ["UI"]
      127 GETTABLEKS                       R18 R18 K30 ["LoadingIndicator"]
      129 GETTABLEKS                       R19 R6 K29 ["UI"]
      131 GETTABLEKS                       R19 R19 K31 ["Pane"]
      133 GETTABLEKS                       R20 R6 K32 ["Wrappers"]
      135 GETTABLEKS                       R20 R20 K33 ["withAbsoluteSizeAndPosition"]
      137 GETIMPORT                        R21 K9 [require]
      139 GETTABLEKS                       R22 R1 K14 ["Src"]
      141 GETTABLEKS                       R22 R22 K24 ["Components"]
      143 GETTABLEKS                       R22 R22 K34 ["MainView"]
      145 GETTABLEKS                       R22 R22 K35 ["MainViewHeader"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K9 [require]
      150 GETTABLEKS                       R23 R1 K14 ["Src"]
      152 GETTABLEKS                       R23 R23 K24 ["Components"]
      154 GETTABLEKS                       R23 R23 K36 ["Toast"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K9 [require]
      159 GETTABLEKS                       R24 R1 K14 ["Src"]
      161 GETTABLEKS                       R24 R24 K37 ["Networking"]
      163 GETTABLEKS                       R24 R24 K38 ["Requests"]
      165 GETTABLEKS                       R24 R24 K39 ["NextPageRequest"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K9 [require]
      170 GETTABLEKS                       R25 R1 K14 ["Src"]
      172 GETTABLEKS                       R25 R25 K18 ["Types"]
      174 GETTABLEKS                       R25 R25 K40 ["AutocorrectTypes"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K9 [require]
      179 GETTABLEKS                       R26 R1 K14 ["Src"]
      181 GETTABLEKS                       R26 R26 K24 ["Components"]
      183 GETTABLEKS                       R26 R26 K41 ["Font"]
      185 GETTABLEKS                       R26 R26 K42 ["FontView"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K9 [require]
      190 GETTABLEKS                       R27 R1 K14 ["Src"]
      192 GETTABLEKS                       R27 R27 K15 ["Util"]
      194 GETTABLEKS                       R27 R27 K43 ["SharedFlags"]
      196 GETTABLEKS                       R27 R27 K44 ["getFFlagToolboxEnableSearchOptionsRefactor"]
      198 CALL                             R26 1 1
      199 GETIMPORT                        R27 K9 [require]
      201 GETTABLEKS                       R28 R1 K14 ["Src"]
      203 GETTABLEKS                       R28 R28 K15 ["Util"]
      205 GETTABLEKS                       R28 R28 K43 ["SharedFlags"]
      207 GETTABLEKS                       R28 R28 K45 ["getFFlagToolboxFixInventoryGridSearch"]
      209 CALL                             R27 1 1
      210 GETTABLEKS                       R28 R3 K46 ["PureComponent"]
      212 LOADK                            R30 K34 ["MainView"]
      213 NAMECALL                         R28 R28 K47 ["extend"]
      215 CALL                             R28 2 1
      216 DUPCLOSURE                       R29 K48 [PROTO_1]
      217 CAPTURE                          VAL R3
      218 SETTABLEKS                       R29 R28 K49 ["init"]
      220 DUPCLOSURE                       R29 K50 [PROTO_2]
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R26
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R25
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R27
      233 CAPTURE                          VAL R18
      234 SETTABLEKS                       R29 R28 K51 ["render"]
      236 MOVE                             R29 R11
      237 DUPTABLE                         R30 K54 [{"Settings", "Localization", "Network"}]
      238 SETTABLEKS                       R12 R30 K22 ["Settings"]
      240 GETTABLEKS                       R31 R10 K52 ["Localization"]
      242 SETTABLEKS                       R31 R30 K52 ["Localization"]
      244 SETTABLEKS                       R13 R30 K53 ["Network"]
      246 CALL                             R29 1 1
      247 MOVE                             R30 R28
      248 CALL                             R29 1 1
      249 MOVE                             R28 R29
      250 DUPCLOSURE                       R29 K55 [PROTO_3]
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R26
      253 CAPTURE                          VAL R5
      254 DUPCLOSURE                       R30 K56 [PROTO_5]
      255 CAPTURE                          VAL R23
      256 GETTABLEKS                       R31 R4 K57 ["connect"]
      258 MOVE                             R32 R29
      259 MOVE                             R33 R30
      260 CALL                             R31 2 1
      261 MOVE                             R32 R28
      262 CALL                             R31 1 1
      263 MOVE                             R28 R31
      264 MOVE                             R31 R20
      265 MOVE                             R32 R28
      266 CALL                             R31 1 -1
      267 RETURN                           R31 -1
