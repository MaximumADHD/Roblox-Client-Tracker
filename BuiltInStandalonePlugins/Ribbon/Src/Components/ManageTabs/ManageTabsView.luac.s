PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Identifier"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 GETTABLE                         R2 R3 R4
        7 DUPTABLE                         R3 K4 [{"Id", "Text", "Checked"}]
        8 SETTABLEKS                       R1 R3 K1 ["Id"]
       10 GETTABLEKS                       R4 R2 K5 ["Name"]
       12 SETTABLEKS                       R4 R3 K2 ["Text"]
       14 GETTABLEKS                       R4 R0 K6 ["Visible"]
       16 SETTABLEKS                       R4 R3 K3 ["Checked"]
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Layout"]
        4 GETTABLEKS                       R1 R1 K1 ["TabLayout"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ToggleTabVisibility"]
        3 GETTABLEKS                       R2 R0 K1 ["Item"]
        5 GETTABLEKS                       R2 R2 K2 ["Id"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["MoveTab"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 LOADK                            R2 K2 ["Left"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["MoveTab"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 LOADK                            R2 K2 ["Right"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["DeleteTab"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R1 K2 ["Id"]
        9 CALL                             R3 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["Definition"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["use"]
        8 CALL                             R3 0 1
        9 NAMECALL                         R3 R3 K2 ["get"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K3 ["wrap"]
       19 NAMECALL                         R6 R3 K4 ["GetUri"]
       21 CALL                             R6 1 -1
       22 CALL                             R5 -1 1
       23 GETUPVAL                         R6 5
       24 LOADNIL                          R7
       25 CALL                             R6 1 2
       26 GETTABLEKS                       R8 R2 K5 ["TabControls"]
       28 GETUPVAL                         R9 6
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R8
       33 CAPTURE                          UPVAL U8
       34 NEWTABLE                         R11 0 1
       36 MOVE                             R12 R2
       37 SETLIST                          R11 R12 1 [1]
       39 CALL                             R9 2 1
       40 GETUPVAL                         R10 9
       41 MOVE                             R11 R9
       42 NEWCLOSURE                       R12 P1
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          VAL R6
       45 CALL                             R10 2 1
       46 GETUPVAL                         R11 10
       47 NEWCLOSURE                       R12 P2
       48 CAPTURE                          VAL R1
       49 NEWTABLE                         R13 0 1
       51 GETTABLEKS                       R14 R1 K6 ["ToggleTabVisibility"]
       53 SETLIST                          R13 R14 1 [1]
       55 CALL                             R11 2 1
       56 NEWCLOSURE                       R12 P3
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R1
       59 NEWCLOSURE                       R13 P4
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R1
       62 NEWCLOSURE                       R14 P5
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R0
       65 GETUPVAL                         R15 11
       66 CALL                             R15 0 1
       67 GETUPVAL                         R16 4
       68 GETTABLEKS                       R16 R16 K7 ["fromWidget"]
       70 LOADK                            R17 K8 ["Ribbon"]
       71 LOADK                            R18 K9 ["ManageTabs/More"]
       72 CALL                             R16 2 1
       73 GETUPVAL                         R17 12
       74 MOVE                             R18 R16
       75 NEWTABLE                         R19 0 2
       77 DUPTABLE                         R20 K13 [{["Id"] = "ReloadTabs", ["Action"]}]
       78 GETUPVAL                         R21 4
       79 GETTABLEKS                       R21 R21 K14 ["join"]
       81 MOVE                             R22 R5
       82 DUPTABLE                         R23 K18 [{["Category"] = "Actions", ["ItemId"] = "ReloadTabs"}]
       83 CALL                             R21 2 1
       84 SETTABLEKS                       R21 R20 K12 ["Action"]
       86 DUPTABLE                         R21 K20 [{["Id"] = "ResetTabs", ["Action"]}]
       87 GETUPVAL                         R22 4
       88 GETTABLEKS                       R22 R22 K14 ["join"]
       90 MOVE                             R23 R5
       91 DUPTABLE                         R24 K21 [{["Category"] = "Actions", ["ItemId"] = "ResetTabs"}]
       92 CALL                             R22 2 1
       93 SETTABLEKS                       R22 R21 K12 ["Action"]
       95 SETLIST                          R19 R20 2 [1]
       97 CALL                             R17 2 1
       98 GETUPVAL                         R18 0
       99 GETUPVAL                         R19 13
      100 CALL                             R18 1 1
      101 GETUPVAL                         R19 4
      102 GETTABLEKS                       R19 R19 K7 ["fromWidget"]
      104 LOADK                            R20 K8 ["Ribbon"]
      105 LOADK                            R21 K22 ["ManageTabs/Align"]
      106 CALL                             R19 2 1
      107 GETUPVAL                         R20 12
      108 MOVE                             R21 R19
      109 NEWTABLE                         R22 0 2
      111 DUPTABLE                         R23 K25 [{["Id"] = "Left", ["Text"]}]
      112 LOADK                            R26 K26 ["Plugin"]
      113 LOADK                            R27 K27 ["TabLocation_Left"]
      114 NAMECALL                         R24 R4 K28 ["getText"]
      116 CALL                             R24 3 1
      117 SETTABLEKS                       R24 R23 K24 ["Text"]
      119 DUPTABLE                         R24 K30 [{["Id"] = "Center", ["Text"]}]
      120 LOADK                            R27 K26 ["Plugin"]
      121 LOADK                            R28 K31 ["TabLocation_Center"]
      122 NAMECALL                         R25 R4 K28 ["getText"]
      124 CALL                             R25 3 1
      125 SETTABLEKS                       R25 R24 K24 ["Text"]
      127 SETLIST                          R22 R23 2 [1]
      129 GETTABLEKS                       R23 R18 K32 ["current"]
      131 GETTABLEKS                       R24 R18 K33 ["setTabLocation"]
      133 CALL                             R20 4 2
      134 GETTABLEKS                       R23 R18 K32 ["current"]
      136 JUMPIFNOTEQKS                    R23 K23 ["Left"] ; [+7]
      138 LOADK                            R24 K26 ["Plugin"]
      139 LOADK                            R25 K27 ["TabLocation_Left"]
      140 NAMECALL                         R22 R4 K28 ["getText"]
      142 CALL                             R22 3 1
      143 JUMP                             ; [+5]
      144 LOADK                            R24 K26 ["Plugin"]
      145 LOADK                            R25 K31 ["TabLocation_Center"]
      146 NAMECALL                         R22 R4 K28 ["getText"]
      148 CALL                             R22 3 1
      149 JUMPIFNOT                        R10 ; [+5]
      150 NEWTABLE                         R23 1 0
      152 LOADB                            R24 1
      153 SETTABLE                         R24 R23 R10
      154 JUMP                             ; [+1]
      155 LOADNIL                          R23
      156 GETUPVAL                         R24 10
      157 NEWCLOSURE                       R25 P6
      158 CAPTURE                          VAL R7
      159 CAPTURE                          UPVAL U8
      160 NEWTABLE                         R26 0 0
      162 CALL                             R24 2 1
      163 GETUPVAL                         R25 14
      164 LOADK                            R26 K34 ["Frame"]
      165 NEWTABLE                         R27 2 0
      167 MOVE                             R28 R15
      168 CALL                             R28 0 1
      169 SETTABLEKS                       R28 R27 K35 ["LayoutOrder"]
      171 GETUPVAL                         R28 15
      172 GETTABLEKS                       R28 R28 K36 ["Tag"]
      174 LOADK                            R29 K37 ["X-Fill Role-Surface100 data-testid=ManageTabs-Wrapper Role-ManageTabsWrapper X-Middle X-Center"]
      175 SETTABLE                         R29 R27 R28
      176 DUPTABLE                         R28 K41 [{"Buttons", "Tree", "Alignment"}]
      177 GETUPVAL                         R29 14
      178 LOADK                            R30 K34 ["Frame"]
      179 NEWTABLE                         R31 2 0
      181 MOVE                             R32 R15
      182 CALL                             R32 0 1
      183 SETTABLEKS                       R32 R31 K35 ["LayoutOrder"]
      185 GETUPVAL                         R32 15
      186 GETTABLEKS                       R32 R32 K36 ["Tag"]
      188 LOADK                            R33 K42 ["Role-Surface X-Right X-FitY"]
      189 SETTABLE                         R33 R31 R32
      190 DUPTABLE                         R32 K49 [{"MoveUp", "MoveDown", "Separator", "Delete", "Separator2", "More"}]
      191 GETUPVAL                         R33 14
      192 GETUPVAL                         R34 16
      193 DUPTABLE                         R35 K62 [{["Uri"], ["Disabled"], ["Icon"] = "ArrowUp", ["IconOnly"] = True, ["LayoutOrder"], ["OnSelect"], ["Tooltip"], ["Size"] = "Small", ["Style"] = "Outline"}]
      194 GETUPVAL                         R36 4
      195 GETTABLEKS                       R36 R36 K7 ["fromWidget"]
      197 LOADK                            R37 K8 ["Ribbon"]
      198 LOADK                            R38 K63 ["ManageTabs/MoveUp"]
      199 CALL                             R36 2 1
      200 SETTABLEKS                       R36 R35 K50 ["Uri"]
      202 JUMPIFEQKNIL                     R10 ; [+2]
      204 LOADB                            R36 0 +1
      205 LOADB                            R36 1
      206 SETTABLEKS                       R36 R35 K51 ["Disabled"]
      208 MOVE                             R36 R15
      209 CALL                             R36 0 1
      210 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      212 SETTABLEKS                       R12 R35 K56 ["OnSelect"]
      214 LOADK                            R38 K26 ["Plugin"]
      215 LOADK                            R39 K43 ["MoveUp"]
      216 NAMECALL                         R36 R4 K28 ["getText"]
      218 CALL                             R36 3 1
      219 SETTABLEKS                       R36 R35 K57 ["Tooltip"]
      221 CALL                             R33 2 1
      222 SETTABLEKS                       R33 R32 K43 ["MoveUp"]
      224 GETUPVAL                         R33 14
      225 GETUPVAL                         R34 16
      226 DUPTABLE                         R35 K65 [{["Uri"], ["Disabled"], ["Icon"] = "ArrowDown", ["IconOnly"] = True, ["LayoutOrder"], ["OnSelect"], ["Tooltip"], ["Size"] = "Small"}]
      227 GETUPVAL                         R36 4
      228 GETTABLEKS                       R36 R36 K7 ["fromWidget"]
      230 LOADK                            R37 K8 ["Ribbon"]
      231 LOADK                            R38 K66 ["ManageTabs/MoveDown"]
      232 CALL                             R36 2 1
      233 SETTABLEKS                       R36 R35 K50 ["Uri"]
      235 JUMPIFEQKNIL                     R10 ; [+2]
      237 LOADB                            R36 0 +1
      238 LOADB                            R36 1
      239 SETTABLEKS                       R36 R35 K51 ["Disabled"]
      241 MOVE                             R36 R15
      242 CALL                             R36 0 1
      243 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      245 SETTABLEKS                       R13 R35 K56 ["OnSelect"]
      247 LOADK                            R38 K26 ["Plugin"]
      248 LOADK                            R39 K44 ["MoveDown"]
      249 NAMECALL                         R36 R4 K28 ["getText"]
      251 CALL                             R36 3 1
      252 SETTABLEKS                       R36 R35 K57 ["Tooltip"]
      254 CALL                             R33 2 1
      255 SETTABLEKS                       R33 R32 K44 ["MoveDown"]
      257 GETUPVAL                         R33 14
      258 LOADK                            R34 K34 ["Frame"]
      259 NEWTABLE                         R35 2 0
      261 MOVE                             R36 R15
      262 CALL                             R36 0 1
      263 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      265 GETUPVAL                         R36 15
      266 GETTABLEKS                       R36 R36 K36 ["Tag"]
      268 LOADK                            R37 K67 ["X-Fit Role-Surface"]
      269 SETTABLE                         R37 R35 R36
      270 DUPTABLE                         R36 K69 [{"Divider"}]
      271 GETUPVAL                         R37 14
      272 LOADK                            R38 K34 ["Frame"]
      273 CALL                             R37 1 1
      274 SETTABLEKS                       R37 R36 K68 ["Divider"]
      276 CALL                             R33 3 1
      277 SETTABLEKS                       R33 R32 K45 ["Separator"]
      279 GETUPVAL                         R33 14
      280 GETUPVAL                         R34 16
      281 DUPTABLE                         R35 K70 [{["Uri"], ["Disabled"], ["Icon"] = "Delete", ["IconOnly"] = True, ["LayoutOrder"], ["OnSelect"], ["Tooltip"], ["Size"] = "Small"}]
      282 GETUPVAL                         R36 4
      283 GETTABLEKS                       R36 R36 K7 ["fromWidget"]
      285 LOADK                            R37 K8 ["Ribbon"]
      286 LOADK                            R38 K71 ["ManageTabs/Delete"]
      287 CALL                             R36 2 1
      288 SETTABLEKS                       R36 R35 K50 ["Uri"]
      290 LOADB                            R36 1
      291 JUMPIFEQKNIL                     R10 ; [+9]
      293 GETTABLEKS                       R37 R10 K10 ["Id"]
      295 GETTABLEKS                       R37 R37 K72 ["Type"]
      297 JUMPIFEQKS                       R37 K73 ["BuiltIn"] ; [+2]
      299 LOADB                            R36 0 +1
      300 LOADB                            R36 1
      301 SETTABLEKS                       R36 R35 K51 ["Disabled"]
      303 MOVE                             R36 R15
      304 CALL                             R36 0 1
      305 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      307 SETTABLEKS                       R14 R35 K56 ["OnSelect"]
      309 LOADK                            R38 K26 ["Plugin"]
      310 LOADK                            R39 K74 ["DeleteTab"]
      311 NAMECALL                         R36 R4 K28 ["getText"]
      313 CALL                             R36 3 1
      314 SETTABLEKS                       R36 R35 K57 ["Tooltip"]
      316 CALL                             R33 2 1
      317 SETTABLEKS                       R33 R32 K46 ["Delete"]
      319 GETUPVAL                         R33 14
      320 LOADK                            R34 K34 ["Frame"]
      321 NEWTABLE                         R35 2 0
      323 MOVE                             R36 R15
      324 CALL                             R36 0 1
      325 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      327 GETUPVAL                         R36 15
      328 GETTABLEKS                       R36 R36 K36 ["Tag"]
      330 LOADK                            R37 K67 ["X-Fit Role-Surface"]
      331 SETTABLE                         R37 R35 R36
      332 DUPTABLE                         R36 K69 [{"Divider"}]
      333 GETUPVAL                         R37 14
      334 LOADK                            R38 K34 ["Frame"]
      335 CALL                             R37 1 1
      336 SETTABLEKS                       R37 R36 K68 ["Divider"]
      338 CALL                             R33 3 1
      339 SETTABLEKS                       R33 R32 K47 ["Separator2"]
      341 GETUPVAL                         R33 14
      342 GETUPVAL                         R34 16
      343 DUPTABLE                         R35 K75 [{["Uri"], ["Icon"] = "More", ["IconOnly"] = True, ["LayoutOrder"], ["OnSelect"], ["Size"] = "Small"}]
      344 SETTABLEKS                       R16 R35 K50 ["Uri"]
      346 MOVE                             R36 R15
      347 CALL                             R36 0 1
      348 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      350 SETTABLEKS                       R17 R35 K56 ["OnSelect"]
      352 CALL                             R33 2 1
      353 SETTABLEKS                       R33 R32 K48 ["More"]
      355 CALL                             R29 3 1
      356 SETTABLEKS                       R29 R28 K38 ["Buttons"]
      358 GETUPVAL                         R29 14
      359 GETUPVAL                         R30 17
      360 DUPTABLE                         R31 K86 [{["Expansion"], ["Selection"], ["OnSelectionChange"], ["LayoutOrder"], ["RootItems"], ["RowComponent"], ["RowHeight"] = 24, ["RowProps"], ["Size"], ["Variant"] = "modern"}]
      361 NEWTABLE                         R32 0 0
      363 SETTABLEKS                       R32 R31 K76 ["Expansion"]
      365 SETTABLEKS                       R23 R31 K77 ["Selection"]
      367 SETTABLEKS                       R24 R31 K78 ["OnSelectionChange"]
      369 MOVE                             R32 R15
      370 CALL                             R32 0 1
      371 SETTABLEKS                       R32 R31 K35 ["LayoutOrder"]
      373 SETTABLEKS                       R9 R31 K79 ["RootItems"]
      375 GETUPVAL                         R32 18
      376 SETTABLEKS                       R32 R31 K80 ["RowComponent"]
      378 DUPTABLE                         R32 K88 [{"OnCheck"}]
      379 SETTABLEKS                       R11 R32 K87 ["OnCheck"]
      381 SETTABLEKS                       R32 R31 K83 ["RowProps"]
      383 GETUPVAL                         R32 19
      384 SETTABLEKS                       R32 R31 K58 ["Size"]
      386 CALL                             R29 2 1
      387 SETTABLEKS                       R29 R28 K39 ["Tree"]
      389 GETUPVAL                         R29 14
      390 LOADK                            R30 K34 ["Frame"]
      391 NEWTABLE                         R31 2 0
      393 MOVE                             R32 R15
      394 CALL                             R32 0 1
      395 SETTABLEKS                       R32 R31 K35 ["LayoutOrder"]
      397 GETUPVAL                         R32 15
      398 GETTABLEKS                       R32 R32 K36 ["Tag"]
      400 LOADK                            R33 K89 ["Role-TabLocation Role-Surface X-Middle X-FitY X-Row"]
      401 SETTABLE                         R33 R31 R32
      402 DUPTABLE                         R32 K93 [{"Label", "Spacer", "Input"}]
      403 GETUPVAL                         R33 14
      404 LOADK                            R34 K94 ["TextLabel"]
      405 NEWTABLE                         R35 2 0
      407 LOADK                            R38 K26 ["Plugin"]
      408 LOADK                            R39 K95 ["TabLocation"]
      409 NAMECALL                         R36 R4 K28 ["getText"]
      411 CALL                             R36 3 1
      412 SETTABLEKS                       R36 R35 K24 ["Text"]
      414 GETUPVAL                         R36 15
      415 GETTABLEKS                       R36 R36 K36 ["Tag"]
      417 LOADK                            R37 K96 ["Role-Surface Role-Text Text-Label X-Fit"]
      418 SETTABLE                         R37 R35 R36
      419 CALL                             R33 2 1
      420 SETTABLEKS                       R33 R32 K90 ["Label"]
      422 GETUPVAL                         R33 15
      423 GETTABLEKS                       R33 R33 K97 ["createElement"]
      425 LOADK                            R34 K34 ["Frame"]
      426 NEWTABLE                         R35 2 0
      428 MOVE                             R36 R15
      429 CALL                             R36 0 1
      430 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      432 GETUPVAL                         R36 15
      433 GETTABLEKS                       R36 R36 K36 ["Tag"]
      435 LOADK                            R37 K98 ["Role-Surface X-FitY"]
      436 SETTABLE                         R37 R35 R36
      437 CALL                             R33 2 1
      438 SETTABLEKS                       R33 R32 K91 ["Spacer"]
      440 GETUPVAL                         R33 14
      441 GETUPVAL                         R34 20
      442 NEWTABLE                         R35 8 0
      444 MOVE                             R36 R15
      445 CALL                             R36 0 1
      446 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      448 SETTABLEKS                       R19 R35 K50 ["Uri"]
      450 SETTABLEKS                       R21 R35 K99 ["MenuData"]
      452 SETTABLEKS                       R20 R35 K56 ["OnSelect"]
      454 SETTABLEKS                       R22 R35 K24 ["Text"]
      456 GETUPVAL                         R36 15
      457 GETTABLEKS                       R36 R36 K36 ["Tag"]
      459 LOADK                            R37 K100 ["Size-Large"]
      460 SETTABLE                         R37 R35 R36
      461 CALL                             R33 2 1
      462 SETTABLEKS                       R33 R32 K92 ["Input"]
      464 CALL                             R29 3 1
      465 SETTABLEKS                       R29 R28 K40 ["Alignment"]
      467 CALL                             R25 3 -1
      468 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETTABLEKS                       R3 R1 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R1 K10 ["useContext"]
       20 GETTABLEKS                       R5 R1 K11 ["useMemo"]
       22 GETTABLEKS                       R6 R1 K12 ["useState"]
       24 GETIMPORT                        R7 K5 [require]
       26 GETTABLEKS                       R8 R0 K13 ["Src"]
       28 GETTABLEKS                       R8 R8 K14 ["Contexts"]
       30 GETTABLEKS                       R8 R8 K15 ["RibbonDefinition"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R9 K16 ["Components"]
       39 GETTABLEKS                       R9 R9 K17 ["RibbonButton"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Src"]
       46 GETTABLEKS                       R10 R10 K16 ["Components"]
       48 GETTABLEKS                       R10 R10 K18 ["RibbonSelectInput"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K13 ["Src"]
       55 GETTABLEKS                       R11 R11 K16 ["Components"]
       57 GETTABLEKS                       R11 R11 K19 ["ManageTabs"]
       59 GETTABLEKS                       R11 R11 K20 ["TabRow"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K13 ["Src"]
       66 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       68 GETTABLEKS                       R12 R12 K22 ["useSelectionMenuView"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R0 K13 ["Src"]
       75 GETTABLEKS                       R13 R13 K14 ["Contexts"]
       77 GETTABLEKS                       R13 R13 K23 ["TabLocation"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R14 R0 K13 ["Src"]
       84 GETTABLEKS                       R14 R14 K24 ["Util"]
       86 GETTABLEKS                       R14 R14 K25 ["controlsIdentifierToString"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETTABLEKS                       R15 R0 K6 ["Packages"]
       93 GETTABLEKS                       R15 R15 K26 ["StudioFoundation"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R14 K24 ["Util"]
       98 GETTABLEKS                       R15 R15 K27 ["StudioUri"]
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K6 ["Packages"]
      104 GETTABLEKS                       R17 R17 K28 ["Dash"]
      106 CALL                             R16 1 1
      107 GETTABLEKS                       R17 R16 K29 ["find"]
      109 GETTABLEKS                       R18 R16 K30 ["map"]
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R20 R0 K6 ["Packages"]
      115 GETTABLEKS                       R20 R20 K31 ["Framework"]
      117 CALL                             R19 1 1
      118 GETTABLEKS                       R20 R19 K32 ["UI"]
      120 GETTABLEKS                       R21 R20 K33 ["TreeView"]
      122 GETTABLEKS                       R22 R19 K24 ["Util"]
      124 GETTABLEKS                       R22 R22 K34 ["counter"]
      126 GETTABLEKS                       R23 R19 K35 ["ContextServices"]
      128 GETTABLEKS                       R24 R23 K36 ["Plugin"]
      130 GETTABLEKS                       R25 R19 K35 ["ContextServices"]
      132 GETTABLEKS                       R25 R25 K37 ["Localization"]
      134 GETIMPORT                        R26 K5 [require]
      136 GETTABLEKS                       R27 R0 K13 ["Src"]
      138 GETTABLEKS                       R27 R27 K38 ["Types"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K41 [UDim2.new]
      143 LOADN                            R28 0
      144 LOADN                            R29 278
      145 LOADN                            R30 0
      146 LOADN                            R31 221
      147 CALL                             R27 4 1
      148 DUPCLOSURE                       R28 K42 [PROTO_8]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R25
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R27
      169 CAPTURE                          VAL R9
      170 RETURN                           R28 1
