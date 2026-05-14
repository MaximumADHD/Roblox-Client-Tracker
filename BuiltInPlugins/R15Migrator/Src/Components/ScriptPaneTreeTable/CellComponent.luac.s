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
       15 DUPTABLE                         R5 K19 [{"ErrorMessage", "GetAutocompleteItems", "Item", "LayoutOrder", "OnMenuAction", "OnChanged", "OnClick", "OnDoubleClick", "OnPressed", "Renderers", "Schema", "Selected", "Size", "StyleModifier", "Value", "Disabled"}]
       16 GETTABLEKS                       R6 R0 K4 ["ErrorMessage"]
       18 SETTABLEKS                       R6 R5 K4 ["ErrorMessage"]
       20 GETTABLEKS                       R6 R1 K5 ["GetAutocompleteItems"]
       22 SETTABLEKS                       R6 R5 K5 ["GetAutocompleteItems"]
       24 GETTABLEKS                       R6 R0 K6 ["Item"]
       26 SETTABLEKS                       R6 R5 K6 ["Item"]
       28 LOADN                            R6 3
       29 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R6 R5 K8 ["OnMenuAction"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K20 ["onChanged"]
       38 SETTABLEKS                       R6 R5 K9 ["OnChanged"]
       40 GETTABLEKS                       R6 R0 K10 ["OnClick"]
       42 SETTABLEKS                       R6 R5 K10 ["OnClick"]
       44 GETTABLEKS                       R6 R0 K11 ["OnDoubleClick"]
       46 SETTABLEKS                       R6 R5 K11 ["OnDoubleClick"]
       48 GETTABLEKS                       R6 R0 K12 ["OnPressed"]
       50 SETTABLEKS                       R6 R5 K12 ["OnPressed"]
       52 SETTABLEKS                       R2 R5 K2 ["Renderers"]
       54 GETTABLEKS                       R6 R0 K13 ["Schema"]
       56 SETTABLEKS                       R6 R5 K13 ["Schema"]
       58 GETTABLEKS                       R6 R0 K14 ["Selected"]
       60 SETTABLEKS                       R6 R5 K14 ["Selected"]
       62 GETTABLEKS                       R6 R0 K15 ["Size"]
       64 SETTABLEKS                       R6 R5 K15 ["Size"]
       66 GETTABLEKS                       R6 R0 K16 ["StyleModifier"]
       68 SETTABLEKS                       R6 R5 K16 ["StyleModifier"]
       70 GETTABLEKS                       R6 R0 K17 ["Value"]
       72 SETTABLEKS                       R6 R5 K17 ["Value"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K0 ["props"]
       77 GETTABLEKS                       R6 R6 K21 ["Row"]
       79 GETTABLEKS                       R6 R6 K22 ["item"]
       81 GETTABLEKS                       R6 R6 K23 ["_disabled"]
       83 SETTABLEKS                       R6 R5 K18 ["Disabled"]
       85 CALL                             R3 2 -1
       86 RETURN                           R3 -1

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
        0 DUPTABLE                         R1 K1 [{"textOverflows"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["textOverflows"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onToggle"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["createRef"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K5 ["textRef"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["createRef"]
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K6 ["toggleRef"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R1 R0 K7 ["fetchCellContentsWidthIfOverflow"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K8 ["onAbsoluteSizeChanged"]
       33 NEWCLOSURE                       R1 P3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K9 ["onTextInputFocusLost"]
       37 NEWCLOSURE                       R1 P4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K10 ["onPressed"]
       41 NEWCLOSURE                       R1 P5
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K11 ["onDoubleClick"]
       45 NEWCLOSURE                       R1 P6
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U5
       50 SETTABLEKS                       R1 R0 K12 ["getTextElement"]
       52 DUPCLOSURE                       R1 K13 [PROTO_7]
       53 SETTABLEKS                       R1 R0 K14 ["getTextFromProps"]
       55 NEWCLOSURE                       R1 P8
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U7
       60 SETTABLEKS                       R1 R0 K15 ["getPropertyCell"]
       62 NEWCLOSURE                       R1 P9
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K16 ["onChanged"]
       66 DUPCLOSURE                       R1 K17 [PROTO_12]
       67 SETTABLEKS                       R1 R0 K18 ["defaultGetItemId"]
       69 GETTABLEKS                       R2 R0 K19 ["props"]
       71 GETTABLEKS                       R2 R2 K20 ["CellProps"]
       73 JUMPIFNOT                        R2 ; [+7]
       74 GETTABLEKS                       R1 R0 K19 ["props"]
       76 GETTABLEKS                       R1 R1 K20 ["CellProps"]
       78 GETTABLEKS                       R1 R1 K21 ["GetItemId"]
       80 JUMPIF                           R1 ; [+2]
       81 GETTABLEKS                       R1 R0 K18 ["defaultGetItemId"]
       83 SETTABLEKS                       R1 R0 K22 ["getItemId"]
       85 RETURN                           R0 0

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
       20 DIVRK                            R5 R9 K6 ["UDim"]
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
      268 JUMPIFNOTEQKS                    R24 K15 ["table"] ; [+111]
      270 GETTABLEKS                       R24 R7 K49 ["Actions"]
      272 JUMPIFNOT                        R24 ; [+107]
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
      341 JUMP                             ; [+33]
      342 DUPTABLE                         R32 K67 [{"AutomaticSize", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style", "TooltipText"}]
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
      368 LOADK                            R33 K65 ["Compact"]
      369 SETTABLEKS                       R33 R32 K27 ["Style"]
      371 GETTABLEKS                       R33 R28 K22 ["Tooltip"]
      373 SETTABLEKS                       R33 R32 K61 ["TooltipText"]
      375 CALL                             R30 2 1
      376 SETTABLE                         R30 R23 R29
      377 ADDK                             R22 R22 K71 [32]
      378 FORGLOOP                         R24 2 [inext] ; [-91]
      380 LOADN                            R24 0
      381 JUMPIFNOT                        R9 ; [+14]
      382 GETUPVAL                         R27 0
      383 JUMPIFNOT                        R27 ; [+2]
      384 GETUPVAL                         R26 6
      385 JUMP                             ; [+2]
      386 GETTABLEKS                       R26 R14 K50 ["CellSpacing"]
      388 GETTABLEKS                       R27 R9 K38 ["Size"]
      390 GETTABLEKS                       R27 R27 K72 ["X"]
      392 GETTABLEKS                       R27 R27 K73 ["Offset"]
      394 ADD                              R25 R26 R27
      395 ADD                              R24 R24 R25
      396 JUMPIFNOT                        R18 ; [+8]
      397 GETUPVAL                         R27 0
      398 JUMPIFNOT                        R27 ; [+2]
      399 GETUPVAL                         R26 6
      400 JUMP                             ; [+2]
      401 GETTABLEKS                       R26 R14 K50 ["CellSpacing"]
      403 ADD                              R25 R26 R16
      404 ADD                              R24 R24 R25
      405 GETIMPORT                        R25 K75 [UDim2.new]
      407 LOADN                            R26 1
      408 MINUS                            R27 R24
      409 LOADN                            R28 1
      410 LOADN                            R29 0
      411 CALL                             R25 4 1
      412 GETUPVAL                         R27 0
      413 JUMPIFNOT                        R27 ; [+23]
      414 GETUPVAL                         R26 10
      415 LOADK                            R27 K76 ["Component-TreeTableCell"]
      416 GETTABLEKS                       R29 R1 K77 ["StyleModifier"]
      418 GETUPVAL                         R30 2
      419 GETTABLEKS                       R30 R30 K78 ["Selected"]
      421 JUMPIFNOTEQ                      R29 R30 ; [+3]
      423 LOADK                            R28 K78 ["Selected"]
      424 JUMP                             ; [+6]
      425 GETTABLEKS                       R29 R1 K79 ["Emphasis"]
      427 JUMPIFNOT                        R29 ; [+2]
      428 LOADK                            R28 K80 ["Secondary"]
      429 JUMP                             ; [+1]
      430 LOADK                            R28 K10 ["Row"]
      431 GETUPVAL                         R30 9
      432 GETTABLEKS                       R30 R30 K64 ["Tag"]
      434 GETTABLE                         R29 R1 R30
      435 CALL                             R26 3 1
      436 JUMP                             ; [+1]
      437 LOADNIL                          R26
      438 MOVE                             R27 R23
      439 JUMPIFNOT                        R27 ; [+17]
      440 LOADB                            R27 1
      441 GETTABLEKS                       R28 R1 K77 ["StyleModifier"]
      443 GETUPVAL                         R29 2
      444 GETTABLEKS                       R29 R29 K33 ["Hover"]
      446 JUMPIFEQ                         R28 R29 ; [+10]
      448 GETTABLEKS                       R28 R1 K77 ["StyleModifier"]
      450 GETUPVAL                         R29 2
      451 GETTABLEKS                       R29 R29 K78 ["Selected"]
      453 JUMPIFEQ                         R28 R29 ; [+2]
      455 LOADB                            R27 0 +1
      456 LOADB                            R27 1
      457 GETUPVAL                         R28 7
      458 GETTABLEKS                       R28 R28 K54 ["createElement"]
      460 GETUPVAL                         R29 11
      461 GETUPVAL                         R31 0
      462 JUMPIFNOT                        R31 ; [+29]
      463 NEWTABLE                         R30 4 0
      465 LOADB                            R31 1
      466 SETTABLEKS                       R31 R30 K81 ["ClipsDescendants"]
      468 GETIMPORT                        R31 K75 [UDim2.new]
      470 GETTABLEKS                       R32 R4 K82 ["Scale"]
      472 GETTABLEKS                       R33 R4 K73 ["Offset"]
      474 LOADN                            R34 1
      475 LOADN                            R35 0
      476 CALL                             R31 4 1
      477 SETTABLEKS                       R31 R30 K38 ["Size"]
      479 GETUPVAL                         R31 7
      480 GETTABLEKS                       R31 R31 K83 ["Change"]
      482 GETTABLEKS                       R31 R31 K84 ["AbsoluteSize"]
      484 GETTABLEKS                       R32 R0 K85 ["onAbsoluteSizeChanged"]
      486 SETTABLE                         R32 R30 R31
      487 GETUPVAL                         R31 9
      488 GETTABLEKS                       R31 R31 K64 ["Tag"]
      490 SETTABLE                         R26 R30 R31
      491 JUMP                             ; [+36]
      492 NEWTABLE                         R30 8 0
      494 LOADK                            R31 K86 ["Box"]
      495 SETTABLEKS                       R31 R30 K27 ["Style"]
      497 SETTABLEKS                       R15 R30 K87 ["BackgroundColor3"]
      499 LOADN                            R31 1
      500 SETTABLEKS                       R31 R30 K88 ["BorderSizePixel"]
      502 GETTABLEKS                       R31 R14 K89 ["Border"]
      504 SETTABLEKS                       R31 R30 K90 ["BorderColor3"]
      506 GETIMPORT                        R31 K75 [UDim2.new]
      508 GETTABLEKS                       R32 R4 K82 ["Scale"]
      510 GETTABLEKS                       R33 R4 K73 ["Offset"]
      512 LOADN                            R34 1
      513 LOADN                            R35 0
      514 CALL                             R31 4 1
      515 SETTABLEKS                       R31 R30 K38 ["Size"]
      517 GETUPVAL                         R31 7
      518 GETTABLEKS                       R31 R31 K83 ["Change"]
      520 GETTABLEKS                       R31 R31 K84 ["AbsoluteSize"]
      522 GETTABLEKS                       R32 R0 K85 ["onAbsoluteSizeChanged"]
      524 SETTABLE                         R32 R30 R31
      525 LOADB                            R31 1
      526 SETTABLEKS                       R31 R30 K81 ["ClipsDescendants"]
      528 DUPTABLE                         R31 K91 [{"Tooltip", "Left", "Right"}]
      529 MOVE                             R32 R12
      530 JUMPIFNOT                        R32 ; [+21]
      531 GETUPVAL                         R32 7
      532 GETTABLEKS                       R32 R32 K54 ["createElement"]
      534 GETUPVAL                         R33 12
      535 DUPTABLE                         R34 K95 [{"MaxWidth", "Text", "TextXAlignment"}]
      536 JUMPIFNOT                        R14 ; [+5]
      537 GETTABLEKS                       R35 R14 K22 ["Tooltip"]
      539 GETTABLEKS                       R35 R35 K92 ["MaxWidth"]
      541 JUMP                             ; [+1]
      542 LOADNIL                          R35
      543 SETTABLEKS                       R35 R34 K92 ["MaxWidth"]
      545 SETTABLEKS                       R11 R34 K93 ["Text"]
      547 GETIMPORT                        R35 K96 [Enum.TextXAlignment.Left]
      549 SETTABLEKS                       R35 R34 K94 ["TextXAlignment"]
      551 CALL                             R32 2 1
      552 SETTABLEKS                       R32 R31 K22 ["Tooltip"]
      554 GETUPVAL                         R32 7
      555 GETTABLEKS                       R32 R32 K54 ["createElement"]
      557 GETUPVAL                         R33 11
      558 GETUPVAL                         R35 0
      559 JUMPIFNOT                        R35 ; [+34]
      560 NEWTABLE                         R34 4 0
      562 GETTABLEKS                       R35 R1 K2 ["ColumnIndex"]
      564 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      566 GETIMPORT                        R35 K75 [UDim2.new]
      568 LOADN                            R36 1
      569 JUMPIFNOT                        R27 ; [+3]
      570 MINUS                            R38 R22
      571 SUB                              R37 R38 R17
      572 JUMP                             ; [+1]
      573 MINUS                            R37 R17
      574 LOADN                            R38 1
      575 LOADN                            R39 0
      576 CALL                             R35 4 1
      577 SETTABLEKS                       R35 R34 K38 ["Size"]
      579 GETIMPORT                        R35 K75 [UDim2.new]
      581 LOADN                            R36 0
      582 MOVE                             R37 R17
      583 LOADN                            R38 0
      584 LOADN                            R39 0
      585 CALL                             R35 4 1
      586 SETTABLEKS                       R35 R34 K97 ["Position"]
      588 GETUPVAL                         R35 9
      589 GETTABLEKS                       R35 R35 K64 ["Tag"]
      591 LOADK                            R36 K98 ["Left X-RowM X-Middle"]
      592 SETTABLE                         R36 R34 R35
      593 JUMP                             ; [+31]
      594 DUPTABLE                         R34 K103 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "Size"}]
      595 GETIMPORT                        R35 K106 [Enum.FillDirection.Horizontal]
      597 SETTABLEKS                       R35 R34 K99 ["Layout"]
      599 GETTABLEKS                       R35 R1 K2 ["ColumnIndex"]
      601 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      603 SETTABLEKS                       R20 R34 K100 ["Padding"]
      605 GETTABLEKS                       R35 R14 K50 ["CellSpacing"]
      607 SETTABLEKS                       R35 R34 K101 ["Spacing"]
      609 GETIMPORT                        R35 K107 [Enum.HorizontalAlignment.Left]
      611 SETTABLEKS                       R35 R34 K102 ["HorizontalAlignment"]
      613 GETIMPORT                        R35 K75 [UDim2.new]
      615 LOADN                            R36 1
      616 JUMPIFNOT                        R27 ; [+2]
      617 MINUS                            R37 R22
      618 JUMP                             ; [+1]
      619 LOADN                            R37 0
      620 LOADN                            R38 1
      621 LOADN                            R39 0
      622 CALL                             R35 4 1
      623 SETTABLEKS                       R35 R34 K38 ["Size"]
      625 DUPTABLE                         R35 K109 [{"Toggle", "LeftIcon", "Text"}]
      626 JUMPIFNOT                        R18 ; [+109]
      627 GETUPVAL                         R36 7
      628 GETTABLEKS                       R36 R36 K54 ["createElement"]
      630 GETUPVAL                         R37 11
      631 DUPTABLE                         R38 K110 [{"AutomaticSize", "LayoutOrder"}]
      632 GETIMPORT                        R39 K70 [Enum.AutomaticSize.XY]
      634 SETTABLEKS                       R39 R38 K66 ["AutomaticSize"]
      636 LOADN                            R39 1
      637 SETTABLEKS                       R39 R38 K57 ["LayoutOrder"]
      639 DUPTABLE                         R39 K111 [{"Icon"}]
      640 GETUPVAL                         R40 7
      641 GETTABLEKS                       R40 R40 K54 ["createElement"]
      643 LOADK                            R41 K112 ["ImageButton"]
      644 GETUPVAL                         R43 0
      645 JUMPIFNOT                        R43 ; [+28]
      646 NEWTABLE                         R42 4 0
      648 GETUPVAL                         R43 9
      649 GETTABLEKS                       R43 R43 K64 ["Tag"]
      651 GETUPVAL                         R44 10
      652 LOADK                            R45 K37 ["Arrow"]
      653 JUMPIF                           R21 ; [+2]
      654 LOADK                            R46 K113 ["Invisible"]
      655 JUMP                             ; [+1]
      656 LOADNIL                          R46
      657 CALL                             R44 2 1
      658 SETTABLE                         R44 R42 R43
      659 GETUPVAL                         R43 7
      660 GETTABLEKS                       R43 R43 K114 ["Ref"]
      662 GETTABLEKS                       R44 R0 K115 ["toggleRef"]
      664 SETTABLE                         R44 R42 R43
      665 GETUPVAL                         R43 7
      666 GETTABLEKS                       R43 R43 K116 ["Event"]
      668 GETTABLEKS                       R43 R43 K117 ["Activated"]
      670 GETTABLEKS                       R44 R0 K118 ["onToggle"]
      672 SETTABLE                         R44 R42 R43
      673 JUMP                             ; [+57]
      674 NEWTABLE                         R42 16 0
      676 GETIMPORT                        R43 K120 [UDim2.fromOffset]
      678 MOVE                             R44 R16
      679 MOVE                             R45 R16
      680 CALL                             R43 2 1
      681 SETTABLEKS                       R43 R42 K38 ["Size"]
      683 LOADN                            R43 1
      684 SETTABLEKS                       R43 R42 K121 ["BackgroundTransparency"]
      686 JUMPIF                           R21 ; [+2]
      687 LOADN                            R43 1
      688 JUMP                             ; [+1]
      689 LOADNIL                          R43
      690 SETTABLEKS                       R43 R42 K122 ["ImageTransparency"]
      692 GETTABLEKS                       R43 R14 K37 ["Arrow"]
      694 GETTABLEKS                       R43 R43 K59 ["Image"]
      696 SETTABLEKS                       R43 R42 K59 ["Image"]
      698 GETTABLEKS                       R43 R14 K37 ["Arrow"]
      700 GETTABLEKS                       R43 R43 K123 ["Color"]
      702 SETTABLEKS                       R43 R42 K124 ["ImageColor3"]
      704 GETIMPORT                        R43 K126 [Vector2.new]
      706 MOVE                             R44 R16
      707 MOVE                             R45 R16
      708 CALL                             R43 2 1
      709 SETTABLEKS                       R43 R42 K127 ["ImageRectSize"]
      711 GETTABLEKS                       R43 R14 K37 ["Arrow"]
      713 GETTABLEKS                       R43 R43 K128 ["CollapsedOffset"]
      715 SETTABLEKS                       R43 R42 K129 ["ImageRectOffset"]
      717 GETUPVAL                         R43 7
      718 GETTABLEKS                       R43 R43 K114 ["Ref"]
      720 GETTABLEKS                       R44 R0 K115 ["toggleRef"]
      722 SETTABLE                         R44 R42 R43
      723 GETUPVAL                         R43 7
      724 GETTABLEKS                       R43 R43 K116 ["Event"]
      726 GETTABLEKS                       R43 R43 K117 ["Activated"]
      728 GETTABLEKS                       R44 R0 K118 ["onToggle"]
      730 SETTABLE                         R44 R42 R43
      731 CALL                             R40 2 1
      732 SETTABLEKS                       R40 R39 K58 ["Icon"]
      734 CALL                             R36 3 1
      735 JUMP                             ; [+1]
      736 LOADNIL                          R36
      737 SETTABLEKS                       R36 R35 K108 ["Toggle"]
      739 JUMPIFNOT                        R9 ; [+13]
      740 GETUPVAL                         R36 7
      741 GETTABLEKS                       R36 R36 K54 ["createElement"]
      743 GETUPVAL                         R37 13
      744 GETUPVAL                         R38 1
      745 DUPTABLE                         R39 K130 [{"LayoutOrder"}]
      746 LOADN                            R40 2
      747 SETTABLEKS                       R40 R39 K57 ["LayoutOrder"]
      749 MOVE                             R40 R9
      750 CALL                             R38 2 -1
      751 CALL                             R36 -1 1
      752 JUMPIF                           R36 ; [+1]
      753 LOADNIL                          R36
      754 SETTABLEKS                       R36 R35 K19 ["LeftIcon"]
      756 JUMPIFNOT                        R10 ; [+39]
      757 GETTABLEKS                       R36 R0 K131 ["getPropertyCell"]
      759 DUPTABLE                         R37 K135 [{"ErrorMessage", "OnClick", "OnDoubleClick", "OnPressed", "Renderers", "Schema", "Selected", "Size", "Value"}]
      760 GETTABLEKS                       R38 R7 K23 ["ErrorMessage"]
      762 SETTABLEKS                       R38 R37 K23 ["ErrorMessage"]
      764 GETTABLEKS                       R38 R7 K60 ["OnClick"]
      766 SETTABLEKS                       R38 R37 K60 ["OnClick"]
      768 GETTABLEKS                       R38 R0 K136 ["onDoubleClick"]
      770 SETTABLEKS                       R38 R37 K132 ["OnDoubleClick"]
      772 GETTABLEKS                       R38 R0 K137 ["onPressed"]
      774 SETTABLEKS                       R38 R37 K133 ["OnPressed"]
      776 GETTABLEKS                       R38 R7 K134 ["Renderers"]
      778 SETTABLEKS                       R38 R37 K134 ["Renderers"]
      780 GETTABLEKS                       R38 R7 K20 ["Schema"]
      782 SETTABLEKS                       R38 R37 K20 ["Schema"]
      784 GETTABLEKS                       R38 R7 K78 ["Selected"]
      786 SETTABLEKS                       R38 R37 K78 ["Selected"]
      788 SETTABLEKS                       R25 R37 K38 ["Size"]
      790 GETTABLEKS                       R38 R7 K16 ["Value"]
      792 SETTABLEKS                       R38 R37 K16 ["Value"]
      794 CALL                             R36 1 1
      795 JUMP                             ; [+6]
      796 GETTABLEKS                       R36 R0 K138 ["getTextElement"]
      798 MOVE                             R37 R1
      799 MOVE                             R38 R8
      800 MOVE                             R39 R25
      801 CALL                             R36 3 1
      802 SETTABLEKS                       R36 R35 K93 ["Text"]
      804 CALL                             R32 3 1
      805 SETTABLEKS                       R32 R31 K44 ["Left"]
      807 JUMPIFNOT                        R27 ; [+65]
      808 GETUPVAL                         R32 7
      809 GETTABLEKS                       R32 R32 K54 ["createElement"]
      811 GETUPVAL                         R33 11
      812 GETUPVAL                         R35 0
      813 JUMPIFNOT                        R35 ; [+25]
      814 NEWTABLE                         R34 4 0
      816 GETIMPORT                        R35 K126 [Vector2.new]
      818 LOADN                            R36 1
      819 LOADK                            R37 K139 [0.5]
      820 CALL                             R35 2 1
      821 SETTABLEKS                       R35 R34 K140 ["AnchorPoint"]
      823 GETIMPORT                        R35 K75 [UDim2.new]
      825 LOADN                            R36 1
      826 GETUPVAL                         R38 6
      827 MINUS                            R37 R38
      828 LOADK                            R38 K139 [0.5]
      829 LOADN                            R39 0
      830 CALL                             R35 4 1
      831 SETTABLEKS                       R35 R34 K97 ["Position"]
      833 GETUPVAL                         R35 9
      834 GETTABLEKS                       R35 R35 K64 ["Tag"]
      836 LOADK                            R36 K141 ["X-RowM X-Fit X-Middle"]
      837 SETTABLE                         R36 R34 R35
      838 JUMP                             ; [+31]
      839 DUPTABLE                         R34 K142 [{"AnchorPoint", "AutomaticSize", "Layout", "Position", "Spacing"}]
      840 GETIMPORT                        R35 K126 [Vector2.new]
      842 LOADN                            R36 1
      843 LOADK                            R37 K139 [0.5]
      844 CALL                             R35 2 1
      845 SETTABLEKS                       R35 R34 K140 ["AnchorPoint"]
      847 GETIMPORT                        R35 K70 [Enum.AutomaticSize.XY]
      849 SETTABLEKS                       R35 R34 K66 ["AutomaticSize"]
      851 GETIMPORT                        R35 K106 [Enum.FillDirection.Horizontal]
      853 SETTABLEKS                       R35 R34 K99 ["Layout"]
      855 GETIMPORT                        R35 K75 [UDim2.new]
      857 LOADN                            R36 1
      858 GETTABLEKS                       R38 R14 K50 ["CellSpacing"]
      860 MINUS                            R37 R38
      861 LOADK                            R38 K139 [0.5]
      862 LOADN                            R39 0
      863 CALL                             R35 4 1
      864 SETTABLEKS                       R35 R34 K97 ["Position"]
      866 GETTABLEKS                       R35 R14 K50 ["CellSpacing"]
      868 SETTABLEKS                       R35 R34 K101 ["Spacing"]
      870 MOVE                             R35 R23
      871 CALL                             R32 3 1
      872 JUMP                             ; [+1]
      873 LOADNIL                          R32
      874 SETTABLEKS                       R32 R31 K45 ["Right"]
      876 CALL                             R28 3 -1
      877 RETURN                           R28 -1

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
