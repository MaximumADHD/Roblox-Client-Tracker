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
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R1
        6 JUMP                             ; [+8]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["Style"]
       10 GETTABLEKS                       R3 R0 K2 ["CellProps"]
       12 GETTABLEKS                       R3 R3 K3 ["CellStyle"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R1
        6 JUMP                             ; [+8]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R0 K1 ["Style"]
       10 GETTABLEKS                       R3 R0 K2 ["CellProps"]
       12 GETTABLEKS                       R3 R3 K3 ["CellStyle"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["textOverflows"]
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["getCellPadding"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["getIndent"]
       13 CALL                             R2 0 1
       14 ADD                              R0 R1 R2
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["textRef"]
       18 GETTABLEKS                       R2 R2 K5 ["current"]
       20 GETTABLEKS                       R2 R2 K6 ["AbsoluteSize"]
       22 GETTABLEKS                       R2 R2 K7 ["X"]
       24 ADD                              R1 R2 R0
       25 RETURN                           R1 1
       26 LOADN                            R0 0
       27 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CellProps"]
        5 GETTABLEKS                       R2 R2 K2 ["OnCellRightClick"]
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETTABLEKS                       R2 R1 K1 ["CellProps"]
       10 GETTABLEKS                       R2 R2 K2 ["OnCellRightClick"]
       12 GETTABLEKS                       R3 R1 K3 ["Row"]
       14 MOVE                             R4 R0
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["onCellRightClick"]
        9 GETIMPORT                        R3 K7 [Vector2.new]
       11 GETTABLEKS                       R4 R1 K8 ["Position"]
       13 GETTABLEKS                       R4 R4 K9 ["X"]
       15 GETTABLEKS                       R5 R1 K8 ["Position"]
       17 GETTABLEKS                       R5 R5 K10 ["Y"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_10:
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
       50 JUMPIFNOT                        R1 ; [+39]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K6 ["createElement"]
       54 GETUPVAL                         R8 3
       55 GETUPVAL                         R9 4
       56 NEWTABLE                         R10 8 0
       58 LOADN                            R11 3
       59 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       61 SETTABLEKS                       R2 R10 K14 ["Size"]
       63 SETTABLEKS                       R1 R10 K15 ["Text"]
       65 GETIMPORT                        R11 K20 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R11 R10 K18 ["TextXAlignment"]
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K16 ["Ref"]
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R12 R12 K17 ["textRef"]
       75 SETTABLE                         R12 R10 R11
       76 GETUPVAL                         R12 5
       77 JUMPIFNOT                        R12 ; [+8]
       78 NEWTABLE                         R11 1 0
       80 GETUPVAL                         R12 6
       81 GETTABLEKS                       R12 R12 K21 ["Tag"]
       83 LOADK                            R13 K22 ["Component-TreeTableCellText"]
       84 SETTABLE                         R13 R11 R12
       85 JUMP                             ; [+1]
       86 LOADNIL                          R11
       87 CALL                             R9 2 -1
       88 CALL                             R7 -1 1
       89 JUMPIF                           R7 ; [+1]
       90 LOADNIL                          R7
       91 RETURN                           R7 1

PROTO_11:
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

PROTO_12:
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
       15 DUPTABLE                         R5 K18 [{"ErrorMessage", "GetAutocompleteItems", "Item", "LayoutOrder", "OnChanged", "OnClick", "OnDoubleClick", "OnPressed", "OnRightClick", "Renderers", "Schema", "Selected", "Size", "StyleModifier", "Value"}]
       16 GETTABLEKS                       R6 R0 K4 ["ErrorMessage"]
       18 SETTABLEKS                       R6 R5 K4 ["ErrorMessage"]
       20 GETTABLEKS                       R6 R1 K5 ["GetAutocompleteItems"]
       22 SETTABLEKS                       R6 R5 K5 ["GetAutocompleteItems"]
       24 GETTABLEKS                       R6 R0 K6 ["Item"]
       26 SETTABLEKS                       R6 R5 K6 ["Item"]
       28 LOADN                            R6 3
       29 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K19 ["onChanged"]
       34 SETTABLEKS                       R6 R5 K8 ["OnChanged"]
       36 GETTABLEKS                       R6 R0 K9 ["OnClick"]
       38 SETTABLEKS                       R6 R5 K9 ["OnClick"]
       40 GETTABLEKS                       R6 R0 K10 ["OnDoubleClick"]
       42 SETTABLEKS                       R6 R5 K10 ["OnDoubleClick"]
       44 GETTABLEKS                       R6 R0 K11 ["OnPressed"]
       46 SETTABLEKS                       R6 R5 K11 ["OnPressed"]
       48 GETUPVAL                         R7 4
       49 JUMPIFNOT                        R7 ; [+3]
       50 GETTABLEKS                       R6 R0 K12 ["OnRightClick"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 SETTABLEKS                       R6 R5 K12 ["OnRightClick"]
       56 SETTABLEKS                       R2 R5 K2 ["Renderers"]
       58 GETTABLEKS                       R6 R0 K13 ["Schema"]
       60 SETTABLEKS                       R6 R5 K13 ["Schema"]
       62 GETTABLEKS                       R6 R0 K14 ["Selected"]
       64 SETTABLEKS                       R6 R5 K14 ["Selected"]
       66 GETTABLEKS                       R6 R0 K15 ["Size"]
       68 SETTABLEKS                       R6 R5 K15 ["Size"]
       70 GETTABLEKS                       R6 R0 K16 ["StyleModifier"]
       72 SETTABLEKS                       R6 R5 K16 ["StyleModifier"]
       74 GETTABLEKS                       R6 R0 K17 ["Value"]
       76 SETTABLEKS                       R6 R5 K17 ["Value"]
       78 CALL                             R3 2 -1
       79 RETURN                           R3 -1

PROTO_13:
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

PROTO_14:
        0 RETURN                           R0 1

PROTO_15:
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
       58 GETUPVAL                         R1 7
       59 JUMPIFNOT                        R1 ; [+8]
       60 NEWCLOSURE                       R1 P8
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K14 ["onCellRightClick"]
       64 NEWCLOSURE                       R1 P9
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K15 ["onCellInputBegan"]
       68 NEWCLOSURE                       R1 P10
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          UPVAL U10
       76 SETTABLEKS                       R1 R0 K16 ["getTextElement"]
       78 DUPCLOSURE                       R1 K17 [PROTO_11]
       79 SETTABLEKS                       R1 R0 K18 ["getTextFromProps"]
       81 NEWCLOSURE                       R1 P12
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U11
       86 CAPTURE                          UPVAL U7
       87 SETTABLEKS                       R1 R0 K19 ["getPropertyCell"]
       89 NEWCLOSURE                       R1 P13
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R1 R0 K20 ["onChanged"]
       93 DUPCLOSURE                       R1 K21 [PROTO_14]
       94 SETTABLEKS                       R1 R0 K22 ["defaultGetItemId"]
       96 GETTABLEKS                       R2 R0 K23 ["props"]
       98 GETTABLEKS                       R2 R2 K24 ["CellProps"]
      100 JUMPIFNOT                        R2 ; [+7]
      101 GETTABLEKS                       R1 R0 K23 ["props"]
      103 GETTABLEKS                       R1 R1 K24 ["CellProps"]
      105 GETTABLEKS                       R1 R1 K25 ["GetItemId"]
      107 JUMPIF                           R1 ; [+2]
      108 GETTABLEKS                       R1 R0 K22 ["defaultGetItemId"]
      110 SETTABLEKS                       R1 R0 K26 ["getItemId"]
      112 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       97 GETTABLEKS                       R16 R0 K25 ["state"]
       99 GETTABLEKS                       R16 R16 K26 ["textOverflows"]
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
      135 GETUPVAL                         R18 2
      136 GETTABLEKS                       R18 R18 K34 ["Hover"]
      138 GETTABLE                         R17 R15 R18
      139 JUMPIFNOT                        R17 ; [+19]
      140 GETTABLEKS                       R19 R1 K36 ["RowIndex"]
      142 MODK                             R18 R19 K35 [2]
      143 JUMPIFNOTEQKN                    R18 K9 [1] ; [+8]
      145 GETUPVAL                         R18 2
      146 GETTABLEKS                       R18 R18 K34 ["Hover"]
      148 GETTABLE                         R17 R15 R18
      149 GETTABLEKS                       R17 R17 K31 ["BackgroundOdd"]
      151 JUMPIF                           R17 ; [+6]
      152 GETUPVAL                         R18 2
      153 GETTABLEKS                       R18 R18 K34 ["Hover"]
      155 GETTABLE                         R17 R15 R18
      156 GETTABLEKS                       R17 R17 K32 ["BackgroundEven"]
      158 MOVE                             R16 R17
      159 GETUPVAL                         R18 0
      160 JUMPIFNOT                        R18 ; [+2]
      161 GETUPVAL                         R17 3
      162 JUMP                             ; [+4]
      163 GETTABLEKS                       R17 R15 K37 ["Arrow"]
      165 GETTABLEKS                       R17 R17 K38 ["Size"]
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
      208 GETTABLEKS                       R25 R15 K45 ["CellPadding"]
      210 GETTABLEKS                       R25 R25 K47 ["Left"]
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
      252 GETUPVAL                         R34 4
      253 GETTABLEKS                       R34 R34 K56 ["createElement"]
      255 GETUPVAL                         R35 5
      256 GETUPVAL                         R37 0
      257 JUMPIFNOT                        R37 ; [+45]
      258 NEWTABLE                         R36 8 0
      260 LOADK                            R37 K57 ["PointingHand"]
      261 SETTABLEKS                       R37 R36 K58 ["Cursor"]
      263 SETTABLEKS                       R31 R36 K59 ["LayoutOrder"]
      265 GETTABLEKS                       R37 R32 K60 ["Icon"]
      267 GETTABLEKS                       R37 R37 K61 ["Image"]
      269 SETTABLEKS                       R37 R36 K19 ["LeftIcon"]
      271 NEWCLOSURE                       R37 P0
      272 CAPTURE                          VAL R6
      273 CAPTURE                          VAL R32
      274 CAPTURE                          VAL R5
      275 CAPTURE                          VAL R1
      276 SETTABLEKS                       R37 R36 K62 ["OnClick"]
      278 GETTABLEKS                       R37 R32 K60 ["Icon"]
      280 GETTABLEKS                       R37 R37 K38 ["Size"]
      282 SETTABLEKS                       R37 R36 K38 ["Size"]
      284 GETTABLEKS                       R37 R32 K22 ["Tooltip"]
      286 SETTABLEKS                       R37 R36 K63 ["TooltipText"]
      288 LOADK                            R37 K64 ["Icon16 Primary"]
      289 SETTABLEKS                       R37 R36 K65 ["IconTag"]
      291 GETUPVAL                         R37 6
      292 GETTABLEKS                       R37 R37 K66 ["Tag"]
      294 GETUPVAL                         R38 7
      295 LOADK                            R39 K67 ["Compact"]
      296 GETUPVAL                         R41 6
      297 GETTABLEKS                       R41 R41 K66 ["Tag"]
      299 GETTABLE                         R40 R32 R41
      300 CALL                             R38 2 1
      301 SETTABLE                         R38 R36 R37
      302 JUMP                             ; [+33]
      303 DUPTABLE                         R36 K69 [{"AutomaticSize", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style", "TooltipText"}]
      304 GETIMPORT                        R37 K72 [Enum.AutomaticSize.XY]
      306 SETTABLEKS                       R37 R36 K68 ["AutomaticSize"]
      308 SETTABLEKS                       R31 R36 K59 ["LayoutOrder"]
      310 GETTABLEKS                       R37 R32 K60 ["Icon"]
      312 GETTABLEKS                       R37 R37 K61 ["Image"]
      314 SETTABLEKS                       R37 R36 K19 ["LeftIcon"]
      316 NEWCLOSURE                       R37 P1
      317 CAPTURE                          VAL R6
      318 CAPTURE                          VAL R32
      319 CAPTURE                          VAL R5
      320 CAPTURE                          VAL R1
      321 SETTABLEKS                       R37 R36 K62 ["OnClick"]
      323 GETTABLEKS                       R37 R32 K60 ["Icon"]
      325 GETTABLEKS                       R37 R37 K38 ["Size"]
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
      345 GETTABLEKS                       R30 R9 K38 ["Size"]
      347 GETTABLEKS                       R30 R30 K75 ["X"]
      349 GETTABLEKS                       R30 R30 K76 ["Offset"]
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
      369 GETUPVAL                         R34 2
      370 GETTABLEKS                       R34 R34 K81 ["Selected"]
      372 JUMPIFNOTEQ                      R33 R34 ; [+3]
      374 LOADK                            R32 K81 ["Selected"]
      375 JUMP                             ; [+6]
      376 GETTABLEKS                       R33 R1 K30 ["Emphasis"]
      378 JUMPIFNOT                        R33 ; [+2]
      379 LOADK                            R32 K82 ["Secondary"]
      380 JUMP                             ; [+1]
      381 LOADK                            R32 K10 ["Row"]
      382 GETUPVAL                         R34 6
      383 GETTABLEKS                       R34 R34 K66 ["Tag"]
      385 GETTABLE                         R33 R1 R34
      386 CALL                             R30 3 1
      387 JUMP                             ; [+1]
      388 LOADNIL                          R30
      389 MOVE                             R31 R26
      390 JUMPIFNOT                        R31 ; [+17]
      391 LOADB                            R31 1
      392 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      394 GETUPVAL                         R33 2
      395 GETTABLEKS                       R33 R33 K34 ["Hover"]
      397 JUMPIFEQ                         R32 R33 ; [+10]
      399 LOADB                            R31 1
      400 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      402 GETUPVAL                         R33 2
      403 GETTABLEKS                       R33 R33 K81 ["Selected"]
      405 JUMPIFEQ                         R32 R33 ; [+2]
      407 MOVE                             R31 R27
      408 GETUPVAL                         R32 4
      409 GETTABLEKS                       R32 R32 K56 ["createElement"]
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
      430 GETUPVAL                         R35 4
      431 GETTABLEKS                       R35 R35 K85 ["Change"]
      433 GETTABLEKS                       R35 R35 K86 ["AbsoluteSize"]
      435 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      437 SETTABLE                         R36 R34 R35
      438 GETUPVAL                         R35 6
      439 GETTABLEKS                       R35 R35 K66 ["Tag"]
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
      468 GETUPVAL                         R35 4
      469 GETTABLEKS                       R35 R35 K85 ["Change"]
      471 GETTABLEKS                       R35 R35 K86 ["AbsoluteSize"]
      473 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      475 SETTABLE                         R36 R34 R35
      476 LOADB                            R35 1
      477 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      479 DUPTABLE                         R35 K93 [{"Tooltip", "Left", "Right"}]
      480 MOVE                             R36 R13
      481 JUMPIFNOT                        R36 ; [+21]
      482 GETUPVAL                         R36 4
      483 GETTABLEKS                       R36 R36 K56 ["createElement"]
      485 GETUPVAL                         R37 9
      486 DUPTABLE                         R38 K97 [{"MaxWidth", "Text", "TextXAlignment"}]
      487 JUMPIFNOT                        R15 ; [+5]
      488 GETTABLEKS                       R39 R15 K22 ["Tooltip"]
      490 GETTABLEKS                       R39 R39 K94 ["MaxWidth"]
      492 JUMP                             ; [+1]
      493 LOADNIL                          R39
      494 SETTABLEKS                       R39 R38 K94 ["MaxWidth"]
      496 SETTABLEKS                       R12 R38 K95 ["Text"]
      498 GETIMPORT                        R39 K98 [Enum.TextXAlignment.Left]
      500 SETTABLEKS                       R39 R38 K96 ["TextXAlignment"]
      502 CALL                             R36 2 1
      503 SETTABLEKS                       R36 R35 K22 ["Tooltip"]
      505 GETUPVAL                         R36 4
      506 GETTABLEKS                       R36 R36 K56 ["createElement"]
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
      536 GETUPVAL                         R39 6
      537 GETTABLEKS                       R39 R39 K66 ["Tag"]
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
      577 JUMPIFNOT                        R21 ; [+133]
      578 GETUPVAL                         R40 4
      579 GETTABLEKS                       R40 R40 K56 ["createElement"]
      581 GETUPVAL                         R41 8
      582 DUPTABLE                         R42 K115 [{"AutomaticSize", "LayoutOrder"}]
      583 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      585 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      587 LOADN                            R43 1
      588 SETTABLEKS                       R43 R42 K59 ["LayoutOrder"]
      590 DUPTABLE                         R43 K116 [{"Icon"}]
      591 GETUPVAL                         R44 4
      592 GETTABLEKS                       R44 R44 K56 ["createElement"]
      594 LOADK                            R45 K117 ["ImageButton"]
      595 GETUPVAL                         R47 0
      596 JUMPIFNOT                        R47 ; [+40]
      597 NEWTABLE                         R46 4 0
      599 GETUPVAL                         R47 6
      600 GETTABLEKS                       R47 R47 K66 ["Tag"]
      602 GETUPVAL                         R48 7
      603 LOADK                            R49 K37 ["Arrow"]
      604 JUMPIF                           R24 ; [+2]
      605 LOADK                            R50 K118 ["Invisible"]
      606 JUMP                             ; [+1]
      607 LOADNIL                          R50
      608 CALL                             R48 2 1
      609 SETTABLE                         R48 R46 R47
      610 GETUPVAL                         R47 4
      611 GETTABLEKS                       R47 R47 K119 ["Ref"]
      613 GETTABLEKS                       R48 R0 K120 ["toggleRef"]
      615 SETTABLE                         R48 R46 R47
      616 GETUPVAL                         R47 4
      617 GETTABLEKS                       R47 R47 K121 ["Event"]
      619 GETTABLEKS                       R47 R47 K122 ["Activated"]
      621 GETTABLEKS                       R48 R0 K123 ["onToggle"]
      623 SETTABLE                         R48 R46 R47
      624 GETUPVAL                         R47 4
      625 GETTABLEKS                       R47 R47 K121 ["Event"]
      627 GETTABLEKS                       R47 R47 K124 ["InputBegan"]
      629 GETUPVAL                         R49 10
      630 JUMPIFNOT                        R49 ; [+3]
      631 GETTABLEKS                       R48 R0 K125 ["onCellInputBegan"]
      633 JUMP                             ; [+1]
      634 LOADNIL                          R48
      635 SETTABLE                         R48 R46 R47
      636 JUMP                             ; [+69]
      637 NEWTABLE                         R46 16 0
      639 GETIMPORT                        R47 K127 [UDim2.fromOffset]
      641 MOVE                             R48 R17
      642 MOVE                             R49 R17
      643 CALL                             R47 2 1
      644 SETTABLEKS                       R47 R46 K38 ["Size"]
      646 LOADN                            R47 1
      647 SETTABLEKS                       R47 R46 K128 ["BackgroundTransparency"]
      649 JUMPIF                           R24 ; [+2]
      650 LOADN                            R47 1
      651 JUMP                             ; [+1]
      652 LOADNIL                          R47
      653 SETTABLEKS                       R47 R46 K129 ["ImageTransparency"]
      655 GETTABLEKS                       R47 R15 K37 ["Arrow"]
      657 GETTABLEKS                       R47 R47 K61 ["Image"]
      659 SETTABLEKS                       R47 R46 K61 ["Image"]
      661 GETTABLEKS                       R47 R15 K37 ["Arrow"]
      663 GETTABLEKS                       R47 R47 K130 ["Color"]
      665 SETTABLEKS                       R47 R46 K131 ["ImageColor3"]
      667 GETIMPORT                        R47 K133 [Vector2.new]
      669 MOVE                             R48 R17
      670 MOVE                             R49 R17
      671 CALL                             R47 2 1
      672 SETTABLEKS                       R47 R46 K134 ["ImageRectSize"]
      674 GETTABLEKS                       R47 R15 K37 ["Arrow"]
      676 GETTABLEKS                       R47 R47 K135 ["CollapsedOffset"]
      678 SETTABLEKS                       R47 R46 K136 ["ImageRectOffset"]
      680 GETUPVAL                         R47 4
      681 GETTABLEKS                       R47 R47 K119 ["Ref"]
      683 GETTABLEKS                       R48 R0 K120 ["toggleRef"]
      685 SETTABLE                         R48 R46 R47
      686 GETUPVAL                         R47 4
      687 GETTABLEKS                       R47 R47 K121 ["Event"]
      689 GETTABLEKS                       R47 R47 K122 ["Activated"]
      691 GETTABLEKS                       R48 R0 K123 ["onToggle"]
      693 SETTABLE                         R48 R46 R47
      694 GETUPVAL                         R47 4
      695 GETTABLEKS                       R47 R47 K121 ["Event"]
      697 GETTABLEKS                       R47 R47 K124 ["InputBegan"]
      699 GETUPVAL                         R49 10
      700 JUMPIFNOT                        R49 ; [+3]
      701 GETTABLEKS                       R48 R0 K125 ["onCellInputBegan"]
      703 JUMP                             ; [+1]
      704 LOADNIL                          R48
      705 SETTABLE                         R48 R46 R47
      706 CALL                             R44 2 1
      707 SETTABLEKS                       R44 R43 K60 ["Icon"]
      709 CALL                             R40 3 1
      710 JUMP                             ; [+1]
      711 LOADNIL                          R40
      712 SETTABLEKS                       R40 R39 K113 ["Toggle"]
      714 JUMPIFNOT                        R9 ; [+13]
      715 GETUPVAL                         R40 4
      716 GETTABLEKS                       R40 R40 K56 ["createElement"]
      718 GETUPVAL                         R41 11
      719 GETUPVAL                         R42 1
      720 DUPTABLE                         R43 K137 [{"LayoutOrder"}]
      721 LOADN                            R44 2
      722 SETTABLEKS                       R44 R43 K59 ["LayoutOrder"]
      724 MOVE                             R44 R9
      725 CALL                             R42 2 -1
      726 CALL                             R40 -1 1
      727 JUMP                             ; [+1]
      728 LOADNIL                          R40
      729 SETTABLEKS                       R40 R39 K19 ["LeftIcon"]
      731 JUMPIFNOT                        R10 ; [+7]
      732 GETUPVAL                         R40 4
      733 GETTABLEKS                       R40 R40 K56 ["createElement"]
      735 GETUPVAL                         R41 12
      736 MOVE                             R42 R10
      737 CALL                             R40 2 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R40
      740 SETTABLEKS                       R40 R39 K20 ["Shimmer"]
      742 JUMPIFNOT                        R11 ; [+47]
      743 GETTABLEKS                       R40 R0 K138 ["getPropertyCell"]
      745 DUPTABLE                         R41 K143 [{"ErrorMessage", "OnClick", "OnDoubleClick", "OnPressed", "OnRightClick", "Renderers", "Schema", "Selected", "Size", "Value"}]
      746 GETTABLEKS                       R42 R7 K23 ["ErrorMessage"]
      748 SETTABLEKS                       R42 R41 K23 ["ErrorMessage"]
      750 GETTABLEKS                       R42 R7 K62 ["OnClick"]
      752 SETTABLEKS                       R42 R41 K62 ["OnClick"]
      754 GETTABLEKS                       R42 R0 K144 ["onDoubleClick"]
      756 SETTABLEKS                       R42 R41 K139 ["OnDoubleClick"]
      758 GETTABLEKS                       R42 R0 K145 ["onPressed"]
      760 SETTABLEKS                       R42 R41 K140 ["OnPressed"]
      762 GETUPVAL                         R43 10
      763 JUMPIFNOT                        R43 ; [+3]
      764 GETTABLEKS                       R42 R0 K146 ["onCellRightClick"]
      766 JUMP                             ; [+1]
      767 LOADNIL                          R42
      768 SETTABLEKS                       R42 R41 K141 ["OnRightClick"]
      770 GETTABLEKS                       R42 R7 K142 ["Renderers"]
      772 SETTABLEKS                       R42 R41 K142 ["Renderers"]
      774 GETTABLEKS                       R42 R7 K21 ["Schema"]
      776 SETTABLEKS                       R42 R41 K21 ["Schema"]
      778 GETTABLEKS                       R42 R7 K81 ["Selected"]
      780 SETTABLEKS                       R42 R41 K81 ["Selected"]
      782 SETTABLEKS                       R29 R41 K38 ["Size"]
      784 GETTABLEKS                       R42 R7 K16 ["Value"]
      786 SETTABLEKS                       R42 R41 K16 ["Value"]
      788 CALL                             R40 1 1
      789 JUMP                             ; [+6]
      790 GETTABLEKS                       R40 R0 K147 ["getTextElement"]
      792 MOVE                             R41 R1
      793 MOVE                             R42 R8
      794 MOVE                             R43 R29
      795 CALL                             R40 3 1
      796 SETTABLEKS                       R40 R39 K95 ["Text"]
      798 CALL                             R36 3 1
      799 SETTABLEKS                       R36 R35 K47 ["Left"]
      801 JUMPIFNOT                        R31 ; [+66]
      802 GETUPVAL                         R36 4
      803 GETTABLEKS                       R36 R36 K56 ["createElement"]
      805 GETUPVAL                         R37 8
      806 GETUPVAL                         R39 0
      807 JUMPIFNOT                        R39 ; [+30]
      808 NEWTABLE                         R38 4 0
      810 GETIMPORT                        R39 K133 [Vector2.new]
      812 LOADN                            R40 1
      813 LOADK                            R41 K148 [0.5]
      814 CALL                             R39 2 1
      815 SETTABLEKS                       R39 R38 K149 ["AnchorPoint"]
      817 GETIMPORT                        R39 K78 [UDim2.new]
      819 LOADN                            R40 1
      820 MINUS                            R41 R19
      821 LOADK                            R42 K148 [0.5]
      822 LOADN                            R43 0
      823 CALL                             R39 4 1
      824 SETTABLEKS                       R39 R38 K99 ["Position"]
      826 GETUPVAL                         R39 6
      827 GETTABLEKS                       R39 R39 K66 ["Tag"]
      829 GETUPVAL                         R40 7
      830 LOADK                            R41 K150 ["X-Fit X-Middle"]
      831 JUMPIFNOT                        R20 ; [+2]
      832 LOADK                            R42 K101 ["X-RowS"]
      833 JUMP                             ; [+1]
      834 LOADK                            R42 K102 ["X-RowM"]
      835 CALL                             R40 2 1
      836 SETTABLE                         R40 R38 R39
      837 JUMP                             ; [+27]
      838 DUPTABLE                         R38 K151 [{"AnchorPoint", "AutomaticSize", "Layout", "Position", "Spacing"}]
      839 GETIMPORT                        R39 K133 [Vector2.new]
      841 LOADN                            R40 1
      842 LOADK                            R41 K148 [0.5]
      843 CALL                             R39 2 1
      844 SETTABLEKS                       R39 R38 K149 ["AnchorPoint"]
      846 GETIMPORT                        R39 K72 [Enum.AutomaticSize.XY]
      848 SETTABLEKS                       R39 R38 K68 ["AutomaticSize"]
      850 GETIMPORT                        R39 K110 [Enum.FillDirection.Horizontal]
      852 SETTABLEKS                       R39 R38 K103 ["Layout"]
      854 GETIMPORT                        R39 K78 [UDim2.new]
      856 LOADN                            R40 1
      857 MINUS                            R41 R19
      858 LOADK                            R42 K148 [0.5]
      859 LOADN                            R43 0
      860 CALL                             R39 4 1
      861 SETTABLEKS                       R39 R38 K99 ["Position"]
      863 SETTABLEKS                       R19 R38 K105 ["Spacing"]
      865 MOVE                             R39 R26
      866 CALL                             R36 3 1
      867 JUMP                             ; [+1]
      868 LOADNIL                          R36
      869 SETTABLEKS                       R36 R35 K48 ["Right"]
      871 CALL                             R32 3 -1
      872 RETURN                           R32 -1

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
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 LOADK                            R5 K8 ["React"]
       19 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETIMPORT                        R2 K6 [require]
       25 GETTABLEKS                       R3 R0 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K8 ["React"]
       29 CALL                             R2 1 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 GETIMPORT                        R3 K6 [require]
       34 GETTABLEKS                       R4 R0 K10 ["Styling"]
       36 GETTABLEKS                       R4 R4 K11 ["supportsStyleSheets"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K6 [require]
       41 GETTABLEKS                       R5 R0 K10 ["Styling"]
       43 GETTABLEKS                       R5 R5 K12 ["joinTags"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K6 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K4 ["Parent"]
       52 GETTABLEKS                       R6 R6 K13 ["styles"]
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
       77 GETTABLEKS                       R12 R0 K4 ["Parent"]
       79 GETTABLEKS                       R12 R12 K20 ["Dash"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R11 K21 ["join"]
       84 GETTABLEKS                       R13 R0 K2 ["UI"]
       86 GETIMPORT                        R14 K6 [require]
       88 GETTABLEKS                       R15 R13 K22 ["Components"]
       90 GETTABLEKS                       R15 R15 K23 ["IconButton"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R13 K22 ["Components"]
       97 GETTABLEKS                       R16 R16 K24 ["Image"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R13 K22 ["Components"]
      104 GETTABLEKS                       R17 R17 K25 ["Pane"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K6 [require]
      109 GETTABLEKS                       R18 R13 K22 ["Components"]
      111 GETTABLEKS                       R18 R18 K26 ["PropertyCell"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R19 R13 K22 ["Components"]
      118 GETTABLEKS                       R19 R19 K27 ["Shimmer"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R20 R13 K22 ["Components"]
      125 GETTABLEKS                       R20 R20 K28 ["Tooltip"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R21 R13 K22 ["Components"]
      132 GETTABLEKS                       R21 R21 K29 ["TextLabel"]
      134 CALL                             R20 1 1
      135 GETIMPORT                        R21 K6 [require]
      137 GETTABLEKS                       R22 R13 K22 ["Components"]
      139 GETTABLEKS                       R22 R22 K30 ["DEPRECATED_TextInput"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K6 [require]
      144 GETTABLEKS                       R23 R0 K31 ["Util"]
      146 GETTABLEKS                       R23 R23 K32 ["StyleModifier"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K6 [require]
      151 GETTABLEKS                       R24 R0 K33 ["SharedFlags"]
      153 GETTABLEKS                       R24 R24 K34 ["getFFlagDevFrameworkFixTreeTableRightClick"]
      155 CALL                             R23 1 1
      156 CALL                             R23 0 1
      157 GETIMPORT                        R24 K36 [game]
      159 LOADK                            R26 K37 ["TweenService"]
      160 NAMECALL                         R24 R24 K38 ["GetService"]
      162 CALL                             R24 2 1
      163 GETIMPORT                        R25 K41 [TweenInfo.new]
      165 LOADK                            R26 K42 [0.1]
      166 GETIMPORT                        R27 K46 [Enum.EasingStyle.Linear]
      168 CALL                             R25 2 1
      169 GETTABLEKS                       R26 R1 K47 ["PureComponent"]
      171 LOADK                            R28 K48 ["TreeTableCell"]
      172 NAMECALL                         R26 R26 K49 ["extend"]
      174 CALL                             R26 2 1
      175 DUPCLOSURE                       R27 K50 [PROTO_15]
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R17
      188 SETTABLEKS                       R27 R26 K51 ["init"]
      190 DUPCLOSURE                       R27 K52 [PROTO_16]
      191 SETTABLEKS                       R27 R26 K53 ["didMount"]
      193 DUPCLOSURE                       R27 K54 [PROTO_17]
      194 SETTABLEKS                       R27 R26 K55 ["willUpdate"]
      196 DUPCLOSURE                       R27 K56 [PROTO_18]
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R25
      199 SETTABLEKS                       R27 R26 K57 ["didUpdate"]
      201 DUPCLOSURE                       R27 K58 [PROTO_21]
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R18
      215 SETTABLEKS                       R27 R26 K59 ["render"]
      217 RETURN                           R26 1
