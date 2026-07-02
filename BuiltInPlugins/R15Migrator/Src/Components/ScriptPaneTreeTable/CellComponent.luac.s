PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CellProps"]
        5 GETTABLEKS                       R1 R0 K2 ["OnToggle"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["Row"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["textOverflows"]
        5 JUMPIFNOT                        R0 ; [+31]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["props"]
        9 GETTABLEKS                       R0 R0 K3 ["CellProps"]
       11 GETTABLEKS                       R0 R0 K4 ["CellStyle"]
       13 GETUPVAL                         R2 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 3
       17 ADD                              R1 R2 R3
       18 JUMP                             ; [+7]
       19 GETTABLEKS                       R2 R0 K5 ["CellPadding"]
       21 GETTABLEKS                       R2 R2 K6 ["Left"]
       23 GETTABLEKS                       R3 R0 K7 ["Indent"]
       25 ADD                              R1 R2 R3
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K8 ["textRef"]
       29 GETTABLEKS                       R3 R3 K9 ["current"]
       31 GETTABLEKS                       R3 R3 K10 ["AbsoluteSize"]
       33 GETTABLEKS                       R3 R3 K11 ["X"]
       35 ADD                              R2 R3 R1
       36 RETURN                           R2 1
       37 LOADN                            R0 0
       38 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+16]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"textOverflows"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["textRef"]
       12 NAMECALL                         R4 R4 K1 ["getValue"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R4 R4 K4 ["TextFits"]
       17 NOT                              R3 R4
       18 SETTABLEKS                       R3 R2 K2 ["textOverflows"]
       20 NAMECALL                         R0 R0 K5 ["setState"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K6 ["props"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["textRef"]
       29 GETTABLEKS                       R1 R1 K7 ["current"]
       31 JUMPIFNOT                        R1 ; [+14]
       32 GETTABLEKS                       R1 R0 K8 ["SetCellContentsWidth"]
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETTABLEKS                       R1 R0 K8 ["SetCellContentsWidth"]
       37 GETTABLEKS                       R2 R0 K9 ["ColumnIndex"]
       39 GETTABLEKS                       R3 R0 K10 ["RowIndex"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K11 ["fetchCellContentsWidthIfOverflow"]
       44 CALL                             R4 0 -1
       45 CALL                             R1 -1 0
       46 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["CellProps"]
        5 GETTABLEKS                       R3 R3 K2 ["OnFocusLost"]
        7 JUMPIFNOT                        R3 ; [+8]
        8 MOVE                             R4 R3
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 GETTABLEKS                       R7 R2 K3 ["Row"]
       13 GETTABLEKS                       R8 R2 K4 ["ColumnIndex"]
       15 CALL                             R4 4 0
       16 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R0 K1 ["CellProps"]
        6 GETTABLEKS                       R1 R1 K2 ["OnCellPressed"]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R1 R0 K1 ["CellProps"]
       11 GETTABLEKS                       R1 R1 K2 ["OnCellPressed"]
       13 GETTABLEKS                       R2 R0 K3 ["Row"]
       15 GETTABLEKS                       R2 R2 K4 ["item"]
       17 GETTABLEKS                       R2 R2 K5 ["Path"]
       19 GETTABLEKS                       R3 R0 K6 ["ColumnIndex"]
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R0 K1 ["CellProps"]
        6 GETTABLEKS                       R1 R1 K2 ["OnCellDoubleClick"]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R1 R0 K1 ["CellProps"]
       11 GETTABLEKS                       R1 R1 K2 ["OnCellDoubleClick"]
       13 GETTABLEKS                       R2 R0 K3 ["Row"]
       15 GETTABLEKS                       R2 R2 K4 ["item"]
       17 GETTABLEKS                       R2 R2 K5 ["Path"]
       19 GETTABLEKS                       R3 R0 K6 ["ColumnIndex"]
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["CellProps"]
        2 GETTABLEKS                       R4 R3 K1 ["TextInputCols"]
        4 GETTABLEKS                       R5 R0 K2 ["Row"]
        6 MOVE                             R6 R4
        7 JUMPIFNOT                        R6 ; [+10]
        8 GETTABLEKS                       R7 R0 K3 ["ColumnIndex"]
       10 GETTABLE                         R6 R4 R7
       11 JUMPIFNOT                        R6 ; [+6]
       12 GETTABLEKS                       R7 R5 K4 ["depth"]
       14 JUMPIFEQKN                       R7 K5 [0] ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 JUMPIFNOT                        R6 ; [+31]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K6 ["createElement"]
       22 GETUPVAL                         R8 1
       23 NEWTABLE                         R9 8 0
       25 GETIMPORT                        R10 K10 [Enum.AutomaticSize.XY]
       27 SETTABLEKS                       R10 R9 K8 ["AutomaticSize"]
       29 LOADN                            R10 3
       30 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R10 R10 K12 ["onTextInputFocusLost"]
       35 SETTABLEKS                       R10 R9 K13 ["OnFocusLost"]
       37 SETTABLEKS                       R2 R9 K14 ["Size"]
       39 SETTABLEKS                       R1 R9 K15 ["Text"]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K16 ["Ref"]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R11 R11 K17 ["textRef"]
       47 SETTABLE                         R11 R9 R10
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
       50 JUMPIFNOT                        R1 ; [+26]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K6 ["createElement"]
       54 GETUPVAL                         R8 3
       55 NEWTABLE                         R9 8 0
       57 LOADN                            R10 3
       58 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       60 SETTABLEKS                       R2 R9 K14 ["Size"]
       62 SETTABLEKS                       R1 R9 K15 ["Text"]
       64 GETIMPORT                        R10 K20 [Enum.TextXAlignment.Left]
       66 SETTABLEKS                       R10 R9 K18 ["TextXAlignment"]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K16 ["Ref"]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R11 R11 K17 ["textRef"]
       74 SETTABLE                         R11 R9 R10
       75 CALL                             R7 2 1
       76 JUMPIF                           R7 ; [+1]
       77 LOADNIL                          R7
       78 RETURN                           R7 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Columns"]
        2 GETTABLEKS                       R3 R0 K1 ["ColumnIndex"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R2 R1 K2 ["Key"]
        7 JUMPIF                           R2 ; [+2]
        8 GETTABLEKS                       R2 R1 K3 ["Name"]
       10 GETTABLEKS                       R3 R0 K4 ["Row"]
       12 GETTABLEKS                       R5 R3 K5 ["item"]
       14 GETTABLE                         R4 R5 R2
       15 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CellProps"]
        5 GETTABLEKS                       R0 R0 K2 ["OnCellAction"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["Row"]
       13 GETTABLEKS                       R2 R2 K4 ["item"]
       15 GETTABLEKS                       R2 R2 K5 ["Path"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["props"]
       20 GETTABLEKS                       R3 R3 K6 ["ColumnIndex"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["CellProps"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R1 K2 ["Renderers"]
        8 GETTABLEKS                       R4 R0 K2 ["Renderers"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["createElement"]
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K20 [{["ErrorMessage"], ["GetAutocompleteItems"], ["Item"], ["LayoutOrder"] = 3, ["OnMenuAction"], ["OnChanged"], ["OnClick"], ["OnDoubleClick"], ["OnPressed"], ["Renderers"], ["Schema"], ["Selected"], ["Size"], ["StyleModifier"], ["Value"], ["Disabled"]}]
       16 GETTABLEKS                       R6 R0 K4 ["ErrorMessage"]
       18 SETTABLEKS                       R6 R5 K4 ["ErrorMessage"]
       20 GETTABLEKS                       R6 R1 K5 ["GetAutocompleteItems"]
       22 SETTABLEKS                       R6 R5 K5 ["GetAutocompleteItems"]
       24 GETTABLEKS                       R6 R0 K6 ["Item"]
       26 SETTABLEKS                       R6 R5 K6 ["Item"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R6 R5 K9 ["OnMenuAction"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K21 ["onChanged"]
       35 SETTABLEKS                       R6 R5 K10 ["OnChanged"]
       37 GETTABLEKS                       R6 R0 K11 ["OnClick"]
       39 SETTABLEKS                       R6 R5 K11 ["OnClick"]
       41 GETTABLEKS                       R6 R0 K12 ["OnDoubleClick"]
       43 SETTABLEKS                       R6 R5 K12 ["OnDoubleClick"]
       45 GETTABLEKS                       R6 R0 K13 ["OnPressed"]
       47 SETTABLEKS                       R6 R5 K13 ["OnPressed"]
       49 SETTABLEKS                       R2 R5 K2 ["Renderers"]
       51 GETTABLEKS                       R6 R0 K14 ["Schema"]
       53 SETTABLEKS                       R6 R5 K14 ["Schema"]
       55 GETTABLEKS                       R6 R0 K15 ["Selected"]
       57 SETTABLEKS                       R6 R5 K15 ["Selected"]
       59 GETTABLEKS                       R6 R0 K16 ["Size"]
       61 SETTABLEKS                       R6 R5 K16 ["Size"]
       63 GETTABLEKS                       R6 R0 K17 ["StyleModifier"]
       65 SETTABLEKS                       R6 R5 K17 ["StyleModifier"]
       67 GETTABLEKS                       R6 R0 K18 ["Value"]
       69 SETTABLEKS                       R6 R5 K18 ["Value"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K0 ["props"]
       74 GETTABLEKS                       R6 R6 K22 ["Row"]
       76 GETTABLEKS                       R6 R6 K23 ["item"]
       78 GETTABLEKS                       R6 R6 K24 ["_disabled"]
       80 SETTABLEKS                       R6 R5 K19 ["Disabled"]
       82 CALL                             R3 2 -1
       83 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["CellProps"]
        5 GETTABLEKS                       R1 R1 K2 ["OnCellEdited"]
        7 JUMPIFNOT                        R1 ; [+23]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["props"]
       11 GETTABLEKS                       R1 R1 K1 ["CellProps"]
       13 GETTABLEKS                       R1 R1 K2 ["OnCellEdited"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K3 ["Row"]
       21 GETTABLEKS                       R3 R3 K4 ["item"]
       23 GETTABLEKS                       R3 R3 K5 ["Path"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K0 ["props"]
       28 GETTABLEKS                       R4 R4 K6 ["ColumnIndex"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onToggle"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K5 ["createRef"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K6 ["textRef"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["createRef"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K7 ["toggleRef"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R1 R0 K8 ["fetchCellContentsWidthIfOverflow"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K9 ["onAbsoluteSizeChanged"]
       30 NEWCLOSURE                       R1 P3
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K10 ["onTextInputFocusLost"]
       34 NEWCLOSURE                       R1 P4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K11 ["onPressed"]
       38 NEWCLOSURE                       R1 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K12 ["onDoubleClick"]
       42 NEWCLOSURE                       R1 P6
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R1 R0 K13 ["getTextElement"]
       49 DUPCLOSURE                       R1 K14 [PROTO_7]
       50 SETTABLEKS                       R1 R0 K15 ["getTextFromProps"]
       52 NEWCLOSURE                       R1 P8
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U7
       57 SETTABLEKS                       R1 R0 K16 ["getPropertyCell"]
       59 NEWCLOSURE                       R1 P9
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R1 R0 K17 ["onChanged"]
       63 DUPCLOSURE                       R1 K18 [PROTO_12]
       64 SETTABLEKS                       R1 R0 K19 ["defaultGetItemId"]
       66 GETTABLEKS                       R2 R0 K20 ["props"]
       68 GETTABLEKS                       R2 R2 K21 ["CellProps"]
       70 JUMPIFNOT                        R2 ; [+7]
       71 GETTABLEKS                       R1 R0 K20 ["props"]
       73 GETTABLEKS                       R1 R1 K21 ["CellProps"]
       75 GETTABLEKS                       R1 R1 K22 ["GetItemId"]
       77 JUMPIF                           R1 ; [+2]
       78 GETTABLEKS                       R1 R0 K19 ["defaultGetItemId"]
       80 SETTABLEKS                       R1 R0 K23 ["getItemId"]
       82 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["getItemId"]
        4 GETTABLEKS                       R3 R1 K2 ["Row"]
        6 GETTABLEKS                       R3 R3 K3 ["item"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R1 K4 ["CellProps"]
       11 GETTABLEKS                       R4 R4 K5 ["Expansion"]
       13 GETTABLE                         R3 R4 R2
       14 GETTABLEKS                       R4 R0 K6 ["toggleRef"]
       16 GETTABLEKS                       R4 R4 K7 ["current"]
       18 JUMPIFNOT                        R4 ; [+8]
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETTABLEKS                       R4 R0 K6 ["toggleRef"]
       22 GETTABLEKS                       R4 R4 K7 ["current"]
       24 LOADN                            R5 90
       25 SETTABLEKS                       R5 R4 K8 ["Rotation"]
       27 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["CellProps"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["CellProps"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+21]
        8 GETTABLEKS                       R2 R1 K0 ["CellProps"]
       10 JUMPIFNOT                        R2 ; [+30]
       11 GETTABLEKS                       R2 R0 K1 ["props"]
       13 GETTABLEKS                       R2 R2 K0 ["CellProps"]
       15 JUMPIFNOT                        R2 ; [+25]
       16 GETTABLEKS                       R2 R1 K0 ["CellProps"]
       18 GETTABLEKS                       R2 R2 K2 ["GetItemId"]
       20 GETTABLEKS                       R3 R0 K1 ["props"]
       22 GETTABLEKS                       R3 R3 K0 ["CellProps"]
       24 GETTABLEKS                       R3 R3 K2 ["GetItemId"]
       26 JUMPIFEQ                         R2 R3 ; [+14]
       28 JUMPIFNOT                        R1 ; [+8]
       29 GETTABLEKS                       R3 R1 K0 ["CellProps"]
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETTABLEKS                       R2 R1 K0 ["CellProps"]
       34 GETTABLEKS                       R2 R2 K2 ["GetItemId"]
       36 JUMPIF                           R2 ; [+2]
       37 GETTABLEKS                       R2 R0 K3 ["defaultGetItemId"]
       39 SETTABLEKS                       R2 R0 K4 ["getItemId"]
       41 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["RowIndex"]
        4 GETTABLEKS                       R4 R2 K1 ["RowIndex"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+11]
        8 GETTABLEKS                       R3 R0 K2 ["getTextFromProps"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R0 K2 ["getTextFromProps"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 JUMPIFEQ                         R3 R4 ; [+14]
       18 GETTABLEKS                       R3 R2 K3 ["SetCellContentsWidth"]
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETTABLEKS                       R3 R2 K3 ["SetCellContentsWidth"]
       23 GETTABLEKS                       R4 R2 K4 ["ColumnIndex"]
       25 GETTABLEKS                       R5 R2 K1 ["RowIndex"]
       27 GETTABLEKS                       R6 R0 K5 ["fetchCellContentsWidthIfOverflow"]
       29 CALL                             R6 0 -1
       30 CALL                             R3 -1 0
       31 GETTABLEKS                       R3 R0 K6 ["getItemId"]
       33 GETTABLEKS                       R4 R2 K7 ["Row"]
       35 GETTABLEKS                       R4 R4 K8 ["item"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R5 R2 K9 ["CellProps"]
       40 GETTABLEKS                       R5 R5 K10 ["Expansion"]
       42 GETTABLE                         R4 R5 R3
       43 GETTABLEKS                       R5 R0 K11 ["toggleTween"]
       45 JUMPIFNOT                        R5 ; [+5]
       46 GETTABLEKS                       R5 R0 K11 ["toggleTween"]
       48 NAMECALL                         R5 R5 K12 ["Pause"]
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R5 R0 K13 ["toggleRef"]
       53 GETTABLEKS                       R5 R5 K14 ["current"]
       55 JUMPIFNOT                        R5 ; [+40]
       56 JUMPIFNOT                        R4 ; [+2]
       57 LOADN                            R5 90
       58 JUMP                             ; [+1]
       59 LOADN                            R5 0
       60 GETTABLEKS                       R6 R1 K7 ["Row"]
       62 GETTABLEKS                       R6 R6 K8 ["item"]
       64 GETTABLEKS                       R7 R2 K7 ["Row"]
       66 GETTABLEKS                       R7 R7 K8 ["item"]
       68 JUMPIFNOTEQ                      R6 R7 ; [+21]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R8 R0 K13 ["toggleRef"]
       73 GETTABLEKS                       R8 R8 K14 ["current"]
       75 GETUPVAL                         R9 1
       76 DUPTABLE                         R10 K16 [{"Rotation"}]
       77 SETTABLEKS                       R5 R10 K15 ["Rotation"]
       79 NAMECALL                         R6 R6 K17 ["Create"]
       81 CALL                             R6 4 1
       82 SETTABLEKS                       R6 R0 K11 ["toggleTween"]
       84 GETTABLEKS                       R6 R0 K11 ["toggleTween"]
       86 NAMECALL                         R6 R6 K18 ["Play"]
       88 CALL                             R6 1 0
       89 RETURN                           R0 0
       90 GETTABLEKS                       R6 R0 K13 ["toggleRef"]
       92 GETTABLEKS                       R6 R6 K14 ["current"]
       94 SETTABLEKS                       R5 R6 K15 ["Rotation"]
       96 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCellAction"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnCellAction"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["Id"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["item"]
       13 GETTABLEKS                       R2 R2 K3 ["Path"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["ColumnIndex"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCellAction"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnCellAction"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["Id"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["item"]
       13 GETTABLEKS                       R2 R2 K3 ["Path"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["ColumnIndex"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Columns"]
        4 GETTABLEKS                       R4 R1 K2 ["ColumnIndex"]
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R3 R2 K3 ["Key"]
        9 JUMPIF                           R3 ; [+2]
       10 GETTABLEKS                       R3 R2 K4 ["Name"]
       12 GETTABLEKS                       R4 R1 K5 ["Width"]
       14 JUMPIF                           R4 ; [+8]
       15 GETIMPORT                        R4 K8 [UDim.new]
       17 GETTABLEKS                       R7 R1 K1 ["Columns"]
       19 LENGTH                           R6 R7
       20 DIVRK                            R5 K9 [1] R6
       21 LOADN                            R6 0
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R5 R1 K10 ["Row"]
       25 GETTABLEKS                       R6 R1 K11 ["CellProps"]
       27 GETTABLEKS                       R8 R5 K12 ["item"]
       29 GETTABLE                         R7 R8 R3
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 LOADB                            R10 0
       33 FASTCALL1                        TYPEOF R7 ; [+3]
       34 MOVE                             R12 R7
       35 GETIMPORT                        R11 K14 [typeof]
       37 CALL                             R11 1 1
       38 JUMPIFNOTEQKS                    R11 K15 ["table"] ; [+15]
       40 GETTABLEKS                       R12 R7 K16 ["Value"]
       42 FASTCALL1                        TOSTRING R12 ; [+2]
       43 GETIMPORT                        R11 K18 [tostring]
       45 CALL                             R11 1 1
       46 MOVE                             R8 R11
       47 GETTABLEKS                       R9 R7 K19 ["LeftIcon"]
       49 GETTABLEKS                       R11 R7 K20 ["Schema"]
       51 JUMPIFNOT                        R11 ; [+12]
       52 LOADB                            R10 1
       53 JUMP                             ; [+10]
       54 JUMPIFEQKNIL                     R7 ; [+8]
       56 FASTCALL1                        TOSTRING R7 ; [+3]
       57 MOVE                             R12 R7
       58 GETIMPORT                        R11 K18 [tostring]
       60 CALL                             R11 1 1
       61 MOVE                             R8 R11
       62 JUMP                             ; [+1]
       63 LOADK                            R8 K21 [""]
       64 LOADNIL                          R11
       65 LOADNIL                          R12
       66 LOADNIL                          R13
       67 FASTCALL1                        TYPEOF R7 ; [+3]
       68 MOVE                             R15 R7
       69 GETIMPORT                        R14 K14 [typeof]
       71 CALL                             R14 1 1
       72 JUMPIFNOTEQKS                    R14 K15 ["table"] ; [+16]
       74 GETTABLEKS                       R14 R1 K22 ["Tooltip"]
       76 JUMPIF                           R14 ; [+4]
       77 GETTABLEKS                       R14 R7 K23 ["ErrorMessage"]
       79 JUMPIF                           R14 ; [+1]
       80 MOVE                             R14 R8
       81 MOVE                             R11 R14
       82 GETTABLEKS                       R14 R7 K23 ["ErrorMessage"]
       84 JUMPIFEQ                         R11 R14 ; [+2]
       86 LOADB                            R13 0 +1
       87 LOADB                            R13 1
       88 JUMP                             ; [+3]
       89 GETTABLEKS                       R14 R1 K22 ["Tooltip"]
       91 OR                               R11 R14 R8
       92 LOADB                            R14 0
       93 JUMPIFEQKNIL                     R11 ; [+14]
       95 LOADB                            R14 0
       96 JUMPIFEQKS                       R11 K21 [""] ; [+11]
       98 GETTABLEKS                       R15 R0 K24 ["state"]
      100 GETTABLEKS                       R15 R15 K25 ["textOverflows"]
      102 JUMPIF                           R15 ; [+2]
      103 MOVE                             R14 R13
      104 JUMPIFNOT                        R14 ; [+3]
      105 GETTABLEKS                       R15 R6 K26 ["DisableTooltip"]
      107 NOT                              R14 R15
      108 MOVE                             R12 R14
      109 GETUPVAL                         R15 0
      110 JUMPIFNOT                        R15 ; [+2]
      111 LOADNIL                          R14
      112 JUMP                             ; [+6]
      113 GETUPVAL                         R14 1
      114 GETTABLEKS                       R15 R1 K27 ["Style"]
      116 GETTABLEKS                       R16 R6 K28 ["CellStyle"]
      118 CALL                             R14 2 1
      119 GETUPVAL                         R16 0
      120 JUMPIFNOT                        R16 ; [+2]
      121 LOADNIL                          R15
      122 JUMP                             ; [+9]
      123 GETTABLEKS                       R16 R5 K29 ["depth"]
      125 JUMPIFNOTEQKN                    R16 K9 [1] ; [+4]
      127 GETTABLEKS                       R15 R14 K30 ["BackgroundEven"]
      129 JUMP                             ; [+2]
      130 GETTABLEKS                       R15 R14 K31 ["BackgroundOdd"]
      132 GETUPVAL                         R16 0
      133 JUMPIF                           R16 ; [+25]
      134 GETTABLEKS                       R16 R1 K32 ["HighlightCell"]
      136 JUMPIFNOT                        R16 ; [+22]
      137 GETUPVAL                         R17 2
      138 GETTABLEKS                       R17 R17 K33 ["Hover"]
      140 GETTABLE                         R16 R14 R17
      141 JUMPIFNOT                        R16 ; [+17]
      142 GETTABLEKS                       R16 R5 K29 ["depth"]
      144 JUMPIFNOTEQKN                    R16 K9 [1] ; [+8]
      146 GETUPVAL                         R17 2
      147 GETTABLEKS                       R17 R17 K33 ["Hover"]
      149 GETTABLE                         R16 R14 R17
      150 GETTABLEKS                       R15 R16 K30 ["BackgroundEven"]
      152 JUMP                             ; [+6]
      153 GETUPVAL                         R17 2
      154 GETTABLEKS                       R17 R17 K33 ["Hover"]
      156 GETTABLE                         R16 R14 R17
      157 GETTABLEKS                       R15 R16 K31 ["BackgroundOdd"]
      159 GETTABLEKS                       R16 R5 K12 ["item"]
      161 GETTABLEKS                       R16 R16 K34 ["select"]
      163 JUMPIFNOT                        R16 ; [+7]
      164 GETTABLEKS                       R16 R5 K12 ["item"]
      166 GETTABLEKS                       R16 R16 K34 ["select"]
      168 GETTABLEKS                       R16 R16 K16 ["Value"]
      170 JUMPIF                           R16 ; [+27]
      171 GETTABLEKS                       R16 R5 K12 ["item"]
      173 GETTABLEKS                       R16 R16 K35 ["Path"]
      175 GETTABLEKS                       R16 R16 K36 ["parent"]
      177 JUMPIFNOT                        R16 ; [+21]
      178 GETTABLEKS                       R16 R5 K12 ["item"]
      180 GETTABLEKS                       R16 R16 K35 ["Path"]
      182 GETTABLEKS                       R16 R16 K36 ["parent"]
      184 GETTABLEKS                       R16 R16 K34 ["select"]
      186 JUMPIFNOT                        R16 ; [+12]
      187 GETTABLEKS                       R16 R5 K12 ["item"]
      189 GETTABLEKS                       R16 R16 K35 ["Path"]
      191 GETTABLEKS                       R16 R16 K36 ["parent"]
      193 GETTABLEKS                       R16 R16 K34 ["select"]
      195 GETTABLEKS                       R16 R16 K16 ["Value"]
      197 JUMPIFNOT                        R16 ; [+1]
      198 GETUPVAL                         R15 3
      199 GETUPVAL                         R17 0
      200 JUMPIFNOT                        R17 ; [+2]
      201 GETUPVAL                         R16 4
      202 JUMP                             ; [+4]
      203 GETTABLEKS                       R16 R14 K37 ["Arrow"]
      205 GETTABLEKS                       R16 R16 K38 ["Size"]
      207 GETTABLEKS                       R18 R5 K29 ["depth"]
      209 GETUPVAL                         R20 0
      210 JUMPIFNOT                        R20 ; [+2]
      211 GETUPVAL                         R19 5
      212 JUMP                             ; [+2]
      213 GETTABLEKS                       R19 R14 K39 ["Indent"]
      215 MUL                              R17 R18 R19
      216 GETTABLEKS                       R19 R1 K2 ["ColumnIndex"]
      218 JUMPIFEQKN                       R19 K40 [2] ; [+2]
      220 LOADB                            R18 0 +1
      221 LOADB                            R18 1
      222 GETUPVAL                         R20 0
      223 JUMPIFNOT                        R20 ; [+2]
      224 LOADNIL                          R19
      225 JUMP                             ; [+6]
      226 JUMPIFNOT                        R10 ; [+3]
      227 GETTABLEKS                       R19 R14 K41 ["SchemaCellPadding"]
      229 JUMP                             ; [+2]
      230 GETTABLEKS                       R19 R14 K42 ["CellPadding"]
      232 GETUPVAL                         R21 0
      233 JUMPIFNOT                        R21 ; [+2]
      234 LOADNIL                          R20
      235 JUMP                             ; [+23]
      236 JUMPIFNOT                        R18 ; [+21]
      237 DUPTABLE                         R20 K47 [{"Top", "Left", "Right", "Bottom"}]
      238 GETTABLEKS                       R21 R19 K43 ["Top"]
      240 SETTABLEKS                       R21 R20 K43 ["Top"]
      242 GETTABLEKS                       R22 R14 K42 ["CellPadding"]
      244 GETTABLEKS                       R22 R22 K44 ["Left"]
      246 ADD                              R21 R22 R17
      247 SETTABLEKS                       R21 R20 K44 ["Left"]
      249 GETTABLEKS                       R21 R19 K45 ["Right"]
      251 SETTABLEKS                       R21 R20 K45 ["Right"]
      253 GETTABLEKS                       R21 R19 K46 ["Bottom"]
      255 SETTABLEKS                       R21 R20 K46 ["Bottom"]
      257 JUMPIF                           R20 ; [+1]
      258 MOVE                             R20 R19
      259 GETTABLEKS                       R21 R5 K48 ["hasChildren"]
      261 LOADN                            R22 0
      262 LOADNIL                          R23
      263 FASTCALL1                        TYPEOF R7 ; [+3]
      264 MOVE                             R25 R7
      265 GETIMPORT                        R24 K14 [typeof]
      267 CALL                             R24 1 1
      268 JUMPIFNOTEQKS                    R24 K15 ["table"] ; [+108]
      270 GETTABLEKS                       R24 R7 K49 ["Actions"]
      272 JUMPIFNOT                        R24 ; [+104]
      273 GETUPVAL                         R25 0
      274 JUMPIFNOT                        R25 ; [+2]
      275 GETUPVAL                         R24 6
      276 JUMP                             ; [+2]
      277 GETTABLEKS                       R24 R14 K50 ["CellSpacing"]
      279 ADD                              R22 R22 R24
      280 NEWTABLE                         R23 0 0
      282 GETIMPORT                        R24 K52 [ipairs]
      284 GETTABLEKS                       R25 R7 K49 ["Actions"]
      286 CALL                             R24 1 3
      287 FORGPREP_INEXT                   R24
      288 LOADK                            R30 K53 ["Action "]
      289 MOVE                             R31 R27
      290 CONCAT                           R29 R30 R31
      291 GETUPVAL                         R30 7
      292 GETTABLEKS                       R30 R30 K54 ["createElement"]
      294 GETUPVAL                         R31 8
      295 GETUPVAL                         R33 0
      296 JUMPIFNOT                        R33 ; [+45]
      297 NEWTABLE                         R32 8 0
      299 LOADK                            R33 K55 ["PointingHand"]
      300 SETTABLEKS                       R33 R32 K56 ["Cursor"]
      302 SETTABLEKS                       R27 R32 K57 ["LayoutOrder"]
      304 GETTABLEKS                       R33 R28 K58 ["Icon"]
      306 GETTABLEKS                       R33 R33 K59 ["Image"]
      308 SETTABLEKS                       R33 R32 K19 ["LeftIcon"]
      310 NEWCLOSURE                       R33 P0
      311 CAPTURE                          VAL R6
      312 CAPTURE                          VAL R28
      313 CAPTURE                          VAL R5
      314 CAPTURE                          VAL R1
      315 SETTABLEKS                       R33 R32 K60 ["OnClick"]
      317 GETTABLEKS                       R33 R28 K58 ["Icon"]
      319 GETTABLEKS                       R33 R33 K38 ["Size"]
      321 SETTABLEKS                       R33 R32 K38 ["Size"]
      323 GETTABLEKS                       R33 R28 K22 ["Tooltip"]
      325 SETTABLEKS                       R33 R32 K61 ["TooltipText"]
      327 LOADK                            R33 K62 ["Icon16 Primary"]
      328 SETTABLEKS                       R33 R32 K63 ["IconTag"]
      330 GETUPVAL                         R33 9
      331 GETTABLEKS                       R33 R33 K64 ["Tag"]
      333 GETUPVAL                         R34 10
      334 LOADK                            R35 K65 ["Compact"]
      335 GETUPVAL                         R37 9
      336 GETTABLEKS                       R37 R37 K64 ["Tag"]
      338 GETTABLE                         R36 R28 R37
      339 CALL                             R34 2 1
      340 SETTABLE                         R34 R32 R33
      341 JUMP                             ; [+30]
      342 DUPTABLE                         R32 K67 [{["AutomaticSize"], ["LayoutOrder"], ["LeftIcon"], ["OnClick"], ["Size"], ["Style"] = "Compact", ["TooltipText"]}]
      343 GETIMPORT                        R33 K70 [Enum.AutomaticSize.XY]
      345 SETTABLEKS                       R33 R32 K66 ["AutomaticSize"]
      347 SETTABLEKS                       R27 R32 K57 ["LayoutOrder"]
      349 GETTABLEKS                       R33 R28 K58 ["Icon"]
      351 GETTABLEKS                       R33 R33 K59 ["Image"]
      353 SETTABLEKS                       R33 R32 K19 ["LeftIcon"]
      355 NEWCLOSURE                       R33 P1
      356 CAPTURE                          VAL R6
      357 CAPTURE                          VAL R28
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R1
      360 SETTABLEKS                       R33 R32 K60 ["OnClick"]
      362 GETTABLEKS                       R33 R28 K58 ["Icon"]
      364 GETTABLEKS                       R33 R33 K38 ["Size"]
      366 SETTABLEKS                       R33 R32 K38 ["Size"]
      368 GETTABLEKS                       R33 R28 K22 ["Tooltip"]
      370 SETTABLEKS                       R33 R32 K61 ["TooltipText"]
      372 CALL                             R30 2 1
      373 SETTABLE                         R30 R23 R29
      374 ADDK                             R22 R22 K71 [32]
      375 FORGLOOP                         R24 2 [inext] ; [-88]
      377 LOADN                            R24 0
      378 JUMPIFNOT                        R9 ; [+14]
      379 GETUPVAL                         R27 0
      380 JUMPIFNOT                        R27 ; [+2]
      381 GETUPVAL                         R26 6
      382 JUMP                             ; [+2]
      383 GETTABLEKS                       R26 R14 K50 ["CellSpacing"]
      385 GETTABLEKS                       R27 R9 K38 ["Size"]
      387 GETTABLEKS                       R27 R27 K72 ["X"]
      389 GETTABLEKS                       R27 R27 K73 ["Offset"]
      391 ADD                              R25 R26 R27
      392 ADD                              R24 R24 R25
      393 JUMPIFNOT                        R18 ; [+8]
      394 GETUPVAL                         R27 0
      395 JUMPIFNOT                        R27 ; [+2]
      396 GETUPVAL                         R26 6
      397 JUMP                             ; [+2]
      398 GETTABLEKS                       R26 R14 K50 ["CellSpacing"]
      400 ADD                              R25 R26 R16
      401 ADD                              R24 R24 R25
      402 GETIMPORT                        R25 K75 [UDim2.new]
      404 LOADN                            R26 1
      405 MINUS                            R27 R24
      406 LOADN                            R28 1
      407 LOADN                            R29 0
      408 CALL                             R25 4 1
      409 GETUPVAL                         R27 0
      410 JUMPIFNOT                        R27 ; [+23]
      411 GETUPVAL                         R26 10
      412 LOADK                            R27 K76 ["Component-TreeTableCell"]
      413 GETTABLEKS                       R29 R1 K77 ["StyleModifier"]
      415 GETUPVAL                         R30 2
      416 GETTABLEKS                       R30 R30 K78 ["Selected"]
      418 JUMPIFNOTEQ                      R29 R30 ; [+3]
      420 LOADK                            R28 K78 ["Selected"]
      421 JUMP                             ; [+6]
      422 GETTABLEKS                       R29 R1 K79 ["Emphasis"]
      424 JUMPIFNOT                        R29 ; [+2]
      425 LOADK                            R28 K80 ["Secondary"]
      426 JUMP                             ; [+1]
      427 LOADK                            R28 K10 ["Row"]
      428 GETUPVAL                         R30 9
      429 GETTABLEKS                       R30 R30 K64 ["Tag"]
      431 GETTABLE                         R29 R1 R30
      432 CALL                             R26 3 1
      433 JUMP                             ; [+1]
      434 LOADNIL                          R26
      435 MOVE                             R27 R23
      436 JUMPIFNOT                        R27 ; [+17]
      437 LOADB                            R27 1
      438 GETTABLEKS                       R28 R1 K77 ["StyleModifier"]
      440 GETUPVAL                         R29 2
      441 GETTABLEKS                       R29 R29 K33 ["Hover"]
      443 JUMPIFEQ                         R28 R29 ; [+10]
      445 GETTABLEKS                       R28 R1 K77 ["StyleModifier"]
      447 GETUPVAL                         R29 2
      448 GETTABLEKS                       R29 R29 K78 ["Selected"]
      450 JUMPIFEQ                         R28 R29 ; [+2]
      452 LOADB                            R27 0 +1
      453 LOADB                            R27 1
      454 GETUPVAL                         R28 7
      455 GETTABLEKS                       R28 R28 K54 ["createElement"]
      457 GETUPVAL                         R29 11
      458 GETUPVAL                         R31 0
      459 JUMPIFNOT                        R31 ; [+29]
      460 NEWTABLE                         R30 4 0
      462 LOADB                            R31 1
      463 SETTABLEKS                       R31 R30 K81 ["ClipsDescendants"]
      465 GETIMPORT                        R31 K75 [UDim2.new]
      467 GETTABLEKS                       R32 R4 K82 ["Scale"]
      469 GETTABLEKS                       R33 R4 K73 ["Offset"]
      471 LOADN                            R34 1
      472 LOADN                            R35 0
      473 CALL                             R31 4 1
      474 SETTABLEKS                       R31 R30 K38 ["Size"]
      476 GETUPVAL                         R31 7
      477 GETTABLEKS                       R31 R31 K83 ["Change"]
      479 GETTABLEKS                       R31 R31 K84 ["AbsoluteSize"]
      481 GETTABLEKS                       R32 R0 K85 ["onAbsoluteSizeChanged"]
      483 SETTABLE                         R32 R30 R31
      484 GETUPVAL                         R31 9
      485 GETTABLEKS                       R31 R31 K64 ["Tag"]
      487 SETTABLE                         R26 R30 R31
      488 JUMP                             ; [+36]
      489 NEWTABLE                         R30 8 0
      491 LOADK                            R31 K86 ["Box"]
      492 SETTABLEKS                       R31 R30 K27 ["Style"]
      494 SETTABLEKS                       R15 R30 K87 ["BackgroundColor3"]
      496 LOADN                            R31 1
      497 SETTABLEKS                       R31 R30 K88 ["BorderSizePixel"]
      499 GETTABLEKS                       R31 R14 K89 ["Border"]
      501 SETTABLEKS                       R31 R30 K90 ["BorderColor3"]
      503 GETIMPORT                        R31 K75 [UDim2.new]
      505 GETTABLEKS                       R32 R4 K82 ["Scale"]
      507 GETTABLEKS                       R33 R4 K73 ["Offset"]
      509 LOADN                            R34 1
      510 LOADN                            R35 0
      511 CALL                             R31 4 1
      512 SETTABLEKS                       R31 R30 K38 ["Size"]
      514 GETUPVAL                         R31 7
      515 GETTABLEKS                       R31 R31 K83 ["Change"]
      517 GETTABLEKS                       R31 R31 K84 ["AbsoluteSize"]
      519 GETTABLEKS                       R32 R0 K85 ["onAbsoluteSizeChanged"]
      521 SETTABLE                         R32 R30 R31
      522 LOADB                            R31 1
      523 SETTABLEKS                       R31 R30 K81 ["ClipsDescendants"]
      525 DUPTABLE                         R31 K91 [{"Tooltip", "Left", "Right"}]
      526 MOVE                             R32 R12
      527 JUMPIFNOT                        R32 ; [+21]
      528 GETUPVAL                         R32 7
      529 GETTABLEKS                       R32 R32 K54 ["createElement"]
      531 GETUPVAL                         R33 12
      532 DUPTABLE                         R34 K95 [{"MaxWidth", "Text", "TextXAlignment"}]
      533 JUMPIFNOT                        R14 ; [+5]
      534 GETTABLEKS                       R35 R14 K22 ["Tooltip"]
      536 GETTABLEKS                       R35 R35 K92 ["MaxWidth"]
      538 JUMP                             ; [+1]
      539 LOADNIL                          R35
      540 SETTABLEKS                       R35 R34 K92 ["MaxWidth"]
      542 SETTABLEKS                       R11 R34 K93 ["Text"]
      544 GETIMPORT                        R35 K96 [Enum.TextXAlignment.Left]
      546 SETTABLEKS                       R35 R34 K94 ["TextXAlignment"]
      548 CALL                             R32 2 1
      549 SETTABLEKS                       R32 R31 K22 ["Tooltip"]
      551 GETUPVAL                         R32 7
      552 GETTABLEKS                       R32 R32 K54 ["createElement"]
      554 GETUPVAL                         R33 11
      555 GETUPVAL                         R35 0
      556 JUMPIFNOT                        R35 ; [+34]
      557 NEWTABLE                         R34 4 0
      559 GETTABLEKS                       R35 R1 K2 ["ColumnIndex"]
      561 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      563 GETIMPORT                        R35 K75 [UDim2.new]
      565 LOADN                            R36 1
      566 JUMPIFNOT                        R27 ; [+3]
      567 MINUS                            R38 R22
      568 SUB                              R37 R38 R17
      569 JUMP                             ; [+1]
      570 MINUS                            R37 R17
      571 LOADN                            R38 1
      572 LOADN                            R39 0
      573 CALL                             R35 4 1
      574 SETTABLEKS                       R35 R34 K38 ["Size"]
      576 GETIMPORT                        R35 K75 [UDim2.new]
      578 LOADN                            R36 0
      579 MOVE                             R37 R17
      580 LOADN                            R38 0
      581 LOADN                            R39 0
      582 CALL                             R35 4 1
      583 SETTABLEKS                       R35 R34 K97 ["Position"]
      585 GETUPVAL                         R35 9
      586 GETTABLEKS                       R35 R35 K64 ["Tag"]
      588 LOADK                            R36 K98 ["Left X-RowM X-Middle"]
      589 SETTABLE                         R36 R34 R35
      590 JUMP                             ; [+31]
      591 DUPTABLE                         R34 K103 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "Size"}]
      592 GETIMPORT                        R35 K106 [Enum.FillDirection.Horizontal]
      594 SETTABLEKS                       R35 R34 K99 ["Layout"]
      596 GETTABLEKS                       R35 R1 K2 ["ColumnIndex"]
      598 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      600 SETTABLEKS                       R20 R34 K100 ["Padding"]
      602 GETTABLEKS                       R35 R14 K50 ["CellSpacing"]
      604 SETTABLEKS                       R35 R34 K101 ["Spacing"]
      606 GETIMPORT                        R35 K107 [Enum.HorizontalAlignment.Left]
      608 SETTABLEKS                       R35 R34 K102 ["HorizontalAlignment"]
      610 GETIMPORT                        R35 K75 [UDim2.new]
      612 LOADN                            R36 1
      613 JUMPIFNOT                        R27 ; [+2]
      614 MINUS                            R37 R22
      615 JUMP                             ; [+1]
      616 LOADN                            R37 0
      617 LOADN                            R38 1
      618 LOADN                            R39 0
      619 CALL                             R35 4 1
      620 SETTABLEKS                       R35 R34 K38 ["Size"]
      622 DUPTABLE                         R35 K109 [{"Toggle", "LeftIcon", "Text"}]
      623 JUMPIFNOT                        R18 ; [+106]
      624 GETUPVAL                         R36 7
      625 GETTABLEKS                       R36 R36 K54 ["createElement"]
      627 GETUPVAL                         R37 11
      628 DUPTABLE                         R38 K110 [{["AutomaticSize"], ["LayoutOrder"] = 1}]
      629 GETIMPORT                        R39 K70 [Enum.AutomaticSize.XY]
      631 SETTABLEKS                       R39 R38 K66 ["AutomaticSize"]
      633 DUPTABLE                         R39 K111 [{"Icon"}]
      634 GETUPVAL                         R40 7
      635 GETTABLEKS                       R40 R40 K54 ["createElement"]
      637 LOADK                            R41 K112 ["ImageButton"]
      638 GETUPVAL                         R43 0
      639 JUMPIFNOT                        R43 ; [+28]
      640 NEWTABLE                         R42 4 0
      642 GETUPVAL                         R43 9
      643 GETTABLEKS                       R43 R43 K64 ["Tag"]
      645 GETUPVAL                         R44 10
      646 LOADK                            R45 K37 ["Arrow"]
      647 JUMPIF                           R21 ; [+2]
      648 LOADK                            R46 K113 ["Invisible"]
      649 JUMP                             ; [+1]
      650 LOADNIL                          R46
      651 CALL                             R44 2 1
      652 SETTABLE                         R44 R42 R43
      653 GETUPVAL                         R43 7
      654 GETTABLEKS                       R43 R43 K114 ["Ref"]
      656 GETTABLEKS                       R44 R0 K115 ["toggleRef"]
      658 SETTABLE                         R44 R42 R43
      659 GETUPVAL                         R43 7
      660 GETTABLEKS                       R43 R43 K116 ["Event"]
      662 GETTABLEKS                       R43 R43 K117 ["Activated"]
      664 GETTABLEKS                       R44 R0 K118 ["onToggle"]
      666 SETTABLE                         R44 R42 R43
      667 JUMP                             ; [+57]
      668 NEWTABLE                         R42 16 0
      670 GETIMPORT                        R43 K120 [UDim2.fromOffset]
      672 MOVE                             R44 R16
      673 MOVE                             R45 R16
      674 CALL                             R43 2 1
      675 SETTABLEKS                       R43 R42 K38 ["Size"]
      677 LOADN                            R43 1
      678 SETTABLEKS                       R43 R42 K121 ["BackgroundTransparency"]
      680 JUMPIF                           R21 ; [+2]
      681 LOADN                            R43 1
      682 JUMP                             ; [+1]
      683 LOADNIL                          R43
      684 SETTABLEKS                       R43 R42 K122 ["ImageTransparency"]
      686 GETTABLEKS                       R43 R14 K37 ["Arrow"]
      688 GETTABLEKS                       R43 R43 K59 ["Image"]
      690 SETTABLEKS                       R43 R42 K59 ["Image"]
      692 GETTABLEKS                       R43 R14 K37 ["Arrow"]
      694 GETTABLEKS                       R43 R43 K123 ["Color"]
      696 SETTABLEKS                       R43 R42 K124 ["ImageColor3"]
      698 GETIMPORT                        R43 K126 [Vector2.new]
      700 MOVE                             R44 R16
      701 MOVE                             R45 R16
      702 CALL                             R43 2 1
      703 SETTABLEKS                       R43 R42 K127 ["ImageRectSize"]
      705 GETTABLEKS                       R43 R14 K37 ["Arrow"]
      707 GETTABLEKS                       R43 R43 K128 ["CollapsedOffset"]
      709 SETTABLEKS                       R43 R42 K129 ["ImageRectOffset"]
      711 GETUPVAL                         R43 7
      712 GETTABLEKS                       R43 R43 K114 ["Ref"]
      714 GETTABLEKS                       R44 R0 K115 ["toggleRef"]
      716 SETTABLE                         R44 R42 R43
      717 GETUPVAL                         R43 7
      718 GETTABLEKS                       R43 R43 K116 ["Event"]
      720 GETTABLEKS                       R43 R43 K117 ["Activated"]
      722 GETTABLEKS                       R44 R0 K118 ["onToggle"]
      724 SETTABLE                         R44 R42 R43
      725 CALL                             R40 2 1
      726 SETTABLEKS                       R40 R39 K58 ["Icon"]
      728 CALL                             R36 3 1
      729 JUMP                             ; [+1]
      730 LOADNIL                          R36
      731 SETTABLEKS                       R36 R35 K108 ["Toggle"]
      733 JUMPIFNOT                        R9 ; [+10]
      734 GETUPVAL                         R36 7
      735 GETTABLEKS                       R36 R36 K54 ["createElement"]
      737 GETUPVAL                         R37 13
      738 GETUPVAL                         R38 1
      739 DUPTABLE                         R39 K130 [{["LayoutOrder"] = 2}]
      740 MOVE                             R40 R9
      741 CALL                             R38 2 -1
      742 CALL                             R36 -1 1
      743 JUMPIF                           R36 ; [+1]
      744 LOADNIL                          R36
      745 SETTABLEKS                       R36 R35 K19 ["LeftIcon"]
      747 JUMPIFNOT                        R10 ; [+39]
      748 GETTABLEKS                       R36 R0 K131 ["getPropertyCell"]
      750 DUPTABLE                         R37 K135 [{"ErrorMessage", "OnClick", "OnDoubleClick", "OnPressed", "Renderers", "Schema", "Selected", "Size", "Value"}]
      751 GETTABLEKS                       R38 R7 K23 ["ErrorMessage"]
      753 SETTABLEKS                       R38 R37 K23 ["ErrorMessage"]
      755 GETTABLEKS                       R38 R7 K60 ["OnClick"]
      757 SETTABLEKS                       R38 R37 K60 ["OnClick"]
      759 GETTABLEKS                       R38 R0 K136 ["onDoubleClick"]
      761 SETTABLEKS                       R38 R37 K132 ["OnDoubleClick"]
      763 GETTABLEKS                       R38 R0 K137 ["onPressed"]
      765 SETTABLEKS                       R38 R37 K133 ["OnPressed"]
      767 GETTABLEKS                       R38 R7 K134 ["Renderers"]
      769 SETTABLEKS                       R38 R37 K134 ["Renderers"]
      771 GETTABLEKS                       R38 R7 K20 ["Schema"]
      773 SETTABLEKS                       R38 R37 K20 ["Schema"]
      775 GETTABLEKS                       R38 R7 K78 ["Selected"]
      777 SETTABLEKS                       R38 R37 K78 ["Selected"]
      779 SETTABLEKS                       R25 R37 K38 ["Size"]
      781 GETTABLEKS                       R38 R7 K16 ["Value"]
      783 SETTABLEKS                       R38 R37 K16 ["Value"]
      785 CALL                             R36 1 1
      786 JUMP                             ; [+6]
      787 GETTABLEKS                       R36 R0 K138 ["getTextElement"]
      789 MOVE                             R37 R1
      790 MOVE                             R38 R8
      791 MOVE                             R39 R25
      792 CALL                             R36 3 1
      793 SETTABLEKS                       R36 R35 K93 ["Text"]
      795 CALL                             R32 3 1
      796 SETTABLEKS                       R32 R31 K44 ["Left"]
      798 JUMPIFNOT                        R27 ; [+65]
      799 GETUPVAL                         R32 7
      800 GETTABLEKS                       R32 R32 K54 ["createElement"]
      802 GETUPVAL                         R33 11
      803 GETUPVAL                         R35 0
      804 JUMPIFNOT                        R35 ; [+25]
      805 NEWTABLE                         R34 4 0
      807 GETIMPORT                        R35 K126 [Vector2.new]
      809 LOADN                            R36 1
      810 LOADK                            R37 K139 [0.5]
      811 CALL                             R35 2 1
      812 SETTABLEKS                       R35 R34 K140 ["AnchorPoint"]
      814 GETIMPORT                        R35 K75 [UDim2.new]
      816 LOADN                            R36 1
      817 GETUPVAL                         R38 6
      818 MINUS                            R37 R38
      819 LOADK                            R38 K139 [0.5]
      820 LOADN                            R39 0
      821 CALL                             R35 4 1
      822 SETTABLEKS                       R35 R34 K97 ["Position"]
      824 GETUPVAL                         R35 9
      825 GETTABLEKS                       R35 R35 K64 ["Tag"]
      827 LOADK                            R36 K141 ["X-RowM X-Fit X-Middle"]
      828 SETTABLE                         R36 R34 R35
      829 JUMP                             ; [+31]
      830 DUPTABLE                         R34 K142 [{"AnchorPoint", "AutomaticSize", "Layout", "Position", "Spacing"}]
      831 GETIMPORT                        R35 K126 [Vector2.new]
      833 LOADN                            R36 1
      834 LOADK                            R37 K139 [0.5]
      835 CALL                             R35 2 1
      836 SETTABLEKS                       R35 R34 K140 ["AnchorPoint"]
      838 GETIMPORT                        R35 K70 [Enum.AutomaticSize.XY]
      840 SETTABLEKS                       R35 R34 K66 ["AutomaticSize"]
      842 GETIMPORT                        R35 K106 [Enum.FillDirection.Horizontal]
      844 SETTABLEKS                       R35 R34 K99 ["Layout"]
      846 GETIMPORT                        R35 K75 [UDim2.new]
      848 LOADN                            R36 1
      849 GETTABLEKS                       R38 R14 K50 ["CellSpacing"]
      851 MINUS                            R37 R38
      852 LOADK                            R38 K139 [0.5]
      853 LOADN                            R39 0
      854 CALL                             R35 4 1
      855 SETTABLEKS                       R35 R34 K97 ["Position"]
      857 GETTABLEKS                       R35 R14 K50 ["CellSpacing"]
      859 SETTABLEKS                       R35 R34 K101 ["Spacing"]
      861 MOVE                             R35 R23
      862 CALL                             R32 3 1
      863 JUMP                             ; [+1]
      864 LOADNIL                          R32
      865 SETTABLEKS                       R32 R31 K45 ["Right"]
      867 CALL                             R28 3 -1
      868 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Styling"]
       30 GETTABLEKS                       R4 R4 K11 ["supportsStyleSheets"]
       32 GETTABLEKS                       R5 R1 K10 ["Styling"]
       34 GETTABLEKS                       R5 R5 K12 ["joinTags"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R7 R7 K13 ["Parent"]
       42 GETTABLEKS                       R7 R7 K14 ["styles"]
       44 CALL                             R6 1 1
       45 LOADK                            R9 K15 ["ArrowSize"]
       46 NAMECALL                         R7 R6 K16 ["GetAttribute"]
       48 CALL                             R7 2 1
       49 LOADK                            R10 K17 ["CellPadding"]
       50 NAMECALL                         R8 R6 K16 ["GetAttribute"]
       52 CALL                             R8 2 1
       53 LOADK                            R11 K18 ["Indent"]
       54 NAMECALL                         R9 R6 K16 ["GetAttribute"]
       56 CALL                             R9 2 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K6 ["Packages"]
       61 GETTABLEKS                       R11 R11 K19 ["Dash"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R10 K20 ["join"]
       66 GETTABLEKS                       R12 R1 K21 ["UI"]
       68 GETTABLEKS                       R13 R12 K22 ["IconButton"]
       70 GETTABLEKS                       R14 R12 K23 ["Image"]
       72 GETTABLEKS                       R15 R12 K24 ["Pane"]
       74 GETTABLEKS                       R16 R12 K25 ["PropertyCell"]
       76 GETTABLEKS                       R17 R12 K26 ["Tooltip"]
       78 GETTABLEKS                       R18 R12 K27 ["TextLabel"]
       80 GETTABLEKS                       R19 R12 K28 ["DEPRECATED_TextInput"]
       82 GETTABLEKS                       R20 R1 K29 ["Util"]
       84 GETTABLEKS                       R20 R20 K30 ["StyleModifier"]
       86 GETIMPORT                        R21 K32 [game]
       88 LOADK                            R23 K33 ["TweenService"]
       89 NAMECALL                         R21 R21 K34 ["GetService"]
       91 CALL                             R21 2 1
       92 GETIMPORT                        R22 K37 [TweenInfo.new]
       94 LOADK                            R23 K38 [0.1]
       95 GETIMPORT                        R24 K42 [Enum.EasingStyle.Linear]
       97 CALL                             R22 2 1
       98 GETIMPORT                        R23 K44 [Color3.new]
      100 LOADK                            R24 K45 [0.2]
      101 LOADK                            R25 K45 [0.2]
      102 LOADK                            R26 K46 [0.5]
      103 CALL                             R23 3 1
      104 GETTABLEKS                       R24 R2 K47 ["PureComponent"]
      106 LOADK                            R26 K48 ["TreeTableCell"]
      107 NAMECALL                         R24 R24 K49 ["extend"]
      109 CALL                             R24 2 1
      110 DUPCLOSURE                       R25 K50 [PROTO_13]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R16
      119 SETTABLEKS                       R25 R24 K51 ["init"]
      121 DUPCLOSURE                       R25 K52 [PROTO_14]
      122 SETTABLEKS                       R25 R24 K53 ["didMount"]
      124 DUPCLOSURE                       R25 K54 [PROTO_15]
      125 SETTABLEKS                       R25 R24 K55 ["willUpdate"]
      127 DUPCLOSURE                       R25 K56 [PROTO_16]
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R22
      130 SETTABLEKS                       R25 R24 K57 ["didUpdate"]
      132 DUPCLOSURE                       R25 K58 [PROTO_19]
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R14
      147 SETTABLEKS                       R25 R24 K59 ["render"]
      149 RETURN                           R24 1
