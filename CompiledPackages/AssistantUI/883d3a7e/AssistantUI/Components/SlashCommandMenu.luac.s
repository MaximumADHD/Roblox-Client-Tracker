PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["SlashCommandMenuItem should not be rendered when FFlagMCPAssistantSlashCommandMenu is false"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K7 [{"tag", "onActivated", "LayoutOrder", "testId"}]
       11 LOADK                            R4 K8 ["row size-full-1000 padding-x-medium gap-small align-y-center"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       16 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       18 GETTABLEKS                       R4 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K9 ["SlashCommandMenu"]
       25 GETTABLEKS                       R5 R6 K10 ["Item"]
       27 GETTABLEKS                       R4 R5 K11 ["Container"]
       29 SETTABLEKS                       R4 R3 K6 ["testId"]
       31 DUPTABLE                         R4 K14 [{"Command", "Description"}]
       32 GETUPVAL                         R5 1
       33 GETUPVAL                         R6 4
       34 DUPTABLE                         R7 K16 [{"tag", "Text", "testId"}]
       35 LOADK                            R8 K17 ["auto-xy text-label-medium text-align-y-center text-truncate-split"]
       36 SETTABLEKS                       R8 R7 K3 ["tag"]
       38 GETTABLEKS                       R8 R0 K18 ["command"]
       40 SETTABLEKS                       R8 R7 K15 ["Text"]
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R10 R11 K9 ["SlashCommandMenu"]
       45 GETTABLEKS                       R9 R10 K10 ["Item"]
       47 GETTABLEKS                       R8 R9 K12 ["Command"]
       49 SETTABLEKS                       R8 R7 K6 ["testId"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K12 ["Command"]
       54 GETTABLEKS                       R5 R0 K19 ["description"]
       56 JUMPIFNOT                        R5 ; [+11]
       57 GETUPVAL                         R5 1
       58 GETUPVAL                         R6 4
       59 DUPTABLE                         R7 K20 [{"tag", "Text"}]
       60 LOADK                            R8 K21 ["auto-y fill center text-body-small text-align-x-left text-align-y-center text-truncate-split"]
       61 SETTABLEKS                       R8 R7 K3 ["tag"]
       63 GETTABLEKS                       R8 R0 K19 ["description"]
       65 SETTABLEKS                       R8 R7 K15 ["Text"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K13 ["Description"]
       70 CALL                             R1 3 -1
       71 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setTextAndFocus"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 [" "]
        5 CONCAT                           R2 R3 R4
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["isOpen"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["items"]
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
       33 LOADK                            R3 K12 ["%*%*"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K13 ["CommandPrefix"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K3 ["items"]
       40 GETTABLEN                        R6 R7 1
       41 NAMECALL                         R3 R3 K14 ["format"]
       43 CALL                             R3 3 1
       44 MOVE                             R2 R3
       45 GETUPVAL                         R3 2
       46 MOVE                             R4 R2
       47 CALL                             R3 1 0
       48 LOADB                            R5 0
       49 NAMECALL                         R3 R1 K15 ["ReleaseFocus"]
       51 CALL                             R3 2 0
       52 GETIMPORT                        R3 K18 [task.wait]
       54 CALL                             R3 0 0
       55 NAMECALL                         R3 R1 K19 ["CaptureFocus"]
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["isOpen"]
        6 JUMPIFNOT                        R1 ; [+17]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETIMPORT                        R1 K4 [UDim2.new]
       10 LOADN                            R2 1
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 GETUPVAL                         R5 2
       14 CALL                             R1 4 1
       15 SETTABLEKS                       R1 R0 K5 ["Size"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K5 ["Size"]
       20 GETTABLEKS                       R1 R2 K6 ["Size_150"]
       22 SETTABLEKS                       R1 R0 K7 ["ScrollBarThickness"]
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R3 R4 K1 ["Y"]
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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["SlashCommandMenu should not be rendered when FFlagMCPAssistantSlashCommandMenu is false"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["Hooks"]
       11 GETTABLEKS                       R1 R2 K4 ["useTokens"]
       13 CALL                             R1 0 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K5 ["useCallback"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R0 K6 ["setTextAndFocus"]
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K7 ["useContext"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R4 R5 K8 ["Context"]
       32 CALL                             R3 1 1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R5 R3 K9 ["inputBeganSignal"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R7 0 3
       42 GETTABLEKS                       R8 R0 K10 ["isOpen"]
       44 GETTABLEKS                       R9 R0 K11 ["items"]
       46 MOVE                             R10 R2
       47 SETLIST                          R7 R8 3 [1]
       49 CALL                             R4 3 0
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R4 R5 K12 ["useState"]
       53 LOADN                            R5 0
       54 CALL                             R4 1 2
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R6 R7 K13 ["useRef"]
       58 LOADNIL                          R7
       59 CALL                             R6 1 1
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R7 R8 K14 ["useEffect"]
       63 NEWCLOSURE                       R8 P2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 NEWTABLE                         R9 0 2
       70 GETTABLEKS                       R10 R0 K10 ["isOpen"]
       72 MOVE                             R11 R4
       73 SETLIST                          R9 R10 2 [1]
       75 CALL                             R7 2 0
       76 GETUPVAL                         R7 6
       77 CALL                             R7 0 1
       78 NEWTABLE                         R8 0 0
       80 GETTABLEKS                       R9 R0 K11 ["items"]
       82 LOADNIL                          R10
       83 LOADNIL                          R11
       84 FORGPREP                         R9
       85 LOADK                            R15 K15 ["%*%*"]
       86 GETUPVAL                         R18 5
       87 GETTABLEKS                       R17 R18 K16 ["CommandPrefix"]
       89 MOVE                             R18 R13
       90 NAMECALL                         R15 R15 K17 ["format"]
       92 CALL                             R15 3 1
       93 MOVE                             R14 R15
       94 GETUPVAL                         R15 7
       95 GETUPVAL                         R16 8
       96 DUPTABLE                         R17 K22 [{"command", "description", "onActivated", "LayoutOrder"}]
       97 SETTABLEKS                       R14 R17 K18 ["command"]
       99 GETUPVAL                         R19 5
      100 GETTABLEKS                       R18 R19 K23 ["getSlashCommandDescription"]
      102 MOVE                             R19 R13
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K19 ["description"]
      106 NEWCLOSURE                       R18 P3
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R14
      109 SETTABLEKS                       R18 R17 K20 ["onActivated"]
      111 MOVE                             R18 R7
      112 CALL                             R18 0 1
      113 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      115 CALL                             R15 2 1
      116 SETTABLE                         R15 R8 R13
      117 GETTABLEKS                       R16 R0 K11 ["items"]
      119 LENGTH                           R15 R16
      120 JUMPIFNOTLT                      R12 R15 ; [+18]
      122 LOADK                            R16 K24 ["Divider-%*"]
      123 MOVE                             R18 R12
      124 NAMECALL                         R16 R16 K17 ["format"]
      126 CALL                             R16 2 1
      127 MOVE                             R15 R16
      128 GETUPVAL                         R16 7
      129 GETUPVAL                         R18 1
      130 GETTABLEKS                       R17 R18 K25 ["Divider"]
      132 DUPTABLE                         R18 K26 [{"LayoutOrder"}]
      133 MOVE                             R19 R7
      134 CALL                             R19 0 1
      135 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
      137 CALL                             R16 2 1
      138 SETTABLE                         R16 R8 R15
      139 FORGLOOP                         R9 2 ; [-55]
      141 GETTABLEKS                       R10 R1 K27 ["Size"]
      143 GETTABLEKS                       R9 R10 K28 ["Size_1000"]
      145 LOADK                            R12 K30 [5.5]
      146 MUL                              R11 R12 R9
      147 ADDK                             R10 R11 K29 [5]
      148 GETUPVAL                         R11 7
      149 LOADK                            R12 K31 ["UIListLayout"]
      150 NEWTABLE                         R13 4 0
      152 GETIMPORT                        R14 K35 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R14 R13 K33 ["FillDirection"]
      156 GETIMPORT                        R14 K37 [Enum.SortOrder.LayoutOrder]
      158 SETTABLEKS                       R14 R13 K36 ["SortOrder"]
      160 GETUPVAL                         R16 2
      161 GETTABLEKS                       R15 R16 K38 ["Change"]
      163 GETTABLEKS                       R14 R15 K39 ["AbsoluteContentSize"]
      165 NEWCLOSURE                       R15 P4
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R10
      168 SETTABLE                         R15 R13 R14
      169 CALL                             R11 2 1
      170 SETTABLEKS                       R11 R8 K40 ["Layout"]
      172 JUMPIFLE                         R10 R4 ; [+2]
      174 LOADB                            R11 0 +1
      175 LOADB                            R11 1
      176 MOVE                             R12 R11
      177 JUMPIFNOT                        R12 ; [+14]
      178 GETUPVAL                         R12 7
      179 LOADK                            R13 K41 ["UIPadding"]
      180 DUPTABLE                         R14 K43 [{"PaddingRight"}]
      181 GETIMPORT                        R15 K46 [UDim.new]
      183 LOADN                            R16 0
      184 GETTABLEKS                       R18 R1 K47 ["Padding"]
      186 GETTABLEKS                       R17 R18 K48 ["XXSmall"]
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K42 ["PaddingRight"]
      191 CALL                             R12 2 1
      192 SETTABLEKS                       R12 R8 K47 ["Padding"]
      194 GETUPVAL                         R12 7
      195 GETUPVAL                         R14 9
      196 GETTABLEKS                       R13 R14 K49 ["Root"]
      198 DUPTABLE                         R14 K50 [{"isOpen"}]
      199 GETTABLEKS                       R15 R0 K10 ["isOpen"]
      201 SETTABLEKS                       R15 R14 K10 ["isOpen"]
      203 DUPTABLE                         R15 K53 [{"Anchor", "Content"}]
      204 GETUPVAL                         R16 7
      205 GETUPVAL                         R18 9
      206 GETTABLEKS                       R17 R18 K51 ["Anchor"]
      208 LOADNIL                          R18
      209 GETTABLEKS                       R19 R0 K54 ["children"]
      211 CALL                             R16 3 1
      212 SETTABLEKS                       R16 R15 K51 ["Anchor"]
      214 GETUPVAL                         R16 7
      215 GETUPVAL                         R18 9
      216 GETTABLEKS                       R17 R18 K52 ["Content"]
      218 DUPTABLE                         R18 K57 [{"side", "align"}]
      219 GETUPVAL                         R22 1
      220 GETTABLEKS                       R21 R22 K58 ["Enums"]
      222 GETTABLEKS                       R20 R21 K59 ["PopoverSide"]
      224 GETTABLEKS                       R19 R20 K60 ["Top"]
      226 SETTABLEKS                       R19 R18 K55 ["side"]
      228 GETUPVAL                         R22 1
      229 GETTABLEKS                       R21 R22 K58 ["Enums"]
      231 GETTABLEKS                       R20 R21 K61 ["PopoverAlign"]
      233 GETTABLEKS                       R19 R20 K62 ["Center"]
      235 SETTABLEKS                       R19 R18 K56 ["align"]
      237 DUPTABLE                         R19 K64 [{"Container"}]
      238 LOADB                            R20 0
      239 GETTABLEKS                       R22 R0 K11 ["items"]
      241 LENGTH                           R21 R22
      242 LOADN                            R22 0
      243 JUMPIFNOTLT                      R22 R21 ; [+72]
      245 GETUPVAL                         R20 7
      246 LOADK                            R21 K65 ["CanvasGroup"]
      247 DUPTABLE                         R22 K68 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
      248 GETIMPORT                        R23 K70 [Enum.AutomaticSize.Y]
      250 SETTABLEKS                       R23 R22 K66 ["AutomaticSize"]
      252 LOADN                            R23 1
      253 SETTABLEKS                       R23 R22 K67 ["BackgroundTransparency"]
      255 GETTABLEKS                       R23 R0 K71 ["width"]
      257 DUPCLOSURE                       R25 K72 [PROTO_6]
      258 NAMECALL                         R23 R23 K73 ["map"]
      260 CALL                             R23 2 1
      261 SETTABLEKS                       R23 R22 K27 ["Size"]
      263 DUPTABLE                         R23 K76 [{"Corner", "ScrollView"}]
      264 GETUPVAL                         R24 7
      265 LOADK                            R25 K77 ["UICorner"]
      266 DUPTABLE                         R26 K79 [{"CornerRadius"}]
      267 GETIMPORT                        R27 K46 [UDim.new]
      269 LOADN                            R28 0
      270 GETTABLEKS                       R30 R1 K80 ["Radius"]
      272 GETTABLEKS                       R29 R30 K81 ["Medium"]
      274 CALL                             R27 2 1
      275 SETTABLEKS                       R27 R26 K78 ["CornerRadius"]
      277 CALL                             R24 2 1
      278 SETTABLEKS                       R24 R23 K74 ["Corner"]
      280 GETUPVAL                         R24 7
      281 GETUPVAL                         R25 10
      282 DUPTABLE                         R26 K86 [{"tag", "Size", "scroll", "scrollingFrameRef", "testId"}]
      283 NEWTABLE                         R27 2 0
      285 LOADB                            R28 1
      286 SETTABLEKS                       R28 R27 K87 ["auto-y bg-shift-200"]
      288 SETTABLEKS                       R11 R27 K88 ["padding-right-xxsmall"]
      290 SETTABLEKS                       R27 R26 K82 ["tag"]
      292 GETIMPORT                        R27 K91 [UDim2.fromScale]
      294 LOADN                            R28 1
      295 LOADN                            R29 0
      296 CALL                             R27 2 1
      297 SETTABLEKS                       R27 R26 K27 ["Size"]
      299 GETUPVAL                         R27 11
      300 SETTABLEKS                       R27 R26 K83 ["scroll"]
      302 SETTABLEKS                       R6 R26 K84 ["scrollingFrameRef"]
      304 GETUPVAL                         R29 12
      305 GETTABLEKS                       R28 R29 K92 ["SlashCommandMenu"]
      307 GETTABLEKS                       R27 R28 K63 ["Container"]
      309 SETTABLEKS                       R27 R26 K85 ["testId"]
      311 MOVE                             R27 R8
      312 CALL                             R24 3 1
      313 SETTABLEKS                       R24 R23 K75 ["ScrollView"]
      315 CALL                             R20 3 1
      316 SETTABLEKS                       R20 R19 K63 ["Container"]
      318 CALL                             R16 3 1
      319 SETTABLEKS                       R16 R15 K52 ["Content"]
      321 CALL                             R12 3 -1
      322 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["UIToolRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["WindowInputContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       55 GETTABLEKS                       R8 R9 K17 ["useEventConnection"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K18 ["Flags"]
       62 GETTABLEKS                       R9 R10 K19 ["FFlagMCPAssistantSlashCommandMenu"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R1 K20 ["Popover"]
       67 GETTABLEKS                       R10 R1 K21 ["ScrollView"]
       69 GETTABLEKS                       R11 R1 K22 ["Text"]
       71 GETTABLEKS                       R12 R1 K23 ["View"]
       73 GETTABLEKS                       R13 R3 K24 ["createNextOrder"]
       75 GETTABLEKS                       R14 R2 K25 ["createElement"]
       77 DUPTABLE                         R15 K30 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       78 GETIMPORT                        R16 K34 [Enum.AutomaticSize.Y]
       80 SETTABLEKS                       R16 R15 K26 ["AutomaticCanvasSize"]
       82 GETIMPORT                        R16 K37 [UDim2.new]
       84 CALL                             R16 0 1
       85 SETTABLEKS                       R16 R15 K27 ["CanvasSize"]
       87 GETIMPORT                        R16 K38 [Enum.ScrollingDirection.Y]
       89 SETTABLEKS                       R16 R15 K28 ["ScrollingDirection"]
       91 GETIMPORT                        R16 K41 [Enum.ScrollBarInset.ScrollBar]
       93 SETTABLEKS                       R16 R15 K29 ["VerticalScrollBarInset"]
       95 DUPCLOSURE                       R16 K42 [PROTO_0]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R11
      101 DUPCLOSURE                       R17 K43 [PROTO_7]
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R4
      115 RETURN                           R17 1
