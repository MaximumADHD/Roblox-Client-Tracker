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
       15 DUPTABLE                         R5 K19 [{["ErrorMessage"], ["GetAutocompleteItems"], ["Item"], ["LayoutOrder"] = 3, ["OnChanged"], ["OnClick"], ["OnDoubleClick"], ["OnPressed"], ["OnRightClick"], ["Renderers"], ["Schema"], ["Selected"], ["Size"], ["StyleModifier"], ["Value"]}]
       16 GETTABLEKS                       R6 R0 K4 ["ErrorMessage"]
       18 SETTABLEKS                       R6 R5 K4 ["ErrorMessage"]
       20 GETTABLEKS                       R6 R1 K5 ["GetAutocompleteItems"]
       22 SETTABLEKS                       R6 R5 K5 ["GetAutocompleteItems"]
       24 GETTABLEKS                       R6 R0 K6 ["Item"]
       26 SETTABLEKS                       R6 R5 K6 ["Item"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K20 ["onChanged"]
       31 SETTABLEKS                       R6 R5 K9 ["OnChanged"]
       33 GETTABLEKS                       R6 R0 K10 ["OnClick"]
       35 SETTABLEKS                       R6 R5 K10 ["OnClick"]
       37 GETTABLEKS                       R6 R0 K11 ["OnDoubleClick"]
       39 SETTABLEKS                       R6 R5 K11 ["OnDoubleClick"]
       41 GETTABLEKS                       R6 R0 K12 ["OnPressed"]
       43 SETTABLEKS                       R6 R5 K12 ["OnPressed"]
       45 GETTABLEKS                       R6 R0 K13 ["OnRightClick"]
       47 SETTABLEKS                       R6 R5 K13 ["OnRightClick"]
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
       71 CALL                             R3 2 -1
       72 RETURN                           R3 -1

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
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R1 R0 K8 ["getIndent"]
       27 NEWCLOSURE                       R1 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 SETTABLEKS                       R1 R0 K9 ["getCellPadding"]
       35 NEWCLOSURE                       R1 P3
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K10 ["fetchCellContentsWidthIfOverflow"]
       39 NEWCLOSURE                       R1 P4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K11 ["onAbsoluteSizeChanged"]
       43 NEWCLOSURE                       R1 P5
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K12 ["onTextInputFocusLost"]
       47 NEWCLOSURE                       R1 P6
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K13 ["onPressed"]
       51 NEWCLOSURE                       R1 P7
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K14 ["onDoubleClick"]
       55 NEWCLOSURE                       R1 P8
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R1 R0 K15 ["onCellRightClick"]
       59 NEWCLOSURE                       R1 P9
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R1 R0 K16 ["onCellInputBegan"]
       63 NEWCLOSURE                       R1 P10
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U9
       71 SETTABLEKS                       R1 R0 K17 ["getTextElement"]
       73 DUPCLOSURE                       R1 K18 [PROTO_11]
       74 SETTABLEKS                       R1 R0 K19 ["getTextFromProps"]
       76 NEWCLOSURE                       R1 P12
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U10
       81 SETTABLEKS                       R1 R0 K20 ["getPropertyCell"]
       83 NEWCLOSURE                       R1 P13
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R1 R0 K21 ["onChanged"]
       87 DUPCLOSURE                       R1 K22 [PROTO_14]
       88 SETTABLEKS                       R1 R0 K23 ["defaultGetItemId"]
       90 GETTABLEKS                       R2 R0 K24 ["props"]
       92 GETTABLEKS                       R2 R2 K25 ["CellProps"]
       94 JUMPIFNOT                        R2 ; [+7]
       95 GETTABLEKS                       R1 R0 K24 ["props"]
       97 GETTABLEKS                       R1 R1 K25 ["CellProps"]
       99 GETTABLEKS                       R1 R1 K26 ["GetItemId"]
      101 JUMPIF                           R1 ; [+2]
      102 GETTABLEKS                       R1 R0 K23 ["defaultGetItemId"]
      104 SETTABLEKS                       R1 R0 K27 ["getItemId"]
      106 RETURN                           R0 0

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
       20 DIVRK                            R5 K9 [1] R6
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
      235 JUMPIFNOTEQKS                    R28 K15 ["table"] ; [+104]
      237 GETTABLEKS                       R28 R7 K52 ["Actions"]
      239 JUMPIFNOT                        R28 ; [+100]
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
      302 JUMP                             ; [+30]
      303 DUPTABLE                         R36 K69 [{["AutomaticSize"], ["LayoutOrder"], ["LeftIcon"], ["OnClick"], ["Size"], ["Style"] = "Compact", ["TooltipText"]}]
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
      329 GETTABLEKS                       R37 R32 K22 ["Tooltip"]
      331 SETTABLEKS                       R37 R36 K63 ["TooltipText"]
      333 CALL                             R34 2 1
      334 SETTABLE                         R34 R26 R33
      335 ADDK                             R25 R25 K73 [32]
      336 FORGLOOP                         R28 2 [inext] ; [-88]
      338 GETTABLEKS                       R27 R7 K74 ["AlwaysShowActions"]
      340 LOADN                            R28 0
      341 JUMPIFNOT                        R9 ; [+8]
      342 GETTABLEKS                       R30 R9 K38 ["Size"]
      344 GETTABLEKS                       R30 R30 K75 ["X"]
      346 GETTABLEKS                       R30 R30 K76 ["Offset"]
      348 ADD                              R29 R19 R30
      349 ADD                              R28 R28 R29
      350 JUMPIFNOT                        R21 ; [+2]
      351 ADD                              R29 R19 R17
      352 ADD                              R28 R28 R29
      353 GETIMPORT                        R29 K78 [UDim2.new]
      355 LOADN                            R30 1
      356 MINUS                            R31 R28
      357 LOADN                            R32 1
      358 LOADN                            R33 0
      359 CALL                             R29 4 1
      360 GETUPVAL                         R31 0
      361 JUMPIFNOT                        R31 ; [+23]
      362 GETUPVAL                         R30 7
      363 LOADK                            R31 K79 ["Component-TreeTableCell"]
      364 GETTABLEKS                       R33 R1 K80 ["StyleModifier"]
      366 GETUPVAL                         R34 2
      367 GETTABLEKS                       R34 R34 K81 ["Selected"]
      369 JUMPIFNOTEQ                      R33 R34 ; [+3]
      371 LOADK                            R32 K81 ["Selected"]
      372 JUMP                             ; [+6]
      373 GETTABLEKS                       R33 R1 K30 ["Emphasis"]
      375 JUMPIFNOT                        R33 ; [+2]
      376 LOADK                            R32 K82 ["Secondary"]
      377 JUMP                             ; [+1]
      378 LOADK                            R32 K10 ["Row"]
      379 GETUPVAL                         R34 6
      380 GETTABLEKS                       R34 R34 K66 ["Tag"]
      382 GETTABLE                         R33 R1 R34
      383 CALL                             R30 3 1
      384 JUMP                             ; [+1]
      385 LOADNIL                          R30
      386 MOVE                             R31 R26
      387 JUMPIFNOT                        R31 ; [+17]
      388 LOADB                            R31 1
      389 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      391 GETUPVAL                         R33 2
      392 GETTABLEKS                       R33 R33 K34 ["Hover"]
      394 JUMPIFEQ                         R32 R33 ; [+10]
      396 LOADB                            R31 1
      397 GETTABLEKS                       R32 R1 K80 ["StyleModifier"]
      399 GETUPVAL                         R33 2
      400 GETTABLEKS                       R33 R33 K81 ["Selected"]
      402 JUMPIFEQ                         R32 R33 ; [+2]
      404 MOVE                             R31 R27
      405 GETUPVAL                         R32 4
      406 GETTABLEKS                       R32 R32 K56 ["createElement"]
      408 GETUPVAL                         R33 8
      409 GETUPVAL                         R35 0
      410 JUMPIFNOT                        R35 ; [+29]
      411 NEWTABLE                         R34 4 0
      413 LOADB                            R35 1
      414 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      416 GETIMPORT                        R35 K78 [UDim2.new]
      418 GETTABLEKS                       R36 R4 K84 ["Scale"]
      420 GETTABLEKS                       R37 R4 K76 ["Offset"]
      422 LOADN                            R38 1
      423 LOADN                            R39 0
      424 CALL                             R35 4 1
      425 SETTABLEKS                       R35 R34 K38 ["Size"]
      427 GETUPVAL                         R35 4
      428 GETTABLEKS                       R35 R35 K85 ["Change"]
      430 GETTABLEKS                       R35 R35 K86 ["AbsoluteSize"]
      432 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      434 SETTABLE                         R36 R34 R35
      435 GETUPVAL                         R35 6
      436 GETTABLEKS                       R35 R35 K66 ["Tag"]
      438 SETTABLE                         R30 R34 R35
      439 JUMP                             ; [+36]
      440 NEWTABLE                         R34 8 0
      442 LOADK                            R35 K88 ["Box"]
      443 SETTABLEKS                       R35 R34 K28 ["Style"]
      445 SETTABLEKS                       R16 R34 K89 ["BackgroundColor3"]
      447 LOADN                            R35 1
      448 SETTABLEKS                       R35 R34 K90 ["BorderSizePixel"]
      450 GETTABLEKS                       R35 R15 K91 ["Border"]
      452 SETTABLEKS                       R35 R34 K92 ["BorderColor3"]
      454 GETIMPORT                        R35 K78 [UDim2.new]
      456 GETTABLEKS                       R36 R4 K84 ["Scale"]
      458 GETTABLEKS                       R37 R4 K76 ["Offset"]
      460 LOADN                            R38 1
      461 LOADN                            R39 0
      462 CALL                             R35 4 1
      463 SETTABLEKS                       R35 R34 K38 ["Size"]
      465 GETUPVAL                         R35 4
      466 GETTABLEKS                       R35 R35 K85 ["Change"]
      468 GETTABLEKS                       R35 R35 K86 ["AbsoluteSize"]
      470 GETTABLEKS                       R36 R0 K87 ["onAbsoluteSizeChanged"]
      472 SETTABLE                         R36 R34 R35
      473 LOADB                            R35 1
      474 SETTABLEKS                       R35 R34 K83 ["ClipsDescendants"]
      476 DUPTABLE                         R35 K93 [{"Tooltip", "Left", "Right"}]
      477 MOVE                             R36 R13
      478 JUMPIFNOT                        R36 ; [+21]
      479 GETUPVAL                         R36 4
      480 GETTABLEKS                       R36 R36 K56 ["createElement"]
      482 GETUPVAL                         R37 9
      483 DUPTABLE                         R38 K97 [{"MaxWidth", "Text", "TextXAlignment"}]
      484 JUMPIFNOT                        R15 ; [+5]
      485 GETTABLEKS                       R39 R15 K22 ["Tooltip"]
      487 GETTABLEKS                       R39 R39 K94 ["MaxWidth"]
      489 JUMP                             ; [+1]
      490 LOADNIL                          R39
      491 SETTABLEKS                       R39 R38 K94 ["MaxWidth"]
      493 SETTABLEKS                       R12 R38 K95 ["Text"]
      495 GETIMPORT                        R39 K98 [Enum.TextXAlignment.Left]
      497 SETTABLEKS                       R39 R38 K96 ["TextXAlignment"]
      499 CALL                             R36 2 1
      500 SETTABLEKS                       R36 R35 K22 ["Tooltip"]
      502 GETUPVAL                         R36 4
      503 GETTABLEKS                       R36 R36 K56 ["createElement"]
      505 GETUPVAL                         R37 8
      506 GETUPVAL                         R39 0
      507 JUMPIFNOT                        R39 ; [+37]
      508 NEWTABLE                         R38 4 0
      510 GETTABLEKS                       R39 R1 K2 ["ColumnIndex"]
      512 SETTABLEKS                       R39 R38 K59 ["LayoutOrder"]
      514 GETIMPORT                        R39 K78 [UDim2.new]
      516 LOADN                            R40 1
      517 MINUS                            R42 R25
      518 SUB                              R41 R42 R18
      519 LOADN                            R42 1
      520 LOADN                            R43 0
      521 CALL                             R39 4 1
      522 SETTABLEKS                       R39 R38 K38 ["Size"]
      524 GETIMPORT                        R39 K78 [UDim2.new]
      526 LOADN                            R40 0
      527 MOVE                             R41 R18
      528 LOADN                            R42 0
      529 LOADN                            R43 0
      530 CALL                             R39 4 1
      531 SETTABLEKS                       R39 R38 K99 ["Position"]
      533 GETUPVAL                         R39 6
      534 GETTABLEKS                       R39 R39 K66 ["Tag"]
      536 GETUPVAL                         R40 7
      537 LOADK                            R41 K100 ["Left X-Middle"]
      538 JUMPIFNOT                        R20 ; [+2]
      539 LOADK                            R42 K101 ["X-RowS"]
      540 JUMP                             ; [+1]
      541 LOADK                            R42 K102 ["X-RowM"]
      542 CALL                             R40 2 1
      543 SETTABLE                         R40 R38 R39
      544 JUMP                             ; [+28]
      545 DUPTABLE                         R38 K107 [{"Layout", "LayoutOrder", "Padding", "Spacing", "HorizontalAlignment", "Size"}]
      546 GETIMPORT                        R39 K110 [Enum.FillDirection.Horizontal]
      548 SETTABLEKS                       R39 R38 K103 ["Layout"]
      550 GETTABLEKS                       R39 R1 K2 ["ColumnIndex"]
      552 SETTABLEKS                       R39 R38 K59 ["LayoutOrder"]
      554 SETTABLEKS                       R23 R38 K104 ["Padding"]
      556 GETTABLEKS                       R39 R15 K111 ["CellSpacing"]
      558 SETTABLEKS                       R39 R38 K105 ["Spacing"]
      560 GETIMPORT                        R39 K112 [Enum.HorizontalAlignment.Left]
      562 SETTABLEKS                       R39 R38 K106 ["HorizontalAlignment"]
      564 GETIMPORT                        R39 K78 [UDim2.new]
      566 LOADN                            R40 1
      567 MINUS                            R41 R25
      568 LOADN                            R42 1
      569 LOADN                            R43 0
      570 CALL                             R39 4 1
      571 SETTABLEKS                       R39 R38 K38 ["Size"]
      573 DUPTABLE                         R39 K114 [{"Toggle", "LeftIcon", "Shimmer", "Text"}]
      574 JUMPIFNOT                        R21 ; [+122]
      575 GETUPVAL                         R40 4
      576 GETTABLEKS                       R40 R40 K56 ["createElement"]
      578 GETUPVAL                         R41 8
      579 DUPTABLE                         R42 K115 [{["AutomaticSize"], ["LayoutOrder"] = 1}]
      580 GETIMPORT                        R43 K72 [Enum.AutomaticSize.XY]
      582 SETTABLEKS                       R43 R42 K68 ["AutomaticSize"]
      584 DUPTABLE                         R43 K116 [{"Icon"}]
      585 GETUPVAL                         R44 4
      586 GETTABLEKS                       R44 R44 K56 ["createElement"]
      588 LOADK                            R45 K117 ["ImageButton"]
      589 GETUPVAL                         R47 0
      590 JUMPIFNOT                        R47 ; [+36]
      591 NEWTABLE                         R46 4 0
      593 GETUPVAL                         R47 6
      594 GETTABLEKS                       R47 R47 K66 ["Tag"]
      596 GETUPVAL                         R48 7
      597 LOADK                            R49 K37 ["Arrow"]
      598 JUMPIF                           R24 ; [+2]
      599 LOADK                            R50 K118 ["Invisible"]
      600 JUMP                             ; [+1]
      601 LOADNIL                          R50
      602 CALL                             R48 2 1
      603 SETTABLE                         R48 R46 R47
      604 GETUPVAL                         R47 4
      605 GETTABLEKS                       R47 R47 K119 ["Ref"]
      607 GETTABLEKS                       R48 R0 K120 ["toggleRef"]
      609 SETTABLE                         R48 R46 R47
      610 GETUPVAL                         R47 4
      611 GETTABLEKS                       R47 R47 K121 ["Event"]
      613 GETTABLEKS                       R47 R47 K122 ["Activated"]
      615 GETTABLEKS                       R48 R0 K123 ["onToggle"]
      617 SETTABLE                         R48 R46 R47
      618 GETUPVAL                         R47 4
      619 GETTABLEKS                       R47 R47 K121 ["Event"]
      621 GETTABLEKS                       R47 R47 K124 ["InputBegan"]
      623 GETTABLEKS                       R48 R0 K125 ["onCellInputBegan"]
      625 SETTABLE                         R48 R46 R47
      626 JUMP                             ; [+65]
      627 NEWTABLE                         R46 16 0
      629 GETIMPORT                        R47 K127 [UDim2.fromOffset]
      631 MOVE                             R48 R17
      632 MOVE                             R49 R17
      633 CALL                             R47 2 1
      634 SETTABLEKS                       R47 R46 K38 ["Size"]
      636 LOADN                            R47 1
      637 SETTABLEKS                       R47 R46 K128 ["BackgroundTransparency"]
      639 JUMPIF                           R24 ; [+2]
      640 LOADN                            R47 1
      641 JUMP                             ; [+1]
      642 LOADNIL                          R47
      643 SETTABLEKS                       R47 R46 K129 ["ImageTransparency"]
      645 GETTABLEKS                       R47 R15 K37 ["Arrow"]
      647 GETTABLEKS                       R47 R47 K61 ["Image"]
      649 SETTABLEKS                       R47 R46 K61 ["Image"]
      651 GETTABLEKS                       R47 R15 K37 ["Arrow"]
      653 GETTABLEKS                       R47 R47 K130 ["Color"]
      655 SETTABLEKS                       R47 R46 K131 ["ImageColor3"]
      657 GETIMPORT                        R47 K133 [Vector2.new]
      659 MOVE                             R48 R17
      660 MOVE                             R49 R17
      661 CALL                             R47 2 1
      662 SETTABLEKS                       R47 R46 K134 ["ImageRectSize"]
      664 GETTABLEKS                       R47 R15 K37 ["Arrow"]
      666 GETTABLEKS                       R47 R47 K135 ["CollapsedOffset"]
      668 SETTABLEKS                       R47 R46 K136 ["ImageRectOffset"]
      670 GETUPVAL                         R47 4
      671 GETTABLEKS                       R47 R47 K119 ["Ref"]
      673 GETTABLEKS                       R48 R0 K120 ["toggleRef"]
      675 SETTABLE                         R48 R46 R47
      676 GETUPVAL                         R47 4
      677 GETTABLEKS                       R47 R47 K121 ["Event"]
      679 GETTABLEKS                       R47 R47 K122 ["Activated"]
      681 GETTABLEKS                       R48 R0 K123 ["onToggle"]
      683 SETTABLE                         R48 R46 R47
      684 GETUPVAL                         R47 4
      685 GETTABLEKS                       R47 R47 K121 ["Event"]
      687 GETTABLEKS                       R47 R47 K124 ["InputBegan"]
      689 GETTABLEKS                       R48 R0 K125 ["onCellInputBegan"]
      691 SETTABLE                         R48 R46 R47
      692 CALL                             R44 2 1
      693 SETTABLEKS                       R44 R43 K60 ["Icon"]
      695 CALL                             R40 3 1
      696 JUMP                             ; [+1]
      697 LOADNIL                          R40
      698 SETTABLEKS                       R40 R39 K113 ["Toggle"]
      700 JUMPIFNOT                        R9 ; [+10]
      701 GETUPVAL                         R40 4
      702 GETTABLEKS                       R40 R40 K56 ["createElement"]
      704 GETUPVAL                         R41 10
      705 GETUPVAL                         R42 1
      706 DUPTABLE                         R43 K137 [{["LayoutOrder"] = 2}]
      707 MOVE                             R44 R9
      708 CALL                             R42 2 -1
      709 CALL                             R40 -1 1
      710 JUMP                             ; [+1]
      711 LOADNIL                          R40
      712 SETTABLEKS                       R40 R39 K19 ["LeftIcon"]
      714 JUMPIFNOT                        R10 ; [+7]
      715 GETUPVAL                         R40 4
      716 GETTABLEKS                       R40 R40 K56 ["createElement"]
      718 GETUPVAL                         R41 11
      719 MOVE                             R42 R10
      720 CALL                             R40 2 1
      721 JUMP                             ; [+1]
      722 LOADNIL                          R40
      723 SETTABLEKS                       R40 R39 K20 ["Shimmer"]
      725 JUMPIFNOT                        R11 ; [+43]
      726 GETTABLEKS                       R40 R0 K138 ["getPropertyCell"]
      728 DUPTABLE                         R41 K143 [{"ErrorMessage", "OnClick", "OnDoubleClick", "OnPressed", "OnRightClick", "Renderers", "Schema", "Selected", "Size", "Value"}]
      729 GETTABLEKS                       R42 R7 K23 ["ErrorMessage"]
      731 SETTABLEKS                       R42 R41 K23 ["ErrorMessage"]
      733 GETTABLEKS                       R42 R7 K62 ["OnClick"]
      735 SETTABLEKS                       R42 R41 K62 ["OnClick"]
      737 GETTABLEKS                       R42 R0 K144 ["onDoubleClick"]
      739 SETTABLEKS                       R42 R41 K139 ["OnDoubleClick"]
      741 GETTABLEKS                       R42 R0 K145 ["onPressed"]
      743 SETTABLEKS                       R42 R41 K140 ["OnPressed"]
      745 GETTABLEKS                       R42 R0 K146 ["onCellRightClick"]
      747 SETTABLEKS                       R42 R41 K141 ["OnRightClick"]
      749 GETTABLEKS                       R42 R7 K142 ["Renderers"]
      751 SETTABLEKS                       R42 R41 K142 ["Renderers"]
      753 GETTABLEKS                       R42 R7 K21 ["Schema"]
      755 SETTABLEKS                       R42 R41 K21 ["Schema"]
      757 GETTABLEKS                       R42 R7 K81 ["Selected"]
      759 SETTABLEKS                       R42 R41 K81 ["Selected"]
      761 SETTABLEKS                       R29 R41 K38 ["Size"]
      763 GETTABLEKS                       R42 R7 K16 ["Value"]
      765 SETTABLEKS                       R42 R41 K16 ["Value"]
      767 CALL                             R40 1 1
      768 JUMP                             ; [+6]
      769 GETTABLEKS                       R40 R0 K147 ["getTextElement"]
      771 MOVE                             R41 R1
      772 MOVE                             R42 R8
      773 MOVE                             R43 R29
      774 CALL                             R40 3 1
      775 SETTABLEKS                       R40 R39 K95 ["Text"]
      777 CALL                             R36 3 1
      778 SETTABLEKS                       R36 R35 K47 ["Left"]
      780 JUMPIFNOT                        R31 ; [+66]
      781 GETUPVAL                         R36 4
      782 GETTABLEKS                       R36 R36 K56 ["createElement"]
      784 GETUPVAL                         R37 8
      785 GETUPVAL                         R39 0
      786 JUMPIFNOT                        R39 ; [+30]
      787 NEWTABLE                         R38 4 0
      789 GETIMPORT                        R39 K133 [Vector2.new]
      791 LOADN                            R40 1
      792 LOADK                            R41 K148 [0.5]
      793 CALL                             R39 2 1
      794 SETTABLEKS                       R39 R38 K149 ["AnchorPoint"]
      796 GETIMPORT                        R39 K78 [UDim2.new]
      798 LOADN                            R40 1
      799 MINUS                            R41 R19
      800 LOADK                            R42 K148 [0.5]
      801 LOADN                            R43 0
      802 CALL                             R39 4 1
      803 SETTABLEKS                       R39 R38 K99 ["Position"]
      805 GETUPVAL                         R39 6
      806 GETTABLEKS                       R39 R39 K66 ["Tag"]
      808 GETUPVAL                         R40 7
      809 LOADK                            R41 K150 ["X-Fit X-Middle"]
      810 JUMPIFNOT                        R20 ; [+2]
      811 LOADK                            R42 K101 ["X-RowS"]
      812 JUMP                             ; [+1]
      813 LOADK                            R42 K102 ["X-RowM"]
      814 CALL                             R40 2 1
      815 SETTABLE                         R40 R38 R39
      816 JUMP                             ; [+27]
      817 DUPTABLE                         R38 K151 [{"AnchorPoint", "AutomaticSize", "Layout", "Position", "Spacing"}]
      818 GETIMPORT                        R39 K133 [Vector2.new]
      820 LOADN                            R40 1
      821 LOADK                            R41 K148 [0.5]
      822 CALL                             R39 2 1
      823 SETTABLEKS                       R39 R38 K149 ["AnchorPoint"]
      825 GETIMPORT                        R39 K72 [Enum.AutomaticSize.XY]
      827 SETTABLEKS                       R39 R38 K68 ["AutomaticSize"]
      829 GETIMPORT                        R39 K110 [Enum.FillDirection.Horizontal]
      831 SETTABLEKS                       R39 R38 K103 ["Layout"]
      833 GETIMPORT                        R39 K78 [UDim2.new]
      835 LOADN                            R40 1
      836 MINUS                            R41 R19
      837 LOADK                            R42 K148 [0.5]
      838 LOADN                            R43 0
      839 CALL                             R39 4 1
      840 SETTABLEKS                       R39 R38 K99 ["Position"]
      842 SETTABLEKS                       R19 R38 K105 ["Spacing"]
      844 MOVE                             R39 R26
      845 CALL                             R36 3 1
      846 JUMP                             ; [+1]
      847 LOADNIL                          R36
      848 SETTABLEKS                       R36 R35 K48 ["Right"]
      850 CALL                             R32 3 -1
      851 RETURN                           R32 -1

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
      167 DUPCLOSURE                       R26 K48 [PROTO_15]
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
      181 DUPCLOSURE                       R26 K50 [PROTO_16]
      182 SETTABLEKS                       R26 R25 K51 ["didMount"]
      184 DUPCLOSURE                       R26 K52 [PROTO_17]
      185 SETTABLEKS                       R26 R25 K53 ["willUpdate"]
      187 DUPCLOSURE                       R26 K54 [PROTO_18]
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R24
      190 SETTABLEKS                       R26 R25 K55 ["didUpdate"]
      192 DUPCLOSURE                       R26 K56 [PROTO_21]
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
