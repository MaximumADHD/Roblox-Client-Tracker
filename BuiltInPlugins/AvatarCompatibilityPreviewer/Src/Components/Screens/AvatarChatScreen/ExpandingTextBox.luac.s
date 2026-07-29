PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteCanvasSize"]
        8 GETTABLEKS                       R2 R2 K2 ["X"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 JUMPIFEQKNIL                     R1 ; [+7]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       19 GETTABLEKS                       R3 R3 K4 ["Y"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Text"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R5 K3 [Enum.ModifierKey.Shift]
        4 NAMECALL                         R3 R2 K4 ["IsModifierKeyDown"]
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["onReturnPressed"]
       11 CALL                             R3 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K6 ["current"]
       16 JUMPIFEQKNIL                     R3 ; [+10]
       18 LOADN                            R4 0
       19 JUMPIFLE                         R3 R4 ; [+7]
       21 GETTABLEKS                       R6 R0 K8 ["Text"]
       23 LENGTH                           R5 R6
       24 ADDK                             R4 R5 K7 [1]
       25 JUMPIFNOTLT                      R4 R3 ; [+2]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R9 R0 K8 ["Text"]
       30 LOADN                            R10 1
       31 SUBK                             R11 R3 K7 [1]
       32 FASTCALL                         STRING_SUB ; [+2]
       33 GETIMPORT                        R8 K11 [string.sub]
       35 CALL                             R8 3 1
       36 MOVE                             R5 R8
       37 LOADK                            R6 K12 ["\n"]
       38 GETTABLEKS                       R8 R0 K8 ["Text"]
       40 FASTCALL2                        STRING_SUB R8 R3 ; [+4]
       42 MOVE                             R9 R3
       43 GETIMPORT                        R7 K11 [string.sub]
       45 CALL                             R7 2 1
       46 CONCAT                           R4 R5 R7
       47 SETTABLEKS                       R4 R0 K8 ["Text"]
       49 GETIMPORT                        R4 K15 [task.wait]
       51 CALL                             R4 0 0
       52 NAMECALL                         R4 R0 K16 ["CaptureFocus"]
       54 CALL                             R4 1 0
       55 ADDK                             R4 R3 K7 [1]
       56 SETTABLEKS                       R4 R0 K17 ["CursorPosition"]
       58 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R5 R0 K4 ["TextSize"]
       13 GETTABLEKS                       R6 R0 K5 ["LineHeight"]
       15 MUL                              R4 R5 R6
       16 DIVK                             R3 R4 K3 [2]
       17 GETTABLEKS                       R5 R0 K6 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R5 K7 ["X"]
       21 DIV                              R4 R5 R3
       22 GETIMPORT                        R5 K10 [string.find]
       24 GETTABLEKS                       R6 R0 K11 ["Text"]
       26 LOADK                            R7 K12 ["\n"]
       27 SUBK                             R8 R1 K13 [1]
       28 CALL                             R5 3 1
       29 GETIMPORT                        R6 K10 [string.find]
       31 GETTABLEKS                       R7 R0 K11 ["Text"]
       33 LOADK                            R8 K14 [" "]
       34 MOVE                             R9 R1
       35 CALL                             R6 3 1
       36 JUMPIFEQKNIL                     R5 ; [+11]
       38 JUMPIFEQKNIL                     R6 ; [+9]
       40 FASTCALL2                        MATH_MIN R5 R6 ; [+5]
       42 MOVE                             R8 R5
       43 MOVE                             R9 R6
       44 GETIMPORT                        R7 K17 [math.min]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 ADD                              R9 R1 R4
       49 MOVE                             R10 R6
       50 JUMPIF                           R10 ; [+3]
       51 GETTABLEKS                       R11 R0 K11 ["Text"]
       53 LENGTH                           R10 R11
       54 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       56 GETIMPORT                        R8 K17 [math.min]
       58 CALL                             R8 2 1
       59 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       60 GETIMPORT                        R7 K19 [math.floor]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R9 R0 K11 ["Text"]
       65 LOADN                            R10 1
       66 FASTCALL3                        STRING_SUB R9 R10 R7
       68 MOVE                             R11 R7
       69 GETIMPORT                        R8 K21 [string.sub]
       71 CALL                             R8 3 1
       72 GETUPVAL                         R9 1
       73 SETTABLEKS                       R1 R9 K2 ["current"]
       75 GETUPVAL                         R9 2
       76 SETTABLEKS                       R8 R9 K2 ["current"]
       78 SETTABLEKS                       R8 R2 K11 ["Text"]
       80 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 JUMPIFEQKNIL                     R1 ; [+3]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETIMPORT                        R3 K3 [task.wait]
       13 CALL                             R3 0 0
       14 GETTABLEKS                       R3 R2 K4 ["CursorPosition"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K0 ["current"]
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R0 K5 ["Text"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K0 ["current"]
       27 JUMPIFEQ                         R3 R4 ; [+2]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R3 R1 K6 ["AbsolutePosition"]
       32 GETTABLEKS                       R3 R3 K7 ["Y"]
       34 GETTABLEKS                       R5 R1 K8 ["AbsoluteSize"]
       36 GETTABLEKS                       R5 R5 K7 ["Y"]
       38 ADD                              R4 R3 R5
       39 GETTABLEKS                       R6 R2 K6 ["AbsolutePosition"]
       41 GETTABLEKS                       R6 R6 K7 ["Y"]
       43 GETTABLEKS                       R7 R0 K9 ["TextBounds"]
       45 GETTABLEKS                       R7 R7 K7 ["Y"]
       47 ADD                              R5 R6 R7
       48 GETTABLEKS                       R8 R2 K10 ["TextSize"]
       50 GETTABLEKS                       R9 R2 K11 ["LineHeight"]
       52 MUL                              R7 R8 R9
       53 SUB                              R6 R5 R7
       54 LOADNIL                          R7
       55 JUMPIFNOTLT                      R6 R3 ; [+3]
       57 SUB                              R7 R3 R6
       58 JUMP                             ; [+5]
       59 JUMPIFNOTLT                      R4 R5 ; [+3]
       61 SUB                              R7 R4 R5
       62 JUMP                             ; [+1]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R8 R1 K12 ["CanvasPosition"]
       66 GETIMPORT                        R9 K15 [Vector2.new]
       68 LOADN                            R10 0
       69 MOVE                             R11 R7
       70 CALL                             R9 2 1
       71 SUB                              R8 R8 R9
       72 SETTABLEKS                       R8 R1 K12 ["CanvasPosition"]
       74 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextBox"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K3 ["join"]
        9 DUPTABLE                         R5 K20 [{["PlaceholderText"], ["PlaceholderColor3"], ["TextWrapped"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["ClearTextOnFocus"] = False, ["Font"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextEditable"], ["Interactable"], ["BackgroundTransparency"] = 1}]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K21 ["placeholder"]
       13 SETTABLEKS                       R6 R5 K4 ["PlaceholderText"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K22 ["Color3"]
       18 SETTABLEKS                       R6 R5 K5 ["PlaceholderColor3"]
       20 GETUPVAL                         R6 4
       21 SETTABLEKS                       R6 R5 K6 ["TextWrapped"]
       23 GETUPVAL                         R7 4
       24 JUMPIFNOT                        R7 ; [+3]
       25 GETIMPORT                        R6 K25 [Enum.TextTruncate.None]
       27 JUMP                             ; [+2]
       28 GETIMPORT                        R6 K27 [Enum.TextTruncate.AtEnd]
       30 SETTABLEKS                       R6 R5 K7 ["TextTruncate"]
       32 GETIMPORT                        R6 K29 [Enum.TextXAlignment.Left]
       34 SETTABLEKS                       R6 R5 K8 ["TextXAlignment"]
       36 GETIMPORT                        R6 K31 [Enum.TextYAlignment.Center]
       38 SETTABLEKS                       R6 R5 K9 ["TextYAlignment"]
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K12 ["Font"]
       43 SETTABLEKS                       R6 R5 K12 ["Font"]
       45 GETUPVAL                         R6 5
       46 GETTABLEKS                       R6 R6 K32 ["FontSize"]
       48 SETTABLEKS                       R6 R5 K13 ["TextSize"]
       50 GETUPVAL                         R6 5
       51 GETTABLEKS                       R6 R6 K14 ["LineHeight"]
       53 SETTABLEKS                       R6 R5 K14 ["LineHeight"]
       55 GETUPVAL                         R6 6
       56 GETTABLEKS                       R6 R6 K22 ["Color3"]
       58 SETTABLEKS                       R6 R5 K15 ["TextColor3"]
       60 GETUPVAL                         R7 7
       61 NOT                              R6 R7
       62 SETTABLEKS                       R6 R5 K16 ["TextEditable"]
       64 GETUPVAL                         R7 7
       65 NOT                              R6 R7
       66 SETTABLEKS                       R6 R5 K17 ["Interactable"]
       68 MOVE                             R6 R0
       69 CALL                             R4 2 1
       70 MOVE                             R5 R1
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Typography"]
        4 GETTABLEKS                       R2 R2 K1 ["BodySmall"]
        6 GETTABLEKS                       R3 R1 K2 ["Color"]
        8 GETTABLEKS                       R3 R3 K3 ["Content"]
       10 GETTABLEKS                       R3 R3 K4 ["Emphasis"]
       12 GETTABLEKS                       R4 R1 K2 ["Color"]
       14 GETTABLEKS                       R4 R4 K3 ["Content"]
       16 GETTABLEKS                       R4 R4 K5 ["Muted"]
       18 GETTABLEKS                       R5 R1 K2 ["Color"]
       20 GETTABLEKS                       R5 R5 K3 ["Content"]
       22 GETTABLEKS                       R5 R5 K5 ["Muted"]
       24 GETTABLEKS                       R6 R1 K6 ["Size"]
       26 GETTABLEKS                       R6 R6 K7 ["Size_300"]
       28 GETTABLEKS                       R7 R1 K8 ["Padding"]
       30 GETTABLEKS                       R7 R7 K9 ["XXSmall"]
       32 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       34 JUMPIFEQKB                       R9 TRUE ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K11 ["useRef"]
       41 LOADNIL                          R10
       42 CALL                             R9 1 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K11 ["useRef"]
       46 LOADNIL                          R11
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K11 ["useRef"]
       51 LOADNIL                          R12
       52 CALL                             R11 1 1
       53 GETUPVAL                         R12 1
       54 GETTABLEKS                       R12 R12 K11 ["useRef"]
       56 LOADNIL                          R13
       57 CALL                             R12 1 1
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R13 R13 K11 ["useRef"]
       61 LOADNIL                          R14
       62 CALL                             R13 1 1
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K12 ["useState"]
       66 LOADN                            R15 24
       67 CALL                             R14 1 2
       68 GETUPVAL                         R16 1
       69 GETTABLEKS                       R16 R16 K12 ["useState"]
       71 LOADN                            R17 0
       72 CALL                             R16 1 2
       73 GETTABLEKS                       R20 R0 K13 ["text"]
       75 LENGTH                           R19 R20
       76 LOADN                            R20 0
       77 JUMPIFLT                         R20 R19 ; [+2]
       79 LOADB                            R18 0 +1
       80 LOADB                            R18 1
       81 GETUPVAL                         R19 1
       82 GETTABLEKS                       R19 R19 K14 ["useCallback"]
       84 NEWCLOSURE                       R20 P0
       85 CAPTURE                          VAL R17
       86 NEWTABLE                         R21 0 0
       88 CALL                             R19 2 1
       89 GETUPVAL                         R20 1
       90 GETTABLEKS                       R20 R20 K14 ["useCallback"]
       92 NEWCLOSURE                       R21 P1
       93 CAPTURE                          VAL R15
       94 NEWTABLE                         R22 0 0
       96 CALL                             R20 2 1
       97 GETUPVAL                         R21 1
       98 GETTABLEKS                       R21 R21 K15 ["useEffect"]
      100 NEWCLOSURE                       R22 P2
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R15
      105 NEWTABLE                         R23 0 0
      107 CALL                             R21 2 0
      108 GETUPVAL                         R21 1
      109 GETTABLEKS                       R21 R21 K14 ["useCallback"]
      111 NEWCLOSURE                       R22 P3
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R23 0 1
      115 GETTABLEKS                       R24 R0 K16 ["onChanged"]
      117 SETLIST                          R23 R24 1 [1]
      119 CALL                             R21 2 1
      120 GETUPVAL                         R22 1
      121 GETTABLEKS                       R22 R22 K14 ["useCallback"]
      123 NEWCLOSURE                       R23 P4
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R12
      126 NEWTABLE                         R24 0 1
      128 GETTABLEKS                       R25 R0 K17 ["onReturnPressed"]
      130 SETLIST                          R24 R25 1 [1]
      132 CALL                             R22 2 1
      133 GETUPVAL                         R23 1
      134 GETTABLEKS                       R23 R23 K14 ["useCallback"]
      136 NEWCLOSURE                       R24 P5
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R13
      140 NEWTABLE                         R25 0 0
      142 CALL                             R23 2 1
      143 GETUPVAL                         R24 1
      144 GETTABLEKS                       R24 R24 K14 ["useCallback"]
      146 NEWCLOSURE                       R25 P6
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R13
      151 NEWTABLE                         R26 0 0
      153 CALL                             R24 2 1
      154 NEWCLOSURE                       R25 P7
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R8
      163 LOADN                            R27 120
      164 JUMPIFLT                         R27 R14 ; [+2]
      166 LOADB                            R26 0 +1
      167 LOADB                            R26 1
      168 GETUPVAL                         R27 1
      169 GETTABLEKS                       R27 R27 K18 ["createElement"]
      171 LOADK                            R28 K19 ["ScrollingFrame"]
      172 NEWTABLE                         R29 16 0
      174 GETIMPORT                        R30 K22 [UDim2.new]
      176 LOADN                            R31 1
      177 LOADN                            R32 0
      178 LOADN                            R33 0
      179 FASTCALL2K                       MATH_MIN R14 K23 ; [+5]
      181 MOVE                             R35 R14
      182 LOADK                            R36 K23 [120]
      183 GETIMPORT                        R34 K26 [math.min]
      185 CALL                             R34 2 1
      186 CALL                             R30 4 1
      187 SETTABLEKS                       R30 R29 K6 ["Size"]
      189 GETIMPORT                        R30 K30 [Enum.AutomaticSize.Y]
      191 SETTABLEKS                       R30 R29 K31 ["AutomaticCanvasSize"]
      193 GETIMPORT                        R30 K33 [UDim2.fromOffset]
      195 LOADN                            R31 0
      196 LOADN                            R32 0
      197 CALL                             R30 2 1
      198 SETTABLEKS                       R30 R29 K34 ["CanvasSize"]
      200 GETIMPORT                        R30 K36 [Enum.ScrollingDirection.Y]
      202 SETTABLEKS                       R30 R29 K35 ["ScrollingDirection"]
      204 SETTABLEKS                       R26 R29 K37 ["ScrollingEnabled"]
      206 SETTABLEKS                       R6 R29 K38 ["ScrollBarThickness"]
      208 GETTABLEKS                       R30 R5 K39 ["Color3"]
      210 SETTABLEKS                       R30 R29 K40 ["ScrollBarImageColor3"]
      212 JUMPIFNOT                        R26 ; [+3]
      213 GETTABLEKS                       R30 R5 K41 ["Transparency"]
      215 JUMP                             ; [+1]
      216 LOADN                            R30 1
      217 SETTABLEKS                       R30 R29 K42 ["ScrollBarImageTransparency"]
      219 GETIMPORT                        R30 K45 [Enum.ScrollBarInset.Always]
      221 SETTABLEKS                       R30 R29 K46 ["VerticalScrollBarInset"]
      223 LOADN                            R30 1
      224 SETTABLEKS                       R30 R29 K47 ["BackgroundTransparency"]
      226 LOADN                            R30 0
      227 SETTABLEKS                       R30 R29 K48 ["BorderSizePixel"]
      229 GETTABLEKS                       R30 R0 K49 ["LayoutOrder"]
      231 SETTABLEKS                       R30 R29 K49 ["LayoutOrder"]
      233 SETTABLEKS                       R9 R29 K50 ["ref"]
      235 GETUPVAL                         R30 1
      236 GETTABLEKS                       R30 R30 K51 ["Change"]
      238 GETTABLEKS                       R30 R30 K52 ["AbsoluteCanvasSize"]
      240 SETTABLE                         R19 R29 R30
      241 DUPTABLE                         R30 K56 [{"TextBox", "UIListLayout", "UIPadding"}]
      242 MOVE                             R31 R25
      243 NEWTABLE                         R32 8 0
      245 GETTABLEKS                       R33 R0 K13 ["text"]
      247 SETTABLEKS                       R33 R32 K57 ["Text"]
      249 GETIMPORT                        R33 K33 [UDim2.fromOffset]
      251 LOADN                            R36 2
      252 MUL                              R35 R36 R7
      253 SUB                              R34 R16 R35
      254 LOADN                            R35 24
      255 CALL                             R33 2 1
      256 SETTABLEKS                       R33 R32 K6 ["Size"]
      258 GETIMPORT                        R33 K30 [Enum.AutomaticSize.Y]
      260 SETTABLEKS                       R33 R32 K28 ["AutomaticSize"]
      262 SETTABLEKS                       R10 R32 K50 ["ref"]
      264 GETUPVAL                         R33 1
      265 GETTABLEKS                       R33 R33 K51 ["Change"]
      267 GETTABLEKS                       R33 R33 K57 ["Text"]
      269 SETTABLE                         R21 R32 R33
      270 GETUPVAL                         R33 1
      271 GETTABLEKS                       R33 R33 K51 ["Change"]
      273 GETTABLEKS                       R33 R33 K58 ["AbsoluteSize"]
      275 SETTABLE                         R20 R32 R33
      276 GETUPVAL                         R33 1
      277 GETTABLEKS                       R33 R33 K51 ["Change"]
      279 GETTABLEKS                       R33 R33 K59 ["CursorPosition"]
      281 SETTABLE                         R23 R32 R33
      282 GETUPVAL                         R33 1
      283 GETTABLEKS                       R33 R33 K60 ["Event"]
      285 GETTABLEKS                       R33 R33 K61 ["FocusLost"]
      287 SETTABLE                         R22 R32 R33
      288 DUPTABLE                         R33 K63 [{"BoundsChecker", "UIListLayout"}]
      289 MOVE                             R34 R25
      290 NEWTABLE                         R35 16 0
      292 GETIMPORT                        R36 K65 [UDim2.fromScale]
      294 LOADN                            R37 1
      295 LOADN                            R38 0
      296 CALL                             R36 2 1
      297 SETTABLEKS                       R36 R35 K6 ["Size"]
      299 LOADK                            R36 K66 [""]
      300 SETTABLEKS                       R36 R35 K67 ["PlaceholderText"]
      302 LOADN                            R36 1
      303 SETTABLEKS                       R36 R35 K68 ["TextTransparency"]
      305 GETIMPORT                        R36 K71 [Enum.TextYAlignment.Top]
      307 SETTABLEKS                       R36 R35 K69 ["TextYAlignment"]
      309 LOADB                            R36 0
      310 SETTABLEKS                       R36 R35 K72 ["TextEditable"]
      312 LOADB                            R36 0
      313 SETTABLEKS                       R36 R35 K73 ["Interactable"]
      315 LOADB                            R36 0
      316 SETTABLEKS                       R36 R35 K74 ["Selectable"]
      318 SETTABLEKS                       R11 R35 K50 ["ref"]
      320 GETUPVAL                         R36 1
      321 GETTABLEKS                       R36 R36 K51 ["Change"]
      323 GETTABLEKS                       R36 R36 K75 ["TextBounds"]
      325 SETTABLE                         R24 R35 R36
      326 CALL                             R34 1 1
      327 SETTABLEKS                       R34 R33 K62 ["BoundsChecker"]
      329 GETUPVAL                         R34 1
      330 GETTABLEKS                       R34 R34 K18 ["createElement"]
      332 LOADK                            R35 K54 ["UIListLayout"]
      333 DUPTABLE                         R36 K77 [{"VerticalFlex"}]
      334 GETIMPORT                        R37 K80 [Enum.UIFlexAlignment.Fill]
      336 SETTABLEKS                       R37 R36 K76 ["VerticalFlex"]
      338 CALL                             R34 2 1
      339 SETTABLEKS                       R34 R33 K54 ["UIListLayout"]
      341 CALL                             R31 2 1
      342 SETTABLEKS                       R31 R30 K53 ["TextBox"]
      344 GETUPVAL                         R31 1
      345 GETTABLEKS                       R31 R31 K18 ["createElement"]
      347 LOADK                            R32 K54 ["UIListLayout"]
      348 DUPTABLE                         R33 K82 [{"ItemLineAlignment"}]
      349 GETIMPORT                        R34 K84 [Enum.ItemLineAlignment.Center]
      351 SETTABLEKS                       R34 R33 K81 ["ItemLineAlignment"]
      353 CALL                             R31 2 1
      354 SETTABLEKS                       R31 R30 K54 ["UIListLayout"]
      356 GETUPVAL                         R31 1
      357 GETTABLEKS                       R31 R31 K18 ["createElement"]
      359 LOADK                            R32 K55 ["UIPadding"]
      360 DUPTABLE                         R33 K87 [{"PaddingLeft", "PaddingRight"}]
      361 GETIMPORT                        R34 K89 [UDim.new]
      363 LOADN                            R35 0
      364 MOVE                             R36 R7
      365 CALL                             R34 2 1
      366 SETTABLEKS                       R34 R33 K85 ["PaddingLeft"]
      368 GETIMPORT                        R34 K89 [UDim.new]
      370 LOADN                            R35 0
      371 MOVE                             R36 R7
      372 CALL                             R34 2 1
      373 SETTABLEKS                       R34 R33 K86 ["PaddingRight"]
      375 CALL                             R31 2 1
      376 SETTABLEKS                       R31 R30 K55 ["UIPadding"]
      378 CALL                             R27 3 -1
      379 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       32 DUPCLOSURE                       R5 K12 [PROTO_8]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 RETURN                           R5 1
