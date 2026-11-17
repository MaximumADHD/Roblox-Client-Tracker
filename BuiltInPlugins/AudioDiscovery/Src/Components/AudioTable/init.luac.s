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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnRightClickRow"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnRightClickRow"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
        3 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        5 GETTABLEKS                       R4 R1 K2 ["Footer"]
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEKS                       R3 R2 K3 ["FooterHeight"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADN                            R3 0
       12 GETTABLEKS                       R6 R0 K5 ["AbsoluteSize"]
       14 GETTABLEKS                       R6 R6 K6 ["Y"]
       16 GETTABLEKS                       R8 R2 K7 ["HeaderHeight"]
       18 ADD                              R7 R8 R3
       19 SUB                              R5 R6 R7
       20 SUBK                             R4 R5 K4 [5]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["props"]
       24 GETTABLEKS                       R5 R5 K8 ["OnSizeChange"]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Rows"]
        4 NAMECALL                         R1 R0 K2 ["calculateRowIndices"]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["onHoverRow"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onHoverRowEnd"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onSelectRow"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K6 ["onDoubleClick"]
       23 NEWCLOSURE                       R1 P4
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K7 ["onRightClickRow"]
       27 NAMECALL                         R1 R0 K8 ["_flushRenderRow"]
       29 CALL                             R1 1 0
       30 NEWCLOSURE                       R1 P5
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K9 ["getDefaultRowKey"]
       34 NEWCLOSURE                       R1 P6
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K10 ["onSizeChange"]
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["rowToIndex"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["props"]
       10 GETTABLEKS                       R3 R3 K2 ["RowComponent"]
       12 JUMPIF                           R3 ; [+1]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["createElement"]
       17 MOVE                             R5 R3
       18 DUPTABLE                         R6 K16 [{"CellProps", "CellComponent", "Columns", "Rows", "Row", "RowIndex", "Selected", "OnHover", "OnHoverEnd", "OnPress", "OnDoubleClick", "OnRightClick"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K1 ["props"]
       22 GETTABLEKS                       R7 R7 K4 ["CellProps"]
       24 SETTABLEKS                       R7 R6 K4 ["CellProps"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K1 ["props"]
       29 GETTABLEKS                       R7 R7 K5 ["CellComponent"]
       31 SETTABLEKS                       R7 R6 K5 ["CellComponent"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K1 ["props"]
       36 GETTABLEKS                       R7 R7 K6 ["Columns"]
       38 SETTABLEKS                       R7 R6 K6 ["Columns"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K1 ["props"]
       43 GETTABLEKS                       R7 R7 K7 ["Rows"]
       45 SETTABLEKS                       R7 R6 K7 ["Rows"]
       47 SETTABLEKS                       R0 R6 K8 ["Row"]
       49 SETTABLEKS                       R1 R6 K9 ["RowIndex"]
       51 GETTABLEKS                       R8 R2 K17 ["SelectedRow"]
       53 JUMPIFEQ                         R1 R8 ; [+2]
       55 LOADB                            R7 0 +1
       56 LOADB                            R7 1
       57 SETTABLEKS                       R7 R6 K10 ["Selected"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K1 ["props"]
       62 GETTABLEKS                       R7 R7 K18 ["OnHoverRow"]
       64 JUMPIFNOT                        R7 ; [+3]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K19 ["onHoverRow"]
       68 SETTABLEKS                       R7 R6 K11 ["OnHover"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K1 ["props"]
       73 GETTABLEKS                       R7 R7 K20 ["OnHoverRowEnd"]
       75 JUMPIFNOT                        R7 ; [+3]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K21 ["onHoverRowEnd"]
       79 SETTABLEKS                       R7 R6 K12 ["OnHoverEnd"]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K1 ["props"]
       84 GETTABLEKS                       R7 R7 K22 ["OnSelectRow"]
       86 JUMPIFNOT                        R7 ; [+3]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K23 ["onSelectRow"]
       90 SETTABLEKS                       R7 R6 K13 ["OnPress"]
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K1 ["props"]
       95 GETTABLEKS                       R7 R7 K14 ["OnDoubleClick"]
       97 JUMPIFNOT                        R7 ; [+3]
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R7 R7 K24 ["onDoubleClick"]
      101 SETTABLEKS                       R7 R6 K14 ["OnDoubleClick"]
      103 GETUPVAL                         R7 0
      104 GETTABLEKS                       R7 R7 K25 ["onRightClickRow"]
      106 SETTABLEKS                       R7 R6 K15 ["OnRightClick"]
      108 CALL                             R4 2 -1
      109 RETURN                           R4 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["onRenderRow"]
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Columns"]
        3 GETTABLE                         R2 R3 R1
        4 GETTABLEKS                       R4 R2 K1 ["Width"]
        6 GETTABLEKS                       R5 R0 K1 ["Width"]
        8 JUMPIFNOTEQ                      R4 R5 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Rows"]
        4 GETTABLEKS                       R4 R1 K1 ["Rows"]
        6 JUMPIFEQ                         R3 R4 ; [+6]
        8 GETTABLEKS                       R5 R1 K1 ["Rows"]
       10 NAMECALL                         R3 R0 K2 ["calculateRowIndices"]
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R3 R2 K3 ["Columns"]
       15 GETTABLEKS                       R4 R1 K3 ["Columns"]
       17 JUMPIFEQ                         R3 R4 ; [+22]
       19 GETTABLEKS                       R5 R2 K3 ["Columns"]
       21 LENGTH                           R4 R5
       22 GETTABLEKS                       R6 R1 K3 ["Columns"]
       24 LENGTH                           R5 R6
       25 JUMPIFNOTEQ                      R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R5 R2 K3 ["Columns"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R1
       34 CALL                             R4 2 1
       35 JUMPIF                           R3 ; [+1]
       36 JUMPIFNOT                        R4 ; [+3]
       37 NAMECALL                         R5 R0 K4 ["_flushRenderRow"]
       39 CALL                             R5 1 0
       40 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R2 R1
        1 MOVE                             R3 R0
        2 RETURN                           R2 2

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPCLOSURE                       R4 K0 [PROTO_12]
        3 CALL                             R2 2 1
        4 SETTABLEKS                       R2 R0 K1 ["rowToIndex"]
        6 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Width"]
        2 JUMPIF                           R1 ; [+9]
        3 GETIMPORT                        R1 K3 [UDim.new]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K5 ["Columns"]
        8 LENGTH                           R3 R4
        9 DIVRK                            R2 K4 [1] R3
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["MinWidth"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.SortDirection.Descending]
        3 JUMPIFNOTEQ                      R1 R2 ; [+4]
        5 GETIMPORT                        R0 K5 [Enum.SortDirection.Ascending]
        7 JUMP                             ; [+2]
        8 GETIMPORT                        R0 K3 [Enum.SortDirection.Descending]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K6 ["props"]
       13 GETTABLEKS                       R1 R1 K7 ["OnSortChange"]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SortIndex"]
        3 JUMPIFNOTEQ                      R3 R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["SortOrder"]
        8 JUMPIF                           R2 ; [+1]
        9 LOADNIL                          R2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["createElement"]
       13 GETUPVAL                         R4 2
       14 DUPTABLE                         R5 K9 [{"Name", "Order", "Width", "ColumnIndex", "Style", "OnPress"}]
       15 GETTABLEKS                       R6 R0 K3 ["Name"]
       17 SETTABLEKS                       R6 R5 K3 ["Name"]
       19 SETTABLEKS                       R2 R5 K4 ["Order"]
       21 GETIMPORT                        R6 K12 [UDim.new]
       23 LOADN                            R7 1
       24 LOADN                            R8 0
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K5 ["Width"]
       28 SETTABLEKS                       R1 R5 K6 ["ColumnIndex"]
       30 GETUPVAL                         R6 3
       31 SETTABLEKS                       R6 R5 K7 ["Style"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K13 ["props"]
       36 GETTABLEKS                       R7 R7 K14 ["OnSortChange"]
       38 JUMPIFNOT                        R7 ; [+5]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R1
       43 JUMPIF                           R6 ; [+1]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K8 ["OnPress"]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["Columns"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R1 K2 ["Columns"]
       13 DUPCLOSURE                       R6 K3 [PROTO_15]
       14 CAPTURE                          UPVAL U1
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["createElement"]
       19 GETUPVAL                         R6 3
       20 DUPTABLE                         R7 K10 [{"UseScale", "ClampSize", "Sizes", "MinSizes", "OnSizesChange"}]
       21 GETTABLEKS                       R8 R1 K5 ["UseScale"]
       23 SETTABLEKS                       R8 R7 K5 ["UseScale"]
       25 GETTABLEKS                       R8 R1 K6 ["ClampSize"]
       27 SETTABLEKS                       R8 R7 K6 ["ClampSize"]
       29 SETTABLEKS                       R3 R7 K7 ["Sizes"]
       31 SETTABLEKS                       R4 R7 K8 ["MinSizes"]
       33 GETTABLEKS                       R8 R1 K11 ["OnColumnSizesChange"]
       35 SETTABLEKS                       R8 R7 K9 ["OnSizesChange"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R9 R1 K2 ["Columns"]
       40 NEWCLOSURE                       R10 P2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CALL                             R8 2 -1
       47 CALL                             R5 -1 -1
       48 RETURN                           R5 -1

PROTO_19:
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

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["Width"]
        2 JUMPIF                           R2 ; [+9]
        3 GETIMPORT                        R2 K3 [UDim.new]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K5 ["Columns"]
        8 LENGTH                           R4 R5
        9 DIVRK                            R3 K4 [1] R4
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K6 ["SortIndex"]
       15 JUMPIFNOTEQ                      R4 R1 ; [+5]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K7 ["SortOrder"]
       20 JUMPIF                           R3 ; [+1]
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K8 ["createElement"]
       25 GETUPVAL                         R5 2
       26 DUPTABLE                         R6 K14 [{"Name", "Order", "Width", "ColumnIndex", "Style", "OnPress"}]
       27 GETTABLEKS                       R7 R0 K9 ["Name"]
       29 SETTABLEKS                       R7 R6 K9 ["Name"]
       31 SETTABLEKS                       R3 R6 K10 ["Order"]
       33 SETTABLEKS                       R2 R6 K0 ["Width"]
       35 SETTABLEKS                       R1 R6 K11 ["ColumnIndex"]
       37 GETUPVAL                         R7 3
       38 SETTABLEKS                       R7 R6 K12 ["Style"]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K15 ["props"]
       43 GETTABLEKS                       R8 R8 K16 ["OnSortChange"]
       45 JUMPIFNOT                        R8 ; [+5]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R1
       50 JUMPIF                           R7 ; [+1]
       51 LOADNIL                          R7
       52 SETTABLEKS                       R7 R6 K13 ["OnPress"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["Columns"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnColumnSizesChange"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 NAMECALL                         R2 R0 K2 ["renderResizableHeadings"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1
        9 NAMECALL                         R2 R0 K3 ["renderFixedHeadings"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"AutomaticCanvasSize", "CanvasSize"}]
        5 GETIMPORT                        R4 K7 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticCanvasSize"]
        9 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K2 ["CanvasSize"]
       16 DUPTABLE                         R4 K12 [{"Group"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K16 [{"AutomaticSize", "Size", "Layout", "HorizontalAlignment"}]
       22 GETIMPORT                        R8 K7 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R8 R7 K5 ["AutomaticSize"]
       26 GETIMPORT                        R8 K18 [UDim2.fromScale]
       28 LOADN                            R9 1
       29 LOADN                            R10 0
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K13 ["Size"]
       33 GETIMPORT                        R8 K21 [Enum.FillDirection.Vertical]
       35 SETTABLEKS                       R8 R7 K14 ["Layout"]
       37 GETIMPORT                        R8 K23 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R8 R7 K15 ["HorizontalAlignment"]
       41 DUPTABLE                         R8 K25 [{"Children"}]
       42 NAMECALL                         R9 R0 K26 ["renderRows"]
       44 CALL                             R9 1 1
       45 SETTABLEKS                       R9 R8 K24 ["Children"]
       47 CALL                             R5 3 1
       48 SETTABLEKS                       R5 R4 K11 ["Group"]
       50 CALL                             R1 3 -1
       51 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"LayoutOrder", "AutomaticSize"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 GETIMPORT                        R5 K6 [Enum.AutomaticSize.XY]
        9 SETTABLEKS                       R5 R4 K2 ["AutomaticSize"]
       11 DUPTABLE                         R5 K8 [{"Row"}]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K9 ["onRenderRow"]
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 SETTABLEKS                       R6 R5 K7 ["Row"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["Rows"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["createFragment"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_26:
        0 GETTABLEKS                       R3 R1 K0 ["Width"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["Width"]
        5 GETTABLEKS                       R2 R2 K1 ["Offset"]
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 ADD                              R3 R0 R2
       10 RETURN                           R3 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 NAMECALL                         R3 R0 K2 ["renderHeadings"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R1 K3 ["ShowFooter"]
        9 GETTABLEKS                       R5 R1 K4 ["ShowHeader"]
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R5 1
       14 JUMPIFNOTEQKNIL                  R4 ; [+7]
       16 GETTABLEKS                       R6 R1 K5 ["Footer"]
       18 JUMPIFNOTEQKNIL                  R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 JUMPIFNOT                        R5 ; [+3]
       23 GETTABLEKS                       R6 R2 K6 ["HeaderHeight"]
       25 JUMPIF                           R6 ; [+1]
       26 LOADN                            R6 0
       27 JUMPIFNOT                        R4 ; [+3]
       28 GETTABLEKS                       R7 R2 K7 ["FooterHeight"]
       30 JUMPIF                           R7 ; [+1]
       31 LOADN                            R7 0
       32 GETTABLEKS                       R9 R1 K8 ["Scroll"]
       34 JUMPIFNOT                        R9 ; [+4]
       35 NAMECALL                         R8 R0 K9 ["renderScroll"]
       37 CALL                             R8 1 1
       38 JUMPIF                           R8 ; [+3]
       39 NAMECALL                         R8 R0 K10 ["renderRows"]
       41 CALL                             R8 1 1
       42 MOVE                             R9 R5
       43 JUMPIFNOT                        R9 ; [+24]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K11 ["createElement"]
       47 GETUPVAL                         R10 1
       48 DUPTABLE                         R11 K20 [{["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Style"] = "SubtleBox", ["BorderColor3"], ["BorderSizePixel"] = 1}]
       49 GETIMPORT                        R12 K24 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R12 R11 K12 ["Layout"]
       53 GETIMPORT                        R12 K27 [UDim2.new]
       55 LOADN                            R13 1
       56 LOADN                            R14 -8
       57 LOADN                            R15 0
       58 MOVE                             R16 R6
       59 CALL                             R12 4 1
       60 SETTABLEKS                       R12 R11 K15 ["Size"]
       62 GETTABLEKS                       R12 R2 K28 ["Border"]
       64 SETTABLEKS                       R12 R11 K18 ["BorderColor3"]
       66 MOVE                             R12 R3
       67 CALL                             R9 3 1
       68 GETTABLEKS                       R10 R1 K29 ["OnColumnSizesChange"]
       70 JUMPIFNOT                        R10 ; [+7]
       71 GETTABLEKS                       R11 R1 K30 ["UseScale"]
       73 NOT                              R10 R11
       74 JUMPIFNOT                        R10 ; [+3]
       75 GETTABLEKS                       R11 R1 K31 ["ClampSize"]
       77 NOT                              R10 R11
       78 LOADN                            R11 0
       79 GETIMPORT                        R12 K27 [UDim2.new]
       81 LOADN                            R13 1
       82 LOADN                            R14 0
       83 LOADN                            R15 1
       84 ADD                              R17 R6 R7
       85 MINUS                            R16 R17
       86 CALL                             R12 4 1
       87 JUMPIFNOT                        R10 ; [+19]
       88 GETUPVAL                         R13 2
       89 GETTABLEKS                       R14 R1 K32 ["Columns"]
       91 DUPCLOSURE                       R15 K33 [PROTO_26]
       92 LOADN                            R16 0
       93 CALL                             R13 3 1
       94 MOVE                             R11 R13
       95 LOADN                            R13 0
       96 JUMPIFNOTLT                      R13 R11 ; [+10]
       98 GETIMPORT                        R13 K27 [UDim2.new]
      100 LOADN                            R14 0
      101 MOVE                             R15 R11
      102 LOADN                            R16 1
      103 ADD                              R18 R6 R7
      104 MINUS                            R17 R18
      105 CALL                             R13 4 1
      106 MOVE                             R12 R13
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R13 R13 K11 ["createElement"]
      110 GETUPVAL                         R14 1
      111 NEWTABLE                         R15 8 0
      113 GETIMPORT                        R16 K36 [Enum.VerticalAlignment.Top]
      115 SETTABLEKS                       R16 R15 K34 ["VerticalAlignment"]
      117 GETIMPORT                        R16 K39 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R16 R15 K37 ["HorizontalAlignment"]
      121 GETIMPORT                        R16 K41 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R16 R15 K12 ["Layout"]
      125 LOADN                            R16 2
      126 SETTABLEKS                       R16 R15 K42 ["Padding"]
      128 LOADN                            R16 2
      129 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      131 SETTABLEKS                       R12 R15 K15 ["Size"]
      133 GETUPVAL                         R16 0
      134 GETTABLEKS                       R16 R16 K43 ["Event"]
      136 GETTABLEKS                       R16 R16 K44 ["MouseLeave"]
      138 GETTABLEKS                       R17 R1 K45 ["OnMouseLeave"]
      140 SETTABLE                         R17 R15 R16
      141 DUPTABLE                         R16 K47 [{"Child"}]
      142 SETTABLEKS                       R8 R16 K46 ["Child"]
      144 CALL                             R13 3 1
      145 LOADNIL                          R14
      146 JUMPIFNOT                        R10 ; [+41]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K11 ["createElement"]
      150 GETUPVAL                         R16 3
      151 DUPTABLE                         R17 K50 [{"CanvasSize", "ScrollingDirection"}]
      152 GETIMPORT                        R18 K52 [UDim2.fromOffset]
      154 MOVE                             R19 R11
      155 LOADN                            R20 0
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K48 ["CanvasSize"]
      159 GETIMPORT                        R18 K54 [Enum.ScrollingDirection.X]
      161 SETTABLEKS                       R18 R17 K49 ["ScrollingDirection"]
      163 DUPTABLE                         R18 K47 [{"Child"}]
      164 GETUPVAL                         R19 0
      165 GETTABLEKS                       R19 R19 K11 ["createElement"]
      167 GETUPVAL                         R20 1
      168 DUPTABLE                         R21 K55 [{"Layout", "HorizontalAlignment"}]
      169 GETIMPORT                        R22 K41 [Enum.FillDirection.Vertical]
      171 SETTABLEKS                       R22 R21 K12 ["Layout"]
      173 GETIMPORT                        R22 K39 [Enum.HorizontalAlignment.Left]
      175 SETTABLEKS                       R22 R21 K37 ["HorizontalAlignment"]
      177 DUPTABLE                         R22 K58 [{"Header", "List"}]
      178 SETTABLEKS                       R9 R22 K56 ["Header"]
      180 SETTABLEKS                       R13 R22 K57 ["List"]
      182 CALL                             R19 3 1
      183 SETTABLEKS                       R19 R18 K46 ["Child"]
      185 CALL                             R15 3 1
      186 MOVE                             R14 R15
      187 JUMP                             ; [+10]
      188 GETUPVAL                         R15 0
      189 GETTABLEKS                       R15 R15 K59 ["createFragment"]
      191 DUPTABLE                         R16 K58 [{"Header", "List"}]
      192 SETTABLEKS                       R9 R16 K56 ["Header"]
      194 SETTABLEKS                       R13 R16 K57 ["List"]
      196 CALL                             R15 1 1
      197 MOVE                             R14 R15
      198 GETUPVAL                         R15 0
      199 GETTABLEKS                       R15 R15 K11 ["createElement"]
      201 GETUPVAL                         R16 1
      202 NEWTABLE                         R17 8 0
      204 GETTABLEKS                       R18 R1 K15 ["Size"]
      206 SETTABLEKS                       R18 R17 K15 ["Size"]
      208 GETIMPORT                        R18 K41 [Enum.FillDirection.Vertical]
      210 SETTABLEKS                       R18 R17 K12 ["Layout"]
      212 GETIMPORT                        R18 K39 [Enum.HorizontalAlignment.Left]
      214 SETTABLEKS                       R18 R17 K37 ["HorizontalAlignment"]
      216 LOADK                            R18 K60 ["BorderBox"]
      217 SETTABLEKS                       R18 R17 K16 ["Style"]
      219 LOADN                            R18 1
      220 SETTABLEKS                       R18 R17 K42 ["Padding"]
      222 GETUPVAL                         R18 0
      223 GETTABLEKS                       R18 R18 K61 ["Change"]
      225 GETTABLEKS                       R18 R18 K62 ["AbsoluteSize"]
      227 GETTABLEKS                       R20 R1 K63 ["OnSizeChange"]
      229 JUMPIFNOT                        R20 ; [+3]
      230 GETTABLEKS                       R19 R0 K64 ["onSizeChange"]
      232 JUMPIF                           R19 ; [+1]
      233 LOADNIL                          R19
      234 SETTABLE                         R19 R17 R18
      235 DUPTABLE                         R18 K65 [{"Top", "Footer"}]
      236 SETTABLEKS                       R14 R18 K35 ["Top"]
      238 MOVE                             R19 R4
      239 JUMPIFNOT                        R19 ; [+24]
      240 GETUPVAL                         R19 0
      241 GETTABLEKS                       R19 R19 K11 ["createElement"]
      243 GETUPVAL                         R20 1
      244 DUPTABLE                         R21 K67 [{["LayoutOrder"] = 3, ["Style"] = "SubtleBox", ["BorderColor3"], ["BorderSizePixel"] = 1, ["Size"]}]
      245 GETTABLEKS                       R22 R2 K28 ["Border"]
      247 SETTABLEKS                       R22 R21 K18 ["BorderColor3"]
      249 GETIMPORT                        R22 K27 [UDim2.new]
      251 LOADN                            R23 1
      252 LOADN                            R24 0
      253 LOADN                            R25 0
      254 MOVE                             R26 R7
      255 CALL                             R22 4 1
      256 SETTABLEKS                       R22 R21 K15 ["Size"]
      258 DUPTABLE                         R22 K69 [{"Content"}]
      259 GETTABLEKS                       R23 R1 K5 ["Footer"]
      261 SETTABLEKS                       R23 R22 K68 ["Content"]
      263 CALL                             R19 3 1
      264 SETTABLEKS                       R19 R18 K5 ["Footer"]
      266 CALL                             R15 3 -1
      267 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["TableRow"]
       31 GETTABLEKS                       R7 R2 K12 ["Dash"]
       33 GETTABLEKS                       R8 R7 K13 ["map"]
       35 GETTABLEKS                       R9 R7 K14 ["collect"]
       37 GETTABLEKS                       R10 R7 K15 ["reduce"]
       39 GETTABLEKS                       R11 R7 K16 ["some"]
       41 GETTABLEKS                       R12 R5 K17 ["Pane"]
       43 GETTABLEKS                       R13 R5 K18 ["ScrollingFrame"]
       45 GETTABLEKS                       R14 R5 K19 ["SplitPane"]
       47 GETIMPORT                        R15 K4 [require]
       49 GETIMPORT                        R16 K1 [script]
       51 GETTABLEKS                       R16 R16 K20 ["TableHeaderCell"]
       53 CALL                             R15 1 1
       54 GETTABLEKS                       R16 R1 K21 ["PureComponent"]
       56 LOADK                            R18 K22 ["AudioTable"]
       57 NAMECALL                         R16 R16 K23 ["extend"]
       59 CALL                             R16 2 1
       60 GETIMPORT                        R17 K26 [UDim.new]
       62 LOADN                            R18 0
       63 LOADN                            R19 50
       64 CALL                             R17 2 1
       65 DUPCLOSURE                       R18 K27 [PROTO_7]
       66 SETTABLEKS                       R18 R16 K28 ["init"]
       68 DUPCLOSURE                       R18 K29 [PROTO_9]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R18 R16 K30 ["_flushRenderRow"]
       73 DUPCLOSURE                       R18 K31 [PROTO_11]
       74 CAPTURE                          VAL R11
       75 SETTABLEKS                       R18 R16 K32 ["willUpdate"]
       77 DUPCLOSURE                       R18 K33 [PROTO_13]
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R18 R16 K34 ["calculateRowIndices"]
       81 DUPCLOSURE                       R18 K35 [PROTO_18]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R17
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R15
       87 SETTABLEKS                       R18 R16 K36 ["renderResizableHeadings"]
       89 DUPCLOSURE                       R18 K37 [PROTO_21]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R15
       93 SETTABLEKS                       R18 R16 K38 ["renderFixedHeadings"]
       95 DUPCLOSURE                       R18 K39 [PROTO_22]
       96 SETTABLEKS                       R18 R16 K40 ["renderHeadings"]
       98 DUPCLOSURE                       R18 K41 [PROTO_23]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R18 R16 K42 ["renderScroll"]
      104 DUPCLOSURE                       R18 K43 [PROTO_25]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R12
      108 SETTABLEKS                       R18 R16 K44 ["renderRows"]
      110 DUPCLOSURE                       R18 K45 [PROTO_27]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R13
      115 SETTABLEKS                       R18 R16 K46 ["render"]
      117 MOVE                             R18 R4
      118 DUPTABLE                         R19 K48 [{"Stylizer"}]
      119 GETTABLEKS                       R20 R3 K47 ["Stylizer"]
      121 SETTABLEKS                       R20 R19 K47 ["Stylizer"]
      123 CALL                             R18 1 1
      124 MOVE                             R19 R16
      125 CALL                             R18 1 1
      126 MOVE                             R16 R18
      127 RETURN                           R16 1
