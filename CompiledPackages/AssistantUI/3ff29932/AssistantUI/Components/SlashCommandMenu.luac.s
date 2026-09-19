PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K5 [{[1] = "row align-y-center gap-small size-full-1000 padding-x-medium", ["onActivated"], ["LayoutOrder"], ["testId"]}]
        3 GETTABLEKS                       R4 R0 K2 ["onActivated"]
        5 SETTABLEKS                       R4 R3 K2 ["onActivated"]
        7 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K6 ["SlashCommandMenu"]
       14 GETTABLEKS                       R4 R4 K7 ["Item"]
       16 GETTABLEKS                       R4 R4 K8 ["Container"]
       18 SETTABLEKS                       R4 R3 K4 ["testId"]
       20 DUPTABLE                         R4 K11 [{"Command", "Description"}]
       21 GETUPVAL                         R5 0
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K14 [{[1] = "auto-xy text-label-medium text-align-y-center text-truncate-split", ["Text"], ["testId"]}]
       24 GETTABLEKS                       R8 R0 K15 ["command"]
       26 SETTABLEKS                       R8 R7 K13 ["Text"]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K6 ["SlashCommandMenu"]
       31 GETTABLEKS                       R8 R8 K7 ["Item"]
       33 GETTABLEKS                       R8 R8 K9 ["Command"]
       35 SETTABLEKS                       R8 R7 K4 ["testId"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K9 ["Command"]
       40 GETTABLEKS                       R5 R0 K16 ["description"]
       42 JUMPIFNOT                        R5 ; [+8]
       43 GETUPVAL                         R5 0
       44 GETUPVAL                         R6 3
       45 DUPTABLE                         R7 K18 [{[1] = "fill auto-y text-body-small text-align-x-left text-align-y-center text-truncate-split", ["Text"]}]
       46 GETTABLEKS                       R8 R0 K16 ["description"]
       48 SETTABLEKS                       R8 R7 K13 ["Text"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K10 ["Description"]
       53 CALL                             R1 3 -1
       54 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setTextAndFocus"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 [" "]
        5 CONCAT                           R2 R3 R4
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["isOpen"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["items"]
       15 LENGTH                           R2 R3
       16 JUMPIFEQKN                       R2 K4 [1] ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R0 K5 ["UserInputType"]
       21 GETIMPORT                        R3 K8 [Enum.UserInputType.Keyboard]
       23 JUMPIFEQ                         R2 R3 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R2 R0 K9 ["KeyCode"]
       28 GETIMPORT                        R3 K11 [Enum.KeyCode.Tab]
       30 JUMPIFEQ                         R2 R3 ; [+2]
       32 RETURN                           R0 0
       33 LOADK                            R2 K12 ["%*%*"]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K13 ["CommandPrefix"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K3 ["items"]
       40 GETTABLEN                        R5 R6 1
       41 NAMECALL                         R2 R2 K14 ["format"]
       43 CALL                             R2 3 1
       44 GETUPVAL                         R3 2
       45 MOVE                             R4 R2
       46 CALL                             R3 1 0
       47 LOADB                            R5 0
       48 NAMECALL                         R3 R1 K15 ["ReleaseFocus"]
       50 CALL                             R3 2 0
       51 GETIMPORT                        R3 K18 [task.wait]
       53 CALL                             R3 0 0
       54 NAMECALL                         R3 R1 K19 ["CaptureFocus"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["isOpen"]
        6 JUMPIFNOT                        R1 ; [+17]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETIMPORT                        R1 K4 [UDim2.new]
       10 LOADN                            R2 1
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 GETUPVAL                         R5 2
       14 CALL                             R1 4 1
       15 SETTABLEKS                       R1 R0 K5 ["Size"]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K5 ["Size"]
       20 GETTABLEKS                       R1 R1 K6 ["Size_150"]
       22 SETTABLEKS                       R1 R0 K7 ["ScrollBarThickness"]
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [math.min]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K3 ["setTextAndFocus"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K4 ["useContext"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K5 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R5 R3 K6 ["inputBeganSignal"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 3
       34 GETTABLEKS                       R8 R0 K7 ["isOpen"]
       36 GETTABLEKS                       R9 R0 K8 ["items"]
       38 MOVE                             R10 R2
       39 SETLIST                          R7 R8 3 [1]
       41 CALL                             R4 3 0
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K9 ["useState"]
       45 LOADN                            R5 0
       46 CALL                             R4 1 2
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K10 ["useRef"]
       50 LOADNIL                          R7
       51 CALL                             R6 1 1
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K11 ["useEffect"]
       55 NEWCLOSURE                       R8 P2
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 NEWTABLE                         R9 0 2
       62 GETTABLEKS                       R10 R0 K7 ["isOpen"]
       64 MOVE                             R11 R4
       65 SETLIST                          R9 R10 2 [1]
       67 CALL                             R7 2 0
       68 GETUPVAL                         R7 5
       69 CALL                             R7 0 1
       70 NEWTABLE                         R8 0 0
       72 GETTABLEKS                       R9 R0 K8 ["items"]
       74 LOADNIL                          R10
       75 LOADNIL                          R11
       76 FORGPREP                         R9
       77 LOADK                            R14 K12 ["%*%*"]
       78 GETUPVAL                         R16 4
       79 GETTABLEKS                       R16 R16 K13 ["CommandPrefix"]
       81 MOVE                             R17 R13
       82 NAMECALL                         R14 R14 K14 ["format"]
       84 CALL                             R14 3 1
       85 GETUPVAL                         R15 6
       86 GETUPVAL                         R16 7
       87 DUPTABLE                         R17 K19 [{"command", "description", "onActivated", "LayoutOrder"}]
       88 SETTABLEKS                       R14 R17 K15 ["command"]
       90 GETUPVAL                         R18 4
       91 GETTABLEKS                       R18 R18 K20 ["getSlashCommandDescription"]
       93 MOVE                             R19 R13
       94 CALL                             R18 1 1
       95 SETTABLEKS                       R18 R17 K16 ["description"]
       97 NEWCLOSURE                       R18 P3
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R14
      100 SETTABLEKS                       R18 R17 K17 ["onActivated"]
      102 MOVE                             R18 R7
      103 CALL                             R18 0 1
      104 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      106 CALL                             R15 2 1
      107 SETTABLE                         R15 R8 R13
      108 GETTABLEKS                       R16 R0 K8 ["items"]
      110 LENGTH                           R15 R16
      111 JUMPIFNOTLT                      R12 R15 ; [+17]
      113 LOADK                            R15 K21 ["Divider-%*"]
      114 MOVE                             R17 R12
      115 NAMECALL                         R15 R15 K14 ["format"]
      117 CALL                             R15 2 1
      118 GETUPVAL                         R16 6
      119 GETUPVAL                         R17 0
      120 GETTABLEKS                       R17 R17 K22 ["Divider"]
      122 DUPTABLE                         R18 K23 [{"LayoutOrder"}]
      123 MOVE                             R19 R7
      124 CALL                             R19 0 1
      125 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      127 CALL                             R16 2 1
      128 SETTABLE                         R16 R8 R15
      129 FORGLOOP                         R9 2 ; [-53]
      131 GETTABLEKS                       R9 R1 K24 ["Size"]
      133 GETTABLEKS                       R9 R9 K25 ["Size_1000"]
      135 LOADK                            R12 K27 [5.5]
      136 MUL                              R11 R12 R9
      137 ADDK                             R10 R11 K26 [5]
      138 GETUPVAL                         R11 6
      139 LOADK                            R12 K28 ["UIListLayout"]
      140 NEWTABLE                         R13 4 0
      142 GETIMPORT                        R14 K32 [Enum.FillDirection.Vertical]
      144 SETTABLEKS                       R14 R13 K30 ["FillDirection"]
      146 GETIMPORT                        R14 K34 [Enum.SortOrder.LayoutOrder]
      148 SETTABLEKS                       R14 R13 K33 ["SortOrder"]
      150 GETUPVAL                         R14 1
      151 GETTABLEKS                       R14 R14 K35 ["Change"]
      153 GETTABLEKS                       R14 R14 K36 ["AbsoluteContentSize"]
      155 NEWCLOSURE                       R15 P4
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R10
      158 SETTABLE                         R15 R13 R14
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R8 K37 ["Layout"]
      162 JUMPIFLE                         R10 R4 ; [+2]
      164 LOADB                            R11 0 +1
      165 LOADB                            R11 1
      166 MOVE                             R12 R11
      167 JUMPIFNOT                        R12 ; [+14]
      168 GETUPVAL                         R12 6
      169 LOADK                            R13 K38 ["UIPadding"]
      170 DUPTABLE                         R14 K40 [{"PaddingRight"}]
      171 GETIMPORT                        R15 K43 [UDim.new]
      173 LOADN                            R16 0
      174 GETTABLEKS                       R17 R1 K44 ["Padding"]
      176 GETTABLEKS                       R17 R17 K45 ["XXSmall"]
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K39 ["PaddingRight"]
      181 CALL                             R12 2 1
      182 SETTABLEKS                       R12 R8 K44 ["Padding"]
      184 GETUPVAL                         R12 6
      185 GETUPVAL                         R13 8
      186 GETTABLEKS                       R13 R13 K46 ["Root"]
      188 DUPTABLE                         R14 K47 [{"isOpen"}]
      189 GETTABLEKS                       R15 R0 K7 ["isOpen"]
      191 SETTABLEKS                       R15 R14 K7 ["isOpen"]
      193 DUPTABLE                         R15 K50 [{"Anchor", "Content"}]
      194 GETUPVAL                         R16 6
      195 GETUPVAL                         R17 8
      196 GETTABLEKS                       R17 R17 K48 ["Anchor"]
      198 LOADNIL                          R18
      199 GETTABLEKS                       R19 R0 K51 ["children"]
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K48 ["Anchor"]
      204 GETUPVAL                         R16 6
      205 GETUPVAL                         R17 8
      206 GETTABLEKS                       R17 R17 K49 ["Content"]
      208 DUPTABLE                         R18 K54 [{"side", "align"}]
      209 GETUPVAL                         R19 0
      210 GETTABLEKS                       R19 R19 K55 ["Enums"]
      212 GETTABLEKS                       R19 R19 K56 ["PopoverSide"]
      214 GETTABLEKS                       R19 R19 K57 ["Top"]
      216 SETTABLEKS                       R19 R18 K52 ["side"]
      218 GETUPVAL                         R19 0
      219 GETTABLEKS                       R19 R19 K55 ["Enums"]
      221 GETTABLEKS                       R19 R19 K58 ["PopoverAlign"]
      223 GETTABLEKS                       R19 R19 K59 ["Center"]
      225 SETTABLEKS                       R19 R18 K53 ["align"]
      227 DUPTABLE                         R19 K61 [{"Container"}]
      228 LOADB                            R20 0
      229 GETTABLEKS                       R22 R0 K8 ["items"]
      231 LENGTH                           R21 R22
      232 LOADN                            R22 0
      233 JUMPIFNOTLT                      R22 R21 ; [+69]
      235 GETUPVAL                         R20 6
      236 LOADK                            R21 K62 ["CanvasGroup"]
      237 DUPTABLE                         R22 K66 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
      238 GETIMPORT                        R23 K68 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R23 R22 K63 ["AutomaticSize"]
      242 GETTABLEKS                       R23 R0 K69 ["width"]
      244 DUPCLOSURE                       R25 K70 [PROTO_6]
      245 NAMECALL                         R23 R23 K71 ["map"]
      247 CALL                             R23 2 1
      248 SETTABLEKS                       R23 R22 K24 ["Size"]
      250 DUPTABLE                         R23 K74 [{"Corner", "ScrollView"}]
      251 GETUPVAL                         R24 6
      252 LOADK                            R25 K75 ["UICorner"]
      253 DUPTABLE                         R26 K77 [{"CornerRadius"}]
      254 GETIMPORT                        R27 K43 [UDim.new]
      256 LOADN                            R28 0
      257 GETTABLEKS                       R29 R1 K78 ["Radius"]
      259 GETTABLEKS                       R29 R29 K79 ["Medium"]
      261 CALL                             R27 2 1
      262 SETTABLEKS                       R27 R26 K76 ["CornerRadius"]
      264 CALL                             R24 2 1
      265 SETTABLEKS                       R24 R23 K72 ["Corner"]
      267 GETUPVAL                         R24 6
      268 GETUPVAL                         R25 9
      269 DUPTABLE                         R26 K84 [{"tag", "Size", "scroll", "scrollingFrameRef", "testId"}]
      270 NEWTABLE                         R27 2 0
      272 LOADB                            R28 1
      273 SETTABLEKS                       R28 R27 K85 ["auto-y bg-shift-200"]
      275 SETTABLEKS                       R11 R27 K86 ["padding-right-xxsmall"]
      277 SETTABLEKS                       R27 R26 K80 ["tag"]
      279 GETIMPORT                        R27 K89 [UDim2.fromScale]
      281 LOADN                            R28 1
      282 LOADN                            R29 0
      283 CALL                             R27 2 1
      284 SETTABLEKS                       R27 R26 K24 ["Size"]
      286 GETUPVAL                         R27 10
      287 SETTABLEKS                       R27 R26 K81 ["scroll"]
      289 SETTABLEKS                       R6 R26 K82 ["scrollingFrameRef"]
      291 GETUPVAL                         R27 11
      292 GETTABLEKS                       R27 R27 K90 ["SlashCommandMenu"]
      294 GETTABLEKS                       R27 R27 K60 ["Container"]
      296 SETTABLEKS                       R27 R26 K83 ["testId"]
      298 MOVE                             R27 R8
      299 CALL                             R24 3 1
      300 SETTABLEKS                       R24 R23 K73 ["ScrollView"]
      302 CALL                             R20 3 1
      303 SETTABLEKS                       R20 R19 K60 ["Container"]
      305 CALL                             R16 3 1
      306 SETTABLEKS                       R16 R15 K49 ["Content"]
      308 CALL                             R12 3 -1
      309 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["UIToolRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["WindowInputContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K17 ["useEventConnection"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R1 K18 ["Popover"]
       60 GETTABLEKS                       R9 R1 K19 ["ScrollView"]
       62 GETTABLEKS                       R10 R1 K20 ["Text"]
       64 GETTABLEKS                       R11 R1 K21 ["View"]
       66 GETTABLEKS                       R12 R3 K22 ["createNextOrder"]
       68 GETTABLEKS                       R13 R2 K23 ["createElement"]
       70 DUPTABLE                         R14 K28 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       71 GETIMPORT                        R15 K32 [Enum.AutomaticSize.Y]
       73 SETTABLEKS                       R15 R14 K24 ["AutomaticCanvasSize"]
       75 GETIMPORT                        R15 K35 [UDim2.new]
       77 CALL                             R15 0 1
       78 SETTABLEKS                       R15 R14 K25 ["CanvasSize"]
       80 GETIMPORT                        R15 K36 [Enum.ScrollingDirection.Y]
       82 SETTABLEKS                       R15 R14 K26 ["ScrollingDirection"]
       84 GETIMPORT                        R15 K39 [Enum.ScrollBarInset.ScrollBar]
       86 SETTABLEKS                       R15 R14 K27 ["VerticalScrollBarInset"]
       88 DUPCLOSURE                       R15 K40 [PROTO_0]
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 DUPCLOSURE                       R16 K41 [PROTO_7]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R4
      106 RETURN                           R16 1
