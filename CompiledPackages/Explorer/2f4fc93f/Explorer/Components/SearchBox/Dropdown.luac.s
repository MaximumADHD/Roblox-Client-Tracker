PROTO_0:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["current"]
        7 JUMPIFEQKNIL                     R7 ; [+6]
        9 GETTABLEKS                       R8 R7 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R8 R8 K2 ["Y"]
       13 ADD                              R1 R1 R8
       14 FORGLOOP                         R2 2 ; [-10]
       16 GETUPVAL                         R3 0
       17 LENGTH                           R2 R3
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+4]
       21 SUBK                             R4 R2 K4 [1]
       22 MULK                             R3 R4 K3 [5]
       23 ADD                              R1 R1 R3
       24 GETUPVAL                         R3 1
       25 MOVE                             R4 R1
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["itemData"]
        3 LENGTH                           R1 R2
        4 JUMPIFNOTEQKNIL                  R0 ; [+9]
        6 GETUPVAL                         R3 1
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R3 R4 ; [+3]
       10 MOVE                             R2 R1
       11 RETURN                           R2 1
       12 LOADN                            R2 1
       13 RETURN                           R2 1
       14 SUBK                             R5 R0 K1 [1]
       15 GETUPVAL                         R6 1
       16 ADD                              R4 R5 R6
       17 MOD                              R3 R4 R1
       18 ADDK                             R2 R3 K1 [1]
       19 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSelectedItemIndex"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["scrollingFrame somehow doesn't exist"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["setArrowKeysEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["setArrowKeysEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedItemIndex"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectedItemIndex"]
        8 GETUPVAL                         R2 1
        9 LENGTH                           R1 R2
       10 JUMPIFNOTLT                      R1 R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["current"]
       16 JUMPIFNOTEQKNIL                  R0 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       22 LOADK                            R3 K2 ["scrollingFrame somehow doesn't exist"]
       23 GETIMPORT                        R1 K4 [assert]
       25 CALL                             R1 2 0
       26 GETTABLEKS                       R1 R0 K5 ["AbsolutePosition"]
       28 GETTABLEKS                       R1 R1 K6 ["Y"]
       30 GETUPVAL                         R3 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["selectedItemIndex"]
       34 GETTABLE                         R2 R3 R4
       35 GETTABLEKS                       R2 R2 K1 ["current"]
       37 JUMPIFNOTEQKNIL                  R2 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       43 LOADK                            R5 K7 ["selectedItem somehow doesn't exist"]
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
       47 GETTABLEKS                       R4 R2 K5 ["AbsolutePosition"]
       49 GETTABLEKS                       R4 R4 K6 ["Y"]
       51 SUB                              R3 R4 R1
       52 GETTABLEKS                       R5 R2 K8 ["AbsoluteSize"]
       54 GETTABLEKS                       R5 R5 K6 ["Y"]
       56 ADD                              R4 R3 R5
       57 LOADN                            R5 0
       58 JUMPIFNOTLT                      R3 R5 ; [+13]
       60 GETIMPORT                        R5 K11 [Vector2.new]
       62 LOADN                            R6 0
       63 GETTABLEKS                       R8 R0 K12 ["CanvasPosition"]
       65 GETTABLEKS                       R8 R8 K6 ["Y"]
       67 ADD                              R7 R8 R3
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R0 K12 ["CanvasPosition"]
       71 RETURN                           R0 0
       72 GETTABLEKS                       R5 R0 K8 ["AbsoluteSize"]
       74 GETTABLEKS                       R5 R5 K6 ["Y"]
       76 JUMPIFNOTLT                      R5 R4 ; [+17]
       78 GETIMPORT                        R5 K11 [Vector2.new]
       80 LOADN                            R6 0
       81 GETTABLEKS                       R9 R0 K12 ["CanvasPosition"]
       83 GETTABLEKS                       R9 R9 K6 ["Y"]
       85 ADD                              R8 R9 R4
       86 GETTABLEKS                       R9 R0 K8 ["AbsoluteSize"]
       88 GETTABLEKS                       R9 R9 K6 ["Y"]
       90 SUB                              R7 R8 R9
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R0 K12 ["CanvasPosition"]
       94 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Up]
        4 JUMPIFNOTEQ                      R1 R2 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["startPressHold"]
        9 GETUPVAL                         R2 1
       10 LOADN                            R3 255
       11 CALL                             R2 1 1
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
       17 GETIMPORT                        R2 K6 [Enum.KeyCode.Down]
       19 JUMPIFNOTEQ                      R1 R2 ; [+9]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["startPressHold"]
       24 GETUPVAL                         R2 1
       25 LOADN                            R3 1
       26 CALL                             R2 1 1
       27 MOVE                             R3 R0
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedItemIndex"]
        3 JUMPIFEQKNIL                     R0 ; [+14]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["onItemClicked"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["itemData"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["selectedItemIndex"]
       14 GETTABLE                         R1 R2 R3
       15 GETTABLEKS                       R1 R1 K3 ["text"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K9 [{"displayText", "icon", "index", "isSelected", "keepIconColor", "minSize", "onClick", "text", "itemRef"}]
        3 GETTABLEKS                       R5 R0 K0 ["displayText"]
        5 SETTABLEKS                       R5 R4 K0 ["displayText"]
        7 GETTABLEKS                       R5 R0 K1 ["icon"]
        9 SETTABLEKS                       R5 R4 K1 ["icon"]
       11 SETTABLEKS                       R1 R4 K2 ["index"]
       13 LOADB                            R5 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K10 ["selectedItemIndex"]
       17 JUMPIFEQKNIL                     R6 ; [+8]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K10 ["selectedItemIndex"]
       22 JUMPIFEQ                         R1 R6 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K3 ["isSelected"]
       28 GETTABLEKS                       R5 R0 K4 ["keepIconColor"]
       30 SETTABLEKS                       R5 R4 K4 ["keepIconColor"]
       32 GETUPVAL                         R5 3
       33 SETTABLEKS                       R5 R4 K5 ["minSize"]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K11 ["onItemClicked"]
       38 SETTABLEKS                       R5 R4 K6 ["onClick"]
       40 GETTABLEKS                       R5 R0 K7 ["text"]
       42 SETTABLEKS                       R5 R4 K7 ["text"]
       44 GETUPVAL                         R6 4
       45 GETTABLE                         R5 R6 R1
       46 SETTABLEKS                       R5 R4 K8 ["itemRef"]
       48 CALL                             R2 2 1
       49 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useHoverBlockerTriggers"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADN                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R7 R0 K3 ["itemData"]
       17 LENGTH                           R6 R7
       18 LOADNIL                          R7
       19 CALL                             R5 2 1
       20 GETTABLEKS                       R7 R0 K4 ["shouldIgnoreMaxHeight"]
       22 JUMPIFNOT                        R7 ; [+2]
       23 MOVE                             R6 R2
       24 JUMP                             ; [+7]
       25 FASTCALL2K                       MATH_MIN R2 K5 ; [+5]
       27 MOVE                             R7 R2
       28 LOADK                            R8 K5 [130]
       29 GETIMPORT                        R6 K8 [math.min]
       31 CALL                             R6 2 1
       32 JUMPIFLT                         R6 R2 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 GETIMPORT                        R8 K11 [UDim2.new]
       38 LOADN                            R9 1
       39 JUMPIFNOT                        R7 ; [+2]
       40 LOADN                            R10 248
       41 JUMP                             ; [+1]
       42 LOADN                            R10 0
       43 LOADN                            R11 0
       44 LOADN                            R12 22
       45 CALL                             R8 4 1
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K12 ["useCallback"]
       49 NEWCLOSURE                       R10 P0
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R5
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 3
       59 CALL                             R10 0 1
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       63 NEWCLOSURE                       R12 P1
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R13 0 2
       67 GETTABLEKS                       R14 R0 K13 ["setSelectedItemIndex"]
       69 GETTABLEKS                       R15 R0 K3 ["itemData"]
       71 SETLIST                          R13 R14 2 [1]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       77 NEWCLOSURE                       R13 P2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 NEWTABLE                         R14 0 1
       82 MOVE                             R15 R5
       83 SETLIST                          R14 R15 1 [1]
       85 CALL                             R12 2 0
       86 GETUPVAL                         R12 1
       87 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       89 NEWCLOSURE                       R13 P3
       90 CAPTURE                          VAL R0
       91 NEWTABLE                         R14 0 1
       93 GETTABLEKS                       R15 R0 K15 ["session"]
       95 SETLIST                          R14 R15 1 [1]
       97 CALL                             R12 2 0
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K14 ["useEffect"]
      101 NEWCLOSURE                       R13 P4
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 NEWTABLE                         R14 0 1
      107 GETTABLEKS                       R15 R0 K16 ["selectedItemIndex"]
      109 SETLIST                          R14 R15 1 [1]
      111 CALL                             R12 2 0
      112 GETUPVAL                         R12 4
      113 GETTABLEKS                       R13 R0 K15 ["session"]
      115 CALL                             R12 1 1
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R13 R13 K17 ["useContext"]
      119 GETUPVAL                         R14 5
      120 GETTABLEKS                       R14 R14 K18 ["Context"]
      122 CALL                             R13 1 1
      123 GETUPVAL                         R14 6
      124 GETTABLEKS                       R15 R13 K19 ["inputEndedSignal"]
      126 GETTABLEKS                       R16 R12 K20 ["endHold"]
      128 NEWTABLE                         R17 0 1
      130 GETTABLEKS                       R18 R12 K20 ["endHold"]
      132 SETLIST                          R17 R18 1 [1]
      134 CALL                             R14 3 0
      135 GETUPVAL                         R14 6
      136 GETTABLEKS                       R15 R13 K21 ["inputBeganSignal"]
      138 NEWCLOSURE                       R16 P5
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R11
      141 NEWTABLE                         R17 0 2
      143 GETTABLEKS                       R18 R12 K22 ["startPressHold"]
      145 MOVE                             R19 R11
      146 SETLIST                          R17 R18 2 [1]
      148 CALL                             R14 3 0
      149 GETUPVAL                         R14 6
      150 GETTABLEKS                       R15 R0 K23 ["enterPressedSignalRef"]
      152 GETTABLEKS                       R15 R15 K24 ["current"]
      154 NEWCLOSURE                       R16 P6
      155 CAPTURE                          VAL R0
      156 NEWTABLE                         R17 0 3
      158 GETTABLEKS                       R18 R0 K16 ["selectedItemIndex"]
      160 GETTABLEKS                       R19 R0 K25 ["onItemClicked"]
      162 GETTABLEKS                       R20 R0 K3 ["itemData"]
      164 SETLIST                          R17 R18 3 [1]
      166 CALL                             R14 3 0
      167 LOADB                            R14 1
      168 GETTABLEKS                       R15 R0 K26 ["headerInfo"]
      170 JUMPIFNOTEQKNIL                  R15 ; [+11]
      172 LOADB                            R14 1
      173 GETTABLEKS                       R15 R0 K27 ["placeholderText"]
      175 JUMPIFNOTEQKNIL                  R15 ; [+6]
      177 LOADN                            R15 0
      178 JUMPIFLT                         R15 R2 ; [+2]
      180 LOADB                            R14 0 +1
      181 LOADB                            R14 1
      182 GETUPVAL                         R15 7
      183 LOADK                            R16 K28 ["Frame"]
      184 NEWTABLE                         R17 8 0
      186 SETTABLEKS                       R14 R17 K29 ["Visible"]
      188 GETTABLEKS                       R18 R0 K30 ["dropdownRef"]
      190 SETTABLEKS                       R18 R17 K31 ["ref"]
      192 GETUPVAL                         R18 1
      193 GETTABLEKS                       R18 R18 K32 ["Event"]
      195 GETTABLEKS                       R18 R18 K33 ["MouseEnter"]
      197 GETTABLEKS                       R19 R1 K34 ["onMouseEnter"]
      199 SETTABLE                         R19 R17 R18
      200 GETUPVAL                         R18 1
      201 GETTABLEKS                       R18 R18 K32 ["Event"]
      203 GETTABLEKS                       R18 R18 K35 ["MouseLeave"]
      205 GETTABLEKS                       R19 R1 K36 ["onMouseLeave"]
      207 SETTABLE                         R19 R17 R18
      208 GETUPVAL                         R18 1
      209 GETTABLEKS                       R18 R18 K37 ["Tag"]
      211 LOADK                            R19 K38 ["X-Column X-Pad Explorer-BG-Surface100 Explorer-SearchBox-Corner Explorer-SearchBox-Dropdown"]
      212 SETTABLE                         R19 R17 R18
      213 DUPTABLE                         R18 K42 [{"Header", "PlaceholderLabel", "ScrollingFrame"}]
      214 LOADB                            R19 0
      215 GETTABLEKS                       R20 R0 K26 ["headerInfo"]
      217 JUMPIFEQKNIL                     R20 ; [+80]
      219 GETUPVAL                         R19 7
      220 LOADK                            R20 K28 ["Frame"]
      221 NEWTABLE                         R21 4 0
      223 MOVE                             R22 R10
      224 CALL                             R22 0 1
      225 SETTABLEKS                       R22 R21 K43 ["LayoutOrder"]
      227 LOADN                            R22 2
      228 SETTABLEKS                       R22 R21 K44 ["ZIndex"]
      230 GETUPVAL                         R22 1
      231 GETTABLEKS                       R22 R22 K37 ["Tag"]
      233 LOADK                            R23 K45 ["X-RowS X-Top Explorer-SearchBox-DropdownHeader"]
      234 SETTABLE                         R23 R21 R22
      235 DUPTABLE                         R22 K48 [{"Title", "Button"}]
      236 GETUPVAL                         R23 7
      237 LOADK                            R24 K49 ["TextLabel"]
      238 NEWTABLE                         R25 4 0
      240 MOVE                             R26 R10
      241 CALL                             R26 0 1
      242 SETTABLEKS                       R26 R25 K43 ["LayoutOrder"]
      244 GETTABLEKS                       R26 R0 K26 ["headerInfo"]
      246 GETTABLEKS                       R26 R26 K50 ["titleText"]
      248 SETTABLEKS                       R26 R25 K51 ["Text"]
      250 GETUPVAL                         R26 1
      251 GETTABLEKS                       R26 R26 K37 ["Tag"]
      253 LOADK                            R28 K52 ["Explorer-FillX Explorer-SearchBox-DropdownTitle"]
      254 GETUPVAL                         R30 8
      255 CALL                             R30 0 1
      256 JUMPIFNOT                        R30 ; [+2]
      257 LOADK                            R29 K53 [" Explorer-Content-Muted"]
      258 JUMP                             ; [+6]
      259 GETUPVAL                         R30 9
      260 CALL                             R30 0 1
      261 JUMPIFNOT                        R30 ; [+2]
      262 LOADK                            R29 K54 [" DEPRECATED_Explorer-Text-Size-14 Explorer-Content-Muted"]
      263 JUMP                             ; [+1]
      264 LOADK                            R29 K55 [""]
      265 CONCAT                           R27 R28 R29
      266 SETTABLE                         R27 R25 R26
      267 CALL                             R23 2 1
      268 SETTABLEKS                       R23 R22 K46 ["Title"]
      270 GETUPVAL                         R23 7
      271 LOADK                            R24 K28 ["Frame"]
      272 NEWTABLE                         R25 4 0
      274 LOADN                            R26 1
      275 SETTABLEKS                       R26 R25 K56 ["BackgroundTransparency"]
      277 MOVE                             R26 R10
      278 CALL                             R26 0 1
      279 SETTABLEKS                       R26 R25 K43 ["LayoutOrder"]
      281 GETUPVAL                         R26 1
      282 GETTABLEKS                       R26 R26 K37 ["Tag"]
      284 LOADK                            R27 K57 ["X-Fit"]
      285 SETTABLE                         R27 R25 R26
      286 NEWTABLE                         R26 0 1
      288 GETTABLEKS                       R27 R0 K26 ["headerInfo"]
      290 GETTABLEKS                       R27 R27 K58 ["button"]
      292 SETLIST                          R26 R27 1 [1]
      294 CALL                             R23 3 1
      295 SETTABLEKS                       R23 R22 K47 ["Button"]
      297 CALL                             R19 3 1
      298 SETTABLEKS                       R19 R18 K39 ["Header"]
      300 LOADB                            R19 0
      301 GETTABLEKS                       R20 R0 K27 ["placeholderText"]
      303 JUMPIFEQKNIL                     R20 ; [+46]
      305 LOADB                            R19 0
      306 JUMPIFNOTEQKN                    R2 K59 [0] ; [+43]
      308 GETUPVAL                         R19 7
      309 LOADK                            R20 K49 ["TextLabel"]
      310 NEWTABLE                         R21 8 0
      312 LOADN                            R22 1
      313 SETTABLEKS                       R22 R21 K56 ["BackgroundTransparency"]
      315 LOADB                            R22 1
      316 SETTABLEKS                       R22 R21 K60 ["ClipsDescendants"]
      318 MOVE                             R22 R10
      319 CALL                             R22 0 1
      320 SETTABLEKS                       R22 R21 K43 ["LayoutOrder"]
      322 GETIMPORT                        R22 K11 [UDim2.new]
      324 LOADN                            R23 1
      325 LOADN                            R24 0
      326 LOADN                            R25 0
      327 LOADN                            R26 14
      328 CALL                             R22 4 1
      329 SETTABLEKS                       R22 R21 K61 ["Size"]
      331 GETTABLEKS                       R22 R0 K27 ["placeholderText"]
      333 SETTABLEKS                       R22 R21 K51 ["Text"]
      335 GETIMPORT                        R22 K65 [Enum.TextXAlignment.Left]
      337 SETTABLEKS                       R22 R21 K63 ["TextXAlignment"]
      339 GETUPVAL                         R22 1
      340 GETTABLEKS                       R22 R22 K37 ["Tag"]
      342 GETUPVAL                         R24 8
      343 CALL                             R24 0 1
      344 JUMPIFNOT                        R24 ; [+2]
      345 LOADK                            R23 K66 ["Explorer-SidePadS Explorer-Content-Disabled"]
      346 JUMP                             ; [+1]
      347 LOADK                            R23 K67 ["Explorer-SidePadS Explorer-Content-Disabled DEPRECATED_Explorer-Text-Size-14"]
      348 SETTABLE                         R23 R21 R22
      349 CALL                             R19 2 1
      350 SETTABLEKS                       R19 R18 K40 ["PlaceholderLabel"]
      352 GETUPVAL                         R19 7
      353 LOADK                            R20 K41 ["ScrollingFrame"]
      354 NEWTABLE                         R21 8 0
      356 MOVE                             R22 R10
      357 CALL                             R22 0 1
      358 SETTABLEKS                       R22 R21 K43 ["LayoutOrder"]
      360 JUMPIFNOT                        R7 ; [+2]
      361 LOADN                            R22 8
      362 JUMP                             ; [+1]
      363 LOADN                            R22 0
      364 SETTABLEKS                       R22 R21 K68 ["ScrollBarThickness"]
      366 GETIMPORT                        R22 K11 [UDim2.new]
      368 LOADN                            R23 1
      369 LOADN                            R24 0
      370 LOADN                            R25 0
      371 MOVE                             R26 R6
      372 CALL                             R22 4 1
      373 SETTABLEKS                       R22 R21 K61 ["Size"]
      375 LOADN                            R22 1
      376 SETTABLEKS                       R22 R21 K44 ["ZIndex"]
      378 SETTABLEKS                       R4 R21 K31 ["ref"]
      380 GETUPVAL                         R22 1
      381 GETTABLEKS                       R22 R22 K69 ["Change"]
      383 GETTABLEKS                       R22 R22 K70 ["AbsoluteSize"]
      385 SETTABLE                         R9 R21 R22
      386 GETUPVAL                         R22 1
      387 GETTABLEKS                       R22 R22 K37 ["Tag"]
      389 LOADK                            R23 K71 ["X-ColumnS Explorer-SidePadS Explorer-ScrollingFrame"]
      390 SETTABLE                         R23 R21 R22
      391 GETUPVAL                         R22 10
      392 GETTABLEKS                       R23 R0 K3 ["itemData"]
      394 NEWCLOSURE                       R24 P7
      395 CAPTURE                          UPVAL U7
      396 CAPTURE                          UPVAL U11
      397 CAPTURE                          VAL R0
      398 CAPTURE                          VAL R8
      399 CAPTURE                          VAL R5
      400 CALL                             R22 2 -1
      401 CALL                             R19 -1 1
      402 SETTABLEKS                       R19 R18 K41 ["ScrollingFrame"]
      404 CALL                             R15 3 -1
      405 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["SearchBox"]
       13 GETTABLEKS                       R2 R2 K8 ["DropdownItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K10 ["HoverBlockerContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["RpcTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["Signal"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K15 ["WindowInputContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["createNextOrder"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Flags"]
       64 GETTABLEKS                       R9 R9 K19 ["getFFlagExplorerFixBlurryTextHopefully"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K18 ["Flags"]
       71 GETTABLEKS                       R10 R10 K20 ["getFFlagExplorerUseBuilderSans"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K16 ["Util"]
       78 GETTABLEKS                       R11 R11 K21 ["mapValues"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K23 ["useEventConnection"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K24 ["usePressHoldKey"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K22 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K25 ["useRefs"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R3 K26 ["createElement"]
      104 DUPCLOSURE                       R15 K27 [PROTO_11]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R1
      117 RETURN                           R15 1
