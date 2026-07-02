PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 K6 [1] R5
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 LOADNIL                          R5
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K12 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K13 ["number"] ; [+15]
       31 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K16 [math.floor]
       35 CALL                             R6 1 1
       36 JUMPIFEQ                         R6 R1 ; [+8]
       38 LOADK                            R6 K17 ["%.3f"]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K18 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMP                             ; [+6]
       45 FASTCALL1                        TOSTRING R1 ; [+3]
       46 MOVE                             R7 R1
       47 GETIMPORT                        R6 K20 [tostring]
       49 CALL                             R6 1 1
       50 MOVE                             R5 R6
       51 GETTABLEKS                       R7 R0 K21 ["Tooltip"]
       53 OR                               R6 R7 R5
       54 LOADB                            R7 0
       55 JUMPIFEQKNIL                     R6 ; [+5]
       57 JUMPIFNOTEQKS                    R6 K22 [""] ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K23 ["createElement"]
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K33 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       66 GETTABLEKS                       R11 R0 K34 ["ColumnIndex"]
       68 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       70 DUPTABLE                         R11 K40 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       71 SETTABLEKS                       R11 R10 K25 ["Padding"]
       73 SETTABLEKS                       R4 R10 K27 ["BackgroundColor3"]
       75 GETTABLEKS                       R11 R2 K41 ["Border"]
       77 SETTABLEKS                       R11 R10 K29 ["BorderColor3"]
       79 GETIMPORT                        R11 K43 [UDim2.new]
       81 GETTABLEKS                       R12 R3 K44 ["Scale"]
       83 GETTABLEKS                       R13 R3 K45 ["Offset"]
       85 LOADN                            R14 1
       86 LOADN                            R15 0
       87 CALL                             R11 4 1
       88 SETTABLEKS                       R11 R10 K30 ["Size"]
       90 DUPTABLE                         R11 K47 [{"Text", "Tooltip"}]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K23 ["createElement"]
       94 GETUPVAL                         R13 2
       95 DUPTABLE                         R14 K50 [{["Text"], ["TextWrapped"] = True, ["Size"], ["TextXAlignment"]}]
       96 SETTABLEKS                       R5 R14 K46 ["Text"]
       98 GETIMPORT                        R15 K52 [UDim2.fromScale]
      100 LOADN                            R16 1
      101 LOADN                            R17 1
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K30 ["Size"]
      105 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      107 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K46 ["Text"]
      112 MOVE                             R12 R7
      113 JUMPIFNOT                        R12 ; [+18]
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K23 ["createElement"]
      117 GETUPVAL                         R13 3
      118 DUPTABLE                         R14 K56 [{"MaxWidth", "Text", "TextXAlignment"}]
      119 GETTABLEKS                       R15 R2 K21 ["Tooltip"]
      121 GETTABLEKS                       R15 R15 K55 ["MaxWidth"]
      123 SETTABLEKS                       R15 R14 K55 ["MaxWidth"]
      125 SETTABLEKS                       R6 R14 K46 ["Text"]
      127 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      129 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K21 ["Tooltip"]
      134 CALL                             R8 3 -1
      135 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETUPVAL                         R3 2
        4 GETIMPORT                        R4 K3 [Enum.SortDirection.Descending]
        6 JUMPIFNOTEQ                      R3 R4 ; [+8]
        8 GETTABLE                         R4 R0 R2
        9 GETTABLE                         R5 R1 R2
       10 JUMPIFLT                         R4 R5 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETTABLE                         R4 R0 R2
       16 GETTABLE                         R5 R1 R2
       17 JUMPIFLT                         R5 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R2 0 3
        2 LOADK                            R3 K0 ["Name"]
        3 LOADK                            R4 K1 ["Count"]
        4 LOADK                            R5 K2 ["Size"]
        5 SETLIST                          R2 R3 3 [1]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 2
       15 DUPTABLE                         R5 K6 [{"sortIndex", "sortOrder", "rows"}]
       16 SETTABLEKS                       R0 R5 K3 ["sortIndex"]
       18 SETTABLEKS                       R1 R5 K4 ["sortOrder"]
       20 GETUPVAL                         R6 2
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K7 ["state"]
       24 GETTABLEKS                       R8 R8 K8 ["pageIndex"]
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R9 R9 K7 ["state"]
       29 GETTABLEKS                       R9 R9 K9 ["pageSize"]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K7 ["state"]
       34 GETTABLEKS                       R10 R10 K10 ["responsive"]
       36 NAMECALL                         R6 R6 K11 ["getPageRows"]
       38 CALL                             R6 4 1
       39 SETTABLEKS                       R6 R5 K5 ["rows"]
       41 NAMECALL                         R3 R3 K12 ["setState"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"pageIndex", "rows"}]
        2 SETTABLEKS                       R0 R3 K0 ["pageIndex"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R6 R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K3 ["state"]
        9 GETTABLEKS                       R7 R7 K4 ["pageSize"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K3 ["state"]
       14 GETTABLEKS                       R8 R8 K5 ["responsive"]
       16 NAMECALL                         R4 R4 K6 ["getPageRows"]
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K1 ["rows"]
       21 NAMECALL                         R1 R1 K7 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"pageSize", "rows"}]
        2 SETTABLEKS                       R0 R3 K0 ["pageSize"]
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K3 ["state"]
        8 GETTABLEKS                       R6 R6 K4 ["pageIndex"]
       10 MOVE                             R7 R0
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K3 ["state"]
       14 GETTABLEKS                       R8 R8 K5 ["responsive"]
       16 NAMECALL                         R4 R4 K6 ["getPageRows"]
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K1 ["rows"]
       21 NAMECALL                         R1 R1 K7 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"selectedRow"}]
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R8 R8 K3 ["state"]
        5 GETTABLEKS                       R8 R8 K4 ["pageIndex"]
        7 SUBK                             R7 R8 K2 [1]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K3 ["state"]
       11 GETTABLEKS                       R8 R8 K5 ["pageSize"]
       13 MUL                              R6 R7 R8
       14 ADD                              R5 R1 R6
       15 SETTABLEKS                       R5 R4 K0 ["selectedRow"]
       17 NAMECALL                         R2 R2 K6 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R6 R0 K2 ["Name"]
        2 FASTCALL1                        STRING_LEN R6 ; [+2]
        3 GETIMPORT                        R5 K5 [string.len]
        5 CALL                             R5 1 1
        6 DIVK                             R4 R5 K1 [20]
        7 FASTCALL1                        MATH_CEIL R4 ; [+2]
        8 GETIMPORT                        R3 K8 [math.ceil]
       10 CALL                             R3 1 1
       11 SUBK                             R2 R3 K0 [1]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R2 ; [+4]
       15 MULK                             R4 R2 K1 [20]
       16 ADD                              R3 R1 R4
       17 RETURN                           R3 1
       18 MOVE                             R3 R1
       19 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R1 K10 [{[1] = , ["sortOrder"] = , ["pageIndex"] = 1, ["pageSize"] = 5, ["rows"], ["selectedRow"] = , ["responsive"]}]
        1 LOADN                            R4 1
        2 LOADN                            R5 5
        3 GETTABLEKS                       R6 R0 K11 ["props"]
        5 GETTABLEKS                       R6 R6 K12 ["UseGetRowHeight"]
        7 NAMECALL                         R2 R0 K13 ["getPageRows"]
        9 CALL                             R2 4 1
       10 SETTABLEKS                       R2 R1 K7 ["rows"]
       12 GETTABLEKS                       R2 R0 K11 ["props"]
       14 GETTABLEKS                       R2 R2 K12 ["UseGetRowHeight"]
       16 SETTABLEKS                       R2 R1 K9 ["responsive"]
       18 SETTABLEKS                       R1 R0 K14 ["state"]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K15 ["onSortChange"]
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K16 ["onPageChange"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K17 ["onPageSizeChange"]
       34 NEWCLOSURE                       R1 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K18 ["onSelectRow"]
       38 DUPCLOSURE                       R1 K19 [PROTO_6]
       39 SETTABLEKS                       R1 R0 K20 ["getRowHeight"]
       41 RETURN                           R0 0

PROTO_8:
        0 SUBK                             R6 R1 K0 [1]
        1 MUL                              R5 R6 R2
        2 ADDK                             R4 R5 K0 [1]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETUPVAL                         R5 0
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R4
        7 ADD                              R9 R4 R2
        8 SUBK                             R8 R9 K0 [1]
        9 CALL                             R5 3 1
       10 RETURN                           R5 1
       11 GETUPVAL                         R5 0
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R4
       14 ADD                              R9 R4 R2
       15 SUBK                             R8 R9 K0 [1]
       16 CALL                             R5 3 1
       17 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R1 K2 ["selectedRow"]
        7 JUMPIFNOT                        R4 ; [+13]
        8 GETTABLEKS                       R4 R1 K2 ["selectedRow"]
       10 GETTABLEKS                       R7 R0 K0 ["state"]
       12 GETTABLEKS                       R7 R7 K4 ["pageIndex"]
       14 SUBK                             R6 R7 K3 [1]
       15 GETTABLEKS                       R7 R0 K0 ["state"]
       17 GETTABLEKS                       R7 R7 K5 ["pageSize"]
       19 MUL                              R5 R6 R7
       20 SUB                              R3 R4 R5
       21 GETTABLEKS                       R4 R2 K6 ["UseGetRowHeight"]
       23 JUMPIFNOT                        R4 ; [+76]
       24 DUPTABLE                         R6 K9 [{["responsive"] = True}]
       25 NAMECALL                         R4 R0 K10 ["setState"]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K11 ["createElement"]
       31 GETUPVAL                         R5 1
       32 DUPTABLE                         R6 K26 [{"AutomaticSize", "SortIndex", "SortOrder", "PageIndex", "PageSize", "PageCount", "OnPageChange", "OnSortChange", "SelectedRow", "OnSelectRow", "Columns", "Rows", "GetRowHeight", "CellComponent"}]
       33 GETIMPORT                        R7 K29 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R7 R6 K12 ["AutomaticSize"]
       37 GETTABLEKS                       R7 R1 K30 ["sortIndex"]
       39 SETTABLEKS                       R7 R6 K13 ["SortIndex"]
       41 GETTABLEKS                       R7 R1 K31 ["sortOrder"]
       43 SETTABLEKS                       R7 R6 K14 ["SortOrder"]
       45 GETTABLEKS                       R7 R1 K4 ["pageIndex"]
       47 SETTABLEKS                       R7 R6 K15 ["PageIndex"]
       49 GETTABLEKS                       R7 R1 K5 ["pageSize"]
       51 SETTABLEKS                       R7 R6 K16 ["PageSize"]
       53 GETUPVAL                         R10 2
       54 LENGTH                           R9 R10
       55 GETTABLEKS                       R10 R1 K5 ["pageSize"]
       57 DIV                              R8 R9 R10
       58 FASTCALL1                        MATH_CEIL R8 ; [+2]
       59 GETIMPORT                        R7 K34 [math.ceil]
       61 CALL                             R7 1 1
       62 SETTABLEKS                       R7 R6 K17 ["PageCount"]
       64 GETTABLEKS                       R7 R0 K35 ["onPageChange"]
       66 SETTABLEKS                       R7 R6 K18 ["OnPageChange"]
       68 GETTABLEKS                       R7 R0 K36 ["onSortChange"]
       70 SETTABLEKS                       R7 R6 K19 ["OnSortChange"]
       72 SETTABLEKS                       R3 R6 K20 ["SelectedRow"]
       74 GETTABLEKS                       R7 R0 K37 ["onSelectRow"]
       76 SETTABLEKS                       R7 R6 K21 ["OnSelectRow"]
       78 NEWTABLE                         R7 0 3
       80 DUPTABLE                         R8 K39 [{["Name"] = "Name"}]
       81 DUPTABLE                         R9 K41 [{["Name"] = "Count"}]
       82 DUPTABLE                         R10 K43 [{["Name"] = "Size"}]
       83 SETLIST                          R7 R8 3 [1]
       85 SETTABLEKS                       R7 R6 K22 ["Columns"]
       87 GETTABLEKS                       R7 R1 K44 ["rows"]
       89 SETTABLEKS                       R7 R6 K23 ["Rows"]
       91 GETTABLEKS                       R7 R0 K45 ["getRowHeight"]
       93 SETTABLEKS                       R7 R6 K24 ["GetRowHeight"]
       95 GETUPVAL                         R7 3
       96 SETTABLEKS                       R7 R6 K25 ["CellComponent"]
       98 CALL                             R4 2 -1
       99 RETURN                           R4 -1
      100 GETUPVAL                         R4 0
      101 GETTABLEKS                       R4 R4 K11 ["createElement"]
      103 GETUPVAL                         R5 1
      104 DUPTABLE                         R6 K47 [{"Size", "SortIndex", "SortOrder", "PageIndex", "PageSize", "PageCount", "OnPageSizeChange", "OnPageChange", "OnSortChange", "SelectedRow", "OnSelectRow", "Columns", "Rows"}]
      105 GETIMPORT                        R7 K50 [UDim2.new]
      107 LOADN                            R8 1
      108 LOADN                            R9 0
      109 LOADN                            R10 0
      110 LOADN                            R11 200
      111 CALL                             R7 4 1
      112 SETTABLEKS                       R7 R6 K42 ["Size"]
      114 GETTABLEKS                       R7 R1 K30 ["sortIndex"]
      116 SETTABLEKS                       R7 R6 K13 ["SortIndex"]
      118 GETTABLEKS                       R7 R1 K31 ["sortOrder"]
      120 SETTABLEKS                       R7 R6 K14 ["SortOrder"]
      122 GETTABLEKS                       R7 R1 K4 ["pageIndex"]
      124 SETTABLEKS                       R7 R6 K15 ["PageIndex"]
      126 GETTABLEKS                       R7 R1 K5 ["pageSize"]
      128 SETTABLEKS                       R7 R6 K16 ["PageSize"]
      130 GETUPVAL                         R10 4
      131 LENGTH                           R9 R10
      132 GETTABLEKS                       R10 R1 K5 ["pageSize"]
      134 DIV                              R8 R9 R10
      135 FASTCALL1                        MATH_CEIL R8 ; [+2]
      136 GETIMPORT                        R7 K34 [math.ceil]
      138 CALL                             R7 1 1
      139 SETTABLEKS                       R7 R6 K17 ["PageCount"]
      141 GETTABLEKS                       R7 R0 K51 ["onPageSizeChange"]
      143 SETTABLEKS                       R7 R6 K46 ["OnPageSizeChange"]
      145 GETTABLEKS                       R7 R0 K35 ["onPageChange"]
      147 SETTABLEKS                       R7 R6 K18 ["OnPageChange"]
      149 GETTABLEKS                       R7 R0 K36 ["onSortChange"]
      151 SETTABLEKS                       R7 R6 K19 ["OnSortChange"]
      153 SETTABLEKS                       R3 R6 K20 ["SelectedRow"]
      155 GETTABLEKS                       R7 R0 K37 ["onSelectRow"]
      157 SETTABLEKS                       R7 R6 K21 ["OnSelectRow"]
      159 NEWTABLE                         R7 0 3
      161 DUPTABLE                         R8 K39 [{["Name"] = "Name"}]
      162 DUPTABLE                         R9 K41 [{["Name"] = "Count"}]
      163 DUPTABLE                         R10 K43 [{["Name"] = "Size"}]
      164 SETLIST                          R7 R8 3 [1]
      166 SETTABLEKS                       R7 R6 K22 ["Columns"]
      168 GETTABLEKS                       R7 R1 K44 ["rows"]
      170 SETTABLEKS                       R7 R6 K23 ["Rows"]
      172 CALL                             R4 2 -1
      173 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["PaginatedTable"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K4 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["slice"]
       34 GETIMPORT                        R5 K14 [table.insert]
       36 GETIMPORT                        R6 K16 [table.sort]
       38 GETTABLEKS                       R7 R0 K2 ["UI"]
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R7 K8 ["Components"]
       44 GETTABLEKS                       R9 R9 K17 ["Pane"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R7 K8 ["Components"]
       51 GETTABLEKS                       R10 R10 K18 ["Tooltip"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R7 K8 ["Components"]
       58 GETTABLEKS                       R11 R11 K19 ["TextLabel"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R1 K20 ["PureComponent"]
       63 LOADK                            R13 K21 ["ControlledTable"]
       64 NAMECALL                         R11 R11 K22 ["extend"]
       66 CALL                             R11 2 1
       67 NEWTABLE                         R12 0 0
       69 LOADN                            R15 1
       70 LOADN                            R13 23
       71 LOADN                            R14 1
       72 FORNPREP                         R13
       73 DUPTABLE                         R18 K26 [{"Name", "Count", "Size"}]
       74 LOADK                            R20 K27 ["Row "]
       75 MOVE                             R21 R15
       76 CONCAT                           R19 R20 R21
       77 SETTABLEKS                       R19 R18 K23 ["Name"]
       79 GETIMPORT                        R21 K31 [math.random]
       81 CALL                             R21 0 1
       82 MULK                             R20 R21 K28 [100]
       83 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       84 GETIMPORT                        R19 K33 [math.floor]
       86 CALL                             R19 1 1
       87 SETTABLEKS                       R19 R18 K24 ["Count"]
       89 GETIMPORT                        R24 K31 [math.random]
       91 CALL                             R24 0 1
       92 MULK                             R23 R24 K28 [100]
       93 FASTCALL1                        MATH_FLOOR R23 ; [+2]
       94 GETIMPORT                        R22 K33 [math.floor]
       96 CALL                             R22 1 1
       97 MULK                             R20 R22 K34 [10]
       98 LOADK                            R21 K35 ["px"]
       99 CONCAT                           R19 R20 R21
      100 SETTABLEKS                       R19 R18 K25 ["Size"]
      102 FASTCALL2                        TABLE_INSERT R12 R18 ; [+3]
      104 MOVE                             R17 R12
      105 MOVE                             R16 R5
      106 CALL                             R16 2 0
      107 FORNLOOP                         R13
      108 NEWTABLE                         R13 0 0
      110 LOADN                            R16 1
      111 LOADN                            R14 23
      112 LOADN                            R15 1
      113 FORNPREP                         R14
      114 LOADK                            R18 K27 ["Row "]
      115 MOVE                             R19 R16
      116 CONCAT                           R17 R18 R19
      117 MODK                             R18 R16 K36 [4]
      118 JUMPIFNOTEQKN                    R18 K37 [0] ; [+2]
      120 LOADK                            R17 K38 ["This cell/row will have a larger row height because it has more characters"]
      121 DUPTABLE                         R20 K26 [{"Name", "Count", "Size"}]
      122 SETTABLEKS                       R17 R20 K23 ["Name"]
      124 GETIMPORT                        R23 K31 [math.random]
      126 CALL                             R23 0 1
      127 MULK                             R22 R23 K28 [100]
      128 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      129 GETIMPORT                        R21 K33 [math.floor]
      131 CALL                             R21 1 1
      132 SETTABLEKS                       R21 R20 K24 ["Count"]
      134 GETIMPORT                        R26 K31 [math.random]
      136 CALL                             R26 0 1
      137 MULK                             R25 R26 K28 [100]
      138 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      139 GETIMPORT                        R24 K33 [math.floor]
      141 CALL                             R24 1 1
      142 MULK                             R22 R24 K34 [10]
      143 LOADK                            R23 K35 ["px"]
      144 CONCAT                           R21 R22 R23
      145 SETTABLEKS                       R21 R20 K25 ["Size"]
      147 FASTCALL2                        TABLE_INSERT R13 R20 ; [+3]
      149 MOVE                             R19 R13
      150 MOVE                             R18 R5
      151 CALL                             R18 2 0
      152 FORNLOOP                         R14
      153 DUPCLOSURE                       R14 K39 [PROTO_0]
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R9
      158 DUPCLOSURE                       R15 K40 [PROTO_7]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R12
      161 SETTABLEKS                       R15 R11 K41 ["init"]
      163 DUPCLOSURE                       R15 K42 [PROTO_8]
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R12
      167 SETTABLEKS                       R15 R11 K43 ["getPageRows"]
      169 DUPCLOSURE                       R15 K44 [PROTO_9]
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R12
      175 SETTABLEKS                       R15 R11 K45 ["render"]
      177 DUPTABLE                         R15 K47 [{"stories"}]
      178 NEWTABLE                         R16 0 2
      180 DUPTABLE                         R17 K51 [{["name"] = "Pagination", ["story"]}]
      181 GETTABLEKS                       R18 R1 K52 ["createElement"]
      183 MOVE                             R19 R11
      184 CALL                             R18 1 1
      185 SETTABLEKS                       R18 R17 K50 ["story"]
      187 DUPTABLE                         R18 K54 [{["name"] = "Pagination with GetRowHeight", ["story"]}]
      188 GETTABLEKS                       R19 R1 K52 ["createElement"]
      190 MOVE                             R20 R11
      191 DUPTABLE                         R21 K57 [{["UseGetRowHeight"] = True}]
      192 CALL                             R19 2 1
      193 SETTABLEKS                       R19 R18 K50 ["story"]
      195 SETLIST                          R16 R17 2 [1]
      197 SETTABLEKS                       R16 R15 K46 ["stories"]
      199 RETURN                           R15 1
