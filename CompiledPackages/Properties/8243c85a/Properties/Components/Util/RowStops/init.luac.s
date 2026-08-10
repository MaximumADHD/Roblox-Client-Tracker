PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectedRow"]
        3 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+3]
        5 LOADN                            R0 2
        6 JUMP                             ; [+16]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["selectedRow"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["rowsCount"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+5]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K2 ["rowsCount"]
       18 JUMP                             ; [+4]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["selectedRow"]
       22 ADDK                             R0 R1 K3 [1]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K4 ["onAdd"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K5 ["setSelectedRow"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

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
       23 MOVE                             R5 R3
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["selectedRow"]
       27 JUMPIFEQKN                       R6 K7 [-1] ; [+38]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K8 ["selectedRowOriginalIndex"]
       32 JUMPIFEQKN                       R6 K7 [-1] ; [+33]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K6 ["selectedRow"]
       37 JUMPIFNOTEQ                      R3 R6 ; [+5]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K8 ["selectedRowOriginalIndex"]
       42 JUMP                             ; [+23]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K6 ["selectedRow"]
       46 JUMPIFNOTLT                      R6 R3 ; [+8]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K8 ["selectedRowOriginalIndex"]
       51 JUMPIFNOTLE                      R3 R6 ; [+3]
       53 SUBK                             R5 R3 K9 [1]
       54 JUMP                             ; [+11]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K6 ["selectedRow"]
       58 JUMPIFNOTLT                      R3 R6 ; [+7]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K8 ["selectedRowOriginalIndex"]
       63 JUMPIFNOTLE                      R6 R3 ; [+2]
       65 ADDK                             R5 R3 K9 [1]
       66 LOADK                            R7 K10 ["Row "]
       67 MOVE                             R8 R5
       68 CONCAT                           R6 R7 R8
       69 GETUPVAL                         R7 1
       70 GETUPVAL                         R8 2
       71 DUPTABLE                         R9 K20 [{"LayoutOrder", "rowSlot", "isSelected", "canDelete", "onEditStart", "onEditFinish", "onSelected", "onDelete", "onAbsoluteSizeChanged"}]
       72 SETTABLEKS                       R3 R9 K11 ["LayoutOrder"]
       74 SETTABLEKS                       R4 R9 K12 ["rowSlot"]
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K6 ["selectedRow"]
       79 JUMPIFEQ                         R3 R11 ; [+2]
       81 LOADB                            R10 0 +1
       82 LOADB                            R10 1
       83 SETTABLEKS                       R10 R9 K13 ["isSelected"]
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K0 ["rowsCount"]
       88 LOADN                            R12 2
       89 JUMPIFLT                         R12 R11 ; [+2]
       91 LOADB                            R10 0 +1
       92 LOADB                            R10 1
       93 SETTABLEKS                       R10 R9 K14 ["canDelete"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K15 ["onEditStart"]
       98 SETTABLEKS                       R10 R9 K15 ["onEditStart"]
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R10 R10 K16 ["onEditFinish"]
      103 SETTABLEKS                       R10 R9 K16 ["onEditFinish"]
      105 NEWCLOSURE                       R10 P0
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R10 R9 K17 ["onSelected"]
      110 NEWCLOSURE                       R10 P1
      111 CAPTURE                          UPVAL U0
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R10 R9 K18 ["onDelete"]
      115 JUMPIFNOTEQKN                    R3 K9 [1] ; [+3]
      117 GETUPVAL                         R10 3
      118 JUMP                             ; [+1]
      119 LOADNIL                          R10
      120 SETTABLEKS                       R10 R9 K19 ["onAbsoluteSizeChanged"]
      122 CALL                             R7 2 1
      123 SETTABLE                         R7 R0 R6
      124 FORNLOOP                         R1
      125 RETURN                           R0 1

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
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["selectedRow"]
       17 SUBK                             R2 R3 K4 [1]
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R5 3
       20 ADD                              R3 R4 R5
       21 MUL                              R1 R2 R3
       22 GETUPVAL                         R3 2
       23 ADD                              R2 R1 R3
       24 GETTABLEKS                       R3 R0 K5 ["CanvasPosition"]
       26 GETTABLEKS                       R3 R3 K6 ["Y"]
       28 GETTABLEKS                       R5 R0 K7 ["AbsoluteSize"]
       30 GETTABLEKS                       R5 R5 K6 ["Y"]
       32 ADD                              R4 R3 R5
       33 MOVE                             R5 R3
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K1 ["selectedRow"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K8 ["maxRowsBeforeScroll"]
       40 JUMPIFNOTLE                      R6 R7 ; [+3]
       42 LOADN                            R5 0
       43 JUMP                             ; [+28]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K1 ["selectedRow"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K9 ["rowsCount"]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K8 ["maxRowsBeforeScroll"]
       53 SUB                              R7 R8 R9
       54 JUMPIFNOTLT                      R7 R6 ; [+6]
       56 GETTABLEKS                       R6 R0 K10 ["AbsoluteCanvasSize"]
       58 GETTABLEKS                       R5 R6 K6 ["Y"]
       60 JUMP                             ; [+11]
       61 JUMPIFNOTLT                      R1 R3 ; [+3]
       63 MOVE                             R5 R1
       64 JUMP                             ; [+7]
       65 JUMPIFNOTLT                      R4 R2 ; [+6]
       67 GETTABLEKS                       R6 R0 K7 ["AbsoluteSize"]
       69 GETTABLEKS                       R6 R6 K6 ["Y"]
       71 SUB                              R5 R2 R6
       72 LOADN                            R7 0
       73 GETTABLEKS                       R9 R0 K10 ["AbsoluteCanvasSize"]
       75 GETTABLEKS                       R9 R9 K6 ["Y"]
       77 GETTABLEKS                       R10 R0 K7 ["AbsoluteSize"]
       79 GETTABLEKS                       R10 R10 K6 ["Y"]
       81 SUB                              R8 R9 R10
       82 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       84 GETIMPORT                        R6 K13 [math.max]
       86 CALL                             R6 2 1
       87 LOADN                            R9 0
       88 FASTCALL3                        MATH_CLAMP R5 R9 R6
       90 MOVE                             R8 R5
       91 MOVE                             R10 R6
       92 GETIMPORT                        R7 K15 [math.clamp]
       94 CALL                             R7 3 1
       95 MOVE                             R5 R7
       96 JUMPIFEQ                         R5 R3 ; [+8]
       98 GETIMPORT                        R7 K18 [Vector2.new]
      100 LOADN                            R8 0
      101 MOVE                             R9 R5
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R0 K5 ["CanvasPosition"]
      105 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 2
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R7 0 4
       16 GETTABLEKS                       R8 R0 K2 ["onAdd"]
       18 GETTABLEKS                       R9 R0 K3 ["setSelectedRow"]
       20 GETTABLEKS                       R10 R0 K4 ["selectedRow"]
       22 GETTABLEKS                       R11 R0 K5 ["rowsCount"]
       24 SETLIST                          R7 R8 4 [1]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R8 0 9
       37 GETTABLEKS                       R9 R0 K5 ["rowsCount"]
       39 GETTABLEKS                       R10 R0 K7 ["rowSlots"]
       41 GETTABLEKS                       R11 R0 K4 ["selectedRow"]
       43 GETTABLEKS                       R12 R0 K8 ["selectedRowOriginalIndex"]
       45 GETTABLEKS                       R13 R0 K9 ["onEditStart"]
       47 GETTABLEKS                       R14 R0 K10 ["onEditFinish"]
       49 GETTABLEKS                       R15 R0 K3 ["setSelectedRow"]
       51 GETTABLEKS                       R16 R0 K11 ["onDelete"]
       53 MOVE                             R17 R3
       54 SETLIST                          R8 R9 9 [1]
       56 CALL                             R6 2 1
       57 GETTABLEKS                       R7 R4 K12 ["Gap"]
       59 GETTABLEKS                       R7 R7 K13 ["Small"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K14 ["useEffect"]
       64 NEWCLOSURE                       R9 P2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 NEWTABLE                         R10 0 5
       71 GETTABLEKS                       R11 R0 K4 ["selectedRow"]
       73 GETTABLEKS                       R12 R0 K5 ["rowsCount"]
       75 GETTABLEKS                       R13 R0 K15 ["maxRowsBeforeScroll"]
       77 MOVE                             R14 R2
       78 MOVE                             R15 R7
       79 SETLIST                          R10 R11 5 [1]
       81 CALL                             R8 2 0
       82 GETUPVAL                         R8 5
       83 CALL                             R8 0 1
       84 GETTABLEKS                       R10 R0 K5 ["rowsCount"]
       86 GETTABLEKS                       R11 R0 K15 ["maxRowsBeforeScroll"]
       88 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       90 GETIMPORT                        R9 K18 [math.min]
       92 CALL                             R9 2 1
       93 JUMPIFNOTEQKN                    R9 K19 [0] ; [+3]
       95 LOADN                            R10 0
       96 JUMP                             ; [+4]
       97 MUL                              R11 R9 R2
       98 SUBK                             R13 R9 K20 [1]
       99 MUL                              R12 R13 R7
      100 ADD                              R10 R11 R12
      101 GETUPVAL                         R11 3
      102 GETUPVAL                         R12 6
      103 DUPTABLE                         R13 K24 [{["tag"] = "col flex-none gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      104 GETTABLEKS                       R14 R0 K23 ["LayoutOrder"]
      106 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      108 DUPTABLE                         R14 K27 [{"Header", "Rows"}]
      109 GETUPVAL                         R15 3
      110 GETUPVAL                         R16 6
      111 DUPTABLE                         R17 K29 [{["tag"] = "row flex-none size-full-0 auto-y padding-x-medium", ["LayoutOrder"]}]
      112 MOVE                             R18 R8
      113 CALL                             R18 0 1
      114 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      116 DUPTABLE                         R18 K32 [{"Title", "Add"}]
      117 GETUPVAL                         R19 3
      118 GETUPVAL                         R20 7
      119 DUPTABLE                         R21 K36 [{["LayoutOrder"], ["Text"] = "Stops", ["tag"] = "fill size-full-0 auto-y text-title-large text-align-x-left"}]
      120 MOVE                             R22 R8
      121 CALL                             R22 0 1
      122 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      124 CALL                             R19 2 1
      125 SETTABLEKS                       R19 R18 K30 ["Title"]
      127 GETUPVAL                         R19 3
      128 GETUPVAL                         R20 8
      129 DUPTABLE                         R21 K42 [{["title"] = "", ["text"], ["align"], ["side"], ["LayoutOrder"]}]
      130 GETTABLEKS                       R23 R0 K5 ["rowsCount"]
      132 GETTABLEKS                       R25 R0 K7 ["rowSlots"]
      134 LENGTH                           R24 R25
      135 JUMPIFNOTLE                      R24 R23 ; [+10]
      137 LOADK                            R23 K43 ["Maximum stops reached. A sequence can contain up to %* stops."]
      138 GETTABLEKS                       R26 R0 K7 ["rowSlots"]
      140 LENGTH                           R25 R26
      141 NAMECALL                         R23 R23 K44 ["format"]
      143 CALL                             R23 2 1
      144 MOVE                             R22 R23
      145 JUMP                             ; [+1]
      146 LOADK                            R22 K45 ["Add stop"]
      147 SETTABLEKS                       R22 R21 K39 ["text"]
      149 GETUPVAL                         R22 9
      150 GETTABLEKS                       R22 R22 K46 ["End"]
      152 SETTABLEKS                       R22 R21 K40 ["align"]
      154 GETUPVAL                         R22 10
      155 GETTABLEKS                       R22 R22 K47 ["Top"]
      157 SETTABLEKS                       R22 R21 K41 ["side"]
      159 MOVE                             R22 R8
      160 CALL                             R22 0 1
      161 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      163 DUPTABLE                         R22 K49 [{"Anchor"}]
      164 GETUPVAL                         R23 3
      165 GETUPVAL                         R24 11
      166 DUPTABLE                         R25 K57 [{["size"], ["icon"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"] = "RowStops-Add"}]
      167 GETUPVAL                         R26 12
      168 GETTABLEKS                       R26 R26 K58 ["XSmall"]
      170 SETTABLEKS                       R26 R25 K50 ["size"]
      172 GETUPVAL                         R26 13
      173 GETTABLEKS                       R26 R26 K59 ["PlusLarge"]
      175 SETTABLEKS                       R26 R25 K51 ["icon"]
      177 GETUPVAL                         R26 14
      178 GETTABLEKS                       R26 R26 K60 ["Utility"]
      180 SETTABLEKS                       R26 R25 K52 ["variant"]
      182 GETTABLEKS                       R27 R0 K5 ["rowsCount"]
      184 GETTABLEKS                       R29 R0 K7 ["rowSlots"]
      186 LENGTH                           R28 R29
      187 JUMPIFLE                         R28 R27 ; [+2]
      189 LOADB                            R26 0 +1
      190 LOADB                            R26 1
      191 SETTABLEKS                       R26 R25 K53 ["isDisabled"]
      193 SETTABLEKS                       R5 R25 K54 ["onActivated"]
      195 CALL                             R23 2 1
      196 SETTABLEKS                       R23 R22 K48 ["Anchor"]
      198 CALL                             R19 3 1
      199 SETTABLEKS                       R19 R18 K31 ["Add"]
      201 CALL                             R15 3 1
      202 SETTABLEKS                       R15 R14 K25 ["Header"]
      204 GETUPVAL                         R15 3
      205 GETUPVAL                         R16 15
      206 DUPTABLE                         R17 K66 [{["scroll"], ["scrollingFrameRef"], ["tag"] = "flex-none", ["Size"], ["LayoutOrder"], ["testId"] = "RowStops-ScrollView"}]
      207 DUPTABLE                         R18 K71 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingEnabled", "ScrollingDirection"}]
      208 GETIMPORT                        R19 K74 [UDim2.fromScale]
      210 LOADN                            R20 1
      211 LOADN                            R21 0
      212 CALL                             R19 2 1
      213 SETTABLEKS                       R19 R18 K67 ["CanvasSize"]
      215 GETIMPORT                        R19 K78 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R19 R18 K68 ["AutomaticCanvasSize"]
      219 GETTABLEKS                       R20 R0 K5 ["rowsCount"]
      221 GETTABLEKS                       R21 R0 K15 ["maxRowsBeforeScroll"]
      223 JUMPIFLT                         R21 R20 ; [+2]
      225 LOADB                            R19 0 +1
      226 LOADB                            R19 1
      227 SETTABLEKS                       R19 R18 K69 ["ScrollingEnabled"]
      229 GETIMPORT                        R19 K79 [Enum.ScrollingDirection.Y]
      231 SETTABLEKS                       R19 R18 K70 ["ScrollingDirection"]
      233 SETTABLEKS                       R18 R17 K61 ["scroll"]
      235 SETTABLEKS                       R1 R17 K62 ["scrollingFrameRef"]
      237 GETIMPORT                        R18 K81 [UDim2.new]
      239 LOADN                            R19 1
      240 LOADN                            R20 0
      241 LOADN                            R21 0
      242 MOVE                             R22 R10
      243 CALL                             R18 4 1
      244 SETTABLEKS                       R18 R17 K64 ["Size"]
      246 MOVE                             R18 R8
      247 CALL                             R18 0 1
      248 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      250 DUPTABLE                         R18 K83 [{"Content"}]
      251 GETUPVAL                         R19 3
      252 GETUPVAL                         R20 6
      253 DUPTABLE                         R21 K86 [{["tag"] = "col flex-none align-x-center items-center size-full-0 auto-y", ["Padding"]}]
      254 GETIMPORT                        R22 K88 [UDim.new]
      256 LOADN                            R23 0
      257 MOVE                             R24 R7
      258 CALL                             R22 2 1
      259 SETTABLEKS                       R22 R21 K85 ["Padding"]
      261 MOVE                             R22 R6
      262 CALL                             R19 3 1
      263 SETTABLEKS                       R19 R18 K82 ["Content"]
      265 CALL                             R15 3 1
      266 SETTABLEKS                       R15 R14 K26 ["Rows"]
      268 CALL                             R11 3 -1
      269 RETURN                           R11 -1

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
       96 CAPTURE                          VAL R20
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R6
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
