PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 LOADK                            R3 K0 ["\n"]
        2 LOADK                            R4 K1 [" "]
        3 NAMECALL                         R1 R0 K2 ["gsub"]
        5 CALL                             R1 3 1
        6 JUMPIF                           R1 ; [+1]
        7 LOADK                            R1 K3 [""]
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onSearchRequested"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["text"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
       13 GETTABLEKS                       R0 R0 K1 ["current"]
       15 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Focus]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 LOADB                            R4 0
        8 NAMECALL                         R2 R2 K4 ["onFocusLost"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Text"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 LOADK                            R5 K1 ["\n"]
        4 LOADK                            R6 K2 [" "]
        5 NAMECALL                         R3 R2 K3 ["gsub"]
        7 CALL                             R3 3 1
        8 MOVE                             R1 R3
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K4 [""]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["state"]
       14 GETTABLEKS                       R2 R2 K6 ["text"]
       16 JUMPIFEQ                         R2 R1 ; [+21]
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K7 [{"text"}]
       20 SETTABLEKS                       R1 R4 K6 ["text"]
       22 NAMECALL                         R2 R2 K8 ["setState"]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K9 ["props"]
       28 GETTABLEKS                       R2 R2 K10 ["onTextChanged"]
       30 JUMPIFNOT                        R2 ; [+7]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K9 ["props"]
       34 GETTABLEKS                       R2 R2 K10 ["onTextChanged"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{[1] = True}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["onFocusLost"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["requestSearch"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R2 K4 [{[1] = "", ["isFocused"] = True}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R0 R0 K5 ["setState"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 DUPTABLE                         R2 K4 [{[1] = "", ["isFocused"] = True}]
       13 NAMECALL                         R0 R0 K5 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K6 ["textBoxRef"]
       19 GETTABLEKS                       R0 R0 K7 ["current"]
       21 NAMECALL                         R0 R0 K8 ["CaptureFocus"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K9 ["requestSearch"]
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K6 [{[1] = "", ["lastSearchTermAsProp"] = "", ["isFocused"] = False, ["isContainerHovered"] = False}]
        1 SETTABLEKS                       R1 R0 K7 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K8 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K9 ["textBoxRef"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K10 ["requestSearch"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K11 ["onContainerHovered"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K12 ["onContainerHoverEnded"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K13 ["onBackgroundClicked"]
       25 NEWCLOSURE                       R1 P4
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K14 ["onBackgroundFocusLost"]
       29 NEWCLOSURE                       R1 P5
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K15 ["onTextChanged"]
       33 NEWCLOSURE                       R1 P6
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K16 ["onTextBoxFocused"]
       37 NEWCLOSURE                       R1 P7
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K17 ["onTextBoxFocusLost"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K18 ["onClearButtonClicked"]
       46 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["searchTerm"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 LOADK                            R6 K1 ["\n"]
        4 LOADK                            R7 K2 [" "]
        5 NAMECALL                         R4 R3 K3 ["gsub"]
        7 CALL                             R4 3 1
        8 MOVE                             R2 R4
        9 JUMPIF                           R2 ; [+1]
       10 LOADK                            R2 K4 [""]
       11 GETTABLEKS                       R4 R1 K5 ["lastSearchTermAsProp"]
       13 ORK                              R3 R4 K4 [""]
       14 JUMPIFEQ                         R2 R3 ; [+7]
       16 DUPTABLE                         R4 K7 [{"text", "lastSearchTermAsProp"}]
       17 SETTABLEKS                       R2 R4 K6 ["text"]
       19 SETTABLEKS                       R2 R4 K5 ["lastSearchTermAsProp"]
       21 RETURN                           R4 1
       22 NEWTABLE                         R4 0 0
       24 RETURN                           R4 1

PROTO_13:
        0 DUPTABLE                         R4 K3 [{[1] = False, ["isContainerHovered"] = False}]
        1 NAMECALL                         R2 R0 K4 ["setState"]
        3 CALL                             R2 2 0
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R2 R0 K5 ["requestSearch"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["width"]
        8 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       10 ORK                              R5 R6 K4 [0]
       11 GETTABLEKS                       R6 R2 K6 ["text"]
       13 GETTABLEKS                       R7 R2 K7 ["isFocused"]
       15 GETTABLEKS                       R8 R2 K8 ["isContainerHovered"]
       17 LENGTH                           R10 R6
       18 LOADN                            R11 0
       19 JUMPIFLT                         R11 R10 ; [+2]
       21 LOADB                            R9 0 +1
       22 LOADB                            R9 1
       23 GETTABLEKS                       R10 R0 K0 ["props"]
       25 GETTABLEKS                       R10 R10 K9 ["showSearchButton"]
       27 GETTABLEKS                       R11 R1 K10 ["IsLive"]
       29 JUMPIFNOT                        R10 ; [+7]
       30 LOADN                            R14 2
       31 GETUPVAL                         R15 0
       32 GETTABLEKS                       R15 R15 K12 ["SEARCH_BAR_BUTTON_WIDTH"]
       34 MUL                              R13 R14 R15
       35 ADDK                             R12 R13 K11 [1]
       36 JUMPIF                           R12 ; [+3]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K12 ["SEARCH_BAR_BUTTON_WIDTH"]
       40 SUBK                             R13 R12 K13 [6]
       41 SUB                              R15 R4 R13
       42 SUBK                             R14 R15 K14 [20]
       43 GETUPVAL                         R15 1
       44 MOVE                             R16 R6
       45 LOADNIL                          R17
       46 LOADNIL                          R18
       47 GETIMPORT                        R19 K17 [Vector2.new]
       49 LOADN                            R20 0
       50 LOADN                            R21 0
       51 CALL                             R19 2 -1
       52 CALL                             R15 -1 1
       53 GETTABLEKS                       R15 R15 K18 ["x"]
       55 JUMPIFLT                         R15 R14 ; [+2]
       57 LOADB                            R16 0 +1
       58 LOADB                            R16 1
       59 GETTABLEKS                       R17 R3 K19 ["searchBar"]
       61 LOADNIL                          R18
       62 JUMPIFNOT                        R7 ; [+3]
       63 GETTABLEKS                       R18 R17 K20 ["borderSelectedColor"]
       65 JUMP                             ; [+6]
       66 JUMPIFNOT                        R8 ; [+3]
       67 GETTABLEKS                       R18 R17 K21 ["borderHoveredColor"]
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R18 R17 K22 ["borderColor"]
       72 GETTABLEKS                       R20 R0 K0 ["props"]
       74 GETTABLEKS                       R20 R20 K24 ["defaultTextKey"]
       76 ORK                              R19 R20 K23 ["SearchBarDefaultText"]
       77 GETUPVAL                         R20 2
       78 GETTABLEKS                       R20 R20 K25 ["createElement"]
       80 LOADK                            R21 K26 ["Frame"]
       81 DUPTABLE                         R22 K29 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       82 GETIMPORT                        R23 K31 [UDim2.new]
       84 LOADN                            R24 0
       85 MOVE                             R25 R4
       86 LOADN                            R26 1
       87 LOADN                            R27 0
       88 CALL                             R23 4 1
       89 SETTABLEKS                       R23 R22 K27 ["Size"]
       91 SETTABLEKS                       R5 R22 K5 ["LayoutOrder"]
       93 DUPTABLE                         R23 K33 [{"Background"}]
       94 GETUPVAL                         R24 2
       95 GETTABLEKS                       R24 R24 K25 ["createElement"]
       97 GETUPVAL                         R25 3
       98 NEWTABLE                         R26 16 0
      100 GETIMPORT                        R27 K31 [UDim2.new]
      102 LOADN                            R28 0
      103 LOADN                            R29 -1
      104 LOADN                            R30 0
      105 LOADN                            R31 -1
      106 CALL                             R27 4 1
      107 SETTABLEKS                       R27 R26 K34 ["Position"]
      109 GETIMPORT                        R27 K31 [UDim2.new]
      111 LOADN                            R28 1
      112 LOADN                            R29 2
      113 LOADN                            R30 1
      114 LOADN                            R31 2
      115 CALL                             R27 4 1
      116 SETTABLEKS                       R27 R26 K27 ["Size"]
      118 SETTABLEKS                       R18 R26 K35 ["BorderColor3"]
      120 LOADB                            R27 1
      121 SETTABLEKS                       R27 R26 K36 ["ClipsDescendants"]
      123 JUMPIFNOT                        R11 ; [+3]
      124 GETTABLEKS                       R27 R17 K37 ["liveBackgroundColor"]
      126 JUMPIF                           R27 ; [+2]
      127 GETTABLEKS                       R27 R17 K38 ["backgroundColor"]
      129 SETTABLEKS                       R27 R26 K39 ["BackgroundColor3"]
      131 GETUPVAL                         R27 2
      132 GETTABLEKS                       R27 R27 K40 ["Event"]
      134 GETTABLEKS                       R27 R27 K41 ["MouseEnter"]
      136 GETTABLEKS                       R28 R0 K42 ["onContainerHovered"]
      138 SETTABLE                         R28 R26 R27
      139 GETUPVAL                         R27 2
      140 GETTABLEKS                       R27 R27 K40 ["Event"]
      142 GETTABLEKS                       R27 R27 K43 ["MouseMoved"]
      144 GETTABLEKS                       R28 R0 K42 ["onContainerHovered"]
      146 SETTABLE                         R28 R26 R27
      147 GETUPVAL                         R27 2
      148 GETTABLEKS                       R27 R27 K40 ["Event"]
      150 GETTABLEKS                       R27 R27 K44 ["MouseLeave"]
      152 GETTABLEKS                       R28 R0 K45 ["onContainerHoverEnded"]
      154 SETTABLE                         R28 R26 R27
      155 GETUPVAL                         R27 2
      156 GETTABLEKS                       R27 R27 K40 ["Event"]
      158 GETTABLEKS                       R27 R27 K46 ["MouseButton1Down"]
      160 GETTABLEKS                       R28 R0 K47 ["onBackgroundClicked"]
      162 SETTABLE                         R28 R26 R27
      163 GETUPVAL                         R27 2
      164 GETTABLEKS                       R27 R27 K40 ["Event"]
      166 GETTABLEKS                       R27 R27 K48 ["InputEnded"]
      168 GETTABLEKS                       R28 R0 K49 ["onBackgroundFocusLost"]
      170 SETTABLE                         R28 R26 R27
      171 DUPTABLE                         R27 K52 [{"TextContainer", "Buttons"}]
      172 GETUPVAL                         R28 2
      173 GETTABLEKS                       R28 R28 K25 ["createElement"]
      175 LOADK                            R29 K26 ["Frame"]
      176 DUPTABLE                         R30 K55 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2}]
      177 GETIMPORT                        R31 K31 [UDim2.new]
      179 LOADN                            R32 0
      180 LOADN                            R33 10
      181 LOADN                            R34 0
      182 LOADN                            R35 0
      183 CALL                             R31 4 1
      184 SETTABLEKS                       R31 R30 K34 ["Position"]
      186 GETIMPORT                        R31 K31 [UDim2.new]
      188 LOADN                            R32 1
      189 ADDK                             R34 R13 K14 [20]
      190 MINUS                            R33 R34
      191 LOADN                            R34 1
      192 LOADN                            R35 0
      193 CALL                             R31 4 1
      194 SETTABLEKS                       R31 R30 K27 ["Size"]
      196 DUPTABLE                         R31 K57 [{"TextBox"}]
      197 GETUPVAL                         R32 2
      198 GETTABLEKS                       R32 R32 K25 ["createElement"]
      200 LOADK                            R33 K56 ["TextBox"]
      201 NEWTABLE                         R34 16 0
      203 LOADN                            R35 1
      204 SETTABLEKS                       R35 R34 K5 ["LayoutOrder"]
      206 GETIMPORT                        R35 K31 [UDim2.new]
      208 LOADN                            R36 1
      209 LOADN                            R37 0
      210 LOADN                            R38 1
      211 LOADN                            R39 0
      212 CALL                             R35 4 1
      213 SETTABLEKS                       R35 R34 K27 ["Size"]
      215 LOADN                            R35 1
      216 SETTABLEKS                       R35 R34 K28 ["BackgroundTransparency"]
      218 LOADB                            R35 1
      219 SETTABLEKS                       R35 R34 K36 ["ClipsDescendants"]
      221 LOADB                            R35 0
      222 SETTABLEKS                       R35 R34 K58 ["ClearTextOnFocus"]
      224 GETUPVAL                         R35 0
      225 GETTABLEKS                       R35 R35 K59 ["FONT"]
      227 SETTABLEKS                       R35 R34 K60 ["Font"]
      229 GETUPVAL                         R35 0
      230 GETTABLEKS                       R35 R35 K61 ["FONT_SIZE_MEDIUM"]
      232 SETTABLEKS                       R35 R34 K62 ["TextSize"]
      234 JUMPIFNOT                        R16 ; [+3]
      235 GETIMPORT                        R35 K66 [Enum.TextXAlignment.Left]
      237 JUMPIF                           R35 ; [+2]
      238 GETIMPORT                        R35 K68 [Enum.TextXAlignment.Right]
      240 SETTABLEKS                       R35 R34 K64 ["TextXAlignment"]
      242 GETTABLEKS                       R35 R17 K69 ["textColor"]
      244 SETTABLEKS                       R35 R34 K70 ["TextColor3"]
      246 SETTABLEKS                       R6 R34 K71 ["Text"]
      248 GETTABLEKS                       R35 R1 K72 ["Localization"]
      250 LOADK                            R37 K73 ["General"]
      251 MOVE                             R38 R19
      252 NAMECALL                         R35 R35 K74 ["getText"]
      254 CALL                             R35 3 1
      255 SETTABLEKS                       R35 R34 K75 ["PlaceholderText"]
      257 GETTABLEKS                       R35 R17 K76 ["placeholderTextColor"]
      259 SETTABLEKS                       R35 R34 K77 ["PlaceholderColor3"]
      261 GETUPVAL                         R35 2
      262 GETTABLEKS                       R35 R35 K78 ["Ref"]
      264 GETTABLEKS                       R36 R0 K79 ["textBoxRef"]
      266 SETTABLE                         R36 R34 R35
      267 GETUPVAL                         R35 2
      268 GETTABLEKS                       R35 R35 K80 ["Change"]
      270 GETTABLEKS                       R35 R35 K71 ["Text"]
      272 GETTABLEKS                       R36 R0 K81 ["onTextChanged"]
      274 SETTABLE                         R36 R34 R35
      275 GETUPVAL                         R35 2
      276 GETTABLEKS                       R35 R35 K40 ["Event"]
      278 GETTABLEKS                       R35 R35 K82 ["Focused"]
      280 GETTABLEKS                       R36 R0 K83 ["onTextBoxFocused"]
      282 SETTABLE                         R36 R34 R35
      283 GETUPVAL                         R35 2
      284 GETTABLEKS                       R35 R35 K40 ["Event"]
      286 GETTABLEKS                       R35 R35 K84 ["FocusLost"]
      288 GETTABLEKS                       R36 R0 K85 ["onTextBoxFocusLost"]
      290 SETTABLE                         R36 R34 R35
      291 CALL                             R32 2 1
      292 SETTABLEKS                       R32 R31 K56 ["TextBox"]
      294 CALL                             R28 3 1
      295 SETTABLEKS                       R28 R27 K50 ["TextContainer"]
      297 GETUPVAL                         R28 2
      298 GETTABLEKS                       R28 R28 K25 ["createElement"]
      300 GETUPVAL                         R29 4
      301 DUPTABLE                         R30 K89 [{"showClearButton", "showSearchButton", "onClearButtonClicked", "onSearchButtonClicked"}]
      302 SETTABLEKS                       R9 R30 K86 ["showClearButton"]
      304 SETTABLEKS                       R10 R30 K9 ["showSearchButton"]
      306 GETTABLEKS                       R31 R0 K87 ["onClearButtonClicked"]
      308 SETTABLEKS                       R31 R30 K87 ["onClearButtonClicked"]
      310 GETTABLEKS                       R31 R0 K90 ["requestSearch"]
      312 SETTABLEKS                       R31 R30 K88 ["onSearchButtonClicked"]
      314 CALL                             R28 2 1
      315 SETTABLEKS                       R28 R27 K51 ["Buttons"]
      317 CALL                             R24 3 1
      318 SETTABLEKS                       R24 R23 K32 ["Background"]
      320 CALL                             R20 3 -1
      321 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K12 ["withContext"]
       36 GETTABLEKS                       R7 R3 K9 ["Util"]
       38 GETTABLEKS                       R7 R7 K13 ["GetTextSize"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K8 ["Src"]
       44 GETTABLEKS                       R9 R9 K14 ["Components"]
       46 GETTABLEKS                       R9 R9 K15 ["RoundButton"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Src"]
       53 GETTABLEKS                       R10 R10 K14 ["Components"]
       55 GETTABLEKS                       R10 R10 K16 ["SearchBar"]
       57 GETTABLEKS                       R10 R10 K17 ["SearchBarButtons"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R2 K18 ["PureComponent"]
       62 LOADK                            R12 K16 ["SearchBar"]
       63 NAMECALL                         R10 R10 K19 ["extend"]
       65 CALL                             R10 2 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K8 ["Src"]
       70 GETTABLEKS                       R12 R12 K9 ["Util"]
       72 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       74 GETTABLEKS                       R12 R12 K21 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K22 [PROTO_0]
       78 DUPCLOSURE                       R13 K23 [PROTO_11]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R13 R10 K24 ["init"]
       83 DUPCLOSURE                       R13 K25 [PROTO_12]
       84 SETTABLEKS                       R13 R10 K26 ["getDerivedStateFromProps"]
       86 DUPCLOSURE                       R13 K27 [PROTO_13]
       87 SETTABLEKS                       R13 R10 K28 ["onFocusLost"]
       89 DUPCLOSURE                       R13 K29 [PROTO_14]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 SETTABLEKS                       R13 R10 K30 ["render"]
       97 MOVE                             R13 R6
       98 DUPTABLE                         R14 K33 [{"Localization", "Stylizer"}]
       99 GETTABLEKS                       R15 R5 K31 ["Localization"]
      101 SETTABLEKS                       R15 R14 K31 ["Localization"]
      103 GETTABLEKS                       R15 R5 K32 ["Stylizer"]
      105 SETTABLEKS                       R15 R14 K32 ["Stylizer"]
      107 CALL                             R13 1 1
      108 MOVE                             R14 R10
      109 CALL                             R13 1 1
      110 MOVE                             R10 R13
      111 RETURN                           R10 1
