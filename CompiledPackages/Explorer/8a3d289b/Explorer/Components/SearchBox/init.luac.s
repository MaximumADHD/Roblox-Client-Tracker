PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETTABLEKS                       R1 R0 K1 ["Text"]
        6 JUMPIFNOTEQKS                    R1 K2 [""] ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K3 ["Syntax"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+3]
        5 MOVE                             R4 R3
        6 CALL                             R4 0 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R4 R2 K0 ["KeyCode"]
       10 GETIMPORT                        R5 K3 [Enum.KeyCode.Return]
       12 JUMPIFNOTEQ                      R4 R5 ; [+13]
       14 GETUPVAL                         R4 2
       15 JUMPIFEQKNIL                     R4 ; [+10]
       17 MOVE                             R4 R3
       18 CALL                             R4 0 0
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K4 ["current"]
       22 NAMECALL                         R4 R4 K5 ["Fire"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 4
       27 LOADNIL                          R5
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+27]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["current"]
        7 GETTABLEKS                       R4 R4 K1 ["Text"]
        9 LOADN                            R6 1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K2 ["X"]
       13 NAMECALL                         R4 R4 K3 ["sub"]
       15 CALL                             R4 3 1
       16 MOVE                             R2 R4
       17 MOVE                             R3 R0
       18 CONCAT                           R1 R2 R3
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["current"]
       22 SETTABLEKS                       R1 R2 K1 ["Text"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["current"]
       27 LENGTH                           R4 R1
       28 ADDK                             R3 R4 K4 [1]
       29 SETTABLEKS                       R3 R2 K5 ["CursorPosition"]
       31 GETUPVAL                         R1 2
       32 GETUPVAL                         R3 3
       33 JUMPIFEQKS                       R3 K6 ["Suggestions"] ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 3
       39 JUMPIFEQKS                       R1 K7 ["Syntax"] ; [+4]
       41 GETUPVAL                         R1 4
       42 LOADNIL                          R2
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R3 R0 K0 ["IsFocused"]
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 LENGTH                           R3 R2
        6 LOADN                            R4 0
        7 JUMPIFNOTLT                      R4 R3 ; [+8]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 1
       13 LOADK                            R4 K1 ["Suggestions"]
       14 CALL                             R3 1 0
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R3 1
       17 LOADNIL                          R4
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R1
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R0 K2 ["Text"]
       24 JUMPIFNOTEQKS                    R3 K3 [""] ; [+6]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K4 ["disable"]
       29 CALL                             R3 0 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K5 ["enable"]
       34 CALL                             R3 0 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["History"] ; [+5]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 LOADK                            R2 K0 ["History"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Settings"] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADK                            R1 K0 ["Settings"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Suggestions"] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+12]
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K0 ["getValue"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 LOADK                            R2 K1 ["Suggestions"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["useState"]
       10 LOADNIL                          R5
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["useBinding"]
       15 LOADB                            R7 0
       16 CALL                             R6 1 2
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K0 ["useState"]
       20 NEWTABLE                         R9 0 0
       22 CALL                             R8 1 2
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K0 ["useState"]
       26 GETIMPORT                        R11 K4 [Vector2.new]
       28 LOADN                            R12 0
       29 LOADN                            R13 0
       30 CALL                             R11 2 -1
       31 CALL                             R10 -1 2
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R12 R12 K0 ["useState"]
       35 NEWTABLE                         R13 0 0
       37 CALL                             R12 1 2
       38 GETUPVAL                         R14 1
       39 GETTABLEKS                       R14 R14 K5 ["useRef"]
       41 LOADNIL                          R15
       42 CALL                             R14 1 1
       43 GETUPVAL                         R15 1
       44 GETTABLEKS                       R15 R15 K5 ["useRef"]
       46 LOADNIL                          R16
       47 CALL                             R15 1 1
       48 GETUPVAL                         R16 1
       49 GETTABLEKS                       R16 R16 K5 ["useRef"]
       51 LOADNIL                          R17
       52 CALL                             R16 1 1
       53 GETUPVAL                         R17 1
       54 GETTABLEKS                       R17 R17 K5 ["useRef"]
       56 LOADNIL                          R18
       57 CALL                             R17 1 1
       58 GETUPVAL                         R18 1
       59 GETTABLEKS                       R18 R18 K5 ["useRef"]
       61 GETUPVAL                         R19 2
       62 GETTABLEKS                       R19 R19 K3 ["new"]
       64 CALL                             R19 0 -1
       65 CALL                             R18 -1 1
       66 GETUPVAL                         R19 3
       67 GETTABLEKS                       R20 R0 K6 ["session"]
       69 MOVE                             R21 R14
       70 NEWCLOSURE                       R22 P0
       71 CAPTURE                          VAL R3
       72 CALL                             R19 3 0
       73 GETUPVAL                         R19 1
       74 GETTABLEKS                       R19 R19 K7 ["useCallback"]
       76 NEWCLOSURE                       R20 P1
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R3
       79 NEWTABLE                         R21 0 1
       81 MOVE                             R22 R14
       82 SETLIST                          R21 R22 1 [1]
       84 CALL                             R19 2 1
       85 GETUPVAL                         R20 1
       86 GETTABLEKS                       R20 R20 K7 ["useCallback"]
       88 NEWCLOSURE                       R21 P2
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R3
       94 NEWTABLE                         R22 0 3
       96 GETUPVAL                         R23 4
       97 MOVE                             R24 R15
       98 MOVE                             R25 R4
       99 SETLIST                          R22 R23 3 [1]
      101 CALL                             R20 2 1
      102 GETUPVAL                         R21 1
      103 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      105 NEWCLOSURE                       R22 P3
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 NEWTABLE                         R23 0 3
      113 MOVE                             R24 R14
      114 MOVE                             R25 R10
      115 MOVE                             R26 R2
      116 SETLIST                          R23 R24 3 [1]
      118 CALL                             R21 2 1
      119 GETUPVAL                         R22 1
      120 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      122 NEWCLOSURE                       R23 P4
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R1
      127 NEWTABLE                         R24 0 0
      129 CALL                             R22 2 1
      130 GETUPVAL                         R23 1
      131 GETTABLEKS                       R23 R23 K7 ["useCallback"]
      133 NEWCLOSURE                       R24 P5
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R13
      137 NEWTABLE                         R25 0 1
      139 MOVE                             R26 R2
      140 SETLIST                          R25 R26 1 [1]
      142 CALL                             R23 2 1
      143 GETUPVAL                         R24 1
      144 GETTABLEKS                       R24 R24 K7 ["useCallback"]
      146 NEWCLOSURE                       R25 P6
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R3
      149 NEWTABLE                         R26 0 1
      151 MOVE                             R27 R2
      152 SETLIST                          R26 R27 1 [1]
      154 CALL                             R24 2 1
      155 GETUPVAL                         R25 1
      156 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      158 NEWCLOSURE                       R26 P7
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R5
      161 NEWTABLE                         R27 0 2
      163 MOVE                             R28 R2
      164 MOVE                             R29 R8
      165 SETLIST                          R27 R28 2 [1]
      167 CALL                             R25 2 0
      168 GETUPVAL                         R25 5
      169 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      171 GETTABLEKS                       R26 R0 K6 ["session"]
      173 GETTABLEKS                       R26 R26 K9 ["searchSuggestionsObservable"]
      175 NEWCLOSURE                       R27 P8
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R7
      180 NEWTABLE                         R28 0 0
      182 CALL                             R25 3 0
      183 GETUPVAL                         R25 6
      184 CALL                             R25 0 1
      185 GETUPVAL                         R26 7
      186 LOADK                            R27 K10 ["Frame"]
      187 NEWTABLE                         R28 2 0
      189 GETTABLEKS                       R29 R0 K11 ["zIndex"]
      191 SETTABLEKS                       R29 R28 K12 ["ZIndex"]
      193 GETUPVAL                         R29 1
      194 GETTABLEKS                       R29 R29 K13 ["Tag"]
      196 LOADK                            R30 K14 ["Explorer-SearchBox"]
      197 SETTABLE                         R30 R28 R29
      198 DUPTABLE                         R29 K17 [{"SearchHeader", "ClickYoinker"}]
      199 GETUPVAL                         R30 7
      200 LOADK                            R31 K10 ["Frame"]
      201 NEWTABLE                         R32 4 0
      203 LOADN                            R33 1
      204 SETTABLEKS                       R33 R32 K18 ["BackgroundTransparency"]
      206 GETTABLEKS                       R33 R0 K19 ["headerRef"]
      208 SETTABLEKS                       R33 R32 K20 ["ref"]
      210 GETUPVAL                         R33 1
      211 GETTABLEKS                       R33 R33 K21 ["Change"]
      213 GETTABLEKS                       R33 R33 K22 ["AbsoluteSize"]
      215 GETTABLEKS                       R34 R0 K23 ["onSearchHeaderSizeChange"]
      217 SETTABLE                         R34 R32 R33
      218 GETUPVAL                         R33 1
      219 GETTABLEKS                       R33 R33 K13 ["Tag"]
      221 LOADK                            R34 K24 ["X-Center X-FitY"]
      222 SETTABLE                         R34 R32 R33
      223 DUPTABLE                         R33 K30 [{"Spacing", "Padding", "SearchBarRow", "SearchBrowser", "BottomBorder"}]
      224 GETUPVAL                         R34 7
      225 LOADK                            R35 K31 ["UIListLayout"]
      226 DUPTABLE                         R36 K34 [{"Padding", "FillDirection", "SortOrder"}]
      227 GETIMPORT                        R37 K36 [UDim.new]
      229 LOADN                            R38 0
      230 GETUPVAL                         R39 8
      231 GETTABLEKS                       R39 R39 K37 ["searchBarPadding"]
      233 CALL                             R37 2 1
      234 SETTABLEKS                       R37 R36 K26 ["Padding"]
      236 GETIMPORT                        R37 K40 [Enum.FillDirection.Vertical]
      238 SETTABLEKS                       R37 R36 K32 ["FillDirection"]
      240 GETIMPORT                        R37 K42 [Enum.SortOrder.LayoutOrder]
      242 SETTABLEKS                       R37 R36 K33 ["SortOrder"]
      244 CALL                             R34 2 1
      245 SETTABLEKS                       R34 R33 K25 ["Spacing"]
      247 GETUPVAL                         R34 7
      248 LOADK                            R35 K43 ["UIPadding"]
      249 DUPTABLE                         R36 K47 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      250 GETIMPORT                        R37 K36 [UDim.new]
      252 LOADN                            R38 0
      253 GETUPVAL                         R39 8
      254 GETTABLEKS                       R39 R39 K37 ["searchBarPadding"]
      256 CALL                             R37 2 1
      257 SETTABLEKS                       R37 R36 K44 ["PaddingLeft"]
      259 GETIMPORT                        R37 K36 [UDim.new]
      261 LOADN                            R38 0
      262 GETUPVAL                         R39 8
      263 GETTABLEKS                       R39 R39 K37 ["searchBarPadding"]
      265 CALL                             R37 2 1
      266 SETTABLEKS                       R37 R36 K45 ["PaddingRight"]
      268 GETIMPORT                        R37 K36 [UDim.new]
      270 LOADN                            R38 0
      271 GETUPVAL                         R39 8
      272 GETTABLEKS                       R39 R39 K37 ["searchBarPadding"]
      274 CALL                             R37 2 1
      275 SETTABLEKS                       R37 R36 K46 ["PaddingTop"]
      277 CALL                             R34 2 1
      278 SETTABLEKS                       R34 R33 K26 ["Padding"]
      280 GETUPVAL                         R34 7
      281 LOADK                            R35 K10 ["Frame"]
      282 NEWTABLE                         R36 4 0
      284 LOADN                            R37 1
      285 SETTABLEKS                       R37 R36 K18 ["BackgroundTransparency"]
      287 MOVE                             R37 R25
      288 CALL                             R37 0 1
      289 SETTABLEKS                       R37 R36 K41 ["LayoutOrder"]
      291 GETIMPORT                        R37 K49 [UDim2.new]
      293 LOADN                            R38 1
      294 LOADN                            R39 0
      295 LOADN                            R40 0
      296 GETUPVAL                         R41 8
      297 GETTABLEKS                       R41 R41 K50 ["searchBarHeight"]
      299 CALL                             R37 4 1
      300 SETTABLEKS                       R37 R36 K51 ["Size"]
      302 GETUPVAL                         R37 1
      303 GETTABLEKS                       R37 R37 K13 ["Tag"]
      305 LOADK                            R38 K52 ["X-RowS X-Middle"]
      306 SETTABLE                         R38 R36 R37
      307 DUPTABLE                         R37 K55 [{"SearchBar", "SettingsButton"}]
      308 GETUPVAL                         R38 7
      309 GETUPVAL                         R39 9
      310 DUPTABLE                         R40 K64 [{"layoutOrder", "onFocused", "onFocusLost", "onTextBoxChanged", "onSearchHistoryButtonClicked", "searchBarRef", "session", "textBoxRef", "windowHoveredObservable"}]
      311 MOVE                             R41 R25
      312 CALL                             R41 0 1
      313 SETTABLEKS                       R41 R40 K56 ["layoutOrder"]
      315 SETTABLEKS                       R19 R40 K57 ["onFocused"]
      317 SETTABLEKS                       R20 R40 K58 ["onFocusLost"]
      319 SETTABLEKS                       R22 R40 K59 ["onTextBoxChanged"]
      321 SETTABLEKS                       R23 R40 K60 ["onSearchHistoryButtonClicked"]
      323 SETTABLEKS                       R16 R40 K61 ["searchBarRef"]
      325 GETTABLEKS                       R41 R0 K6 ["session"]
      327 SETTABLEKS                       R41 R40 K6 ["session"]
      329 SETTABLEKS                       R14 R40 K62 ["textBoxRef"]
      331 GETTABLEKS                       R41 R0 K63 ["windowHoveredObservable"]
      333 SETTABLEKS                       R41 R40 K63 ["windowHoveredObservable"]
      335 CALL                             R38 2 1
      336 SETTABLEKS                       R38 R37 K53 ["SearchBar"]
      338 GETUPVAL                         R38 7
      339 LOADK                            R39 K65 ["ImageButton"]
      340 NEWTABLE                         R40 8 0
      342 MOVE                             R41 R25
      343 CALL                             R41 0 1
      344 SETTABLEKS                       R41 R40 K41 ["LayoutOrder"]
      346 GETIMPORT                        R41 K67 [UDim2.fromOffset]
      348 GETUPVAL                         R42 8
      349 GETTABLEKS                       R42 R42 K50 ["searchBarHeight"]
      351 GETUPVAL                         R43 8
      352 GETTABLEKS                       R43 R43 K50 ["searchBarHeight"]
      354 CALL                             R41 2 1
      355 SETTABLEKS                       R41 R40 K51 ["Size"]
      357 SETTABLEKS                       R17 R40 K20 ["ref"]
      359 GETUPVAL                         R41 1
      360 GETTABLEKS                       R41 R41 K68 ["Event"]
      362 GETTABLEKS                       R41 R41 K69 ["MouseButton1Down"]
      364 SETTABLE                         R24 R40 R41
      365 GETUPVAL                         R41 1
      366 GETTABLEKS                       R41 R41 K13 ["Tag"]
      368 LOADK                            R42 K70 ["Explorer-BG-Input Explorer-SearchBox-Corner data-testid=SearchBox-SettingsButton"]
      369 SETTABLE                         R42 R40 R41
      370 DUPTABLE                         R41 K73 [{"Icon", "FocusTracker"}]
      371 GETUPVAL                         R42 7
      372 LOADK                            R43 K74 ["ImageLabel"]
      373 NEWTABLE                         R44 2 0
      375 GETUPVAL                         R45 10
      376 GETTABLEKS                       R45 R45 K75 ["standard"]
      378 LOADK                            R46 K76 ["threeDots"]
      379 CALL                             R45 1 1
      380 SETTABLEKS                       R45 R44 K77 ["Image"]
      382 GETUPVAL                         R45 1
      383 GETTABLEKS                       R45 R45 K13 ["Tag"]
      385 LOADK                            R46 K78 ["X-AnchorCenter Explorer-Icon Explorer-Content-Standard"]
      386 SETTABLE                         R46 R44 R45
      387 CALL                             R42 2 1
      388 SETTABLEKS                       R42 R41 K71 ["Icon"]
      390 GETUPVAL                         R42 7
      391 GETUPVAL                         R43 11
      392 DUPTABLE                         R44 K79 [{"onFocusLost"}]
      393 SETTABLEKS                       R20 R44 K58 ["onFocusLost"]
      395 CALL                             R42 2 1
      396 SETTABLEKS                       R42 R41 K72 ["FocusTracker"]
      398 CALL                             R38 3 1
      399 SETTABLEKS                       R38 R37 K54 ["SettingsButton"]
      401 CALL                             R34 3 1
      402 SETTABLEKS                       R34 R33 K27 ["SearchBarRow"]
      404 GETTABLEKS                       R34 R1 K80 ["enabled"]
      406 JUMPIFNOT                        R34 ; [+12]
      407 GETUPVAL                         R34 7
      408 GETUPVAL                         R35 12
      409 DUPTABLE                         R36 K81 [{"layoutOrder", "session"}]
      410 MOVE                             R37 R25
      411 CALL                             R37 0 1
      412 SETTABLEKS                       R37 R36 K56 ["layoutOrder"]
      414 GETTABLEKS                       R37 R0 K6 ["session"]
      416 SETTABLEKS                       R37 R36 K6 ["session"]
      418 CALL                             R34 2 1
      419 SETTABLEKS                       R34 R33 K28 ["SearchBrowser"]
      421 GETUPVAL                         R34 7
      422 LOADK                            R35 K10 ["Frame"]
      423 NEWTABLE                         R36 2 0
      425 MOVE                             R37 R25
      426 CALL                             R37 0 1
      427 SETTABLEKS                       R37 R36 K41 ["LayoutOrder"]
      429 GETUPVAL                         R37 1
      430 GETTABLEKS                       R37 R37 K13 ["Tag"]
      432 LOADK                            R38 K82 ["Explorer-BG-Input Explorer-SearchBox-BottomBorder"]
      433 SETTABLE                         R38 R36 R37
      434 CALL                             R34 2 1
      435 SETTABLEKS                       R34 R33 K29 ["BottomBorder"]
      437 CALL                             R30 3 1
      438 SETTABLEKS                       R30 R29 K15 ["SearchHeader"]
      440 LOADB                            R30 0
      441 JUMPIFEQKNIL                     R2 ; [+119]
      443 GETUPVAL                         R30 7
      444 LOADK                            R31 K65 ["ImageButton"]
      445 DUPTABLE                         R32 K85 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      446 GETIMPORT                        R33 K67 [UDim2.fromOffset]
      448 LOADN                            R34 0
      449 GETUPVAL                         R35 8
      450 GETTABLEKS                       R35 R35 K86 ["minSearchHeaderHeight"]
      452 CALL                             R33 2 1
      453 SETTABLEKS                       R33 R32 K84 ["Position"]
      455 GETIMPORT                        R33 K49 [UDim2.new]
      457 LOADN                            R34 1
      458 LOADN                            R35 0
      459 LOADN                            R36 0
      460 GETTABLEKS                       R37 R0 K87 ["windowHeight"]
      462 CALL                             R33 4 1
      463 SETTABLEKS                       R33 R32 K51 ["Size"]
      465 DUPTABLE                         R33 K92 [{"HistoryDropdown", "SuggestionsDropdown", "SyntaxDropdown", "SettingsDropdown"}]
      466 LOADB                            R34 0
      467 JUMPIFNOTEQKS                    R2 K93 ["History"] ; [+21]
      469 GETUPVAL                         R34 7
      470 GETUPVAL                         R35 13
      471 DUPTABLE                         R36 K100 [{"dropdownRef", "enterPressedSignalRef", "onItemClicked", "searchHistory", "selectedItemIndex", "setSelectedItemIndex", "session"}]
      472 SETTABLEKS                       R15 R36 K94 ["dropdownRef"]
      474 SETTABLEKS                       R18 R36 K95 ["enterPressedSignalRef"]
      476 SETTABLEKS                       R21 R36 K96 ["onItemClicked"]
      478 SETTABLEKS                       R12 R36 K97 ["searchHistory"]
      480 SETTABLEKS                       R4 R36 K98 ["selectedItemIndex"]
      482 SETTABLEKS                       R5 R36 K99 ["setSelectedItemIndex"]
      484 GETTABLEKS                       R37 R0 K6 ["session"]
      486 SETTABLEKS                       R37 R36 K6 ["session"]
      488 CALL                             R34 2 1
      489 SETTABLEKS                       R34 R33 K88 ["HistoryDropdown"]
      491 LOADB                            R34 0
      492 JUMPIFNOTEQKS                    R2 K101 ["Suggestions"] ; [+21]
      494 GETUPVAL                         R34 7
      495 GETUPVAL                         R35 14
      496 DUPTABLE                         R36 K103 [{"dropdownRef", "enterPressedSignalRef", "onItemClicked", "selectedItemIndex", "setSelectedItemIndex", "suggestions", "session"}]
      497 SETTABLEKS                       R15 R36 K94 ["dropdownRef"]
      499 SETTABLEKS                       R18 R36 K95 ["enterPressedSignalRef"]
      501 SETTABLEKS                       R21 R36 K96 ["onItemClicked"]
      503 SETTABLEKS                       R4 R36 K98 ["selectedItemIndex"]
      505 SETTABLEKS                       R5 R36 K99 ["setSelectedItemIndex"]
      507 SETTABLEKS                       R8 R36 K102 ["suggestions"]
      509 GETTABLEKS                       R37 R0 K6 ["session"]
      511 SETTABLEKS                       R37 R36 K6 ["session"]
      513 CALL                             R34 2 1
      514 SETTABLEKS                       R34 R33 K89 ["SuggestionsDropdown"]
      516 LOADB                            R34 0
      517 JUMPIFNOTEQKS                    R2 K104 ["Syntax"] ; [+19]
      519 GETUPVAL                         R34 7
      520 GETUPVAL                         R35 15
      521 DUPTABLE                         R36 K105 [{"dropdownRef", "enterPressedSignalRef", "onItemClicked", "selectedItemIndex", "setSelectedItemIndex", "session"}]
      522 SETTABLEKS                       R15 R36 K94 ["dropdownRef"]
      524 SETTABLEKS                       R18 R36 K95 ["enterPressedSignalRef"]
      526 SETTABLEKS                       R21 R36 K96 ["onItemClicked"]
      528 SETTABLEKS                       R4 R36 K98 ["selectedItemIndex"]
      530 SETTABLEKS                       R5 R36 K99 ["setSelectedItemIndex"]
      532 GETTABLEKS                       R37 R0 K6 ["session"]
      534 SETTABLEKS                       R37 R36 K6 ["session"]
      536 CALL                             R34 2 1
      537 SETTABLEKS                       R34 R33 K90 ["SyntaxDropdown"]
      539 LOADB                            R34 0
      540 JUMPIFNOTEQKS                    R2 K106 ["Settings"] ; [+17]
      542 GETUPVAL                         R34 7
      543 GETUPVAL                         R35 16
      544 DUPTABLE                         R36 K107 [{"dropdownRef", "enterPressedSignalRef", "selectedItemIndex", "setSelectedItemIndex", "session"}]
      545 SETTABLEKS                       R15 R36 K94 ["dropdownRef"]
      547 SETTABLEKS                       R18 R36 K95 ["enterPressedSignalRef"]
      549 SETTABLEKS                       R4 R36 K98 ["selectedItemIndex"]
      551 SETTABLEKS                       R5 R36 K99 ["setSelectedItemIndex"]
      553 GETTABLEKS                       R37 R0 K6 ["session"]
      555 SETTABLEKS                       R37 R36 K6 ["session"]
      557 CALL                             R34 2 1
      558 SETTABLEKS                       R34 R33 K91 ["SettingsDropdown"]
      560 CALL                             R30 3 1
      561 SETTABLEKS                       R30 R29 K16 ["ClickYoinker"]
      563 CALL                             R26 3 -1
      564 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["SearchBox"]
       20 GETTABLEKS                       R3 R3 K10 ["FocusTracker"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K9 ["SearchBox"]
       29 GETTABLEKS                       R4 R4 K11 ["HistoryDropdown"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["ImageUrl"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["Observable"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Parent"]
       50 GETTABLEKS                       R7 R7 K15 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Parent"]
       57 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["RpcTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Components"]
       69 GETTABLEKS                       R10 R10 K9 ["SearchBox"]
       71 GETTABLEKS                       R10 R10 K18 ["SearchBar"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K8 ["Components"]
       78 GETTABLEKS                       R11 R11 K9 ["SearchBox"]
       80 GETTABLEKS                       R11 R11 K19 ["SearchBrowser"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K8 ["Components"]
       87 GETTABLEKS                       R12 R12 K9 ["SearchBox"]
       89 GETTABLEKS                       R12 R12 K20 ["SettingsDropdown"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K14 ["Parent"]
       96 GETTABLEKS                       R13 R13 K21 ["Signal"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K8 ["Components"]
      103 GETTABLEKS                       R14 R14 K9 ["SearchBox"]
      105 GETTABLEKS                       R14 R14 K22 ["SuggestionsDropdown"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K8 ["Components"]
      112 GETTABLEKS                       R15 R15 K9 ["SearchBox"]
      114 GETTABLEKS                       R15 R15 K23 ["SyntaxDropdown"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K6 ["Util"]
      121 GETTABLEKS                       R16 R16 K24 ["createNextOrder"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K6 ["Util"]
      128 GETTABLEKS                       R17 R17 K25 ["isRefClicked"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      135 GETTABLEKS                       R18 R18 K27 ["useArrowKeys"]
      137 CALL                             R17 1 1
      138 GETTABLEKS                       R18 R7 K28 ["useToggleState"]
      140 GETTABLEKS                       R19 R6 K29 ["createElement"]
      142 DUPCLOSURE                       R20 K30 [PROTO_9]
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R11
      160 RETURN                           R20 1
