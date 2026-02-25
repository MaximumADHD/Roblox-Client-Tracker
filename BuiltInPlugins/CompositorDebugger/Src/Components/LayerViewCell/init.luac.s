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
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["CellProps"]
        5 GETTABLEKS                       R2 R3 K2 ["OnFocused"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 MOVE                             R3 R2
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K3 ["Row"]
       12 GETTABLEKS                       R6 R1 K4 ["ColumnIndex"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       17 GETTABLEKS                       R2 R3 K5 ["path"]
       19 GETTABLEKS                       R3 R0 K6 ["ColumnIndex"]
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_6:
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
       17 GETTABLEKS                       R2 R3 K5 ["path"]
       19 GETTABLEKS                       R3 R0 K6 ["ColumnIndex"]
       21 GETVARARGS                       R4 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["CellProps"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K14 [{"AnchorPoint", "Size", "Position", "GetAutocompleteItems", "Item", "LayoutOrder", "OnChanged", "OnDoubleClick", "OnPressed", "Schema", "Value"}]
       10 GETIMPORT                        R5 K17 [Vector2.new]
       12 LOADN                            R6 0
       13 LOADK                            R7 K18 [0.5]
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K3 ["AnchorPoint"]
       17 GETIMPORT                        R5 K20 [UDim2.new]
       19 LOADN                            R6 1
       20 LOADN                            R7 250
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K4 ["Size"]
       26 GETIMPORT                        R5 K20 [UDim2.new]
       28 LOADN                            R6 0
       29 LOADN                            R7 0
       30 LOADK                            R8 K18 [0.5]
       31 LOADN                            R9 0
       32 CALL                             R5 4 1
       33 SETTABLEKS                       R5 R4 K5 ["Position"]
       35 GETTABLEKS                       R5 R1 K6 ["GetAutocompleteItems"]
       37 SETTABLEKS                       R5 R4 K6 ["GetAutocompleteItems"]
       39 GETTABLEKS                       R5 R0 K7 ["Item"]
       41 SETTABLEKS                       R5 R4 K7 ["Item"]
       43 LOADN                            R5 3
       44 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K21 ["onChanged"]
       49 SETTABLEKS                       R5 R4 K9 ["OnChanged"]
       51 GETTABLEKS                       R5 R0 K10 ["OnDoubleClick"]
       53 SETTABLEKS                       R5 R4 K10 ["OnDoubleClick"]
       55 GETTABLEKS                       R5 R0 K11 ["OnPressed"]
       57 SETTABLEKS                       R5 R4 K11 ["OnPressed"]
       59 GETTABLEKS                       R5 R0 K12 ["Schema"]
       61 SETTABLEKS                       R5 R4 K12 ["Schema"]
       63 GETTABLEKS                       R5 R0 K13 ["Value"]
       65 SETTABLEKS                       R5 R4 K13 ["Value"]
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_9:
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
       23 GETTABLEKS                       R3 R4 K5 ["path"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K0 ["props"]
       28 GETTABLEKS                       R4 R5 K6 ["ColumnIndex"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"ForceRefresh"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ForceRefresh"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onToggle"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["createRef"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K5 ["textRef"]
       16 DUPCLOSURE                       R1 K6 [PROTO_1]
       17 SETTABLEKS                       R1 R0 K7 ["fetchCellContentsWidthIfOverflow"]
       19 DUPCLOSURE                       R1 K8 [PROTO_2]
       20 SETTABLEKS                       R1 R0 K9 ["onAbsoluteSizeChanged"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K10 ["onTextInputFocused"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K11 ["onTextInputFocusLost"]
       30 NEWCLOSURE                       R1 P5
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K12 ["onPressed"]
       34 NEWCLOSURE                       R1 P6
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K13 ["onDoubleClick"]
       38 DUPCLOSURE                       R1 K14 [PROTO_7]
       39 SETTABLEKS                       R1 R0 K15 ["getTextFromProps"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U1
       45 SETTABLEKS                       R1 R0 K16 ["getPropertyCell"]
       47 NEWCLOSURE                       R1 P9
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K17 ["onChanged"]
       51 RETURN                           R0 0

PROTO_11:
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
       31 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ForceRefresh"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["ForceRefresh"]
        7 ADDK                             R3 R4 K2 [1]
        8 SETTABLEKS                       R3 R2 K0 ["ForceRefresh"]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R3 K1 [settings]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R2 R3 K2 ["Studio"]
        6 GETTABLEKS                       R1 R2 K3 ["ThemeChanged"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K4 ["Connect"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K5 ["onThemeChanged"]
       15 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["onThemeChanged"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+2]
        1 NOT                              R2 R1
        2 JUMPIF                           R2 ; [+2]
        3 NOT                              R3 R0
        4 AND                              R2 R3 R1
        5 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R5 R3 K2 ["ForceRefresh"]
        6 GETTABLEKS                       R6 R2 K2 ["ForceRefresh"]
        8 JUMPIFNOTEQ                      R5 R6 ; [+7]
       10 GETTABLEKS                       R5 R4 K3 ["StyleModifier"]
       12 GETTABLEKS                       R6 R1 K3 ["StyleModifier"]
       14 JUMPIFEQ                         R5 R6 ; [+3]
       16 LOADB                            R5 1
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R4 K4 ["CellProps"]
       20 GETTABLEKS                       R6 R1 K4 ["CellProps"]
       22 GETTABLEKS                       R7 R4 K5 ["Row"]
       24 GETTABLEKS                       R8 R1 K5 ["Row"]
       26 GETTABLEKS                       R9 R4 K6 ["Columns"]
       28 GETTABLEKS                       R10 R1 K6 ["Columns"]
       30 DUPCLOSURE                       R11 K7 [PROTO_16]
       31 JUMPIFNOT                        R5 ; [+2]
       32 NOT                              R12 R6
       33 JUMPIF                           R12 ; [+2]
       34 NOT                              R13 R5
       35 AND                              R12 R13 R6
       36 JUMPIF                           R12 ; [+12]
       37 JUMPIFNOT                        R7 ; [+2]
       38 NOT                              R12 R8
       39 JUMPIF                           R12 ; [+2]
       40 NOT                              R13 R7
       41 AND                              R12 R13 R8
       42 JUMPIF                           R12 ; [+6]
       43 JUMPIFNOT                        R9 ; [+2]
       44 NOT                              R12 R10
       45 JUMPIF                           R12 ; [+2]
       46 NOT                              R13 R9
       47 AND                              R12 R13 R10
       48 JUMPIFNOT                        R12 ; [+2]
       49 LOADB                            R12 1
       50 RETURN                           R12 1
       51 JUMPIFNOT                        R5 ; [+66]
       52 JUMPIFNOT                        R6 ; [+65]
       53 JUMPIFNOT                        R9 ; [+64]
       54 JUMPIFNOT                        R10 ; [+63]
       55 GETTABLEKS                       R14 R4 K8 ["ColumnIndex"]
       57 GETTABLE                         R12 R9 R14
       58 GETTABLEKS                       R14 R1 K8 ["ColumnIndex"]
       60 GETTABLE                         R13 R10 R14
       61 GETTABLEKS                       R14 R12 K9 ["Key"]
       63 GETTABLEKS                       R15 R13 K9 ["Key"]
       65 GETTABLEKS                       R18 R7 K10 ["item"]
       67 GETTABLE                         R16 R18 R14
       68 GETTABLEKS                       R18 R8 K10 ["item"]
       70 GETTABLE                         R17 R18 R15
       71 GETTABLEKS                       R19 R5 K11 ["Expansion"]
       73 GETTABLEKS                       R20 R5 K12 ["GetItemId"]
       75 GETTABLEKS                       R21 R7 K10 ["item"]
       77 CALL                             R20 1 1
       78 GETTABLE                         R18 R19 R20
       79 GETTABLEKS                       R20 R6 K11 ["Expansion"]
       81 GETTABLEKS                       R21 R6 K12 ["GetItemId"]
       83 GETTABLEKS                       R22 R8 K10 ["item"]
       85 CALL                             R21 1 1
       86 GETTABLE                         R19 R20 R21
       87 JUMPIFEQ                         R18 R19 ; [+3]
       89 LOADB                            R18 1
       90 RETURN                           R18 1
       91 JUMPIFEQ                         R16 R17 ; [+26]
       93 FASTCALL1                        TYPEOF R16 ; [+3]
       94 MOVE                             R19 R16
       95 GETIMPORT                        R18 K14 [typeof]
       97 CALL                             R18 1 1
       98 JUMPIFNOTEQKS                    R18 K15 ["table"] ; [+17]
      100 LOADB                            R18 1
      101 GETTABLEKS                       R19 R16 K16 ["Value"]
      103 GETTABLEKS                       R20 R17 K16 ["Value"]
      105 JUMPIFNOTEQ                      R19 R20 ; [+9]
      107 GETTABLEKS                       R19 R16 K17 ["Actions"]
      109 GETTABLEKS                       R20 R17 K17 ["Actions"]
      111 JUMPIFNOTEQ                      R19 R20 ; [+2]
      113 LOADB                            R18 0 +1
      114 LOADB                            R18 1
      115 RETURN                           R18 1
      116 LOADB                            R18 1
      117 RETURN                           R18 1
      118 LOADB                            R12 0
      119 RETURN                           R12 1

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
       13 GETTABLEKS                       R2 R3 K3 ["path"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K4 ["ColumnIndex"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["Columns"]
        6 GETTABLEKS                       R5 R1 K3 ["ColumnIndex"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R4 R3 K4 ["Key"]
       11 JUMPIF                           R4 ; [+2]
       12 GETTABLEKS                       R4 R3 K5 ["Name"]
       14 GETTABLEKS                       R5 R1 K6 ["Width"]
       16 JUMPIF                           R5 ; [+8]
       17 GETIMPORT                        R5 K9 [UDim.new]
       19 GETTABLEKS                       R8 R1 K2 ["Columns"]
       21 LENGTH                           R7 R8
       22 DIVRK                            R6 R10 K7 ["UDim"]
       23 LOADN                            R7 0
       24 CALL                             R5 2 1
       25 GETTABLEKS                       R6 R1 K11 ["Row"]
       27 GETTABLEKS                       R7 R1 K12 ["CellProps"]
       29 GETTABLEKS                       R9 R6 K13 ["item"]
       31 GETTABLE                         R8 R9 R4
       32 GETUPVAL                         R9 0
       33 LOADK                            R11 K14 ["ActionIconSize"]
       34 NAMECALL                         R9 R9 K15 ["GetAttribute"]
       36 CALL                             R9 2 1
       37 GETUPVAL                         R10 0
       38 LOADK                            R12 K16 ["CellSpacing"]
       39 NAMECALL                         R10 R10 K15 ["GetAttribute"]
       41 CALL                             R10 2 1
       42 LOADNIL                          R11
       43 LOADB                            R12 0
       44 FASTCALL1                        TYPEOF R8 ; [+3]
       45 MOVE                             R14 R8
       46 GETIMPORT                        R13 K18 [typeof]
       48 CALL                             R13 1 1
       49 JUMPIFNOTEQKS                    R13 K19 ["table"] ; [+13]
       51 GETTABLEKS                       R14 R8 K20 ["Value"]
       53 FASTCALL1                        TOSTRING R14 ; [+2]
       54 GETIMPORT                        R13 K22 [tostring]
       56 CALL                             R13 1 1
       57 MOVE                             R11 R13
       58 GETTABLEKS                       R13 R8 K23 ["Schema"]
       60 JUMPIFNOT                        R13 ; [+8]
       61 LOADB                            R12 1
       62 JUMP                             ; [+6]
       63 FASTCALL1                        TOSTRING R8 ; [+3]
       64 MOVE                             R14 R8
       65 GETIMPORT                        R13 K22 [tostring]
       67 CALL                             R13 1 1
       68 MOVE                             R11 R13
       69 GETUPVAL                         R13 1
       70 GETTABLEKS                       R14 R1 K24 ["Style"]
       72 GETTABLEKS                       R15 R7 K25 ["CellStyle"]
       74 CALL                             R13 2 1
       75 GETTABLEKS                       R15 R7 K26 ["Expansion"]
       77 GETTABLEKS                       R16 R7 K27 ["GetItemId"]
       79 GETTABLEKS                       R17 R6 K13 ["item"]
       81 CALL                             R16 1 1
       82 GETTABLE                         R14 R15 R16
       83 GETTABLEKS                       R16 R13 K28 ["Arrow"]
       85 GETTABLEKS                       R15 R16 K29 ["Size"]
       87 GETTABLEKS                       R17 R6 K30 ["depth"]
       89 GETUPVAL                         R18 0
       90 LOADK                            R20 K31 ["Indent"]
       91 NAMECALL                         R18 R18 K15 ["GetAttribute"]
       93 CALL                             R18 2 1
       94 MUL                              R16 R17 R18
       95 GETTABLEKS                       R18 R1 K3 ["ColumnIndex"]
       97 JUMPIFEQKN                       R18 K10 [1] ; [+2]
       99 LOADB                            R17 0 +1
      100 LOADB                            R17 1
      101 MOVE                             R18 R17
      102 JUMPIFNOT                        R18 ; [+2]
      103 GETTABLEKS                       R18 R6 K32 ["hasChildren"]
      105 JUMPIFNOT                        R17 ; [+2]
      106 MOVE                             R19 R16
      107 JUMP                             ; [+1]
      108 LOADN                            R19 0
      109 LOADNIL                          R20
      110 FASTCALL1                        TYPEOF R8 ; [+3]
      111 MOVE                             R22 R8
      112 GETIMPORT                        R21 K18 [typeof]
      114 CALL                             R21 1 1
      115 JUMPIFNOTEQKS                    R21 K19 ["table"] ; [+113]
      117 GETTABLEKS                       R21 R8 K33 ["Actions"]
      119 JUMPIFNOT                        R21 ; [+109]
      120 ADD                              R19 R19 R10
      121 NEWTABLE                         R20 0 0
      123 GETIMPORT                        R21 K35 [ipairs]
      125 GETTABLEKS                       R22 R8 K33 ["Actions"]
      127 CALL                             R21 1 3
      128 FORGPREP_INEXT                   R21
      129 GETTABLEKS                       R26 R25 K36 ["Id"]
      131 GETUPVAL                         R29 2
      132 GETTABLEKS                       R28 R29 K37 ["LAYERVIEW_ACTIONS"]
      134 GETTABLEKS                       R27 R28 K38 ["NoOp"]
      136 JUMPIFNOTEQ                      R26 R27 ; [+20]
      138 LOADK                            R27 K39 ["Action "]
      139 MOVE                             R28 R24
      140 CONCAT                           R26 R27 R28
      141 GETUPVAL                         R28 3
      142 GETTABLEKS                       R27 R28 K40 ["createElement"]
      144 GETUPVAL                         R28 4
      145 NEWTABLE                         R29 2 0
      147 SETTABLEKS                       R24 R29 K41 ["LayoutOrder"]
      149 GETUPVAL                         R31 3
      150 GETTABLEKS                       R30 R31 K42 ["Tag"]
      152 LOADK                            R31 K43 ["ActionIcon"]
      153 SETTABLE                         R31 R29 R30
      154 CALL                             R27 2 1
      155 SETTABLE                         R27 R20 R26
      156 JUMP                             ; [+68]
      157 GETTABLEKS                       R26 R25 K36 ["Id"]
      159 GETUPVAL                         R28 3
      160 GETTABLEKS                       R27 R28 K40 ["createElement"]
      162 GETUPVAL                         R28 5
      163 NEWTABLE                         R29 8 0
      165 LOADK                            R30 K44 ["Round"]
      166 SETTABLEKS                       R30 R29 K24 ["Style"]
      168 GETIMPORT                        R30 K47 [UDim2.fromOffset]
      170 MOVE                             R31 R9
      171 MOVE                             R32 R9
      172 CALL                             R30 2 1
      173 SETTABLEKS                       R30 R29 K29 ["Size"]
      175 SETTABLEKS                       R24 R29 K41 ["LayoutOrder"]
      177 NEWCLOSURE                       R30 P0
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R25
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R1
      182 SETTABLEKS                       R30 R29 K48 ["OnClick"]
      184 GETUPVAL                         R31 3
      185 GETTABLEKS                       R30 R31 K42 ["Tag"]
      187 LOADK                            R31 K43 ["ActionIcon"]
      188 SETTABLE                         R31 R29 R30
      189 DUPTABLE                         R30 K51 [{"Icon", "Tooltip"}]
      190 GETUPVAL                         R32 3
      191 GETTABLEKS                       R31 R32 K40 ["createElement"]
      193 GETUPVAL                         R32 6
      194 DUPTABLE                         R33 K53 [{"Image"}]
      195 GETTABLEKS                       R34 R25 K49 ["Icon"]
      197 SETTABLEKS                       R34 R33 K52 ["Image"]
      199 CALL                             R31 2 1
      200 SETTABLEKS                       R31 R30 K49 ["Icon"]
      202 GETTABLEKS                       R32 R25 K50 ["Tooltip"]
      204 JUMPIFNOT                        R32 ; [+15]
      205 GETUPVAL                         R32 3
      206 GETTABLEKS                       R31 R32 K40 ["createElement"]
      208 GETUPVAL                         R32 7
      209 DUPTABLE                         R33 K55 [{"Text"}]
      210 LOADK                            R36 K56 ["Tooltips"]
      211 GETTABLEKS                       R37 R25 K50 ["Tooltip"]
      213 NAMECALL                         R34 R2 K57 ["getText"]
      215 CALL                             R34 3 1
      216 SETTABLEKS                       R34 R33 K54 ["Text"]
      218 CALL                             R31 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R31
      221 SETTABLEKS                       R31 R30 K50 ["Tooltip"]
      223 CALL                             R27 3 1
      224 SETTABLE                         R27 R20 R26
      225 ADD                              R26 R9 R10
      226 ADD                              R19 R19 R26
      227 FORGLOOP                         R21 2 [inext] ; [-99]
      229 LOADN                            R21 0
      230 JUMPIFNOT                        R18 ; [+4]
      231 GETTABLEKS                       R23 R13 K16 ["CellSpacing"]
      233 ADD                              R22 R23 R15
      234 ADD                              R21 R21 R22
      235 GETIMPORT                        R22 K58 [UDim2.new]
      237 LOADN                            R23 1
      238 MINUS                            R24 R21
      239 LOADN                            R25 1
      240 LOADN                            R26 0
      241 CALL                             R22 4 1
      242 GETUPVAL                         R24 3
      243 GETTABLEKS                       R23 R24 K40 ["createElement"]
      245 GETUPVAL                         R24 4
      246 NEWTABLE                         R25 4 0
      248 LOADK                            R26 K59 ["Box"]
      249 SETTABLEKS                       R26 R25 K24 ["Style"]
      251 GETIMPORT                        R26 K58 [UDim2.new]
      253 GETTABLEKS                       R27 R5 K60 ["Scale"]
      255 GETTABLEKS                       R28 R5 K61 ["Offset"]
      257 LOADN                            R29 1
      258 LOADN                            R30 0
      259 CALL                             R26 4 1
      260 SETTABLEKS                       R26 R25 K29 ["Size"]
      262 GETUPVAL                         R28 3
      263 GETTABLEKS                       R27 R28 K62 ["Change"]
      265 GETTABLEKS                       R26 R27 K63 ["AbsoluteSize"]
      267 GETTABLEKS                       R27 R0 K64 ["onAbsoluteSizeChanged"]
      269 SETTABLE                         R27 R25 R26
      270 GETUPVAL                         R27 3
      271 GETTABLEKS                       R26 R27 K42 ["Tag"]
      273 GETUPVAL                         R27 8
      274 LOADK                            R28 K65 ["LayerViewCell"]
      275 GETTABLEKS                       R30 R6 K30 ["depth"]
      277 JUMPIFNOTEQKN                    R30 K66 [0] ; [+3]
      279 LOADK                            R29 K67 ["Section"]
      280 JUMP                             ; [+1]
      281 LOADNIL                          R29
      282 CALL                             R27 2 1
      283 SETTABLE                         R27 R25 R26
      284 DUPTABLE                         R26 K70 [{"Left", "Right"}]
      285 GETUPVAL                         R28 3
      286 GETTABLEKS                       R27 R28 K40 ["createElement"]
      288 GETUPVAL                         R28 4
      289 NEWTABLE                         R29 4 0
      291 GETTABLEKS                       R30 R1 K3 ["ColumnIndex"]
      293 SETTABLEKS                       R30 R29 K41 ["LayoutOrder"]
      295 GETIMPORT                        R30 K58 [UDim2.new]
      297 LOADN                            R31 1
      298 MINUS                            R32 R19
      299 LOADN                            R33 1
      300 LOADN                            R34 0
      301 CALL                             R30 4 1
      302 SETTABLEKS                       R30 R29 K29 ["Size"]
      304 JUMPIFNOT                        R17 ; [+6]
      305 GETIMPORT                        R30 K47 [UDim2.fromOffset]
      307 MOVE                             R31 R16
      308 LOADN                            R32 0
      309 CALL                             R30 2 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R30
      312 SETTABLEKS                       R30 R29 K71 ["Position"]
      314 GETUPVAL                         R31 3
      315 GETTABLEKS                       R30 R31 K42 ["Tag"]
      317 LOADK                            R31 K72 ["X-RowS X-Middle"]
      318 SETTABLE                         R31 R29 R30
      319 DUPTABLE                         R30 K74 [{"Toggle", "Text"}]
      320 JUMPIFNOT                        R18 ; [+73]
      321 GETUPVAL                         R32 3
      322 GETTABLEKS                       R31 R32 K40 ["createElement"]
      324 GETUPVAL                         R32 4
      325 DUPTABLE                         R33 K76 [{"AutomaticSize", "LayoutOrder"}]
      326 GETIMPORT                        R34 K79 [Enum.AutomaticSize.XY]
      328 SETTABLEKS                       R34 R33 K75 ["AutomaticSize"]
      330 LOADN                            R34 1
      331 SETTABLEKS                       R34 R33 K41 ["LayoutOrder"]
      333 DUPTABLE                         R34 K80 [{"Icon"}]
      334 GETUPVAL                         R36 3
      335 GETTABLEKS                       R35 R36 K40 ["createElement"]
      337 LOADK                            R36 K81 ["ImageButton"]
      338 NEWTABLE                         R37 8 0
      340 GETIMPORT                        R38 K47 [UDim2.fromOffset]
      342 MOVE                             R39 R15
      343 MOVE                             R40 R15
      344 CALL                             R38 2 1
      345 SETTABLEKS                       R38 R37 K29 ["Size"]
      347 LOADN                            R38 1
      348 SETTABLEKS                       R38 R37 K82 ["BackgroundTransparency"]
      350 GETTABLEKS                       R39 R13 K28 ["Arrow"]
      352 GETTABLEKS                       R38 R39 K52 ["Image"]
      354 SETTABLEKS                       R38 R37 K52 ["Image"]
      356 GETTABLEKS                       R39 R13 K28 ["Arrow"]
      358 GETTABLEKS                       R38 R39 K83 ["Color"]
      360 SETTABLEKS                       R38 R37 K84 ["ImageColor3"]
      362 GETIMPORT                        R38 K86 [Vector2.new]
      364 MOVE                             R39 R15
      365 MOVE                             R40 R15
      366 CALL                             R38 2 1
      367 SETTABLEKS                       R38 R37 K87 ["ImageRectSize"]
      369 JUMPIFNOT                        R14 ; [+5]
      370 GETTABLEKS                       R39 R13 K28 ["Arrow"]
      372 GETTABLEKS                       R38 R39 K88 ["ExpandedOffset"]
      374 JUMP                             ; [+4]
      375 GETTABLEKS                       R39 R13 K28 ["Arrow"]
      377 GETTABLEKS                       R38 R39 K89 ["CollapsedOffset"]
      379 SETTABLEKS                       R38 R37 K90 ["ImageRectOffset"]
      381 GETUPVAL                         R40 3
      382 GETTABLEKS                       R39 R40 K91 ["Event"]
      384 GETTABLEKS                       R38 R39 K92 ["Activated"]
      386 GETTABLEKS                       R39 R0 K93 ["onToggle"]
      388 SETTABLE                         R39 R37 R38
      389 CALL                             R35 2 1
      390 SETTABLEKS                       R35 R34 K49 ["Icon"]
      392 CALL                             R31 3 1
      393 JUMP                             ; [+1]
      394 LOADNIL                          R31
      395 SETTABLEKS                       R31 R30 K73 ["Toggle"]
      397 JUMPIFNOT                        R12 ; [+26]
      398 GETTABLEKS                       R32 R8 K94 ["Disabled"]
      400 JUMPIF                           R32 ; [+23]
      401 GETTABLEKS                       R31 R0 K95 ["getPropertyCell"]
      403 DUPTABLE                         R32 K98 [{"OnDoubleClick", "OnPressed", "Schema", "Size", "Value"}]
      404 GETTABLEKS                       R33 R0 K99 ["onDoubleClick"]
      406 SETTABLEKS                       R33 R32 K96 ["OnDoubleClick"]
      408 GETTABLEKS                       R33 R0 K100 ["onPressed"]
      410 SETTABLEKS                       R33 R32 K97 ["OnPressed"]
      412 GETTABLEKS                       R33 R8 K23 ["Schema"]
      414 SETTABLEKS                       R33 R32 K23 ["Schema"]
      416 SETTABLEKS                       R22 R32 K29 ["Size"]
      418 GETTABLEKS                       R33 R8 K20 ["Value"]
      420 SETTABLEKS                       R33 R32 K20 ["Value"]
      422 CALL                             R31 1 1
      423 JUMP                             ; [+28]
      424 GETUPVAL                         R32 3
      425 GETTABLEKS                       R31 R32 K40 ["createElement"]
      427 GETUPVAL                         R32 9
      428 DUPTABLE                         R33 K103 [{"LayoutOrder", "Size", "Position", "Text", "TextXAlignment", "ref"}]
      429 LOADN                            R34 3
      430 SETTABLEKS                       R34 R33 K41 ["LayoutOrder"]
      432 SETTABLEKS                       R22 R33 K29 ["Size"]
      434 GETIMPORT                        R34 K47 [UDim2.fromOffset]
      436 LOADN                            R35 5
      437 LOADN                            R36 0
      438 CALL                             R34 2 1
      439 SETTABLEKS                       R34 R33 K71 ["Position"]
      441 SETTABLEKS                       R11 R33 K54 ["Text"]
      443 GETIMPORT                        R34 K104 [Enum.TextXAlignment.Left]
      445 SETTABLEKS                       R34 R33 K101 ["TextXAlignment"]
      447 GETTABLEKS                       R34 R0 K105 ["textRef"]
      449 SETTABLEKS                       R34 R33 K102 ["ref"]
      451 CALL                             R31 2 1
      452 SETTABLEKS                       R31 R30 K54 ["Text"]
      454 CALL                             R27 3 1
      455 SETTABLEKS                       R27 R26 K68 ["Left"]
      457 JUMPIFNOT                        R20 ; [+34]
      458 GETUPVAL                         R28 3
      459 GETTABLEKS                       R27 R28 K40 ["createElement"]
      461 GETUPVAL                         R28 4
      462 NEWTABLE                         R29 4 0
      464 GETIMPORT                        R30 K86 [Vector2.new]
      466 LOADN                            R31 1
      467 LOADK                            R32 K106 [0.5]
      468 CALL                             R30 2 1
      469 SETTABLEKS                       R30 R29 K107 ["AnchorPoint"]
      471 GETIMPORT                        R30 K79 [Enum.AutomaticSize.XY]
      473 SETTABLEKS                       R30 R29 K75 ["AutomaticSize"]
      475 GETIMPORT                        R30 K58 [UDim2.new]
      477 LOADN                            R31 1
      478 LOADN                            R32 253
      479 LOADK                            R33 K106 [0.5]
      480 LOADN                            R34 0
      481 CALL                             R30 4 1
      482 SETTABLEKS                       R30 R29 K71 ["Position"]
      484 GETUPVAL                         R31 3
      485 GETTABLEKS                       R30 R31 K42 ["Tag"]
      487 LOADK                            R31 K108 ["X-RowS"]
      488 SETTABLE                         R31 R29 R30
      489 MOVE                             R30 R20
      490 CALL                             R27 3 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R27
      493 SETTABLEKS                       R27 R26 K69 ["Right"]
      495 CALL                             R23 3 -1
      496 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       41 GETTABLEKS                       R8 R5 K14 ["Localization"]
       43 GETTABLEKS                       R9 R2 K15 ["join"]
       45 GETTABLEKS                       R10 R3 K16 ["Styling"]
       47 GETTABLEKS                       R11 R10 K17 ["joinTags"]
       49 GETTABLEKS                       R12 R3 K18 ["UI"]
       51 GETTABLEKS                       R13 R12 K19 ["Button"]
       53 GETTABLEKS                       R14 R12 K20 ["Image"]
       55 GETTABLEKS                       R15 R12 K21 ["Pane"]
       57 GETTABLEKS                       R16 R12 K22 ["PropertyCell"]
       59 GETTABLEKS                       R17 R12 K23 ["Tooltip"]
       61 GETTABLEKS                       R18 R12 K24 ["TextLabel"]
       63 GETIMPORT                        R19 K5 [require]
       65 GETIMPORT                        R21 K1 [script]
       67 GETTABLEKS                       R20 R21 K25 ["styles"]
       69 CALL                             R19 1 1
       70 GETTABLEKS                       R20 R1 K26 ["Constants"]
       72 GETTABLEKS                       R21 R4 K27 ["PureComponent"]
       74 LOADK                            R23 K28 ["LayerViewCell"]
       75 NAMECALL                         R21 R21 K29 ["extend"]
       77 CALL                             R21 2 1
       78 DUPCLOSURE                       R22 K30 [PROTO_10]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R16
       81 SETTABLEKS                       R22 R21 K31 ["init"]
       83 DUPCLOSURE                       R22 K32 [PROTO_11]
       84 SETTABLEKS                       R22 R21 K33 ["didUpdate"]
       86 DUPCLOSURE                       R22 K34 [PROTO_14]
       87 SETTABLEKS                       R22 R21 K35 ["didMount"]
       89 DUPCLOSURE                       R22 K36 [PROTO_15]
       90 SETTABLEKS                       R22 R21 K37 ["willUnmount"]
       92 DUPCLOSURE                       R22 K38 [PROTO_17]
       93 SETTABLEKS                       R22 R21 K39 ["shouldComponentUpdate"]
       95 DUPCLOSURE                       R22 K40 [PROTO_19]
       96 CAPTURE                          VAL R19
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R20
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R18
      106 SETTABLEKS                       R22 R21 K41 ["render"]
      108 MOVE                             R22 R6
      109 DUPTABLE                         R23 K42 [{"Analytics", "Localization"}]
      110 SETTABLEKS                       R7 R23 K13 ["Analytics"]
      112 SETTABLEKS                       R8 R23 K14 ["Localization"]
      114 CALL                             R22 1 1
      115 MOVE                             R23 R21
      116 CALL                             R22 1 1
      117 MOVE                             R21 R22
      118 RETURN                           R21 1
