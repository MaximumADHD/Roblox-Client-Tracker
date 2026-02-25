PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R5 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R4 R5 K1 ["Y"]
        5 GETTABLEKS                       R6 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R6 K1 ["Y"]
        9 ADD                              R3 R4 R5
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K3 ["paddingSmall"]
       13 SUB                              R2 R3 R4
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETTABLEKS                       R1 R0 K1 ["Text"]
        6 JUMPIFNOTEQKS                    R1 K2 [""] ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K3 ["History"]
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
        8 GETUPVAL                         R4 2
        9 LOADNIL                          R5
       10 CALL                             R4 1 0
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K0 ["disable"]
       14 CALL                             R4 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["Text"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 LENGTH                           R3 R0
       13 ADDK                             R2 R3 K2 [1]
       14 SETTABLEKS                       R2 R1 K3 ["CursorPosition"]
       16 GETUPVAL                         R1 1
       17 LOADNIL                          R2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["IsFocused"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETUPVAL                         R7 0
        8 JUMPIFEQ                         R6 R7 ; [+8]
       10 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 [inext] ; [-11]
       19 LOADN                            R4 1
       20 GETUPVAL                         R5 0
       21 FASTCALL3                        TABLE_INSERT R1 R4 R5
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K4 [table.insert]
       26 CALL                             R2 3 0
       27 LENGTH                           R2 R1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K5 ["MAX_SEARCH_HISTORY_QUERIES"]
       31 JUMPIFNOTLT                      R3 R2 ; [+6]
       33 GETIMPORT                        R2 K7 [table.remove]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 JUMPBACK                         ; [-11]
       38 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R3 1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["MAX_SEARCH_HISTORY_LENGTH"]
        4 NAMECALL                         R1 R0 K1 ["sub"]
        6 CALL                             R1 3 1
        7 MOVE                             R0 R1
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U0
       12 CALL                             R1 1 0
       13 CLOSEUPVALS                      R0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Settings"] ; [+9]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["disable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 LOADK                            R1 K0 ["Settings"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K2 ["enable"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K1 ["useToggleState"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K1 ["useToggleState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["useState"]
       20 NEWTABLE                         R7 0 0
       22 CALL                             R6 1 2
       23 GETTABLEKS                       R8 R0 K2 ["textBoxRef"]
       25 JUMPIF                           R8 ; [+5]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K3 ["useRef"]
       29 LOADNIL                          R9
       30 CALL                             R8 1 1
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R9 R10 K3 ["useRef"]
       34 LOADNIL                          R10
       35 CALL                             R9 1 1
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R10 R11 K3 ["useRef"]
       39 LOADNIL                          R11
       40 CALL                             R10 1 1
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R11 R12 K3 ["useRef"]
       44 LOADNIL                          R12
       45 CALL                             R11 1 1
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R12 R13 K0 ["useState"]
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R13 R14 K4 ["minSearchHeaderHeight"]
       52 CALL                             R12 1 2
       53 GETUPVAL                         R15 1
       54 GETTABLEKS                       R14 R15 K5 ["useCallback"]
       56 NEWCLOSURE                       R15 P0
       57 CAPTURE                          VAL R13
       58 CAPTURE                          UPVAL U3
       59 NEWTABLE                         R16 0 0
       61 CALL                             R14 2 1
       62 GETUPVAL                         R16 1
       63 GETTABLEKS                       R15 R16 K5 ["useCallback"]
       65 NEWCLOSURE                       R16 P1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R3
       68 NEWTABLE                         R17 0 1
       70 MOVE                             R18 R8
       71 SETLIST                          R17 R18 1 [1]
       73 CALL                             R15 2 1
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R16 R17 K5 ["useCallback"]
       77 NEWCLOSURE                       R17 P2
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 NEWTABLE                         R18 0 2
       84 GETUPVAL                         R19 4
       85 MOVE                             R20 R9
       86 SETLIST                          R18 R19 2 [1]
       88 CALL                             R16 2 1
       89 GETUPVAL                         R18 1
       90 GETTABLEKS                       R17 R18 K5 ["useCallback"]
       92 NEWCLOSURE                       R18 P3
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 NEWTABLE                         R19 0 2
       97 MOVE                             R20 R8
       98 MOVE                             R21 R2
       99 SETLIST                          R19 R20 2 [1]
      101 CALL                             R17 2 1
      102 GETUPVAL                         R19 1
      103 GETTABLEKS                       R18 R19 K5 ["useCallback"]
      105 NEWCLOSURE                       R19 P4
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R20 0 0
      109 CALL                             R18 2 1
      110 GETUPVAL                         R20 1
      111 GETTABLEKS                       R19 R20 K5 ["useCallback"]
      113 NEWCLOSURE                       R20 P5
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R7
      116 NEWTABLE                         R21 0 0
      118 CALL                             R19 2 1
      119 GETUPVAL                         R21 1
      120 GETTABLEKS                       R20 R21 K5 ["useCallback"]
      122 NEWCLOSURE                       R21 P6
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R5
      126 NEWTABLE                         R22 0 1
      128 MOVE                             R23 R2
      129 SETLIST                          R22 R23 1 [1]
      131 CALL                             R20 2 1
      132 GETUPVAL                         R21 6
      133 LOADK                            R22 K6 ["Frame"]
      134 NEWTABLE                         R23 4 0
      136 GETTABLEKS                       R24 R0 K7 ["LayoutOrder"]
      138 SETTABLEKS                       R24 R23 K7 ["LayoutOrder"]
      140 GETTABLEKS                       R24 R0 K8 ["Visible"]
      142 SETTABLEKS                       R24 R23 K8 ["Visible"]
      144 GETUPVAL                         R26 1
      145 GETTABLEKS                       R25 R26 K9 ["Change"]
      147 GETTABLEKS                       R24 R25 K10 ["AbsolutePosition"]
      149 SETTABLE                         R14 R23 R24
      150 GETUPVAL                         R25 1
      151 GETTABLEKS                       R24 R25 K11 ["Tag"]
      153 LOADK                            R25 K12 ["FindReplaceAll-SearchBox X-Column X-Center X-FitY data-testid=SearchBoxFrame"]
      154 SETTABLE                         R25 R23 R24
      155 DUPTABLE                         R24 K15 [{"SearchBarRow", "Dropdowns"}]
      156 GETUPVAL                         R25 6
      157 LOADK                            R26 K6 ["Frame"]
      158 NEWTABLE                         R27 4 0
      160 LOADN                            R28 1
      161 SETTABLEKS                       R28 R27 K16 ["BackgroundTransparency"]
      163 MOVE                             R28 R1
      164 CALL                             R28 0 1
      165 SETTABLEKS                       R28 R27 K7 ["LayoutOrder"]
      167 GETIMPORT                        R28 K19 [UDim2.new]
      169 LOADN                            R29 1
      170 LOADN                            R30 0
      171 LOADN                            R31 0
      172 GETUPVAL                         R33 3
      173 GETTABLEKS                       R32 R33 K20 ["searchBarHeight"]
      175 CALL                             R28 4 1
      176 SETTABLEKS                       R28 R27 K21 ["Size"]
      178 GETUPVAL                         R29 1
      179 GETTABLEKS                       R28 R29 K11 ["Tag"]
      181 LOADK                            R29 K22 ["X-RowS X-Middle data-testid=SearchBarRowFrame"]
      182 SETTABLE                         R29 R27 R28
      183 DUPTABLE                         R28 K25 [{"SearchBar", "SettingsButton"}]
      184 GETUPVAL                         R29 6
      185 GETUPVAL                         R30 7
      186 DUPTABLE                         R31 K39 [{"layoutOrder", "onFocused", "onFocusLost", "onTextBoxChanged", "onUpdateSearchHistory", "searchBarRef", "onSearchbarTextChanged", "textBoxRef", "searchBarPlaceholderText", "searchBarToggleOptions", "searchBarLeftIcon", "hasError", "initialSearchText", "onSearchRequested"}]
      187 MOVE                             R32 R1
      188 CALL                             R32 0 1
      189 SETTABLEKS                       R32 R31 K26 ["layoutOrder"]
      191 SETTABLEKS                       R15 R31 K27 ["onFocused"]
      193 SETTABLEKS                       R16 R31 K28 ["onFocusLost"]
      195 SETTABLEKS                       R18 R31 K29 ["onTextBoxChanged"]
      197 SETTABLEKS                       R19 R31 K30 ["onUpdateSearchHistory"]
      199 SETTABLEKS                       R10 R31 K31 ["searchBarRef"]
      201 GETTABLEKS                       R32 R0 K32 ["onSearchbarTextChanged"]
      203 SETTABLEKS                       R32 R31 K32 ["onSearchbarTextChanged"]
      205 SETTABLEKS                       R8 R31 K2 ["textBoxRef"]
      207 GETTABLEKS                       R32 R0 K33 ["searchBarPlaceholderText"]
      209 SETTABLEKS                       R32 R31 K33 ["searchBarPlaceholderText"]
      211 GETTABLEKS                       R32 R0 K34 ["searchBarToggleOptions"]
      213 SETTABLEKS                       R32 R31 K34 ["searchBarToggleOptions"]
      215 GETTABLEKS                       R32 R0 K35 ["searchBarLeftIcon"]
      217 SETTABLEKS                       R32 R31 K35 ["searchBarLeftIcon"]
      219 GETTABLEKS                       R32 R0 K36 ["hasError"]
      221 SETTABLEKS                       R32 R31 K36 ["hasError"]
      223 GETTABLEKS                       R32 R0 K40 ["searchText"]
      225 SETTABLEKS                       R32 R31 K37 ["initialSearchText"]
      227 GETTABLEKS                       R32 R0 K38 ["onSearchRequested"]
      229 SETTABLEKS                       R32 R31 K38 ["onSearchRequested"]
      231 CALL                             R29 2 1
      232 SETTABLEKS                       R29 R28 K23 ["SearchBar"]
      234 GETTABLEKS                       R29 R0 K41 ["settingsDropdownItemData"]
      236 JUMPIFNOT                        R29 ; [+76]
      237 GETUPVAL                         R29 6
      238 LOADK                            R30 K42 ["ImageButton"]
      239 NEWTABLE                         R31 8 0
      241 MOVE                             R32 R1
      242 CALL                             R32 0 1
      243 SETTABLEKS                       R32 R31 K7 ["LayoutOrder"]
      245 SETTABLEKS                       R11 R31 K43 ["ref"]
      247 GETTABLEKS                       R33 R4 K44 ["enabled"]
      249 JUMPIFNOT                        R33 ; [+4]
      250 GETUPVAL                         R33 3
      251 GETTABLEKS                       R32 R33 K45 ["hoveredTransparency"]
      253 JUMP                             ; [+8]
      254 GETTABLEKS                       R33 R5 K44 ["enabled"]
      256 JUMPIFNOT                        R33 ; [+4]
      257 GETUPVAL                         R33 3
      258 GETTABLEKS                       R32 R33 K46 ["pressedTransparency"]
      260 JUMP                             ; [+1]
      261 LOADNIL                          R32
      262 SETTABLEKS                       R32 R31 K16 ["BackgroundTransparency"]
      264 GETUPVAL                         R34 1
      265 GETTABLEKS                       R33 R34 K47 ["Event"]
      267 GETTABLEKS                       R32 R33 K48 ["MouseButton1Down"]
      269 SETTABLE                         R20 R31 R32
      270 GETUPVAL                         R34 1
      271 GETTABLEKS                       R33 R34 K47 ["Event"]
      273 GETTABLEKS                       R32 R33 K49 ["MouseEnter"]
      275 GETTABLEKS                       R33 R4 K50 ["enable"]
      277 SETTABLE                         R33 R31 R32
      278 GETUPVAL                         R34 1
      279 GETTABLEKS                       R33 R34 K47 ["Event"]
      281 GETTABLEKS                       R32 R33 K51 ["MouseLeave"]
      283 GETTABLEKS                       R33 R4 K52 ["disable"]
      285 SETTABLE                         R33 R31 R32
      286 GETUPVAL                         R33 1
      287 GETTABLEKS                       R32 R33 K11 ["Tag"]
      289 LOADK                            R33 K53 ["FindReplaceAll-BG-Input FindReplaceAll-SearchBox-Corner data-testid=SearchBox-SettingsButton"]
      290 SETTABLE                         R33 R31 R32
      291 DUPTABLE                         R32 K56 [{"Icon", "FocusTracker"}]
      292 GETUPVAL                         R33 6
      293 LOADK                            R34 K57 ["ImageLabel"]
      294 NEWTABLE                         R35 1 0
      296 GETUPVAL                         R37 1
      297 GETTABLEKS                       R36 R37 K11 ["Tag"]
      299 LOADK                            R37 K58 ["X-AnchorCenter FindReplaceAll-Icon FindReplaceAll-Content-Standard ThreeDotsIcon"]
      300 SETTABLE                         R37 R35 R36
      301 CALL                             R33 2 1
      302 SETTABLEKS                       R33 R32 K54 ["Icon"]
      304 GETUPVAL                         R33 6
      305 GETUPVAL                         R34 8
      306 DUPTABLE                         R35 K59 [{"onFocusLost"}]
      307 SETTABLEKS                       R16 R35 K28 ["onFocusLost"]
      309 CALL                             R33 2 1
      310 SETTABLEKS                       R33 R32 K55 ["FocusTracker"]
      312 CALL                             R29 3 1
      313 SETTABLEKS                       R29 R28 K24 ["SettingsButton"]
      315 CALL                             R25 3 1
      316 SETTABLEKS                       R25 R24 K13 ["SearchBarRow"]
      318 GETUPVAL                         R25 6
      319 GETUPVAL                         R26 9
      320 DUPTABLE                         R27 K67 [{"dropdownOverlay", "currentDropdown", "dropdownRef", "searchHistory", "settingsDropdownItemData", "onDropdownItemClicked", "onSettingsDropdownItemClicked", "dropdownOffset"}]
      321 GETTABLEKS                       R28 R0 K60 ["dropdownOverlay"]
      323 SETTABLEKS                       R28 R27 K60 ["dropdownOverlay"]
      325 SETTABLEKS                       R2 R27 K61 ["currentDropdown"]
      327 SETTABLEKS                       R9 R27 K62 ["dropdownRef"]
      329 SETTABLEKS                       R6 R27 K63 ["searchHistory"]
      331 GETTABLEKS                       R28 R0 K41 ["settingsDropdownItemData"]
      333 SETTABLEKS                       R28 R27 K41 ["settingsDropdownItemData"]
      335 SETTABLEKS                       R17 R27 K64 ["onDropdownItemClicked"]
      337 GETTABLEKS                       R28 R0 K65 ["onSettingsDropdownItemClicked"]
      339 SETTABLEKS                       R28 R27 K65 ["onSettingsDropdownItemClicked"]
      341 SETTABLEKS                       R12 R27 K66 ["dropdownOffset"]
      343 CALL                             R25 2 1
      344 SETTABLEKS                       R25 R24 K14 ["Dropdowns"]
      346 CALL                             R21 3 -1
      347 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["SearchBox"]
       29 GETTABLEKS                       R4 R5 K12 ["FocusTracker"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K10 ["Components"]
       38 GETTABLEKS                       R6 R7 K11 ["SearchBox"]
       40 GETTABLEKS                       R5 R6 K13 ["SearchBar"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R9 K10 ["Components"]
       49 GETTABLEKS                       R7 R8 K11 ["SearchBox"]
       51 GETTABLEKS                       R6 R7 K14 ["SearchDropdown"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Src"]
       58 GETTABLEKS                       R8 R9 K15 ["Resources"]
       60 GETTABLEKS                       R7 R8 K16 ["StyleConstants"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Src"]
       67 GETTABLEKS                       R9 R10 K17 ["Util"]
       69 GETTABLEKS                       R8 R9 K18 ["Constants"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R11 R0 K9 ["Src"]
       76 GETTABLEKS                       R10 R11 K17 ["Util"]
       78 GETTABLEKS                       R9 R10 K19 ["isInputInsideGui"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R11 R0 K9 ["Src"]
       85 GETTABLEKS                       R10 R11 K20 ["Types"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Packages"]
       92 GETTABLEKS                       R12 R13 K8 ["ReactUtils"]
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R10 R11 K21 ["createNextOrder"]
       97 GETTABLEKS                       R11 R1 K22 ["createElement"]
       99 DUPCLOSURE                       R12 K23 [PROTO_8]
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R5
      110 RETURN                           R12 1
