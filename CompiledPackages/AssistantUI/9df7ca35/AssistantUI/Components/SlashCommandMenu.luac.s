PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K5 [{[1] = "row align-y-center gap-small size-full-1000 padding-x-medium", ["onActivated"], ["LayoutOrder"], ["testId"]}]
        5 GETTABLEKS                       R5 R0 K2 ["onActivated"]
        7 SETTABLEKS                       R5 R4 K2 ["onActivated"]
        9 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K6 ["SlashCommandMenu"]
       16 GETTABLEKS                       R5 R5 K7 ["Item"]
       18 GETTABLEKS                       R5 R5 K8 ["Container"]
       20 SETTABLEKS                       R5 R4 K4 ["testId"]
       22 DUPTABLE                         R5 K12 [{"Command", "ResearchPreviewPill", "Description"}]
       23 GETUPVAL                         R6 1
       24 GETUPVAL                         R7 4
       25 DUPTABLE                         R8 K15 [{[1] = "auto-xy text-label-medium text-align-y-center text-truncate-split", ["Text"], ["testId"], ["LayoutOrder"]}]
       26 GETTABLEKS                       R9 R0 K16 ["command"]
       28 SETTABLEKS                       R9 R8 K14 ["Text"]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K6 ["SlashCommandMenu"]
       33 GETTABLEKS                       R9 R9 K7 ["Item"]
       35 GETTABLEKS                       R9 R9 K9 ["Command"]
       37 SETTABLEKS                       R9 R8 K4 ["testId"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K9 ["Command"]
       46 GETTABLEKS                       R6 R0 K17 ["researchPreview"]
       48 JUMPIFNOT                        R6 ; [+32]
       49 GETUPVAL                         R6 1
       50 GETUPVAL                         R7 2
       51 DUPTABLE                         R8 K19 [{[1] = "align-y-center auto-xy padding-x-small padding-y-xsmall radius-circle bg-shift-200", ["testId"], ["LayoutOrder"]}]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K6 ["SlashCommandMenu"]
       55 GETTABLEKS                       R9 R9 K7 ["Item"]
       57 GETTABLEKS                       R9 R9 K10 ["ResearchPreviewPill"]
       59 SETTABLEKS                       R9 R8 K4 ["testId"]
       61 MOVE                             R9 R1
       62 CALL                             R9 0 1
       63 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       65 DUPTABLE                         R9 K21 [{"Label"}]
       66 GETUPVAL                         R10 1
       67 GETUPVAL                         R11 4
       68 DUPTABLE                         R12 K23 [{[1] = "auto-xy text-title-small text-align-y-center content-muted", ["Text"]}]
       69 GETUPVAL                         R13 5
       70 LOADK                            R15 K24 ["ResearchPreview"]
       71 LOADK                            R16 K25 ["Pill"]
       72 NAMECALL                         R13 R13 K26 ["getText"]
       74 CALL                             R13 3 1
       75 SETTABLEKS                       R13 R12 K14 ["Text"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K20 ["Label"]
       80 CALL                             R6 3 1
       81 SETTABLEKS                       R6 R5 K10 ["ResearchPreviewPill"]
       83 GETTABLEKS                       R6 R0 K27 ["description"]
       85 JUMPIFNOT                        R6 ; [+12]
       86 GETUPVAL                         R6 1
       87 GETUPVAL                         R7 4
       88 DUPTABLE                         R8 K29 [{[1] = "fill auto-y text-body-small text-align-x-left text-align-y-center text-truncate-split", ["Text"], ["LayoutOrder"]}]
       89 GETTABLEKS                       R9 R0 K27 ["description"]
       91 SETTABLEKS                       R9 R8 K14 ["Text"]
       93 MOVE                             R9 R1
       94 CALL                             R9 0 1
       95 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       97 CALL                             R6 2 1
       98 SETTABLEKS                       R6 R5 K11 ["Description"]
      100 CALL                             R2 3 -1
      101 RETURN                           R2 -1

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
       87 DUPTABLE                         R17 K20 [{"command", "description", "researchPreview", "onActivated", "LayoutOrder"}]
       88 SETTABLEKS                       R14 R17 K15 ["command"]
       90 GETUPVAL                         R18 4
       91 GETTABLEKS                       R18 R18 K21 ["getSlashCommandDescription"]
       93 MOVE                             R19 R13
       94 CALL                             R18 1 1
       95 SETTABLEKS                       R18 R17 K16 ["description"]
       97 GETUPVAL                         R18 4
       98 GETTABLEKS                       R18 R18 K22 ["isSlashCommandResearchPreview"]
      100 MOVE                             R19 R13
      101 CALL                             R18 1 1
      102 SETTABLEKS                       R18 R17 K17 ["researchPreview"]
      104 NEWCLOSURE                       R18 P3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R14
      107 SETTABLEKS                       R18 R17 K18 ["onActivated"]
      109 MOVE                             R18 R7
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      113 CALL                             R15 2 1
      114 SETTABLE                         R15 R8 R13
      115 GETTABLEKS                       R16 R0 K8 ["items"]
      117 LENGTH                           R15 R16
      118 JUMPIFNOTLT                      R12 R15 ; [+17]
      120 LOADK                            R15 K23 ["Divider-%*"]
      121 MOVE                             R17 R12
      122 NAMECALL                         R15 R15 K14 ["format"]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R16 6
      126 GETUPVAL                         R17 0
      127 GETTABLEKS                       R17 R17 K24 ["Divider"]
      129 DUPTABLE                         R18 K25 [{"LayoutOrder"}]
      130 MOVE                             R19 R7
      131 CALL                             R19 0 1
      132 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      134 CALL                             R16 2 1
      135 SETTABLE                         R16 R8 R15
      136 FORGLOOP                         R9 2 ; [-60]
      138 GETTABLEKS                       R9 R1 K26 ["Size"]
      140 GETTABLEKS                       R9 R9 K27 ["Size_1000"]
      142 LOADK                            R12 K29 [5.5]
      143 MUL                              R11 R12 R9
      144 ADDK                             R10 R11 K28 [5]
      145 GETUPVAL                         R11 6
      146 LOADK                            R12 K30 ["UIListLayout"]
      147 NEWTABLE                         R13 4 0
      149 GETIMPORT                        R14 K34 [Enum.FillDirection.Vertical]
      151 SETTABLEKS                       R14 R13 K32 ["FillDirection"]
      153 GETIMPORT                        R14 K36 [Enum.SortOrder.LayoutOrder]
      155 SETTABLEKS                       R14 R13 K35 ["SortOrder"]
      157 GETUPVAL                         R14 1
      158 GETTABLEKS                       R14 R14 K37 ["Change"]
      160 GETTABLEKS                       R14 R14 K38 ["AbsoluteContentSize"]
      162 NEWCLOSURE                       R15 P4
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R10
      165 SETTABLE                         R15 R13 R14
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R8 K39 ["Layout"]
      169 JUMPIFLE                         R10 R4 ; [+2]
      171 LOADB                            R11 0 +1
      172 LOADB                            R11 1
      173 MOVE                             R12 R11
      174 JUMPIFNOT                        R12 ; [+14]
      175 GETUPVAL                         R12 6
      176 LOADK                            R13 K40 ["UIPadding"]
      177 DUPTABLE                         R14 K42 [{"PaddingRight"}]
      178 GETIMPORT                        R15 K45 [UDim.new]
      180 LOADN                            R16 0
      181 GETTABLEKS                       R17 R1 K46 ["Padding"]
      183 GETTABLEKS                       R17 R17 K47 ["XXSmall"]
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K41 ["PaddingRight"]
      188 CALL                             R12 2 1
      189 SETTABLEKS                       R12 R8 K46 ["Padding"]
      191 GETUPVAL                         R12 6
      192 GETUPVAL                         R13 8
      193 GETTABLEKS                       R13 R13 K48 ["Root"]
      195 DUPTABLE                         R14 K49 [{"isOpen"}]
      196 GETTABLEKS                       R15 R0 K7 ["isOpen"]
      198 SETTABLEKS                       R15 R14 K7 ["isOpen"]
      200 DUPTABLE                         R15 K52 [{"Anchor", "Content"}]
      201 GETUPVAL                         R16 6
      202 GETUPVAL                         R17 8
      203 GETTABLEKS                       R17 R17 K50 ["Anchor"]
      205 DUPTABLE                         R18 K25 [{"LayoutOrder"}]
      206 GETTABLEKS                       R19 R0 K19 ["LayoutOrder"]
      208 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      210 GETTABLEKS                       R19 R0 K53 ["children"]
      212 CALL                             R16 3 1
      213 SETTABLEKS                       R16 R15 K50 ["Anchor"]
      215 GETUPVAL                         R16 6
      216 GETUPVAL                         R17 8
      217 GETTABLEKS                       R17 R17 K51 ["Content"]
      219 DUPTABLE                         R18 K56 [{"side", "align"}]
      220 GETUPVAL                         R19 0
      221 GETTABLEKS                       R19 R19 K57 ["Enums"]
      223 GETTABLEKS                       R19 R19 K58 ["PopoverSide"]
      225 GETTABLEKS                       R19 R19 K59 ["Top"]
      227 SETTABLEKS                       R19 R18 K54 ["side"]
      229 GETUPVAL                         R19 0
      230 GETTABLEKS                       R19 R19 K57 ["Enums"]
      232 GETTABLEKS                       R19 R19 K60 ["PopoverAlign"]
      234 GETTABLEKS                       R19 R19 K61 ["Center"]
      236 SETTABLEKS                       R19 R18 K55 ["align"]
      238 DUPTABLE                         R19 K63 [{"Container"}]
      239 LOADB                            R20 0
      240 GETTABLEKS                       R22 R0 K8 ["items"]
      242 LENGTH                           R21 R22
      243 LOADN                            R22 0
      244 JUMPIFNOTLT                      R22 R21 ; [+69]
      246 GETUPVAL                         R20 6
      247 LOADK                            R21 K64 ["CanvasGroup"]
      248 DUPTABLE                         R22 K68 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
      249 GETIMPORT                        R23 K70 [Enum.AutomaticSize.Y]
      251 SETTABLEKS                       R23 R22 K65 ["AutomaticSize"]
      253 GETTABLEKS                       R23 R0 K71 ["width"]
      255 DUPCLOSURE                       R25 K72 [PROTO_6]
      256 NAMECALL                         R23 R23 K73 ["map"]
      258 CALL                             R23 2 1
      259 SETTABLEKS                       R23 R22 K26 ["Size"]
      261 DUPTABLE                         R23 K76 [{"Corner", "ScrollView"}]
      262 GETUPVAL                         R24 6
      263 LOADK                            R25 K77 ["UICorner"]
      264 DUPTABLE                         R26 K79 [{"CornerRadius"}]
      265 GETIMPORT                        R27 K45 [UDim.new]
      267 LOADN                            R28 0
      268 GETTABLEKS                       R29 R1 K80 ["Radius"]
      270 GETTABLEKS                       R29 R29 K81 ["Medium"]
      272 CALL                             R27 2 1
      273 SETTABLEKS                       R27 R26 K78 ["CornerRadius"]
      275 CALL                             R24 2 1
      276 SETTABLEKS                       R24 R23 K74 ["Corner"]
      278 GETUPVAL                         R24 6
      279 GETUPVAL                         R25 9
      280 DUPTABLE                         R26 K86 [{"tag", "Size", "scroll", "scrollingFrameRef", "testId"}]
      281 NEWTABLE                         R27 2 0
      283 LOADB                            R28 1
      284 SETTABLEKS                       R28 R27 K87 ["auto-y bg-shift-200"]
      286 SETTABLEKS                       R11 R27 K88 ["padding-right-xxsmall"]
      288 SETTABLEKS                       R27 R26 K82 ["tag"]
      290 GETIMPORT                        R27 K91 [UDim2.fromScale]
      292 LOADN                            R28 1
      293 LOADN                            R29 0
      294 CALL                             R27 2 1
      295 SETTABLEKS                       R27 R26 K26 ["Size"]
      297 GETUPVAL                         R27 10
      298 SETTABLEKS                       R27 R26 K83 ["scroll"]
      300 SETTABLEKS                       R6 R26 K84 ["scrollingFrameRef"]
      302 GETUPVAL                         R27 11
      303 GETTABLEKS                       R27 R27 K92 ["SlashCommandMenu"]
      305 GETTABLEKS                       R27 R27 K62 ["Container"]
      307 SETTABLEKS                       R27 R26 K85 ["testId"]
      309 MOVE                             R27 R8
      310 CALL                             R24 3 1
      311 SETTABLEKS                       R24 R23 K75 ["ScrollView"]
      313 CALL                             R20 3 1
      314 SETTABLEKS                       R20 R19 K62 ["Container"]
      316 CALL                             R16 3 1
      317 SETTABLEKS                       R16 R15 K51 ["Content"]
      319 CALL                             R12 3 -1
      320 RETURN                           R12 -1

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
       37 GETTABLEKS                       R6 R0 K12 ["Resources"]
       39 GETTABLEKS                       R6 R6 K13 ["Localization"]
       41 GETTABLEKS                       R6 R6 K14 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Components"]
       48 GETTABLEKS                       R7 R7 K16 ["UIToolRegistry"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K18 ["WindowInputContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       64 GETTABLEKS                       R9 R9 K20 ["useEventConnection"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R1 K21 ["Popover"]
       69 GETTABLEKS                       R10 R1 K22 ["ScrollView"]
       71 GETTABLEKS                       R11 R1 K23 ["Text"]
       73 GETTABLEKS                       R12 R1 K24 ["View"]
       75 GETTABLEKS                       R13 R3 K25 ["createNextOrder"]
       77 GETTABLEKS                       R14 R2 K26 ["createElement"]
       79 DUPTABLE                         R15 K31 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       80 GETIMPORT                        R16 K35 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R16 R15 K27 ["AutomaticCanvasSize"]
       84 GETIMPORT                        R16 K38 [UDim2.new]
       86 CALL                             R16 0 1
       87 SETTABLEKS                       R16 R15 K28 ["CanvasSize"]
       89 GETIMPORT                        R16 K39 [Enum.ScrollingDirection.Y]
       91 SETTABLEKS                       R16 R15 K29 ["ScrollingDirection"]
       93 GETIMPORT                        R16 K42 [Enum.ScrollBarInset.ScrollBar]
       95 SETTABLEKS                       R16 R15 K30 ["VerticalScrollBarInset"]
       97 DUPCLOSURE                       R16 K43 [PROTO_0]
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R5
      104 DUPCLOSURE                       R17 K44 [PROTO_7]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R4
      117 RETURN                           R17 1
