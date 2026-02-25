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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onSearchRequested"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["state"]
        8 GETTABLEKS                       R1 R2 K3 ["text"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isContainerHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isContainerHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isContainerHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isContainerHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["textBoxRef"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        7 GETTABLEKS                       R0 R1 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
       13 GETTABLEKS                       R0 R1 K1 ["current"]
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
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K5 ["state"]
       14 GETTABLEKS                       R2 R3 K6 ["text"]
       16 JUMPIFEQ                         R2 R1 ; [+21]
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K7 [{"text"}]
       20 SETTABLEKS                       R1 R4 K6 ["text"]
       22 NAMECALL                         R2 R2 K8 ["setState"]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K9 ["props"]
       28 GETTABLEKS                       R2 R3 K10 ["onTextChanged"]
       30 JUMPIFNOT                        R2 ; [+7]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K9 ["props"]
       34 GETTABLEKS                       R2 R3 K10 ["onTextChanged"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isFocused"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["isFocused"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["onFocusLost"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 NAMECALL                         R0 R0 K2 ["CaptureFocus"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K3 ["requestSearch"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R2 K2 [{"text", "isFocused"}]
        5 LOADK                            R3 K3 [""]
        6 SETTABLEKS                       R3 R2 K0 ["text"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K1 ["isFocused"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R0 R0 K4 ["setState"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 DUPTABLE                         R2 K2 [{"text", "isFocused"}]
       19 LOADK                            R3 K3 [""]
       20 SETTABLEKS                       R3 R2 K0 ["text"]
       22 LOADB                            R3 1
       23 SETTABLEKS                       R3 R2 K1 ["isFocused"]
       25 NAMECALL                         R0 R0 K4 ["setState"]
       27 CALL                             R0 2 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R1 R2 K5 ["textBoxRef"]
       31 GETTABLEKS                       R0 R1 K6 ["current"]
       33 NAMECALL                         R0 R0 K7 ["CaptureFocus"]
       35 CALL                             R0 1 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K8 ["requestSearch"]
       39 CALL                             R0 0 0
       40 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K4 [{"text", "lastSearchTermAsProp", "isFocused", "isContainerHovered"}]
        1 LOADK                            R2 K5 [""]
        2 SETTABLEKS                       R2 R1 K0 ["text"]
        4 LOADK                            R2 K5 [""]
        5 SETTABLEKS                       R2 R1 K1 ["lastSearchTermAsProp"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isFocused"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["isContainerHovered"]
       13 SETTABLEKS                       R1 R0 K6 ["state"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K7 ["createRef"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K8 ["textBoxRef"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K9 ["requestSearch"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K10 ["onContainerHovered"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K11 ["onContainerHoverEnded"]
       33 NEWCLOSURE                       R1 P3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K12 ["onBackgroundClicked"]
       37 NEWCLOSURE                       R1 P4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K13 ["onBackgroundFocusLost"]
       41 NEWCLOSURE                       R1 P5
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K14 ["onTextChanged"]
       45 NEWCLOSURE                       R1 P6
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K15 ["onTextBoxFocused"]
       49 NEWCLOSURE                       R1 P7
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K16 ["onTextBoxFocusLost"]
       53 NEWCLOSURE                       R1 P8
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K17 ["onClearButtonClicked"]
       58 RETURN                           R0 0

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
        0 DUPTABLE                         R4 K2 [{"isFocused", "isContainerHovered"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["isFocused"]
        4 LOADB                            R5 0
        5 SETTABLEKS                       R5 R4 K1 ["isContainerHovered"]
        7 NAMECALL                         R2 R0 K3 ["setState"]
        9 CALL                             R2 2 0
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R2 R0 K4 ["requestSearch"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

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
       23 GETTABLEKS                       R11 R0 K0 ["props"]
       25 GETTABLEKS                       R10 R11 K9 ["showSearchButton"]
       27 GETTABLEKS                       R11 R1 K10 ["IsLive"]
       29 JUMPIFNOT                        R10 ; [+7]
       30 LOADN                            R14 2
       31 GETUPVAL                         R16 0
       32 GETTABLEKS                       R15 R16 K12 ["SEARCH_BAR_BUTTON_WIDTH"]
       34 MUL                              R13 R14 R15
       35 ADDK                             R12 R13 K11 [1]
       36 JUMPIF                           R12 ; [+3]
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R12 R13 K12 ["SEARCH_BAR_BUTTON_WIDTH"]
       40 SUBK                             R13 R12 K13 [6]
       41 SUB                              R15 R4 R13
       42 SUBK                             R14 R15 K14 [20]
       43 GETUPVAL                         R16 1
       44 MOVE                             R17 R6
       45 LOADNIL                          R18
       46 LOADNIL                          R19
       47 GETIMPORT                        R20 K17 [Vector2.new]
       49 LOADN                            R21 0
       50 LOADN                            R22 0
       51 CALL                             R20 2 -1
       52 CALL                             R16 -1 1
       53 GETTABLEKS                       R15 R16 K18 ["x"]
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
       72 GETTABLEKS                       R21 R0 K0 ["props"]
       74 GETTABLEKS                       R20 R21 K24 ["defaultTextKey"]
       76 ORK                              R19 R20 K23 ["SearchBarDefaultText"]
       77 GETUPVAL                         R21 2
       78 GETTABLEKS                       R20 R21 K25 ["createElement"]
       80 LOADK                            R21 K26 ["Frame"]
       81 DUPTABLE                         R22 K29 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       82 GETIMPORT                        R23 K31 [UDim2.new]
       84 LOADN                            R24 0
       85 MOVE                             R25 R4
       86 LOADN                            R26 1
       87 LOADN                            R27 0
       88 CALL                             R23 4 1
       89 SETTABLEKS                       R23 R22 K27 ["Size"]
       91 LOADN                            R23 1
       92 SETTABLEKS                       R23 R22 K28 ["BackgroundTransparency"]
       94 SETTABLEKS                       R5 R22 K5 ["LayoutOrder"]
       96 DUPTABLE                         R23 K33 [{"Background"}]
       97 GETUPVAL                         R25 2
       98 GETTABLEKS                       R24 R25 K25 ["createElement"]
      100 GETUPVAL                         R25 3
      101 NEWTABLE                         R26 16 0
      103 GETIMPORT                        R27 K31 [UDim2.new]
      105 LOADN                            R28 0
      106 LOADN                            R29 255
      107 LOADN                            R30 0
      108 LOADN                            R31 255
      109 CALL                             R27 4 1
      110 SETTABLEKS                       R27 R26 K34 ["Position"]
      112 GETIMPORT                        R27 K31 [UDim2.new]
      114 LOADN                            R28 1
      115 LOADN                            R29 2
      116 LOADN                            R30 1
      117 LOADN                            R31 2
      118 CALL                             R27 4 1
      119 SETTABLEKS                       R27 R26 K27 ["Size"]
      121 SETTABLEKS                       R18 R26 K35 ["BorderColor3"]
      123 LOADB                            R27 1
      124 SETTABLEKS                       R27 R26 K36 ["ClipsDescendants"]
      126 JUMPIFNOT                        R11 ; [+3]
      127 GETTABLEKS                       R27 R17 K37 ["liveBackgroundColor"]
      129 JUMPIF                           R27 ; [+2]
      130 GETTABLEKS                       R27 R17 K38 ["backgroundColor"]
      132 SETTABLEKS                       R27 R26 K39 ["BackgroundColor3"]
      134 GETUPVAL                         R29 2
      135 GETTABLEKS                       R28 R29 K40 ["Event"]
      137 GETTABLEKS                       R27 R28 K41 ["MouseEnter"]
      139 GETTABLEKS                       R28 R0 K42 ["onContainerHovered"]
      141 SETTABLE                         R28 R26 R27
      142 GETUPVAL                         R29 2
      143 GETTABLEKS                       R28 R29 K40 ["Event"]
      145 GETTABLEKS                       R27 R28 K43 ["MouseMoved"]
      147 GETTABLEKS                       R28 R0 K42 ["onContainerHovered"]
      149 SETTABLE                         R28 R26 R27
      150 GETUPVAL                         R29 2
      151 GETTABLEKS                       R28 R29 K40 ["Event"]
      153 GETTABLEKS                       R27 R28 K44 ["MouseLeave"]
      155 GETTABLEKS                       R28 R0 K45 ["onContainerHoverEnded"]
      157 SETTABLE                         R28 R26 R27
      158 GETUPVAL                         R29 2
      159 GETTABLEKS                       R28 R29 K40 ["Event"]
      161 GETTABLEKS                       R27 R28 K46 ["MouseButton1Down"]
      163 GETTABLEKS                       R28 R0 K47 ["onBackgroundClicked"]
      165 SETTABLE                         R28 R26 R27
      166 GETUPVAL                         R29 2
      167 GETTABLEKS                       R28 R29 K40 ["Event"]
      169 GETTABLEKS                       R27 R28 K48 ["InputEnded"]
      171 GETTABLEKS                       R28 R0 K49 ["onBackgroundFocusLost"]
      173 SETTABLE                         R28 R26 R27
      174 DUPTABLE                         R27 K52 [{"TextContainer", "Buttons"}]
      175 GETUPVAL                         R29 2
      176 GETTABLEKS                       R28 R29 K25 ["createElement"]
      178 LOADK                            R29 K26 ["Frame"]
      179 DUPTABLE                         R30 K54 [{"Position", "Size", "BackgroundTransparency", "ZIndex"}]
      180 GETIMPORT                        R31 K31 [UDim2.new]
      182 LOADN                            R32 0
      183 LOADN                            R33 10
      184 LOADN                            R34 0
      185 LOADN                            R35 0
      186 CALL                             R31 4 1
      187 SETTABLEKS                       R31 R30 K34 ["Position"]
      189 GETIMPORT                        R31 K31 [UDim2.new]
      191 LOADN                            R32 1
      192 ADDK                             R34 R13 K14 [20]
      193 MINUS                            R33 R34
      194 LOADN                            R34 1
      195 LOADN                            R35 0
      196 CALL                             R31 4 1
      197 SETTABLEKS                       R31 R30 K27 ["Size"]
      199 LOADN                            R31 1
      200 SETTABLEKS                       R31 R30 K28 ["BackgroundTransparency"]
      202 LOADN                            R31 2
      203 SETTABLEKS                       R31 R30 K53 ["ZIndex"]
      205 DUPTABLE                         R31 K56 [{"TextBox"}]
      206 GETUPVAL                         R33 2
      207 GETTABLEKS                       R32 R33 K25 ["createElement"]
      209 LOADK                            R33 K55 ["TextBox"]
      210 NEWTABLE                         R34 16 0
      212 LOADN                            R35 1
      213 SETTABLEKS                       R35 R34 K5 ["LayoutOrder"]
      215 GETIMPORT                        R35 K31 [UDim2.new]
      217 LOADN                            R36 1
      218 LOADN                            R37 0
      219 LOADN                            R38 1
      220 LOADN                            R39 0
      221 CALL                             R35 4 1
      222 SETTABLEKS                       R35 R34 K27 ["Size"]
      224 LOADN                            R35 1
      225 SETTABLEKS                       R35 R34 K28 ["BackgroundTransparency"]
      227 LOADB                            R35 1
      228 SETTABLEKS                       R35 R34 K36 ["ClipsDescendants"]
      230 LOADB                            R35 0
      231 SETTABLEKS                       R35 R34 K57 ["ClearTextOnFocus"]
      233 GETUPVAL                         R36 0
      234 GETTABLEKS                       R35 R36 K58 ["FONT"]
      236 SETTABLEKS                       R35 R34 K59 ["Font"]
      238 GETUPVAL                         R36 0
      239 GETTABLEKS                       R35 R36 K60 ["FONT_SIZE_MEDIUM"]
      241 SETTABLEKS                       R35 R34 K61 ["TextSize"]
      243 JUMPIFNOT                        R16 ; [+3]
      244 GETIMPORT                        R35 K65 [Enum.TextXAlignment.Left]
      246 JUMPIF                           R35 ; [+2]
      247 GETIMPORT                        R35 K67 [Enum.TextXAlignment.Right]
      249 SETTABLEKS                       R35 R34 K63 ["TextXAlignment"]
      251 GETTABLEKS                       R35 R17 K68 ["textColor"]
      253 SETTABLEKS                       R35 R34 K69 ["TextColor3"]
      255 SETTABLEKS                       R6 R34 K70 ["Text"]
      257 GETTABLEKS                       R35 R1 K71 ["Localization"]
      259 LOADK                            R37 K72 ["General"]
      260 MOVE                             R38 R19
      261 NAMECALL                         R35 R35 K73 ["getText"]
      263 CALL                             R35 3 1
      264 SETTABLEKS                       R35 R34 K74 ["PlaceholderText"]
      266 GETTABLEKS                       R35 R17 K75 ["placeholderTextColor"]
      268 SETTABLEKS                       R35 R34 K76 ["PlaceholderColor3"]
      270 GETUPVAL                         R36 2
      271 GETTABLEKS                       R35 R36 K77 ["Ref"]
      273 GETTABLEKS                       R36 R0 K78 ["textBoxRef"]
      275 SETTABLE                         R36 R34 R35
      276 GETUPVAL                         R37 2
      277 GETTABLEKS                       R36 R37 K79 ["Change"]
      279 GETTABLEKS                       R35 R36 K70 ["Text"]
      281 GETTABLEKS                       R36 R0 K80 ["onTextChanged"]
      283 SETTABLE                         R36 R34 R35
      284 GETUPVAL                         R37 2
      285 GETTABLEKS                       R36 R37 K40 ["Event"]
      287 GETTABLEKS                       R35 R36 K81 ["Focused"]
      289 GETTABLEKS                       R36 R0 K82 ["onTextBoxFocused"]
      291 SETTABLE                         R36 R34 R35
      292 GETUPVAL                         R37 2
      293 GETTABLEKS                       R36 R37 K40 ["Event"]
      295 GETTABLEKS                       R35 R36 K83 ["FocusLost"]
      297 GETTABLEKS                       R36 R0 K84 ["onTextBoxFocusLost"]
      299 SETTABLE                         R36 R34 R35
      300 CALL                             R32 2 1
      301 SETTABLEKS                       R32 R31 K55 ["TextBox"]
      303 CALL                             R28 3 1
      304 SETTABLEKS                       R28 R27 K50 ["TextContainer"]
      306 GETUPVAL                         R29 2
      307 GETTABLEKS                       R28 R29 K25 ["createElement"]
      309 GETUPVAL                         R29 4
      310 DUPTABLE                         R30 K88 [{"showClearButton", "showSearchButton", "onClearButtonClicked", "onSearchButtonClicked"}]
      311 SETTABLEKS                       R9 R30 K85 ["showClearButton"]
      313 SETTABLEKS                       R10 R30 K9 ["showSearchButton"]
      315 GETTABLEKS                       R31 R0 K86 ["onClearButtonClicked"]
      317 SETTABLEKS                       R31 R30 K86 ["onClearButtonClicked"]
      319 GETTABLEKS                       R31 R0 K89 ["requestSearch"]
      321 SETTABLEKS                       R31 R30 K87 ["onSearchButtonClicked"]
      323 CALL                             R28 2 1
      324 SETTABLEKS                       R28 R27 K51 ["Buttons"]
      326 CALL                             R24 3 1
      327 SETTABLEKS                       R24 R23 K32 ["Background"]
      329 CALL                             R20 3 -1
      330 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Src"]
       27 GETTABLEKS                       R6 R7 K9 ["Util"]
       29 GETTABLEKS                       R5 R6 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K12 ["withContext"]
       36 GETTABLEKS                       R8 R3 K9 ["Util"]
       38 GETTABLEKS                       R7 R8 K13 ["GetTextSize"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K8 ["Src"]
       44 GETTABLEKS                       R10 R11 K14 ["Components"]
       46 GETTABLEKS                       R9 R10 K15 ["RoundButton"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R13 R0 K8 ["Src"]
       53 GETTABLEKS                       R12 R13 K14 ["Components"]
       55 GETTABLEKS                       R11 R12 K16 ["SearchBar"]
       57 GETTABLEKS                       R10 R11 K17 ["SearchBarButtons"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R2 K18 ["PureComponent"]
       62 LOADK                            R12 K16 ["SearchBar"]
       63 NAMECALL                         R10 R10 K19 ["extend"]
       65 CALL                             R10 2 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R15 R0 K8 ["Src"]
       70 GETTABLEKS                       R14 R15 K9 ["Util"]
       72 GETTABLEKS                       R13 R14 K20 ["SharedFlags"]
       74 GETTABLEKS                       R12 R13 K21 ["getFFlagToolboxEnableSearchOptionsRefactor"]
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
