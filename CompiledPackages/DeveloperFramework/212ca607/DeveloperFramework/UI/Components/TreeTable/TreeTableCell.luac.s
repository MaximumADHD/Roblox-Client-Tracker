PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["CellProps"]
        5 GETTABLEKS                       R1 R0 K2 ["OnToggle"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K3 ["Row"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R1
        6 JUMP                             ; [+8]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["Style"]
       10 GETTABLEKS                       R4 R0 K2 ["CellProps"]
       12 GETTABLEKS                       R3 R4 K3 ["CellStyle"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 JUMPIFNOT                        R2 ; [+15]
       17 GETTABLEKS                       R2 R0 K4 ["Variant"]
       19 JUMPIFNOTEQKS                    R2 K5 ["compact"] ; [+10]
       21 GETTABLEKS                       R2 R0 K6 ["ColumnIndex"]
       23 LOADN                            R3 1
       24 JUMPIFNOTLT                      R3 R2 ; [+3]
       26 LOADN                            R2 0
       27 RETURN                           R2 1
       28 GETUPVAL                         R2 3
       29 RETURN                           R2 1
       30 GETUPVAL                         R2 4
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R1 K7 ["Indent"]
       34 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R1
        6 JUMP                             ; [+8]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["Style"]
       10 GETTABLEKS                       R4 R0 K2 ["CellProps"]
       12 GETTABLEKS                       R3 R4 K3 ["CellStyle"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 JUMPIFNOT                        R2 ; [+8]
       17 GETTABLEKS                       R2 R0 K4 ["Variant"]
       19 JUMPIFNOTEQKS                    R2 K5 ["compact"] ; [+3]
       21 GETUPVAL                         R2 3
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 4
       24 RETURN                           R2 1
       25 GETTABLEKS                       R2 R1 K6 ["CellSpacing"]
       27 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["textOverflows"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["getCellPadding"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["getIndent"]
       13 CALL                             R2 0 1
       14 ADD                              R0 R1 R2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K4 ["textRef"]
       18 GETTABLEKS                       R4 R5 K5 ["current"]
       20 GETTABLEKS                       R3 R4 K6 ["AbsoluteSize"]
       22 GETTABLEKS                       R2 R3 K7 ["X"]
       24 ADD                              R1 R2 R0
       25 RETURN                           R1 1
       26 LOADN                            R0 0
       27 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["textRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+16]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"textOverflows"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["textRef"]
       12 NAMECALL                         R5 R5 K1 ["getValue"]
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R4 R5 K4 ["TextFits"]
       17 NOT                              R3 R4
       18 SETTABLEKS                       R3 R2 K2 ["textOverflows"]
       20 NAMECALL                         R0 R0 K5 ["setState"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R0 R1 K6 ["props"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["textRef"]
       29 GETTABLEKS                       R1 R2 K7 ["current"]
       31 JUMPIFNOT                        R1 ; [+14]
       32 GETTABLEKS                       R1 R0 K8 ["SetCellContentsWidth"]
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETTABLEKS                       R1 R0 K8 ["SetCellContentsWidth"]
       37 GETTABLEKS                       R2 R0 K9 ["ColumnIndex"]
       39 GETTABLEKS                       R3 R0 K10 ["RowIndex"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K11 ["fetchCellContentsWidthIfOverflow"]
       44 CALL                             R4 0 -1
       45 CALL                             R1 -1 0
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R2 K1 ["CellProps"]
        5 GETTABLEKS                       R3 R4 K2 ["OnFocusLost"]
        7 JUMPIFNOT                        R3 ; [+8]
        8 MOVE                             R4 R3
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 GETTABLEKS                       R7 R2 K3 ["Row"]
       13 GETTABLEKS                       R8 R2 K4 ["ColumnIndex"]
       15 CALL                             R4 4 0
       16 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["props"]
        4 GETTABLEKS                       R2 R0 K1 ["CellProps"]
        6 GETTABLEKS                       R1 R2 K2 ["OnCellPressed"]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R2 R0 K1 ["CellProps"]
       11 GETTABLEKS                       R1 R2 K2 ["OnCellPressed"]
       13 GETTABLEKS                       R4 R0 K3 ["Row"]
       15 GETTABLEKS                       R3 R4 K4 ["item"]
       17 GETTABLEKS                       R2 R3 K5 ["Path"]
       19 GETTABLEKS                       R3 R0 K6 ["ColumnIndex"]
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["props"]
        4 GETTABLEKS                       R2 R0 K1 ["CellProps"]
        6 GETTABLEKS                       R1 R2 K2 ["OnCellDoubleClick"]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R2 R0 K1 ["CellProps"]
       11 GETTABLEKS                       R1 R2 K2 ["OnCellDoubleClick"]
       13 GETTABLEKS                       R4 R0 K3 ["Row"]
       15 GETTABLEKS                       R3 R4 K4 ["item"]
       17 GETTABLEKS                       R2 R3 K5 ["Path"]
       19 GETTABLEKS                       R3 R0 K6 ["ColumnIndex"]
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_8:
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
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K6 ["createElement"]
       22 GETUPVAL                         R8 1
       23 NEWTABLE                         R9 8 0
       25 GETIMPORT                        R10 K10 [Enum.AutomaticSize.XY]
       27 SETTABLEKS                       R10 R9 K8 ["AutomaticSize"]
       29 LOADN                            R10 3
       30 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R10 R11 K12 ["onTextInputFocusLost"]
       35 SETTABLEKS                       R10 R9 K13 ["OnFocusLost"]
       37 SETTABLEKS                       R2 R9 K14 ["Size"]
       39 SETTABLEKS                       R1 R9 K15 ["Text"]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R10 R11 K16 ["Ref"]
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R11 R12 K17 ["textRef"]
       47 SETTABLE                         R11 R9 R10
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
       50 JUMPIFNOT                        R1 ; [+39]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K6 ["createElement"]
       54 GETUPVAL                         R8 3
       55 GETUPVAL                         R9 4
       56 NEWTABLE                         R10 8 0
       58 LOADN                            R11 3
       59 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       61 SETTABLEKS                       R2 R10 K14 ["Size"]
       63 SETTABLEKS                       R1 R10 K15 ["Text"]
       65 GETIMPORT                        R11 K20 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R11 R10 K18 ["TextXAlignment"]
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R11 R12 K16 ["Ref"]
       72 GETUPVAL                         R13 2
       73 GETTABLEKS                       R12 R13 K17 ["textRef"]
       75 SETTABLE                         R12 R10 R11
       76 GETUPVAL                         R12 5
       77 JUMPIFNOT                        R12 ; [+8]
       78 NEWTABLE                         R11 1 0
       80 GETUPVAL                         R13 6
       81 GETTABLEKS                       R12 R13 K21 ["Tag"]
       83 LOADK                            R13 K22 ["Component-TreeTableCellText"]
       84 SETTABLE                         R13 R11 R12
       85 JUMP                             ; [+1]
       86 LOADNIL                          R11
       87 CALL                             R9 2 -1
       88 CALL                             R7 -1 1
       89 JUMPIF                           R7 ; [+1]
       90 LOADNIL                          R7
       91 RETURN                           R7 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["CellProps"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R1 K2 ["Renderers"]
        8 GETTABLEKS                       R4 R0 K2 ["Renderers"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["createElement"]
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K17 [{"ErrorMessage", "GetAutocompleteItems", "Item", "LayoutOrder", "OnChanged", "OnClick", "OnDoubleClick", "OnPressed", "Renderers", "Schema", "Selected", "Size", "StyleModifier", "Value"}]
       16 GETTABLEKS                       R6 R0 K4 ["ErrorMessage"]
       18 SETTABLEKS                       R6 R5 K4 ["ErrorMessage"]
       20 GETTABLEKS                       R6 R1 K5 ["GetAutocompleteItems"]
       22 SETTABLEKS                       R6 R5 K5 ["GetAutocompleteItems"]
       24 GETTABLEKS                       R6 R0 K6 ["Item"]
       26 SETTABLEKS                       R6 R5 K6 ["Item"]
       28 LOADN                            R6 3
       29 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K18 ["onChanged"]
       34 SETTABLEKS                       R6 R5 K8 ["OnChanged"]
       36 GETTABLEKS                       R6 R0 K9 ["OnClick"]
       38 SETTABLEKS                       R6 R5 K9 ["OnClick"]
       40 GETTABLEKS                       R6 R0 K10 ["OnDoubleClick"]
       42 SETTABLEKS                       R6 R5 K10 ["OnDoubleClick"]
       44 GETTABLEKS                       R6 R0 K11 ["OnPressed"]
       46 SETTABLEKS                       R6 R5 K11 ["OnPressed"]
       48 SETTABLEKS                       R2 R5 K2 ["Renderers"]
       50 GETTABLEKS                       R6 R0 K12 ["Schema"]
       52 SETTABLEKS                       R6 R5 K12 ["Schema"]
       54 GETTABLEKS                       R6 R0 K13 ["Selected"]
       56 SETTABLEKS                       R6 R5 K13 ["Selected"]
       58 GETTABLEKS                       R6 R0 K14 ["Size"]
       60 SETTABLEKS                       R6 R5 K14 ["Size"]
       62 GETTABLEKS                       R6 R0 K15 ["StyleModifier"]
       64 SETTABLEKS                       R6 R5 K15 ["StyleModifier"]
       66 GETTABLEKS                       R6 R0 K16 ["Value"]
       68 SETTABLEKS                       R6 R5 K16 ["Value"]
       70 CALL                             R3 2 -1
       71 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["CellProps"]
        5 GETTABLEKS                       R1 R2 K2 ["OnCellEdited"]
        7 JUMPIFNOT                        R1 ; [+23]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["props"]
       11 GETTABLEKS                       R2 R3 K1 ["CellProps"]
       13 GETTABLEKS                       R1 R2 K2 ["OnCellEdited"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K0 ["props"]
       19 GETTABLEKS                       R5 R6 K3 ["Row"]
       21 GETTABLEKS                       R4 R5 K4 ["item"]
       23 GETTABLEKS                       R3 R4 K5 ["Path"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K0 ["props"]
       28 GETTABLEKS                       R4 R5 K6 ["ColumnIndex"]
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
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["createRef"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K5 ["textRef"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K4 ["createRef"]
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K6 ["toggleRef"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R1 R0 K7 ["getIndent"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 SETTABLEKS                       R1 R0 K8 ["getCellPadding"]
       38 NEWCLOSURE                       R1 P3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K9 ["fetchCellContentsWidthIfOverflow"]
       42 NEWCLOSURE                       R1 P4
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K10 ["onAbsoluteSizeChanged"]
       46 NEWCLOSURE                       R1 P5
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K11 ["onTextInputFocusLost"]
       50 NEWCLOSURE                       R1 P6
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K12 ["onPressed"]
       54 NEWCLOSURE                       R1 P7
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K13 ["onDoubleClick"]
       58 NEWCLOSURE                       R1 P8
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U9
       66 SETTABLEKS                       R1 R0 K14 ["getTextElement"]
       68 DUPCLOSURE                       R1 K15 [PROTO_9]
       69 SETTABLEKS                       R1 R0 K16 ["getTextFromProps"]
       71 NEWCLOSURE                       R1 P10
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          UPVAL U10
       76 SETTABLEKS                       R1 R0 K17 ["getPropertyCell"]
       78 NEWCLOSURE                       R1 P11
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R1 R0 K18 ["onChanged"]
       82 DUPCLOSURE                       R1 K19 [PROTO_12]
       83 SETTABLEKS                       R1 R0 K20 ["defaultGetItemId"]
       85 GETTABLEKS                       R3 R0 K21 ["props"]
       87 GETTABLEKS                       R2 R3 K22 ["CellProps"]
       89 JUMPIFNOT                        R2 ; [+7]
       90 GETTABLEKS                       R3 R0 K21 ["props"]
       92 GETTABLEKS                       R2 R3 K22 ["CellProps"]
       94 GETTABLEKS                       R1 R2 K23 ["GetItemId"]
       96 JUMPIF                           R1 ; [+2]
       97 GETTABLEKS                       R1 R0 K20 ["defaultGetItemId"]
       99 SETTABLEKS                       R1 R0 K24 ["getItemId"]
      101 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["getItemId"]
        4 GETTABLEKS                       R4 R1 K2 ["Row"]
        6 GETTABLEKS                       R3 R4 K3 ["item"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R5 R1 K4 ["CellProps"]
       11 GETTABLEKS                       R4 R5 K5 ["Expansion"]
       13 GETTABLE                         R3 R4 R2
       14 GETTABLEKS                       R5 R0 K6 ["toggleRef"]
       16 GETTABLEKS                       R4 R5 K7 ["current"]
       18 JUMPIFNOT                        R4 ; [+8]
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETTABLEKS                       R5 R0 K6 ["toggleRef"]
       22 GETTABLEKS                       R4 R5 K7 ["current"]
       24 LOADN                            R5 90
       25 SETTABLEKS                       R5 R4 K8 ["Rotation"]
       27 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["CellProps"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["CellProps"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+21]
        8 GETTABLEKS                       R2 R1 K0 ["CellProps"]
       10 JUMPIFNOT                        R2 ; [+30]
       11 GETTABLEKS                       R3 R0 K1 ["props"]
       13 GETTABLEKS                       R2 R3 K0 ["CellProps"]
       15 JUMPIFNOT                        R2 ; [+25]
       16 GETTABLEKS                       R3 R1 K0 ["CellProps"]
       18 GETTABLEKS                       R2 R3 K2 ["GetItemId"]
       20 GETTABLEKS                       R5 R0 K1 ["props"]
       22 GETTABLEKS                       R4 R5 K0 ["CellProps"]
       24 GETTABLEKS                       R3 R4 K2 ["GetItemId"]
       26 JUMPIFEQ                         R2 R3 ; [+14]
       28 JUMPIFNOT                        R1 ; [+8]
       29 GETTABLEKS                       R3 R1 K0 ["CellProps"]
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETTABLEKS                       R3 R1 K0 ["CellProps"]
       34 GETTABLEKS                       R2 R3 K2 ["GetItemId"]
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
       33 GETTABLEKS                       R5 R2 K7 ["Row"]
       35 GETTABLEKS                       R4 R5 K8 ["item"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R6 R2 K9 ["CellProps"]
       40 GETTABLEKS                       R5 R6 K10 ["Expansion"]
       42 GETTABLE                         R4 R5 R3
       43 GETTABLEKS                       R5 R0 K11 ["toggleTween"]
       45 JUMPIFNOT                        R5 ; [+5]
       46 GETTABLEKS                       R5 R0 K11 ["toggleTween"]
       48 NAMECALL                         R5 R5 K12 ["Pause"]
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R6 R0 K13 ["toggleRef"]
       53 GETTABLEKS                       R5 R6 K14 ["current"]
       55 JUMPIFNOT                        R5 ; [+40]
       56 JUMPIFNOT                        R4 ; [+2]
       57 LOADN                            R5 90
       58 JUMP                             ; [+1]
       59 LOADN                            R5 0
       60 GETTABLEKS                       R7 R1 K7 ["Row"]
       62 GETTABLEKS                       R6 R7 K8 ["item"]
       64 GETTABLEKS                       R8 R2 K7 ["Row"]
       66 GETTABLEKS                       R7 R8 K8 ["item"]
       68 JUMPIFNOTEQ                      R6 R7 ; [+21]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R9 R0 K13 ["toggleRef"]
       73 GETTABLEKS                       R8 R9 K14 ["current"]
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
       90 GETTABLEKS                       R7 R0 K13 ["toggleRef"]
       92 GETTABLEKS                       R6 R7 K14 ["current"]
       94 SETTABLEKS                       R5 R6 K15 ["Rotation"]
       96 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnCellAction"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnCellAction"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["Id"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["item"]
       13 GETTABLEKS                       R2 R3 K3 ["Path"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K4 ["ColumnIndex"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnCellAction"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnCellAction"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["Id"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["item"]
       13 GETTABLEKS                       R2 R3 K3 ["Path"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K4 ["ColumnIndex"]
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
       32 LOADNIL                          R10
       33 LOADB                            R11 0
       34 FASTCALL1                        TYPEOF R7 ; [+3]
       35 MOVE                             R13 R7
       36 GETIMPORT                        R12 K14 [typeof]
       38 CALL                             R12 1 1
       39 JUMPIFNOTEQKS                    R12 K15 ["table"] ; [+17]
       41 GETTABLEKS                       R13 R7 K16 ["Value"]
       43 FASTCALL1                        TOSTRING R13 ; [+2]
       44 GETIMPORT                        R12 K18 [tostring]
       46 CALL                             R12 1 1
       47 MOVE                             R8 R12
       48 GETTABLEKS                       R9 R7 K19 ["LeftIcon"]
       50 GETTABLEKS                       R10 R7 K20 ["Shimmer"]
       52 GETTABLEKS                       R12 R7 K21 ["Schema"]
       54 JUMPIFNOT                        R12 ; [+8]
       55 LOADB                            R11 1
       56 JUMP                             ; [+6]
       57 FASTCALL1                        TOSTRING R7 ; [+3]
       58 MOVE                             R13 R7
       59 GETIMPORT                        R12 K18 [tostring]
       61 CALL                             R12 1 1
       62 MOVE                             R8 R12
       63 LOADNIL                          R12
       64 LOADNIL                          R13
       65 LOADNIL                          R14
       66 FASTCALL1                        TYPEOF R7 ; [+3]
       67 MOVE                             R16 R7
       68 GETIMPORT                        R15 K14 [typeof]
       70 CALL                             R15 1 1
       71 JUMPIFNOTEQKS                    R15 K15 ["table"] ; [+16]
       73 GETTABLEKS                       R15 R1 K22 ["Tooltip"]
       75 JUMPIF                           R15 ; [+4]
       76 GETTABLEKS                       R15 R7 K23 ["ErrorMessage"]
       78 JUMPIF                           R15 ; [+1]
       79 MOVE                             R15 R8
       80 MOVE                             R12 R15
       81 GETTABLEKS                       R15 R7 K23 ["ErrorMessage"]
       83 JUMPIFEQ                         R12 R15 ; [+2]
       85 LOADB                            R14 0 +1
       86 LOADB                            R14 1
       87 JUMP                             ; [+3]
       88 GETTABLEKS                       R15 R1 K22 ["Tooltip"]
       90 OR                               R12 R15 R8
       91 LOADB                            R15 0
       92 JUMPIFEQKNIL                     R12 ; [+14]
       94 LOADB                            R15 0
       95 JUMPIFEQKS                       R12 K24 [""] ; [+11]
       97 GETTABLEKS                       R17 R0 K25 ["state"]
       99 GETTABLEKS                       R16 R17 K26 ["textOverflows"]
      101 JUMPIF                           R16 ; [+2]
      102 MOVE                             R15 R14
      103 JUMPIFNOT                        R15 ; [+3]
      104 GETTABLEKS                       R16 R6 K27 ["DisableTooltip"]
      106 NOT                              R15 R16
      107 MOVE                             R13 R15
      108 GETUPVAL                         R16 0
      109 JUMPIFNOT                        R16 ; [+2]
      110 LOADNIL                          R15
      111 JUMP                             ; [+6]
      112 GETUPVAL                         R15 1
      113 GETTABLEKS                       R16 R1 K28 ["Style"]
      115 GETTABLEKS                       R17 R6 K29 ["CellStyle"]
      117 CALL                             R15 2 1
      118 GETUPVAL                         R17 0
      119 JUMPIFNOT                        R17 ; [+2]
      120 LOADNIL                          R16
      121 JUMP                             ; [+8]
      122 GETTABLEKS                       R17 R1 K30 ["Emphasis"]
      124 JUMPIFNOT                        R17 ; [+3]
      125 GETTABLEKS                       R16 R15 K31 ["BackgroundOdd"]
      127 JUMP                             ; [+2]
      128 GETTABLEKS                       R16 R15 K32 ["BackgroundEven"]
      130 GETUPVAL                         R17 0
      131 JUMPIF                           R17 ; [+27]
      132 GETTABLEKS                       R17 R1 K33 ["HighlightCell"]
      134 JUMPIFNOT                        R17 ; [+24]
      135 GETUPVAL                         R19 2
      136 GETTABLEKS                       R18 R19 K34 ["Hover"]
      138 GETTABLE                         R17 R15 R18
      139 JUMPIFNOT                        R17 ; [+19]
      140 GETTABLEKS                       R19 R1 K36 ["RowIndex"]
      142 MODK                             R18 R19 K35 [2]
      143 JUMPIFNOTEQKN                    R18 K9 [1] ; [+8]
      145 GETUPVAL                         R20 2
      146 GETTABLEKS                       R19 R20 K34 ["Hover"]
      148 GETTABLE                         R18 R15 R19
      149 GETTABLEKS                       R17 R18 K31 ["BackgroundOdd"]
      151 JUMPIF                           R17 ; [+6]
      152 GETUPVAL                         R20 2
      153 GETTABLEKS                       R19 R20 K34 ["Hover"]
      155 GETTABLE                         R18 R15 R19
      156 GETTABLEKS                       R17 R18 K32 ["BackgroundEven"]
      158 MOVE                             R16 R17
      159 GETUPVAL                         R18 0
      160 JUMPIFNOT                        R18 ; [+2]
      161 GETUPVAL                         R17 3
      162 JUMP                             ; [+4]
      163 GETTABLEKS                       R18 R15 K37 ["Arrow"]
      165 GETTABLEKS                       R17 R18 K38 ["Size"]
      167 GETTABLEKS                       R19 R5 K39 ["depth"]
      169 GETTABLEKS                       R20 R0 K40 ["getIndent"]
      171 CALL                             R20 0 1
      172 MUL                              R18 R19 R20
      173 GETTABLEKS                       R19 R0 K41 ["getCellPadding"]
      175 CALL                             R19 0 1
      176 GETTABLEKS                       R21 R1 K42 ["Variant"]
      178 JUMPIFEQKS                       R21 K43 ["compact"] ; [+2]
      180 LOADB                            R20 0 +1
      181 LOADB                            R20 1
      182 GETTABLEKS                       R22 R1 K2 ["ColumnIndex"]
      184 JUMPIFEQKN                       R22 K9 [1] ; [+2]
      186 LOADB                            R21 0 +1
      187 LOADB                            R21 1
      188 GETUPVAL                         R23 0
      189 JUMPIFNOT                        R23 ; [+2]
      190 LOADNIL                          R22
      191 JUMP                             ; [+6]
      192 JUMPIFNOT                        R11 ; [+3]
      193 GETTABLEKS                       R22 R15 K44 ["SchemaCellPadding"]
      195 JUMP                             ; [+2]
      196 GETTABLEKS                       R22 R15 K45 ["CellPadding"]
      198 GETUPVAL                         R24 0
      199 JUMPIFNOT                        R24 ; [+2]
      200 LOADNIL                          R23
      201 JUMP                             ; [+23]
      202 JUMPIFNOT                        R21 ; [+21]
      203 DUPTABLE                         R23 K50 [{"Top", "Left", "Right", "Bottom"}]
      204 GETTABLEKS                       R24 R22 K46 ["Top"]
      206 SETTABLEKS                       R24 R23 K46 ["Top"]
      208 GETTABLEKS                       R26 R15 K45 ["CellPadding"]
      210 GETTABLEKS                       R25 R26 K47 ["Left"]
      212 ADD                              R24 R25 R18
      213 SETTABLEKS                       R24 R23 K47 ["Left"]
      215 GETTABLEKS                       R24 R22 K48 ["Right"]
      217 SETTABLEKS                       R24 R23 K48 ["Right"]
      219 GETTABLEKS                       R24 R22 K49 ["Bottom"]
      221 SETTABLEKS                       R24 R23 K49 ["Bottom"]
      223 JUMPIF                           R23 ; [+1]
      224 MOVE                             R23 R22
      225 GETTABLEKS                       R24 R5 K51 ["hasChildren"]
      227 LOADN                            R25 0
      228 LOADNIL                          R26
      229 LOADB                            R27 0
      230 FASTCALL1                        TYPEOF R7 ; [+3]
      231 MOVE                             R29 R7
      232 GETIMPORT                        R28 K14 [typeof]
      234 CALL                             R28 1 1
      235 JUMPIFNOTEQKS                    R28 K15 ["table"] ; [+107]
      237 GETTABLEKS                       R28 R7 K52 ["Actions"]
      239 JUMPIFNOT                        R28 ; [+103]
      240 ADD                              R25 R25 R19
      241 NEWTABLE                         R26 0 0
      243 GETIMPORT                        R28 K54 [ipairs]
      245 GETTABLEKS                       R29 R7 K52 ["Actions"]
      247 CALL                             R28 1 3
      248 FORGPREP_INEXT                   R28
      249 LOADK                            R34 K55 ["Action "]
      250 MOVE                             R35 R31
      251 CONCAT                           R33 R34 R35
      252 GETUPVAL                         R35 4
      253 GETTABLEKS                       R34 R35 K56 ["createElement"]
      255 GETUPVAL                         R35 5
      256 GETUPVAL                         R37 0
      257 JUMPIFNOT                        R37 ; [+45]
      258 NEWTABLE                         R36 8 0
      260 LOADK                            R37 K57 ["PointingHand"]
      261 SETTABLEKS                       R37 R36 K58 ["Cursor"]
      263 SETTABLEKS                       R31 R36 K59 ["LayoutOrder"]
      265 GETTABLEKS                       R38 R32 K60 ["Icon"]
      267 GETTABLEKS                       R37 R38 K61 ["Image"]
      269 SETTABLEKS                       R37 R36 K19 ["LeftIcon"]
      271 NEWCLOSURE                       R37 P0
      272 CAPTURE                          VAL R6
      273 CAPTURE                          VAL R32
      274 CAPTURE                          VAL R5
      275 CAPTURE                          VAL R1
      276 SETTABLEKS                       R37 R36 K62 ["OnClick"]
      278 GETTABLEKS                       R38 R32 K60 ["Icon"]
      280 GETTABLEKS                       R37 R38 K38 ["Size"]
      282 SETTABLEKS                       R37 R36 K38 ["Size"]
      284 GETTABLEKS                       R37 R32 K22 ["Tooltip"]
      286 SETTABLEKS                       R37 R36 K63 ["TooltipText"]
      288 LOADK                            R37 K64 ["Icon16 Primary"]
      289 SETTABLEKS                       R37 R36 K65 ["IconTag"]
      291 GETUPVAL                         R38 6
      292 GETTABLEKS                       R37 R38 K66 ["Tag"]
      294 GETUPVAL                         R38 7
      295 LOADK                            R39 K67 ["Compact"]
      296 GETUPVAL                         R42 6
      297 GETTABLEKS                       R41 R42 K66 ["Tag"]
      299 GETTABLE                         R40 R32 R41
      300 CALL                             R38 2 1
      301 SETTABLE                         R38 R36 R37
      302 JUMP                             ; [+33]
      303 DUPTABLE                         R36 K69 [{"AutomaticSize", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style", "TooltipText"}]
      304 GETIMPORT                        R37 K72 [Enum.AutomaticSize.XY]
      306 SETTABLEKS                       R37 R36 K68 ["AutomaticSize"]
      308 SETTABLEKS                       R31 R36 K59 ["LayoutOrder"]
      310 GETTABLEKS                       R38 R32 K60 ["Icon"]
      312 GETTABLEKS                       R37 R38 K61 ["Image"]
      314 SETTABLEKS                       R37 R36 K19 ["LeftIcon"]
      316 NEWCLOSURE                       R37 P1
      317 CAPTURE                          VAL R6
      318 CAPTURE                          VAL R32
      319 CAPTURE                          VAL R5
      320 CAPTURE                          VAL R1
      321 SETTABLEKS                       R37 R36 K62 ["OnClick"]
      323 GETTABLEKS                       R38 R32 K60 ["Icon"]
      325 GETTABLEKS                       R37 R38 K38 ["Size"]
      327 SETTABLEKS                       R37 R36 K38 ["Size"]
      329 LOADK                            R37 K67 ["Compact"]
      330 SETTABLEKS                       R37 R36 K28 ["Style"]
      332 GETTABLEKS                       R37 R32 K22 ["Tooltip"]
      334 SETTABLEKS                       R37 R36 K63 ["TooltipText"]
      336 CALL                             R34 2 1
      337 SETTABLE                         R34 R26 R33
      338 ADDK                             R25 R25 K73 [32]
      339 FORGLOOP                         R28 2 [inext] ; [-91]
      341 GETTABLEKS                       R27 R7 K74 ["AlwaysShowActions"]
      343 LOADN                            R28 0
      344 JUMPIFNOT                        R9 ; [+8]
      345 GETTABLEKS                       R32 R9 K38 ["Size"]
      347 GETTABLEKS                       R31 R32 K75 ["X"]
      349 GETTABLEKS                       R30 R31 K76 ["Offset"]
      351 ADD                              R29 R19 R30
      352 ADD                              R28 R28 R29
      353 JUMPIFNOT                        R21 ; [+2]
      354 ADD                              R29 R19 R17
      355 ADD                              R28 R28 R29
      356 GETIMPORT                        R29 K78 [UDim2.new]
      358 LOADN                            R30 1
      359 MINUS                            R31 R28
      360 LOADN                            R32 1
      361 LOADN                            R33 0
      362 CALL                             R29 4 1
      363 GETUPVAL                         R31 0
      364 JUMPIFNOT                        R31 ; [+23]
      365 GETUPVAL                         R30 7
      366 LOADK                            R31 K79 ["Component-TreeTableCell"]
      367 GETTABLEKS                       R33 R1 K80 ["StyleModifier"]
      369 GETUPVAL                         R35 2
      370 GETTABLEKS                       R34 R35 K81 ["Selected"]
      372 JUMPIFNOTEQ                      R33 R34 ; [+3]
      374 LOADK                            R32 K81 ["Selected"]
      375 JUMP                             ; [+6]
      376 GETTABLEKS                       R33 R1 K30 ["Emphasis"]
      378 JUMPIFNOT                        R33 ; [+2]
      379 LOADK                            R32 K82 ["Secondary"]
      380 JUMP                             ; [+1]
      381 LOADK                            R32 K10 ["Row"]
      382 GETUPVAL                         R35 6
      383 GETTABLEKS                       R34 R35 K66 ["Tag"]
      385 GETTABLE                         R33 R1 R34
      386 CALL                             R30 3 1
      387 JUMP                             ; [+1]
      388 LOADNIL                          R30
      389 MOVE                             R31 R26
      390 JUMPIFNOT                        R31 ; [+17]
      391 LOADB                            R31 1
      392 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      394 GETUPVAL                         R34 2
      395 GETTABLEKS                       R33 R34 K34 ["Hover"]
      397 JUMPIFEQ                         R32 R33 ; [+10]
      399 LOADB                            R31 1
      400 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      402 GETUPVAL                         R34 2
      403 GETTABLEKS                       R33 R34 K81 ["Selected"]
      405 JUMPIFEQ                         R32 R33 ; [+2]
      407 MOVE                             R31 R27
      408 GETUPVAL                         R33 4
      409 GETTABLEKS                       R32 R33 K56 ["createElement"]
      411 GETUPVAL                         R33 8
      412 GETUPVAL                         R35 0
      413 JUMPIFNOT                        R35 ; [+29]
      414 NEWTABLE                         R34 4 0
      416 LOADB                            R35 1
      417 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      419 GETIMPORT                        R35 K78 [UDim2.new]
      421 GETTABLEKS                       R36 R4 K84 ["Scale"]
      423 GETTABLEKS                       R37 R4 K76 ["Offset"]
      425 LOADN                            R38 1
      426 LOADN                            R39 0
      427 CALL                             R35 4 1
      428 SETTABLEKS                       R35 R34 K38 ["Size"]
      430 GETUPVAL                         R37 4
      431 GETTABLEKS                       R36 R37 K85 ["Change"]
      433 GETTABLEKS                       R35 R36 K86 ["AbsoluteSize"]
      435 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      437 SETTABLE                         R36 R34 R35
      438 GETUPVAL                         R36 6
      439 GETTABLEKS                       R35 R36 K66 ["Tag"]
      441 SETTABLE                         R30 R34 R35
      442 JUMP                             ; [+36]
      443 NEWTABLE                         R34 8 0
      445 LOADK                            R35 K88 ["Box"]
      446 SETTABLEKS                       R35 R34 K28 ["Style"]
      448 SETTABLEKS                       R16 R34 K89 ["BackgroundColor3"]
      450 LOADN                            R35 1
      451 SETTABLEKS                       R35 R34 K90 ["BorderSizePixel"]
      453 GETTABLEKS                       R35 R15 K91 ["Border"]
      455 SETTABLEKS                       R35 R34 K92 ["BorderColor3"]
      457 GETIMPORT                        R35 K78 [UDim2.new]
      459 GETTABLEKS                       R36 R4 K84 ["Scale"]
      461 GETTABLEKS                       R37 R4 K76 ["Offset"]
      463 LOADN                            R38 1
      464 LOADN                            R39 0
      465 CALL                             R35 4 1
      466 SETTABLEKS                       R35 R34 K38 ["Size"]
      468 GETUPVAL                         R37 4
      469 GETTABLEKS                       R36 R37 K85 ["Change"]
      471 GETTABLEKS                       R35 R36 K86 ["AbsoluteSize"]
      473 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      475 SETTABLE                         R36 R34 R35
      476 LOADB                            R35 1
      477 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      479 DUPTABLE                         R35 K93 [{"Tooltip", "Left", "Right"}]
      480 MOVE                             R36 R13
      481 JUMPIFNOT                        R36 ; [+21]
      482 GETUPVAL                         R37 4
      483 GETTABLEKS                       R36 R37 K56 ["createElement"]
      485 GETUPVAL                         R37 9
      486 DUPTABLE                         R38 K97 [{"MaxWidth", "Text", "TextXAlignment"}]
      487 JUMPIFNOT                        R15 ; [+5]
      488 GETTABLEKS                       R40 R15 K22 ["Tooltip"]
      490 GETTABLEKS                       R39 R40 K94 ["MaxWidth"]
      492 JUMP                             ; [+1]
      493 LOADNIL                          R39
      494 SETTABLEKS                       R39 R38 K94 ["MaxWidth"]
      496 SETTABLEKS                       R12 R38 K95 ["Text"]
      498 GETIMPORT                        R39 K98 [Enum.TextXAlignment.Left]
      500 SETTABLEKS                       R39 R38 K96 ["TextXAlignment"]
      502 CALL                             R36 2 1
      503 SETTABLEKS                       R36 R35 K22 ["Tooltip"]
      505 GETUPVAL                         R37 4
      506 GETTABLEKS                       R36 R37 K56 ["createElement"]
      508 GETUPVAL                         R37 8
      509 GETUPVAL                         R39 0
      510 JUMPIFNOT                        R39 ; [+37]
      511 NEWTABLE                         R38 4 0
      513 GETTABLEKS                       R39 R1 K2 ["ColumnIndex"]
      515 SETTABLEKS                       R39 R38 K59 ["LayoutOrder"]
      517 GETIMPORT                        R39 K78 [UDim2.new]
      519 LOADN                            R40 1
      520 MINUS                            R42 R25
      521 SUB                              R41 R42 R18
      522 LOADN                            R42 1
      523 LOADN                            R43 0
      524 CALL                             R39 4 1
      525 SETTABLEKS                       R39 R38 K38 ["Size"]
      527 GETIMPORT                        R39 K78 [UDim2.new]
      529 LOADN                            R40 0
      530 MOVE                             R41 R18
      531 LOADN                            R42 0
      532 LOADN                            R43 0
      533 CALL                             R39 4 1
      534 SETTABLEKS                       R39 R38 K99 ["Position"]
      536 GETUPVAL                         R40 6
      537 GETTABLEKS                       R39 R40 K66 ["Tag"]
      539 GETUPVAL                         R40 7
      540 LOADK                            R41 K100 ["Left X-Middle"]
      541 JUMPIFNOT                        R20 ; [+2]
      542 LOADK                            R42 K101 ["X-RowS"]
      543 JUMP                             ; [+1]
      544 LOADK                            R42 K102 ["X-RowM"]
      545 CALL                             R40 2 1
      546 SETTABLE                         R40 R38 R39
      547 JUMP                             ; [+28]
      548 DUPTABLE                         R38 K107 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "Size"}]
      549 GETIMPORT                        R39 K110 [Enum.FillDirection.Horizontal]
      551 SETTABLEKS                       R39 R38 K103 ["Layout"]
      553 GETTABLEKS                       R39 R1 K2 ["ColumnIndex"]
      555 SETTABLEKS                       R39 R38 K59 ["LayoutOrder"]
      557 SETTABLEKS                       R23 R38 K104 ["Padding"]
      559 GETTABLEKS                       R39 R15 K111 ["CellSpacing"]
      561 SETTABLEKS                       R39 R38 K105 ["Spacing"]
      563 GETIMPORT                        R39 K112 [Enum.HorizontalAlignment.Left]
      565 SETTABLEKS                       R39 R38 K106 ["HorizontalAlignment"]
      567 GETIMPORT                        R39 K78 [UDim2.new]
      569 LOADN                            R40 1
      570 MINUS                            R41 R25
      571 LOADN                            R42 1
      572 LOADN                            R43 0
      573 CALL                             R39 4 1
      574 SETTABLEKS                       R39 R38 K38 ["Size"]
      576 DUPTABLE                         R39 K114 [{"Toggle", "LeftIcon", "Shimmer", "Text"}]
      577 JUMPIFNOT                        R21 ; [+109]
      578 GETUPVAL                         R41 4
      579 GETTABLEKS                       R40 R41 K56 ["createElement"]
      581 GETUPVAL                         R41 8
      582 DUPTABLE                         R42 K115 [{"AutomaticSize", "LayoutOrder"}]
      583 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      585 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      587 LOADN                            R43 1
      588 SETTABLEKS                       R43 R42 K59 ["LayoutOrder"]
      590 DUPTABLE                         R43 K116 [{"Icon"}]
      591 GETUPVAL                         R45 4
      592 GETTABLEKS                       R44 R45 K56 ["createElement"]
      594 LOADK                            R45 K117 ["ImageButton"]
      595 GETUPVAL                         R47 0
      596 JUMPIFNOT                        R47 ; [+28]
      597 NEWTABLE                         R46 4 0
      599 GETUPVAL                         R48 6
      600 GETTABLEKS                       R47 R48 K66 ["Tag"]
      602 GETUPVAL                         R48 7
      603 LOADK                            R49 K37 ["Arrow"]
      604 JUMPIF                           R24 ; [+2]
      605 LOADK                            R50 K118 ["Invisible"]
      606 JUMP                             ; [+1]
      607 LOADNIL                          R50
      608 CALL                             R48 2 1
      609 SETTABLE                         R48 R46 R47
      610 GETUPVAL                         R48 4
      611 GETTABLEKS                       R47 R48 K119 ["Ref"]
      613 GETTABLEKS                       R48 R0 K120 ["toggleRef"]
      615 SETTABLE                         R48 R46 R47
      616 GETUPVAL                         R49 4
      617 GETTABLEKS                       R48 R49 K121 ["Event"]
      619 GETTABLEKS                       R47 R48 K122 ["Activated"]
      621 GETTABLEKS                       R48 R0 K123 ["onToggle"]
      623 SETTABLE                         R48 R46 R47
      624 JUMP                             ; [+57]
      625 NEWTABLE                         R46 16 0
      627 GETIMPORT                        R47 K125 [UDim2.fromOffset]
      629 MOVE                             R48 R17
      630 MOVE                             R49 R17
      631 CALL                             R47 2 1
      632 SETTABLEKS                       R47 R46 K38 ["Size"]
      634 LOADN                            R47 1
      635 SETTABLEKS                       R47 R46 K126 ["BackgroundTransparency"]
      637 JUMPIF                           R24 ; [+2]
      638 LOADN                            R47 1
      639 JUMP                             ; [+1]
      640 LOADNIL                          R47
      641 SETTABLEKS                       R47 R46 K127 ["ImageTransparency"]
      643 GETTABLEKS                       R48 R15 K37 ["Arrow"]
      645 GETTABLEKS                       R47 R48 K61 ["Image"]
      647 SETTABLEKS                       R47 R46 K61 ["Image"]
      649 GETTABLEKS                       R48 R15 K37 ["Arrow"]
      651 GETTABLEKS                       R47 R48 K128 ["Color"]
      653 SETTABLEKS                       R47 R46 K129 ["ImageColor3"]
      655 GETIMPORT                        R47 K131 [Vector2.new]
      657 MOVE                             R48 R17
      658 MOVE                             R49 R17
      659 CALL                             R47 2 1
      660 SETTABLEKS                       R47 R46 K132 ["ImageRectSize"]
      662 GETTABLEKS                       R48 R15 K37 ["Arrow"]
      664 GETTABLEKS                       R47 R48 K133 ["CollapsedOffset"]
      666 SETTABLEKS                       R47 R46 K134 ["ImageRectOffset"]
      668 GETUPVAL                         R48 4
      669 GETTABLEKS                       R47 R48 K119 ["Ref"]
      671 GETTABLEKS                       R48 R0 K120 ["toggleRef"]
      673 SETTABLE                         R48 R46 R47
      674 GETUPVAL                         R49 4
      675 GETTABLEKS                       R48 R49 K121 ["Event"]
      677 GETTABLEKS                       R47 R48 K122 ["Activated"]
      679 GETTABLEKS                       R48 R0 K123 ["onToggle"]
      681 SETTABLE                         R48 R46 R47
      682 CALL                             R44 2 1
      683 SETTABLEKS                       R44 R43 K60 ["Icon"]
      685 CALL                             R40 3 1
      686 JUMP                             ; [+1]
      687 LOADNIL                          R40
      688 SETTABLEKS                       R40 R39 K113 ["Toggle"]
      690 JUMPIFNOT                        R9 ; [+13]
      691 GETUPVAL                         R41 4
      692 GETTABLEKS                       R40 R41 K56 ["createElement"]
      694 GETUPVAL                         R41 10
      695 GETUPVAL                         R42 1
      696 DUPTABLE                         R43 K135 [{"LayoutOrder"}]
      697 LOADN                            R44 2
      698 SETTABLEKS                       R44 R43 K59 ["LayoutOrder"]
      700 MOVE                             R44 R9
      701 CALL                             R42 2 -1
      702 CALL                             R40 -1 1
      703 JUMP                             ; [+1]
      704 LOADNIL                          R40
      705 SETTABLEKS                       R40 R39 K19 ["LeftIcon"]
      707 JUMPIFNOT                        R10 ; [+7]
      708 GETUPVAL                         R41 4
      709 GETTABLEKS                       R40 R41 K56 ["createElement"]
      711 GETUPVAL                         R41 11
      712 MOVE                             R42 R10
      713 CALL                             R40 2 1
      714 JUMP                             ; [+1]
      715 LOADNIL                          R40
      716 SETTABLEKS                       R40 R39 K20 ["Shimmer"]
      718 JUMPIFNOT                        R11 ; [+39]
      719 GETTABLEKS                       R40 R0 K136 ["getPropertyCell"]
      721 DUPTABLE                         R41 K140 [{"ErrorMessage", "OnClick", "OnDoubleClick", "OnPressed", "Renderers", "Schema", "Selected", "Size", "Value"}]
      722 GETTABLEKS                       R42 R7 K23 ["ErrorMessage"]
      724 SETTABLEKS                       R42 R41 K23 ["ErrorMessage"]
      726 GETTABLEKS                       R42 R7 K62 ["OnClick"]
      728 SETTABLEKS                       R42 R41 K62 ["OnClick"]
      730 GETTABLEKS                       R42 R0 K141 ["onDoubleClick"]
      732 SETTABLEKS                       R42 R41 K137 ["OnDoubleClick"]
      734 GETTABLEKS                       R42 R0 K142 ["onPressed"]
      736 SETTABLEKS                       R42 R41 K138 ["OnPressed"]
      738 GETTABLEKS                       R42 R7 K139 ["Renderers"]
      740 SETTABLEKS                       R42 R41 K139 ["Renderers"]
      742 GETTABLEKS                       R42 R7 K21 ["Schema"]
      744 SETTABLEKS                       R42 R41 K21 ["Schema"]
      746 GETTABLEKS                       R42 R7 K81 ["Selected"]
      748 SETTABLEKS                       R42 R41 K81 ["Selected"]
      750 SETTABLEKS                       R29 R41 K38 ["Size"]
      752 GETTABLEKS                       R42 R7 K16 ["Value"]
      754 SETTABLEKS                       R42 R41 K16 ["Value"]
      756 CALL                             R40 1 1
      757 JUMP                             ; [+6]
      758 GETTABLEKS                       R40 R0 K143 ["getTextElement"]
      760 MOVE                             R41 R1
      761 MOVE                             R42 R8
      762 MOVE                             R43 R29
      763 CALL                             R40 3 1
      764 SETTABLEKS                       R40 R39 K95 ["Text"]
      766 CALL                             R36 3 1
      767 SETTABLEKS                       R36 R35 K47 ["Left"]
      769 JUMPIFNOT                        R31 ; [+66]
      770 GETUPVAL                         R37 4
      771 GETTABLEKS                       R36 R37 K56 ["createElement"]
      773 GETUPVAL                         R37 8
      774 GETUPVAL                         R39 0
      775 JUMPIFNOT                        R39 ; [+30]
      776 NEWTABLE                         R38 4 0
      778 GETIMPORT                        R39 K131 [Vector2.new]
      780 LOADN                            R40 1
      781 LOADK                            R41 K144 [0.5]
      782 CALL                             R39 2 1
      783 SETTABLEKS                       R39 R38 K145 ["AnchorPoint"]
      785 GETIMPORT                        R39 K78 [UDim2.new]
      787 LOADN                            R40 1
      788 MINUS                            R41 R19
      789 LOADK                            R42 K144 [0.5]
      790 LOADN                            R43 0
      791 CALL                             R39 4 1
      792 SETTABLEKS                       R39 R38 K99 ["Position"]
      794 GETUPVAL                         R40 6
      795 GETTABLEKS                       R39 R40 K66 ["Tag"]
      797 GETUPVAL                         R40 7
      798 LOADK                            R41 K146 ["X-Fit X-Middle"]
      799 JUMPIFNOT                        R20 ; [+2]
      800 LOADK                            R42 K101 ["X-RowS"]
      801 JUMP                             ; [+1]
      802 LOADK                            R42 K102 ["X-RowM"]
      803 CALL                             R40 2 1
      804 SETTABLE                         R40 R38 R39
      805 JUMP                             ; [+27]
      806 DUPTABLE                         R38 K147 [{"AnchorPoint", "AutomaticSize", "Layout", "Position", "Spacing"}]
      807 GETIMPORT                        R39 K131 [Vector2.new]
      809 LOADN                            R40 1
      810 LOADK                            R41 K144 [0.5]
      811 CALL                             R39 2 1
      812 SETTABLEKS                       R39 R38 K145 ["AnchorPoint"]
      814 GETIMPORT                        R39 K72 [Enum.AutomaticSize.XY]
      816 SETTABLEKS                       R39 R38 K68 ["AutomaticSize"]
      818 GETIMPORT                        R39 K110 [Enum.FillDirection.Horizontal]
      820 SETTABLEKS                       R39 R38 K103 ["Layout"]
      822 GETIMPORT                        R39 K78 [UDim2.new]
      824 LOADN                            R40 1
      825 MINUS                            R41 R19
      826 LOADK                            R42 K144 [0.5]
      827 LOADN                            R43 0
      828 CALL                             R39 4 1
      829 SETTABLEKS                       R39 R38 K99 ["Position"]
      831 SETTABLEKS                       R19 R38 K105 ["Spacing"]
      833 MOVE                             R39 R26
      834 CALL                             R36 3 1
      835 JUMP                             ; [+1]
      836 LOADNIL                          R36
      837 SETTABLEKS                       R36 R35 K48 ["Right"]
      839 CALL                             R32 3 -1
      840 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 LOADK                            R5 K8 ["React"]
       19 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETIMPORT                        R2 K6 [require]
       25 GETTABLEKS                       R4 R0 K4 ["Parent"]
       27 GETTABLEKS                       R3 R4 K8 ["React"]
       29 CALL                             R2 1 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 GETIMPORT                        R3 K6 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Styling"]
       36 GETTABLEKS                       R4 R5 K11 ["supportsStyleSheets"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K6 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Styling"]
       43 GETTABLEKS                       R5 R6 K12 ["joinTags"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K6 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R7 R8 K4 ["Parent"]
       52 GETTABLEKS                       R6 R7 K13 ["styles"]
       54 CALL                             R5 1 1
       55 LOADK                            R8 K14 ["ArrowSize"]
       56 NAMECALL                         R6 R5 K15 ["GetAttribute"]
       58 CALL                             R6 2 1
       59 LOADK                            R9 K16 ["CellPadding"]
       60 NAMECALL                         R7 R5 K15 ["GetAttribute"]
       62 CALL                             R7 2 1
       63 LOADK                            R10 K17 ["Indent"]
       64 NAMECALL                         R8 R5 K15 ["GetAttribute"]
       66 CALL                             R8 2 1
       67 LOADK                            R11 K18 ["CompactCellPadding"]
       68 NAMECALL                         R9 R5 K15 ["GetAttribute"]
       70 CALL                             R9 2 1
       71 LOADK                            R12 K19 ["CompactIndent"]
       72 NAMECALL                         R10 R5 K15 ["GetAttribute"]
       74 CALL                             R10 2 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R13 R0 K4 ["Parent"]
       79 GETTABLEKS                       R12 R13 K20 ["Dash"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R11 K21 ["join"]
       84 GETTABLEKS                       R13 R0 K2 ["UI"]
       86 GETIMPORT                        R14 K6 [require]
       88 GETTABLEKS                       R16 R13 K22 ["Components"]
       90 GETTABLEKS                       R15 R16 K23 ["IconButton"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R17 R13 K22 ["Components"]
       97 GETTABLEKS                       R16 R17 K24 ["Image"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R18 R13 K22 ["Components"]
      104 GETTABLEKS                       R17 R18 K25 ["Pane"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K6 [require]
      109 GETTABLEKS                       R19 R13 K22 ["Components"]
      111 GETTABLEKS                       R18 R19 K26 ["PropertyCell"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R20 R13 K22 ["Components"]
      118 GETTABLEKS                       R19 R20 K27 ["Shimmer"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R21 R13 K22 ["Components"]
      125 GETTABLEKS                       R20 R21 K28 ["Tooltip"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R22 R13 K22 ["Components"]
      132 GETTABLEKS                       R21 R22 K29 ["TextLabel"]
      134 CALL                             R20 1 1
      135 GETIMPORT                        R21 K6 [require]
      137 GETTABLEKS                       R23 R13 K22 ["Components"]
      139 GETTABLEKS                       R22 R23 K30 ["DEPRECATED_TextInput"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K6 [require]
      144 GETTABLEKS                       R24 R0 K31 ["Util"]
      146 GETTABLEKS                       R23 R24 K32 ["StyleModifier"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K34 [game]
      151 LOADK                            R25 K35 ["TweenService"]
      152 NAMECALL                         R23 R23 K36 ["GetService"]
      154 CALL                             R23 2 1
      155 GETIMPORT                        R24 K39 [TweenInfo.new]
      157 LOADK                            R25 K40 [0.1]
      158 GETIMPORT                        R26 K44 [Enum.EasingStyle.Linear]
      160 CALL                             R24 2 1
      161 GETTABLEKS                       R25 R1 K45 ["PureComponent"]
      163 LOADK                            R27 K46 ["TreeTableCell"]
      164 NAMECALL                         R25 R25 K47 ["extend"]
      166 CALL                             R25 2 1
      167 DUPCLOSURE                       R26 K48 [PROTO_13]
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R17
      179 SETTABLEKS                       R26 R25 K49 ["init"]
      181 DUPCLOSURE                       R26 K50 [PROTO_14]
      182 SETTABLEKS                       R26 R25 K51 ["didMount"]
      184 DUPCLOSURE                       R26 K52 [PROTO_15]
      185 SETTABLEKS                       R26 R25 K53 ["willUpdate"]
      187 DUPCLOSURE                       R26 K54 [PROTO_16]
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R24
      190 SETTABLEKS                       R26 R25 K55 ["didUpdate"]
      192 DUPCLOSURE                       R26 K56 [PROTO_19]
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R18
      205 SETTABLEKS                       R26 R25 K57 ["render"]
      207 RETURN                           R25 1
