PROTO_0:
        0 DUPTABLE                         R1 K3 [{"id", "text", "query"}]
        1 GETTABLEKS                       R2 R0 K4 ["Key"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K5 ["DropdownLabel"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETTABLEKS                       R2 R0 K6 ["Query"]
       11 SETTABLEKS                       R2 R1 K2 ["query"]
       13 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K0 [PROTO_0]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["id"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+2]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageHasOSDeprecationAlertBeenClosed"]
        2 NAMECALL                         R0 R0 K1 ["GetSetting"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["shouldShowWinOSDeprecationWarning"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["shouldShowMacOSDeprecationWarning"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageIsOnGridView"]
        2 NAMECALL                         R0 R0 K1 ["GetSetting"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["CanSwapBetweenViews"]
        8 JUMPIF                           R2 ; [+4]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["IsDefaultGridView"]
       12 JUMPIF                           R1 ; [+4]
       13 LOADB                            R1 1
       14 JUMPIFEQKNIL                     R0 ; [+2]
       16 MOVE                             R1 R0
       17 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R1 R2 1
       10 GETTABLEKS                       R1 R1 K0 ["id"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageHasOSDeprecationAlertBeenClosed"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["SetSetting"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K7 [{[1] = "navigation", ["telemetrySubtype"] = "tab", ["context"], ["from"], ["to"]}]
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K8 ["PageName"]
        9 SETTABLEKS                       R5 R4 K4 ["context"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K9 ["Tabs"]
       14 GETUPVAL                         R7 0
       15 GETTABLE                         R5 R6 R7
       16 GETTABLEKS                       R5 R5 K10 ["Key"]
       18 SETTABLEKS                       R5 R4 K5 ["from"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K9 ["Tabs"]
       23 GETTABLE                         R5 R6 R0
       24 GETTABLEKS                       R5 R5 K10 ["Key"]
       26 SETTABLEKS                       R5 R4 K6 ["to"]
       28 NAMECALL                         R1 R1 K11 ["log"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K12 ["restartAnimation"]
       34 CALL                             R1 0 0
       35 GETUPVAL                         R1 5
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LuaStartPageIsOnGridView"]
        2 GETUPVAL                         R5 1
        3 NOT                              R4 R5
        4 NAMECALL                         R1 R1 K1 ["SetSetting"]
        6 CALL                             R1 3 0
        7 GETUPVAL                         R1 2
        8 JUMPIFEQKS                       R0 K2 ["grid"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"title"}]
        7 GETUPVAL                         R7 3
        8 JUMPIFEQKS                       R7 K3 [""] ; [+8]
       10 GETUPVAL                         R6 4
       11 LOADK                            R8 K4 ["Plugin"]
       12 LOADK                            R9 K5 ["NoSearchResultsToDisplay"]
       13 NAMECALL                         R6 R6 K6 ["getText"]
       15 CALL                             R6 3 1
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K7 ["Tabs"]
       20 GETUPVAL                         R8 6
       21 GETTABLE                         R6 R7 R8
       22 GETTABLEKS                       R6 R6 K8 ["FailedTitle"]
       24 SETTABLEKS                       R6 R5 K1 ["title"]
       26 CALL                             R3 2 -1
       27 CALL                             R1 -1 -1
       28 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K1 ["use"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K1 ["use"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 3
       18 LOADN                            R5 1
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 3
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 2
       24 GETUPVAL                         R8 3
       25 LOADK                            R9 K3 [""]
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 3
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          VAL R1
       30 CALL                             R10 1 2
       31 GETUPVAL                         R12 3
       32 LOADB                            R13 0
       33 CALL                             R12 1 2
       34 GETUPVAL                         R14 4
       35 NEWCLOSURE                       R15 P1
       36 CAPTURE                          VAL R13
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R16 0 0
       40 CALL                             R14 2 0
       41 GETUPVAL                         R14 3
       42 LOADB                            R15 0
       43 CALL                             R14 1 2
       44 GETUPVAL                         R16 4
       45 NEWCLOSURE                       R17 P2
       46 CAPTURE                          VAL R15
       47 CAPTURE                          UPVAL U5
       48 NEWTABLE                         R18 0 0
       50 CALL                             R16 2 0
       51 GETUPVAL                         R16 3
       52 NEWCLOSURE                       R17 P3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 CALL                             R16 1 2
       56 GETTABLEKS                       R19 R0 K4 ["Tabs"]
       58 GETTABLE                         R18 R19 R4
       59 GETTABLEKS                       R18 R18 K5 ["Dropdowns"]
       61 LOADNIL                          R19
       62 LOADNIL                          R20
       63 JUMPIFNOT                        R18 ; [+26]
       64 JUMPIF                           R16 ; [+3]
       65 GETUPVAL                         R21 6
       66 JUMPIFNOT                        R21 ; [+12]
       67 JUMPIF                           R16 ; [+11]
       68 GETTABLEKS                       R21 R18 K6 ["SortDropdown"]
       70 JUMPIF                           R21 ; [+2]
       71 LOADNIL                          R19
       72 JUMP                             ; [+7]
       73 GETUPVAL                         R22 7
       74 MOVE                             R23 R21
       75 DUPCLOSURE                       R24 K7 [PROTO_0]
       76 CALL                             R22 2 1
       77 MOVE                             R19 R22
       78 JUMP                             ; [+1]
       79 LOADNIL                          R19
       80 GETTABLEKS                       R21 R18 K8 ["GroupDropdown"]
       82 JUMPIF                           R21 ; [+2]
       83 LOADNIL                          R20
       84 JUMP                             ; [+5]
       85 GETUPVAL                         R22 7
       86 MOVE                             R23 R21
       87 DUPCLOSURE                       R24 K7 [PROTO_0]
       88 CALL                             R22 2 1
       89 MOVE                             R20 R22
       90 GETUPVAL                         R21 3
       91 JUMPIFNOT                        R19 ; [+15]
       92 LENGTH                           R23 R19
       93 LOADN                            R24 0
       94 JUMPIFNOTLT                      R24 R23 ; [+12]
       96 GETTABLEKS                       R24 R18 K9 ["DefaultSortIndex"]
       98 JUMPIFNOT                        R24 ; [+3]
       99 GETTABLEKS                       R23 R18 K9 ["DefaultSortIndex"]
      101 JUMP                             ; [+1]
      102 LOADN                            R23 1
      103 GETTABLE                         R22 R19 R23
      104 GETTABLEKS                       R22 R22 K10 ["id"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R22
      108 CALL                             R21 1 2
      109 GETUPVAL                         R23 3
      110 JUMPIFNOT                        R20 ; [+8]
      111 LENGTH                           R25 R20
      112 LOADN                            R26 0
      113 JUMPIFNOTLT                      R26 R25 ; [+5]
      115 GETTABLEN                        R24 R20 1
      116 GETTABLEKS                       R24 R24 K10 ["id"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R24
      120 CALL                             R23 1 2
      121 GETUPVAL                         R25 4
      122 NEWCLOSURE                       R26 P5
      123 CAPTURE                          REF R20
      124 CAPTURE                          VAL R24
      125 NEWTABLE                         R27 0 1
      127 MOVE                             R28 R4
      128 SETLIST                          R27 R28 1 [1]
      130 CALL                             R25 2 0
      131 NEWTABLE                         R25 1 0
      133 JUMPIFNOT                        R18 ; [+54]
      134 JUMPIFNOT                        R19 ; [+26]
      135 LENGTH                           R26 R19
      136 LOADN                            R27 0
      137 JUMPIFNOTLT                      R27 R26 ; [+23]
      139 JUMPIFNOT                        R21 ; [+21]
      140 MOVE                             R27 R19
      141 MOVE                             R28 R27
      142 LOADNIL                          R29
      143 LOADNIL                          R30
      144 FORGPREP                         R28
      145 GETTABLEKS                       R33 R32 K10 ["id"]
      147 JUMPIFNOTEQ                      R33 R21 ; [+3]
      149 MOVE                             R26 R32
      150 JUMP                             ; [+3]
      151 FORGLOOP                         R28 2 ; [-7]
      153 LOADNIL                          R26
      154 JUMPIFNOT                        R26 ; [+6]
      155 GETUPVAL                         R27 8
      156 MOVE                             R28 R25
      157 GETTABLEKS                       R29 R26 K11 ["query"]
      159 CALL                             R27 2 1
      160 MOVE                             R25 R27
      161 JUMPIFNOT                        R20 ; [+26]
      162 LENGTH                           R26 R20
      163 LOADN                            R27 0
      164 JUMPIFNOTLT                      R27 R26 ; [+23]
      166 JUMPIFNOT                        R23 ; [+21]
      167 MOVE                             R27 R20
      168 MOVE                             R28 R27
      169 LOADNIL                          R29
      170 LOADNIL                          R30
      171 FORGPREP                         R28
      172 GETTABLEKS                       R33 R32 K10 ["id"]
      174 JUMPIFNOTEQ                      R33 R23 ; [+3]
      176 MOVE                             R26 R32
      177 JUMP                             ; [+3]
      178 FORGLOOP                         R28 2 ; [-7]
      180 LOADNIL                          R26
      181 JUMPIFNOT                        R26 ; [+6]
      182 GETUPVAL                         R27 8
      183 MOVE                             R28 R25
      184 GETTABLEKS                       R29 R26 K11 ["query"]
      186 CALL                             R27 2 1
      187 MOVE                             R25 R27
      188 JUMPIFNOT                        R8 ; [+2]
      189 SETTABLEKS                       R8 R25 K12 ["search"]
      191 JUMPIFNOT                        R6 ; [+5]
      192 GETUPVAL                         R26 8
      193 MOVE                             R27 R25
      194 MOVE                             R28 R6
      195 CALL                             R26 2 1
      196 MOVE                             R25 R26
      197 GETUPVAL                         R26 9
      198 CALL                             R26 0 1
      199 GETUPVAL                         R27 10
      200 GETTABLEKS                       R27 R27 K13 ["createElement"]
      202 GETUPVAL                         R28 11
      203 DUPTABLE                         R29 K16 [{["tag"] = "col size-full"}]
      204 DUPTABLE                         R30 K19 [{"OSDeprecationBanner", "Content"}]
      205 JUMPIF                           R10 ; [+59]
      206 JUMPIF                           R12 ; [+1]
      207 JUMPIFNOT                        R14 ; [+57]
      208 GETUPVAL                         R31 10
      209 GETTABLEKS                       R31 R31 K13 ["createElement"]
      211 GETUPVAL                         R32 12
      212 DUPTABLE                         R33 K25 [{"title", "body", "onClose", "inlineAction", "LayoutOrder"}]
      213 JUMPIFNOT                        R12 ; [+6]
      214 LOADK                            R36 K0 ["Plugin"]
      215 LOADK                            R37 K26 ["OSDeprecationBanner.TitleWin"]
      216 NAMECALL                         R34 R3 K27 ["getText"]
      218 CALL                             R34 3 1
      219 JUMP                             ; [+5]
      220 LOADK                            R36 K0 ["Plugin"]
      221 LOADK                            R37 K28 ["OSDeprecationBanner.TitleMac"]
      222 NAMECALL                         R34 R3 K27 ["getText"]
      224 CALL                             R34 3 1
      225 SETTABLEKS                       R34 R33 K20 ["title"]
      227 LOADK                            R36 K0 ["Plugin"]
      228 LOADK                            R37 K29 ["OSDeprecationBanner.Body"]
      229 NAMECALL                         R34 R3 K27 ["getText"]
      231 CALL                             R34 3 1
      232 SETTABLEKS                       R34 R33 K21 ["body"]
      234 NEWCLOSURE                       R34 P6
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R11
      237 SETTABLEKS                       R34 R33 K22 ["onClose"]
      239 GETUPVAL                         R35 13
      240 CALL                             R35 0 1
      241 JUMPIFNOT                        R35 ; [+2]
      242 LOADNIL                          R34
      243 JUMP                             ; [+13]
      244 DUPTABLE                         R34 K32 [{"text", "onClick"}]
      245 LOADK                            R37 K0 ["Plugin"]
      246 LOADK                            R38 K33 ["OSDeprecationBanner.Action"]
      247 NAMECALL                         R35 R3 K27 ["getText"]
      249 CALL                             R35 3 1
      250 SETTABLEKS                       R35 R34 K30 ["text"]
      252 DUPCLOSURE                       R35 K34 [PROTO_9]
      253 CAPTURE                          UPVAL U5
      254 CAPTURE                          UPVAL U14
      255 SETTABLEKS                       R35 R34 K31 ["onClick"]
      257 SETTABLEKS                       R34 R33 K23 ["inlineAction"]
      259 MOVE                             R34 R26
      260 CALL                             R34 0 1
      261 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      263 CALL                             R31 2 1
      264 JUMP                             ; [+1]
      265 LOADNIL                          R31
      266 SETTABLEKS                       R31 R30 K17 ["OSDeprecationBanner"]
      268 GETUPVAL                         R31 10
      269 GETTABLEKS                       R31 R31 K13 ["createElement"]
      271 GETUPVAL                         R32 11
      272 DUPTABLE                         R33 K36 [{["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small", ["LayoutOrder"]}]
      273 MOVE                             R34 R26
      274 CALL                             R34 0 1
      275 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      277 DUPTABLE                         R34 K40 [{"Header", "Controls", "PageComponent"}]
      278 GETUPVAL                         R35 10
      279 GETTABLEKS                       R35 R35 K13 ["createElement"]
      281 GETUPVAL                         R36 15
      282 DUPTABLE                         R37 K42 [{"title", "searchBar", "LayoutOrder"}]
      283 GETTABLEKS                       R39 R0 K4 ["Tabs"]
      285 GETTABLE                         R38 R39 R4
      286 GETTABLEKS                       R38 R38 K43 ["Title"]
      288 SETTABLEKS                       R38 R37 K20 ["title"]
      290 GETTABLEKS                       R39 R0 K44 ["HasSearchBar"]
      292 JUMPIFNOT                        R39 ; [+20]
      293 DUPTABLE                         R38 K49 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      294 SETTABLEKS                       R25 R38 K45 ["calculatedQuery"]
      296 SETTABLEKS                       R9 R38 K46 ["setSearchQuery"]
      298 GETTABLEKS                       R40 R0 K4 ["Tabs"]
      300 GETTABLE                         R39 R40 R4
      301 GETTABLEKS                       R39 R39 K39 ["PageComponent"]
      303 SETTABLEKS                       R39 R38 K47 ["resultComponent"]
      305 GETTABLEKS                       R40 R0 K4 ["Tabs"]
      307 GETTABLE                         R39 R40 R4
      308 GETTABLEKS                       R39 R39 K43 ["Title"]
      310 SETTABLEKS                       R39 R38 K48 ["type"]
      312 JUMP                             ; [+1]
      313 LOADNIL                          R38
      314 SETTABLEKS                       R38 R37 K41 ["searchBar"]
      316 MOVE                             R38 R26
      317 CALL                             R38 0 1
      318 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      320 CALL                             R35 2 1
      321 SETTABLEKS                       R35 R34 K37 ["Header"]
      323 GETUPVAL                         R35 10
      324 GETTABLEKS                       R35 R35 K13 ["createElement"]
      326 GETUPVAL                         R36 11
      327 DUPTABLE                         R37 K51 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y"}]
      328 MOVE                             R38 R26
      329 CALL                             R38 0 1
      330 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      332 DUPTABLE                         R38 K54 [{"Pills", "DropdownControls"}]
      333 GETTABLEKS                       R40 R0 K55 ["HideTabs"]
      335 JUMPIF                           R40 ; [+27]
      336 GETUPVAL                         R39 10
      337 GETTABLEKS                       R39 R39 K13 ["createElement"]
      339 GETUPVAL                         R40 16
      340 DUPTABLE                         R41 K59 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      341 GETTABLEKS                       R42 R0 K4 ["Tabs"]
      343 SETTABLEKS                       R42 R41 K56 ["tabs"]
      345 GETTABLEKS                       R43 R0 K4 ["Tabs"]
      347 GETTABLEN                        R42 R43 1
      348 GETTABLEKS                       R42 R42 K60 ["Key"]
      350 SETTABLEKS                       R42 R41 K57 ["defaultSelectedTab"]
      352 NEWCLOSURE                       R42 P8
      353 CAPTURE                          VAL R4
      354 CAPTURE                          VAL R2
      355 CAPTURE                          UPVAL U17
      356 CAPTURE                          VAL R0
      357 CAPTURE                          UPVAL U18
      358 CAPTURE                          VAL R5
      359 SETTABLEKS                       R42 R41 K58 ["onTabSelected"]
      361 CALL                             R39 2 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R39
      364 SETTABLEKS                       R39 R38 K52 ["Pills"]
      366 GETUPVAL                         R39 10
      367 GETTABLEKS                       R39 R39 K13 ["createElement"]
      369 GETUPVAL                         R40 11
      370 DUPTABLE                         R41 K62 [{["LayoutOrder"], ["tag"] = "row align-x-right grow gap-medium auto-xy"}]
      371 MOVE                             R42 R26
      372 CALL                             R42 0 1
      373 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      375 DUPTABLE                         R42 K64 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      376 JUMPIFNOT                        R20 ; [+31]
      377 GETUPVAL                         R43 10
      378 GETTABLEKS                       R43 R43 K13 ["createElement"]
      380 GETUPVAL                         R44 19
      381 GETTABLEKS                       R44 R44 K65 ["Root"]
      383 GETUPVAL                         R45 20
      384 GETTABLEKS                       R45 R45 K66 ["join"]
      386 GETUPVAL                         R46 21
      387 DUPTABLE                         R47 K72 [{["LayoutOrder"] = 1, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      388 LOADK                            R50 K0 ["Plugin"]
      389 LOADK                            R51 K73 ["GroupDropdown.Placeholder"]
      390 NAMECALL                         R48 R3 K27 ["getText"]
      392 CALL                             R48 3 1
      393 SETTABLEKS                       R48 R47 K68 ["placeholder"]
      395 SETTABLEKS                       R23 R47 K69 ["value"]
      397 SETTABLEKS                       R20 R47 K70 ["items"]
      399 NEWCLOSURE                       R48 P9
      400 CAPTURE                          VAL R23
      401 CAPTURE                          UPVAL U18
      402 CAPTURE                          VAL R24
      403 SETTABLEKS                       R48 R47 K71 ["onItemChanged"]
      405 CALL                             R45 2 -1
      406 CALL                             R43 -1 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R43
      409 SETTABLEKS                       R43 R42 K8 ["GroupDropdown"]
      411 JUMPIFNOT                        R19 ; [+31]
      412 GETUPVAL                         R43 10
      413 GETTABLEKS                       R43 R43 K13 ["createElement"]
      415 GETUPVAL                         R44 19
      416 GETTABLEKS                       R44 R44 K65 ["Root"]
      418 GETUPVAL                         R45 20
      419 GETTABLEKS                       R45 R45 K66 ["join"]
      421 GETUPVAL                         R46 21
      422 DUPTABLE                         R47 K75 [{["LayoutOrder"] = 2, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      423 LOADK                            R50 K0 ["Plugin"]
      424 LOADK                            R51 K76 ["SortDropdown.Placeholder"]
      425 NAMECALL                         R48 R3 K27 ["getText"]
      427 CALL                             R48 3 1
      428 SETTABLEKS                       R48 R47 K68 ["placeholder"]
      430 SETTABLEKS                       R21 R47 K69 ["value"]
      432 SETTABLEKS                       R19 R47 K70 ["items"]
      434 NEWCLOSURE                       R48 P10
      435 CAPTURE                          VAL R21
      436 CAPTURE                          UPVAL U18
      437 CAPTURE                          VAL R22
      438 SETTABLEKS                       R48 R47 K71 ["onItemChanged"]
      440 CALL                             R45 2 -1
      441 CALL                             R43 -1 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R43
      444 SETTABLEKS                       R43 R42 K6 ["SortDropdown"]
      446 GETTABLEKS                       R44 R0 K77 ["CanSwapBetweenViews"]
      448 JUMPIFNOT                        R44 ; [+22]
      449 GETUPVAL                         R43 10
      450 GETTABLEKS                       R43 R43 K13 ["createElement"]
      452 GETUPVAL                         R44 22
      453 DUPTABLE                         R45 K81 [{["LayoutOrder"] = 3, ["id"], ["options"], ["onActivated"]}]
      454 JUMPIFNOT                        R16 ; [+2]
      455 LOADK                            R46 K82 ["grid"]
      456 JUMP                             ; [+1]
      457 LOADK                            R46 K83 ["list"]
      458 SETTABLEKS                       R46 R45 K10 ["id"]
      460 GETUPVAL                         R46 23
      461 SETTABLEKS                       R46 R45 K79 ["options"]
      463 NEWCLOSURE                       R46 P11
      464 CAPTURE                          VAL R1
      465 CAPTURE                          VAL R16
      466 CAPTURE                          VAL R17
      467 SETTABLEKS                       R46 R45 K80 ["onActivated"]
      469 CALL                             R43 2 1
      470 JUMP                             ; [+1]
      471 LOADNIL                          R43
      472 SETTABLEKS                       R43 R42 K63 ["ToggleView"]
      474 CALL                             R39 3 1
      475 SETTABLEKS                       R39 R38 K53 ["DropdownControls"]
      477 CALL                             R35 3 1
      478 SETTABLEKS                       R35 R34 K38 ["Controls"]
      480 GETUPVAL                         R35 10
      481 GETTABLEKS                       R35 R35 K13 ["createElement"]
      483 GETUPVAL                         R36 24
      484 DUPTABLE                         R37 K85 [{["LayoutOrder"], ["tag"] = "fill size-full"}]
      485 MOVE                             R38 R26
      486 CALL                             R38 0 1
      487 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      489 GETUPVAL                         R38 10
      490 GETTABLEKS                       R38 R38 K13 ["createElement"]
      492 GETTABLEKS                       R40 R0 K4 ["Tabs"]
      494 GETTABLE                         R39 R40 R4
      495 GETTABLEKS                       R39 R39 K39 ["PageComponent"]
      497 DUPTABLE                         R40 K94 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      498 JUMPIFNOT                        R16 ; [+2]
      499 GETUPVAL                         R41 25
      500 JUMP                             ; [+5]
      501 GETUPVAL                         R42 6
      502 JUMPIFNOT                        R42 ; [+2]
      503 GETUPVAL                         R41 26
      504 JUMP                             ; [+1]
      505 GETUPVAL                         R41 27
      506 SETTABLEKS                       R41 R40 K86 ["DisplayComponent"]
      508 SETTABLEKS                       R18 R40 K5 ["Dropdowns"]
      510 NEWCLOSURE                       R41 P12
      511 CAPTURE                          UPVAL U10
      512 CAPTURE                          UPVAL U28
      513 CAPTURE                          UPVAL U8
      514 CAPTURE                          VAL R8
      515 CAPTURE                          VAL R3
      516 CAPTURE                          VAL R0
      517 CAPTURE                          VAL R4
      518 SETTABLEKS                       R41 R40 K87 ["NoContentDisplayComponent"]
      520 NOT                              R41 R16
      521 JUMPIFNOT                        R41 ; [+4]
      522 MOVE                             R41 R18
      523 JUMPIFNOT                        R41 ; [+2]
      524 GETTABLEKS                       R41 R18 K6 ["SortDropdown"]
      526 SETTABLEKS                       R41 R40 K88 ["CanDisplayComponentAdjustQuery"]
      528 JUMPIF                           R16 ; [+3]
      529 NEWCLOSURE                       R41 P13
      530 CAPTURE                          VAL R7
      531 JUMP                             ; [+1]
      532 LOADNIL                          R41
      533 SETTABLEKS                       R41 R40 K89 ["DisplayComponentHasAdjustedQuery"]
      535 DUPCLOSURE                       R41 K95 [PROTO_16]
      536 SETTABLEKS                       R41 R40 K90 ["InitialContentHasLoaded"]
      538 GETTABLEKS                       R41 R0 K91 ["CellSize"]
      540 SETTABLEKS                       R41 R40 K91 ["CellSize"]
      542 GETUPVAL                         R41 29
      543 SETTABLEKS                       R41 R40 K92 ["CellPadding"]
      545 SETTABLEKS                       R25 R40 K93 ["BaseQuery"]
      547 CALL                             R38 2 -1
      548 CALL                             R35 -1 1
      549 SETTABLEKS                       R35 R34 K39 ["PageComponent"]
      551 CALL                             R31 3 1
      552 SETTABLEKS                       R31 R30 K18 ["Content"]
      554 CALL                             R27 3 -1
      555 CLOSEUPVALS                      R20
      556 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["Services"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K13 ["StartPageManager"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Src"]
       33 GETTABLEKS                       R7 R7 K11 ["Util"]
       35 GETTABLEKS                       R7 R7 K14 ["TypedDash"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R6 K15 ["map"]
       40 GETTABLEKS                       R8 R6 K16 ["join"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K6 ["Packages"]
       46 GETTABLEKS                       R10 R10 K17 ["Framework"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K11 ["Util"]
       51 GETTABLEKS                       R10 R10 K18 ["counter"]
       53 GETTABLEKS                       R11 R9 K19 ["ContextServices"]
       55 GETTABLEKS                       R11 R11 K20 ["Localization"]
       57 GETTABLEKS                       R12 R9 K21 ["UI"]
       59 GETTABLEKS                       R13 R12 K22 ["Grid"]
       61 GETIMPORT                        R14 K5 [require]
       63 GETTABLEKS                       R15 R0 K10 ["Src"]
       65 GETTABLEKS                       R15 R15 K23 ["Foundation"]
       67 GETTABLEKS                       R15 R15 K24 ["Components"]
       69 GETTABLEKS                       R15 R15 K25 ["Alert"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R16 R0 K10 ["Src"]
       76 GETTABLEKS                       R16 R16 K23 ["Foundation"]
       78 GETTABLEKS                       R16 R16 K24 ["Components"]
       80 GETTABLEKS                       R16 R16 K26 ["ToggleButton"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R17 R0 K10 ["Src"]
       87 GETTABLEKS                       R17 R17 K23 ["Foundation"]
       89 GETTABLEKS                       R17 R17 K24 ["Components"]
       91 GETTABLEKS                       R17 R17 K27 ["PageHeader"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R18 R0 K10 ["Src"]
       98 GETTABLEKS                       R18 R18 K23 ["Foundation"]
      100 GETTABLEKS                       R18 R18 K24 ["Components"]
      102 GETTABLEKS                       R18 R18 K28 ["Frame"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R19 R0 K10 ["Src"]
      109 GETTABLEKS                       R19 R19 K11 ["Util"]
      111 GETTABLEKS                       R19 R19 K23 ["Foundation"]
      113 CALL                             R18 1 1
      114 GETTABLEKS                       R19 R18 K29 ["View"]
      116 GETTABLEKS                       R20 R18 K30 ["Dropdown"]
      118 GETTABLEKS                       R21 R18 K31 ["Enums"]
      120 GETTABLEKS                       R21 R21 K32 ["InputSize"]
      122 GETTABLEKS                       R22 R18 K31 ["Enums"]
      124 GETTABLEKS                       R22 R22 K33 ["IconName"]
      126 GETIMPORT                        R23 K5 [require]
      128 GETTABLEKS                       R24 R0 K10 ["Src"]
      130 GETTABLEKS                       R24 R24 K11 ["Util"]
      132 GETTABLEKS                       R24 R24 K34 ["Telemetry"]
      134 GETTABLEKS                       R24 R24 K35 ["TelemetryContext"]
      136 CALL                             R23 1 1
      137 GETIMPORT                        R24 K5 [require]
      139 GETTABLEKS                       R25 R0 K10 ["Src"]
      141 GETTABLEKS                       R25 R25 K11 ["Util"]
      143 GETTABLEKS                       R25 R25 K34 ["Telemetry"]
      145 GETTABLEKS                       R25 R25 K36 ["StartPageTelemetryEvent"]
      147 CALL                             R24 1 1
      148 GETIMPORT                        R25 K5 [require]
      150 GETTABLEKS                       R26 R0 K10 ["Src"]
      152 GETTABLEKS                       R26 R26 K24 ["Components"]
      154 GETTABLEKS                       R26 R26 K37 ["Shimmer"]
      156 CALL                             R25 1 1
      157 GETIMPORT                        R26 K5 [require]
      159 GETTABLEKS                       R27 R0 K10 ["Src"]
      161 GETTABLEKS                       R27 R27 K23 ["Foundation"]
      163 GETTABLEKS                       R27 R27 K24 ["Components"]
      165 GETTABLEKS                       R27 R27 K38 ["PillTabs"]
      167 CALL                             R26 1 1
      168 GETIMPORT                        R27 K5 [require]
      170 GETTABLEKS                       R28 R0 K10 ["Src"]
      172 GETTABLEKS                       R28 R28 K24 ["Components"]
      174 GETTABLEKS                       R28 R28 K39 ["DEPRECATED_ExperiencesTable"]
      176 CALL                             R27 1 1
      177 GETIMPORT                        R28 K5 [require]
      179 GETTABLEKS                       R29 R0 K10 ["Src"]
      181 GETTABLEKS                       R29 R29 K40 ["SharedFlags"]
      183 GETTABLEKS                       R29 R29 K41 ["getFFlagLuaStartPageNewListView"]
      185 CALL                             R28 1 1
      186 CALL                             R28 0 1
      187 JUMPIFNOT                        R28 ; [+10]
      188 GETIMPORT                        R29 K5 [require]
      190 GETTABLEKS                       R30 R0 K10 ["Src"]
      192 GETTABLEKS                       R30 R30 K24 ["Components"]
      194 GETTABLEKS                       R30 R30 K42 ["ExperiencesListView"]
      196 CALL                             R29 1 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R29
      199 GETIMPORT                        R30 K5 [require]
      201 GETTABLEKS                       R31 R0 K10 ["Src"]
      203 GETTABLEKS                       R31 R31 K23 ["Foundation"]
      205 GETTABLEKS                       R31 R31 K24 ["Components"]
      207 GETTABLEKS                       R31 R31 K43 ["NoResultsFound"]
      209 CALL                             R30 1 1
      210 GETTABLEKS                       R31 R9 K19 ["ContextServices"]
      212 GETIMPORT                        R32 K5 [require]
      214 GETTABLEKS                       R33 R0 K10 ["Src"]
      216 GETTABLEKS                       R33 R33 K44 ["Types"]
      218 CALL                             R32 1 1
      219 GETIMPORT                        R33 K5 [require]
      221 GETTABLEKS                       R34 R0 K10 ["Src"]
      223 GETTABLEKS                       R34 R34 K40 ["SharedFlags"]
      225 GETTABLEKS                       R34 R34 K45 ["getFStringLuaStartPageOSDeprecationLink"]
      227 CALL                             R33 1 1
      228 CALL                             R33 0 1
      229 GETIMPORT                        R34 K5 [require]
      231 GETTABLEKS                       R35 R0 K10 ["Src"]
      233 GETTABLEKS                       R35 R35 K40 ["SharedFlags"]
      235 GETTABLEKS                       R35 R35 K46 ["getFFlagIsLuobuBuild"]
      237 CALL                             R34 1 1
      238 GETIMPORT                        R35 K49 [UDim2.fromOffset]
      240 LOADN                            R36 16
      241 LOADN                            R37 16
      242 CALL                             R35 2 1
      243 DUPTABLE                         R36 K56 [{["label"] = "", ["width"], ["size"], ["maxHeight"] = 300}]
      244 GETIMPORT                        R37 K59 [UDim.new]
      246 LOADN                            R38 0
      247 LOADN                            R39 186
      248 CALL                             R37 2 1
      249 SETTABLEKS                       R37 R36 K52 ["width"]
      251 GETTABLEKS                       R37 R21 K60 ["Small"]
      253 SETTABLEKS                       R37 R36 K53 ["size"]
      255 NEWTABLE                         R37 0 2
      257 DUPTABLE                         R38 K64 [{["id"] = "grid", ["name"]}]
      258 GETTABLEKS                       R39 R22 K22 ["Grid"]
      260 SETTABLEKS                       R39 R38 K63 ["name"]
      262 DUPTABLE                         R39 K66 [{["id"] = "list", ["name"]}]
      263 GETTABLEKS                       R40 R22 K67 ["ListBulleted"]
      265 SETTABLEKS                       R40 R39 K63 ["name"]
      267 SETLIST                          R37 R38 2 [1]
      269 DUPCLOSURE                       R38 K68 [PROTO_1]
      270 CAPTURE                          VAL R7
      271 DUPCLOSURE                       R39 K69 [PROTO_2]
      272 DUPCLOSURE                       R40 K70 [PROTO_17]
      273 CAPTURE                          VAL R31
      274 CAPTURE                          VAL R23
      275 CAPTURE                          VAL R11
      276 CAPTURE                          VAL R2
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R5
      279 CAPTURE                          VAL R28
      280 CAPTURE                          VAL R7
      281 CAPTURE                          VAL R8
      282 CAPTURE                          VAL R10
      283 CAPTURE                          VAL R1
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R14
      286 CAPTURE                          VAL R34
      287 CAPTURE                          VAL R33
      288 CAPTURE                          VAL R16
      289 CAPTURE                          VAL R26
      290 CAPTURE                          VAL R24
      291 CAPTURE                          VAL R25
      292 CAPTURE                          VAL R20
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R36
      295 CAPTURE                          VAL R15
      296 CAPTURE                          VAL R37
      297 CAPTURE                          VAL R17
      298 CAPTURE                          VAL R13
      299 CAPTURE                          VAL R29
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R30
      302 CAPTURE                          VAL R35
      303 RETURN                           R40 1
