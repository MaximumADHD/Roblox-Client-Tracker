PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectedRow"]
        3 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+3]
        5 LOADN                            R0 -1
        6 JUMP                             ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["layoutOrders"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["selectedRow"]
       13 GETTABLE                         R0 R1 R2
       14 JUMPIFNOTEQKN                    R0 K1 [-1] ; [+3]
       16 LOADN                            R1 2
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["rowsCount"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+5]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K3 ["rowsCount"]
       26 JUMP                             ; [+1]
       27 ADDK                             R1 R0 K4 [1]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K5 ["onAdd"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K6 ["setSelectedRow"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedRow"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDelete"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["rowsCount"]
        6 LOADN                            R2 1
        7 FORNPREP                         R1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["rowSlots"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIFNOTEQKNIL                  R4 ; [+10]
       14 GETIMPORT                        R5 K3 [error]
       16 LOADK                            R7 K4 ["Missing RowStops slot for row %*"]
       17 MOVE                             R9 R3
       18 NAMECALL                         R7 R7 K5 ["format"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 LOADK                            R6 K6 ["Row "]
       24 MOVE                             R7 R3
       25 CONCAT                           R5 R6 R7
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 2
       28 DUPTABLE                         R8 K16 [{"LayoutOrder", "rowSlot", "isSelected", "canDelete", "onEditStart", "onEditFinish", "onSelected", "onDelete", "onAbsoluteSizeChanged"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K17 ["layoutOrders"]
       32 GETTABLE                         R9 R10 R3
       33 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       35 SETTABLEKS                       R4 R8 K8 ["rowSlot"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K18 ["selectedRow"]
       40 JUMPIFEQ                         R3 R10 ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 SETTABLEKS                       R9 R8 K9 ["isSelected"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K0 ["rowsCount"]
       49 LOADN                            R11 2
       50 JUMPIFLT                         R11 R10 ; [+2]
       52 LOADB                            R9 0 +1
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K10 ["canDelete"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K11 ["onEditStart"]
       59 SETTABLEKS                       R9 R8 K11 ["onEditStart"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K12 ["onEditFinish"]
       64 SETTABLEKS                       R9 R8 K12 ["onEditFinish"]
       66 NEWCLOSURE                       R9 P0
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R9 R8 K13 ["onSelected"]
       71 NEWCLOSURE                       R9 P1
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R9 R8 K14 ["onDelete"]
       76 JUMPIFNOTEQKN                    R3 K19 [1] ; [+3]
       78 GETUPVAL                         R9 3
       79 JUMP                             ; [+1]
       80 LOADNIL                          R9
       81 SETTABLEKS                       R9 R8 K15 ["onAbsoluteSizeChanged"]
       83 CALL                             R6 2 1
       84 SETTABLE                         R6 R0 R5
       85 FORNLOOP                         R1
       86 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoScrollToSelected"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 JUMPIFEQKNIL                     R0 ; [+18]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["selectedRow"]
       13 JUMPIFEQKN                       R1 K3 [-1] ; [+13]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["selectedRow"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K4 ["layoutOrders"]
       21 LENGTH                           R2 R3
       22 JUMPIFLT                         R2 R1 ; [+4]
       24 GETUPVAL                         R1 2
       25 JUMPIFNOTEQKN                    R1 K5 [0] ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K4 ["layoutOrders"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K2 ["selectedRow"]
       34 GETTABLE                         R1 R2 R3
       35 SUBK                             R3 R1 K6 [1]
       36 GETUPVAL                         R5 2
       37 GETUPVAL                         R6 3
       38 ADD                              R4 R5 R6
       39 MUL                              R2 R3 R4
       40 GETUPVAL                         R4 2
       41 ADD                              R3 R2 R4
       42 GETTABLEKS                       R4 R0 K7 ["CanvasPosition"]
       44 GETTABLEKS                       R4 R4 K8 ["Y"]
       46 GETTABLEKS                       R6 R0 K9 ["AbsoluteSize"]
       48 GETTABLEKS                       R6 R6 K8 ["Y"]
       50 ADD                              R5 R4 R6
       51 MOVE                             R6 R4
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K10 ["maxRowsBeforeScroll"]
       55 JUMPIFNOTLE                      R1 R7 ; [+3]
       57 LOADN                            R6 0
       58 JUMP                             ; [+25]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K11 ["rowsCount"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K10 ["maxRowsBeforeScroll"]
       65 SUB                              R7 R8 R9
       66 JUMPIFNOTLT                      R7 R1 ; [+6]
       68 GETTABLEKS                       R7 R0 K12 ["AbsoluteCanvasSize"]
       70 GETTABLEKS                       R6 R7 K8 ["Y"]
       72 JUMP                             ; [+11]
       73 JUMPIFNOTLT                      R2 R4 ; [+3]
       75 MOVE                             R6 R2
       76 JUMP                             ; [+7]
       77 JUMPIFNOTLT                      R5 R3 ; [+6]
       79 GETTABLEKS                       R7 R0 K9 ["AbsoluteSize"]
       81 GETTABLEKS                       R7 R7 K8 ["Y"]
       83 SUB                              R6 R3 R7
       84 LOADN                            R8 0
       85 GETTABLEKS                       R10 R0 K12 ["AbsoluteCanvasSize"]
       87 GETTABLEKS                       R10 R10 K8 ["Y"]
       89 GETTABLEKS                       R11 R0 K9 ["AbsoluteSize"]
       91 GETTABLEKS                       R11 R11 K8 ["Y"]
       93 SUB                              R9 R10 R11
       94 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       96 GETIMPORT                        R7 K15 [math.max]
       98 CALL                             R7 2 1
       99 LOADN                            R10 0
      100 FASTCALL3                        MATH_CLAMP R6 R10 R7
      102 MOVE                             R9 R6
      103 MOVE                             R11 R7
      104 GETIMPORT                        R8 K17 [math.clamp]
      106 CALL                             R8 3 1
      107 MOVE                             R6 R8
      108 JUMPIFEQ                         R6 R4 ; [+8]
      110 GETIMPORT                        R8 K20 [Vector2.new]
      112 LOADN                            R9 0
      113 MOVE                             R10 R6
      114 CALL                             R8 2 1
      115 SETTABLEKS                       R8 R0 K7 ["CanvasPosition"]
      117 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R6 0 5
       14 GETTABLEKS                       R7 R0 K2 ["onAdd"]
       16 GETTABLEKS                       R8 R0 K3 ["setSelectedRow"]
       18 GETTABLEKS                       R9 R0 K4 ["selectedRow"]
       20 GETTABLEKS                       R10 R0 K5 ["rowsCount"]
       22 GETTABLEKS                       R11 R0 K6 ["layoutOrders"]
       24 SETLIST                          R6 R7 5 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R7 0 9
       37 GETTABLEKS                       R8 R0 K5 ["rowsCount"]
       39 GETTABLEKS                       R9 R0 K8 ["rowSlots"]
       41 GETTABLEKS                       R10 R0 K4 ["selectedRow"]
       43 GETTABLEKS                       R11 R0 K6 ["layoutOrders"]
       45 GETTABLEKS                       R12 R0 K9 ["onEditStart"]
       47 GETTABLEKS                       R13 R0 K10 ["onEditFinish"]
       49 GETTABLEKS                       R14 R0 K3 ["setSelectedRow"]
       51 GETTABLEKS                       R15 R0 K11 ["onDelete"]
       53 MOVE                             R16 R3
       54 SETLIST                          R7 R8 9 [1]
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 4
       58 CALL                             R6 0 1
       59 GETTABLEKS                       R7 R6 K12 ["Gap"]
       61 GETTABLEKS                       R7 R7 K13 ["Small"]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K14 ["useEffect"]
       66 NEWCLOSURE                       R9 P2
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 NEWTABLE                         R10 0 7
       73 GETTABLEKS                       R11 R0 K15 ["autoScrollToSelected"]
       75 GETTABLEKS                       R12 R0 K4 ["selectedRow"]
       77 GETTABLEKS                       R13 R0 K6 ["layoutOrders"]
       79 GETTABLEKS                       R14 R0 K5 ["rowsCount"]
       81 GETTABLEKS                       R15 R0 K16 ["maxRowsBeforeScroll"]
       83 MOVE                             R16 R2
       84 MOVE                             R17 R7
       85 SETLIST                          R10 R11 7 [1]
       87 CALL                             R8 2 0
       88 GETTABLEKS                       R9 R0 K5 ["rowsCount"]
       90 GETTABLEKS                       R10 R0 K16 ["maxRowsBeforeScroll"]
       92 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       94 GETIMPORT                        R8 K19 [math.min]
       96 CALL                             R8 2 1
       97 JUMPIFNOTEQKN                    R8 K20 [0] ; [+3]
       99 LOADN                            R9 0
      100 JUMP                             ; [+4]
      101 MUL                              R10 R8 R2
      102 SUBK                             R12 R8 K21 [1]
      103 MUL                              R11 R12 R7
      104 ADD                              R9 R10 R11
      105 GETUPVAL                         R10 5
      106 CALL                             R10 0 1
      107 GETUPVAL                         R11 2
      108 GETUPVAL                         R12 6
      109 DUPTABLE                         R13 K25 [{["tag"] = "col flex-none gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      110 GETTABLEKS                       R14 R0 K24 ["LayoutOrder"]
      112 SETTABLEKS                       R14 R13 K24 ["LayoutOrder"]
      114 DUPTABLE                         R14 K28 [{"Header", "Rows"}]
      115 GETUPVAL                         R15 2
      116 GETUPVAL                         R16 6
      117 DUPTABLE                         R17 K30 [{["tag"] = "row flex-none size-full-0 auto-y padding-x-medium", ["LayoutOrder"]}]
      118 MOVE                             R18 R10
      119 CALL                             R18 0 1
      120 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      122 DUPTABLE                         R18 K33 [{"Title", "Add"}]
      123 GETUPVAL                         R19 2
      124 GETUPVAL                         R20 7
      125 DUPTABLE                         R21 K37 [{["LayoutOrder"], ["Text"] = "Stops", ["tag"] = "fill size-full-0 auto-y text-title-large text-align-x-left"}]
      126 MOVE                             R22 R10
      127 CALL                             R22 0 1
      128 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K31 ["Title"]
      133 GETUPVAL                         R19 2
      134 GETUPVAL                         R20 8
      135 DUPTABLE                         R21 K43 [{["title"] = "", ["text"], ["align"], ["side"], ["LayoutOrder"]}]
      136 GETTABLEKS                       R23 R0 K5 ["rowsCount"]
      138 GETTABLEKS                       R25 R0 K8 ["rowSlots"]
      140 LENGTH                           R24 R25
      141 JUMPIFNOTLE                      R24 R23 ; [+10]
      143 LOADK                            R23 K44 ["Maximum stops reached. A sequence can contain up to %* stops."]
      144 GETTABLEKS                       R26 R0 K8 ["rowSlots"]
      146 LENGTH                           R25 R26
      147 NAMECALL                         R23 R23 K45 ["format"]
      149 CALL                             R23 2 1
      150 MOVE                             R22 R23
      151 JUMP                             ; [+1]
      152 LOADK                            R22 K46 ["Add stop"]
      153 SETTABLEKS                       R22 R21 K40 ["text"]
      155 GETUPVAL                         R22 9
      156 GETTABLEKS                       R22 R22 K47 ["End"]
      158 SETTABLEKS                       R22 R21 K41 ["align"]
      160 GETUPVAL                         R22 10
      161 GETTABLEKS                       R22 R22 K48 ["Top"]
      163 SETTABLEKS                       R22 R21 K42 ["side"]
      165 MOVE                             R22 R10
      166 CALL                             R22 0 1
      167 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      169 DUPTABLE                         R22 K50 [{"Anchor"}]
      170 GETUPVAL                         R23 2
      171 GETUPVAL                         R24 11
      172 DUPTABLE                         R25 K58 [{["size"], ["icon"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"] = "RowStops-Add"}]
      173 GETUPVAL                         R26 12
      174 GETTABLEKS                       R26 R26 K59 ["XSmall"]
      176 SETTABLEKS                       R26 R25 K51 ["size"]
      178 GETUPVAL                         R26 13
      179 GETTABLEKS                       R26 R26 K60 ["PlusLarge"]
      181 SETTABLEKS                       R26 R25 K52 ["icon"]
      183 GETUPVAL                         R26 14
      184 GETTABLEKS                       R26 R26 K61 ["Utility"]
      186 SETTABLEKS                       R26 R25 K53 ["variant"]
      188 GETTABLEKS                       R27 R0 K5 ["rowsCount"]
      190 GETTABLEKS                       R29 R0 K8 ["rowSlots"]
      192 LENGTH                           R28 R29
      193 JUMPIFLE                         R28 R27 ; [+2]
      195 LOADB                            R26 0 +1
      196 LOADB                            R26 1
      197 SETTABLEKS                       R26 R25 K54 ["isDisabled"]
      199 SETTABLEKS                       R4 R25 K55 ["onActivated"]
      201 CALL                             R23 2 1
      202 SETTABLEKS                       R23 R22 K49 ["Anchor"]
      204 CALL                             R19 3 1
      205 SETTABLEKS                       R19 R18 K32 ["Add"]
      207 CALL                             R15 3 1
      208 SETTABLEKS                       R15 R14 K26 ["Header"]
      210 GETUPVAL                         R15 2
      211 GETUPVAL                         R16 15
      212 DUPTABLE                         R17 K67 [{["scroll"], ["scrollingFrameRef"], ["tag"] = "flex-none", ["Size"], ["LayoutOrder"], ["testId"] = "RowStops-ScrollView"}]
      213 DUPTABLE                         R18 K72 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingEnabled", "ScrollingDirection"}]
      214 GETIMPORT                        R19 K75 [UDim2.fromScale]
      216 LOADN                            R20 1
      217 LOADN                            R21 0
      218 CALL                             R19 2 1
      219 SETTABLEKS                       R19 R18 K68 ["CanvasSize"]
      221 GETIMPORT                        R19 K79 [Enum.AutomaticSize.Y]
      223 SETTABLEKS                       R19 R18 K69 ["AutomaticCanvasSize"]
      225 GETTABLEKS                       R20 R0 K5 ["rowsCount"]
      227 GETTABLEKS                       R21 R0 K16 ["maxRowsBeforeScroll"]
      229 JUMPIFLT                         R21 R20 ; [+2]
      231 LOADB                            R19 0 +1
      232 LOADB                            R19 1
      233 SETTABLEKS                       R19 R18 K70 ["ScrollingEnabled"]
      235 GETIMPORT                        R19 K80 [Enum.ScrollingDirection.Y]
      237 SETTABLEKS                       R19 R18 K71 ["ScrollingDirection"]
      239 SETTABLEKS                       R18 R17 K62 ["scroll"]
      241 SETTABLEKS                       R1 R17 K63 ["scrollingFrameRef"]
      243 GETIMPORT                        R18 K82 [UDim2.new]
      245 LOADN                            R19 1
      246 LOADN                            R20 0
      247 LOADN                            R21 0
      248 MOVE                             R22 R9
      249 CALL                             R18 4 1
      250 SETTABLEKS                       R18 R17 K65 ["Size"]
      252 MOVE                             R18 R10
      253 CALL                             R18 0 1
      254 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      256 DUPTABLE                         R18 K84 [{"Content"}]
      257 GETUPVAL                         R19 2
      258 GETUPVAL                         R20 6
      259 DUPTABLE                         R21 K87 [{["tag"] = "flex-none align-x-center items-center size-full-0 auto-y", ["layout"]}]
      260 DUPTABLE                         R22 K90 [{"FillDirection", "Padding"}]
      261 GETIMPORT                        R23 K92 [Enum.FillDirection.Vertical]
      263 SETTABLEKS                       R23 R22 K88 ["FillDirection"]
      265 GETIMPORT                        R23 K94 [UDim.new]
      267 LOADN                            R24 0
      268 MOVE                             R25 R7
      269 CALL                             R23 2 1
      270 SETTABLEKS                       R23 R22 K89 ["Padding"]
      272 SETTABLEKS                       R22 R21 K86 ["layout"]
      274 MOVE                             R22 R5
      275 CALL                             R19 3 1
      276 SETTABLEKS                       R19 R18 K83 ["Content"]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K27 ["Rows"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["RowStops"]
       32 GETTABLEKS                       R6 R6 K13 ["RowStopCell"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K11 ["Util"]
       41 GETTABLEKS                       R7 R7 K12 ["RowStops"]
       43 GETTABLEKS                       R7 R7 K14 ["RowStopSlot"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Components"]
       50 GETTABLEKS                       R8 R8 K11 ["Util"]
       52 GETTABLEKS                       R8 R8 K15 ["useElementHeight"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R2 K16 ["View"]
       57 GETTABLEKS                       R9 R2 K17 ["Text"]
       59 GETTABLEKS                       R10 R2 K18 ["ScrollView"]
       61 GETTABLEKS                       R11 R2 K19 ["IconButton"]
       63 GETTABLEKS                       R12 R2 K20 ["Tooltip"]
       65 GETTABLEKS                       R13 R2 K21 ["Enums"]
       67 GETTABLEKS                       R13 R13 K22 ["IconName"]
       69 GETTABLEKS                       R14 R2 K21 ["Enums"]
       71 GETTABLEKS                       R14 R14 K23 ["InputSize"]
       73 GETTABLEKS                       R15 R2 K21 ["Enums"]
       75 GETTABLEKS                       R15 R15 K24 ["ButtonVariant"]
       77 GETTABLEKS                       R16 R2 K21 ["Enums"]
       79 GETTABLEKS                       R16 R16 K25 ["PopoverAlign"]
       81 GETTABLEKS                       R17 R2 K21 ["Enums"]
       83 GETTABLEKS                       R17 R17 K26 ["PopoverSide"]
       85 GETTABLEKS                       R18 R4 K27 ["createNextOrder"]
       87 GETTABLEKS                       R19 R3 K28 ["createElement"]
       89 GETTABLEKS                       R20 R2 K29 ["Hooks"]
       91 GETTABLEKS                       R20 R20 K30 ["useTokens"]
       93 DUPCLOSURE                       R21 K31 [PROTO_5]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R19
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R20
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R10
      110 GETTABLEKS                       R22 R3 K32 ["memo"]
      112 MOVE                             R23 R21
      113 CALL                             R22 1 -1
      114 RETURN                           R22 -1
