PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnHoverRow"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnHoverRow"]
       11 GETTABLEKS                       R2 R0 K2 ["Row"]
       13 GETTABLEKS                       R3 R0 K3 ["RowIndex"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnHoverRowEnd"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnHoverRowEnd"]
       11 GETTABLEKS                       R2 R0 K2 ["Row"]
       13 GETTABLEKS                       R3 R0 K3 ["RowIndex"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnSelectRow"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnSelectRow"]
       11 GETTABLEKS                       R2 R0 K2 ["Row"]
       13 GETTABLEKS                       R3 R0 K3 ["RowIndex"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnDoubleClick"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnDoubleClick"]
       11 GETTABLEKS                       R2 R0 K2 ["Row"]
       13 GETTABLEKS                       R3 R0 K3 ["RowIndex"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnRightClickRow"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["OnRightClickRow"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R2 K0 ["Row "]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["rowToIndex"]
        4 GETTABLE                         R3 R4 R0
        5 JUMPIF                           R3 ; [+5]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K3 [tostring]
       10 CALL                             R3 1 1
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETTABLEKS                       R2 R1 K1 ["Style"]
        7 JUMPIF                           R2 ; [+5]
        8 NEWTABLE                         R2 0 0
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       13 GETUPVAL                         R4 1
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETUPVAL                         R3 2
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R3 R2 K3 ["HeaderHeight"]
       19 GETTABLEKS                       R5 R1 K4 ["Footer"]
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETUPVAL                         R5 1
       23 JUMPIFNOT                        R5 ; [+2]
       24 GETUPVAL                         R4 3
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R4 R2 K5 ["FooterHeight"]
       28 JUMPIF                           R4 ; [+1]
       29 LOADN                            R4 0
       30 GETTABLEKS                       R7 R0 K7 ["AbsoluteSize"]
       32 GETTABLEKS                       R7 R7 K8 ["Y"]
       34 ADD                              R8 R3 R4
       35 SUB                              R6 R7 R8
       36 SUBK                             R5 R6 K6 [5]
       37 GETTABLEKS                       R7 R1 K9 ["Padding"]
       39 JUMPIFNOT                        R7 ; [+3]
       40 GETTABLEKS                       R6 R1 K9 ["Padding"]
       42 JUMP                             ; [+1]
       43 LOADN                            R6 1
       44 GETTABLEKS                       R8 R0 K7 ["AbsoluteSize"]
       46 GETTABLEKS                       R8 R8 K10 ["X"]
       48 LOADN                            R10 2
       49 MUL                              R9 R10 R6
       50 SUB                              R7 R8 R9
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K0 ["props"]
       54 GETTABLEKS                       R8 R8 K11 ["OnSizeChange"]
       56 MOVE                             R9 R5
       57 MOVE                             R10 R7
       58 CALL                             R8 2 0
       59 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_resizing"]
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_resizing"]
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["useVariableWidth"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETTABLEKS                       R1 R0 K1 ["X"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["scrollingFrameRef"]
       10 GETTABLEKS                       R2 R2 K3 ["current"]
       12 GETTABLEKS                       R3 R0 K1 ["X"]
       14 LOADN                            R4 10
       15 JUMPIFNOTLT                      R3 R4 ; [+14]
       17 JUMPIFNOT                        R2 ; [+12]
       18 GETTABLEKS                       R4 R2 K5 ["AbsoluteCanvasSize"]
       20 GETTABLEKS                       R4 R4 K1 ["X"]
       22 SUBK                             R3 R4 K4 [10]
       23 GETTABLEKS                       R4 R2 K6 ["AbsoluteWindowSize"]
       25 GETTABLEKS                       R4 R4 K1 ["X"]
       27 JUMPIFNOTLT                      R3 R4 ; [+2]
       29 LOADN                            R1 0
       30 GETUPVAL                         R3 0
       31 DUPTABLE                         R5 K8 [{"HeaderOffset"}]
       32 SETTABLEKS                       R1 R5 K7 ["HeaderOffset"]
       34 NAMECALL                         R3 R3 K9 ["setState"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["cellContentsWidth"]
        3 GETTABLE                         R3 R4 R0
        4 JUMPIF                           R3 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["cellContentsWidth"]
        8 NEWTABLE                         R4 0 0
       10 SETTABLE                         R4 R3 R0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["cellContentsWidth"]
       14 GETTABLE                         R3 R4 R0
       15 SETTABLE                         R2 R3 R1
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["cellContentsWidth"]
        6 GETTABLE                         R3 R4 R0
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 LOADN                            R3 0
       10 LOADN                            R6 1
       11 GETTABLEKS                       R7 R2 K2 ["Rows"]
       13 LENGTH                           R4 R7
       14 LOADN                            R5 1
       15 FORNPREP                         R4
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K1 ["cellContentsWidth"]
       19 GETTABLE                         R8 R9 R0
       20 GETTABLE                         R7 R8 R6
       21 JUMPIFNOT                        R7 ; [+12]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K1 ["cellContentsWidth"]
       25 GETTABLE                         R8 R9 R0
       26 GETTABLE                         R7 R8 R6
       27 JUMPIFNOTLT                      R3 R7 ; [+6]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K1 ["cellContentsWidth"]
       32 GETTABLE                         R7 R8 R0
       33 GETTABLE                         R3 R7 R6
       34 FORNLOOP                         R4
       35 NEWTABLE                         R4 0 0
       37 GETIMPORT                        R5 K4 [ipairs]
       39 GETTABLEKS                       R6 R2 K5 ["Columns"]
       41 CALL                             R5 1 3
       42 FORGPREP_INEXT                   R5
       43 GETTABLEKS                       R12 R9 K6 ["Width"]
       45 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       47 MOVE                             R11 R4
       48 GETIMPORT                        R10 K9 [table.insert]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R5 2 [inext] ; [-9]
       53 LOADN                            R5 0
       54 JUMPIFNOTLT                      R5 R3 ; [+12]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K10 ["expandColumnToFitOverflow"]
       59 MOVE                             R6 R0
       60 MOVE                             R7 R3
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K11 ["Offset"]
       64 MOVE                             R9 R1
       65 MOVE                             R10 R4
       66 CALL                             R5 5 0
       67 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R5 0 0
        2 DIV                              R6 R1 R3
        3 LENGTH                           R10 R4
        4 SUBK                             R9 R10 K0 [1]
        5 MUL                              R8 R2 R9
        6 ADD                              R7 R8 R1
        7 JUMPIFNOTLE                      R3 R7 ; [+6]
        9 LENGTH                           R11 R4
       10 SUBK                             R10 R11 K0 [1]
       11 MUL                              R9 R10 R2
       12 SUB                              R8 R3 R9
       13 DIV                              R6 R8 R3
       14 SUBRK                            R8 R0 K6 ["insert"]
       15 GETTABLE                         R10 R4 R0
       16 GETTABLEKS                       R10 R10 K1 ["Scale"]
       18 SUBRK                            R9 R0 K10 [NULL]
       19 LOADN                            R12 1
       20 LENGTH                           R10 R4
       21 LOADN                            R11 1
       22 FORNPREP                         R10
       23 JUMPIFNOTEQ                      R12 R0 ; [+12]
       25 MOVE                             R14 R5
       26 GETIMPORT                        R15 K4 [UDim.new]
       28 MOVE                             R16 R6
       29 LOADN                            R17 0
       30 CALL                             R15 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R13 K7 [table.insert]
       34 CALL                             R13 -1 0
       35 JUMP                             ; [+28]
       36 JUMPIFNOTLE                      R3 R7 ; [+12]
       38 MOVE                             R14 R5
       39 GETIMPORT                        R15 K4 [UDim.new]
       41 DIV                              R16 R2 R3
       42 LOADN                            R17 0
       43 CALL                             R15 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R13 K7 [table.insert]
       47 CALL                             R13 -1 0
       48 JUMP                             ; [+15]
       49 GETTABLE                         R14 R4 R12
       50 GETTABLEKS                       R14 R14 K1 ["Scale"]
       52 DIV                              R13 R14 R9
       53 MUL                              R14 R13 R8
       54 MOVE                             R16 R5
       55 GETIMPORT                        R17 K4 [UDim.new]
       57 MOVE                             R18 R14
       58 LOADN                            R19 0
       59 CALL                             R17 2 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R15 K7 [table.insert]
       63 CALL                             R15 -1 0
       64 FORNLOOP                         R10
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K8 ["props"]
       68 GETTABLEKS                       R10 R10 K9 ["OnColumnSizesChange"]
       70 MOVE                             R11 R5
       71 CALL                             R10 1 0
       72 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"HeaderOffset"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["HeaderOffset"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["scrollingFrameRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onHoverRow"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onHoverRowEnd"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onSelectRow"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onDoubleClick"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K9 ["onRightClickRow"]
       32 NAMECALL                         R1 R0 K10 ["_flushRenderRow"]
       34 CALL                             R1 1 0
       35 GETUPVAL                         R2 1
       36 JUMPIFNOT                        R2 ; [+2]
       37 LOADNIL                          R1
       38 JUMP                             ; [+2]
       39 NEWCLOSURE                       R1 P5
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K11 ["getDefaultRowKey"]
       43 NEWCLOSURE                       R1 P6
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 SETTABLEKS                       R1 R0 K12 ["onSizeChange"]
       50 NEWCLOSURE                       R1 P7
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K13 ["onResizeStart"]
       54 NEWCLOSURE                       R1 P8
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K14 ["onResizeEnd"]
       58 NEWCLOSURE                       R1 P9
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K15 ["onScrollUpdate"]
       62 NEWTABLE                         R1 0 0
       64 SETTABLEKS                       R1 R0 K16 ["cellContentsWidth"]
       66 NEWCLOSURE                       R1 P10
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K17 ["setCellContentsWidth"]
       70 NEWCLOSURE                       R1 P11
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U5
       73 SETTABLEKS                       R1 R0 K18 ["onExpandColumnOnDoubleClick"]
       75 NEWCLOSURE                       R1 P12
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R1 R0 K19 ["expandColumnToFitOverflow"]
       79 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        5 LOADB                            R5 0
        6 GETTABLEKS                       R6 R3 K2 ["HighlightedRows"]
        8 JUMPIFNOT                        R6 ; [+15]
        9 GETIMPORT                        R6 K4 [ipairs]
       11 GETTABLEKS                       R7 R3 K2 ["HighlightedRows"]
       13 CALL                             R6 1 3
       14 FORGPREP_INEXT                   R6
       15 GETUPVAL                         R11 1
       16 MOVE                             R12 R10
       17 GETTABLEKS                       R13 R0 K5 ["item"]
       19 CALL                             R11 2 1
       20 JUMPIFNOT                        R11 ; [+1]
       21 LOADB                            R5 1
       22 FORGLOOP                         R6 2 [inext] ; [-8]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R7 R3 K6 ["RowHeight"]
       27 GETUPVAL                         R9 3
       28 JUMPIFNOT                        R9 ; [+2]
       29 GETUPVAL                         R8 4
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R8 R4 K6 ["RowHeight"]
       33 CALL                             R6 2 1
       34 LOADNIL                          R7
       35 GETTABLEKS                       R8 R3 K7 ["GetRowHeight"]
       37 JUMPIFNOT                        R8 ; [+6]
       38 GETTABLEKS                       R8 R3 K7 ["GetRowHeight"]
       40 MOVE                             R9 R0
       41 MOVE                             R10 R6
       42 CALL                             R8 2 1
       43 MOVE                             R7 R8
       44 DUPTABLE                         R8 K28 [{"key", "CellProps", "CellComponent", "Columns", "Rows", "Row", "RowIndex", "Selected", "OnHover", "OnHoverEnd", "OnPress", "OnDoubleClick", "OnRightClick", "Position", "Size", "FullSpan", "FullSpanEmphasis", "HighlightRow", "RowHeight", "SetCellContentsWidth", "Variant"}]
       45 GETUPVAL                         R10 5
       46 JUMPIFNOT                        R10 ; [+16]
       47 GETUPVAL                         R10 6
       48 JUMPIFNOT                        R10 ; [+14]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K0 ["props"]
       52 GETTABLEKS                       R10 R10 K29 ["GetRowId"]
       54 JUMPIFNOT                        R10 ; [+8]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K0 ["props"]
       58 GETTABLEKS                       R9 R9 K29 ["GetRowId"]
       60 MOVE                             R10 R0
       61 CALL                             R9 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R9
       64 SETTABLEKS                       R9 R8 K8 ["key"]
       66 GETTABLEKS                       R9 R3 K9 ["CellProps"]
       68 SETTABLEKS                       R9 R8 K9 ["CellProps"]
       70 GETTABLEKS                       R9 R3 K10 ["CellComponent"]
       72 SETTABLEKS                       R9 R8 K10 ["CellComponent"]
       74 GETTABLEKS                       R9 R3 K11 ["Columns"]
       76 SETTABLEKS                       R9 R8 K11 ["Columns"]
       78 GETTABLEKS                       R9 R3 K12 ["Rows"]
       80 SETTABLEKS                       R9 R8 K12 ["Rows"]
       82 SETTABLEKS                       R0 R8 K13 ["Row"]
       84 SETTABLEKS                       R1 R8 K14 ["RowIndex"]
       86 GETTABLEKS                       R10 R3 K30 ["SelectedRow"]
       88 JUMPIFEQ                         R1 R10 ; [+2]
       90 LOADB                            R9 0 +1
       91 LOADB                            R9 1
       92 SETTABLEKS                       R9 R8 K15 ["Selected"]
       94 GETTABLEKS                       R9 R3 K31 ["OnHoverRow"]
       96 JUMPIFNOT                        R9 ; [+3]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R9 R9 K32 ["onHoverRow"]
      100 SETTABLEKS                       R9 R8 K16 ["OnHover"]
      102 GETTABLEKS                       R9 R3 K33 ["OnHoverRowEnd"]
      104 JUMPIFNOT                        R9 ; [+3]
      105 GETUPVAL                         R9 0
      106 GETTABLEKS                       R9 R9 K34 ["onHoverRowEnd"]
      108 SETTABLEKS                       R9 R8 K17 ["OnHoverEnd"]
      110 GETTABLEKS                       R9 R3 K35 ["OnSelectRow"]
      112 JUMPIFNOT                        R9 ; [+3]
      113 GETUPVAL                         R9 0
      114 GETTABLEKS                       R9 R9 K36 ["onSelectRow"]
      116 SETTABLEKS                       R9 R8 K18 ["OnPress"]
      118 GETTABLEKS                       R9 R3 K19 ["OnDoubleClick"]
      120 JUMPIFNOT                        R9 ; [+3]
      121 GETUPVAL                         R9 0
      122 GETTABLEKS                       R9 R9 K37 ["onDoubleClick"]
      124 SETTABLEKS                       R9 R8 K19 ["OnDoubleClick"]
      126 GETUPVAL                         R9 0
      127 GETTABLEKS                       R9 R9 K38 ["onRightClickRow"]
      129 SETTABLEKS                       R9 R8 K20 ["OnRightClick"]
      131 SETTABLEKS                       R2 R8 K21 ["Position"]
      133 GETTABLEKS                       R10 R3 K7 ["GetRowHeight"]
      135 JUMPIFNOT                        R10 ; [+8]
      136 GETIMPORT                        R9 K41 [UDim2.new]
      138 LOADN                            R10 1
      139 LOADN                            R11 0
      140 LOADN                            R12 0
      141 MOVE                             R13 R7
      142 CALL                             R9 4 1
      143 JUMP                             ; [+7]
      144 GETIMPORT                        R9 K41 [UDim2.new]
      146 LOADN                            R10 1
      147 LOADN                            R11 0
      148 LOADN                            R12 0
      149 MOVE                             R13 R6
      150 CALL                             R9 4 1
      151 SETTABLEKS                       R9 R8 K22 ["Size"]
      153 GETTABLEKS                       R9 R3 K23 ["FullSpan"]
      155 SETTABLEKS                       R9 R8 K23 ["FullSpan"]
      157 GETTABLEKS                       R9 R3 K24 ["FullSpanEmphasis"]
      159 SETTABLEKS                       R9 R8 K24 ["FullSpanEmphasis"]
      161 SETTABLEKS                       R5 R8 K25 ["HighlightRow"]
      163 GETTABLEKS                       R10 R3 K7 ["GetRowHeight"]
      165 JUMPIFNOT                        R10 ; [+2]
      166 MOVE                             R9 R7
      167 JUMP                             ; [+1]
      168 MOVE                             R9 R6
      169 SETTABLEKS                       R9 R8 K6 ["RowHeight"]
      171 GETTABLEKS                       R10 R3 K42 ["ExpandOnDoubleClick"]
      173 JUMPIFNOT                        R10 ; [+4]
      174 GETUPVAL                         R9 0
      175 GETTABLEKS                       R9 R9 K43 ["setCellContentsWidth"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R9
      179 SETTABLEKS                       R9 R8 K26 ["SetCellContentsWidth"]
      181 GETTABLEKS                       R9 R3 K27 ["Variant"]
      183 SETTABLEKS                       R9 R8 K27 ["Variant"]
      185 RETURN                           R8 1

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 SETTABLEKS                       R1 R0 K0 ["_getRowProps"]
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Columns"]
        3 GETTABLE                         R2 R3 R1
        4 GETTABLEKS                       R4 R2 K1 ["Width"]
        6 GETTABLEKS                       R5 R0 K1 ["Width"]
        8 JUMPIFNOTEQ                      R4 R5 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Columns"]
        4 GETTABLEKS                       R4 R1 K1 ["Columns"]
        6 JUMPIFEQ                         R3 R4 ; [+25]
        8 GETTABLEKS                       R5 R2 K1 ["Columns"]
       10 LENGTH                           R4 R5
       11 GETTABLEKS                       R6 R1 K1 ["Columns"]
       13 LENGTH                           R5 R6
       14 JUMPIFNOTEQ                      R4 R5 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 LOADB                            R4 0
       19 JUMPIF                           R3 ; [+7]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R6 R2 K1 ["Columns"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R1
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 JUMPIF                           R3 ; [+1]
       28 JUMPIFNOT                        R4 ; [+3]
       29 NAMECALL                         R5 R0 K2 ["_flushRenderRow"]
       31 CALL                             R5 1 0
       32 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["Width"]
        2 JUMPIF                           R1 ; [+9]
        3 GETIMPORT                        R1 K3 [UDim.new]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K5 ["Columns"]
        8 LENGTH                           R3 R4
        9 DIVRK                            R2 R4 K3 [UDim.new]
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["MinWidth"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_resizing"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETIMPORT                        R2 K4 [Enum.SortDirection.Descending]
        8 JUMPIFNOTEQ                      R1 R2 ; [+4]
       10 GETIMPORT                        R0 K6 [Enum.SortDirection.Ascending]
       12 JUMP                             ; [+2]
       13 GETIMPORT                        R0 K4 [Enum.SortDirection.Descending]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K7 ["props"]
       18 GETTABLEKS                       R1 R1 K8 ["OnSortChange"]
       20 GETUPVAL                         R2 2
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETIMPORT                        R1 K1 [spawn]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SortIndex"]
        3 JUMPIFNOTEQ                      R3 R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["SortOrder"]
        8 JUMPIF                           R2 ; [+1]
        9 LOADNIL                          R2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["HeaderCellComponent"]
       13 JUMPIF                           R3 ; [+1]
       14 GETUPVAL                         R3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 MOVE                             R5 R3
       19 DUPTABLE                         R6 K12 [{"Name", "Tooltip", "Order", "Width", "ColumnIndex", "Style", "OnPress", "Variant"}]
       20 GETTABLEKS                       R7 R0 K4 ["Name"]
       22 SETTABLEKS                       R7 R6 K4 ["Name"]
       24 GETTABLEKS                       R7 R0 K5 ["Tooltip"]
       26 SETTABLEKS                       R7 R6 K5 ["Tooltip"]
       28 SETTABLEKS                       R2 R6 K6 ["Order"]
       30 GETIMPORT                        R7 K15 [UDim.new]
       32 LOADN                            R8 1
       33 LOADN                            R9 255
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K7 ["Width"]
       37 SETTABLEKS                       R1 R6 K8 ["ColumnIndex"]
       39 GETUPVAL                         R8 3
       40 JUMPIFNOT                        R8 ; [+2]
       41 LOADNIL                          R7
       42 JUMP                             ; [+1]
       43 GETUPVAL                         R7 4
       44 SETTABLEKS                       R7 R6 K9 ["Style"]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K16 ["props"]
       49 GETTABLEKS                       R8 R8 K17 ["OnSortChange"]
       51 JUMPIFNOT                        R8 ; [+5]
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 JUMPIF                           R7 ; [+1]
       57 LOADNIL                          R7
       58 SETTABLEKS                       R7 R6 K10 ["OnPress"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K11 ["Variant"]
       63 SETTABLEKS                       R7 R6 K11 ["Variant"]
       65 CALL                             R4 2 -1
       66 RETURN                           R4 -1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["Columns"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R1 K2 ["Columns"]
       13 DUPCLOSURE                       R6 K3 [PROTO_19]
       14 CAPTURE                          UPVAL U1
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["createElement"]
       19 GETUPVAL                         R6 3
       20 DUPTABLE                         R7 K17 [{"HideBars", "UseScale", "UseDeficit", "ClampSize", "Sizes", "MinSizes", "OnSizesChange", "OnResizeStart", "OnResizeEnd", "ExpandColumnOnDoubleClick", "PaneStyle", "Position"}]
       21 LOADB                            R8 1
       22 SETTABLEKS                       R8 R7 K5 ["HideBars"]
       24 GETTABLEKS                       R8 R1 K6 ["UseScale"]
       26 SETTABLEKS                       R8 R7 K6 ["UseScale"]
       28 GETTABLEKS                       R8 R1 K7 ["UseDeficit"]
       30 SETTABLEKS                       R8 R7 K7 ["UseDeficit"]
       32 GETTABLEKS                       R8 R1 K8 ["ClampSize"]
       34 SETTABLEKS                       R8 R7 K8 ["ClampSize"]
       36 SETTABLEKS                       R3 R7 K9 ["Sizes"]
       38 SETTABLEKS                       R4 R7 K10 ["MinSizes"]
       40 GETTABLEKS                       R8 R1 K18 ["OnColumnSizesChange"]
       42 SETTABLEKS                       R8 R7 K11 ["OnSizesChange"]
       44 GETTABLEKS                       R8 R0 K19 ["onResizeStart"]
       46 SETTABLEKS                       R8 R7 K12 ["OnResizeStart"]
       48 GETTABLEKS                       R8 R0 K20 ["onResizeEnd"]
       50 SETTABLEKS                       R8 R7 K13 ["OnResizeEnd"]
       52 GETTABLEKS                       R9 R1 K21 ["ExpandOnDoubleClick"]
       54 JUMPIFNOT                        R9 ; [+3]
       55 GETTABLEKS                       R8 R0 K22 ["onExpandColumnOnDoubleClick"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R8
       59 SETTABLEKS                       R8 R7 K14 ["ExpandColumnOnDoubleClick"]
       61 GETUPVAL                         R9 4
       62 JUMPIFNOT                        R9 ; [+2]
       63 LOADNIL                          R8
       64 JUMP                             ; [+1]
       65 LOADK                            R8 K23 ["SubtleBox"]
       66 SETTABLEKS                       R8 R7 K15 ["PaneStyle"]
       68 GETIMPORT                        R8 K26 [UDim2.new]
       70 LOADN                            R9 0
       71 GETTABLEKS                       R11 R0 K27 ["state"]
       73 GETTABLEKS                       R11 R11 K28 ["HeaderOffset"]
       75 MINUS                            R10 R11
       76 LOADN                            R11 0
       77 LOADN                            R12 0
       78 CALL                             R8 4 1
       79 SETTABLEKS                       R8 R7 K16 ["Position"]
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R9 R1 K2 ["Columns"]
       84 NEWCLOSURE                       R10 P2
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R0
       91 CALL                             R8 2 -1
       92 CALL                             R5 -1 -1
       93 RETURN                           R5 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.SortDirection.Descending]
        3 JUMPIFNOTEQ                      R1 R2 ; [+4]
        5 GETIMPORT                        R0 K5 [Enum.SortDirection.Ascending]
        7 JUMPIF                           R0 ; [+2]
        8 GETIMPORT                        R0 K3 [Enum.SortDirection.Descending]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K6 ["props"]
       13 GETTABLEKS                       R1 R1 K7 ["OnSortChange"]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["Width"]
        2 JUMPIF                           R2 ; [+9]
        3 GETIMPORT                        R2 K3 [UDim.new]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K5 ["Columns"]
        8 LENGTH                           R4 R5
        9 DIVRK                            R3 R4 K4 [1]
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K6 ["SortIndex"]
       15 JUMPIFNOTEQ                      R4 R1 ; [+5]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K7 ["SortOrder"]
       20 JUMPIF                           R3 ; [+1]
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K8 ["HeaderCellComponent"]
       25 JUMPIF                           R4 ; [+1]
       26 GETUPVAL                         R4 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K9 ["createElement"]
       30 MOVE                             R6 R4
       31 DUPTABLE                         R7 K17 [{"key", "Name", "Order", "Width", "ColumnIndex", "Style", "OnPress", "Variant"}]
       32 GETUPVAL                         R9 3
       33 JUMPIFNOT                        R9 ; [+6]
       34 GETTABLEKS                       R8 R0 K18 ["Key"]
       36 JUMPIF                           R8 ; [+4]
       37 GETTABLEKS                       R8 R0 K11 ["Name"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R8
       41 SETTABLEKS                       R8 R7 K10 ["key"]
       43 GETTABLEKS                       R8 R0 K11 ["Name"]
       45 SETTABLEKS                       R8 R7 K11 ["Name"]
       47 SETTABLEKS                       R3 R7 K12 ["Order"]
       49 SETTABLEKS                       R2 R7 K0 ["Width"]
       51 SETTABLEKS                       R1 R7 K13 ["ColumnIndex"]
       53 GETUPVAL                         R8 4
       54 SETTABLEKS                       R8 R7 K14 ["Style"]
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K19 ["props"]
       59 GETTABLEKS                       R9 R9 K20 ["OnSortChange"]
       61 JUMPIFNOT                        R9 ; [+5]
       62 NEWCLOSURE                       R8 P0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R1
       66 JUMPIF                           R8 ; [+1]
       67 LOADNIL                          R8
       68 SETTABLEKS                       R8 R7 K15 ["OnPress"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K16 ["Variant"]
       73 SETTABLEKS                       R8 R7 K16 ["Variant"]
       75 CALL                             R5 2 -1
       76 RETURN                           R5 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["Columns"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R0
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnColumnSizesChange"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 DUPTABLE                         R2 K3 [{"SplitPane"}]
        6 NAMECALL                         R3 R0 K4 ["renderResizableHeadings"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K2 ["SplitPane"]
       11 RETURN                           R2 1
       12 NAMECALL                         R2 R0 K5 ["renderFixedHeadings"]
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 NAMECALL                         R3 R0 K1 ["renderHeadings"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R2 K2 ["Stylizer"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["createElement"]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R8 2
       12 JUMPIFNOT                        R8 ; [+64]
       13 NEWTABLE                         R7 8 0
       15 LOADN                            R8 1
       16 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       18 GETIMPORT                        R8 K7 [UDim2.new]
       20 LOADN                            R9 1
       21 LOADN                            R10 0
       22 LOADN                            R11 0
       23 MOVE                             R12 R1
       24 CALL                             R8 4 1
       25 SETTABLEKS                       R8 R7 K8 ["Size"]
       27 DUPTABLE                         R8 K10 [{"Right"}]
       28 GETUPVAL                         R10 3
       29 JUMPIFNOT                        R10 ; [+11]
       30 GETTABLEKS                       R10 R2 K11 ["Scroll"]
       32 JUMPIFNOT                        R10 ; [+8]
       33 GETTABLEKS                       R10 R2 K12 ["VerticalScrollBarInset"]
       35 GETIMPORT                        R11 K16 [Enum.ScrollBarInset.Always]
       37 JUMPIFNOTEQ                      R10 R11 ; [+3]
       39 GETUPVAL                         R9 4
       40 JUMP                             ; [+8]
       41 GETUPVAL                         R10 3
       42 JUMPIF                           R10 ; [+5]
       43 GETTABLEKS                       R10 R2 K11 ["Scroll"]
       45 JUMPIFNOT                        R10 ; [+2]
       46 GETUPVAL                         R9 4
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 SETTABLEKS                       R9 R8 K9 ["Right"]
       51 SETTABLEKS                       R8 R7 K17 ["Padding"]
       53 LOADN                            R8 2
       54 SETTABLEKS                       R8 R7 K18 ["ZIndex"]
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R8 R8 K19 ["Tag"]
       59 GETUPVAL                         R9 6
       60 LOADK                            R10 K20 ["Main"]
       61 GETTABLEKS                       R12 R2 K21 ["OnColumnSizesChange"]
       63 JUMPIFNOT                        R12 ; [+2]
       64 LOADK                            R11 K22 [""]
       65 JUMP                             ; [+1]
       66 LOADK                            R11 K23 ["X-Row"]
       67 GETTABLEKS                       R13 R2 K24 ["Variant"]
       69 JUMPIFNOTEQKS                    R13 K25 ["modern"] ; [+3]
       71 LOADK                            R12 K26 ["X-Transparent"]
       72 JUMP                             ; [+1]
       73 LOADK                            R12 K27 ["X-Border"]
       74 CALL                             R9 3 1
       75 SETTABLE                         R9 R7 R8
       76 JUMP                             ; [+57]
       77 DUPTABLE                         R7 K32 [{"Layout", "LayoutOrder", "Size", "Padding", "Style", "BorderColor3", "BorderSizePixel", "ZIndex"}]
       78 GETTABLEKS                       R9 R2 K21 ["OnColumnSizesChange"]
       80 JUMPIFNOT                        R9 ; [+2]
       81 LOADNIL                          R8
       82 JUMP                             ; [+2]
       83 GETIMPORT                        R8 K35 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R8 R7 K28 ["Layout"]
       87 LOADN                            R8 1
       88 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       90 GETIMPORT                        R8 K7 [UDim2.new]
       92 LOADN                            R9 1
       93 LOADN                            R10 0
       94 LOADN                            R11 0
       95 MOVE                             R12 R1
       96 CALL                             R8 4 1
       97 SETTABLEKS                       R8 R7 K8 ["Size"]
       99 GETUPVAL                         R9 3
      100 JUMPIFNOT                        R9 ; [+9]
      101 GETTABLEKS                       R9 R2 K11 ["Scroll"]
      103 JUMPIFNOT                        R9 ; [+6]
      104 GETTABLEKS                       R9 R2 K12 ["VerticalScrollBarInset"]
      106 GETIMPORT                        R10 K16 [Enum.ScrollBarInset.Always]
      108 JUMPIFEQ                         R9 R10 ; [+6]
      110 GETUPVAL                         R9 3
      111 JUMPIF                           R9 ; [+6]
      112 GETTABLEKS                       R9 R2 K11 ["Scroll"]
      114 JUMPIFNOT                        R9 ; [+3]
      115 GETTABLEKS                       R8 R4 K36 ["ScrollHeaderPadding"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R8
      119 SETTABLEKS                       R8 R7 K17 ["Padding"]
      121 LOADK                            R8 K37 ["SubtleBox"]
      122 SETTABLEKS                       R8 R7 K29 ["Style"]
      124 GETTABLEKS                       R8 R4 K38 ["Border"]
      126 SETTABLEKS                       R8 R7 K30 ["BorderColor3"]
      128 LOADN                            R8 1
      129 SETTABLEKS                       R8 R7 K31 ["BorderSizePixel"]
      131 LOADN                            R8 2
      132 SETTABLEKS                       R8 R7 K18 ["ZIndex"]
      134 MOVE                             R8 R3
      135 CALL                             R5 3 1
      136 GETUPVAL                         R6 2
      137 JUMPIFNOT                        R6 ; [+58]
      138 GETTABLEKS                       R6 R2 K24 ["Variant"]
      140 JUMPIFNOTEQKS                    R6 K25 ["modern"] ; [+55]
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R6 R6 K3 ["createElement"]
      145 GETUPVAL                         R7 1
      146 DUPTABLE                         R8 K39 [{"Size"}]
      147 GETIMPORT                        R9 K7 [UDim2.new]
      149 LOADN                            R10 1
      150 LOADN                            R11 0
      151 LOADN                            R12 0
      152 MOVE                             R13 R1
      153 CALL                             R9 4 1
      154 SETTABLEKS                       R9 R8 K8 ["Size"]
      156 DUPTABLE                         R9 K42 [{"BorderBottom", "Header"}]
      157 GETUPVAL                         R10 0
      158 GETTABLEKS                       R10 R10 K3 ["createElement"]
      160 GETUPVAL                         R11 1
      161 NEWTABLE                         R12 4 0
      163 GETIMPORT                        R13 K7 [UDim2.new]
      165 LOADN                            R14 1
      166 LOADN                            R15 0
      167 LOADN                            R16 0
      168 LOADN                            R17 2
      169 CALL                             R13 4 1
      170 SETTABLEKS                       R13 R12 K8 ["Size"]
      172 GETIMPORT                        R13 K7 [UDim2.new]
      174 LOADN                            R14 0
      175 LOADN                            R15 0
      176 LOADN                            R16 0
      177 SUBK                             R17 R1 K43 [2]
      178 CALL                             R13 4 1
      179 SETTABLEKS                       R13 R12 K44 ["Position"]
      181 LOADN                            R13 3
      182 SETTABLEKS                       R13 R12 K18 ["ZIndex"]
      184 GETUPVAL                         R13 5
      185 GETTABLEKS                       R13 R13 K19 ["Tag"]
      187 LOADK                            R14 K45 ["Component-TableHeaderBorder"]
      188 SETTABLE                         R14 R12 R13
      189 CALL                             R10 2 1
      190 SETTABLEKS                       R10 R9 K40 ["BorderBottom"]
      192 SETTABLEKS                       R5 R9 K41 ["Header"]
      194 CALL                             R6 3 -1
      195 RETURN                           R6 -1
      196 RETURN                           R5 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnColumnSizesChange"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R3 R1 K2 ["UseScale"]
        7 NOT                              R2 R3
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R1 K3 ["ClampSize"]
       11 NOT                              R2 R3
       12 RETURN                           R2 1

PROTO_30:
        0 GETTABLEKS                       R3 R1 K0 ["Width"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["Width"]
        5 GETTABLEKS                       R2 R2 K1 ["Offset"]
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 ADD                              R3 R0 R2
       10 RETURN                           R3 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["Columns"]
        5 DUPCLOSURE                       R4 K2 [PROTO_30]
        6 LOADN                            R5 0
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 NAMECALL                         R3 R0 K2 ["getWidth"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R1 K3 ["RowHeight"]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 GETUPVAL                         R6 2
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R6 R2 K3 ["RowHeight"]
       16 CALL                             R4 2 1
       17 DUPTABLE                         R5 K11 [{"CanvasSize", "GetRowProps", "OnScrollUpdate", "Rows", "RowHeight", "RowComponent", "OnLoadRange", "VerticalScrollBarInset"}]
       18 GETIMPORT                        R6 K14 [UDim2.fromOffset]
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R10 R1 K7 ["Rows"]
       23 LENGTH                           R9 R10
       24 MUL                              R8 R4 R9
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K4 ["CanvasSize"]
       28 GETTABLEKS                       R6 R0 K15 ["_getRowProps"]
       30 SETTABLEKS                       R6 R5 K5 ["GetRowProps"]
       32 GETTABLEKS                       R6 R0 K16 ["onScrollUpdate"]
       34 SETTABLEKS                       R6 R5 K6 ["OnScrollUpdate"]
       36 GETTABLEKS                       R6 R0 K0 ["props"]
       38 GETTABLEKS                       R6 R6 K7 ["Rows"]
       40 SETTABLEKS                       R6 R5 K7 ["Rows"]
       42 SETTABLEKS                       R4 R5 K3 ["RowHeight"]
       44 GETTABLEKS                       R6 R1 K8 ["RowComponent"]
       46 JUMPIF                           R6 ; [+1]
       47 GETUPVAL                         R6 3
       48 SETTABLEKS                       R6 R5 K8 ["RowComponent"]
       50 GETTABLEKS                       R6 R1 K9 ["OnLoadRange"]
       52 SETTABLEKS                       R6 R5 K9 ["OnLoadRange"]
       54 GETTABLEKS                       R6 R1 K10 ["VerticalScrollBarInset"]
       56 SETTABLEKS                       R6 R5 K10 ["VerticalScrollBarInset"]
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R6 R6 K17 ["createElement"]
       61 GETUPVAL                         R7 5
       62 GETUPVAL                         R8 6
       63 MOVE                             R9 R5
       64 GETTABLEKS                       R10 R1 K18 ["ScrollProps"]
       66 CALL                             R8 2 -1
       67 CALL                             R6 -1 -1
       68 RETURN                           R6 -1

PROTO_33:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["GetRowHeight"]
        5 JUMPIFNOT                        R4 ; [+18]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["GetRowHeight"]
        9 MOVE                             R5 R0
       10 GETUPVAL                         R6 1
       11 CALL                             R4 2 1
       12 MOVE                             R2 R4
       13 GETIMPORT                        R4 K3 [UDim2.new]
       15 LOADN                            R5 1
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 MOVE                             R8 R2
       19 CALL                             R4 4 1
       20 MOVE                             R3 R4
       21 GETUPVAL                         R5 2
       22 ADD                              R4 R5 R2
       23 SETUPVAL                         R4 2
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K4 ["createElement"]
       27 GETUPVAL                         R5 4
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K0 ["GetRowHeight"]
       31 JUMPIFNOT                        R7 ; [+16]
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K5 ["_getRowProps"]
       35 MOVE                             R7 R0
       36 MOVE                             R8 R1
       37 GETIMPORT                        R9 K3 [UDim2.new]
       39 LOADN                            R10 0
       40 LOADN                            R11 0
       41 LOADN                            R12 0
       42 GETUPVAL                         R14 2
       43 SUB                              R13 R14 R2
       44 CALL                             R9 4 1
       45 MOVE                             R10 R3
       46 CALL                             R6 4 1
       47 JUMP                             ; [+16]
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R6 R6 K5 ["_getRowProps"]
       51 MOVE                             R7 R0
       52 MOVE                             R8 R1
       53 GETIMPORT                        R9 K3 [UDim2.new]
       55 LOADN                            R10 0
       56 LOADN                            R11 0
       57 LOADN                            R12 0
       58 SUBK                             R14 R1 K6 [1]
       59 GETUPVAL                         R15 1
       60 MUL                              R13 R14 R15
       61 CALL                             R9 4 1
       62 GETUPVAL                         R10 6
       63 CALL                             R6 4 1
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["RowComponent"]
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R1 K3 ["RowHeight"]
       11 GETUPVAL                         R7 2
       12 JUMPIFNOT                        R7 ; [+2]
       13 GETUPVAL                         R6 3
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R6 R2 K3 ["RowHeight"]
       17 CALL                             R4 2 1
       18 GETIMPORT                        R5 K6 [UDim2.new]
       20 LOADN                            R6 1
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 MOVE                             R9 R4
       24 CALL                             R5 4 1
       25 LOADNIL                          R6
       26 LOADN                            R7 0
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R9 R1 K7 ["Rows"]
       30 NEWCLOSURE                       R10 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          REF R7
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 CALL                             R8 2 1
       39 MOVE                             R6 R8
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K8 ["createFragment"]
       43 MOVE                             R9 R6
       44 CALL                             R8 1 -1
       45 CLOSEUPVALS                      R7
       46 RETURN                           R8 -1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETTABLEKS                       R3 R1 K3 ["ShowFooter"]
       14 GETTABLEKS                       R4 R1 K4 ["ShowHeader"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R4 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+7]
       21 GETTABLEKS                       R5 R1 K5 ["Footer"]
       23 JUMPIFNOTEQKNIL                  R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 GETTABLEKS                       R6 R1 K6 ["ColumnHeaderHeight"]
       29 JUMPIFNOT                        R6 ; [+3]
       30 GETTABLEKS                       R5 R1 K6 ["ColumnHeaderHeight"]
       32 JUMP                             ; [+9]
       33 JUMPIFNOT                        R4 ; [+7]
       34 GETUPVAL                         R6 0
       35 JUMPIFNOT                        R6 ; [+2]
       36 GETUPVAL                         R5 1
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R5 R2 K7 ["HeaderHeight"]
       40 JUMPIF                           R5 ; [+1]
       41 LOADN                            R5 0
       42 JUMPIFNOT                        R3 ; [+7]
       43 GETUPVAL                         R7 0
       44 JUMPIFNOT                        R7 ; [+2]
       45 GETUPVAL                         R6 2
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R6 R2 K8 ["FooterHeight"]
       49 JUMPIF                           R6 ; [+1]
       50 LOADN                            R6 0
       51 NAMECALL                         R7 R0 K9 ["useVariableWidth"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R9 R1 K10 ["Scroll"]
       56 OR                               R8 R9 R7
       57 JUMPIFNOT                        R8 ; [+4]
       58 NAMECALL                         R9 R0 K11 ["renderScroll"]
       60 CALL                             R9 1 1
       61 JUMP                             ; [+3]
       62 NAMECALL                         R9 R0 K12 ["renderRows"]
       64 CALL                             R9 1 1
       65 JUMPIFNOT                        R4 ; [+5]
       66 MOVE                             R12 R5
       67 NAMECALL                         R10 R0 K13 ["renderHeader"]
       69 CALL                             R10 2 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 GETTABLEKS                       R11 R1 K14 ["AutomaticSize"]
       74 LOADN                            R12 1
       75 LOADN                            R13 1
       76 JUMPIFNOT                        R11 ; [+18]
       77 GETIMPORT                        R14 K17 [Enum.AutomaticSize.X]
       79 JUMPIFEQ                         R11 R14 ; [+5]
       81 GETIMPORT                        R14 K19 [Enum.AutomaticSize.XY]
       83 JUMPIFNOTEQ                      R11 R14 ; [+2]
       85 LOADN                            R12 0
       86 GETIMPORT                        R14 K21 [Enum.AutomaticSize.Y]
       88 JUMPIFEQ                         R11 R14 ; [+5]
       90 GETIMPORT                        R14 K19 [Enum.AutomaticSize.XY]
       92 JUMPIFNOTEQ                      R11 R14 ; [+2]
       94 LOADN                            R13 0
       95 JUMPIFNOT                        R11 ; [+6]
       96 GETIMPORT                        R14 K24 [UDim2.fromScale]
       98 MOVE                             R15 R12
       99 MOVE                             R16 R13
      100 CALL                             R14 2 1
      101 JUMP                             ; [+8]
      102 GETIMPORT                        R14 K26 [UDim2.new]
      104 LOADN                            R15 1
      105 LOADN                            R16 0
      106 LOADN                            R17 1
      107 ADD                              R19 R5 R6
      108 MINUS                            R18 R19
      109 CALL                             R14 4 1
      110 GETUPVAL                         R15 3
      111 GETTABLEKS                       R15 R15 K27 ["createElement"]
      113 GETUPVAL                         R16 4
      114 NEWTABLE                         R17 8 0
      116 LOADB                            R18 1
      117 SETTABLEKS                       R18 R17 K28 ["ClipsDescendants"]
      119 GETIMPORT                        R18 K31 [Enum.HorizontalAlignment.Left]
      121 SETTABLEKS                       R18 R17 K29 ["HorizontalAlignment"]
      123 LOADN                            R18 2
      124 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      126 GETTABLEKS                       R18 R2 K33 ["ListPadding"]
      128 SETTABLEKS                       R18 R17 K34 ["Padding"]
      130 SETTABLEKS                       R14 R17 K35 ["Size"]
      132 GETTABLEKS                       R18 R1 K14 ["AutomaticSize"]
      134 SETTABLEKS                       R18 R17 K14 ["AutomaticSize"]
      136 GETIMPORT                        R18 K38 [Enum.VerticalAlignment.Top]
      138 SETTABLEKS                       R18 R17 K36 ["VerticalAlignment"]
      140 GETUPVAL                         R18 3
      141 GETTABLEKS                       R18 R18 K39 ["Event"]
      143 GETTABLEKS                       R18 R18 K40 ["MouseLeave"]
      145 GETTABLEKS                       R19 R1 K41 ["OnMouseLeave"]
      147 SETTABLE                         R19 R17 R18
      148 DUPTABLE                         R18 K43 [{"Child"}]
      149 SETTABLEKS                       R9 R18 K42 ["Child"]
      151 CALL                             R15 3 1
      152 NEWTABLE                         R16 16 0
      154 GETTABLEKS                       R17 R1 K44 ["AnchorPoint"]
      156 SETTABLEKS                       R17 R16 K44 ["AnchorPoint"]
      158 GETTABLEKS                       R17 R1 K35 ["Size"]
      160 SETTABLEKS                       R17 R16 K35 ["Size"]
      162 GETTABLEKS                       R17 R1 K14 ["AutomaticSize"]
      164 SETTABLEKS                       R17 R16 K14 ["AutomaticSize"]
      166 GETTABLEKS                       R17 R1 K32 ["LayoutOrder"]
      168 SETTABLEKS                       R17 R16 K32 ["LayoutOrder"]
      170 GETTABLEKS                       R17 R1 K45 ["Position"]
      172 SETTABLEKS                       R17 R16 K45 ["Position"]
      174 GETIMPORT                        R17 K48 [Enum.FillDirection.Vertical]
      176 SETTABLEKS                       R17 R16 K49 ["Layout"]
      178 GETUPVAL                         R18 0
      179 JUMPIFNOT                        R18 ; [+2]
      180 LOADNIL                          R17
      181 JUMP                             ; [+1]
      182 LOADK                            R17 K50 ["BorderBox"]
      183 SETTABLEKS                       R17 R16 K1 ["Style"]
      185 GETTABLEKS                       R18 R1 K34 ["Padding"]
      187 JUMPIFNOT                        R18 ; [+3]
      188 GETTABLEKS                       R17 R1 K34 ["Padding"]
      190 JUMP                             ; [+5]
      191 GETUPVAL                         R18 0
      192 JUMPIFNOT                        R18 ; [+2]
      193 LOADNIL                          R17
      194 JUMP                             ; [+1]
      195 LOADN                            R17 1
      196 SETTABLEKS                       R17 R16 K34 ["Padding"]
      198 GETUPVAL                         R17 3
      199 GETTABLEKS                       R17 R17 K51 ["Change"]
      201 GETTABLEKS                       R17 R17 K52 ["AbsoluteSize"]
      203 GETTABLEKS                       R19 R1 K53 ["OnSizeChange"]
      205 JUMPIFNOT                        R19 ; [+3]
      206 GETTABLEKS                       R18 R0 K54 ["onSizeChange"]
      208 JUMPIF                           R18 ; [+1]
      209 LOADNIL                          R18
      210 SETTABLE                         R18 R16 R17
      211 GETUPVAL                         R17 3
      212 GETTABLEKS                       R17 R17 K55 ["Ref"]
      214 GETUPVAL                         R19 5
      215 JUMPIFNOT                        R19 ; [+3]
      216 GETTABLEKS                       R18 R1 K56 ["ForwardRef"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R18
      220 SETTABLE                         R18 R16 R17
      221 GETUPVAL                         R17 0
      222 JUMPIFNOT                        R17 ; [+12]
      223 GETUPVAL                         R17 6
      224 GETTABLEKS                       R17 R17 K57 ["Tag"]
      226 GETUPVAL                         R18 7
      227 LOADK                            R19 K58 ["Component-Table"]
      228 GETUPVAL                         R22 6
      229 GETTABLEKS                       R22 R22 K57 ["Tag"]
      231 GETTABLE                         R21 R1 R22
      232 ORK                              R20 R21 K59 ["Input X-Corner X-Stroke"]
      233 CALL                             R18 2 1
      234 SETTABLE                         R18 R16 R17
      235 GETUPVAL                         R17 3
      236 GETTABLEKS                       R17 R17 K27 ["createElement"]
      238 GETUPVAL                         R18 4
      239 MOVE                             R19 R16
      240 DUPTABLE                         R20 K62 [{"Header", "List", "Footer"}]
      241 SETTABLEKS                       R10 R20 K60 ["Header"]
      243 SETTABLEKS                       R15 R20 K61 ["List"]
      245 MOVE                             R21 R3
      246 JUMPIFNOT                        R21 ; [+55]
      247 GETUPVAL                         R21 3
      248 GETTABLEKS                       R21 R21 K27 ["createElement"]
      250 GETUPVAL                         R22 4
      251 GETUPVAL                         R24 0
      252 JUMPIFNOT                        R24 ; [+20]
      253 NEWTABLE                         R23 4 0
      255 LOADN                            R24 3
      256 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      258 GETIMPORT                        R24 K26 [UDim2.new]
      260 LOADN                            R25 1
      261 LOADN                            R26 0
      262 LOADN                            R27 0
      263 MOVE                             R28 R6
      264 CALL                             R24 4 1
      265 SETTABLEKS                       R24 R23 K35 ["Size"]
      267 GETUPVAL                         R24 6
      268 GETTABLEKS                       R24 R24 K57 ["Tag"]
      270 LOADK                            R25 K63 ["Main X-Border"]
      271 SETTABLE                         R25 R23 R24
      272 JUMP                             ; [+23]
      273 DUPTABLE                         R23 K66 [{"LayoutOrder", "Style", "BorderColor3", "BorderSizePixel", "Size"}]
      274 LOADN                            R24 3
      275 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      277 LOADK                            R24 K67 ["SubtleBox"]
      278 SETTABLEKS                       R24 R23 K1 ["Style"]
      280 GETTABLEKS                       R24 R2 K68 ["Border"]
      282 SETTABLEKS                       R24 R23 K64 ["BorderColor3"]
      284 LOADN                            R24 1
      285 SETTABLEKS                       R24 R23 K65 ["BorderSizePixel"]
      287 GETIMPORT                        R24 K26 [UDim2.new]
      289 LOADN                            R25 1
      290 LOADN                            R26 0
      291 LOADN                            R27 0
      292 MOVE                             R28 R6
      293 CALL                             R24 4 1
      294 SETTABLEKS                       R24 R23 K35 ["Size"]
      296 DUPTABLE                         R24 K70 [{"Content"}]
      297 GETTABLEKS                       R25 R1 K5 ["Footer"]
      299 SETTABLEKS                       R25 R24 K69 ["Content"]
      301 CALL                             R21 3 1
      302 SETTABLEKS                       R21 R20 K5 ["Footer"]
      304 CALL                             R17 3 -1
      305 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["deepEqual"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Util"]
       27 GETTABLEKS                       R4 R4 K10 ["prioritize"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Util"]
       34 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K6 [require]
       39 GETTABLEKS                       R6 R0 K2 ["UI"]
       41 GETTABLEKS                       R6 R6 K12 ["ContextServices"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K13 ["withContext"]
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Wrappers"]
       50 GETTABLEKS                       R8 R8 K15 ["withForwardRef"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R9 R0 K4 ["Parent"]
       55 LOADK                            R11 K16 ["React"]
       56 NAMECALL                         R9 R9 K17 ["FindFirstChild"]
       58 CALL                             R9 2 1
       59 JUMPIFNOT                        R9 ; [+8]
       60 GETIMPORT                        R8 K6 [require]
       62 GETTABLEKS                       R9 R0 K4 ["Parent"]
       64 GETTABLEKS                       R9 R9 K16 ["React"]
       66 CALL                             R8 1 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R8
       69 GETIMPORT                        R9 K6 [require]
       71 GETTABLEKS                       R10 R0 K18 ["Styling"]
       73 GETTABLEKS                       R10 R10 K19 ["supportsStyleSheets"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K6 [require]
       78 GETTABLEKS                       R11 R0 K18 ["Styling"]
       80 GETTABLEKS                       R11 R11 K20 ["joinTags"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K6 [require]
       85 GETIMPORT                        R12 K1 [script]
       87 GETTABLEKS                       R12 R12 K21 ["styles"]
       89 CALL                             R11 1 1
       90 LOADK                            R14 K22 ["RowHeight"]
       91 NAMECALL                         R12 R11 K23 ["GetAttribute"]
       93 CALL                             R12 2 1
       94 LOADK                            R15 K24 ["FooterHeight"]
       95 NAMECALL                         R13 R11 K23 ["GetAttribute"]
       97 CALL                             R13 2 1
       98 LOADK                            R16 K25 ["HeaderHeight"]
       99 NAMECALL                         R14 R11 K23 ["GetAttribute"]
      101 CALL                             R14 2 1
      102 LOADK                            R17 K26 ["ScrollHeaderPadding"]
      103 NAMECALL                         R15 R11 K23 ["GetAttribute"]
      105 CALL                             R15 2 1
      106 GETIMPORT                        R16 K6 [require]
      108 GETTABLEKS                       R17 R0 K4 ["Parent"]
      110 GETTABLEKS                       R17 R17 K27 ["Dash"]
      112 CALL                             R16 1 1
      113 GETTABLEKS                       R17 R16 K28 ["map"]
      115 GETTABLEKS                       R18 R16 K29 ["reduce"]
      117 GETTABLEKS                       R19 R16 K30 ["some"]
      119 GETTABLEKS                       R20 R16 K31 ["join"]
      121 GETIMPORT                        R21 K6 [require]
      123 GETTABLEKS                       R22 R0 K2 ["UI"]
      125 GETTABLEKS                       R22 R22 K32 ["Components"]
      127 GETTABLEKS                       R22 R22 K33 ["Pane"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K6 [require]
      132 GETTABLEKS                       R23 R0 K2 ["UI"]
      134 GETTABLEKS                       R23 R23 K32 ["Components"]
      136 GETTABLEKS                       R23 R23 K34 ["List"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K6 [require]
      141 GETTABLEKS                       R24 R0 K2 ["UI"]
      143 GETTABLEKS                       R24 R24 K32 ["Components"]
      145 GETTABLEKS                       R24 R24 K35 ["SplitPane"]
      147 CALL                             R23 1 1
      148 GETIMPORT                        R24 K6 [require]
      150 GETTABLEKS                       R25 R0 K2 ["UI"]
      152 GETTABLEKS                       R25 R25 K32 ["Components"]
      154 GETTABLEKS                       R25 R25 K36 ["TableRow"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K6 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R26 R26 K37 ["TableHeaderCell"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K39 [game]
      166 LOADK                            R28 K40 ["DevFrameworkScrollBarInset"]
      167 LOADB                            R29 0
      168 NAMECALL                         R26 R26 K41 ["DefineFastFlag"]
      170 CALL                             R26 3 1
      171 GETIMPORT                        R27 K6 [require]
      173 GETTABLEKS                       R28 R0 K42 ["SharedFlags"]
      175 GETTABLEKS                       R28 R28 K43 ["getFFlagDevFrameworkFixTableMissingKeyErrors"]
      177 CALL                             R27 1 1
      178 CALL                             R27 0 1
      179 GETIMPORT                        R28 K6 [require]
      181 GETTABLEKS                       R29 R0 K42 ["SharedFlags"]
      183 GETTABLEKS                       R29 R29 K44 ["getFFlagLuaStartPageTableContextMenu"]
      185 CALL                             R28 1 1
      186 CALL                             R28 0 1
      187 GETIMPORT                        R29 K6 [require]
      189 GETTABLEKS                       R30 R0 K8 ["Util"]
      191 GETTABLEKS                       R30 R30 K45 ["isRoact17"]
      193 CALL                             R29 1 1
      194 MOVE                             R30 R1
      195 CALL                             R29 1 1
      196 GETTABLEKS                       R30 R1 K46 ["PureComponent"]
      198 LOADK                            R32 K47 ["Table"]
      199 NAMECALL                         R30 R30 K48 ["extend"]
      201 CALL                             R30 2 1
      202 GETTABLEKS                       R31 R4 K49 ["wrap"]
      204 MOVE                             R32 R30
      205 GETIMPORT                        R33 K1 [script]
      207 CALL                             R31 2 0
      208 GETIMPORT                        R31 K52 [UDim.new]
      210 LOADN                            R32 0
      211 LOADN                            R33 50
      212 CALL                             R31 2 1
      213 DUPCLOSURE                       R32 K53 [PROTO_13]
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R31
      220 SETTABLEKS                       R32 R30 K54 ["init"]
      222 DUPCLOSURE                       R32 K55 [PROTO_15]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R27
      228 CAPTURE                          VAL R29
      229 SETTABLEKS                       R32 R30 K56 ["_flushRenderRow"]
      231 DUPCLOSURE                       R32 K57 [PROTO_17]
      232 CAPTURE                          VAL R19
      233 SETTABLEKS                       R32 R30 K58 ["willUpdate"]
      235 DUPCLOSURE                       R32 K59 [PROTO_23]
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R31
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R25
      242 SETTABLEKS                       R32 R30 K60 ["renderResizableHeadings"]
      244 DUPCLOSURE                       R32 K61 [PROTO_26]
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R1
      248 CAPTURE                          VAL R29
      249 SETTABLEKS                       R32 R30 K62 ["renderFixedHeadings"]
      251 DUPCLOSURE                       R32 K63 [PROTO_27]
      252 SETTABLEKS                       R32 R30 K64 ["renderHeadings"]
      254 DUPCLOSURE                       R32 K65 [PROTO_28]
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R8
      261 CAPTURE                          VAL R10
      262 SETTABLEKS                       R32 R30 K66 ["renderHeader"]
      264 DUPCLOSURE                       R32 K67 [PROTO_29]
      265 SETTABLEKS                       R32 R30 K68 ["useVariableWidth"]
      267 DUPCLOSURE                       R32 K69 [PROTO_31]
      268 CAPTURE                          VAL R18
      269 SETTABLEKS                       R32 R30 K70 ["getWidth"]
      271 DUPCLOSURE                       R32 K71 [PROTO_32]
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R9
      274 CAPTURE                          VAL R12
      275 CAPTURE                          VAL R24
      276 CAPTURE                          VAL R1
      277 CAPTURE                          VAL R22
      278 CAPTURE                          VAL R20
      279 SETTABLEKS                       R32 R30 K72 ["renderScroll"]
      281 DUPCLOSURE                       R32 K73 [PROTO_34]
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R3
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R12
      286 CAPTURE                          VAL R17
      287 CAPTURE                          VAL R1
      288 SETTABLEKS                       R32 R30 K74 ["renderRows"]
      290 DUPCLOSURE                       R32 K75 [PROTO_35]
      291 CAPTURE                          VAL R9
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R13
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R21
      296 CAPTURE                          VAL R28
      297 CAPTURE                          VAL R8
      298 CAPTURE                          VAL R10
      299 SETTABLEKS                       R32 R30 K76 ["render"]
      301 JUMPIF                           R9 ; [+10]
      302 MOVE                             R32 R6
      303 DUPTABLE                         R33 K78 [{"Stylizer"}]
      304 GETTABLEKS                       R34 R5 K77 ["Stylizer"]
      306 SETTABLEKS                       R34 R33 K77 ["Stylizer"]
      308 CALL                             R32 1 1
      309 MOVE                             R33 R30
      310 CALL                             R32 1 1
      311 MOVE                             R30 R32
      312 JUMPIFNOT                        R28 ; [+4]
      313 MOVE                             R32 R7
      314 MOVE                             R33 R30
      315 CALL                             R32 1 1
      316 MOVE                             R30 R32
      317 RETURN                           R30 1
