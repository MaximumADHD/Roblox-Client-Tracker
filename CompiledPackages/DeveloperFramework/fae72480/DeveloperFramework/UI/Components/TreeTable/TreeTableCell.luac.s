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
       15 GETUPVAL                         R2 3
       16 JUMPIFNOT                        R2 ; [+20]
       17 GETUPVAL                         R2 1
       18 JUMPIFNOT                        R2 ; [+15]
       19 GETTABLEKS                       R2 R0 K4 ["Variant"]
       21 JUMPIFNOTEQKS                    R2 K5 ["compact"] ; [+10]
       23 GETTABLEKS                       R2 R0 K6 ["ColumnIndex"]
       25 LOADN                            R3 1
       26 JUMPIFNOTLT                      R3 R2 ; [+3]
       28 LOADN                            R2 0
       29 RETURN                           R2 1
       30 GETUPVAL                         R2 4
       31 RETURN                           R2 1
       32 GETUPVAL                         R2 5
       33 RETURN                           R2 1
       34 GETTABLEKS                       R2 R1 K7 ["Indent"]
       36 RETURN                           R2 1
       37 GETUPVAL                         R3 1
       38 JUMPIFNOT                        R3 ; [+2]
       39 GETUPVAL                         R2 5
       40 RETURN                           R2 1
       41 GETTABLEKS                       R2 R1 K7 ["Indent"]
       43 RETURN                           R2 1

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
       15 GETUPVAL                         R2 3
       16 JUMPIFNOT                        R2 ; [+13]
       17 GETUPVAL                         R2 1
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETTABLEKS                       R2 R0 K4 ["Variant"]
       21 JUMPIFNOTEQKS                    R2 K5 ["compact"] ; [+3]
       23 GETUPVAL                         R2 4
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 5
       26 RETURN                           R2 1
       27 GETTABLEKS                       R2 R1 K6 ["CellSpacing"]
       29 RETURN                           R2 1
       30 GETUPVAL                         R3 1
       31 JUMPIFNOT                        R3 ; [+2]
       32 GETUPVAL                         R2 5
       33 RETURN                           R2 1
       34 GETTABLEKS                       R2 R1 K6 ["CellSpacing"]
       36 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["textOverflows"]
        5 JUMPIFNOT                        R0 ; [+44]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["props"]
        9 GETTABLEKS                       R1 R2 K3 ["CellProps"]
       11 GETTABLEKS                       R0 R1 K4 ["CellStyle"]
       13 LOADNIL                          R1
       14 GETUPVAL                         R2 1
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K5 ["getCellPadding"]
       19 CALL                             R2 0 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K6 ["getIndent"]
       23 CALL                             R3 0 1
       24 ADD                              R1 R2 R3
       25 JUMP                             ; [+13]
       26 GETUPVAL                         R2 2
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETUPVAL                         R2 3
       29 GETUPVAL                         R3 4
       30 ADD                              R1 R2 R3
       31 JUMP                             ; [+7]
       32 GETTABLEKS                       R3 R0 K7 ["CellPadding"]
       34 GETTABLEKS                       R2 R3 K8 ["Left"]
       36 GETTABLEKS                       R3 R0 K9 ["Indent"]
       38 ADD                              R1 R2 R3
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K10 ["textRef"]
       42 GETTABLEKS                       R5 R6 K11 ["current"]
       44 GETTABLEKS                       R4 R5 K12 ["AbsoluteSize"]
       46 GETTABLEKS                       R3 R4 K13 ["X"]
       48 ADD                              R2 R3 R1
       49 RETURN                           R2 1
       50 LOADN                            R0 0
       51 RETURN                           R0 1

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
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R1 R0 K7 ["getIndent"]
       31 NEWCLOSURE                       R1 P2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 SETTABLEKS                       R1 R0 K8 ["getCellPadding"]
       40 NEWCLOSURE                       R1 P3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U5
       46 SETTABLEKS                       R1 R0 K9 ["fetchCellContentsWidthIfOverflow"]
       48 NEWCLOSURE                       R1 P4
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K10 ["onAbsoluteSizeChanged"]
       52 NEWCLOSURE                       R1 P5
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K11 ["onTextInputFocusLost"]
       56 NEWCLOSURE                       R1 P6
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K12 ["onPressed"]
       60 NEWCLOSURE                       R1 P7
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K13 ["onDoubleClick"]
       64 NEWCLOSURE                       R1 P8
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U10
       72 SETTABLEKS                       R1 R0 K14 ["getTextElement"]
       74 DUPCLOSURE                       R1 K15 [PROTO_9]
       75 SETTABLEKS                       R1 R0 K16 ["getTextFromProps"]
       77 NEWCLOSURE                       R1 P10
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U11
       82 SETTABLEKS                       R1 R0 K17 ["getPropertyCell"]
       84 NEWCLOSURE                       R1 P11
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R1 R0 K18 ["onChanged"]
       88 DUPCLOSURE                       R1 K19 [PROTO_12]
       89 SETTABLEKS                       R1 R0 K20 ["defaultGetItemId"]
       91 GETTABLEKS                       R3 R0 K21 ["props"]
       93 GETTABLEKS                       R2 R3 K22 ["CellProps"]
       95 JUMPIFNOT                        R2 ; [+7]
       96 GETTABLEKS                       R3 R0 K21 ["props"]
       98 GETTABLEKS                       R2 R3 K22 ["CellProps"]
      100 GETTABLEKS                       R1 R2 K23 ["GetItemId"]
      102 JUMPIF                           R1 ; [+2]
      103 GETTABLEKS                       R1 R0 K20 ["defaultGetItemId"]
      105 SETTABLEKS                       R1 R0 K24 ["getItemId"]
      107 RETURN                           R0 0

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
      176 LOADNIL                          R20
      177 GETUPVAL                         R21 4
      178 JUMPIFNOT                        R21 ; [+6]
      179 GETTABLEKS                       R21 R1 K42 ["Variant"]
      181 JUMPIFEQKS                       R21 K43 ["compact"] ; [+2]
      183 LOADB                            R20 0 +1
      184 LOADB                            R20 1
      185 GETTABLEKS                       R22 R1 K2 ["ColumnIndex"]
      187 JUMPIFEQKN                       R22 K9 [1] ; [+2]
      189 LOADB                            R21 0 +1
      190 LOADB                            R21 1
      191 GETUPVAL                         R23 0
      192 JUMPIFNOT                        R23 ; [+2]
      193 LOADNIL                          R22
      194 JUMP                             ; [+6]
      195 JUMPIFNOT                        R11 ; [+3]
      196 GETTABLEKS                       R22 R15 K44 ["SchemaCellPadding"]
      198 JUMP                             ; [+2]
      199 GETTABLEKS                       R22 R15 K45 ["CellPadding"]
      201 GETUPVAL                         R24 0
      202 JUMPIFNOT                        R24 ; [+2]
      203 LOADNIL                          R23
      204 JUMP                             ; [+23]
      205 JUMPIFNOT                        R21 ; [+21]
      206 DUPTABLE                         R23 K50 [{"Top", "Left", "Right", "Bottom"}]
      207 GETTABLEKS                       R24 R22 K46 ["Top"]
      209 SETTABLEKS                       R24 R23 K46 ["Top"]
      211 GETTABLEKS                       R26 R15 K45 ["CellPadding"]
      213 GETTABLEKS                       R25 R26 K47 ["Left"]
      215 ADD                              R24 R25 R18
      216 SETTABLEKS                       R24 R23 K47 ["Left"]
      218 GETTABLEKS                       R24 R22 K48 ["Right"]
      220 SETTABLEKS                       R24 R23 K48 ["Right"]
      222 GETTABLEKS                       R24 R22 K49 ["Bottom"]
      224 SETTABLEKS                       R24 R23 K49 ["Bottom"]
      226 JUMPIF                           R23 ; [+1]
      227 MOVE                             R23 R22
      228 GETTABLEKS                       R24 R5 K51 ["hasChildren"]
      230 LOADN                            R25 0
      231 LOADNIL                          R26
      232 LOADB                            R27 0
      233 FASTCALL1                        TYPEOF R7 ; [+3]
      234 MOVE                             R29 R7
      235 GETIMPORT                        R28 K14 [typeof]
      237 CALL                             R28 1 1
      238 JUMPIFNOTEQKS                    R28 K15 ["table"] ; [+109]
      240 GETTABLEKS                       R28 R7 K52 ["Actions"]
      242 JUMPIFNOT                        R28 ; [+105]
      243 ADD                              R25 R25 R19
      244 NEWTABLE                         R26 0 0
      246 GETIMPORT                        R28 K54 [ipairs]
      248 GETTABLEKS                       R29 R7 K52 ["Actions"]
      250 CALL                             R28 1 3
      251 FORGPREP_INEXT                   R28
      252 LOADK                            R34 K55 ["Action "]
      253 MOVE                             R35 R31
      254 CONCAT                           R33 R34 R35
      255 GETUPVAL                         R35 5
      256 GETTABLEKS                       R34 R35 K56 ["createElement"]
      258 GETUPVAL                         R35 6
      259 GETUPVAL                         R37 0
      260 JUMPIFNOT                        R37 ; [+45]
      261 NEWTABLE                         R36 8 0
      263 LOADK                            R37 K57 ["PointingHand"]
      264 SETTABLEKS                       R37 R36 K58 ["Cursor"]
      266 SETTABLEKS                       R31 R36 K59 ["LayoutOrder"]
      268 GETTABLEKS                       R38 R32 K60 ["Icon"]
      270 GETTABLEKS                       R37 R38 K61 ["Image"]
      272 SETTABLEKS                       R37 R36 K19 ["LeftIcon"]
      274 NEWCLOSURE                       R37 P0
      275 CAPTURE                          VAL R6
      276 CAPTURE                          VAL R32
      277 CAPTURE                          VAL R5
      278 CAPTURE                          VAL R1
      279 SETTABLEKS                       R37 R36 K62 ["OnClick"]
      281 GETTABLEKS                       R38 R32 K60 ["Icon"]
      283 GETTABLEKS                       R37 R38 K38 ["Size"]
      285 SETTABLEKS                       R37 R36 K38 ["Size"]
      287 GETTABLEKS                       R37 R32 K22 ["Tooltip"]
      289 SETTABLEKS                       R37 R36 K63 ["TooltipText"]
      291 LOADK                            R37 K64 ["Icon16 Primary"]
      292 SETTABLEKS                       R37 R36 K65 ["IconTag"]
      294 GETUPVAL                         R38 7
      295 GETTABLEKS                       R37 R38 K66 ["Tag"]
      297 GETUPVAL                         R38 8
      298 LOADK                            R39 K67 ["Compact"]
      299 GETUPVAL                         R42 7
      300 GETTABLEKS                       R41 R42 K66 ["Tag"]
      302 GETTABLE                         R40 R32 R41
      303 CALL                             R38 2 1
      304 SETTABLE                         R38 R36 R37
      305 JUMP                             ; [+33]
      306 DUPTABLE                         R36 K69 [{"AutomaticSize", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style", "TooltipText"}]
      307 GETIMPORT                        R37 K72 [Enum.AutomaticSize.XY]
      309 SETTABLEKS                       R37 R36 K68 ["AutomaticSize"]
      311 SETTABLEKS                       R31 R36 K59 ["LayoutOrder"]
      313 GETTABLEKS                       R38 R32 K60 ["Icon"]
      315 GETTABLEKS                       R37 R38 K61 ["Image"]
      317 SETTABLEKS                       R37 R36 K19 ["LeftIcon"]
      319 NEWCLOSURE                       R37 P1
      320 CAPTURE                          VAL R6
      321 CAPTURE                          VAL R32
      322 CAPTURE                          VAL R5
      323 CAPTURE                          VAL R1
      324 SETTABLEKS                       R37 R36 K62 ["OnClick"]
      326 GETTABLEKS                       R38 R32 K60 ["Icon"]
      328 GETTABLEKS                       R37 R38 K38 ["Size"]
      330 SETTABLEKS                       R37 R36 K38 ["Size"]
      332 LOADK                            R37 K67 ["Compact"]
      333 SETTABLEKS                       R37 R36 K28 ["Style"]
      335 GETTABLEKS                       R37 R32 K22 ["Tooltip"]
      337 SETTABLEKS                       R37 R36 K63 ["TooltipText"]
      339 CALL                             R34 2 1
      340 SETTABLE                         R34 R26 R33
      341 ADDK                             R25 R25 K73 [32]
      342 FORGLOOP                         R28 2 [inext] ; [-91]
      344 GETUPVAL                         R28 9
      345 JUMPIFNOT                        R28 ; [+2]
      346 GETTABLEKS                       R27 R7 K74 ["AlwaysShowActions"]
      348 LOADN                            R28 0
      349 JUMPIFNOT                        R9 ; [+8]
      350 GETTABLEKS                       R32 R9 K38 ["Size"]
      352 GETTABLEKS                       R31 R32 K75 ["X"]
      354 GETTABLEKS                       R30 R31 K76 ["Offset"]
      356 ADD                              R29 R19 R30
      357 ADD                              R28 R28 R29
      358 JUMPIFNOT                        R21 ; [+2]
      359 ADD                              R29 R19 R17
      360 ADD                              R28 R28 R29
      361 GETIMPORT                        R29 K78 [UDim2.new]
      363 LOADN                            R30 1
      364 MINUS                            R31 R28
      365 LOADN                            R32 1
      366 LOADN                            R33 0
      367 CALL                             R29 4 1
      368 GETUPVAL                         R31 0
      369 JUMPIFNOT                        R31 ; [+23]
      370 GETUPVAL                         R30 8
      371 LOADK                            R31 K79 ["Component-TreeTableCell"]
      372 GETTABLEKS                       R33 R1 K80 ["StyleModifier"]
      374 GETUPVAL                         R35 2
      375 GETTABLEKS                       R34 R35 K81 ["Selected"]
      377 JUMPIFNOTEQ                      R33 R34 ; [+3]
      379 LOADK                            R32 K81 ["Selected"]
      380 JUMP                             ; [+6]
      381 GETTABLEKS                       R33 R1 K30 ["Emphasis"]
      383 JUMPIFNOT                        R33 ; [+2]
      384 LOADK                            R32 K82 ["Secondary"]
      385 JUMP                             ; [+1]
      386 LOADK                            R32 K10 ["Row"]
      387 GETUPVAL                         R35 7
      388 GETTABLEKS                       R34 R35 K66 ["Tag"]
      390 GETTABLE                         R33 R1 R34
      391 CALL                             R30 3 1
      392 JUMP                             ; [+1]
      393 LOADNIL                          R30
      394 MOVE                             R31 R26
      395 JUMPIFNOT                        R31 ; [+17]
      396 LOADB                            R31 1
      397 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      399 GETUPVAL                         R34 2
      400 GETTABLEKS                       R33 R34 K34 ["Hover"]
      402 JUMPIFEQ                         R32 R33 ; [+10]
      404 LOADB                            R31 1
      405 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      407 GETUPVAL                         R34 2
      408 GETTABLEKS                       R33 R34 K81 ["Selected"]
      410 JUMPIFEQ                         R32 R33 ; [+2]
      412 MOVE                             R31 R27
      413 GETUPVAL                         R33 5
      414 GETTABLEKS                       R32 R33 K56 ["createElement"]
      416 GETUPVAL                         R33 10
      417 GETUPVAL                         R35 0
      418 JUMPIFNOT                        R35 ; [+29]
      419 NEWTABLE                         R34 4 0
      421 LOADB                            R35 1
      422 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      424 GETIMPORT                        R35 K78 [UDim2.new]
      426 GETTABLEKS                       R36 R4 K84 ["Scale"]
      428 GETTABLEKS                       R37 R4 K76 ["Offset"]
      430 LOADN                            R38 1
      431 LOADN                            R39 0
      432 CALL                             R35 4 1
      433 SETTABLEKS                       R35 R34 K38 ["Size"]
      435 GETUPVAL                         R37 5
      436 GETTABLEKS                       R36 R37 K85 ["Change"]
      438 GETTABLEKS                       R35 R36 K86 ["AbsoluteSize"]
      440 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      442 SETTABLE                         R36 R34 R35
      443 GETUPVAL                         R36 7
      444 GETTABLEKS                       R35 R36 K66 ["Tag"]
      446 SETTABLE                         R30 R34 R35
      447 JUMP                             ; [+36]
      448 NEWTABLE                         R34 8 0
      450 LOADK                            R35 K88 ["Box"]
      451 SETTABLEKS                       R35 R34 K28 ["Style"]
      453 SETTABLEKS                       R16 R34 K89 ["BackgroundColor3"]
      455 LOADN                            R35 1
      456 SETTABLEKS                       R35 R34 K90 ["BorderSizePixel"]
      458 GETTABLEKS                       R35 R15 K91 ["Border"]
      460 SETTABLEKS                       R35 R34 K92 ["BorderColor3"]
      462 GETIMPORT                        R35 K78 [UDim2.new]
      464 GETTABLEKS                       R36 R4 K84 ["Scale"]
      466 GETTABLEKS                       R37 R4 K76 ["Offset"]
      468 LOADN                            R38 1
      469 LOADN                            R39 0
      470 CALL                             R35 4 1
      471 SETTABLEKS                       R35 R34 K38 ["Size"]
      473 GETUPVAL                         R37 5
      474 GETTABLEKS                       R36 R37 K85 ["Change"]
      476 GETTABLEKS                       R35 R36 K86 ["AbsoluteSize"]
      478 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      480 SETTABLE                         R36 R34 R35
      481 LOADB                            R35 1
      482 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      484 DUPTABLE                         R35 K93 [{"Tooltip", "Left", "Right"}]
      485 MOVE                             R36 R13
      486 JUMPIFNOT                        R36 ; [+21]
      487 GETUPVAL                         R37 5
      488 GETTABLEKS                       R36 R37 K56 ["createElement"]
      490 GETUPVAL                         R37 11
      491 DUPTABLE                         R38 K97 [{"MaxWidth", "Text", "TextXAlignment"}]
      492 JUMPIFNOT                        R15 ; [+5]
      493 GETTABLEKS                       R40 R15 K22 ["Tooltip"]
      495 GETTABLEKS                       R39 R40 K94 ["MaxWidth"]
      497 JUMP                             ; [+1]
      498 LOADNIL                          R39
      499 SETTABLEKS                       R39 R38 K94 ["MaxWidth"]
      501 SETTABLEKS                       R12 R38 K95 ["Text"]
      503 GETIMPORT                        R39 K98 [Enum.TextXAlignment.Left]
      505 SETTABLEKS                       R39 R38 K96 ["TextXAlignment"]
      507 CALL                             R36 2 1
      508 SETTABLEKS                       R36 R35 K22 ["Tooltip"]
      510 GETUPVAL                         R37 5
      511 GETTABLEKS                       R36 R37 K56 ["createElement"]
      513 GETUPVAL                         R37 10
      514 GETUPVAL                         R39 0
      515 JUMPIFNOT                        R39 ; [+55]
      516 NEWTABLE                         R38 4 0
      518 GETTABLEKS                       R39 R1 K2 ["ColumnIndex"]
      520 SETTABLEKS                       R39 R38 K59 ["LayoutOrder"]
      522 GETUPVAL                         R40 12
      523 JUMPIFNOT                        R40 ; [+9]
      524 GETIMPORT                        R39 K78 [UDim2.new]
      526 LOADN                            R40 1
      527 MINUS                            R42 R25
      528 SUB                              R41 R42 R18
      529 LOADN                            R42 1
      530 LOADN                            R43 0
      531 CALL                             R39 4 1
      532 JUMP                             ; [+11]
      533 GETIMPORT                        R39 K78 [UDim2.new]
      535 LOADN                            R40 1
      536 JUMPIFNOT                        R31 ; [+3]
      537 MINUS                            R42 R25
      538 SUB                              R41 R42 R18
      539 JUMP                             ; [+1]
      540 MINUS                            R41 R18
      541 LOADN                            R42 1
      542 LOADN                            R43 0
      543 CALL                             R39 4 1
      544 SETTABLEKS                       R39 R38 K38 ["Size"]
      546 GETIMPORT                        R39 K78 [UDim2.new]
      548 LOADN                            R40 0
      549 MOVE                             R41 R18
      550 LOADN                            R42 0
      551 LOADN                            R43 0
      552 CALL                             R39 4 1
      553 SETTABLEKS                       R39 R38 K99 ["Position"]
      555 GETUPVAL                         R40 7
      556 GETTABLEKS                       R39 R40 K66 ["Tag"]
      558 GETUPVAL                         R41 4
      559 JUMPIFNOT                        R41 ; [+8]
      560 GETUPVAL                         R40 8
      561 LOADK                            R41 K100 ["Left X-Middle"]
      562 JUMPIFNOT                        R20 ; [+2]
      563 LOADK                            R42 K101 ["X-RowS"]
      564 JUMP                             ; [+1]
      565 LOADK                            R42 K102 ["X-RowM"]
      566 CALL                             R40 2 1
      567 JUMP                             ; [+1]
      568 LOADK                            R40 K103 ["Left X-RowM X-Middle"]
      569 SETTABLE                         R40 R38 R39
      570 JUMP                             ; [+41]
      571 DUPTABLE                         R38 K108 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "Size"}]
      572 GETIMPORT                        R39 K111 [Enum.FillDirection.Horizontal]
      574 SETTABLEKS                       R39 R38 K104 ["Layout"]
      576 GETTABLEKS                       R39 R1 K2 ["ColumnIndex"]
      578 SETTABLEKS                       R39 R38 K59 ["LayoutOrder"]
      580 SETTABLEKS                       R23 R38 K105 ["Padding"]
      582 GETTABLEKS                       R39 R15 K112 ["CellSpacing"]
      584 SETTABLEKS                       R39 R38 K106 ["Spacing"]
      586 GETIMPORT                        R39 K113 [Enum.HorizontalAlignment.Left]
      588 SETTABLEKS                       R39 R38 K107 ["HorizontalAlignment"]
      590 GETUPVAL                         R40 12
      591 JUMPIFNOT                        R40 ; [+8]
      592 GETIMPORT                        R39 K78 [UDim2.new]
      594 LOADN                            R40 1
      595 MINUS                            R41 R25
      596 LOADN                            R42 1
      597 LOADN                            R43 0
      598 CALL                             R39 4 1
      599 JUMP                             ; [+10]
      600 GETIMPORT                        R39 K78 [UDim2.new]
      602 LOADN                            R40 1
      603 JUMPIFNOT                        R31 ; [+2]
      604 MINUS                            R41 R25
      605 JUMP                             ; [+1]
      606 LOADN                            R41 0
      607 LOADN                            R42 1
      608 LOADN                            R43 0
      609 CALL                             R39 4 1
      610 SETTABLEKS                       R39 R38 K38 ["Size"]
      612 DUPTABLE                         R39 K115 [{"Toggle", "LeftIcon", "Shimmer", "Text"}]
      613 JUMPIFNOT                        R21 ; [+109]
      614 GETUPVAL                         R41 5
      615 GETTABLEKS                       R40 R41 K56 ["createElement"]
      617 GETUPVAL                         R41 10
      618 DUPTABLE                         R42 K116 [{"AutomaticSize", "LayoutOrder"}]
      619 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      621 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      623 LOADN                            R43 1
      624 SETTABLEKS                       R43 R42 K59 ["LayoutOrder"]
      626 DUPTABLE                         R43 K117 [{"Icon"}]
      627 GETUPVAL                         R45 5
      628 GETTABLEKS                       R44 R45 K56 ["createElement"]
      630 LOADK                            R45 K118 ["ImageButton"]
      631 GETUPVAL                         R47 0
      632 JUMPIFNOT                        R47 ; [+28]
      633 NEWTABLE                         R46 4 0
      635 GETUPVAL                         R48 7
      636 GETTABLEKS                       R47 R48 K66 ["Tag"]
      638 GETUPVAL                         R48 8
      639 LOADK                            R49 K37 ["Arrow"]
      640 JUMPIF                           R24 ; [+2]
      641 LOADK                            R50 K119 ["Invisible"]
      642 JUMP                             ; [+1]
      643 LOADNIL                          R50
      644 CALL                             R48 2 1
      645 SETTABLE                         R48 R46 R47
      646 GETUPVAL                         R48 5
      647 GETTABLEKS                       R47 R48 K120 ["Ref"]
      649 GETTABLEKS                       R48 R0 K121 ["toggleRef"]
      651 SETTABLE                         R48 R46 R47
      652 GETUPVAL                         R49 5
      653 GETTABLEKS                       R48 R49 K122 ["Event"]
      655 GETTABLEKS                       R47 R48 K123 ["Activated"]
      657 GETTABLEKS                       R48 R0 K124 ["onToggle"]
      659 SETTABLE                         R48 R46 R47
      660 JUMP                             ; [+57]
      661 NEWTABLE                         R46 16 0
      663 GETIMPORT                        R47 K126 [UDim2.fromOffset]
      665 MOVE                             R48 R17
      666 MOVE                             R49 R17
      667 CALL                             R47 2 1
      668 SETTABLEKS                       R47 R46 K38 ["Size"]
      670 LOADN                            R47 1
      671 SETTABLEKS                       R47 R46 K127 ["BackgroundTransparency"]
      673 JUMPIF                           R24 ; [+2]
      674 LOADN                            R47 1
      675 JUMP                             ; [+1]
      676 LOADNIL                          R47
      677 SETTABLEKS                       R47 R46 K128 ["ImageTransparency"]
      679 GETTABLEKS                       R48 R15 K37 ["Arrow"]
      681 GETTABLEKS                       R47 R48 K61 ["Image"]
      683 SETTABLEKS                       R47 R46 K61 ["Image"]
      685 GETTABLEKS                       R48 R15 K37 ["Arrow"]
      687 GETTABLEKS                       R47 R48 K129 ["Color"]
      689 SETTABLEKS                       R47 R46 K130 ["ImageColor3"]
      691 GETIMPORT                        R47 K132 [Vector2.new]
      693 MOVE                             R48 R17
      694 MOVE                             R49 R17
      695 CALL                             R47 2 1
      696 SETTABLEKS                       R47 R46 K133 ["ImageRectSize"]
      698 GETTABLEKS                       R48 R15 K37 ["Arrow"]
      700 GETTABLEKS                       R47 R48 K134 ["CollapsedOffset"]
      702 SETTABLEKS                       R47 R46 K135 ["ImageRectOffset"]
      704 GETUPVAL                         R48 5
      705 GETTABLEKS                       R47 R48 K120 ["Ref"]
      707 GETTABLEKS                       R48 R0 K121 ["toggleRef"]
      709 SETTABLE                         R48 R46 R47
      710 GETUPVAL                         R49 5
      711 GETTABLEKS                       R48 R49 K122 ["Event"]
      713 GETTABLEKS                       R47 R48 K123 ["Activated"]
      715 GETTABLEKS                       R48 R0 K124 ["onToggle"]
      717 SETTABLE                         R48 R46 R47
      718 CALL                             R44 2 1
      719 SETTABLEKS                       R44 R43 K60 ["Icon"]
      721 CALL                             R40 3 1
      722 JUMP                             ; [+1]
      723 LOADNIL                          R40
      724 SETTABLEKS                       R40 R39 K114 ["Toggle"]
      726 JUMPIFNOT                        R9 ; [+13]
      727 GETUPVAL                         R41 5
      728 GETTABLEKS                       R40 R41 K56 ["createElement"]
      730 GETUPVAL                         R41 13
      731 GETUPVAL                         R42 1
      732 DUPTABLE                         R43 K136 [{"LayoutOrder"}]
      733 LOADN                            R44 2
      734 SETTABLEKS                       R44 R43 K59 ["LayoutOrder"]
      736 MOVE                             R44 R9
      737 CALL                             R42 2 -1
      738 CALL                             R40 -1 1
      739 JUMP                             ; [+1]
      740 LOADNIL                          R40
      741 SETTABLEKS                       R40 R39 K19 ["LeftIcon"]
      743 JUMPIFNOT                        R10 ; [+7]
      744 GETUPVAL                         R41 5
      745 GETTABLEKS                       R40 R41 K56 ["createElement"]
      747 GETUPVAL                         R41 14
      748 MOVE                             R42 R10
      749 CALL                             R40 2 1
      750 JUMP                             ; [+1]
      751 LOADNIL                          R40
      752 SETTABLEKS                       R40 R39 K20 ["Shimmer"]
      754 JUMPIFNOT                        R11 ; [+39]
      755 GETTABLEKS                       R40 R0 K137 ["getPropertyCell"]
      757 DUPTABLE                         R41 K141 [{"ErrorMessage", "OnClick", "OnDoubleClick", "OnPressed", "Renderers", "Schema", "Selected", "Size", "Value"}]
      758 GETTABLEKS                       R42 R7 K23 ["ErrorMessage"]
      760 SETTABLEKS                       R42 R41 K23 ["ErrorMessage"]
      762 GETTABLEKS                       R42 R7 K62 ["OnClick"]
      764 SETTABLEKS                       R42 R41 K62 ["OnClick"]
      766 GETTABLEKS                       R42 R0 K142 ["onDoubleClick"]
      768 SETTABLEKS                       R42 R41 K138 ["OnDoubleClick"]
      770 GETTABLEKS                       R42 R0 K143 ["onPressed"]
      772 SETTABLEKS                       R42 R41 K139 ["OnPressed"]
      774 GETTABLEKS                       R42 R7 K140 ["Renderers"]
      776 SETTABLEKS                       R42 R41 K140 ["Renderers"]
      778 GETTABLEKS                       R42 R7 K21 ["Schema"]
      780 SETTABLEKS                       R42 R41 K21 ["Schema"]
      782 GETTABLEKS                       R42 R7 K81 ["Selected"]
      784 SETTABLEKS                       R42 R41 K81 ["Selected"]
      786 SETTABLEKS                       R29 R41 K38 ["Size"]
      788 GETTABLEKS                       R42 R7 K16 ["Value"]
      790 SETTABLEKS                       R42 R41 K16 ["Value"]
      792 CALL                             R40 1 1
      793 JUMP                             ; [+6]
      794 GETTABLEKS                       R40 R0 K144 ["getTextElement"]
      796 MOVE                             R41 R1
      797 MOVE                             R42 R8
      798 MOVE                             R43 R29
      799 CALL                             R40 3 1
      800 SETTABLEKS                       R40 R39 K95 ["Text"]
      802 CALL                             R36 3 1
      803 SETTABLEKS                       R36 R35 K47 ["Left"]
      805 JUMPIFNOT                        R31 ; [+70]
      806 GETUPVAL                         R37 5
      807 GETTABLEKS                       R36 R37 K56 ["createElement"]
      809 GETUPVAL                         R37 10
      810 GETUPVAL                         R39 0
      811 JUMPIFNOT                        R39 ; [+34]
      812 NEWTABLE                         R38 4 0
      814 GETIMPORT                        R39 K132 [Vector2.new]
      816 LOADN                            R40 1
      817 LOADK                            R41 K145 [0.5]
      818 CALL                             R39 2 1
      819 SETTABLEKS                       R39 R38 K146 ["AnchorPoint"]
      821 GETIMPORT                        R39 K78 [UDim2.new]
      823 LOADN                            R40 1
      824 MINUS                            R41 R19
      825 LOADK                            R42 K145 [0.5]
      826 LOADN                            R43 0
      827 CALL                             R39 4 1
      828 SETTABLEKS                       R39 R38 K99 ["Position"]
      830 GETUPVAL                         R40 7
      831 GETTABLEKS                       R39 R40 K66 ["Tag"]
      833 GETUPVAL                         R41 4
      834 JUMPIFNOT                        R41 ; [+8]
      835 GETUPVAL                         R40 8
      836 LOADK                            R41 K147 ["X-Fit X-Middle"]
      837 JUMPIFNOT                        R20 ; [+2]
      838 LOADK                            R42 K101 ["X-RowS"]
      839 JUMP                             ; [+1]
      840 LOADK                            R42 K102 ["X-RowM"]
      841 CALL                             R40 2 1
      842 JUMP                             ; [+1]
      843 LOADK                            R40 K148 ["X-RowM X-Fit X-Middle"]
      844 SETTABLE                         R40 R38 R39
      845 JUMP                             ; [+27]
      846 DUPTABLE                         R38 K149 [{"AnchorPoint", "AutomaticSize", "Layout", "Position", "Spacing"}]
      847 GETIMPORT                        R39 K132 [Vector2.new]
      849 LOADN                            R40 1
      850 LOADK                            R41 K145 [0.5]
      851 CALL                             R39 2 1
      852 SETTABLEKS                       R39 R38 K146 ["AnchorPoint"]
      854 GETIMPORT                        R39 K72 [Enum.AutomaticSize.XY]
      856 SETTABLEKS                       R39 R38 K68 ["AutomaticSize"]
      858 GETIMPORT                        R39 K111 [Enum.FillDirection.Horizontal]
      860 SETTABLEKS                       R39 R38 K104 ["Layout"]
      862 GETIMPORT                        R39 K78 [UDim2.new]
      864 LOADN                            R40 1
      865 MINUS                            R41 R19
      866 LOADK                            R42 K145 [0.5]
      867 LOADN                            R43 0
      868 CALL                             R39 4 1
      869 SETTABLEKS                       R39 R38 K99 ["Position"]
      871 SETTABLEKS                       R19 R38 K106 ["Spacing"]
      873 MOVE                             R39 R26
      874 CALL                             R36 3 1
      875 JUMP                             ; [+1]
      876 LOADNIL                          R36
      877 SETTABLEKS                       R36 R35 K48 ["Right"]
      879 CALL                             R32 3 -1
      880 RETURN                           R32 -1

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
       77 GETTABLEKS                       R13 R0 K20 ["SharedFlags"]
       79 GETTABLEKS                       R12 R13 K21 ["getFFlagDevFrameworkTreeTableCellShowActions"]
       81 CALL                             R11 1 1
       82 CALL                             R11 0 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R14 R0 K20 ["SharedFlags"]
       87 GETTABLEKS                       R13 R14 K22 ["getFFlagDevFrameworkCompactTreeTable"]
       89 CALL                             R12 1 1
       90 CALL                             R12 0 1
       91 GETIMPORT                        R13 K24 [game]
       93 LOADK                            R15 K25 ["DevFrameworkTreeTableCellHoverActionsDeficit"]
       94 LOADB                            R16 0
       95 NAMECALL                         R13 R13 K26 ["DefineFastFlag"]
       97 CALL                             R13 3 1
       98 GETIMPORT                        R14 K6 [require]
      100 GETTABLEKS                       R16 R0 K4 ["Parent"]
      102 GETTABLEKS                       R15 R16 K27 ["Dash"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R14 K28 ["join"]
      107 GETTABLEKS                       R16 R0 K2 ["UI"]
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R19 R16 K29 ["Components"]
      113 GETTABLEKS                       R18 R19 K30 ["IconButton"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K6 [require]
      118 GETTABLEKS                       R20 R16 K29 ["Components"]
      120 GETTABLEKS                       R19 R20 K31 ["Image"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETTABLEKS                       R21 R16 K29 ["Components"]
      127 GETTABLEKS                       R20 R21 K32 ["Pane"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K6 [require]
      132 GETTABLEKS                       R22 R16 K29 ["Components"]
      134 GETTABLEKS                       R21 R22 K33 ["PropertyCell"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K6 [require]
      139 GETTABLEKS                       R23 R16 K29 ["Components"]
      141 GETTABLEKS                       R22 R23 K34 ["Shimmer"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K6 [require]
      146 GETTABLEKS                       R24 R16 K29 ["Components"]
      148 GETTABLEKS                       R23 R24 K35 ["Tooltip"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K6 [require]
      153 GETTABLEKS                       R25 R16 K29 ["Components"]
      155 GETTABLEKS                       R24 R25 K36 ["TextLabel"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K6 [require]
      160 GETTABLEKS                       R26 R16 K29 ["Components"]
      162 GETTABLEKS                       R25 R26 K37 ["DEPRECATED_TextInput"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K6 [require]
      167 GETTABLEKS                       R27 R0 K38 ["Util"]
      169 GETTABLEKS                       R26 R27 K39 ["StyleModifier"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K24 [game]
      174 LOADK                            R28 K40 ["TweenService"]
      175 NAMECALL                         R26 R26 K41 ["GetService"]
      177 CALL                             R26 2 1
      178 GETIMPORT                        R27 K44 [TweenInfo.new]
      180 LOADK                            R28 K45 [0.1]
      181 GETIMPORT                        R29 K49 [Enum.EasingStyle.Linear]
      183 CALL                             R27 2 1
      184 GETTABLEKS                       R28 R1 K50 ["PureComponent"]
      186 LOADK                            R30 K51 ["TreeTableCell"]
      187 NAMECALL                         R28 R28 K52 ["extend"]
      189 CALL                             R28 2 1
      190 DUPCLOSURE                       R29 K53 [PROTO_13]
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R20
      203 SETTABLEKS                       R29 R28 K54 ["init"]
      205 DUPCLOSURE                       R29 K55 [PROTO_14]
      206 SETTABLEKS                       R29 R28 K56 ["didMount"]
      208 DUPCLOSURE                       R29 K57 [PROTO_15]
      209 SETTABLEKS                       R29 R28 K58 ["willUpdate"]
      211 DUPCLOSURE                       R29 K59 [PROTO_16]
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R27
      214 SETTABLEKS                       R29 R28 K60 ["didUpdate"]
      216 DUPCLOSURE                       R29 K61 [PROTO_19]
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R21
      232 SETTABLEKS                       R29 R28 K62 ["render"]
      234 RETURN                           R28 1
