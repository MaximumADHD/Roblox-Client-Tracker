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
       12 JUMPIFNOTEQKNIL                  R4 ; [+9]
       14 GETIMPORT                        R5 K3 [error]
       16 LOADK                            R6 K4 ["Missing RowStops slot for row %*"]
       17 MOVE                             R8 R3
       18 NAMECALL                         R6 R6 K5 ["format"]
       20 CALL                             R6 2 1
       21 CALL                             R5 1 0
       22 LOADK                            R6 K6 ["Row "]
       23 MOVE                             R7 R3
       24 CONCAT                           R5 R6 R7
       25 GETUPVAL                         R6 1
       26 GETUPVAL                         R7 2
       27 DUPTABLE                         R8 K14 [{"LayoutOrder", "rowSlot", "isSelected", "canDelete", "onSelected", "onDelete", "onAbsoluteSizeChanged"}]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K15 ["layoutOrders"]
       31 GETTABLE                         R9 R10 R3
       32 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       34 SETTABLEKS                       R4 R8 K8 ["rowSlot"]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K16 ["selectedRow"]
       39 JUMPIFEQ                         R3 R10 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 SETTABLEKS                       R9 R8 K9 ["isSelected"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K0 ["rowsCount"]
       48 LOADN                            R11 2
       49 JUMPIFLT                         R11 R10 ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 SETTABLEKS                       R9 R8 K10 ["canDelete"]
       55 NEWCLOSURE                       R9 P0
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R9 R8 K11 ["onSelected"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R9 R8 K12 ["onDelete"]
       65 JUMPIFNOTEQKN                    R3 K17 [1] ; [+3]
       67 GETUPVAL                         R9 3
       68 JUMP                             ; [+1]
       69 LOADNIL                          R9
       70 SETTABLEKS                       R9 R8 K13 ["onAbsoluteSizeChanged"]
       72 CALL                             R6 2 1
       73 SETTABLE                         R6 R0 R5
       74 FORNLOOP                         R1
       75 RETURN                           R0 1

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
       35 NEWTABLE                         R7 0 7
       37 GETTABLEKS                       R8 R0 K5 ["rowsCount"]
       39 GETTABLEKS                       R9 R0 K8 ["rowSlots"]
       41 GETTABLEKS                       R10 R0 K4 ["selectedRow"]
       43 GETTABLEKS                       R11 R0 K6 ["layoutOrders"]
       45 GETTABLEKS                       R12 R0 K3 ["setSelectedRow"]
       47 GETTABLEKS                       R13 R0 K9 ["onDelete"]
       49 MOVE                             R14 R3
       50 SETLIST                          R7 R8 7 [1]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R6 4
       54 CALL                             R6 0 1
       55 GETTABLEKS                       R7 R6 K10 ["Gap"]
       57 GETTABLEKS                       R7 R7 K11 ["Small"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K12 ["useEffect"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 NEWTABLE                         R10 0 7
       69 GETTABLEKS                       R11 R0 K13 ["autoScrollToSelected"]
       71 GETTABLEKS                       R12 R0 K4 ["selectedRow"]
       73 GETTABLEKS                       R13 R0 K6 ["layoutOrders"]
       75 GETTABLEKS                       R14 R0 K5 ["rowsCount"]
       77 GETTABLEKS                       R15 R0 K14 ["maxRowsBeforeScroll"]
       79 MOVE                             R16 R2
       80 MOVE                             R17 R7
       81 SETLIST                          R10 R11 7 [1]
       83 CALL                             R8 2 0
       84 GETTABLEKS                       R9 R0 K5 ["rowsCount"]
       86 GETTABLEKS                       R10 R0 K14 ["maxRowsBeforeScroll"]
       88 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       90 GETIMPORT                        R8 K17 [math.min]
       92 CALL                             R8 2 1
       93 JUMPIFNOTEQKN                    R8 K18 [0] ; [+3]
       95 LOADN                            R9 0
       96 JUMP                             ; [+4]
       97 MUL                              R10 R8 R2
       98 SUBK                             R12 R8 K19 [1]
       99 MUL                              R11 R12 R7
      100 ADD                              R9 R10 R11
      101 GETUPVAL                         R10 5
      102 CALL                             R10 0 1
      103 GETUPVAL                         R11 2
      104 GETUPVAL                         R12 6
      105 DUPTABLE                         R13 K23 [{["tag"] = "col flex-none gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      106 GETTABLEKS                       R14 R0 K22 ["LayoutOrder"]
      108 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
      110 DUPTABLE                         R14 K26 [{"Header", "Rows"}]
      111 GETUPVAL                         R15 2
      112 GETUPVAL                         R16 6
      113 DUPTABLE                         R17 K28 [{["tag"] = "row flex-none size-full-0 auto-y padding-x-medium", ["LayoutOrder"]}]
      114 MOVE                             R18 R10
      115 CALL                             R18 0 1
      116 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      118 DUPTABLE                         R18 K31 [{"Title", "Add"}]
      119 GETUPVAL                         R19 2
      120 GETUPVAL                         R20 7
      121 DUPTABLE                         R21 K35 [{["LayoutOrder"], ["Text"] = "Stops", ["tag"] = "fill size-full-0 auto-y text-title-large text-align-x-left"}]
      122 MOVE                             R22 R10
      123 CALL                             R22 0 1
      124 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      126 CALL                             R19 2 1
      127 SETTABLEKS                       R19 R18 K29 ["Title"]
      129 GETUPVAL                         R19 2
      130 GETUPVAL                         R20 8
      131 DUPTABLE                         R21 K41 [{["title"] = "", ["text"], ["align"], ["side"], ["LayoutOrder"]}]
      132 GETTABLEKS                       R23 R0 K5 ["rowsCount"]
      134 GETTABLEKS                       R25 R0 K8 ["rowSlots"]
      136 LENGTH                           R24 R25
      137 JUMPIFNOTLE                      R24 R23 ; [+9]
      139 LOADK                            R22 K42 ["Maximum stops reached. A sequence can contain up to %* stops."]
      140 GETTABLEKS                       R25 R0 K8 ["rowSlots"]
      142 LENGTH                           R24 R25
      143 NAMECALL                         R22 R22 K43 ["format"]
      145 CALL                             R22 2 1
      146 JUMP                             ; [+1]
      147 LOADK                            R22 K44 ["Add stop"]
      148 SETTABLEKS                       R22 R21 K38 ["text"]
      150 GETUPVAL                         R22 9
      151 GETTABLEKS                       R22 R22 K45 ["End"]
      153 SETTABLEKS                       R22 R21 K39 ["align"]
      155 GETUPVAL                         R22 10
      156 GETTABLEKS                       R22 R22 K46 ["Top"]
      158 SETTABLEKS                       R22 R21 K40 ["side"]
      160 MOVE                             R22 R10
      161 CALL                             R22 0 1
      162 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      164 DUPTABLE                         R22 K48 [{"Anchor"}]
      165 GETUPVAL                         R23 2
      166 GETUPVAL                         R24 11
      167 DUPTABLE                         R25 K56 [{["size"], ["icon"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"] = "RowStops-Add"}]
      168 GETUPVAL                         R26 12
      169 GETTABLEKS                       R26 R26 K57 ["XSmall"]
      171 SETTABLEKS                       R26 R25 K49 ["size"]
      173 GETUPVAL                         R26 13
      174 GETTABLEKS                       R26 R26 K58 ["PlusLarge"]
      176 SETTABLEKS                       R26 R25 K50 ["icon"]
      178 GETUPVAL                         R26 14
      179 GETTABLEKS                       R26 R26 K59 ["Utility"]
      181 SETTABLEKS                       R26 R25 K51 ["variant"]
      183 GETTABLEKS                       R27 R0 K5 ["rowsCount"]
      185 GETTABLEKS                       R29 R0 K8 ["rowSlots"]
      187 LENGTH                           R28 R29
      188 JUMPIFLE                         R28 R27 ; [+2]
      190 LOADB                            R26 0 +1
      191 LOADB                            R26 1
      192 SETTABLEKS                       R26 R25 K52 ["isDisabled"]
      194 SETTABLEKS                       R4 R25 K53 ["onActivated"]
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K47 ["Anchor"]
      199 CALL                             R19 3 1
      200 SETTABLEKS                       R19 R18 K30 ["Add"]
      202 CALL                             R15 3 1
      203 SETTABLEKS                       R15 R14 K24 ["Header"]
      205 GETUPVAL                         R15 2
      206 GETUPVAL                         R16 15
      207 DUPTABLE                         R17 K65 [{["scroll"], ["scrollingFrameRef"], ["tag"] = "flex-none", ["Size"], ["LayoutOrder"], ["testId"] = "RowStops-ScrollView"}]
      208 DUPTABLE                         R18 K70 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingEnabled", "ScrollingDirection"}]
      209 GETIMPORT                        R19 K73 [UDim2.fromScale]
      211 LOADN                            R20 1
      212 LOADN                            R21 0
      213 CALL                             R19 2 1
      214 SETTABLEKS                       R19 R18 K66 ["CanvasSize"]
      216 GETIMPORT                        R19 K77 [Enum.AutomaticSize.Y]
      218 SETTABLEKS                       R19 R18 K67 ["AutomaticCanvasSize"]
      220 GETTABLEKS                       R20 R0 K5 ["rowsCount"]
      222 GETTABLEKS                       R21 R0 K14 ["maxRowsBeforeScroll"]
      224 JUMPIFLT                         R21 R20 ; [+2]
      226 LOADB                            R19 0 +1
      227 LOADB                            R19 1
      228 SETTABLEKS                       R19 R18 K68 ["ScrollingEnabled"]
      230 GETIMPORT                        R19 K78 [Enum.ScrollingDirection.Y]
      232 SETTABLEKS                       R19 R18 K69 ["ScrollingDirection"]
      234 SETTABLEKS                       R18 R17 K60 ["scroll"]
      236 SETTABLEKS                       R1 R17 K61 ["scrollingFrameRef"]
      238 GETIMPORT                        R18 K80 [UDim2.new]
      240 LOADN                            R19 1
      241 LOADN                            R20 0
      242 LOADN                            R21 0
      243 MOVE                             R22 R9
      244 CALL                             R18 4 1
      245 SETTABLEKS                       R18 R17 K63 ["Size"]
      247 MOVE                             R18 R10
      248 CALL                             R18 0 1
      249 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      251 DUPTABLE                         R18 K82 [{"Content"}]
      252 GETUPVAL                         R19 2
      253 GETUPVAL                         R20 6
      254 DUPTABLE                         R21 K85 [{["tag"] = "flex-none align-x-center items-center size-full-0 auto-y", ["layout"]}]
      255 DUPTABLE                         R22 K88 [{"FillDirection", "Padding"}]
      256 GETIMPORT                        R23 K90 [Enum.FillDirection.Vertical]
      258 SETTABLEKS                       R23 R22 K86 ["FillDirection"]
      260 GETIMPORT                        R23 K92 [UDim.new]
      262 LOADN                            R24 0
      263 MOVE                             R25 R7
      264 CALL                             R23 2 1
      265 SETTABLEKS                       R23 R22 K87 ["Padding"]
      267 SETTABLEKS                       R22 R21 K84 ["layout"]
      269 MOVE                             R22 R5
      270 CALL                             R19 3 1
      271 SETTABLEKS                       R19 R18 K81 ["Content"]
      273 CALL                             R15 3 1
      274 SETTABLEKS                       R15 R14 K25 ["Rows"]
      276 CALL                             R11 3 -1
      277 RETURN                           R11 -1

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
