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
       28 DUPTABLE                         R8 K15 [{"LayoutOrder", "rowSlot", "isSelected", "canDelete", "onEditStart", "onEditFinish", "onSelected", "onDelete"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K16 ["layoutOrders"]
       32 GETTABLE                         R9 R10 R3
       33 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       35 SETTABLEKS                       R4 R8 K8 ["rowSlot"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K17 ["selectedRow"]
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
       76 CALL                             R6 2 1
       77 SETTABLE                         R6 R0 R5
       78 FORNLOOP                         R1
       79 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["selectedRow"]
        8 JUMPIFEQKN                       R1 K2 [-1] ; [+4]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["selectedRow"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["layoutOrders"]
       20 LENGTH                           R2 R3
       21 JUMPIFNOTLT                      R2 R1 ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K4 ["layoutOrders"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K1 ["selectedRow"]
       30 GETTABLE                         R1 R2 R3
       31 SUBK                             R3 R1 K5 [1]
       32 GETUPVAL                         R5 2
       33 GETUPVAL                         R6 3
       34 ADD                              R4 R5 R6
       35 MUL                              R2 R3 R4
       36 GETUPVAL                         R4 2
       37 ADD                              R3 R2 R4
       38 GETTABLEKS                       R4 R0 K6 ["CanvasPosition"]
       40 GETTABLEKS                       R4 R4 K7 ["Y"]
       42 GETTABLEKS                       R6 R0 K8 ["AbsoluteSize"]
       44 GETTABLEKS                       R6 R6 K7 ["Y"]
       46 ADD                              R5 R4 R6
       47 MOVE                             R6 R4
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K9 ["maxRowsBeforeScroll"]
       51 JUMPIFNOTLE                      R1 R7 ; [+3]
       53 LOADN                            R6 0
       54 JUMP                             ; [+25]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K10 ["rowsCount"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K9 ["maxRowsBeforeScroll"]
       61 SUB                              R7 R8 R9
       62 JUMPIFNOTLT                      R7 R1 ; [+6]
       64 GETTABLEKS                       R7 R0 K11 ["AbsoluteCanvasSize"]
       66 GETTABLEKS                       R6 R7 K7 ["Y"]
       68 JUMP                             ; [+11]
       69 JUMPIFNOTLT                      R2 R4 ; [+3]
       71 MOVE                             R6 R2
       72 JUMP                             ; [+7]
       73 JUMPIFNOTLT                      R5 R3 ; [+6]
       75 GETTABLEKS                       R7 R0 K8 ["AbsoluteSize"]
       77 GETTABLEKS                       R7 R7 K7 ["Y"]
       79 SUB                              R6 R3 R7
       80 LOADN                            R8 0
       81 GETTABLEKS                       R10 R0 K11 ["AbsoluteCanvasSize"]
       83 GETTABLEKS                       R10 R10 K7 ["Y"]
       85 GETTABLEKS                       R11 R0 K8 ["AbsoluteSize"]
       87 GETTABLEKS                       R11 R11 K7 ["Y"]
       89 SUB                              R9 R10 R11
       90 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       92 GETIMPORT                        R7 K14 [math.max]
       94 CALL                             R7 2 1
       95 LOADN                            R10 0
       96 FASTCALL3                        MATH_CLAMP R6 R10 R7
       98 MOVE                             R9 R6
       99 MOVE                             R11 R7
      100 GETIMPORT                        R8 K16 [math.clamp]
      102 CALL                             R8 3 1
      103 MOVE                             R6 R8
      104 JUMPIFEQ                         R6 R4 ; [+8]
      106 GETIMPORT                        R8 K19 [Vector2.new]
      108 LOADN                            R9 0
      109 MOVE                             R10 R6
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R0 K6 ["CanvasPosition"]
      113 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 5
       12 GETTABLEKS                       R5 R0 K2 ["onAdd"]
       14 GETTABLEKS                       R6 R0 K3 ["setSelectedRow"]
       16 GETTABLEKS                       R7 R0 K4 ["selectedRow"]
       18 GETTABLEKS                       R8 R0 K5 ["rowsCount"]
       20 GETTABLEKS                       R9 R0 K6 ["layoutOrders"]
       22 SETLIST                          R4 R5 5 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K7 ["useMemo"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 NEWTABLE                         R5 0 8
       34 GETTABLEKS                       R6 R0 K5 ["rowsCount"]
       36 GETTABLEKS                       R7 R0 K8 ["rowSlots"]
       38 GETTABLEKS                       R8 R0 K4 ["selectedRow"]
       40 GETTABLEKS                       R9 R0 K6 ["layoutOrders"]
       42 GETTABLEKS                       R10 R0 K9 ["onEditStart"]
       44 GETTABLEKS                       R11 R0 K10 ["onEditFinish"]
       46 GETTABLEKS                       R12 R0 K3 ["setSelectedRow"]
       48 GETTABLEKS                       R13 R0 K11 ["onDelete"]
       50 SETLIST                          R5 R6 8 [1]
       52 CALL                             R3 2 1
       53 GETUPVAL                         R4 3
       54 CALL                             R4 0 1
       55 GETTABLEKS                       R5 R4 K12 ["RowStops"]
       57 GETTABLEKS                       R6 R5 K13 ["RowsGap"]
       59 GETTABLEKS                       R8 R5 K14 ["CellContentHeight"]
       61 GETTABLEKS                       R10 R5 K16 ["RowSlotYPadding"]
       63 MULK                             R9 R10 K15 [2]
       64 ADD                              R7 R8 R9
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R8 R8 K17 ["useEffect"]
       68 NEWCLOSURE                       R9 P2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 NEWTABLE                         R10 0 6
       75 GETTABLEKS                       R11 R0 K4 ["selectedRow"]
       77 GETTABLEKS                       R12 R0 K6 ["layoutOrders"]
       79 GETTABLEKS                       R13 R0 K5 ["rowsCount"]
       81 GETTABLEKS                       R14 R0 K18 ["maxRowsBeforeScroll"]
       83 MOVE                             R15 R7
       84 MOVE                             R16 R6
       85 SETLIST                          R10 R11 6 [1]
       87 CALL                             R8 2 0
       88 GETUPVAL                         R8 4
       89 CALL                             R8 0 1
       90 GETTABLEKS                       R10 R0 K5 ["rowsCount"]
       92 GETTABLEKS                       R11 R0 K18 ["maxRowsBeforeScroll"]
       94 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       96 GETIMPORT                        R9 K21 [math.min]
       98 CALL                             R9 2 1
       99 JUMPIFNOTEQKN                    R9 K22 [0] ; [+3]
      101 LOADN                            R10 0
      102 JUMP                             ; [+4]
      103 MUL                              R11 R9 R7
      104 SUBK                             R13 R9 K23 [1]
      105 MUL                              R12 R13 R6
      106 ADD                              R10 R11 R12
      107 GETUPVAL                         R11 1
      108 GETUPVAL                         R12 5
      109 DUPTABLE                         R13 K27 [{["tag"] = "col flex-none size-full-0 auto-y", ["LayoutOrder"]}]
      110 GETTABLEKS                       R14 R0 K26 ["LayoutOrder"]
      112 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      114 DUPTABLE                         R14 K30 [{"Header", "Rows"}]
      115 GETUPVAL                         R15 1
      116 GETUPVAL                         R16 5
      117 DUPTABLE                         R17 K34 [{["tag"] = "row flex-none padding-x-medium padding-bottom-small", ["Size"], ["padding"], ["LayoutOrder"]}]
      118 GETIMPORT                        R18 K37 [UDim2.new]
      120 LOADN                            R19 1
      121 LOADN                            R20 0
      122 LOADN                            R21 0
      123 GETTABLEKS                       R23 R5 K38 ["HeaderContentHeight"]
      125 GETTABLEKS                       R24 R5 K39 ["HeaderBottomPadding"]
      127 ADD                              R22 R23 R24
      128 CALL                             R18 4 1
      129 SETTABLEKS                       R18 R17 K32 ["Size"]
      131 DUPTABLE                         R18 K41 [{"bottom"}]
      132 GETIMPORT                        R19 K43 [UDim.new]
      134 LOADN                            R20 0
      135 GETTABLEKS                       R21 R5 K39 ["HeaderBottomPadding"]
      137 CALL                             R19 2 1
      138 SETTABLEKS                       R19 R18 K40 ["bottom"]
      140 SETTABLEKS                       R18 R17 K33 ["padding"]
      142 MOVE                             R18 R8
      143 CALL                             R18 0 1
      144 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      146 DUPTABLE                         R18 K46 [{"Title", "Add"}]
      147 GETUPVAL                         R19 1
      148 GETUPVAL                         R20 6
      149 DUPTABLE                         R21 K50 [{["LayoutOrder"], ["Text"] = "Stops", ["tag"] = "fill size-full-0 auto-y text-title-large text-align-x-left"}]
      150 MOVE                             R22 R8
      151 CALL                             R22 0 1
      152 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      154 CALL                             R19 2 1
      155 SETTABLEKS                       R19 R18 K44 ["Title"]
      157 GETUPVAL                         R19 1
      158 GETUPVAL                         R20 7
      159 DUPTABLE                         R21 K56 [{["title"] = "", ["text"], ["align"], ["side"], ["LayoutOrder"]}]
      160 GETTABLEKS                       R23 R0 K5 ["rowsCount"]
      162 GETTABLEKS                       R25 R0 K8 ["rowSlots"]
      164 LENGTH                           R24 R25
      165 JUMPIFNOTLE                      R24 R23 ; [+10]
      167 LOADK                            R23 K57 ["Maximum stops reached. A sequence can contain up to %* stops."]
      168 GETTABLEKS                       R26 R0 K8 ["rowSlots"]
      170 LENGTH                           R25 R26
      171 NAMECALL                         R23 R23 K58 ["format"]
      173 CALL                             R23 2 1
      174 MOVE                             R22 R23
      175 JUMP                             ; [+1]
      176 LOADK                            R22 K59 ["Add stop"]
      177 SETTABLEKS                       R22 R21 K53 ["text"]
      179 GETUPVAL                         R22 8
      180 GETTABLEKS                       R22 R22 K60 ["End"]
      182 SETTABLEKS                       R22 R21 K54 ["align"]
      184 GETUPVAL                         R22 9
      185 GETTABLEKS                       R22 R22 K61 ["Top"]
      187 SETTABLEKS                       R22 R21 K55 ["side"]
      189 MOVE                             R22 R8
      190 CALL                             R22 0 1
      191 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      193 DUPTABLE                         R22 K63 [{"Anchor"}]
      194 GETUPVAL                         R23 1
      195 GETUPVAL                         R24 10
      196 DUPTABLE                         R25 K71 [{["size"], ["icon"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"] = "RowStops-Add"}]
      197 GETUPVAL                         R26 11
      198 GETTABLEKS                       R26 R26 K72 ["XSmall"]
      200 SETTABLEKS                       R26 R25 K64 ["size"]
      202 GETUPVAL                         R26 12
      203 GETTABLEKS                       R26 R26 K73 ["PlusLarge"]
      205 SETTABLEKS                       R26 R25 K65 ["icon"]
      207 GETUPVAL                         R26 13
      208 GETTABLEKS                       R26 R26 K74 ["Utility"]
      210 SETTABLEKS                       R26 R25 K66 ["variant"]
      212 GETTABLEKS                       R27 R0 K5 ["rowsCount"]
      214 GETTABLEKS                       R29 R0 K8 ["rowSlots"]
      216 LENGTH                           R28 R29
      217 JUMPIFLE                         R28 R27 ; [+2]
      219 LOADB                            R26 0 +1
      220 LOADB                            R26 1
      221 SETTABLEKS                       R26 R25 K67 ["isDisabled"]
      223 SETTABLEKS                       R2 R25 K68 ["onActivated"]
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K62 ["Anchor"]
      228 CALL                             R19 3 1
      229 SETTABLEKS                       R19 R18 K45 ["Add"]
      231 CALL                             R15 3 1
      232 SETTABLEKS                       R15 R14 K28 ["Header"]
      234 GETUPVAL                         R15 1
      235 GETUPVAL                         R16 14
      236 DUPTABLE                         R17 K79 [{["scroll"], ["scrollingFrameRef"], ["tag"] = "flex-none", ["Size"], ["LayoutOrder"], ["testId"] = "RowStops-ScrollView"}]
      237 DUPTABLE                         R18 K84 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingEnabled", "ScrollingDirection"}]
      238 GETIMPORT                        R19 K86 [UDim2.fromScale]
      240 LOADN                            R20 1
      241 LOADN                            R21 0
      242 CALL                             R19 2 1
      243 SETTABLEKS                       R19 R18 K80 ["CanvasSize"]
      245 GETIMPORT                        R19 K90 [Enum.AutomaticSize.Y]
      247 SETTABLEKS                       R19 R18 K81 ["AutomaticCanvasSize"]
      249 GETTABLEKS                       R20 R0 K5 ["rowsCount"]
      251 GETTABLEKS                       R21 R0 K18 ["maxRowsBeforeScroll"]
      253 JUMPIFLT                         R21 R20 ; [+2]
      255 LOADB                            R19 0 +1
      256 LOADB                            R19 1
      257 SETTABLEKS                       R19 R18 K82 ["ScrollingEnabled"]
      259 GETIMPORT                        R19 K91 [Enum.ScrollingDirection.Y]
      261 SETTABLEKS                       R19 R18 K83 ["ScrollingDirection"]
      263 SETTABLEKS                       R18 R17 K75 ["scroll"]
      265 SETTABLEKS                       R1 R17 K76 ["scrollingFrameRef"]
      267 GETIMPORT                        R18 K37 [UDim2.new]
      269 LOADN                            R19 1
      270 LOADN                            R20 0
      271 LOADN                            R21 0
      272 MOVE                             R22 R10
      273 CALL                             R18 4 1
      274 SETTABLEKS                       R18 R17 K32 ["Size"]
      276 MOVE                             R18 R8
      277 CALL                             R18 0 1
      278 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      280 DUPTABLE                         R18 K93 [{"Content"}]
      281 GETUPVAL                         R19 1
      282 GETUPVAL                         R20 5
      283 DUPTABLE                         R21 K96 [{["tag"] = "flex-none align-x-center items-center size-full-0 auto-y", ["layout"]}]
      284 DUPTABLE                         R22 K99 [{"FillDirection", "Padding"}]
      285 GETIMPORT                        R23 K101 [Enum.FillDirection.Vertical]
      287 SETTABLEKS                       R23 R22 K97 ["FillDirection"]
      289 GETIMPORT                        R23 K43 [UDim.new]
      291 LOADN                            R24 0
      292 MOVE                             R25 R6
      293 CALL                             R23 2 1
      294 SETTABLEKS                       R23 R22 K98 ["Padding"]
      296 SETTABLEKS                       R22 R21 K95 ["layout"]
      298 MOVE                             R22 R3
      299 CALL                             R19 3 1
      300 SETTABLEKS                       R19 R18 K92 ["Content"]
      302 CALL                             R15 3 1
      303 SETTABLEKS                       R15 R14 K29 ["Rows"]
      305 CALL                             R11 3 -1
      306 RETURN                           R11 -1

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
       48 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       50 GETTABLEKS                       R8 R8 K16 ["useVisualValues"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R2 K17 ["View"]
       55 GETTABLEKS                       R9 R2 K18 ["Text"]
       57 GETTABLEKS                       R10 R2 K19 ["ScrollView"]
       59 GETTABLEKS                       R11 R2 K20 ["IconButton"]
       61 GETTABLEKS                       R12 R2 K21 ["Tooltip"]
       63 GETTABLEKS                       R13 R2 K22 ["Enums"]
       65 GETTABLEKS                       R13 R13 K23 ["IconName"]
       67 GETTABLEKS                       R14 R2 K22 ["Enums"]
       69 GETTABLEKS                       R14 R14 K24 ["InputSize"]
       71 GETTABLEKS                       R15 R2 K22 ["Enums"]
       73 GETTABLEKS                       R15 R15 K25 ["ButtonVariant"]
       75 GETTABLEKS                       R16 R2 K22 ["Enums"]
       77 GETTABLEKS                       R16 R16 K26 ["PopoverAlign"]
       79 GETTABLEKS                       R17 R2 K22 ["Enums"]
       81 GETTABLEKS                       R17 R17 K27 ["PopoverSide"]
       83 GETTABLEKS                       R18 R4 K28 ["createNextOrder"]
       85 GETTABLEKS                       R19 R3 K29 ["createElement"]
       87 DUPCLOSURE                       R20 K30 [PROTO_5]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R19
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R10
      103 GETTABLEKS                       R21 R3 K31 ["memo"]
      105 MOVE                             R22 R20
      106 CALL                             R21 1 -1
      107 RETURN                           R21 -1
