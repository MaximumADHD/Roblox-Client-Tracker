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
       56 GETUPVAL                         R18 6
       57 CALL                             R18 0 1
       58 GETTABLEKS                       R20 R0 K4 ["Tabs"]
       60 GETTABLE                         R19 R20 R4
       61 GETTABLEKS                       R19 R19 K5 ["Dropdowns"]
       63 LOADNIL                          R20
       64 LOADNIL                          R21
       65 JUMPIFNOT                        R19 ; [+26]
       66 JUMPIF                           R16 ; [+3]
       67 GETUPVAL                         R22 7
       68 JUMPIFNOT                        R22 ; [+12]
       69 JUMPIF                           R16 ; [+11]
       70 GETTABLEKS                       R22 R19 K6 ["SortDropdown"]
       72 JUMPIF                           R22 ; [+2]
       73 LOADNIL                          R20
       74 JUMP                             ; [+7]
       75 GETUPVAL                         R23 8
       76 MOVE                             R24 R22
       77 DUPCLOSURE                       R25 K7 [PROTO_0]
       78 CALL                             R23 2 1
       79 MOVE                             R20 R23
       80 JUMP                             ; [+1]
       81 LOADNIL                          R20
       82 GETTABLEKS                       R22 R19 K8 ["GroupDropdown"]
       84 JUMPIF                           R22 ; [+2]
       85 LOADNIL                          R21
       86 JUMP                             ; [+5]
       87 GETUPVAL                         R23 8
       88 MOVE                             R24 R22
       89 DUPCLOSURE                       R25 K7 [PROTO_0]
       90 CALL                             R23 2 1
       91 MOVE                             R21 R23
       92 GETUPVAL                         R22 3
       93 JUMPIFNOT                        R20 ; [+15]
       94 LENGTH                           R24 R20
       95 LOADN                            R25 0
       96 JUMPIFNOTLT                      R25 R24 ; [+12]
       98 GETTABLEKS                       R25 R19 K9 ["DefaultSortIndex"]
      100 JUMPIFNOT                        R25 ; [+3]
      101 GETTABLEKS                       R24 R19 K9 ["DefaultSortIndex"]
      103 JUMP                             ; [+1]
      104 LOADN                            R24 1
      105 GETTABLE                         R23 R20 R24
      106 GETTABLEKS                       R23 R23 K10 ["id"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R23
      110 CALL                             R22 1 2
      111 GETUPVAL                         R24 3
      112 JUMPIFNOT                        R21 ; [+8]
      113 LENGTH                           R26 R21
      114 LOADN                            R27 0
      115 JUMPIFNOTLT                      R27 R26 ; [+5]
      117 GETTABLEN                        R25 R21 1
      118 GETTABLEKS                       R25 R25 K10 ["id"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R25
      122 CALL                             R24 1 2
      123 GETUPVAL                         R26 4
      124 NEWCLOSURE                       R27 P5
      125 CAPTURE                          REF R21
      126 CAPTURE                          VAL R25
      127 NEWTABLE                         R28 0 1
      129 MOVE                             R29 R4
      130 SETLIST                          R28 R29 1 [1]
      132 CALL                             R26 2 0
      133 NEWTABLE                         R26 1 0
      135 JUMPIFNOT                        R19 ; [+53]
      136 JUMPIFNOT                        R20 ; [+25]
      137 LENGTH                           R27 R20
      138 LOADN                            R28 0
      139 JUMPIFNOTLT                      R28 R27 ; [+22]
      141 JUMPIFNOT                        R22 ; [+20]
      142 MOVE                             R29 R20
      143 LOADNIL                          R30
      144 LOADNIL                          R31
      145 FORGPREP                         R29
      146 GETTABLEKS                       R34 R33 K10 ["id"]
      148 JUMPIFNOTEQ                      R34 R22 ; [+3]
      150 MOVE                             R27 R33
      151 JUMP                             ; [+3]
      152 FORGLOOP                         R29 2 ; [-7]
      154 LOADNIL                          R27
      155 JUMPIFNOT                        R27 ; [+6]
      156 GETUPVAL                         R28 9
      157 MOVE                             R29 R26
      158 GETTABLEKS                       R30 R27 K11 ["query"]
      160 CALL                             R28 2 1
      161 MOVE                             R26 R28
      162 JUMPIFNOT                        R21 ; [+26]
      163 LENGTH                           R27 R21
      164 LOADN                            R28 0
      165 JUMPIFNOTLT                      R28 R27 ; [+23]
      167 JUMPIFNOT                        R24 ; [+21]
      168 MOVE                             R28 R21
      169 MOVE                             R29 R28
      170 LOADNIL                          R30
      171 LOADNIL                          R31
      172 FORGPREP                         R29
      173 GETTABLEKS                       R34 R33 K10 ["id"]
      175 JUMPIFNOTEQ                      R34 R24 ; [+3]
      177 MOVE                             R27 R33
      178 JUMP                             ; [+3]
      179 FORGLOOP                         R29 2 ; [-7]
      181 LOADNIL                          R27
      182 JUMPIFNOT                        R27 ; [+6]
      183 GETUPVAL                         R28 9
      184 MOVE                             R29 R26
      185 GETTABLEKS                       R30 R27 K11 ["query"]
      187 CALL                             R28 2 1
      188 MOVE                             R26 R28
      189 JUMPIFNOT                        R8 ; [+2]
      190 SETTABLEKS                       R8 R26 K12 ["search"]
      192 JUMPIFNOT                        R6 ; [+5]
      193 GETUPVAL                         R27 9
      194 MOVE                             R28 R26
      195 MOVE                             R29 R6
      196 CALL                             R27 2 1
      197 MOVE                             R26 R27
      198 GETUPVAL                         R27 10
      199 CALL                             R27 0 1
      200 GETUPVAL                         R28 11
      201 GETTABLEKS                       R28 R28 K13 ["createElement"]
      203 GETUPVAL                         R29 12
      204 DUPTABLE                         R30 K16 [{["tag"] = "col size-full"}]
      205 DUPTABLE                         R31 K19 [{"OSDeprecationBanner", "Content"}]
      206 JUMPIF                           R10 ; [+59]
      207 JUMPIF                           R12 ; [+1]
      208 JUMPIFNOT                        R14 ; [+57]
      209 GETUPVAL                         R32 11
      210 GETTABLEKS                       R32 R32 K13 ["createElement"]
      212 GETUPVAL                         R33 13
      213 DUPTABLE                         R34 K25 [{"title", "body", "onClose", "inlineAction", "LayoutOrder"}]
      214 JUMPIFNOT                        R12 ; [+6]
      215 LOADK                            R37 K0 ["Plugin"]
      216 LOADK                            R38 K26 ["OSDeprecationBanner.TitleWin"]
      217 NAMECALL                         R35 R3 K27 ["getText"]
      219 CALL                             R35 3 1
      220 JUMP                             ; [+5]
      221 LOADK                            R37 K0 ["Plugin"]
      222 LOADK                            R38 K28 ["OSDeprecationBanner.TitleMac"]
      223 NAMECALL                         R35 R3 K27 ["getText"]
      225 CALL                             R35 3 1
      226 SETTABLEKS                       R35 R34 K20 ["title"]
      228 LOADK                            R37 K0 ["Plugin"]
      229 LOADK                            R38 K29 ["OSDeprecationBanner.Body"]
      230 NAMECALL                         R35 R3 K27 ["getText"]
      232 CALL                             R35 3 1
      233 SETTABLEKS                       R35 R34 K21 ["body"]
      235 NEWCLOSURE                       R35 P6
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R11
      238 SETTABLEKS                       R35 R34 K22 ["onClose"]
      240 GETUPVAL                         R36 14
      241 CALL                             R36 0 1
      242 JUMPIFNOT                        R36 ; [+2]
      243 LOADNIL                          R35
      244 JUMP                             ; [+13]
      245 DUPTABLE                         R35 K32 [{"text", "onClick"}]
      246 LOADK                            R38 K0 ["Plugin"]
      247 LOADK                            R39 K33 ["OSDeprecationBanner.Action"]
      248 NAMECALL                         R36 R3 K27 ["getText"]
      250 CALL                             R36 3 1
      251 SETTABLEKS                       R36 R35 K30 ["text"]
      253 DUPCLOSURE                       R36 K34 [PROTO_9]
      254 CAPTURE                          UPVAL U5
      255 CAPTURE                          UPVAL U15
      256 SETTABLEKS                       R36 R35 K31 ["onClick"]
      258 SETTABLEKS                       R35 R34 K23 ["inlineAction"]
      260 MOVE                             R35 R27
      261 CALL                             R35 0 1
      262 SETTABLEKS                       R35 R34 K24 ["LayoutOrder"]
      264 CALL                             R32 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R32
      267 SETTABLEKS                       R32 R31 K17 ["OSDeprecationBanner"]
      269 GETUPVAL                         R32 11
      270 GETTABLEKS                       R32 R32 K13 ["createElement"]
      272 GETUPVAL                         R33 12
      273 DUPTABLE                         R34 K36 [{["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small", ["LayoutOrder"]}]
      274 MOVE                             R35 R27
      275 CALL                             R35 0 1
      276 SETTABLEKS                       R35 R34 K24 ["LayoutOrder"]
      278 DUPTABLE                         R35 K40 [{"Header", "Controls", "PageComponent"}]
      279 GETUPVAL                         R36 11
      280 GETTABLEKS                       R36 R36 K13 ["createElement"]
      282 GETUPVAL                         R37 16
      283 DUPTABLE                         R38 K43 [{"title", "trailing", "searchBar", "LayoutOrder"}]
      284 GETTABLEKS                       R40 R0 K4 ["Tabs"]
      286 GETTABLE                         R39 R40 R4
      287 GETTABLEKS                       R39 R39 K44 ["Title"]
      289 SETTABLEKS                       R39 R38 K20 ["title"]
      291 SETTABLEKS                       R18 R38 K41 ["trailing"]
      293 GETTABLEKS                       R40 R0 K45 ["HasSearchBar"]
      295 JUMPIFNOT                        R40 ; [+20]
      296 DUPTABLE                         R39 K50 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      297 SETTABLEKS                       R26 R39 K46 ["calculatedQuery"]
      299 SETTABLEKS                       R9 R39 K47 ["setSearchQuery"]
      301 GETTABLEKS                       R41 R0 K4 ["Tabs"]
      303 GETTABLE                         R40 R41 R4
      304 GETTABLEKS                       R40 R40 K39 ["PageComponent"]
      306 SETTABLEKS                       R40 R39 K48 ["resultComponent"]
      308 GETTABLEKS                       R41 R0 K4 ["Tabs"]
      310 GETTABLE                         R40 R41 R4
      311 GETTABLEKS                       R40 R40 K44 ["Title"]
      313 SETTABLEKS                       R40 R39 K49 ["type"]
      315 JUMP                             ; [+1]
      316 LOADNIL                          R39
      317 SETTABLEKS                       R39 R38 K42 ["searchBar"]
      319 MOVE                             R39 R27
      320 CALL                             R39 0 1
      321 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      323 CALL                             R36 2 1
      324 SETTABLEKS                       R36 R35 K37 ["Header"]
      326 GETUPVAL                         R36 11
      327 GETTABLEKS                       R36 R36 K13 ["createElement"]
      329 GETUPVAL                         R37 12
      330 DUPTABLE                         R38 K52 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y"}]
      331 MOVE                             R39 R27
      332 CALL                             R39 0 1
      333 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      335 DUPTABLE                         R39 K55 [{"Pills", "DropdownControls"}]
      336 GETTABLEKS                       R41 R0 K56 ["HideTabs"]
      338 JUMPIF                           R41 ; [+27]
      339 GETUPVAL                         R40 11
      340 GETTABLEKS                       R40 R40 K13 ["createElement"]
      342 GETUPVAL                         R41 17
      343 DUPTABLE                         R42 K60 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      344 GETTABLEKS                       R43 R0 K4 ["Tabs"]
      346 SETTABLEKS                       R43 R42 K57 ["tabs"]
      348 GETTABLEKS                       R44 R0 K4 ["Tabs"]
      350 GETTABLEN                        R43 R44 1
      351 GETTABLEKS                       R43 R43 K61 ["Key"]
      353 SETTABLEKS                       R43 R42 K58 ["defaultSelectedTab"]
      355 NEWCLOSURE                       R43 P8
      356 CAPTURE                          VAL R4
      357 CAPTURE                          VAL R2
      358 CAPTURE                          UPVAL U18
      359 CAPTURE                          VAL R0
      360 CAPTURE                          UPVAL U19
      361 CAPTURE                          VAL R5
      362 SETTABLEKS                       R43 R42 K59 ["onTabSelected"]
      364 CALL                             R40 2 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R40
      367 SETTABLEKS                       R40 R39 K53 ["Pills"]
      369 GETUPVAL                         R40 11
      370 GETTABLEKS                       R40 R40 K13 ["createElement"]
      372 GETUPVAL                         R41 12
      373 DUPTABLE                         R42 K63 [{["LayoutOrder"], ["tag"] = "row align-x-right grow gap-medium auto-xy"}]
      374 MOVE                             R43 R27
      375 CALL                             R43 0 1
      376 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      378 DUPTABLE                         R43 K65 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      379 JUMPIFNOT                        R21 ; [+31]
      380 GETUPVAL                         R44 11
      381 GETTABLEKS                       R44 R44 K13 ["createElement"]
      383 GETUPVAL                         R45 20
      384 GETTABLEKS                       R45 R45 K66 ["Root"]
      386 GETUPVAL                         R46 21
      387 GETTABLEKS                       R46 R46 K67 ["join"]
      389 GETUPVAL                         R47 22
      390 DUPTABLE                         R48 K73 [{["LayoutOrder"] = 1, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      391 LOADK                            R51 K0 ["Plugin"]
      392 LOADK                            R52 K74 ["GroupDropdown.Placeholder"]
      393 NAMECALL                         R49 R3 K27 ["getText"]
      395 CALL                             R49 3 1
      396 SETTABLEKS                       R49 R48 K69 ["placeholder"]
      398 SETTABLEKS                       R24 R48 K70 ["value"]
      400 SETTABLEKS                       R21 R48 K71 ["items"]
      402 NEWCLOSURE                       R49 P9
      403 CAPTURE                          VAL R24
      404 CAPTURE                          UPVAL U19
      405 CAPTURE                          VAL R25
      406 SETTABLEKS                       R49 R48 K72 ["onItemChanged"]
      408 CALL                             R46 2 -1
      409 CALL                             R44 -1 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R44
      412 SETTABLEKS                       R44 R43 K8 ["GroupDropdown"]
      414 JUMPIFNOT                        R20 ; [+31]
      415 GETUPVAL                         R44 11
      416 GETTABLEKS                       R44 R44 K13 ["createElement"]
      418 GETUPVAL                         R45 20
      419 GETTABLEKS                       R45 R45 K66 ["Root"]
      421 GETUPVAL                         R46 21
      422 GETTABLEKS                       R46 R46 K67 ["join"]
      424 GETUPVAL                         R47 22
      425 DUPTABLE                         R48 K76 [{["LayoutOrder"] = 2, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      426 LOADK                            R51 K0 ["Plugin"]
      427 LOADK                            R52 K77 ["SortDropdown.Placeholder"]
      428 NAMECALL                         R49 R3 K27 ["getText"]
      430 CALL                             R49 3 1
      431 SETTABLEKS                       R49 R48 K69 ["placeholder"]
      433 SETTABLEKS                       R22 R48 K70 ["value"]
      435 SETTABLEKS                       R20 R48 K71 ["items"]
      437 NEWCLOSURE                       R49 P10
      438 CAPTURE                          VAL R22
      439 CAPTURE                          UPVAL U19
      440 CAPTURE                          VAL R23
      441 SETTABLEKS                       R49 R48 K72 ["onItemChanged"]
      443 CALL                             R46 2 -1
      444 CALL                             R44 -1 1
      445 JUMP                             ; [+1]
      446 LOADNIL                          R44
      447 SETTABLEKS                       R44 R43 K6 ["SortDropdown"]
      449 GETTABLEKS                       R45 R0 K78 ["CanSwapBetweenViews"]
      451 JUMPIFNOT                        R45 ; [+22]
      452 GETUPVAL                         R44 11
      453 GETTABLEKS                       R44 R44 K13 ["createElement"]
      455 GETUPVAL                         R45 23
      456 DUPTABLE                         R46 K82 [{["LayoutOrder"] = 3, ["id"], ["options"], ["onActivated"]}]
      457 JUMPIFNOT                        R16 ; [+2]
      458 LOADK                            R47 K83 ["grid"]
      459 JUMP                             ; [+1]
      460 LOADK                            R47 K84 ["list"]
      461 SETTABLEKS                       R47 R46 K10 ["id"]
      463 GETUPVAL                         R47 24
      464 SETTABLEKS                       R47 R46 K80 ["options"]
      466 NEWCLOSURE                       R47 P11
      467 CAPTURE                          VAL R1
      468 CAPTURE                          VAL R16
      469 CAPTURE                          VAL R17
      470 SETTABLEKS                       R47 R46 K81 ["onActivated"]
      472 CALL                             R44 2 1
      473 JUMP                             ; [+1]
      474 LOADNIL                          R44
      475 SETTABLEKS                       R44 R43 K64 ["ToggleView"]
      477 CALL                             R40 3 1
      478 SETTABLEKS                       R40 R39 K54 ["DropdownControls"]
      480 CALL                             R36 3 1
      481 SETTABLEKS                       R36 R35 K38 ["Controls"]
      483 GETUPVAL                         R36 11
      484 GETTABLEKS                       R36 R36 K13 ["createElement"]
      486 GETUPVAL                         R37 25
      487 DUPTABLE                         R38 K86 [{["LayoutOrder"], ["tag"] = "fill size-full"}]
      488 MOVE                             R39 R27
      489 CALL                             R39 0 1
      490 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      492 GETUPVAL                         R39 11
      493 GETTABLEKS                       R39 R39 K13 ["createElement"]
      495 GETTABLEKS                       R41 R0 K4 ["Tabs"]
      497 GETTABLE                         R40 R41 R4
      498 GETTABLEKS                       R40 R40 K39 ["PageComponent"]
      500 DUPTABLE                         R41 K95 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      501 JUMPIFNOT                        R16 ; [+2]
      502 GETUPVAL                         R42 26
      503 JUMP                             ; [+5]
      504 GETUPVAL                         R43 7
      505 JUMPIFNOT                        R43 ; [+2]
      506 GETUPVAL                         R42 27
      507 JUMP                             ; [+1]
      508 GETUPVAL                         R42 28
      509 SETTABLEKS                       R42 R41 K87 ["DisplayComponent"]
      511 SETTABLEKS                       R19 R41 K5 ["Dropdowns"]
      513 NEWCLOSURE                       R42 P12
      514 CAPTURE                          UPVAL U11
      515 CAPTURE                          UPVAL U29
      516 CAPTURE                          UPVAL U9
      517 CAPTURE                          VAL R8
      518 CAPTURE                          VAL R3
      519 CAPTURE                          VAL R0
      520 CAPTURE                          VAL R4
      521 SETTABLEKS                       R42 R41 K88 ["NoContentDisplayComponent"]
      523 NOT                              R42 R16
      524 JUMPIFNOT                        R42 ; [+4]
      525 MOVE                             R42 R19
      526 JUMPIFNOT                        R42 ; [+2]
      527 GETTABLEKS                       R42 R19 K6 ["SortDropdown"]
      529 SETTABLEKS                       R42 R41 K89 ["CanDisplayComponentAdjustQuery"]
      531 JUMPIF                           R16 ; [+3]
      532 NEWCLOSURE                       R42 P13
      533 CAPTURE                          VAL R7
      534 JUMP                             ; [+1]
      535 LOADNIL                          R42
      536 SETTABLEKS                       R42 R41 K90 ["DisplayComponentHasAdjustedQuery"]
      538 DUPCLOSURE                       R42 K96 [PROTO_16]
      539 SETTABLEKS                       R42 R41 K91 ["InitialContentHasLoaded"]
      541 GETTABLEKS                       R42 R0 K92 ["CellSize"]
      543 SETTABLEKS                       R42 R41 K92 ["CellSize"]
      545 GETUPVAL                         R42 30
      546 SETTABLEKS                       R42 R41 K93 ["CellPadding"]
      548 SETTABLEKS                       R26 R41 K94 ["BaseQuery"]
      550 CALL                             R39 2 -1
      551 CALL                             R36 -1 1
      552 SETTABLEKS                       R36 R35 K39 ["PageComponent"]
      554 CALL                             R32 3 1
      555 SETTABLEKS                       R32 R31 K18 ["Content"]
      557 CALL                             R28 3 -1
      558 CLOSEUPVALS                      R21
      559 RETURN                           R28 -1

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
      210 GETIMPORT                        R31 K5 [require]
      212 GETTABLEKS                       R32 R0 K10 ["Src"]
      214 GETTABLEKS                       R32 R32 K44 ["Hooks"]
      216 GETTABLEKS                       R32 R32 K45 ["useChannelSwitcherDropdown"]
      218 CALL                             R31 1 1
      219 GETTABLEKS                       R32 R9 K19 ["ContextServices"]
      221 GETIMPORT                        R33 K5 [require]
      223 GETTABLEKS                       R34 R0 K10 ["Src"]
      225 GETTABLEKS                       R34 R34 K46 ["Types"]
      227 CALL                             R33 1 1
      228 GETIMPORT                        R34 K5 [require]
      230 GETTABLEKS                       R35 R0 K10 ["Src"]
      232 GETTABLEKS                       R35 R35 K40 ["SharedFlags"]
      234 GETTABLEKS                       R35 R35 K47 ["getFStringLuaStartPageOSDeprecationLink"]
      236 CALL                             R34 1 1
      237 CALL                             R34 0 1
      238 GETIMPORT                        R35 K5 [require]
      240 GETTABLEKS                       R36 R0 K10 ["Src"]
      242 GETTABLEKS                       R36 R36 K40 ["SharedFlags"]
      244 GETTABLEKS                       R36 R36 K48 ["getFFlagIsLuobuBuild"]
      246 CALL                             R35 1 1
      247 GETIMPORT                        R36 K51 [UDim2.fromOffset]
      249 LOADN                            R37 16
      250 LOADN                            R38 16
      251 CALL                             R36 2 1
      252 DUPTABLE                         R37 K58 [{["label"] = "", ["width"], ["size"], ["maxHeight"] = 300}]
      253 GETIMPORT                        R38 K61 [UDim.new]
      255 LOADN                            R39 0
      256 LOADN                            R40 186
      257 CALL                             R38 2 1
      258 SETTABLEKS                       R38 R37 K54 ["width"]
      260 GETTABLEKS                       R38 R21 K62 ["Small"]
      262 SETTABLEKS                       R38 R37 K55 ["size"]
      264 NEWTABLE                         R38 0 2
      266 DUPTABLE                         R39 K66 [{["id"] = "grid", ["name"]}]
      267 GETTABLEKS                       R40 R22 K22 ["Grid"]
      269 SETTABLEKS                       R40 R39 K65 ["name"]
      271 DUPTABLE                         R40 K68 [{["id"] = "list", ["name"]}]
      272 GETTABLEKS                       R41 R22 K69 ["ListBulleted"]
      274 SETTABLEKS                       R41 R40 K65 ["name"]
      276 SETLIST                          R38 R39 2 [1]
      278 DUPCLOSURE                       R39 K70 [PROTO_1]
      279 CAPTURE                          VAL R7
      280 DUPCLOSURE                       R40 K71 [PROTO_2]
      281 DUPCLOSURE                       R41 K72 [PROTO_17]
      282 CAPTURE                          VAL R32
      283 CAPTURE                          VAL R23
      284 CAPTURE                          VAL R11
      285 CAPTURE                          VAL R2
      286 CAPTURE                          VAL R3
      287 CAPTURE                          VAL R5
      288 CAPTURE                          VAL R31
      289 CAPTURE                          VAL R28
      290 CAPTURE                          VAL R7
      291 CAPTURE                          VAL R8
      292 CAPTURE                          VAL R10
      293 CAPTURE                          VAL R1
      294 CAPTURE                          VAL R19
      295 CAPTURE                          VAL R14
      296 CAPTURE                          VAL R35
      297 CAPTURE                          VAL R34
      298 CAPTURE                          VAL R16
      299 CAPTURE                          VAL R26
      300 CAPTURE                          VAL R24
      301 CAPTURE                          VAL R25
      302 CAPTURE                          VAL R20
      303 CAPTURE                          VAL R6
      304 CAPTURE                          VAL R37
      305 CAPTURE                          VAL R15
      306 CAPTURE                          VAL R38
      307 CAPTURE                          VAL R17
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R27
      311 CAPTURE                          VAL R30
      312 CAPTURE                          VAL R36
      313 RETURN                           R41 1
